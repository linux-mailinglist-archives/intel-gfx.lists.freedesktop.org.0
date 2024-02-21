Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D95085E6C9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 19:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E54210E7C2;
	Wed, 21 Feb 2024 18:56:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="Yrvh2oGh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EFF310E7BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 18:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=metux.net;
 s=s1-ionos; t=1708541751; x=1709146551; i=info@metux.net;
 bh=WTjtrTRv84sVkHM3fx8hzhWWTjuWPVZtlrC8BeCEy0A=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=Yrvh2oGhXq5Xa0vx4S31YpuDmyAafa75w1UZZMV/F6ijNSPdFWzH+Gvp83svfcSH
 V9otX93P5OwMcCVk8RDpwCa9oqkv5F1sVS2BLv2M9ifJCxZYVM9OpCeO3wZhbJNer
 7YSZVg8Xp9wqZAQILi6CAowPGacfc/zF+c2232AyT1SQrrzFC4DCvksnUs+IjAssF
 p9US4aKSHX3QpAHGcZxNCIOWGkujkkyYYOqve0aP4cQhxa6ILlwxc2cUOD1SyNZKW
 OoiBOf87nu1doNzYqmnaHJ2qOtebX+b5KgwgL2Hr+wpVgg+kjIYVZZ1CD94XaaBhX
 j7X0+rcxchpqtl+mIw==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from orion.localdomain ([77.4.30.125]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MjBNV-1qyaqw1ZP3-00f8vA for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb
 2024 19:55:51 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 5/6] stop using obsolete xf86BlockSIGIO() and
 xf86UnblockSIGIO()
Date: Wed, 21 Feb 2024 19:55:49 +0100
Message-Id: <20240221185550.11943-5-info@metux.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221185550.11943-1-info@metux.net>
References: <20240221185550.11943-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:T0m5L//eYE4rv2LyUguhDpK6g83ZKfvvBWsVaB9kqSw4C9diOwQ
 vHoZsPrWqbCyLd2WOlPVXI1LpVznHA0g/0v3kqW4nm0krYn67y9WBWPDRmxUqnYYuEZlRUJ
 AjX+BA2gfY78ro2WzNdmOybTazQmBlgQJF4GByMEOJ8aylSnqvcLJonk06KU8QA88Y1877z
 wEWOt5BBvhv2rFuJYpffw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:9+xr3CuLfKw=;EQq4jCo9akjmlu0WI+pnqDCdt8S
 4ws5MuFMU+Stx11/glEFR+yOKT5r6xBoBXmSvR5lMT/D/Sn0LiwCR4EntX7DAPCy9M5c8SoWS
 1BNRmnQhRu8diakI1s6KbMNf+hZp4J/pAtA1CrPpEthzEVgISa18xVooQk0eDkASkmW2zRAuj
 BRPeSc6slEvf1j9MCI0b2xZIm4mKJFQiTl36LjtA+VRWz16Zmd0LboL8+DsrF01h+Z5AFZCjs
 9D5viO9mVK2cb1AzJ8rK20MMhS4A/JUXhlzrQkoFXuYrEparmuvRd4LNIqjymZ73S2w1atQ4U
 j2MKgiXkozo3NEa9Ll0SvDKocEIv4ugKxae3EaDlxC/reKdy4t1aCiYXL9gMhUQd4VKynGJN4
 Bgpa818sA395cC7tmqsAhz6t33pQsXE58lIZf37mqz2PlkRMChkV8FMkYYolRZX4mZ49RLypo
 0dRGD62pUdPBSH4hdvHShIWhZruuT1bwEnPlnGRbm2GZodxxo0nZ8HNtu0XSPmmRp4nb1l+NB
 xcN3e0oUJXMrRUBHtBL+MtMnFVgA8rSf+QW7SKwYKXZE12yGC4jtwYG4H8hqhjmfP5A9V/ZSJ
 eU0yLCWzhvu7k6I5tUszc2nCTWxdAMERUprHWYdQ51iJlvnLgG/wW/BD1rUiyxpReIOT3nsQs
 nRz/CF4ESmFigjoysdqb5tJHh4gcGd5RACc+qHOmd6ywBl7mMmEx93JC6wxZXi1ZUkkBIqsb7
 hG1/7p00AwQscJLWecc831TJSZYSM0H+EwPGLfPyKFiTIhgYJr8nh4=
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

These are just wrappers for calling input_lock()/input_unlock() and marked
deprecated for quite a while now.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/sna/sna_display.c  | 5 +++--
 src/uxa/intel_driver.c | 4 ++--
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
index 3ff3d2fe..460fb1ca 100644
=2D-- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -1156,11 +1156,12 @@ static inline void sigio_unblock(int was_blocked)
 #include <xf86_OSproc.h>
 static inline int sigio_block(void)
 {
-	return xf86BlockSIGIO();
+	input_lock();
+	return 0;
 }
 static inline void sigio_unblock(int was_blocked)
 {
-	xf86UnblockSIGIO(was_blocked);
+	input_unlock();
 }
 #endif

diff --git a/src/uxa/intel_driver.c b/src/uxa/intel_driver.c
index 9c3fe85f..79105b89 100644
=2D-- a/src/uxa/intel_driver.c
+++ b/src/uxa/intel_driver.c
@@ -641,10 +641,10 @@ redisplay_dirty(ScreenPtr screen, PixmapDirtyUpdateP=
tr dirty)
         intel_flush(intel);
 	if (!intel->has_prime_vmap_flush) {
 		drm_intel_bo *bo =3D intel_uxa_get_pixmap_bo(PixmapDirtyPrimary(dirty))=
;
-		was_blocked =3D xf86BlockSIGIO();
+		input_lock();
 		drm_intel_bo_map(bo, FALSE);
 		drm_intel_bo_unmap(bo);
-		xf86UnblockSIGIO(was_blocked);
+		input_unlock();
 	}

 	DamageRegionProcessPending(&PixmapDirtyDst(dirty)->drawable);
=2D-
2.39.2

