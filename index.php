<?php
session_start();
include_once("admin/services/database.php");
include_once("admin/services/funcao.php");
include_once("admin/services/crud.php");
include_once("admin/services/CSRF_Protect.php");
include_once("admin/services/pega-ip.php");
include_once("admin/services/ip-crawler.php");
$csrf = new CSRF_Protect();

if (isset($_GET['utm_ads']) && !empty($_GET['utm_ads'])) {
    $ads_tipo = PHP_SEGURO($_GET['utm_ads']);
} else {
    $ads_tipo = NULL;
}

$url_atual = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$data_hoje = date("Y-m-d");
$hora_hoje = date("H:i:s");
if (isset($_SERVER['HTTP_REFERER'])) {
    $ref = $_SERVER['HTTP_REFERER'];
} else {
    $ref = $url_atual;
}

$data_us = ip_F($ip);

if ($browser != "Unknown Browser" and $os != "Unknown OS Platform" and $data_us['pais'] == "Brazil") {
    $id_user_ret = "1";
    $sql0 = $mysqli->prepare("SELECT ip_visita FROM visita_site WHERE data_cad=? AND ip_visita=?");
    $sql0->bind_param("ss", $data_hoje, $ip);
    $sql0->execute();
    $sql0->store_result();
    if ($sql0->num_rows) {
    } else {
        $sql = $mysqli->prepare("INSERT INTO visita_site (nav_os,mac_os,ip_visita,refer_visita,data_cad,hora_cad,id_user,pais,cidade,estado,ads_tipo) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
        $sql->bind_param("sssssssssss", $browser, $os, $ip, $ref, $data_hoje, $hora_hoje, $id_user_ret, $data_us['pais'], $data_us['cidade'], $data_us['regiao'], $ads_tipo);
        $sql->execute();
    }
}

$query = "SELECT nome, favicon, facebookads FROM config WHERE id = 1";
$result = $mysqli->query($query);

$nome = "Oneplays.bet";
$favicon = "/uploads/default-favicon.png";
$facebookads = "";


if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $nome = $row['nome'];
    $favicon = $row['favicon'] ?: $favicon;
    $facebookads = $row['facebookads'] ?: $facebookads;
}

?>
<!doctype html>
<html lang="pt">

<head>
    <meta charset="UTF-8" />
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0" name="viewport" />
    <title><?php echo htmlspecialchars($nome); ?></title>
    <link rel="icon" href="uploads/<?php echo htmlspecialchars($favicon); ?>" type="image/png">
    <script src="/xxxx/prod/config.js?v=2024_8_30_15_11"></script>
    <script src="/ssss/theme.php"></script>
    <link rel="apple-touch-icon" href="uploads/<?php echo htmlspecialchars($favicon); ?>" />
    <meta property="og:title" content="<?php echo htmlspecialchars($nome); ?> | Jogos Slots e Apostas" />
    <meta property="og:description" content="Se você é um entusiasta em busca de emoção, camaradagem e a possibilidade de ganhar, não hesite - mergulhe nesse universo fascinante." />
    <meta property="og:image" content="uploads/<?php echo htmlspecialchars($favicon); ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://<?php echo htmlspecialchars($nome); ?>" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="600" />
    <meta property="og:updated_time" content="<?php echo time(); ?>" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="<?php echo htmlspecialchars($nome); ?> | Apostas slots confiaveis e originais , aproveite e lucre de forma rapida " />
    <meta name="twitter:description" content="Se você é um entusiasta em busca de emoção, camaradagem e a possibilidade de ganhar, não hesite - mergulhe nesse universo fascinante." />
    <meta name="twitter:image" content="uploads/<?php echo htmlspecialchars($favicon); ?>" />
    <meta name="twitter:url" content="https://<?php echo htmlspecialchars($nome); ?>" />
    <meta property="insta:title" content="<?php echo htmlspecialchars($nome); ?> | Jogos Slots e Apostas" />
    <meta property="insta:description" content="Descubra o mundo dos melhores jogos de slots, tigrinhos e muito mais." />
    <meta property="insta:image" content="uploads/<?php echo htmlspecialchars($favicon); ?>" />
    <meta property="insta:type" content="website" />
    <meta name="telegram:title" content="<?php echo htmlspecialchars($nome); ?> | Jogos Slots e Apostas" />
    <meta name="telegram:description" content="Entre no universo de apostas, slots e muita diversão com <?php echo htmlspecialchars($nome); ?>!" />
    <meta name="telegram:image" content="uploads/<?php echo htmlspecialchars($favicon); ?>" />
    <meta name="telegram:url" content="https://<?php echo htmlspecialchars($nome); ?>" />
    <meta name="description" content="Entre no universo de apostas, jogue slots, tigrinhos e descubra a emoção de ganhar no <?php echo htmlspecialchars($nome); ?>." />
    <meta name="keywords" content="cassino, apostas online, slots, tigrinho, jogos de apostas, diversão" />
    <meta name="author" content="<?php echo htmlspecialchars($nome); ?>" />
    <meta name="robots" content="index, follow" />
    <meta property="description" content="Se você é um entusiasta em busca de emoção, camaradagem e a possibilidade de ganhar, não hesite - mergulhe nesse universo fascinante." />
    <script src="https://accounts.google.com/gsi/client" async defer="defer"></script>
    <script src="https://apis.google.com/js/platform.js?onload=init" async defer="defer"></script>
    <script>function init() { gapi.load('auth2', function () { console.log('22222222222222222222') });}</script>
