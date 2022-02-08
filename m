Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 041084AD59C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 11:45:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FD610E69D;
	Tue,  8 Feb 2022 10:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3538310E62A;
 Tue,  8 Feb 2022 10:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644317113; x=1675853113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vXzcsqLrMYqHc9e1mUSQhQ8ek57/byViQNYtSN5TbEE=;
 b=Mj0+qwmF16QH/e20bv65cCuDqpr5sJ5DeGMuJaC0UFHjcly+JwNYBKbY
 bTo+KXI1hRi0Rjpfy/7EP+qBevABse7rpdXo/UZtgaevxKTqlsx4+awKQ
 8jK3SEp6D5jHYX3qR73mLcZkR/bMKS7UCCgsJMuZyAnMiI3w18BKA+G0U
 U5bL/yE8L1TfQvZlNHZ0sksFT+vHQvGIr7+AB/NyezmPpfFovJTcxbAy5
 +nXfnmulCCJqXe50odc2nR/+LKtx2B8rmBf+yw0UoIOXI8QqzYx/xwZx0
 CwF5YehciatKTHd+lCM4DZbfeQPBXz5rY8icETmSXfOyndTa0hE8/AQzA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="273451085"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="273451085"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:45:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="700804136"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:45:10 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  8 Feb 2022 02:45:16 -0800
Message-Id: <20220208104524.2516209-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220208104524.2516209-1-lucas.demarchi@intel.com>
References: <20220208104524.2516209-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/18] drm/i915/guc: Convert golden context
 prep to iosys_map
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the saved ads_map to prepare the golden context. One difference from
the init context is that this function can be called before there is a
gem object (and thus the guc->ads_map) to calculare the size of the
golden context that should be allocated for that object.

