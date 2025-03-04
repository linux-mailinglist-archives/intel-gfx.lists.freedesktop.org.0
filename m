Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D81AA4E4B8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E8810E640;
	Tue,  4 Mar 2025 16:02:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="rZBAm30o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EEBA10E62D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104126; x=1741708926; i=info@metux.net;
 bh=nb2RJHdrTPEX8LgXovvHO6bnzkmbFSVoGcisLUP+Vjk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=rZBAm30o0iyKd1t0BTa3ZsTBnh4X9QfmT+3jCxdCJ3ULDuu9yBqDpcS+RXp4s8U9
 aPV+o3h14XUxfLKGySvRJZ7UQe3i2VOiIpBve3Xb6C4xWcJgYawa/CaMRqEOJSphw
 qbwrOIqFvvuH/buH6zVNHxtM2t2kCbg567mXnOvC7JRSc2xjSBFi31FOlUtBsalrU
 WHAdEhZvC8oCd16NtpNk8ELxp60S+AmrygQEYYtbUHZWj6zw08MQ8ZgRwKwXK9x8w
 ++RozV5VP4iVkFP++HOoFYo7scdBa90K7VIqYgEfeseln1usPGuPwOBPD6j9wdxmA
 AsKpQirsik+NSUQSUg==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MLiPA-1tXxmS1CbY-00Ubvl; Tue, 04 Mar 2025 16:56:32 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 08/16] stop using obsolete xf86BlockSIGIO() and
 xf86UnblockSIGIO()
Date: Tue,  4 Mar 2025 16:58:01 +0100
Message-Id: <20250304155809.30399-9-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:ZcqVmi8V5dnfLC3aRy270i3Wh90HR4/hiIHXVdjujM+KbUoOxXC
 vGJc1M7GHEKHClu7WDuIWxga/Wtiz+Bz5QS3RWVAcUECEmZEEBBjwKWlHMYkEbDgiHa4XBx
 BiXV7Zp8h2MJpu/YAqzUNxpcz24CILohU/vAMD7Y1TvDxN6eloKvegYluhdOgtwU7Fei85+
 Rmqrkqjrv9ZC2uEQ67rhg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:iHorvyMW6BM=;H/f9Q+5bwDyJvG/2R+MyxJutVYx
 7W55gMY1QrAe51KjX0lhtijE4rxHuEr7bse2N1AJ52QCN1d/5D0QG9U5V5DlplnNBtaQJQZfZ
 W6iqXQ0SxsvzXYnNKZqk2oIVaTnGwIsazE0CKinXI3Vf9BqSXnWmVXjTIGe8JyCnN3FEz1klD
 Yh7SRl3A1FIuVeITPy3kAFsKW30WLst7Jr/g+rbCBbF3w3tt0pFNT2+3v1uNpCkZ8WxBgN/bM
 3kkfSBzhyQmTTwt8K2mcPtiMqzm6/SY64SYj+YBVkvM1+Rxop+/Np/ZtOw+bRgflkPGhBLn2j
 Xi3ZWJJl5K+uelG8RC6MyYeZeiAFCT6rCgVeC7obLc+kqCh8B1maTBdWYkKGN8vQ/lulf3V9X
 CLrxrTAYuuCxcKW25dZo73OuJIOmxkTCu0IlKOXohsP2os9qkQe9ghRKTVy5tUUTh9yJYWIhr
 OaLya0woVicGQnkuiEW6HSlzRbIIoT7F7sOdqp5EAaXYGYSHs2iXyIXCuvvlj6aiP9epCl4z/
 jnADGtn+YQW+m3QzBOooCfKVeMN1gd7bY63JPFL/vA8wdrsRwe/SEMhLxGdo5ndl1IS3vhLQ3
 +LwSyaEdqCpCmGTyawcH8YuL5MHio/6/L8LP7W+T/4WJHoThYisSznuArx7UmnqhxWr8jna7R
 NUkr5ajrzwe9AjJv3wCzSvh/ejHNKpQnEnrg+//iVLLB1I1gquHsaPWsZB3of7xp0w0MW3Ltc
 Fhjx8c93U9kk0YKq03fpbwqiQqzGNUQGWFIWLb/N016O5bCqlO/XOBYhL8VuIOSfutlQp+663
 g5gg627fbHgJMyh+BSxazljDQVU+DUMTwwUy3//WX5T+P/CgdEnbPgtDzxlTvbgKu9s5zLI1A
 IRBIvHZMaaPVat6EF2H8AFVg9LwK4NuJnagEiCPJx0/PdYdevNnFC83PzdNr9hQceVEXBN820
 pLs44tEbjQ5ouwV4o7k45U7cxYMWYo5URUQimqSD6yMGEAJ3AY0PHE04l1kHziv8wPNJjcJCz
 /OdT7NaBOwdj9b/L3FQEWfoX9QjZfvIzjIA2/GxU2/U6zLLIESOhTX7o1CFl3HZ/IlxRMWtOy
 B5OT0LXkSojNNBG66+9ePKuBsX7jC/2jaRAvYCvKidX524UJhAraVxM/4LoLdeSqgZW1GLHx4
 vhlosV8bmkGlwq28ZnyTQJGIaSikGfYsDe0xFQAnSaHT9PjdJ+h+29JEil3AWcql/Vao87L19
 lqxa8ndpDOOD4EaMBR7HwEmi7rOxe5BzNbAXVtRvlt1zyxxfbe3i2s2TP/xXMrL+8QwOzKa0e
 5+poYLdxZBgZ3d+QfNhXBtF5Smg7DVn7/D79AWWq/wV1RIKPZMJi4akTn1J67p1BTq47piL7V
 2Wkl5AADjzxPVQvw==
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
index d33a88af..d4adf34f 100644
=2D-- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -1161,11 +1161,12 @@ static inline void sigio_unblock(int was_blocked)
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
2.39.5

