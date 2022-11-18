Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA6162EB84
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 02:59:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 088A410E6DD;
	Fri, 18 Nov 2022 01:59:27 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42D1710E6D8;
 Fri, 18 Nov 2022 01:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668736755; x=1700272755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q2d+TdewvbeItMxZwCyBrCS/PexZ/jstvUMUsRXzpu4=;
 b=WLyjCQ8N9mO9AmelVgVPlwJUqA2wsvMffHrPzD0CBZkPC/qs5E5zJoSG
 ipk3Mjc0bzXJfOwPEI2mLfHJepZBG2a5YR0mecM5rss8a3VR2Zya/2YFR
 BLgNOQyodOBiMjrUNsBlR41awX8/l72RctG9XBptx6GbuI8FjN7H/l/Lu
 uVESAhxGUgcIwxlC2yudPZTCBl8HkWVRsooVQdL/mzPhp2sBl1QBMoYEt
 OWOKvDCIdnBUVcb3V7wDCcODkP19pj0F/rkaQna4RrL+MO9yM3+jLbnpA
 JYAsNYL6heuRgPG7gLauTFKobr9n+lpzUVX00gQ0Yvl1nnQEbXBQ/gb7w Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="300565827"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="300565827"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 17:59:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="703563413"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="703563413"
Received: from relo-linux-5.jf.intel.com ([10.165.21.143])
 by fmsmga008.fm.intel.com with ESMTP; 17 Nov 2022 17:59:13 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu, 17 Nov 2022 17:58:54 -0800
Message-Id: <20221118015858.2548106-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221118015858.2548106-1-John.C.Harrison@Intel.com>
References: <20221118015858.2548106-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915/gt: Start adding module
 oriented dmesg output
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

When trying to analyse bug reports from CI, customers, etc. it can be
difficult to work out exactly what is happening on which GT in a
multi-GT system. So add GT oriented debug/error message wrappers. If
used instead of the drm_ equivalents, you get the same output but with
a GT# prefix on it.

v2: Go back to using lower case names (combined review feedback).
Convert intel_gt.c as a first step.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 96 ++++++++++++++----------------
 drivers/gpu/drm/i915/gt/intel_gt.h | 35 +++++++++++
 2 files changed, 81 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 0325f071046ca..349fcfdd14a6d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -90,9 +90,8 @@ static int intel_gt_probe_lmem(struct intel_gt *gt)
 		if (err == -ENODEV)
 			return 0;
 
-		drm_err(&i915->drm,
-			"Failed to setup region(%d) type=%d\n",
-			err, INTEL_MEMORY_LOCAL);
+		gt_err(gt, "Failed to setup region(%d) type=%d\n",
+		       err, INTEL_MEMORY_LOCAL);
 		return err;
 	}
 
@@ -192,14 +191,14 @@ int intel_gt_init_hw(struct intel_gt *gt)
 
 	ret = i915_ppgtt_init_hw(gt);
 	if (ret) {
-		drm_err(&i915->drm, "Enabling PPGTT failed (%d)\n", ret);
+		gt_err(gt, "Enabling PPGTT failed (%d)\n", ret);
 		goto out;
 	}
 
 	/* We can't enable contexts until all firmware is loaded */
 	ret = intel_uc_init_hw(&gt->uc);
 	if (ret) {
-		i915_probe_error(i915, "Enabling uc failed (%d)\n", ret);
+		gt_probe_error(gt, "Enabling uc failed (%d)\n", ret);
 		goto out;
 	}
 
@@ -264,7 +263,7 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
 		 * some errors might have become stuck,
 		 * mask them.
 		 */
-		drm_dbg(&gt->i915->drm, "EIR stuck: 0x%08x, masking\n", eir);
+		gt_dbg(gt, "EIR stuck: 0x%08x, masking\n", eir);
 		rmw_set(uncore, EMR, eir);
 		intel_uncore_write(uncore, GEN2_IIR,
 				   I915_MASTER_ERROR_INTERRUPT);
