Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7906D30D558
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 09:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65CE6E558;
	Wed,  3 Feb 2021 08:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 932726E558
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 08:38:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23780134-1500050 
 for multiple; Wed, 03 Feb 2021 08:38:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 08:38:41 +0000
Message-Id: <20210203083841.19735-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Apply VT-d scanout adjustment to the
 VMA
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

Currently, we allocate exactly the VMA requested for the framebuffer and
rely on filling the whole of the GGTT with scratch pages to catch when
VT-d prefetches beyond the bounds of the surface. However, this means
that we have to scrub the GGTT on startup and resume, and on recent HW
this is made even slower as the only access to GSM is uncached.

Since we do fill the pad-to-size PTE with scratch pages, and this is
also reapplied on resume, we can forgo the overzealous clearing of the
entire GGTT and instead pad the VMA to avoid the VT-d prefetches going
outside of the VMA.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 18 ++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_ggtt.c       | 23 ----------------------
 2 files changed, 13 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 36f54cedaaeb..2668a79383c8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -359,19 +359,26 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
  */
 struct i915_vma *
 i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
-				     u32 alignment,
+				     u32 align,
 				     const struct i915_ggtt_view *view,
 				     unsigned int flags)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
+	u64 size;
 	int ret;
 
 	/* Frame buffer must be in LMEM (no migration yet) */
 	if (HAS_LMEM(i915) && !i915_gem_object_is_lmem(obj))
 		return ERR_PTR(-EINVAL);
 
+	size = obj->base.size;
+	if (intel_scanout_needs_vtd_wa(i915)) {
+		size = ALIGN(size, SZ_256K);
+		align = ALIGN(align, SZ_256K);
+	}
+
 	i915_gem_ww_ctx_init(&ww, true);
 retry:
 	ret = i915_gem_object_lock(obj, &ww);
@@ -404,18 +411,19 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 	vma = ERR_PTR(-ENOSPC);
 	if ((flags & PIN_MAPPABLE) == 0 &&
 	    (!view || view->type == I915_GGTT_VIEW_NORMAL))
-		vma = i915_gem_object_ggtt_pin_ww(obj, &ww, view, 0, alignment,
+		vma = i915_gem_object_ggtt_pin_ww(obj, &ww, view,
+						  size, align,
 						  flags | PIN_MAPPABLE |
 						  PIN_NONBLOCK);
 	if (IS_ERR(vma) && vma != ERR_PTR(-EDEADLK))
-		vma = i915_gem_object_ggtt_pin_ww(obj, &ww, view, 0,
-						  alignment, flags);
+		vma = i915_gem_object_ggtt_pin_ww(obj, &ww, view,
+						  size, align, flags);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
 		goto err;
 	}
 
-	vma->display_alignment = max_t(u64, vma->display_alignment, alignment);
+	vma->display_alignment = max_t(u64, vma->display_alignment, align);
 	i915_vma_mark_scanout(vma);
 
 	i915_gem_object_flush_if_display_locked(obj);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index fc399ac16eda..126b061862ad 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -304,27 +304,6 @@ static void nop_clear_range(struct i915_address_space *vm,
 {
 }
 
-static void gen8_ggtt_clear_range(struct i915_address_space *vm,
-				  u64 start, u64 length)
-{
-	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
-	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
-	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
-	const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
-	gen8_pte_t __iomem *gtt_base =
-		(gen8_pte_t __iomem *)ggtt->gsm + first_entry;
-	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
-	int i;
-
-	if (WARN(num_entries > max_entries,
-		 "First entry = %d; Num entries = %d (max=%d)\n",
-		 first_entry, num_entries, max_entries))
-		num_entries = max_entries;
-
-	for (i = 0; i < num_entries; i++)
-		gen8_set_pte(&gtt_base[i], scratch_pte);
-}
-
 static void bxt_vtd_ggtt_wa(struct i915_address_space *vm)
 {
 	/*
@@ -884,8 +863,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.cleanup = gen6_gmch_remove;
 	ggtt->vm.insert_page = gen8_ggtt_insert_page;
 	ggtt->vm.clear_range = nop_clear_range;
-	if (intel_scanout_needs_vtd_wa(i915))
-		ggtt->vm.clear_range = gen8_ggtt_clear_range;
 
 	ggtt->vm.insert_entries = gen8_ggtt_insert_entries;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
