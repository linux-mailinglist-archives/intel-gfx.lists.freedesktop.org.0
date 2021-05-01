Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F683707D3
	for <lists+intel-gfx@lfdr.de>; Sat,  1 May 2021 18:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4B86E201;
	Sat,  1 May 2021 16:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 925E36E201
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 May 2021 16:15:45 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id q2so1148552pfh.13
 for <intel-gfx@lists.freedesktop.org>; Sat, 01 May 2021 09:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=pr9wps/0fpyw7uTouSSyLDZZRNKXYCPSR/z6PFGeA0g=;
 b=QGuumQiVD78XZhELmHz3F7FdW2S4fDNZQKqvaB9LxZSEH/OAAMwmuwEgxC2JJlIGUy
 GqxTo9uYQM0YkeHTF/e+2E/9OT9zU/Rl5EFd8jrpLShp4DipSndv/h0mlbBUfEx2v0lW
 R3m4hmlQFaltR54HfCPDl3DkbqXmmZWJ6XOe7VDkC5YFs9g9E+2Gt1ur9EBi7HHEmsUs
 JsXRiJAGGBTRltaUBNfIr8CshfB5kllOsLb7hdCffakpMDxTZR5JbgBuaJW3HlUWo0Fq
 j7ZuDuy4+KnbidvQVR1yk2XpPTudAtRXbEQKiKPJY8XYfUikpCFJElB2gx/hmjSfD0qN
 eAYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=pr9wps/0fpyw7uTouSSyLDZZRNKXYCPSR/z6PFGeA0g=;
 b=U8vt0HDcRHkx3x8Gxdrvz9sHmSfghHyccz0md139amBQJFJyUKi5HUTPrCtZx3y6aF
 zvTs1s7wM0ZnHksyBcbUktBzSF45ZHGs1CQJ9OW5/tSYdPf1lzwT/9IisSnqT/b8XteR
 kDIF1i26lHkW2ksRB0diOrWZEdJVzJqc5jAWxWUGV6WOQzm44Es1LTFmzk861kbHqxZI
 RrOK3SCx7xg+x06Rrh+rhlMKhVkmhDI3Wxvq4BDIgM/KFs0zc1ZCt5uLy81fpUNKKu4v
 JDgWaeDPGJfLqCO+PzaYjxQidcPh57EatMR3cEkOTouU8Grtu5KdaXHZ0b4yCmI/BZ5y
 mC2A==
X-Gm-Message-State: AOAM530C3r+tR07lHbBdaMy+YHwXULFY4FbDyjrqqV6ppbpcipLZ4FNt
 hi0+vgsFQDBhBY6+WnaxOhZGhwFkjVUEVn/3kJnqjXiRwUFo/w==
X-Google-Smtp-Source: ABdhPJxGQ9RPHF2WPuFNdNGmytjNVXO8CnSzdyI9GeytxPAqXHMJ6GxDIJyKmZ07TrT3zQktL4PkMKjV4NgSiSXzwo0=
X-Received: by 2002:a62:2d6:0:b029:204:9b3b:dced with SMTP id
 205-20020a6202d60000b02902049b3bdcedmr10343104pfc.36.1619885744869; Sat, 01
 May 2021 09:15:44 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Tomasz_K=C5=82oczko?= <kloczko.tomasz@gmail.com>
Date: Sat, 1 May 2021 17:15:19 +0100
Message-ID: <CABB28Cy-1sT5XAzinnuFty-5n61BN7Yq5En=qom0bY=vBMxHeQ@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] Current status of the Intel X11 driver
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
Content-Type: multipart/mixed; boundary="===============1323390791=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1323390791==
Content-Type: multipart/alternative; boundary="00000000000066536b05c1470a86"

--00000000000066536b05c1470a86
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Asccording to
https://gitlab.freedesktop.org/xorg/driver/xf86-video-intel/-/tags last
release was +6 years ago.
Since then it has been added +900 commits.

Is it any plan to make a new release or doest mean that no one cares about
keeping more or less the release ~up-to-date?

kloczek
--=20
Tomasz K=C5=82oczko | LinkedIn: *http://lnkd.in/FXPWxH <http://lnkd.in/FXPW=
xH>*

--00000000000066536b05c1470a86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">Hi,</div><div class=3D"gmail_default" style=3D"font-family:mon=
ospace,monospace"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:monospace,monospace">Asccording to <a href=3D"https://gitlab.freedesktop=
.org/xorg/driver/xf86-video-intel/-/tags">https://gitlab.freedesktop.org/xo=
rg/driver/xf86-video-intel/-/tags</a> last release was=C2=A0+6 years ago.</=
div><div class=3D"gmail_default" style=3D"font-family:monospace,monospace">=
Since then it has been added +900 commits.</div><div class=3D"gmail_default=
" style=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:monospace,monospace">Is it any plan to make a =
new release or doest mean that no one cares about keeping more or less the =
release ~up-to-date?</div><div class=3D"gmail_default" style=3D"font-family=
:monospace,monospace"><br></div><div class=3D"gmail_default" style=3D"font-=
family:monospace,monospace">kloczek</div><div><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><font face=3D"monospace, monospace">--=C2=A0</font></div><div =
dir=3D"ltr"><font face=3D"monospace, monospace">Tomasz K=C5=82oczko | Linke=
dIn:=C2=A0<b style=3D"font-weight:normal"><a href=3D"http://lnkd.in/FXPWxH"=
 style=3D"text-decoration:none" target=3D"_blank"><span style=3D"font-size:=
13px;color:rgb(17,85,204);background-color:transparent;text-decoration:unde=
rline;vertical-align:baseline;white-space:pre-wrap">http://lnkd.in/FXPWxH</=
span></a></b></font></div></div></div></div></div></div>

--00000000000066536b05c1470a86--

--===============1323390791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1323390791==--