@@ -298,16 +297,16 @@ static void gen6_check_faults(struct intel_gt *gt)
 	for_each_engine(engine, gt, id) {
 		fault = GEN6_RING_FAULT_REG_READ(engine);
 		if (fault & RING_FAULT_VALID) {
-			drm_dbg(&engine->i915->drm, "Unexpected fault\n"
-				"\tAddr: 0x%08lx\n"
-				"\tAddress space: %s\n"
-				"\tSource ID: %d\n"
-				"\tType: %d\n",
-				fault & PAGE_MASK,
-				fault & RING_FAULT_GTTSEL_MASK ?
-				"GGTT" : "PPGTT",
-				RING_FAULT_SRCID(fault),
-				RING_FAULT_FAULT_TYPE(fault));
+			gt_dbg(gt, "Unexpected fault\n"
+			       "\tAddr: 0x%08lx\n"
+			       "\tAddress space: %s\n"
+			       "\tSource ID: %d\n"
+			       "\tType: %d\n",
+			       fault & PAGE_MASK,
+			       fault & RING_FAULT_GTTSEL_MASK ?
+			       "GGTT" : "PPGTT",
+			       RING_FAULT_SRCID(fault),
+			       RING_FAULT_FAULT_TYPE(fault));
 		}
 	}
 }
@@ -334,17 +333,17 @@ static void xehp_check_faults(struct intel_gt *gt)
 		fault_addr = ((u64)(fault_data1 & FAULT_VA_HIGH_BITS) << 44) |
 			     ((u64)fault_data0 << 12);
 
-		drm_dbg(&gt->i915->drm, "Unexpected fault\n"
-			"\tAddr: 0x%08x_%08x\n"
-			"\tAddress space: %s\n"
-			"\tEngine ID: %d\n"
-			"\tSource ID: %d\n"
-			"\tType: %d\n",
-			upper_32_bits(fault_addr), lower_32_bits(fault_addr),
-			fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
-			GEN8_RING_FAULT_ENGINE_ID(fault),
-			RING_FAULT_SRCID(fault),
-			RING_FAULT_FAULT_TYPE(fault));
+		gt_dbg(gt, "Unexpected fault\n"
+		       "\tAddr: 0x%08x_%08x\n"
+		       "\tAddress space: %s\n"
+		       "\tEngine ID: %d\n"
+		       "\tSource ID: %d\n"
+		       "\tType: %d\n",
+		       upper_32_bits(fault_addr), lower_32_bits(fault_addr),
+		       fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
+		       GEN8_RING_FAULT_ENGINE_ID(fault),
+		       RING_FAULT_SRCID(fault),
+		       RING_FAULT_FAULT_TYPE(fault));
 	}
 }
 
@@ -375,17 +374,17 @@ static void gen8_check_faults(struct intel_gt *gt)
 		fault_addr = ((u64)(fault_data1 & FAULT_VA_HIGH_BITS) << 44) |
 			     ((u64)fault_data0 << 12);
 
-		drm_dbg(&uncore->i915->drm, "Unexpected fault\n"
-			"\tAddr: 0x%08x_%08x\n"
-			"\tAddress space: %s\n"
-			"\tEngine ID: %d\n"
-			"\tSource ID: %d\n"
-			"\tType: %d\n",
-			upper_32_bits(fault_addr), lower_32_bits(fault_addr),
-			fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
-			GEN8_RING_FAULT_ENGINE_ID(fault),
-			RING_FAULT_SRCID(fault),
-			RING_FAULT_FAULT_TYPE(fault));
+		gt_dbg(gt, "Unexpected fault\n"
+		       "\tAddr: 0x%08x_%08x\n"
+		       "\tAddress space: %s\n"
+		       "\tEngine ID: %d\n"
+		       "\tSource ID: %d\n"
+		       "\tType: %d\n",
+		       upper_32_bits(fault_addr), lower_32_bits(fault_addr),
+		       fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
+		       GEN8_RING_FAULT_ENGINE_ID(fault),
+		       RING_FAULT_SRCID(fault),
+		       RING_FAULT_FAULT_TYPE(fault));
 	}
 }
 
@@ -479,7 +478,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, size);
 	if (IS_ERR(obj)) {
-		drm_err(&i915->drm, "Failed to allocate scratch page\n");
+		gt_err(gt, "Failed to allocate scratch page\n");
 		return PTR_ERR(obj);
 	}
 
@@ -729,8 +728,7 @@ int intel_gt_init(struct intel_gt *gt)
 
 	err = intel_gt_init_hwconfig(gt);
 	if (err)
-		drm_err(&gt->i915->drm, "Failed to retrieve hwconfig table: %pe\n",
-			ERR_PTR(err));
+		gt_err(gt, "Failed to retrieve hwconfig table: %pe\n", ERR_PTR(err));
 
 	err = __engines_record_defaults(gt);
 	if (err)