So in this case the function needs to be prepared for not having the
system_info with enabled engines filled out. To accomplish that an
info_map is prepared on the side to point either to the gem object
or the local variable on the stack. This allows making
fill_engine_enable_masks() operate always with a iosys_map
argument.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 52 +++++++++++++---------
 1 file changed, 32 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 7e355eef8d64..483a919328a9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -67,6 +67,12 @@ struct __guc_ads_blob {
 	iosys_map_wr_field(&(guc_)->ads_map, 0, struct __guc_ads_blob,	\
 			   field_, val_)
 
+#define info_map_write(map_, field_, val_) \
+	iosys_map_wr_field(map_, 0, struct guc_gt_system_info, field_, val_)
+
+#define info_map_read(map_, field_) \
+	iosys_map_rd_field(map_, 0, struct guc_gt_system_info, field_)
+
 static u32 guc_ads_regset_size(struct intel_guc *guc)
 {
 	GEM_BUG_ON(!guc->ads_regset_size);
@@ -378,24 +384,24 @@ static void guc_mmio_reg_state_init(struct intel_guc *guc,
 }
 
 static void fill_engine_enable_masks(struct intel_gt *gt,
-				     struct guc_gt_system_info *info)
+				     struct iosys_map *info_map)
 {
-	info->engine_enabled_masks[GUC_RENDER_CLASS] = 1;
-	info->engine_enabled_masks[GUC_BLITTER_CLASS] = 1;
-	info->engine_enabled_masks[GUC_VIDEO_CLASS] = VDBOX_MASK(gt);
-	info->engine_enabled_masks[GUC_VIDEOENHANCE_CLASS] = VEBOX_MASK(gt);
+	info_map_write(info_map, engine_enabled_masks[GUC_RENDER_CLASS], 1);
+	info_map_write(info_map, engine_enabled_masks[GUC_BLITTER_CLASS], 1);
+	info_map_write(info_map, engine_enabled_masks[GUC_VIDEO_CLASS], VDBOX_MASK(gt));
+	info_map_write(info_map, engine_enabled_masks[GUC_VIDEOENHANCE_CLASS], VEBOX_MASK(gt));
 }
 
 #define LR_HW_CONTEXT_SIZE (80 * sizeof(u32))
 #define LRC_SKIP_SIZE (LRC_PPHWSP_SZ * PAGE_SIZE + LR_HW_CONTEXT_SIZE)
-static int guc_prep_golden_context(struct intel_guc *guc,
-				   struct __guc_ads_blob *blob)
+static int guc_prep_golden_context(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 	u32 addr_ggtt, offset;
 	u32 total_size = 0, alloc_size, real_size;
 	u8 engine_class, guc_class;
-	struct guc_gt_system_info *info, local_info;
+	struct guc_gt_system_info local_info;
+	struct iosys_map info_map;
 
 	/*
 	 * Reserve the memory for the golden contexts and point GuC at it but
@@ -409,14 +415,15 @@ static int guc_prep_golden_context(struct intel_guc *guc,
 	 * GuC will also validate that the LRC base + size fall within the
 	 * allowed GGTT range.
 	 */
-	if (blob) {
+	if (!iosys_map_is_null(&guc->ads_map)) {
 		offset = guc_ads_golden_ctxt_offset(guc);
 		addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
-		info = &blob->system_info;
+		info_map = IOSYS_MAP_INIT_OFFSET(&guc->ads_map,
+						 offsetof(struct __guc_ads_blob, system_info));
 	} else {
 		memset(&local_info, 0, sizeof(local_info));
-		info = &local_info;
-		fill_engine_enable_masks(gt, info);
+		iosys_map_set_vaddr(&info_map, &local_info);
+		fill_engine_enable_masks(gt, &info_map);
 	}
 
 	for (engine_class = 0; engine_class <= MAX_ENGINE_CLASS; ++engine_class) {
@@ -425,14 +432,14 @@ static int guc_prep_golden_context(struct intel_guc *guc,
 
 		guc_class = engine_class_to_guc_class(engine_class);
 
-		if (!info->engine_enabled_masks[guc_class])
+		if (!info_map_read(&info_map, engine_enabled_masks[guc_class]))
 			continue;
 
 		real_size = intel_engine_context_size(gt, engine_class);
 		alloc_size = PAGE_ALIGN(real_size);
 		total_size += alloc_size;
 
-		if (!blob)
+		if (iosys_map_is_null(&guc->ads_map))
 			continue;
 
 		/*
@@ -446,12 +453,15 @@ static int guc_prep_golden_context(struct intel_guc *guc,
 		 * what comes before it in the context image (which is identical
 		 * on all engines).
 		 */
-		blob->ads.eng_state_size[guc_class] = real_size - LRC_SKIP_SIZE;
-		blob->ads.golden_context_lrca[guc_class] = addr_ggtt;
+		ads_blob_write(guc, ads.eng_state_size[guc_class],
+			       real_size - LRC_SKIP_SIZE);
+		ads_blob_write(guc, ads.golden_context_lrca[guc_class],
+			       addr_ggtt);
+
 		addr_ggtt += alloc_size;
 	}
 
-	if (!blob)
+	if (iosys_map_is_null(&guc->ads_map))
 		return total_size;
 
 	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
@@ -556,13 +566,15 @@ static void __guc_ads_init(struct intel_guc *guc)
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct drm_i915_private *i915 = gt->i915;
 	struct __guc_ads_blob *blob = guc->ads_blob;
+	struct iosys_map info_map = IOSYS_MAP_INIT_OFFSET(&guc->ads_map,
+			offsetof(struct __guc_ads_blob, system_info));
 	u32 base;
 
 	/* GuC scheduling policies */
 	guc_policies_init(guc);
 
 	/* System info */
-	fill_engine_enable_masks(gt, &blob->system_info);
+	fill_engine_enable_masks(gt, &info_map);
 
 	blob->system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_SLICE_ENABLED] =
 		hweight8(gt->info.sseu.slice_mask);
@@ -578,7 +590,7 @@ static void __guc_ads_init(struct intel_guc *guc)
 	}
 
 	/* Golden contexts for re-initialising after a watchdog reset */
-	guc_prep_golden_context(guc, blob);
+	guc_prep_golden_context(guc);
 
 	guc_mapping_table_init(guc_to_gt(guc), &blob->system_info);
 
@@ -621,7 +633,7 @@ int intel_guc_ads_create(struct intel_guc *guc)
 	guc->ads_regset_size = ret;
 
 	/* Likewise the golden contexts: */
-	ret = guc_prep_golden_context(guc, NULL);
+	ret = guc_prep_golden_context(guc);
 	if (ret < 0)
 		return ret;
 	guc->ads_golden_ctxt_size = ret;
-- 
2.35.1

