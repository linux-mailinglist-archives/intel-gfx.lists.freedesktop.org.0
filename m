Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E572680B8
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Sep 2020 20:21:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DA2D89B62;
	Sun, 13 Sep 2020 18:21:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com
 [IPv6:2607:f8b0:4864:20::e35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14EF589B12
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Sep 2020 18:21:13 +0000 (UTC)
Received: by mail-vs1-xe35.google.com with SMTP id c127so8350408vsc.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Sep 2020 11:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cNT1WcPLh/Au+61jXj4Qkjl733mF87w21+VrJWHvUCY=;
 b=C/BRaNgFCHiv9+eck+32L4M9Yh9Ek5jEmpUFpqwjOMMMFDGQNpDekqnhD8sKYHWoWf
 R9INJFPIL4U2G+MG+pJz/nVsSq/DfPKY8p+vTZDXl5YZnI48patkh7pTjIb5uQZF/ZE7
 Geio/m1A1XEExzG5rGT8zWhwaWf8wrJ5/tvFpVKgbrsA/L1nBLJRFw5sdB39DKZru9fk
 114dEm70/PVdvjusnuMq+o01zSmn059O3I97zKtPayEnycjb+5VbSlAGCRt7QAyxOPeG
 r7UipCDcuu9uV+G5UF0FoifA+2eYNNO4CG729pBv095p9N99BVnQQjl5rnI9VYzActVs
 FXjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cNT1WcPLh/Au+61jXj4Qkjl733mF87w21+VrJWHvUCY=;
 b=W9Lf6bfEcyLIGmHQ+qex/uDO1Mvp2Yxb/+W6sK6+WIl3kUOlebRubf5pI1+HcJYOvl
 +FlA3pmIlyAwG78UpWywU7+dm7xD324wCG2OA1BPvLqIx4el/AnBYqFmi5TFtGVJo+PL
 OpEdfZ4TAAMqPqEdd+Wx8nZPJY2+KjPhTjn8ZY0KPuJwciNo/IILO5ZHagEhL2GGU3FM
 s2SoiIkv8/3WqD7td2bmfzOzsM9DF6FQyiGWN9Fsk5G5dNVajbn2h/arCouBJa9hQU2M
 gpBUkuHXuO+BwR5n213Vzfmb+IBz0PzZxIvJTHSXwC32rSAaN8V15jVIqaLWmtC12HGx
 D3ow==
X-Gm-Message-State: AOAM533Thl9TyYYVX7p/pQgzUA/U0aj8bfQxnJ9Jaav/U1hkxeqvzdWU
 dh+Lo0HaTtN0/RVya+tAPTSf9XfzIgPsOYvL46sf3DiOshM=
X-Google-Smtp-Source: ABdhPJzIZ2I16uXqnKNBTd/DzIop22SF0gt1ddIxx7f+cGzrUeJ7JtLPaHbnHLHgNGwFgm1xgE2CEiR6Rblhz+vknLQ=
X-Received: by 2002:a67:bc0d:: with SMTP id t13mr5969193vsn.5.1600021271911;
 Sun, 13 Sep 2020 11:21:11 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Tomasz_K=C5=82oczko?= <kloczko.tomasz@gmail.com>
Date: Sun, 13 Sep 2020 19:20:46 +0100
Message-ID: <CABB28CyjMp2P1Nb9eE+-22_k7SO+VjTWemaG6GfJ3sM7=juAcw@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] Current status of the intel driver
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
Content-Type: multipart/mixed; boundary="===============1016479004=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1016479004==
Content-Type: multipart/alternative; boundary="0000000000008ba24b05af35fb00"

--0000000000008ba24b05af35fb00
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Looking on
https://gitlab.freedesktop.org/xorg/driver/xf86-video-intel/-/tags it is
possible to see that laste tagged version was +5 years ago and since then
to the git repo have been added +900 commits.
I think that it would be good to make a new release ..

Can someone tell what is the current status of that code?
Intel driver is quite often used so the situation is a bit odd.

kloczek
--=20
Tomasz K=C5=82oczko | nkedIn: *http://lnkd.in/FXPWxH <http://lnkd.in/FXPWxH=
>*

--0000000000008ba24b05af35fb00
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">Hi,</div><div class=3D"gmail_default" style=3D"font-family:mon=
ospace,monospace"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:monospace,monospace">Looking on=C2=A0<a href=3D"https://gitlab.freedeskt=
op.org/xorg/driver/xf86-video-intel/-/tags">https://gitlab.freedesktop.org/=
xorg/driver/xf86-video-intel/-/tags</a> it is possible to see that laste ta=
gged version was=C2=A0+5 years ago and since then to the git repo have been=
 added +900 commits.</div><div class=3D"gmail_default" style=3D"font-family=
:monospace,monospace">I think that it would be good to make a new release .=
.</div><div class=3D"gmail_default" style=3D"font-family:monospace,monospac=
e"><br></div><div class=3D"gmail_default" style=3D"font-family:monospace,mo=
nospace">Can someone tell what is the current status of that code?</div><di=
v class=3D"gmail_default" style=3D"font-family:monospace,monospace">Intel d=
river is quite often used so the situation is a bit odd.</div><div class=3D=
"gmail_default" style=3D"font-family:monospace,monospace"><br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:monospace,monospace">kloczek</di=
v><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"monospace, m=
onospace">--=C2=A0</font></div><div dir=3D"ltr"><font face=3D"monospace, mo=
nospace">Tomasz K=C5=82oczko | nkedIn:=C2=A0<b style=3D"font-weight:normal"=
><a href=3D"http://lnkd.in/FXPWxH" style=3D"text-decoration:none" target=3D=
"_blank"><span style=3D"font-size:13px;color:rgb(17,85,204);background-colo=
r:transparent;text-decoration:underline;vertical-align:baseline;white-space=
:pre-wrap">http://lnkd.in/FXPWxH</span></a></b></font></div></div></div></d=
iv></div></div>

--0000000000008ba24b05af35fb00--

--===============1016479004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1016479004==--
