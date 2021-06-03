Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 687DD399997
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 06:59:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB03F6F3E9;
	Thu,  3 Jun 2021 04:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34D6F6F39E;
 Thu,  3 Jun 2021 04:58:43 +0000 (UTC)
IronPort-SDR: gXMJwpBaJSpvNr7QHd0jt80knFxYgvWcDdhewVUlxN7Pp3efF1Tkd15FDDTtVYM9aMUR2EX0Bi
 B4+mnSjdMahw==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="265138296"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="265138296"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 21:58:41 -0700
IronPort-SDR: avx6B7d9Jer6zXgt76GverBcn3XrT1Nx4XyUYDA2SRmtDDC4W/9bvk9WAnXXdWDNp/QCbjijsN
 wT0+DFk0U3Jg==
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="480020044"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 21:58:41 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed,  2 Jun 2021 22:16:30 -0700
Message-Id: <20210603051630.2635-21-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210603051630.2635-1-matthew.brost@intel.com>
References: <20210603051630.2635-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/20] drm/i915/guc: Use guc_class instead of
 engine_class in fw interface
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
Cc: daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

GuC has its own defines for the engine classes. They're currently
mapping 1:1 to the defines used by the driver, but there is no guarantee
this will continue in the future. Given that we've been caught off-guard
in the past by similar divergences, we can prepare for the changes by
introducing helper functions to convert from engine class to GuC class and
back again.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   |  6 +++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 20 +++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 26 +++++++++++++++++++++
 3 files changed, 42 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 3f9a811eb02b..69281b5aba51 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -265,6 +265,7 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	const struct engine_info *info = &intel_engines[id];
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_engine_cs *engine;
+	u8 guc_class;
 
 	BUILD_BUG_ON(MAX_ENGINE_CLASS >= BIT(GEN11_ENGINE_CLASS_WIDTH));
 	BUILD_BUG_ON(MAX_ENGINE_INSTANCE >= BIT(GEN11_ENGINE_INSTANCE_WIDTH));
@@ -293,9 +294,10 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->i915 = i915;
 	engine->gt = gt;
 	engine->uncore = gt->uncore;
-	engine->mmio_base = __engine_mmio_base(i915, info->mmio_bases);
 	engine->hw_id = info->hw_id;
-	engine->guc_id = MAKE_GUC_ID(info->class, info->instance);
+	guc_class = engine_class_to_guc_class(info->class);
+	engine->guc_id = MAKE_GUC_ID(guc_class, info->instance);
+	engine->mmio_base = __engine_mmio_base(i915, info->mmio_bases);
 
 	engine->irq_handler = nop_irq_handler;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 17526717368c..efdce309b6f1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -6,6 +6,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_lrc.h"
 #include "intel_guc_ads.h"
+#include "intel_guc_fwif.h"
 #include "intel_uc.h"
 #include "i915_drv.h"
 
