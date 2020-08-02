Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B214F235837
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 17:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55366E0A2;
	Sun,  2 Aug 2020 15:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC876E0A2
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 15:34:34 +0000 (UTC)
IronPort-SDR: U54fThvQHoub1iOQXByoXARJxmiA029T69aR0FMiq/hJmhIEenI+xZTqv3HaLIBXnyzmd2o0We
 7vFdwLaUechg==
X-IronPort-AV: E=McAfee;i="6000,8403,9700"; a="149448847"
X-IronPort-AV: E=Sophos;i="5.75,426,1589266800"; d="scan'208";a="149448847"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2020 08:34:34 -0700
IronPort-SDR: CyzTlMD9lgQeyL1rIq+d/NypcRmAh13dSmOITpZNjCIucvuX8JkSMGNeIlaUWLcH5b/zFitL54
 3X3fJTkHg16g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,426,1589266800"; d="scan'208";a="291803009"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 02 Aug 2020 08:34:32 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-mobl.ger.corp.intel.com [10.249.133.5])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 072FYT3s017247; Sun, 2 Aug 2020 16:34:31 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Aug 2020 17:34:09 +0200
Message-Id: <20200802153410.2298-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200802153410.2298-1-michal.wajdeczko@intel.com>
References: <20200802153410.2298-1-michal.wajdeczko@intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
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
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 69 ++++++++++++++++++++++------
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 ++
 drivers/gpu/drm/i915/i915_vgpu.c     | 64 +++++---------------------
 3 files changed, 70 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 33a3f627ddb1..7001252b4703 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -462,29 +462,17 @@ static void ggtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
 
 static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
 {
-	u64 size;
-	int ret;
-
 	if (!intel_uc_uses_guc(&ggtt->vm.gt->uc))
 		return 0;
 
 	GEM_BUG_ON(ggtt->vm.total <= GUC_GGTT_TOP);
-	size = ggtt->vm.total - GUC_GGTT_TOP;
-
-	ret = i915_gem_gtt_reserve(&ggtt->vm, &ggtt->uc_fw, size,
-				   GUC_GGTT_TOP, I915_COLOR_UNEVICTABLE,
-				   PIN_NOEVICT);
-	if (ret)
-		drm_dbg(&ggtt->vm.i915->drm,
-			"Failed to reserve top of GGTT for GuC\n");
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
@@ -1464,3 +1452,54 @@ i915_get_ggtt_vma_pages(struct i915_vma *vma)
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
+	drm_dbg(&ggtt->vm.i915->drm, "%sGGTT [%#llx-%#llx] %lluK\n",
+		"ballooning ", start, end, size / SZ_1K);
+
+	err = i915_gem_gtt_reserve(&ggtt->vm, node, size, start,
+				   I915_COLOR_UNEVICTABLE, PIN_NOEVICT);
+	if (unlikely(err)) {
+		drm_err(&ggtt->vm.i915->drm, "%sGGTT [%#llx-%#llx] %lluK\n",
+			"Failed to balloon ", node->start,
+			node->start + node->size, node->size / SZ_1K);
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
+	drm_dbg(&ggtt->vm.i915->drm, "%sGGTT [%#llx-%#llx] %lluK\n",
+		"deballooning ", node->start, node->start + node->size,
+		node->size / SZ_1K);
+
+	GEM_BUG_ON(ggtt->vm.reserved < node->size);
+	ggtt->vm.reserved -= node->size;
+	drm_mm_remove_node(node);
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index c13c650ced22..111306f2f8d6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -495,6 +495,10 @@ static inline bool i915_ggtt_has_aperture(const struct i915_ggtt *ggtt)
 	return ggtt->mappable_end > 0;
 }
 
+int i915_ggtt_balloon(struct i915_ggtt *ggtt, u64 start, u64 end,
+		      struct drm_mm_node *node);
+void i915_ggtt_deballoon(struct i915_ggtt *ggtt, struct drm_mm_node *node);
+
 int i915_ppgtt_init_hw(struct intel_gt *gt);
 
 struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
index 70fca72f5162..f505142d6dfc 100644
--- a/drivers/gpu/drm/i915/i915_vgpu.c
+++ b/drivers/gpu/drm/i915/i915_vgpu.c
@@ -145,23 +145,6 @@ struct _balloon_info_ {
 
 static struct _balloon_info_ bl_info;
 
-static void vgt_deballoon_space(struct i915_ggtt *ggtt,
-				struct drm_mm_node *node)
-{
-	struct drm_i915_private *dev_priv = ggtt->vm.i915;
-	if (!drm_mm_node_allocated(node))
-		return;
-
-	drm_dbg(&dev_priv->drm,
-		"deballoon space: range [0x%llx - 0x%llx] %llu KiB.\n",
-		node->start,
-		node->start + node->size,
-		node->size / 1024);
-
-	ggtt->vm.reserved -= node->size;
-	drm_mm_remove_node(node);
-}
-
 /**
  * intel_vgt_deballoon - deballoon reserved graphics address trunks
  * @ggtt: the global GGTT from which we reserved earlier
@@ -180,30 +163,7 @@ void intel_vgt_deballoon(struct i915_ggtt *ggtt)
 	drm_dbg(&dev_priv->drm, "VGT deballoon.\n");
 
 	for (i = 0; i < 4; i++)
-		vgt_deballoon_space(ggtt, &bl_info.space[i]);
-}
-
-static int vgt_balloon_space(struct i915_ggtt *ggtt,
-			     struct drm_mm_node *node,
-			     unsigned long start, unsigned long end)
-{
-	struct drm_i915_private *dev_priv = ggtt->vm.i915;
-	unsigned long size = end - start;
-	int ret;
-
-	if (start >= end)
-		return -EINVAL;
-
-	drm_info(&dev_priv->drm,
-		 "balloon space: range [ 0x%lx - 0x%lx ] %lu KiB.\n",
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
@@ -292,32 +252,32 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 
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
@@ -327,11 +287,11 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
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
 	drm_err(&dev_priv->drm, "VGT balloon fail\n");
 	return ret;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
