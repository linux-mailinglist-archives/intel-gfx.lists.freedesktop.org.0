Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A792D46E6
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 17:40:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C4066E1A4;
	Wed,  9 Dec 2020 16:40:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F53C6EA31
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 16:40:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23269945-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Dec 2020 16:40:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Dec 2020 16:40:06 +0000
Message-Id: <20201209164008.5487-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915: Remove livelock from "do_idle_maps"
 vtd w/a
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A call to wait for the GT to idle from inside the put_pages fallback is
prone to cause an uninterruptible livelock. As it does not provide
adequate serialisation with new requests, simply fallback to a trivial
sleep.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gem_gtt.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index c5ee1567f3d1..3ee2f682eff6 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -55,22 +55,17 @@ int i915_gem_gtt_prepare_pages(struct drm_i915_gem_object *obj,
 void i915_gem_gtt_finish_pages(struct drm_i915_gem_object *obj,
 			       struct sg_table *pages)
 {
-	struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
-	struct device *kdev = &dev_priv->drm.pdev->dev;
-	struct i915_ggtt *ggtt = &dev_priv->ggtt;
-
-	if (unlikely(ggtt->do_idle_maps)) {
-		/* XXX This does not prevent more requests being submitted! */
-		if (intel_gt_retire_requests_timeout(ggtt->vm.gt,
-						     -MAX_SCHEDULE_TIMEOUT)) {
-			drm_err(&dev_priv->drm,
-				"Failed to wait for idle; VT'd may hang.\n");
-			/* Wait a bit, in hopes it avoids the hang */
-			udelay(10);
-		}
-	}
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct i915_ggtt *ggtt = &i915->ggtt;
+
+	/* XXX This does not prevent more requests being submitted! */
+	if (unlikely(ggtt->do_idle_maps))
+		/* Wait a bit, in the hope it avoids the hang */
+		usleep_range(100, 250);
 
-	dma_unmap_sg(kdev, pages->sgl, pages->nents, PCI_DMA_BIDIRECTIONAL);
+	dma_unmap_sg(&i915->drm.pdev->dev,
+		     pages->sgl, pages->nents,
+		     PCI_DMA_BIDIRECTIONAL);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
