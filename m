Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9959D19B75E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 23:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8BAF6E9A0;
	Wed,  1 Apr 2020 21:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95AC86E9A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 21:01:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20769869-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 22:01:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Apr 2020 22:01:02 +0100
Message-Id: <20200401210104.15907-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/gt: Only wait for GPU activity before
 unbinding a GGTT fence
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
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 25 ++++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h |  3 +++
 drivers/gpu/drm/i915/i915_vma.c              |  4 ++++
 3 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 225970f4a4ef..d527b11ddfb7 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -223,6 +223,11 @@ static void fence_write(struct i915_fence_reg *fence,
 	fence->dirty = false;
 }
 
+static bool gpu_uses_fence_registers(struct i915_fence_reg *fence)
+{
+	return INTEL_GEN(fence_to_i915(fence)) < 4;
+}
+
 static int fence_update(struct i915_fence_reg *fence,
 			struct i915_vma *vma)
 {
@@ -239,15 +244,18 @@ static int fence_update(struct i915_fence_reg *fence,
 		if (!i915_vma_is_map_and_fenceable(vma))
 			return -EINVAL;
 
-		ret = i915_vma_sync(vma);
-		if (ret)
-			return ret;
+		if (gpu_uses_fence_registers(fence)) {
+			/* implicit 'unfenced' GPU blits */
+			ret = i915_vma_sync(vma);
+			if (ret)
+				return ret;
+		}
 	}
 
 	old = xchg(&fence->vma, NULL);
 	if (old) {
 		/* XXX Ideally we would move the waiting to outside the mutex */
-		ret = i915_vma_sync(old);
+		ret = i915_active_wait(&fence->active);
 		if (ret) {
 			fence->vma = old;
 			return ret;
@@ -869,6 +877,7 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
 	for (i = 0; i < num_fences; i++) {
 		struct i915_fence_reg *fence = &ggtt->fence_regs[i];
 
+		i915_active_init(&fence->active, NULL, NULL);
 		fence->ggtt = ggtt;
 		fence->id = i;
 		list_add_tail(&fence->link, &ggtt->fence_list);
@@ -880,6 +889,14 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
 
 void intel_ggtt_fini_fences(struct i915_ggtt *ggtt)
 {
+	int i;
+
+	for (i = 0; i < ggtt->num_fences; i++) {
+		struct i915_fence_reg *fence = &ggtt->fence_regs[i];
+
+		i915_active_fini(&fence->active);
+	}
+
 	kfree(ggtt->fence_regs);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
index 9850f6a85d2a..08c6bb667581 100644
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
index 18069df2a9e5..616ca5a7c875 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1232,6 +1232,10 @@ int i915_vma_move_to_active(struct i915_vma *vma,
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
