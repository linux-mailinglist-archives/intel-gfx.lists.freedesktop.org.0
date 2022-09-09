Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F4C5B340F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 11:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA8310EC49;
	Fri,  9 Sep 2022 09:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [IPv6:2a01:e0c:1:1599::14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9792310EC49
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 09:35:32 +0000 (UTC)
Received: from 82-65-29-218.subs.proxad.net (unknown
 [IPv6:2a01:e0a:5ef:1450:250:fcff:fe42:7bed])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 01D255FFB9
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 11:35:30 +0200 (CEST)
Received: from berkelium.ap2c.org (localhost [127.0.0.1])
 by 82-65-29-218.subs.proxad.net (Postfix) with ESMTP id 8FE0EA49B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 11:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ap2c.com; s=ap2cCom;
 t=1662716130; bh=6lV7nLomRBfHQugZR4vF8okHsxLYOPmImMZM0eNKEqA=;
 h=From:To:Date:Subject;
 b=ngGBJI4UrkrZnSokoUyMDc7qHUL+rcVgxmffu/qWbTQZXs40uSbcsFEF1JQT3B419
 agtBfq76iKt7tSP5te7uhi5lzgHEefB5EjF3ji3+48DKRoxlrs2wosYfumdoLZgh3B
 MJmlno6Fxkv/v51Z0yaEDehiWbhcii9nAR+fe2k0=
X-Virus-Scanned: amavisd-new at ap2c.org
Received: from 82-65-29-218.subs.proxad.net ([127.0.0.1])
 by berkelium.ap2c.org (berkelium.ap2c.org [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id HTxkulZENEhV for <intel-gfx@lists.freedesktop.org>;
 Fri,  9 Sep 2022 11:35:30 +0200 (CEST)
Received: from [100.85.155.77] (3.153.130.77.rev.sfr.net [77.130.153.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by 82-65-29-218.subs.proxad.net (Postfix) with ESMTPSA
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 11:35:29 +0200 (CEST)
From: =?UTF-8?B?QXVyw6lsaWVu?= <aurelien.intel@ap2c.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 09 Sep 2022 11:35:28 +0200
Message-ID: <183219aab00.2890.be34037ad6564a4fe81285fd91a8f407@ap2c.com>
User-Agent: AquaMail/1.38.1 (build: 103801197)
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="183219aad963aad28905f03e23"
Subject: [Intel-gfx] Developing a new backlight driver for specific OLED
 screen
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

This is a multi-part message in MIME format.
--183219aad963aad28905f03e23
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,
I hope this mailing-mist is the right place for this question.
I would like to develop a new driver in order to manage backlight for a 
specific OLED display (Samsung one). For that propose I need to use the 
dpcd aux read and write functions.
Since this driver is independent film the i915 driver I would like to 
develop an indémependant driver.
So my question is: how can I use the i915 API (dpcd aux communications) 
outside from the driver and register the backlight sys entries like the 
i915 does (in order to have all the softwares which plays with the 
backlight working without modifying them) ?

Many thanks for your answers

--
Aurélien

--183219aad963aad28905f03e23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<body>
<div dir=3D"auto"><div dir=3D"auto" style=3D"font-size: medium; overflow-wr=
ap: break-word !important;">Hi,&nbsp;</div><div dir=3D"auto" style=3D"font-=
size: medium; overflow-wrap: break-word !important;">I hope this mailing-mi=
st is the right place for this question.&nbsp;</div><div dir=3D"auto" style=
=3D"font-size: medium; overflow-wrap: break-word !important;">I would like =
to develop a new driver in order to manage backlight for a specific OLED di=
splay (Samsung one). For that propose I need to use the dpcd aux read and w=
rite functions.&nbsp;</div><div dir=3D"auto" style=3D"font-size: medium; ov=
erflow-wrap: break-word !important;">Since this driver is independent film =
the i915 driver I would like to develop an ind=C3=A9mependant driver.</div>=
<div dir=3D"auto" style=3D"font-size: medium; overflow-wrap: break-word !im=
portant;">So my question is: how can I use the i915 API (dpcd aux communica=
tions) outside from the driver and register the backlight sys entries like =
the i915 does (in order to have all the softwares which plays with the back=
light working without modifying them) ?</div><div dir=3D"auto" style=3D"fon=
t-size: medium; overflow-wrap: break-word !important;"><br style=3D"overflo=
w-wrap: break-word !important;"></div><div dir=3D"auto" style=3D"font-size:=
 medium; overflow-wrap: break-word !important;">Many thanks for your answer=
s</div><div dir=3D"auto" style=3D"font-size: medium; overflow-wrap: break-w=
ord !important;"><br style=3D"overflow-wrap: break-word !important;"></div>=
<div dir=3D"auto" style=3D"font-size: medium; overflow-wrap: break-word !im=
portant;"><div dir=3D"auto" style=3D"overflow-wrap: break-word !important;"=
>--</div><div dir=3D"auto" style=3D"overflow-wrap: break-word !important;">=
Aur=C3=A9lien</div></div></div></body>
</html>

--183219aad963aad28905f03e23--

