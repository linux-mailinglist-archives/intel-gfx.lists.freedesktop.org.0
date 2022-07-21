Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A3857D452
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 21:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743EA113C0D;
	Thu, 21 Jul 2022 19:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 309 seconds by postgrey-1.36 at gabe;
 Thu, 21 Jul 2022 19:42:48 UTC
Received: from smtp2.us.opalstack.com (smtp2.us.opalstack.com [23.106.47.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA1D11A335
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 19:42:48 +0000 (UTC)
Received: from [128.100.127.119] (unknown [128.100.127.119])
 by smtp2.us.opalstack.com (Postfix) with ESMTPSA id 963FC9E9DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 19:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jeffreyknockel.com;
 s=dkim; t=1658432258;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ruPiFWUAaNCOf25z2gOwWnK4Jzkx7VK0oV3swI0LUMo=;
 b=PpEdEC3tpC0LWfxeDaF83ksCExGqDB5p66H7GNJMp2SD+n3AcxbSpsnOYDMYeXWOfxuR56
 HkoLMWvO9Keg5+/PySiVa/4CSx93cLstrT32fYM6B5R5hTgaOLy9KG2dswAJd6ARlnvyds
 j14qGEmGOJQRq6FTQimBfjJdM1nIMOU=
Message-ID: <f865400b-8065-2bb4-0896-2abf3b7dd7b0@jeffreyknockel.com>
Date: Thu, 21 Jul 2022 15:37:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
To: intel-gfx@lists.freedesktop.org
Content-Language: en-US
From: Jeffrey Knockel <jeff@jeffreyknockel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.15
Subject: [Intel-gfx] [PATCH xf86-video-intel] sna: Initialize sna pointer
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

From: Jeffrey Knockel <jeff@jeffreyknockel.com>

Initialize the sna pointer if it hasn't already been initialized.

Otherwise, we have the following segfault:

0x00007f24b993ef04 in list_add (entry=0x564a7a1380f8, head=0x7ffd01899aa8) at ../../src/intel_list.h:161
0x00007f24b993f0a0 in list_move (list=0x564a7a1380f8, head=0x7ffd01899aa8) at ../../src/intel_list.h:248
0x00007f24b99524c9 in sna_drawable_use_bo (drawable=0x564a79ef0530, flags=0, box=0x7ffd01853c80, damage=0x7ffd01853ca0)
at sna_accel.c:3965
0x00007f24b996f21b in sna_poly_segment (drawable=0x564a79ef0530, gc=0x564a7a0c44f0, n=146, seg=0x564a7a582ff4)
at sna_accel.c:10858
0x0000564a788607bf in damagePolySegment (pDrawable=0x564a79ef0530, pGC=0x564a7a0c44f0, nSeg=146, pSeg=0x564a7a582ff4)
at ../miext/damage/damage.c:1023
0x0000564a787e3577 in ProcPolySegment (client=0x564a7a15bc10) at ../dix/dispatch.c:1909
0x0000564a787df4be in Dispatch () at ../dix/dispatch.c:551
0x0000564a787eeb2b in dix_main (argc=11, argv=0x7ffd01854128, envp=0x7ffd01854188) at ../dix/main.c:272
0x0000564a789e05cd in main (argc=11, argv=0x7ffd01854128, envp=0x7ffd01854188) at ../dix/stubmain.c:34

Signed-off-by: Jeffrey Knockel <jeff@jeffreyknockel.com>
---
 src/sna/sna_accel.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/src/sna/sna_accel.c b/src/sna/sna_accel.c
index 89b82afa..72a84833 100644
--- a/src/sna/sna_accel.c
+++ b/src/sna/sna_accel.c
@@ -3632,7 +3632,7 @@ sna_drawable_use_bo(DrawablePtr drawable, unsigned flags, const BoxRec *box,
 {
 	PixmapPtr pixmap = get_drawable_pixmap(drawable);
 	struct sna_pixmap *priv = sna_pixmap(pixmap);
-	struct sna *sna;
+	struct sna *sna = NULL;
 	RegionRec region;
 	int16_t dx, dy;
 	int ret;
@@ -3962,6 +3962,8 @@ use_gpu_bo:
 
 	if (priv->shm) {
 		assert(!priv->flush);
+		if (sna == NULL)
+			sna = to_sna_from_pixmap(pixmap);
 		list_move(&priv->flush_list, &sna->flush_pixmaps);
 	}
 
-- 
2.34.1