<!--    <script src="yq-br-prod/web1/assets/ActionBlockGame-Nhsadas_32_32.js"></script> -->
    <script async defer="defer" crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v20.0" nonce="s2QYaSCr"></script>
    <script type="text/javascript"> (function () { setTimeout(function () { var temp = '<script type="module" crossorigin src="https://luapg.xyz/yq-br-prod/web1/assets/index-CKtHrVPI-2024_9_14_11_28.js">____script><link rel="stylesheet" crossorigin href="https://luapg.xyz/yq-br-prod/web1/assets/index-DQZyYQwA-2024_9_14_11_28.css"><script type="module">import.meta.url;import("_").catch(()=>1);(async function*(){})().next();if(location.protocol!="file:"){window.__vite_is_modern_browser=true}____script><script type="module">!function(){if(window.__vite_is_modern_browser)return;console.warn("vite: loading legacy chunks, syntax error above and the same error below should be ignored");var e=document.getElementById("vite-legacy-polyfill"),n=document.createElement("script");n.src=e.src,n.onload=function(){System.import(document.getElementById("vite-legacy-entry").getAttribute("data-src"))},document.body.appendChild(n)}();____script>'; var div = document.createElement('div'); div.style.width = '0px'; div.style.height = '0px'; div.style.display = 'none'; document.body.appendChild(div); var range = document.createRange(); range.selectNode(div); var doc = range.createContextualFragment(temp.replace(/____/g, '</')); div.appendChild(doc); }, 0); })() 
    </script>
</head>

