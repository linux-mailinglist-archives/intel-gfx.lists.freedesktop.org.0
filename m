Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB65F52B9ED
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 14:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5268010F404;
	Wed, 18 May 2022 12:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEDBF10F404
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 12:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652877477; x=1684413477;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dA2Ybv49GIlxRbNGiFFt+QEwJl7kBj6I4mgEoMlYvXk=;
 b=hOGiPywtw/GDTervDMxR04qQFVCvS3AQvIXS3wv/5zB7phVgDTkllk+8
 y+coLu7Kw42tQkR+gufBq8GdPH2x2rkTIDAMmtGh39UEsPrGrL2xxZgHz
 NQu+y5HfLqA10ngZSuHAB27KnM1NpgFYn7GAau6Z+R38U4fl3Y2vVSbY1
 ZGP+4dZR7ppQXOplzNGX11QVzJ3QZzo1lrvFTwJsGLOtWsWe3mH5/ZgPh
 YeLX8A8n2h57BQGa9egvJjkRJ+H7UbIl4vo72ZmCx4Nqv1PzXhlQRdGRc
 XZQznTyKTgC8MRgenxEalQOA7I6j30hrJPNKyqaHzB+oDF6R4Cni0HcfI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="269231812"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="269231812"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 05:37:57 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="742303857"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 05:37:55 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 14:37:36 +0200
Message-Id: <20220518123736.16847-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Individualize fences before adding to
 dma_resv obj
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
Cc: thomas.hellstrom@intel.com, matthew.auld@intel.com,
 chris.p.wilson@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

_i915_vma_move_to_active() can receive > 1 fences for
multiple batch buffers submission. Because dma_resv_add_fence()
can only accept one fence at a time, change _i915_vma_move_to_active()
to be aware of multiple fences so that it can add individual
fences to the dma resv object.

v3: dma_resv_reserve_fences is not cumulative so pass num_fences.
v2: make sure to reserve enough fence slots before adding.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 47 +++++++++++++++++++--------------
 1 file changed, 27 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 4f6db539571a..4a5222fc3a4a 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -23,6 +23,7 @@
  */
 
 #include <linux/sched/mm.h>
+#include <linux/dma-fence-array.h>
 #include <drm/drm_gem.h>
 
 #include "display/intel_frontbuffer.h"
@@ -1823,6 +1824,20 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 	if (unlikely(err))
 		return err;
 
+	/* Reserve fences slot early to prevent an allocation after preparing
+	 * the workload and associating fences with dma_resv.
+	 */
+	if (fence && !(flags & __EXEC_OBJECT_NO_RESERVE)) {
+		struct dma_fence *curr;
+		int idx;
+
+		dma_fence_array_for_each(curr, idx, fence)
+			;
+		err = dma_resv_reserve_fences(vma->obj->base.resv, idx);
+		if (unlikely(err))
+			return err;
+	}
+
 	if (flags & EXEC_OBJECT_WRITE) {
 		struct intel_frontbuffer *front;
 
@@ -1832,31 +1847,23 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 				i915_active_add_request(&front->write, rq);
 			intel_frontbuffer_put(front);
 		}
+	}
 
-		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
-			err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
-			if (unlikely(err))
-				return err;
-		}
+	if (fence) {
+		struct dma_fence *curr;
+		enum dma_resv_usage usage;
+		int idx;
 
-		if (fence) {
-			dma_resv_add_fence(vma->obj->base.resv, fence,
-					   DMA_RESV_USAGE_WRITE);
+		obj->read_domains = 0;
+		if (flags & EXEC_OBJECT_WRITE) {
+			usage = DMA_RESV_USAGE_WRITE;
 			obj->write_domain = I915_GEM_DOMAIN_RENDER;
-			obj->read_domains = 0;
-		}
-	} else {
-		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
-			err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
-			if (unlikely(err))
-				return err;
+		} else {
+			usage = DMA_RESV_USAGE_READ;
 		}
 
-		if (fence) {
-			dma_resv_add_fence(vma->obj->base.resv, fence,
-					   DMA_RESV_USAGE_READ);
-			obj->write_domain = 0;
-		}
+		dma_fence_array_for_each(curr, idx, fence)
+			dma_resv_add_fence(vma->obj->base.resv, curr, usage);
 	}
 
 	if (flags & EXEC_OBJECT_NEEDS_FENCE && vma->fence)
-- 
2.35.1

