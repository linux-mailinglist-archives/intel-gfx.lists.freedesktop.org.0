Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C1D1382A6
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jan 2020 18:36:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1F789FC0;
	Sat, 11 Jan 2020 17:36:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A7689FC0
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jan 2020 17:36:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jan 2020 09:36:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,421,1571727600"; d="scan'208";a="255382050"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jan 2020 09:36:24 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.135.122])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00BHaNGO010236; Sat, 11 Jan 2020 17:36:23 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Jan 2020 17:36:17 +0000
Message-Id: <20200111173618.29808-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/ggtt: Add generic i915_ggtt
 ballooning support
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reserving part of the GGTT for the GuC requires same steps
as in VGT GGTT ballooning. Add generic GGTT ballooning
helpers to intel_ggtt.c to avoid code duplication.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Xiong Zhang <xiong.y.zhang@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 71 ++++++++++++++++++++++------
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 ++
 drivers/gpu/drm/i915/i915_vgpu.c     | 60 +++++------------------
 3 files changed, 73 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 79096722ce16..636542c7c272 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -459,28 +459,17 @@ static void ggtt_unbind_vma(struct i915_vma *vma)
 
 static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
 {
-	u64 size;
-	int ret;
-
 	if (!USES_GUC(ggtt->vm.i915))
 		return 0;
 
 	GEM_BUG_ON(ggtt->vm.total <= GUC_GGTT_TOP);
-	size = ggtt->vm.total - GUC_GGTT_TOP;
-
-	ret = i915_gem_gtt_reserve(&ggtt->vm, &ggtt->uc_fw, size,
-				   GUC_GGTT_TOP, I915_COLOR_UNEVICTABLE,
-				   PIN_NOEVICT);
-	if (ret)
-		DRM_DEBUG_DRIVER("Failed to reserve top of GGTT for GuC\n");
-
-	return ret;
+	return i915_ggtt_balloon(ggtt, GUC_GGTT_TOP, ggtt->vm.total,
+				 &ggtt->uc_fw);
 }
 
 static void ggtt_release_guc_top(struct i915_ggtt *ggtt)
 {
-	if (drm_mm_node_allocated(&ggtt->uc_fw))
-		drm_mm_remove_node(&ggtt->uc_fw);
+	i915_ggtt_deballoon(ggtt, &ggtt->uc_fw);
 }
 
 static void cleanup_init_ggtt(struct i915_ggtt *ggtt)
@@ -1484,3 +1473,57 @@ i915_get_ggtt_vma_pages(struct i915_vma *vma)
 	}
 	return ret;
 }
+
+/**
+ * i915_ggtt_balloon - reserve fixed space in an GGTT
+ * @ggtt: the &struct i915_ggtt
+ * @start: start offset inside the GGTT,
+ *          must be #I915_GTT_MIN_ALIGNMENT aligned
+ * @end: end offset inside the GGTT,
+ *        must be #I915_GTT_PAGE_SIZE aligned
+ * @node: the &struct drm_mm_node
+ *
+ * i915_ggtt_balloon() tries to reserve the @node from @start to @end inside
+ * GGTT the address space.
+ *
+ * Returns: 0 on success, -ENOSPC if no suitable hole is found.
+ */
+int i915_ggtt_balloon(struct i915_ggtt *ggtt, u64 start, u64 end,
+		      struct drm_mm_node *node)
+{
+	u64 size = end - start;
+	int err;
+
+	GEM_BUG_ON(start >= end);
+	DRM_DEV_DEBUG_DRIVER(ggtt->vm.i915->drm.dev,
+			     "%sGGTT [%#llx-%#llx] %lluK\n",
+			     "ballooning ", start, end, size / SZ_1K);
+
+	err = i915_gem_gtt_reserve(&ggtt->vm, node, size, start,
+				   I915_COLOR_UNEVICTABLE, PIN_NOEVICT);
+	if (unlikely(err)) {
+		DRM_DEV_ERROR(ggtt->vm.i915->drm.dev,
+			      "%sGGTT [%#llx-%#llx] %lluK\n",
+			      "Failed to balloon ", node->start,
+			      node->start + node->size, node->size / SZ_1K);
+		return err;
+	}
+
+	ggtt->vm.reserved += node->size;
+	return 0;
+}
+
+void i915_ggtt_deballoon(struct i915_ggtt *ggtt, struct drm_mm_node *node)
+{
+	if (!drm_mm_node_allocated(node))
+		return;
+
+	DRM_DEV_DEBUG_DRIVER(ggtt->vm.i915->drm.dev,
+			     "%sGGTT [%#llx-%#llx] %lluK\n",
+			     "deballooning ", node->start,
+			     node->start + node->size, node->size / SZ_1K);
+
+	GEM_BUG_ON(ggtt->vm.reserved < node->size);
+	ggtt->vm.reserved -= node->size;
+	drm_mm_remove_node(node);
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 7da7681c20b1..ac852d1a3302 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -508,6 +508,10 @@ static inline bool i915_ggtt_has_aperture(const struct i915_ggtt *ggtt)
 	return ggtt->mappable_end > 0;
 }
 