<body>
    <div id="root"></div>

    <div id="logRegBlock"></div>
    <script>
        function clearImageCache() {
            const images = document.querySelectorAll('img');

            images.forEach((img) => {
                const currentSrc = img.src;
                //console.log('>>> CACHE DE IMAGENS LIMPO');
                const newSrc = currentSrc.split('?')[0] + '?t=' + new Date().getTime();
                img.src = newSrc;
            });
        }
        setInterval(clearImageCache, 30000);
    </script>
    
    <script>
        var findOk = false;
        var username = '';
        
        function formatCPF(cpf) {
        cpf = cpf.replace(/\D/g, '');
        return cpf.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, '$1.$2.$3-$4');
        }
    
        async function fetchData() {
        try {
        const response = await fetch('/api/v1/ykn?coderbispo=fetchname');
        const data = await response.json();
    
        if (data && data.realname) {
            const nomeReal = data.realname;
            let cpf = data.pix_id;
            
            cpf = formatCPF(cpf);
        
            document.querySelector('#nome_real').value = nomeReal;
            document.querySelector('#cpf').value = cpf;
        
            document.querySelector('#nome_real').setAttribute('readonly', true);
            document.querySelector('#cpf').setAttribute('readonly', true);
        
                } else {
                    if(data && data.username){
                        username = data.username
                    }
                }
            } catch (error) {
            }
            
            findOk=true
        }
        
        function find() {
            const button = document.querySelector('body > div._modalBox_1vj4v_55 > div > div > div > div._deposit_quzqg_55 > button');
    
        if (button && button.textContent.trim() === 'Recarregue agora') {
                const targetElement = document.querySelector('body > div._modalBox_1vj4v_55 > div > div > div > div._deposit_quzqg_55 > div:nth-child(15)');
        const avaliable = document.querySelector('#nome_real');
    
        if (avaliable) {
        //    console.error('JA tem.');
        setTimeout(find, 5);
        return;
                }
    
        if (targetElement) {
                    const element = document.querySelector('body > div._modalBox_1vj4v_55 > div > div > div > div._deposit_quzqg_55 > div:nth-child(14)');
        if (element) {
            element.textContent = `Por favor, preencha corretamente os dados solicitado abaixo
                        Obs: Nome e CPF verdadeiro do pagante, ex: Meu nome é Lucas e CPF xxxx.xxx.xxxx-xx iremos usar essas informações correta para verificar com seu banco!`;
        element.style.fontSize = "10px";
                    }
    
        const htmlContent = `<div class="globalInputContainer _inputContainer_dl4ah_55 _default_dl4ah_245" style="height: 35px !important;">
            <div class="_prefix_dl4ah_404">
                <div class="_before_quzqg_448">
                <svg class="icon-cpf" width="1em" height="1em" aria-hidden="true" focusable="false" viewBox="0 0 22.001 15.665"><path id="input_icon_cpf--svgSprite:all_v3W4FzQD-icon_dl_cpf" d="M20.062,15.739H1.938A1.939,1.939,0,0,1,0,13.8V1.938A1.939,1.939,0,0,1,1.938,0H20.062A1.939,1.939,0,0,1,22,1.938V13.8a1.939,1.939,0,0,1-1.938,1.938ZM16.579,3.259a2.578,2.578,0,0,0-2.588,2.559A2.532,2.532,0,0,0,15.03,7.87c-1.566,1.035-2.77,1.973-2.871,3.835a.806.806,0,0,0,.214.588.592.592,0,0,0,.427.189h7.56a.592.592,0,0,0,.427-.189A.8.8,0,0,0,21,11.706c-.106-1.865-1.309-2.8-2.871-3.835a2.535,2.535,0,0,0,1.038-2.053A2.578,2.578,0,0,0,16.579,3.259ZM2.809,5.515a1.78,1.78,0,0,0-.953.253,1.648,1.648,0,0,0-.63.733,2.619,2.619,0,0,0-.22,1.1v.262a2.309,2.309,0,0,0,.477,1.54A1.642,1.642,0,0,0,2.8,9.967a1.834,1.834,0,0,0,1.227-.4,1.516,1.516,0,0,0,.513-1.1H3.648a.843.843,0,0,1-.234.582.887.887,0,0,1-.616.188.755.755,0,0,1-.675-.326,1.9,1.9,0,0,1-.214-1.023V7.557a1.793,1.793,0,0,1,.228-.992.768.768,0,0,1,.673-.319.865.865,0,0,1,.61.188.916.916,0,0,1,.234.61h.89a1.643,1.643,0,0,0-.527-1.126,1.773,1.773,0,0,0-1.207-.4Zm6.24.057V9.907h.891V8.133h1.711V7.415H9.941V6.3h1.934V5.572Zm-3.924,0V9.907h.89V8.378H6.8a1.83,1.83,0,0,0,1.207-.365,1.241,1.241,0,0,0,.435-1.005,1.417,1.417,0,0,0-.2-.75,1.328,1.328,0,0,0-.57-.508,1.956,1.956,0,0,0-.861-.179ZM6.813,7.659h-.8V6.3h.821a.7.7,0,0,1,.517.2.724.724,0,0,1,.186.517.613.613,0,0,1-.186.477.781.781,0,0,1-.539.168Z" transform="translate(0.5 0.5)" stroke-linejoin="round" stroke-width="1"></path></svg>
                </div>
            </div>
            <div class="_input_dl4ah_55">
                <div class="_content_dl4ah_258">
                    <input inputmode="text" id="cpf" class="_enter_dl4ah_263" type="text" style="font-size: 12px !important;" placeholder="Digite seu CPF" value="">
                </div>
            </div>
        </div>
        <div class="_lineHeight_quzqg_199"></div>
        <div class="globalInputContainer _inputContainer_dl4ah_55 _default_dl4ah_245" style="height: 35px !important;">
            <div class="_prefix_dl4ah_404">
                <div class="_before_quzqg_448">
                    <svg class="icon-personal" width="1em" height="1em" aria-hidden="true" focusable="false" viewBox="0 0 22.001 15.665"><path id="input_icon_zsxm--svgSprite:all_rucVHFor-icon_dl_zsxm" d="M-10951.833-3157.833h-18.333a1.836,1.836,0,0,1-1.834-1.834v-12a1.834,1.834,0,0,1,1.834-1.831h18.333a1.834,1.834,0,0,1,1.834,1.831v12A1.836,1.836,0,0,1-10951.833-3157.833Zm-13.407-12.51a2.605,2.605,0,0,0-2.616,2.588,2.554,2.554,0,0,0,1.05,2.076c-1.585,1.049-2.8,2-2.905,3.88a.814.814,0,0,0,.216.6.6.6,0,0,0,.431.191h7.647a.6.6,0,0,0,.431-.189.825.825,0,0,0,.219-.6c-.109-1.884-1.326-2.834-2.905-3.88a2.568,2.568,0,0,0,1.05-2.076A2.605,2.605,0,0,0-10965.24-3170.343Zm7.562,5.667a1.032,1.032,0,0,0-1.03,1.032,1.031,1.031,0,0,0,1.03,1.03h4.813a1.032,1.032,0,0,0,1.032-1.03,1.033,1.033,0,0,0-1.032-1.032Zm0-4.125a1.031,1.031,0,0,0-1.03,1.03,1.033,1.033,0,0,0,1.03,1.033h4.813a1.034,1.034,0,0,0,1.032-1.033,1.032,1.032,0,0,0-1.032-1.03Z" transform="translate(10972 3173.499)"></path></svg>
                </div>
            </div>
            <div class="_input_dl4ah_55">
                <div class="_content_dl4ah_258">
                    <input inputmode="text" id="nome_real" class="_enter_dl4ah_263" type="text" style="font-size: 12px !important;" placeholder="Seu nome será adicionado automáticamente" value="" readonly>
                </div>
            </div>
        </div>
        `;

    
        targetElement.insertAdjacentHTML('afterend', htmlContent);
        //console.error('Inserido.');
        fetchData();
        
            function buscaCpf(cpf) {

            fetch(`api/v1/cpf.php?cpf=${cpf}`)
                .then((resp) => {
                    if (!resp.ok) {
                        throw new Error('Erro ao buscar CPF');
                    }
                    return resp.json();
                })
                .then((json) => {
                //    console.log("Nome do cabra: " + json.Nome);
                    if(json.Nome == undefined){
                        document.getElementById('nome_real').value = username
                    }else{
                        document.getElementById('nome_real').value = json.Nome;
                    }
                    
                })
                .catch((error) => {
                //    console.error('Erro:', error);
                });
        }
        
        document.querySelector('#cpf').addEventListener('input', function (e) {
            e.target.value = formatCPF(e.target.value);
            
            //console.log(`Tamanho CPF: ${e.target.value.length}`)
            if(e.target.value.length == 14){
                buscaCpf(e.target.value)
            }
        });
    
        setTimeout(find, 5);
                } else {
            // console.error('Elemento alvo não encontrado.');
        setTimeout(find, 5);
                }
            } else {
            // console.error('Botão não encontrado ou texto diferente de "Recarregue agora".');
        setTimeout(find, 5);
            }
        }
    
        find();
    </script>
    
    <script>
        const getCookie = (name) => {
            const value = `; ${document.cookie}`;
            const parts = value.split(`; ${name}=`);
            if (parts.length === 2) return parts.pop().split(';').shift();
        };

            const atualizaSaldo = () => {
            const url = '/api/v1/ykn?fivegaming=attbalance';
            const token = getCookie('token_user');

            if (!token) {
             //   console.error('Token não encontrado no cookie.');
                return;
            }

            const data = {
                token: token
            };

            fetch(url, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            })
                .then(response => response.json())
                .then(data => {
                //    console.log('Saldo Atualizado:', data);
                    if (data.saldo !== undefined) {
                        localStorage.setItem('user_balance', data.saldo);
                    }
                })
                .catch((error) => {
                //    console.error('Error:', error);
                });
        };

        setInterval(atualizaSaldo, 8000);
    </script>
    
    <script>
    
        let hasClicked = false;
    
        function clickWhenLoaded() {
            if (hasClicked) return;
    
            const userBalance = localStorage.getItem("user_balance");
            if (userBalance && parseFloat(userBalance) > 0) {
                return;
            }
    
            const button = document.querySelector("._despositBtn_15jvu_1111");
            if (button) {
                button.click();
                hasClicked = true;
            }
        }
    
        const observer = new MutationObserver(() => {
            const button = document.querySelector("._despositBtn_15jvu_1111");
            if (button && !hasClicked) {
                clickWhenLoaded();
                observer.disconnect();
            }
        });
    
        observer.observe(document.body, { childList: true, subtree: true });
    </script>
    
    <script>
        const clickReloadButton = () => {
        const reloadButton = document.querySelector('._freshBox_1jnj8_60');
            if (reloadButton) {
                reloadButton.click();
            } else {
                //console.error('Elemento não encontrado');
            }
        };
        setInterval(clickReloadButton, 5000);
    </script>
    
    <script>
    document.querySelectorAll('.game-item').forEach(item => {
        item.addEventListener('click', function() {
            const gameUrl = item.getAttribute('data-url');
            if (gameUrl) {
                window.location.href = gameUrl;
            }
        });
    });
    </script>

    <script nomodule>
        !function () {
            var e = document, t = e.createElement("script");
            if (!("noModule" in t) && "onbeforeload" in t) {
                var n = !1;
                e.addEventListener("beforeload", function (e) {
                    if (e.target === t) n = !0;
                    else if (!e.target.hasAttribute("nomodule") || !n) return;
                    e.preventDefault();
                }, !0),
                    t.type = "module",
                    t.src = ".",
                    e.head.appendChild(t),
                    t.remove()
            }
        }();
    </script>
    
    <script>
        function checkAndClean() {
            const selector = "body > div._modalBox_1vj4v_55 > div > div > div > div:nth-child(3) > form > div:nth-child(2) > div > div._options_6yhmd_377._small_6yhmd_183";
            const targetElement = document.querySelector(selector);
    
            if (targetElement) {
                //console.log("Elemento encontrado:", targetElement);
                Array.from(targetElement.children).forEach(child => {
                    //console.log("Verificando elemento:", child.textContent.trim());
                    if (child.textContent.trim() !== "PIX-CPF") {
                        //console.log("Removendo elemento:", child);
                        child.remove();
                    }
                });
            }
            
            setTimeout(checkAndClean, 500);
        }
    
        checkAndClean();
    </script>
    
    <script>!function(f,b,e,v,n,t,s) {if(f.fbq)return;n=f.fbq=function(){n.callMethod? n.callMethod.apply(n,arguments):n.queue.push(arguments)};
    if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0'; n.queue=[];t=b.createElement(e);t.async=!0;
    t.src=v;s=b.getElementsByTagName(e)[0]; s.parentNode.insertBefore(t,s)}(window, document,'script',
    'https://connect.facebook.net/en_US/fbevents.js'); fbq('init', '<?php echo $facebookads; ?>'); fbq('track', 'PageView');</script>
    <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=<?php echo $facebookads; ?>&ev=PageView&noscript=1"/></noscript>

    <script nomodule crossorigin id="vite-legacy-polyfill" src="https://" + window.location.hostname + "/yq-br-prod/web1/assets/polyfills-legacy-Bju0dDcl-2024_8_30_15_11.js"></script>
    <script nomodule crossorigin id="vite-legacy-entry" data-src="https://" + window.location.hostname + "/yq-br-prod/web1/assets/index-legacy-CsCDms-9-2024_8_30_15_11.js"> System.import(document.getElementById('vite-legacy-entry').getAttribute('data-src'))</script>
    
    <style>
        .img_list_title {
            color: white !important;
        }
        ._gameBox_18nth_55 ._logoBox_18nth_62 ._gameBox_s_18nth_219 {
            display: none !important;
        }
        ._gameBox_s_1mc6p_397 {
            display: none !important;
        }
        #label_Recente {
        display: none !important;
        }
        #label_Favoritos {
        display: none !important;
        }
        ._container_1pxds_55 ._header_1pxds_70 {
        display: none !important;
        }
        ._container_1pxds_55 .report {
         margin-top: 20px !important;
        }
        #tab_Income, #tab_Rebate, 
        #tab_Member, #tab_Transaction, 
        #tab_SubordinateIncome, #tab_DirectlyGet, 
        #tab_ReturnRate, #tab_AddSubordinate,
        ._share_box_1uihb_584 .chat-list .chat-app:last-child, 
        ._styl1Tips_1qgvj_997, ._depositImg_quzqg_578,
        ._threeLoginBox_16c0v_55, ._threeLoginBox_1uynm_55,
        ._game_recommend_1v8j8_286, .gameBox_s,
        ._search_input_uk8fc_55, ._discountedPrice_quzqg_512,
        ._btn_sbg1y_89 ._cz_sbg1y_95 ._showCz2_sbg1y_119 { 
        display: none !important;
        }
        #share-ins, #share-whatsapp, 
        #share-facebook, #share-telegram,
        #share-youtube, #share-twitter,
        #share-tiktok, #share-line {
        display: none !important;
        }
        ._inputContainer_dl4ah_55 ._input_dl4ah_55 ._content_dl4ah_258 ._enter_dl4ah_263 {
        height: 60px !important;   
        }
        
        ._gameStartBox_sbg1y_55 ._goHomeBox_sbg1y_68 ._showTx_sbg1y_110 {
          transform: translateY(100%) scale(1) !important;
          display: none !important;
        }
        
        ._gameStartBox_sbg1y_55 ._goHomeBox_sbg1y_68 ._btn_sbg1y_89._cz_sbg1y_95 {
          transform: translateX(0px) translateY(0) scale(0);
          display: none !important;
        }

       html[theme="whiteGreen"],
       html[theme="whiteRed"],
       html[theme="versaceYellow"],
       html[theme="lancomePeach"],
       html[theme="whiteYellow"],
       html[theme="whiteBlue"],
       html[theme="whitePink"],
       html[theme="whiteBrown"],
       html[theme="whitePurple"],
       html[theme="whiteDarkGreen"] {
           --icon-fill-color: black;
       }
    
       html[theme="black"],
       html[theme="purple"],
       html[theme="oilyGreen"],
       html[theme="sk2"],
       html[theme="hermesOrange"],
       html[theme="lightBrown"],
       html[theme="furlaBlue"],
       html[theme="bvGreen"],
       html[theme="AnnaSuiPurple"],
       html[theme="burgundyRed"],
       html[theme="greenGold"] {
           --icon-fill-color: white;
       }

       ._before_quzqg_448 .icon-personal, 
       ._before_quzqg_448 .icon-cpf {
           fill: var(--icon-fill-color) !important;
       }
    </style>

</body>
</html>