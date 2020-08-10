Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B588F2404D2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 12:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A58E86E3EE;
	Mon, 10 Aug 2020 10:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90FD089CDE
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 10:33:29 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Aug 2020 12:31:02 +0200
Message-Id: <20200810103103.303818-24-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/24] drm/i915: Add ww locking to vm_fault_gtt
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 51 +++++++++++++++---------
 1 file changed, 33 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index b23368529a40..548ed9fb427d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -283,37 +283,46 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
 	struct i915_ggtt *ggtt = &i915->ggtt;
 	bool write = area->vm_flags & VM_WRITE;
+	struct i915_gem_ww_ctx ww;
 	intel_wakeref_t wakeref;
 	struct i915_vma *vma;
 	pgoff_t page_offset;
 	int srcu;
 	int ret;
 
-	/* Sanity check that we allow writing into this object */
-	if (i915_gem_object_is_readonly(obj) && write)
-		return VM_FAULT_SIGBUS;
-
 	/* We don't use vmf->pgoff since that has the fake offset */
 	page_offset = (vmf->address - area->vm_start) >> PAGE_SHIFT;
 
 	trace_i915_gem_object_fault(obj, page_offset, true, write);
 
-	ret = i915_gem_object_pin_pages(obj);
+	wakeref = intel_runtime_pm_get(rpm);
+
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	ret = i915_gem_object_lock(obj, &ww);
 	if (ret)
-		goto err;
+		goto err_rpm;
 
-	wakeref = intel_runtime_pm_get(rpm);
+	/* Sanity check that we allow writing into this object */
+	if (i915_gem_object_is_readonly(obj) && write) {
+		ret = -EFAULT;
+		goto err_rpm;
+	}
 
-	ret = intel_gt_reset_trylock(ggtt->vm.gt, &srcu);
+	ret = i915_gem_object_pin_pages(obj);
 	if (ret)
 		goto err_rpm;
 
+	ret = intel_gt_reset_trylock(ggtt->vm.gt, &srcu);
+	if (ret)
+		goto err_pages;
+
 	/* Now pin it into the GTT as needed */
-	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0,
-				       PIN_MAPPABLE |
-				       PIN_NONBLOCK /* NOWARN */ |
-				       PIN_NOEVICT);
-	if (IS_ERR(vma)) {
+	vma = i915_gem_object_ggtt_pin_ww(obj, &ww, NULL, 0, 0,
+					  PIN_MAPPABLE |
+					  PIN_NONBLOCK /* NOWARN */ |
+					  PIN_NOEVICT);
+	if (IS_ERR(vma) && vma != ERR_PTR(-EDEADLK)) {
 		/* Use a partial view if it is bigger than available space */
 		struct i915_ggtt_view view =
 			compute_partial_view(obj, page_offset, MIN_CHUNK_PAGES);
@@ -328,11 +337,11 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 		 * all hope that the hardware is able to track future writes.
 		 */
 
-		vma = i915_gem_object_ggtt_pin(obj, &view, 0, 0, flags);
-		if (IS_ERR(vma)) {
+		vma = i915_gem_object_ggtt_pin_ww(obj, &ww, &view, 0, 0, flags);
+		if (IS_ERR(vma) && vma != ERR_PTR(-EDEADLK)) {
 			flags = PIN_MAPPABLE;
 			view.type = I915_GGTT_VIEW_PARTIAL;
-			vma = i915_gem_object_ggtt_pin(obj, &view, 0, 0, flags);
+			vma = i915_gem_object_ggtt_pin_ww(obj, &ww, &view, 0, 0, flags);
 		}
 
 		/* The entire mappable GGTT is pinned? Unexpected! */
@@ -389,10 +398,16 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	__i915_vma_unpin(vma);
 err_reset:
 	intel_gt_reset_unlock(ggtt->vm.gt, srcu);
+err_pages:
+	i915_gem_object_unpin_pages(obj);
 err_rpm:
+	if (ret == -EDEADLK) {
+		ret = i915_gem_ww_ctx_backoff(&ww);
+		if (!ret)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
 	intel_runtime_pm_put(rpm, wakeref);
-	i915_gem_object_unpin_pages(obj);
-err:
 	return i915_error_to_vmf_fault(ret);
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
