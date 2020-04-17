Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C6B1ADEF4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 16:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D05F6E978;
	Fri, 17 Apr 2020 14:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA746E978
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 14:05:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20933938-1500050 
 for multiple; Fri, 17 Apr 2020 15:05:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 15:05:31 +0100
Message-Id: <20200417140531.3178704-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <EoydNgW-S7xa7n3jQG150edg3gCUP2etA@mail.gmail.com>
References: <EoydNgW-S7xa7n3jQG150edg3gCUP2etA@mail.gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel] sna: Forcibly relinquish the
 GPU bo cache of a SHM pixmap on flushing
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Before we indicate return control of the SHM Pixmap to the client (that
is prior to the next XReply), we ensure that the original SHM buffer is
uptodate with any changes made on the GPU. We must flush the GPU writes
back to the CPU and so not allow ourselves to keep the dirty cache of
the CPU bo.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Alexei Podtelezhnikov <apodtele@gmail.com>
---
 src/sna/sna_accel.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/src/sna/sna_accel.c b/src/sna/sna_accel.c
index edbfe5a4a..6e14cf7b4 100644
--- a/src/sna/sna_accel.c
+++ b/src/sna/sna_accel.c
@@ -2119,6 +2119,11 @@ static inline bool operate_inplace(struct sna_pixmap *priv, unsigned flags)
 	if (!USE_INPLACE)
 		return false;
 
+	if (flags & __MOVE_FORCE) {
+		DBG(("%s: no, inplace operation denied by force\n", __FUNCTION__));
+		return false;
+	}
+
 	if ((flags & MOVE_INPLACE_HINT) == 0) {
 		DBG(("%s: no, inplace operation not suitable\n", __FUNCTION__));
 		return false;
@@ -2327,7 +2332,7 @@ skip_inplace_map:
 
 	sna_pixmap_unmap(pixmap, priv);
 
-	if (USE_INPLACE &&
+	if (USE_INPLACE && !(flags & __MOVE_FORCE) &&
 	    (flags & MOVE_WRITE ? (void *)priv->gpu_bo : (void *)priv->gpu_damage) && priv->cpu_damage == NULL &&
 	    priv->gpu_bo->tiling == I915_TILING_NONE &&
 	    (flags & MOVE_READ || kgem_bo_can_map__cpu(&sna->kgem, priv->gpu_bo, flags & MOVE_WRITE)) &&
@@ -17409,7 +17414,10 @@ void sna_accel_flush(struct sna *sna)
 			     priv->pixmap->refcnt));
 			assert(!priv->flush);
 			ret = sna_pixmap_move_to_cpu(priv->pixmap,
-						     MOVE_READ | MOVE_WRITE);
+						     MOVE_READ |
+						     MOVE_WRITE |
+						     MOVE_WHOLE_HINT |
+						     __MOVE_FORCE);
 			assert(!ret || priv->gpu_bo == NULL);
 			if (priv->pixmap->refcnt == 0) {
 				sna_damage_destroy(&priv->cpu_damage);
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
