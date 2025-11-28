Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1375EC90FCF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 07:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 417DC10E0EB;
	Fri, 28 Nov 2025 06:49:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FFQm6eiy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com
 [74.125.224.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD62F10E0EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Nov 2025 06:49:29 +0000 (UTC)
Received: by mail-yx1-f47.google.com with SMTP id
 956f58d0204a3-63e19642764so1086853d50.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Nov 2025 22:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764312569; x=1764917369; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=uBxxmVCNfnsABXiBqBDNerhNchMEmFruMiP6Va5CnC8=;
 b=FFQm6eiyHdzPPUe7A2XsxxfN8gG/v69iy8pH5Kb+FYKqDcIJL0aF+MmMOCXH05NLct
 aqMXzKCiGHfufJj1NQIfZf8K1PWRR7aHgyJOL20asNEReBDP0SCFK0M1OzucUpo1n+EH
 Xsi9RM5OlIpYAvYt/9YtrvaKSjcQXOxcJsFWjlZTWQ4Nx4xhITaTPUiNcfhhJiWTx0Os
 P8QN3mTURUDndHy9ujJ1QUrVwzEmncjyNuk6XAtThJnMVslMrChILRG44zoY/oz2ChuA
 4tPRqusSZPgwYfXFoIY//+C/6exRmoqXDKf2Af2gexhnpZbzXlTLIeNVcOZ7j/GBFtLZ
 gdLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764312569; x=1764917369;
 h=to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=uBxxmVCNfnsABXiBqBDNerhNchMEmFruMiP6Va5CnC8=;
 b=V5L2Pl/PKUFylMqHb+yCvrgZuFOSuWT1+8kSliYEf5SjrVEPX89wWsfaq9odiAOgl0
 cNi0CPIr338ISWcaHHJuyVOIYZscytLfsP5NBAeM1TlAkrTVi2wExsLv5/DGeITXcpiw
 8t2jGJtf1btuGNj8t+7+1IYgToXjU3VespeWv4bIVqhNhjGIjpQ1keB1mJJ1PW6l6QMU
 FckJ8/J+kLyCqYbcMEaVvIDvn3nIbGyMsnCwPDz4OS7kFTamwRSBdGF2C1YmwPwsRzhS
 7tOWaHo7D9ddVVt6+5Dk8u3B3Gm2+CvVlCf01IlTBlcZnXbm7S010WR2SKDsBVKefdOo
 TkZw==
X-Gm-Message-State: AOJu0YzoCzSXrCQlm3aB21QRWLzIqgjeZfWxegeEGV36T9K0ig5cRSZp
 Tdjr8US1GYOCFovGc8IrWu/aiNMO9rZxytdPOVinygMUA6vpUyn4V4uaCGWSnyO57exMNZqAEW5
 0wmgijNBnVlpXTjjLLmfEeizWd9GsKMsjzMnQ
X-Gm-Gg: ASbGncuw9FIYoVW4lBQASGvajcJBTd4eml44EZADIq2P9Hs+08NfmRTXVcBCIKlSSri
 x+LPdxlsovxZDlfG4x5NW/RGmGP02HjSbRs8gHxqMxhhDyV7H2grfQnWnnOXcX/8tsmWQOpBOWX
 LoIl2B5QTAyblgMT94dbwiaoji37uRSMbHUXplCZ1vnQeD6lMsqsCJNCy/FFyb8RoL6SE7kBXfC
 qnK3M2FC8k6nGfIULRnPqfX+rMcnI8L5+/+pYwEku7UpNk0HA65l197xoeH37l4E6LopJSbpcfI
 KkB/+784km8Wle1UHFX7coPqkAay9DczpVfpd2U=
X-Google-Smtp-Source: AGHT+IHZXV5dSMMB2CKsLqzMSFjGs2i61DN/x8IwN4FX6klumRI376k18IdyBEUqjGafBX+xPKjTsvcozSkM0QtDSe0=
X-Received: by 2002:a53:c40e:0:b0:641:f5bc:68da with SMTP id
 956f58d0204a3-64302aef1edmr16581312d50.71.1764312568606; Thu, 27 Nov 2025
 22:49:28 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?15PXoNeZ15DXnCDXodeZ16DXmQ==?= <danielsinai0808@gmail.com>
Date: Fri, 28 Nov 2025 06:49:17 +0000
X-Gm-Features: AWmQ_bnfxJPUkuItX-XcLal27oR6FCB9D4u0N6CU8X5FTeK4m-zLJgGY3tr4QHc
Message-ID: <CADusC6XGSRY8snhf32xY8eT_P2PGp72Ne=-C3TOC=0CqkeKNVA@mail.gmail.com>
Subject: Question about the GTDRIVER_MAILBOX_DATA0 register in Gen 12.0 (Tiger
 Lake)
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000ecb3da0644a2075e"
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

--000000000000ecb3da0644a2075e
Content-Type: text/plain; charset="UTF-8"

I cannot seem to find the definition and/or the address of the-
GTDRIVER_MAILBOX_DATA0 register in the PRM, this is true with the latest
version of the PRM for that generation.
I've used multiple search tools including the advanced search in Adobe
acrobat reader and the recoll program.
Judging by the definitions for 'GTDRIVER_MAILBOX_DATA1',
and 'GTDRIVER_MAILBOX_INTERFACE', there seems to be a 4 byte gap
between them where the register could be.
I also looked in the Linux kernel (specifically, I found definitions:
'GEN6_PCODE_DATA' and 'GEN6_PCODE_DATA1' in i915_regs.h under-
/drivers/gpu/drm/i915), it seems to also hint at the register being there.

However, because this is my first time doing anything like this,
I wanted to make sure, Is this actually where the register is located?
If it's located somewhere else, where is it?

Thank you very much for your time and effort.

--000000000000ecb3da0644a2075e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl">I cannot seem to find the definition and/or the address of=
 the-<br>GTDRIVER_MAILBOX_DATA0 register in the PRM, this is true with the =
latest<br>version of the PRM for that generation.<br>I&#39;ve used multiple=
 search tools including the advanced search in Adobe<br>acrobat reader and =
the recoll program.<br>Judging=C2=A0by the definitions for &#39;GTDRIVER_MA=
ILBOX_DATA1&#39;,<br>and &#39;GTDRIVER_MAILBOX_INTERFACE&#39;, there seems =
to be a 4 byte gap<br>between them where the register could be.<br>I also l=
ooked in the Linux kernel (specifically, I found definitions:<br>&#39;GEN6_=
PCODE_DATA&#39; and &#39;GEN6_PCODE_DATA1&#39; in i915_regs.h under-<br>/dr=
ivers/gpu/drm/i915), it seems to also hint at the register being there.<br>=
<br>However, because this is my first time doing anything like this,<br>I w=
anted to make sure, Is this actually where the register is located?<br>If i=
t&#39;s located somewhere else, where is it?<br><br>Thank you very much for=
 your time and effort.</div>

--000000000000ecb3da0644a2075e--
