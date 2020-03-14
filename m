Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F331855B2
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 13:21:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9347892D3;
	Sat, 14 Mar 2020 12:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D0D892D3
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 12:21:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20559231-1500050 
 for multiple; Sat, 14 Mar 2020 12:20:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Mar 2020 12:20:57 +0000
Message-Id: <20200314122058.21472-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200314122058.21472-1-chris@chris-wilson.co.uk>
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/gt: Only wait for GPU activity
 before unbinding a GGTT fence
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

Only GPU activity via the GGTT fence is asynchronous, we know that we
control the CPU access directly, so we only need to wait for the GPU to
stop using the fence before we relinquish it.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 12 ++++++++----
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h |  3 +++
 drivers/gpu/drm/i915/i915_vma.c              |  4 ++++
 3 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 51984cee18b3..f1ded8fbda3a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -235,9 +235,12 @@ static int fence_update(struct i915_fence_reg *fence,
 		GEM_BUG_ON(!i915_gem_object_get_stride(vma->obj) ||
 			   !i915_gem_object_get_tiling(vma->obj));
 
-		ret = i915_vma_sync(vma);
-		if (ret)
-			return ret;
+		if (INTEL_GEN(fence_to_i915(fence)) < 4) {
+			/* implicit 'unfenced' GPU blits */
+			ret = i915_vma_sync(vma);
+			if (ret)
+				return ret;
+		}
 
 		fence->stride = i915_gem_object_get_stride(vma->obj);
 		fence->tiling = i915_gem_object_get_tiling(vma->obj);
@@ -247,7 +250,7 @@ static int fence_update(struct i915_fence_reg *fence,
 	old = xchg(&fence->vma, NULL);
 	if (old) {
 		/* XXX Ideally we would move the waiting to outside the mutex */
-		ret = i915_vma_sync(old);
+		ret = i915_active_wait(&fence->active);
 		if (ret) {
 			fence->vma = old;
 			return ret;
@@ -869,6 +872,7 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
 	for (i = 0; i < num_fences; i++) {
 		struct i915_fence_reg *fence = &ggtt->fence_regs[i];
 
+		i915_active_init(&fence->active, NULL, NULL);
 		fence->ggtt = ggtt;
 		fence->id = i;
 		list_add_tail(&fence->link, &ggtt->fence_list);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
index ad3acc9b7f37..1731cd039bb9 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
@@ -28,6 +28,8 @@
 #include <linux/list.h>
 #include <linux/types.h>
 
+#include "i915_active.h"
+
 struct drm_i915_gem_object;
 struct i915_ggtt;
 struct i915_vma;
@@ -41,6 +43,7 @@ struct i915_fence_reg {
 	struct i915_ggtt *ggtt;
 	struct i915_vma *vma;
 	atomic_t pin_count;
+	struct i915_active active;
 	int id;
 	/**
 	 * Whether the tiling parameters for the currently
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 5b3efb43a8ef..aedbd056fd45 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1214,6 +1214,10 @@ int i915_vma_move_to_active(struct i915_vma *vma,
 		dma_resv_add_shared_fence(vma->resv, &rq->fence);
 		obj->write_domain = 0;
 	}
+
+	if (flags & EXEC_OBJECT_NEEDS_FENCE && vma->fence)
+		i915_active_add_request(&vma->fence->active, rq);
+
 	obj->read_domains |= I915_GEM_GPU_DOMAINS;
 	obj->mm.dirty = true;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
