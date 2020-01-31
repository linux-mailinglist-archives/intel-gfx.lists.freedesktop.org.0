Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F14E14EB3A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 11:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A5A6FAEA;
	Fri, 31 Jan 2020 10:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24CDC6E95D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 10:46:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20070417-1500050 
 for multiple; Fri, 31 Jan 2020 10:45:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 10:45:41 +0000
Message-Id: <20200131104548.2451485-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
References: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/12] drm/i915/gvt: Use the pinned
 ce->lrc_reg_state
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

When modifying the register state of the context, we can use the
ce->lrc_reg_state of the shadow context as we have it pinned.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gvt/scheduler.c | 35 +++++++++++-----------------
 1 file changed, 13 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 685d1e04a5ff..290c792972ff 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -35,7 +35,6 @@
 
 #include <linux/kthread.h>
 
-#include "gem/i915_gem_pm.h"
 #include "gt/intel_context.h"
 #include "gt/intel_ring.h"
 
@@ -58,10 +57,7 @@ static void set_context_pdp_root_pointer(
 
 static void update_shadow_pdps(struct intel_vgpu_workload *workload)
 {
-	struct drm_i915_gem_object *ctx_obj =
-		workload->req->context->state->obj;
-	struct execlist_ring_context *shadow_ring_context;
-	struct page *page;
+	u32 *regs;
 
 	if (WARN_ON(!workload->shadow_mm))
 		return;
@@ -69,11 +65,9 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
 	if (WARN_ON(!atomic_read(&workload->shadow_mm->pincount)))
 		return;
 
-	page = i915_gem_object_get_page(ctx_obj, LRC_STATE_PN);
-	shadow_ring_context = kmap(page);
-	set_context_pdp_root_pointer(shadow_ring_context,
+	regs = workload->req->context->lrc_reg_state;
+	set_context_pdp_root_pointer((struct execlist_ring_context *)regs,
 			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
-	kunmap(page);
 }
 
 /*
@@ -129,18 +123,15 @@ static int populate_shadow_context(struct intel_vgpu_workload *workload)
 	struct intel_vgpu *vgpu = workload->vgpu;
 	struct intel_gvt *gvt = vgpu->gvt;
 	int ring_id = workload->ring_id;
-	struct drm_i915_gem_object *ctx_obj =
-		workload->req->context->state->obj;
-	struct execlist_ring_context *shadow_ring_context;
+	u32 *regs = workload->req->context->lrc_reg_state;
+	struct execlist_ring_context *shadow_ring_context =
+		(struct execlist_ring_context *)regs;
+	unsigned long context_gpa, context_page_num;
 	struct page *page;
 	void *dst;
-	unsigned long context_gpa, context_page_num;
 	int i;
 
-	page = i915_gem_object_get_page(ctx_obj, LRC_STATE_PN);
-	shadow_ring_context = kmap(page);
-
-	sr_oa_regs(workload, (u32 *)shadow_ring_context, true);
+	sr_oa_regs(workload, regs, true);
 #define COPY_REG(name) \
 	intel_gvt_hypervisor_read_gpa(vgpu, workload->ring_context_gpa \
 		+ RING_CTX_OFF(name.val), &shadow_ring_context->name.val, 4)
@@ -170,7 +161,6 @@ static int populate_shadow_context(struct intel_vgpu_workload *workload)
 			I915_GTT_PAGE_SIZE - sizeof(*shadow_ring_context));
 
 	sr_oa_regs(workload, (u32 *)shadow_ring_context, false);
-	kunmap(page);
 
 	if (IS_RESTORE_INHIBIT(shadow_ring_context->ctx_ctrl.val))
 		return 0;
@@ -187,6 +177,9 @@ static int populate_shadow_context(struct intel_vgpu_workload *workload)
 
 	i = 2;
 	while (i < context_page_num) {
+		struct drm_i915_gem_object *ctx_obj =
+			workload->req->context->state->obj;
+
 		context_gpa = intel_vgpu_gma_to_gpa(vgpu->gtt.ggtt_mm,
 				(u32)((workload->ctx_desc.lrca + i) <<
 				I915_GTT_PAGE_SHIFT));
@@ -843,8 +836,8 @@ static void update_guest_context(struct intel_vgpu_workload *workload)
 	intel_gvt_hypervisor_write_gpa(vgpu, workload->ring_context_gpa +
 		RING_CTX_OFF(ring_header.val), &workload->rb_tail, 4);
 
-	page = i915_gem_object_get_page(ctx_obj, LRC_STATE_PN);
-	shadow_ring_context = kmap(page);
+	shadow_ring_context =
+		(struct execlist_ring_context *)rq->context->lrc_reg_state;
 
 #define COPY_REG(name) \
 	intel_gvt_hypervisor_write_gpa(vgpu, workload->ring_context_gpa + \
@@ -861,8 +854,6 @@ static void update_guest_context(struct intel_vgpu_workload *workload)
 			(void *)shadow_ring_context +
 			sizeof(*shadow_ring_context),
 			I915_GTT_PAGE_SIZE - sizeof(*shadow_ring_context));
-
-	kunmap(page);
 }
 
 void intel_vgpu_clean_workloads(struct intel_vgpu *vgpu,
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
