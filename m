Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A2331B4FA
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Feb 2021 06:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490136E073;
	Mon, 15 Feb 2021 05:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 011B56E073
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Feb 2021 05:14:47 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id f1so8371294lfu.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Feb 2021 21:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=rTdi8e+JPAaBtMSfPqPaxTbLmbqnfHRiNDGBerHQh9Q=;
 b=RKohcov7btamZw389Qq5DgRX/6Lkl1qk6v46KP05uy2uHgDRbOC+lEN5ECS4bfWphB
 13IefPGCE9O9CVTpQ2PFog3uQ7vq2SlfqUt0qSSP7QH5B9x8R8PNwjiKW3BLQ5D4scNt
 96SEyUDRlz4XwWSzFCF3OUxjC6eKIh0gEFJIEXKEI/4vv5uLllFGYREwqNnQQL57l49a
 MX9Z/+MBhum8twjI0S3RWm3R1p+hTkn6QQR6FKGBvO1NesjdCZXZ/NgWLBVa0P1KniMx
 15In24HM/YEeysruwf3UVb9MVyywm5aPncXy+Q3NX+WPY2xNaJu7v0l+OZJehQhKaJLw
 tJHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rTdi8e+JPAaBtMSfPqPaxTbLmbqnfHRiNDGBerHQh9Q=;
 b=GmhkXVeuPRm47PwomYWyoRWesz7Q1UmxAVYISinjk2pI2WMspqArup/P0oxuycui2W
 KfF795v/UtZs4u43gClqdIfIIs0okYkWkWiB4B7uJWnMHx9rjAaEm5J/+YnMePw3xuY6
 KPeFqHe3tqcWwrQu4U1zYzFjThFj8uuINB/MwqB+6nCPCInOkjgr0UWN1AOaQvrSC2bQ
 oA1uPlDhH2ux4jGaBct1o2MRheSfS/Jj9fvWVW5p2UIvasyJxSx5jZgYJQugdSXGhJuU
 HURWF4qVjdAKdJDT16eK6e3x3XoqmKr08CqkwSgaUv/cI6+2IkOWZSslNamUvgPxjGd2
 O+HQ==
X-Gm-Message-State: AOAM532jHILPRA7392OV1ZIej8/45bMktmcjdQPFYZoK2gJi271QUqMq
 XE/pFs10zQoi6RVzkSBedVe4U3vVHX7ep3BPogAjgthTirY=
X-Google-Smtp-Source: ABdhPJzt+AWNXazkkq42O63DKFS1/U+FH85rxyN0J3otJvPg6wjuc6kDiVgmNZ6xSG+MnyXCT6ifWcUuoya+g/Utz08=
X-Received: by 2002:ac2:5f0b:: with SMTP id 11mr7616375lfq.578.1613366086283; 
 Sun, 14 Feb 2021 21:14:46 -0800 (PST)
MIME-Version: 1.0
From: Arun Pravin <arunpravin@gmail.com>
Date: Mon, 15 Feb 2021 10:44:10 +0530
Message-ID: <CAJ2hna7A6Eqk7DNUMm7-q9Y11uFR1bYivajgZYsxVBym09vi9w@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] vram management
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
Content-Type: multipart/mixed; boundary="===============1365102321=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1365102321==
Content-Type: multipart/alternative; boundary="00000000000077344c05bb59102b"

--00000000000077344c05bb59102b
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a question on discrete card memory management, how Intel manages the
VRAM memory, Intel gfx driver uses TTM and DRM MM framework for the
discrete card vram memory management?

Thanks,
Arun

--00000000000077344c05bb59102b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have a question=C2=A0on discrete =
card memory management, how Intel manages the VRAM memory, Intel gfx driver=
 uses TTM and DRM MM framework for the discrete card vram memory management=
?</div><div><br></div><div>Thanks,</div><div>Arun</div></div>

--00000000000077344c05bb59102b--

--===============1365102321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1365102321==--
