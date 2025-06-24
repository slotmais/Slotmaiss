// Elementos DOM
const loginBtn = document.getElementById('login-btn');
const registerBtn = document.getElementById('register-btn');
const modalBg = document.getElementById('modal-bg');
const modalCloseBtn = document.getElementById('modal-close');
const modalTitle = document.getElementById('modal-title');
const toggleAuthText = document.getElementById('toggle-auth-text');
const toggleAuthBtn = document.getElementById('toggle-auth-btn');
const authForm = document.getElementById('auth-form');
const submitBtn = document.getElementById('submit-btn');
const authMessage = document.getElementById('auth-message');
const userPanel = document.getElementById('user-panel');
const userNameSpan = document.getElementById('user-name');
const logoutBtn = document.getElementById('logout-btn');
const depositForm = document.getElementById('deposit-form');
const depositAmountInput = document.getElementById('deposit-amount');
const balanceDiv = document.getElementById('balance');
const historyDiv = document.getElementById('history');

let isLogin = true;
let currentUser = null;
let userData = {};

// Funções
function openModal(loginMode = true) {
  isLogin = loginMode;
  modalTitle.textContent = loginMode ? 'Login' : 'Cadastro';
  submitBtn.textContent = loginMode ? 'Entrar' : 'Cadastrar';
  toggleAuthText.textContent = loginMode ? 'Não tem conta?' : 'Já tem conta?';
  toggleAuthBtn.textContent = loginMode ? 'Cadastre-se' : 'Faça login';
  authMessage.textContent = '';
  authForm.reset();
  modalBg.classList.add('active');
}

function closeModal() {
  modalBg.classList.remove('active');
  authMessage.textContent = '';
}

function validateUsername(username) {
  return /^[\w]{4,20}$/.test(username);
}

function validatePassword(password) {
  return /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/.test(password);
}

function loadUserData(username) {
  const data = localStorage.getItem(`slotmais_userdata_${username}`);
  if (data) {
    try {
      userData[username] = JSON.parse(data);
    } catch (e) {
      userData[username] = { balance: 0, history: [] };
    }
  } else {
    userData[username] = { balance: 0, history: [] };
  }
}

function saveUserData(username) {
  localStorage.setItem(`slotmais_userdata_${username}`, JSON.stringify(userData[username]));
}

function updateBalanceUI() {
  if (currentUser && userData[currentUser]) {
    balanceDiv.textContent = `R$ ${userData[currentUser].balance.toFixed(2)}`;
  }
}

function renderHistory() {
  if (currentUser && userData[currentUser]) {
    const hist = userData[currentUser].history;
    if (hist.length === 0) {
      historyDiv.innerHTML = '<p><em>Histórico vazio.</em></p>';
    } else {
      historyDiv.innerHTML = hist.map(tx => `<p>${tx}</p>`).join('');
    }
  }
}

// Eventos
loginBtn.addEventListener('click', () => openModal(true));
registerBtn.addEventListener('click', () => openModal(false));
modalCloseBtn.addEventListener('click', closeModal);
modalBg.addEventListener('click', e => {
  if (e.target === modalBg) closeModal();
});
toggleAuthBtn.addEventListener('click', () => openModal(!isLogin));

authForm.addEventListener('submit', async e => {
  e.preventDefault();
  const username = authForm.username.value.trim();
  const password = authForm.password.value;

  if (!validateUsername(username)) {
    authMessage.textContent = 'Usuário inválido.';
    return;
  }

  if (!validatePassword(password)) {
    authMessage.textContent = 'Senha inválida.';
    return;
  }

  // Simulação de login/cadastro
  const storedHash = localStorage.getItem(`slotmais_user_${username}`);
  if (isLogin) {
    if (!storedHash) {
      authMessage.textContent = 'Usuário não encontrado.';
      return;
    }
    currentUser = username;
    loadUserData(username);
    updateBalanceUI();
    renderHistory();
    userNameSpan.textContent = username;
    userPanel.classList.add('active');
    closeModal();
  } else {
    if (storedHash) {
      authMessage.textContent = 'Usuário já existe.';
      return;
    }
    localStorage.setItem(`slotmais_user_${username}`, 'hash_simulado');
    currentUser = username;
    loadUserData(username);
    updateBalanceUI();
    renderHistory();
    userNameSpan.textContent = username;
    userPanel.classList.add('active');
    closeModal();
  }
});

logoutBtn.addEventListener('click', () => {
  currentUser = null;
  userNameSpan.textContent = '';
  userPanel.classList.remove('active');
});

depositForm.addEventListener('submit', e => {
  e.preventDefault();
  const amount = parseFloat(depositAmountInput.value);
  if (isNaN(amount) || amount <= 0) {
    alert('Informe um valor válido.');
    return;
  }
  userData[currentUser].balance += amount;
  userData[currentUser].history.unshift(`Depósito via Pix: +R$ ${amount.toFixed(2)}`);
  saveUserData(currentUser);
  updateBalanceUI();
  renderHistory();
  depositForm.reset();
  alert('Depósito realizado!');
});