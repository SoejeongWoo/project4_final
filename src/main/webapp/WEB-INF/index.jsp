
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<html lang="en" data-bs-theme="dark"><head><script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.118.2">
    <title>Album example · Bootstrap v5.3</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">



    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#712cf9">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            width: 100%;
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .btn-bd-primary {
            --bd-violet-bg: #712cf9;
            --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

            --bs-btn-font-weight: 600;
            --bs-btn-color: var(--bs-white);
            --bs-btn-bg: var(--bd-violet-bg);
            --bs-btn-border-color: var(--bd-violet-bg);
            --bs-btn-hover-color: var(--bs-white);
            --bs-btn-hover-bg: #6528e0;
            --bs-btn-hover-border-color: #6528e0;
            --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
            --bs-btn-active-color: var(--bs-btn-hover-color);
            --bs-btn-active-bg: #5a23c8;
            --bs-btn-active-border-color: #5a23c8;
        }

        .bd-mode-toggle {
            z-index: 1500;
        }

        .bd-mode-toggle .dropdown-menu .active .bi {
            display: block !important;
        }
    </style>


</head>
<body class="vsc-initialized">
<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
    <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"></path>
    </symbol>
    <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"></path>
    </symbol>
    <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"></path>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"></path>
    </symbol>
    <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"></path>
    </symbol>
</svg>

<div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
    <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center" id="bd-theme" type="button" aria-expanded="false" data-bs-toggle="dropdown" aria-label="Toggle theme (dark)">
        <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
        <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
    </button>
    <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
                Light
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="dark" aria-pressed="true">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
                Dark
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="auto" aria-pressed="false">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
                Auto
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
    </ul>
</div>


<header data-bs-theme="dark">
    <div class="collapse text-bg-dark" id="navbarHeader">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-md-7 py-4">
                    <h4>About</h4>
                    <p class="text-body-secondary">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
                </div>
                <div class="col-sm-4 offset-md-1 py-4">
                    <h4>Contact</h4>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white">Follow on Twitter</a></li>
                        <li><a href="#" class="text-white">Like on Facebook</a></li>
                        <li><a href="#" class="text-white">Email me</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container">
            <a href="index.html" class="navbar-brand d-flex align-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path><circle cx="12" cy="13" r="4"></circle></svg>
                <strong>드라마 MUSE</strong>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
</header>

