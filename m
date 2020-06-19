Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DBB201EBA
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jun 2020 01:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782A56ECDF;
	Fri, 19 Jun 2020 23:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A3B6ECDB
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 23:45:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21555520-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Jun 2020 00:45:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 20 Jun 2020 00:45:42 +0100
Message-Id: <20200619234543.17499-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gvt: Drop redundant
 prepare_write/pin_pages
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

Since gvt calls pin_map for the shadow batch buffer, this makes the
action of prepare_write [+pin_pages] redundant. We can write into the
obj->mm.mapping directory and the flush_map routine knows when it has to
flush the cpu cache afterwards.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c | 14 +-------
 drivers/gpu/drm/i915/gvt/scheduler.c  | 51 ++++++++-------------------
 drivers/gpu/drm/i915/gvt/scheduler.h  |  2 --
 3 files changed, 15 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 8b87f130f7f1..f1940939260a 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1904,19 +1904,10 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 		goto err_free_bb;
 	}
 
-	ret = i915_gem_object_prepare_write(bb->obj, &bb->clflush);
-	if (ret)
-		goto err_free_obj;
-
 	bb->va = i915_gem_object_pin_map(bb->obj, I915_MAP_WB);
 	if (IS_ERR(bb->va)) {
 		ret = PTR_ERR(bb->va);
-		goto err_finish_shmem_access;
-	}
-
-	if (bb->clflush & CLFLUSH_BEFORE) {
-		drm_clflush_virt_range(bb->va, bb->obj->base.size);
-		bb->clflush &= ~CLFLUSH_BEFORE;
+		goto err_free_obj;
 	}
 
 	ret = copy_gma_to_hva(s->vgpu, mm,
@@ -1935,7 +1926,6 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 	INIT_LIST_HEAD(&bb->list);
 	list_add(&bb->list, &s->workload->shadow_bb);
 
-	bb->accessing = true;
 	bb->bb_start_cmd_va = s->ip_va;
 
 	if ((s->buf_type == BATCH_BUFFER_INSTRUCTION) && (!s->is_ctx_wa))
@@ -1956,8 +1946,6 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 	return 0;
 err_unmap:
 	i915_gem_object_unpin_map(bb->obj);
-err_finish_shmem_access:
-	i915_gem_object_finish_access(bb->obj);
 err_free_obj:
 	i915_gem_object_put(bb->obj);
 err_free_bb:
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 8fc2ad4517e9..3c3b9842bbbd 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -509,26 +509,18 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 			bb->bb_start_cmd_va = workload->shadow_ring_buffer_va
 				+ bb->bb_offset;
 
-		if (bb->ppgtt) {
-			/* for non-priv bb, scan&shadow is only for
-			 * debugging purpose, so the content of shadow bb
-			 * is the same as original bb. Therefore,
-			 * here, rather than switch to shadow bb's gma
-			 * address, we directly use original batch buffer's
-			 * gma address, and send original bb to hardware
-			 * directly
-			 */
-			if (bb->clflush & CLFLUSH_AFTER) {
-				drm_clflush_virt_range(bb->va,
-						bb->obj->base.size);
-				bb->clflush &= ~CLFLUSH_AFTER;
-			}
-			i915_gem_object_finish_access(bb->obj);
-			bb->accessing = false;
-
-		} else {
+		/*
+		 * For non-priv bb, scan&shadow is only for
+		 * debugging purpose, so the content of shadow bb
+		 * is the same as original bb. Therefore,
+		 * here, rather than switch to shadow bb's gma
+		 * address, we directly use original batch buffer's
+		 * gma address, and send original bb to hardware
+		 * directly
+		 */
+		if (!bb->ppgtt) {
 			bb->vma = i915_gem_object_ggtt_pin(bb->obj,
-					NULL, 0, 0, 0);
+							   NULL, 0, 0, 0);
 			if (IS_ERR(bb->vma)) {
 				ret = PTR_ERR(bb->vma);
 				goto err;
@@ -539,27 +531,15 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 			if (gmadr_bytes == 8)
 				bb->bb_start_cmd_va[2] = 0;
 
-			/* No one is going to touch shadow bb from now on. */
-			if (bb->clflush & CLFLUSH_AFTER) {
-				drm_clflush_virt_range(bb->va,
-						bb->obj->base.size);
-				bb->clflush &= ~CLFLUSH_AFTER;
-			}
-
-			ret = i915_gem_object_set_to_gtt_domain(bb->obj,
-								false);
-			if (ret)
-				goto err;
-
 			ret = i915_vma_move_to_active(bb->vma,
 						      workload->req,
 						      0);
 			if (ret)
 				goto err;
-
-			i915_gem_object_finish_access(bb->obj);
-			bb->accessing = false;
 		}
+
+		/* No one is going to touch shadow bb from now on. */
+		i915_gem_object_flush_map(bb->obj);
 	}
 	return 0;
 err:
@@ -630,9 +610,6 @@ static void release_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 
 	list_for_each_entry_safe(bb, pos, &workload->shadow_bb, list) {
 		if (bb->obj) {
-			if (bb->accessing)
-				i915_gem_object_finish_access(bb->obj);
-
 			if (bb->va && !IS_ERR(bb->va))
 				i915_gem_object_unpin_map(bb->obj);
 
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.h b/drivers/gpu/drm/i915/gvt/scheduler.h
index 15d317f2a4a4..64e7a0b791c3 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.h
+++ b/drivers/gpu/drm/i915/gvt/scheduler.h
@@ -124,8 +124,6 @@ struct intel_vgpu_shadow_bb {
 	struct i915_vma *vma;
 	void *va;
 	u32 *bb_start_cmd_va;
-	unsigned int clflush;
-	bool accessing;
 	unsigned long bb_offset;
 	bool ppgtt;
 };
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
