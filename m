Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A73C4899CF
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:24:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F1511B2B3;
	Mon, 10 Jan 2022 13:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4321.protonmail.ch (mail-4321.protonmail.ch [185.70.43.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBFAD11A6C2
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 05:17:13 +0000 (UTC)
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com
 [188.165.51.139])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-4321.protonmail.ch (Postfix) with ESMTPS id 4JW7Vs5qjwz4x0F0
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 05:12:05 +0000 (UTC)
Authentication-Results: mail-4321.protonmail.ch;
 dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com
 header.b="QGEtXTxe"
Date: Sat, 08 Jan 2022 05:11:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail2; t=1641618721;
 bh=/j2Vx1bVQJXPbpvBXRiaCl4gIC+8JojGiGdJO7cqyB0=;
 h=Date:To:From:Cc:Reply-To:Subject:Message-ID:From:To:Cc;
 b=QGEtXTxetiOWU/1q7fkqclnSXkd95iuiWFTPSHAVarKQCDtsBuqp2BRAvStu5HQED
 w5nW5A6R5alBGRmzKFBef9WImrZ3eehWK8eVdsqOVsshFTpFHixaewrqf+FWH54+UI
 P1dDg8PZ/NMmfhXfmBTT1O4Z3yvM2HgEkBW+Fo7PmUjW4bkHolRZGTpAToRpwAiaRq
 07E41t4DZV10MBPP4kznsdngux7Hppcvhukg2KmH3k1wNuV/iQWzAq6g+2cA6+b2oI
 p+lJPgd23AUjgnPirTArbYkpiGqMR3nxpt3ldwYYO4ZBAaSOUZJXnajhsqFNz9ZWvW
 U9VJJpW9HwoQw==
To: jani.nikula@linux.intel.com
From: Orlando Chamberlain <redecorating@protonmail.com>
Message-ID: <20220108050812.6303-1-redecorating@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Discard large BIOS framebuffers
 causing display corruption.
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
Reply-To: Orlando Chamberlain <redecorating@protonmail.com>
Cc: Aun-Ali Zaidi <admin@kodeit.net>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, ashisharora.linux@outlook.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I haven't observed "display corruption", but on my MacBookPro16,1 the botto=
m
and right edges of the TTY are not on the screen, so a few lines of text
cannot be seen.

This also occurs on the internal displays of all (as far as I know) other
2018-2020 Intel Macbooks when using the Intel GPU (The 15" and 16" ones
also have an AMDGPU, but this issue occurs when they have the Intel GPU
set as the boot gpu).

There's a similar patch that hasn't been sent upstream that people with the=
se
Macbooks have been using:
https://github.com/aunali1/linux-mbp-arch/blob/master/7001-drm-i915-fbdev-D=
iscard-BIOS-framebuffers-exceeding-h.patch

Cc: Aun-Ali Zaidi <admin@kodeit.net>

--
Thanks,
Orlando