<main>

    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">오늘의 추천 드라마</h1>
                <p class="lead text-body-secondary">-------<br>오늘도 무슨 드라마를 보면 좋을지 고민하고 계신 분들, 다양한 장르, 시대배경, 줄거리를 가진 드라마를 추천받아 보새요. 숨은 명작도 찾아주는 드라마 MUSE.</p>
            </div>
        </div>
    </section>

    <div class="album py-5 bg-body-tertiary">
        <div class="container">

            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <div class="col">
                    <div class="card shadow-sm">
                        <svg onclick="window.location='add.html';" class="bd-placeholder-img card-img-top" width="100%" height="535" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
                            <image style="display: block; margin: auto" xlink:href="plus.png" x="40%" y="40%" height="100" width="100"></image>
                        </svg>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="535" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
                            <image xlink:href="a.png" height="100%" width="100%" ></image>
                        </svg>
                        <div class="card-body">
                            <p class="card-text" style="height: 100px"><strong><u>나의아저씨(2018)</u></strong><br>길거리에 넘쳐나는 흔하디 흔한 아저씨들. 허름하고 한심하게 보이던 그들이, 사랑스러워 죽을 것이다.눈물 나게 낄낄대며 보다가,끝내 펑펑 울 것이다.나의 ...</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" onclick="window.location='view.html'" class="btn btn-sm btn-outline-secondary">보기</button>
                                    <button type="button" onclick="window.location='edit.html'" class="btn btn-sm btn-outline-secondary">수정</button>

                                </div>
                                <button type="button" style="float: right" onclick="alert('게시물을 삭제할까요?')" class="btn btn-sm btn-outline-secondary">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="535" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
                            <image xlink:href="Memories of the Alhambra.png" height="100%" width="100%" ></image>
                        </svg>
                        <div class="card-body">
                            <p class="card-text" style="height: 100px"><strong><u>알함브라 궁전의 추억(2018)</u></strong><br>투자회사 대표인 ‘유진우’가 비즈니스로 스페인 그라나다에 방문하고, 여주인공 ‘정희주’가 운영하는 오래된 호스텔에 묵게 되면서 기묘한 사건에 휘말리는 이...</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" onclick="window.location='view1.html'" class="btn btn-sm btn-outline-secondary">보기</button>
                                    <button type="button" onclick="window.location='edit.html'" class="btn btn-sm btn-outline-secondary">수정</button>

                                </div>
                                <button type="button" style="float: right" onclick="alert('게시물을 삭제할까요?')" class="btn btn-sm btn-outline-secondary">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="535" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
                            <image xlink:href="Iljimae.png" height="100%" width="100%" ></image>
                        </svg>
                        <div class="card-body">
                            <p class="card-text" style="height: 100px"><strong><u>알지매(2009)</u></strong><br>왕이랍시고 양반이랍시고 꼴값을 떠는 작자들을 시원하게 혼내주는 멋진 사내가 백성들의 꿈속에 살고 있었다. "이 도적놈의 세상~ 지금부터 나, 일지매가 접...</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" onclick="window.location='view2.html'" class="btn btn-sm btn-outline-secondary">보기</button>
                                    <button type="button" onclick="window.location='edit.html'" class="btn btn-sm btn-outline-secondary">수정</button>

                                </div>
                                <button type="button" style="float: right" onclick="alert('게시물을 삭제할까요?')" class="btn btn-sm btn-outline-secondary">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="535" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
                            <image xlink:href="Born Again.png" height="100%" width="100%" ></image>
                        </svg>
                        <div class="card-body">
                            <p class="card-text" style="height: 100px"><strong><u>본 어게인(2020)</u></strong><br>그들은 모두 사랑 때문에 죽었고 사랑 때문에 다시 태어났다. 다시 태어나서라도 꼭 갖고 싶은 처절한 사랑이 있을까? 여기, 사랑으로 얽힌 지독한 악연 때문...</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" onclick="window.location='view3.html'" class="btn btn-sm btn-outline-secondary">보기</button>
                                    <button type="button" onclick="window.location='edit.html'" class="btn btn-sm btn-outline-secondary">수정</button>

                                </div>
                                <button type="button" style="float: right" onclick="alert('게시물을 삭제할까요?')" class="btn btn-sm btn-outline-secondary">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="535" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
                            <image xlink:href="Healer.png" height="100%" width="100%" ></image>
                        </svg>
                        <div class="card-body">
                            <p class="card-text" style="height: 100px"><strong><u>힐러(2014)</u></strong><br>80년 해적방송 당시 준석, 길한, 문호 명희, 기영재 가 친구였다. 92년 어느날 비자금 사건을 수사하다 길한과 준석이 죽고, 문식은 길한의 여자였던 명희를....</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" onclick="window.location='view4.html'" class="btn btn-sm btn-outline-secondary">보기</button>
                                    <button type="button" onclick="window.location='edit.html'" class="btn btn-sm btn-outline-secondary">수정</button>

                                </div>
                                <button type="button" style="float: right" onclick="alert('게시물을 삭제할까요?')" class="btn btn-sm btn-outline-secondary">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="535" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
                            <image xlink:href="Windy Mi-poong.png" height="100%" width="100%" ></image>
                        </svg>
                        <div class="card-body">
                            <p class="card-text" style="height: 100px"><strong><u>불어라 미풍아(2016)</u></strong><br>여기 한 남자가 있다. 그에게는 아내도 있었고 부모도 있었고 형제도 있었고 가족도 있었다. 하지만 한국전쟁 때 가족과 헤어진 그는 60년이 넘도록 헤어진...</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" onclick="window.location='view5.html'" class="btn btn-sm btn-outline-secondary">보기</button>
                                    <button type="button" onclick="window.location='edit.html'" class="btn btn-sm btn-outline-secondary">수정</button>

                                </div>
                                <button type="button" style="float: right" onclick="alert('게시물을 삭제할까요?')" class="btn btn-sm btn-outline-secondary">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="535" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
                            <image xlink:href="Guardian.png" height="100%" width="100%" ></image>
                        </svg>
                        <div class="card-body">
                            <p class="card-text" style="height: 100px"><strong><u>도깨비(2016)</u></strong><br>누구의 인생이건 신이 머물다 가는 순간이 있다. 당신이 세상에서 멀어지고 있을 때 누군가 세상 쪽으로 등을 떠밀어 주었다면 그건, 신이 당신 곁에 머물다 가...</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" onclick="window.location='view6.html'" class="btn btn-sm btn-outline-secondary">보기</button>
                                    <button type="button" onclick="window.location='edit.html'" class="btn btn-sm btn-outline-secondary">수정</button>

                                </div>
                                <button type="button" style="float: right" onclick="alert('게시물을 삭제할까요?')" class="btn btn-sm btn-outline-secondary">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="535" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
                            <image xlink:href="The Red Sleeve.png" height="100%" width="100%" ></image>
                        </svg>
                        <div class="card-body">
                            <p class="card-text" style="height: 100px"><strong><u>옷소매 붉은 끝동(2021)</u></strong><br>도깨비보다 무섭다는 왕이 있었다. 왕은 사내이기 이전에 임금이다. 사랑하는 여인보다 일국의 운명이 우선이고, 만백성의 안위가 먼저다. 사랑은 저 먼 끝순...</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" onclick="window.location='view7.html'" class="btn btn-sm btn-outline-secondary">보기</button>
                                    <button type="button" onclick="window.location='edit.html'" class="btn btn-sm btn-outline-secondary">수정</button>

                                </div>
                                <button type="button" style="float: right" onclick="alert('게시물을 삭제할까요?')" class="btn btn-sm btn-outline-secondary">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>





            </div>
        </div>
    </div>






</main>

<footer class="text-body-secondary py-5">
    <div class="container">
        <p class="float-end mb-1">
            <a href="#">Back to top</a>
        </p>
        <p class="mb-1">(주) 드라마 MUSE</p>
        <p class="mb-0">문의: Dremamuse@examplemail.com</p>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>



</body></html>