+int i915_ggtt_balloon(struct i915_ggtt *ggtt, u64 start, u64 end,
+		      struct drm_mm_node *node);
+void i915_ggtt_deballoon(struct i915_ggtt *ggtt, struct drm_mm_node *node);
+
 int i915_ppgtt_init_hw(struct intel_gt *gt);
 
 struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
index 968be26735c5..4e1889a7aa5c 100644
--- a/drivers/gpu/drm/i915/i915_vgpu.c
+++ b/drivers/gpu/drm/i915/i915_vgpu.c
@@ -117,21 +117,6 @@ struct _balloon_info_ {
 
 static struct _balloon_info_ bl_info;
 
-static void vgt_deballoon_space(struct i915_ggtt *ggtt,
-				struct drm_mm_node *node)
-{
-	if (!drm_mm_node_allocated(node))
-		return;
-
-	DRM_DEBUG_DRIVER("deballoon space: range [0x%llx - 0x%llx] %llu KiB.\n",
-			 node->start,
-			 node->start + node->size,
-			 node->size / 1024);
-
-	ggtt->vm.reserved -= node->size;
-	drm_mm_remove_node(node);
-}
-
 /**
  * intel_vgt_deballoon - deballoon reserved graphics address trunks
  * @ggtt: the global GGTT from which we reserved earlier
@@ -149,28 +134,7 @@ void intel_vgt_deballoon(struct i915_ggtt *ggtt)
 	DRM_DEBUG("VGT deballoon.\n");
 
 	for (i = 0; i < 4; i++)
-		vgt_deballoon_space(ggtt, &bl_info.space[i]);
-}
-
-static int vgt_balloon_space(struct i915_ggtt *ggtt,
-			     struct drm_mm_node *node,
-			     unsigned long start, unsigned long end)
-{
-	unsigned long size = end - start;
-	int ret;
-
-	if (start >= end)
-		return -EINVAL;
-
-	DRM_INFO("balloon space: range [ 0x%lx - 0x%lx ] %lu KiB.\n",
-		 start, end, size / 1024);
-	ret = i915_gem_gtt_reserve(&ggtt->vm, node,
-				   size, start, I915_COLOR_UNEVICTABLE,
-				   0);
-	if (!ret)
-		ggtt->vm.reserved += size;
-
-	return ret;
+		i915_ggtt_deballoon(ggtt, &bl_info.space[i]);
 }
 
 /**
@@ -256,32 +220,32 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 
 	/* Unmappable graphic memory ballooning */
 	if (unmappable_base > ggtt->mappable_end) {
-		ret = vgt_balloon_space(ggtt, &bl_info.space[2],
-					ggtt->mappable_end, unmappable_base);
+		ret = i915_ggtt_balloon(ggtt, ggtt->mappable_end,
+					unmappable_base, &bl_info.space[2]);
 
 		if (ret)
 			goto err;
 	}
 
 	if (unmappable_end < ggtt_end) {
-		ret = vgt_balloon_space(ggtt, &bl_info.space[3],
-					unmappable_end, ggtt_end);
+		ret = i915_ggtt_balloon(ggtt, unmappable_end, ggtt_end,
+					&bl_info.space[3]);
 		if (ret)
 			goto err_upon_mappable;
 	}
 
 	/* Mappable graphic memory ballooning */
 	if (mappable_base) {
-		ret = vgt_balloon_space(ggtt, &bl_info.space[0],
-					0, mappable_base);
+		ret = i915_ggtt_balloon(ggtt, 0, mappable_base,
+					&bl_info.space[0]);
 
 		if (ret)
 			goto err_upon_unmappable;
 	}
 
 	if (mappable_end < ggtt->mappable_end) {
-		ret = vgt_balloon_space(ggtt, &bl_info.space[1],
-					mappable_end, ggtt->mappable_end);
+		ret = i915_ggtt_balloon(ggtt, mappable_end, ggtt->mappable_end,
+					&bl_info.space[1]);
 
 		if (ret)
 			goto err_below_mappable;
@@ -291,11 +255,11 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 	return 0;
 
 err_below_mappable:
-	vgt_deballoon_space(ggtt, &bl_info.space[0]);
+	i915_ggtt_deballoon(ggtt, &bl_info.space[0]);
 err_upon_unmappable:
-	vgt_deballoon_space(ggtt, &bl_info.space[3]);
+	i915_ggtt_deballoon(ggtt, &bl_info.space[3]);
 err_upon_mappable:
-	vgt_deballoon_space(ggtt, &bl_info.space[2]);
+	i915_ggtt_deballoon(ggtt, &bl_info.space[2]);
 err:
 	DRM_ERROR("VGT balloon fail\n");
 	return ret;
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
