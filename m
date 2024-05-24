Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358E78CE385
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 11:32:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76BA310E15A;
	Fri, 24 May 2024 09:32:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HQZCljLK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5127610E15A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 09:32:38 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id
 d2e1a72fcca58-6f6765226d0so3041242b3a.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 02:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1716543157; x=1717147957; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=5BYxhr/fNSuqug37CVsjAC2+4fH96ZEtgP75gEBmpVo=;
 b=HQZCljLKDBlifM0BcyNNd9gPdAwA3gcFlXiFOm8NbttdItCyjEK7N4nycOR6FV8AZv
 3yPQ1h7QbfXvTYEOrbyE10i14zgEKoZvmKGnZmC9sLC4QP8DhownxBONQYrgr/yz6BWv
 RLH6eRWCN0BY7Up1MbUreGiNgv92E9KpDexZNy7YtFvzKvdZ2w8DQXWsEo+0HyhdDOnE
 Z0IzWVgfd+0IMam5oRMSY++QiY228iF/JIna1dJVdBQ3LvcZxUBbGqDJXldnS+P0WIIm
 +TeGpCdKPIGBU0/+j1pXtpiU1VENynF7xmfg5a2idX3xZ9+7/QfKLh9dJoXcMcXQo2Q/
 c3ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716543157; x=1717147957;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5BYxhr/fNSuqug37CVsjAC2+4fH96ZEtgP75gEBmpVo=;
 b=BAIsN62hgmHwDQ/4DO31ER06nbrygqP6naPWv9sfQgHtqq5IQ6A32O4hv/30MMJysv
 78M49oRWfABuKC4nW+Bo+Y3MQq5Fdmdqlrnx4LBsdV1Soi3Lq4qhQq52MqiW3e5EOU1k
 INyTRuvw9Y1scAWFmRNmC33SrjnEV9TokFLdlRL0RinSkOkM+WCONqd3vGLAR3lkCRZP
 YVxZOEgdF7BvW+FZRI5O3SO2vK3LlTP7ISzM0DJWoEGir+3DMFcYKZDg+q5AlOdLeVPl
 d+tS1WaW5hugdGtA37mv9BHbR7jNbc8W7vETS5yEAmk1M8ucg5gwxVHxzLWVv+EM5BrX
 8DrQ==
X-Gm-Message-State: AOJu0Yxf4jVspOVp1LfNeoNzsC/PZJJ/t6EtSBy+s2hsnSgkzptnXGA3
 B3L+eHYnPMdmYPXEZk4qi7zZHNGBnJSxFHKJ1pl2ttvRLE23RzM8oA2CEQmQgNEqlguXCUt9/HE
 Hv7IPwBel9Xzc3tpaxb3IIpS74tWKPw1D
X-Google-Smtp-Source: AGHT+IEAarNT3cn/jLT8uO34lg9U62kvikGqCTQkyuXKvLxmL7NEZbU/LkCbvwNp1H3JR+SiPRDEJzVri6Kd+AjMEaU=
X-Received: by 2002:a05:6a20:3945:b0:1af:ce5e:ca5e with SMTP id
 adf61e73a8af0-1b212d0f9d0mr2352204637.22.1716543157269; Fri, 24 May 2024
 02:32:37 -0700 (PDT)
MIME-Version: 1.0
From: Choi Wonseok <wonseok9911@gmail.com>
Date: Fri, 24 May 2024 18:32:25 +0900
Message-ID: <CADcKPMcKQOUioAEhXhs_zf+z0Z05StnTxwBtfdYpmLD9vbQuAA@mail.gmail.com>
Subject: Context Switch Monitoring functionality
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000217b4506192fd946"
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--000000000000217b4506192fd946
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello. I am graduate student at Korea University studying Intel GPU.

The functionality I need is to find out the 'context identifier' that was
just switched-out when a (or specific) context is switched-in to an engine
(Render Engine etc.).
I'd like to implement such functionality, especially with 'Context
Submission via GuC' enabled. (and I understand that in Proxy Submission
through GuC, guc_id is used as a context identifier instead of Context ID)

Is it possible to monitor context in/out in this way (through kernel
modification + H2G/G2H communication etc.) and, if possible, Could you
provide direction/insight on what elements should be used to implement this=
?

I'm sorry for asking such a bothersome question. I would really appreciate
it if you could reply.



[image: Mailtrack]
<https://mailtrack.io?utm_source=3Dgmail&utm_medium=3Dsignature&utm_campaig=
n=3Dsignaturevirality11&>
Sender
notified by
Mailtrack
<https://mailtrack.io?utm_source=3Dgmail&utm_medium=3Dsignature&utm_campaig=
n=3Dsignaturevirality11&>
24.
05. 24. =EC=98=A4=ED=9B=84 06:32:21

--000000000000217b4506192fd946
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello. I am graduate=C2=A0student at Korea University stud=
ying Intel GPU.<div><br></div><div>The functionality I need is to find out =
the &#39;context identifier&#39; that was just switched-out when a (or spec=
ific) context is switched-in to an engine (Render Engine etc.).<br><div>I&#=
39;d like to implement such functionality, especially with &#39;Context Sub=
mission via GuC&#39; enabled. (and=C2=A0I understand that in Proxy Submissi=
on through GuC, guc_id is used as a context identifier instead of Context I=
D)<br><br>Is it possible to monitor context in/out in this way (through ker=
nel modification + H2G/G2H communication etc.) and, if possible, Could you =
provide direction/insight on what elements should be used to implement this=
?<br><br></div><div>I&#39;m sorry for asking such a bothersome question. I =
would really appreciate it if you could reply.</div></div><br><br><br><div =
id=3D"mt-signature">
        <table border=3D"0" cellpadding=3D"8" cellspacing=3D"0" style=3D"us=
er-select: none;">
            <tbody><tr>
                <td>
                    <a id=3D"signatureLink-logo" href=3D"https://mailtrack.=
io?utm_source=3Dgmail&amp;utm_medium=3Dsignature&amp;utm_campaign=3Dsignatu=
revirality11&amp;" class=3D"" style=3D"text-decoration:none">
                        <img src=3D"https://s3.amazonaws.com/mailtrack-sign=
ature/sender-notified-72.gif" alt=3D"Mailtrack" class=3D"" width=3D"32" hei=
ght=3D"32">
                    </a>
                </td>
                <td>
                    <span style=3D"color:#777">Sender notified by</span> <b=
r>
                    <a id=3D"signatureLink-text" href=3D"https://mailtrack.=
io?utm_source=3Dgmail&amp;utm_medium=3Dsignature&amp;utm_campaign=3Dsignatu=
revirality11&amp;" class=3D"mt-install" style=3D"color:#4374f7">Mailtrack</=
a>
                   =20
    </td><td><span style=3D"color:transparent;font-size:0">24. 05. 24. =EC=
=98=A4=ED=9B=84 06:32:21</span></td>

               =20
                <td>
                   =20

                </td>
            </tr>
        </tbody></table>
    </div><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=3D"" st=
yle=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/3e439ad59d49020=
5cc3f453231727fcf487553d7.png?u=3D11115169"></div>

--000000000000217b4506192fd946--
