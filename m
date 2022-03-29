Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC22E4EA556
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 04:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10EA310EEC2;
	Tue, 29 Mar 2022 02:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7FE110EEC1
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 02:38:18 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id bq24so11986863lfb.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 19:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=W0Nvz/KEdCQ8F57iPffFs2LQsS1JREYR2yhA1x1ow4k=;
 b=pqh07P66MkzmLPuuLAujq7JsZHm5jFOzziB+V2ufvRaow6k5YoHw5Dr/LrrOnODqhA
 sqWERAzegzAFbW74Qw9rOw3Xo2pUJxRNv5VDQc85NqKxGcZ4DisjrbACSZB5Wd3LyTKF
 10uOG/DYFktiW/c0ytV62PM8Wwrww50NMlko8gbMsrAt1XV/+Ljr7E3ELZ4PyCdGxxWo
 96zT6swvcE2mFy75E8Aof/2ggEgDOWdPS78yAcVxN9388lfZYCW9nV7d26N+pN5QMkc1
 rFmDM4hoypATIP5rntbBiAtpe5V22/0Nr5KExXK8mQ56PT6pe0YWmKRfk0gGi71pevAb
 GmXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=W0Nvz/KEdCQ8F57iPffFs2LQsS1JREYR2yhA1x1ow4k=;
 b=R9BjoEePPY9Ms8EjWymMasdezw5aFyPlJCWaHcKuARSM01nt4fTmqMhnDUHxcdYUwX
 vmfW/FvrlyjhnwqyqsHHz34o4MU8bzJAynC9vXNMf4WqhsqeqyEQshjFRfj8mW33WoYA
 DtijxEUqvwfM7w1yHTL+aDhtApCDhcizOeo9fxiP4rczSmfL2hY317JkXmmgey0hl3ew
 ka9FYgzH0gVk8nrJFO4g6M9EwJwpCOHSYZxVIBtWyJVt3NU3YXl68lCw7w9tG77Khvf8
 3/MTmF7EDUarH7gyT18vrJU1xkvxrhQA71FrWHaV3PQREO+VimRLuds/xwjOaYTLOrYA
 u1xw==
X-Gm-Message-State: AOAM531Fmo72HIF3e4WpRwT1dZ4+PT9hURWgEDWYemaJI4WbwBljVfHj
 JbJYajj1nDdkszFFIRenNhQoq5cR8bCY7STUl3+cW+Lskcp1FQ==
X-Google-Smtp-Source: ABdhPJxtk85GtXaYo7I/qV6OpZr9guinxlZ8BlV9bMOkHfo6/IIALezXCuw2xlyVjjDK4eKvO1L0fj1Cw+a/rpi8iiY=
X-Received: by 2002:a05:6512:ea7:b0:44a:2d87:fffc with SMTP id
 bi39-20020a0565120ea700b0044a2d87fffcmr539690lfb.290.1648521496778; Mon, 28
 Mar 2022 19:38:16 -0700 (PDT)
MIME-Version: 1.0
From: Jeffrey Ellison <jeffrey.t.ellison@gmail.com>
Date: Mon, 28 Mar 2022 19:37:40 -0700
Message-ID: <CAOsq5MkCYAx2aJdJ8OnksfA1yKrcHSxWA1ZHLAq4Tt=nYG0=PQ@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000385aa505db52526c"
Subject: [Intel-gfx] [bug report] High refresh rates broken on eDP display
 with Optimus
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

--000000000000385aa505db52526c
Content-Type: text/plain; charset="UTF-8"

Hello,

I have an Optimus laptop with Intel Tiger Lake H GT1 integrated graphics
(i7-11800H) and NVIDIA RTX 3080 Mobile GPU. The inbuilt display is 165 Hz
and is connected to the IGPU by eDP. As of any Kernel version 5.16 onwards,
Xrandr only detects 60 Hz as a possible refresh rate. The problem also
occurs on Wayland. Downgrading to 5.15.13 resolves the problem.

Another user of a laptop with similar specs also reports the same issue and
provides Xrandr output: https://bbs.archlinux.org/viewtopic.php?id=274012

Distro: Arch Linux
Laptop: Razer Blade 15" Advanced 2021 (RZ09-0409CEA3)
CPU: i7-11800H
IGPU: Tiger Lake H GT1 [UHD Graphics]
DGPU: NVIDIA RTX 3080 Laptop (Ampere GA104M)
Drivers: NVIDIA Proprietary (510.54-9), Mesa (21.3.7)

--000000000000385aa505db52526c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I have an Optimus laptop with Intel Tiger La=
ke H GT1 integrated graphics (i7-11800H) and NVIDIA RTX 3080 Mobile GPU. Th=
e inbuilt display is 165 Hz and is connected to the IGPU by eDP. As of any =
Kernel version 5.16 onwards, Xrandr only detects 60 Hz as a possible refres=
h rate. The problem also occurs on Wayland. Downgrading to 5.15.13 resolves=
 the problem.<br><br>Another user of a laptop with similar specs also repor=
ts the same issue and provides Xrandr output:=C2=A0<a href=3D"https://bbs.a=
rchlinux.org/viewtopic.php?id=3D274012">https://bbs.archlinux.org/viewtopic=
.php?id=3D274012</a><br><br>Distro: Arch Linux<div>Laptop: Razer Blade 15&q=
uot; Advanced 2021 (RZ09-0409CEA3)<br></div><div><div>CPU: i7-11800H<br>IGP=
U: Tiger Lake H GT1 [UHD Graphics]<br>DGPU: NVIDIA RTX 3080 Laptop (Ampere =
GA104M)<br><div>Drivers: NVIDIA Proprietary (510.54-9), Mesa (21.3.7)</div>=
</div><div><br></div></div></div>

--000000000000385aa505db52526c--