@@ -104,7 +105,7 @@ static void guc_mapping_table_init(struct intel_gt *gt,
 				GUC_MAX_INSTANCES_PER_CLASS;
 
 	for_each_engine(engine, gt, id) {
-		u8 guc_class = engine->class;
+		u8 guc_class = engine_class_to_guc_class(engine->class);
 
 		system_info->mapping_table[guc_class][engine->instance] =
 			engine->instance;
@@ -124,7 +125,7 @@ static void __guc_ads_init(struct intel_guc *guc)
 	struct __guc_ads_blob *blob = guc->ads_blob;
 	const u32 skipped_size = LRC_PPHWSP_SZ * PAGE_SIZE + LR_HW_CONTEXT_SIZE;
 	u32 base;
-	u8 engine_class;
+	u8 engine_class, guc_class;
 
 	/* GuC scheduling policies */
 	guc_policies_init(&blob->policies);
@@ -140,22 +141,25 @@ static void __guc_ads_init(struct intel_guc *guc)
 	for (engine_class = 0; engine_class <= MAX_ENGINE_CLASS; ++engine_class) {
 		if (engine_class == OTHER_CLASS)
 			continue;
+
+		guc_class = engine_class_to_guc_class(engine_class);
+
 		/*
 		 * TODO: Set context pointer to default state to allow
 		 * GuC to re-init guilty contexts after internal reset.
 		 */
-		blob->ads.golden_context_lrca[engine_class] = 0;
-		blob->ads.eng_state_size[engine_class] =
+		blob->ads.golden_context_lrca[guc_class] = 0;
+		blob->ads.eng_state_size[guc_class] =
 			intel_engine_context_size(guc_to_gt(guc),
 						  engine_class) -
 			skipped_size;
 	}
 
 	/* System info */
-	blob->system_info.engine_enabled_masks[RENDER_CLASS] = 1;
-	blob->system_info.engine_enabled_masks[COPY_ENGINE_CLASS] = 1;
-	blob->system_info.engine_enabled_masks[VIDEO_DECODE_CLASS] = VDBOX_MASK(gt);
-	blob->system_info.engine_enabled_masks[VIDEO_ENHANCEMENT_CLASS] = VEBOX_MASK(gt);
+	blob->system_info.engine_enabled_masks[GUC_RENDER_CLASS] = 1;
+	blob->system_info.engine_enabled_masks[GUC_BLITTER_CLASS] = 1;
+	blob->system_info.engine_enabled_masks[GUC_VIDEO_CLASS] = VDBOX_MASK(gt);
+	blob->system_info.engine_enabled_masks[GUC_VIDEOENHANCE_CLASS] = VEBOX_MASK(gt);
 
 	blob->system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_SLICE_ENABLED] =
 		hweight8(gt->info.sseu.slice_mask);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 9bf35240e723..e9a9d85e2aa3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -9,6 +9,7 @@
 #include <linux/bits.h>
 #include <linux/compiler.h>
 #include <linux/types.h>
+#include "gt/intel_engine_types.h"
 
 #include "abi/guc_actions_abi.h"
 #include "abi/guc_errors_abi.h"
@@ -32,6 +33,12 @@
 #define GUC_VIDEO_ENGINE2		4
 #define GUC_MAX_ENGINES_NUM		(GUC_VIDEO_ENGINE2 + 1)
 
+#define GUC_RENDER_CLASS		0
+#define GUC_VIDEO_CLASS			1
+#define GUC_VIDEOENHANCE_CLASS		2
+#define GUC_BLITTER_CLASS		3
+#define GUC_RESERVED_CLASS		4
+#define GUC_LAST_ENGINE_CLASS		GUC_RESERVED_CLASS
 #define GUC_MAX_ENGINE_CLASSES		16
 #define GUC_MAX_INSTANCES_PER_CLASS	32
 
@@ -129,6 +136,25 @@
 #define GUC_ID_TO_ENGINE_INSTANCE(guc_id) \
 	(((guc_id) & GUC_ENGINE_INSTANCE_MASK) >> GUC_ENGINE_INSTANCE_SHIFT)
 
+static inline u8 engine_class_to_guc_class(u8 class)
+{
+	BUILD_BUG_ON(GUC_RENDER_CLASS != RENDER_CLASS);
+	BUILD_BUG_ON(GUC_BLITTER_CLASS != COPY_ENGINE_CLASS);
+	BUILD_BUG_ON(GUC_VIDEO_CLASS != VIDEO_DECODE_CLASS);
+	BUILD_BUG_ON(GUC_VIDEOENHANCE_CLASS != VIDEO_ENHANCEMENT_CLASS);
+	GEM_BUG_ON(class > MAX_ENGINE_CLASS || class == OTHER_CLASS);
+
+	return class;
+}
+
+static inline u8 guc_class_to_engine_class(u8 guc_class)
+{
+	GEM_BUG_ON(guc_class > GUC_LAST_ENGINE_CLASS);
+	GEM_BUG_ON(guc_class == GUC_RESERVED_CLASS);
+
+	return guc_class;
+}
+
 /* Work item for submitting workloads into work queue of GuC. */
 struct guc_wq_item {
 	u32 header;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