@@ -891,7 +889,7 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 	gt->name = "Primary GT";
 	gt->info.engine_mask = RUNTIME_INFO(i915)->platform_engine_mask;
 
-	drm_dbg(&i915->drm, "Setting up %s\n", gt->name);
+	gt_dbg(gt, "Setting up %s\n", gt->name);
 	ret = intel_gt_tile_setup(gt, phys_addr);
 	if (ret)
 		return ret;
@@ -916,7 +914,7 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 		gt->info.engine_mask = gtdef->engine_mask;
 		gt->info.id = i;
 
-		drm_dbg(&i915->drm, "Setting up %s\n", gt->name);
+		gt_dbg(gt, "Setting up %s\n", gt->name);
 		if (GEM_WARN_ON(range_overflows_t(resource_size_t,
 						  gtdef->mapping_base,
 						  SZ_16M,
@@ -951,7 +949,7 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 	return 0;
 
 err:
-	i915_probe_error(i915, "Failed to initialize %s! (%d)\n", gtdef->name, ret);
+	gt_probe_error(gt, "Failed to initialize %s! (%d)\n", gtdef->name, ret);
 	intel_gt_release_all(i915);
 
 	return ret;
@@ -1004,8 +1002,7 @@ get_reg_and_bit(const struct intel_engine_cs *engine, const bool gen8,
 	const unsigned int class = engine->class;
 	struct reg_and_bit rb = { };
 
-	if (drm_WARN_ON_ONCE(&engine->i915->drm,
-			     class >= num || !regs[class].reg))
+	if (gt_WARN_ON_ONCE(engine->gt, class >= num || !regs[class].reg))
 		return rb;
 
 	rb.reg = regs[class];
@@ -1088,8 +1085,7 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 		return;
 	}
 
-	if (drm_WARN_ONCE(&i915->drm, !num,
-			  "Platform does not implement TLB invalidation!"))
+	if (gt_WARN_ONCE(gt, !num, "Platform does not implement TLB invalidation!"))
 		return;
 
 	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
@@ -1142,8 +1138,8 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 
 		if (wait_for_invalidate(gt, rb))
 			drm_err_ratelimited(&gt->i915->drm,
-					    "%s TLB invalidation did not complete in %ums!\n",
-					    engine->name, TLB_INVAL_TIMEOUT_MS);
+					    "GT%d: %s TLB invalidation did not complete in %ums!\n",
+					    gt->info.id, engine->name, TLB_INVAL_TIMEOUT_MS);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index e0365d5562484..5bf2d53f4b4d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -13,6 +13,41 @@
 struct drm_i915_private;
 struct drm_printer;
 
+#define gt_err(_gt, _fmt, ...) \
+	drm_err(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
+
+#define gt_warn(_gt, _fmt, ...) \
+	drm_warn(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
+
+#define gt_notice(_gt, _fmt, ...) \
+	drm_notice(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
+
+#define gt_info(_gt, _fmt, ...) \
+	drm_info(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
+
+#define gt_dbg(_gt, _fmt, ...) \
+	drm_dbg(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
+
+#define gt_probe_error(_gt, _fmt, ...) \
+	do { \
+		if (i915_error_injected()) \
+			gt_dbg(_gt, _fmt, ##__VA_ARGS__); \
+		else \
+			gt_err(_gt, _fmt, ##__VA_ARGS__); \
+	} while (0)
+
+#define gt_WARN_ON(_gt, _condition) \
+	gt_WARN(_gt, _condition, "%s", "gt_WARN_ON(" __stringify(_condition) ")")
+
+#define gt_WARN_ON_ONCE(_gt, _condition) \
+	gt_WARN_ONCE(_gt, _condition, "%s", "gt_WARN_ONCE(" __stringify(_condition) ")")
+
+#define gt_WARN(_gt, _condition, _fmt, ...) \
+	drm_WARN(&(_gt)->i915->drm, _condition, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
+
+#define gt_WARN_ONCE(_gt, _condition, _fmt, ...) \
+	drm_WARN_ONCE(&(_gt)->i915->drm, _condition, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
+
 #define GT_TRACE(gt, fmt, ...) do {					\
 	const struct intel_gt *gt__ __maybe_unused = (gt);		\
 	GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),		\
-- 
2.37.3

