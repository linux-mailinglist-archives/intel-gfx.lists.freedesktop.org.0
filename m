Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D453D3EF6
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2041F6FB99;
	Fri, 23 Jul 2021 17:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13CC36FB97
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:42:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="275742919"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="275742919"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="463229040"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 10:42:11 -0700
Message-Id: <20210723174239.1551352-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210723174239.1551352-1-matthew.d.roper@intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 02/30] drm/i915/xehp: Extra media engines -
 Part 1 (engine definitions)
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Xe_HP can have a lot of extra media engines. This patch adds the basic
definitions for them.

v2:
 - Re-order intel_gt_info and intel_device_info slightly to avoid
   unnecessary padding now that we've increased the size of
   intel_engine_mask_t.  (Tvrtko)
v3:
 - Drop the .hw_id assignments.  (Lucas)

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c     |  7 ++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 44 ++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 14 +++++--
 drivers/gpu/drm/i915/gt/intel_gt_types.h     |  5 ++-
 drivers/gpu/drm/i915/i915_pci.c              |  5 ++-
 drivers/gpu/drm/i915/i915_reg.h              |  6 +++
 drivers/gpu/drm/i915/intel_device_info.h     |  3 +-
 7 files changed, 71 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index b29eb9fd0009..461844dffd7e 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -279,7 +279,7 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
 	if (mode & EMIT_INVALIDATE)
 		aux_inv = rq->engine->mask & ~BIT(BCS0);
 	if (aux_inv)
-		cmd += 2 * hweight8(aux_inv) + 2;
+		cmd += 2 * hweight32(aux_inv) + 2;
 
 	cs = intel_ring_begin(rq, cmd);
 	if (IS_ERR(cs))
@@ -313,9 +313,8 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
 		struct intel_engine_cs *engine;
 		unsigned int tmp;
 
-		*cs++ = MI_LOAD_REGISTER_IMM(hweight8(aux_inv));
-		for_each_engine_masked(engine, rq->engine->gt,
-				       aux_inv, tmp) {
+		*cs++ = MI_LOAD_REGISTER_IMM(hweight32(aux_inv));
+		for_each_engine_masked(engine, rq->engine->gt, aux_inv, tmp) {
 			*cs++ = i915_mmio_reg_offset(aux_inv_reg(engine));
 			*cs++ = AUX_INV;
 		}
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 4168b9fc59e1..1fc1bd4ad5e3 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -101,6 +101,34 @@ static const struct engine_info intel_engines[] = {
 			{ .graphics_ver = 11, .base = GEN11_BSD4_RING_BASE }
 		},
 	},
+	[VCS4] = {
+		.class = VIDEO_DECODE_CLASS,
+		.instance = 4,
+		.mmio_bases = {
+			{ .graphics_ver = 11, .base = XEHP_BSD5_RING_BASE }
+		},
+	},
+	[VCS5] = {
+		.class = VIDEO_DECODE_CLASS,
+		.instance = 5,
+		.mmio_bases = {
+			{ .graphics_ver = 12, .base = XEHP_BSD6_RING_BASE }
+		},
+	},
+	[VCS6] = {
+		.class = VIDEO_DECODE_CLASS,
+		.instance = 6,
+		.mmio_bases = {
+			{ .graphics_ver = 12, .base = XEHP_BSD7_RING_BASE }
+		},
+	},
+	[VCS7] = {
+		.class = VIDEO_DECODE_CLASS,
+		.instance = 7,
+		.mmio_bases = {
+			{ .graphics_ver = 12, .base = XEHP_BSD8_RING_BASE }
+		},
+	},
 	[VECS0] = {
 		.gen6_hw_id = VECS0_HW,
 		.class = VIDEO_ENHANCEMENT_CLASS,
@@ -117,6 +145,20 @@ static const struct engine_info intel_engines[] = {
 			{ .graphics_ver = 11, .base = GEN11_VEBOX2_RING_BASE }
 		},
 	},
+	[VECS2] = {
+		.class = VIDEO_ENHANCEMENT_CLASS,
+		.instance = 2,
+		.mmio_bases = {
+			{ .graphics_ver = 12, .base = XEHP_VEBOX3_RING_BASE }
+		},
+	},
+	[VECS3] = {
+		.class = VIDEO_ENHANCEMENT_CLASS,
+		.instance = 3,
+		.mmio_bases = {
+			{ .graphics_ver = 12, .base = XEHP_VEBOX4_RING_BASE }
+		},
+	},
 };
 
 /**
@@ -265,6 +307,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 
 	BUILD_BUG_ON(MAX_ENGINE_CLASS >= BIT(GEN11_ENGINE_CLASS_WIDTH));
 	BUILD_BUG_ON(MAX_ENGINE_INSTANCE >= BIT(GEN11_ENGINE_INSTANCE_WIDTH));
+	BUILD_BUG_ON(I915_MAX_VCS > (MAX_ENGINE_INSTANCE + 1));
+	BUILD_BUG_ON(I915_MAX_VECS > (MAX_ENGINE_INSTANCE + 1));
 
 	if (GEM_DEBUG_WARN_ON(id >= ARRAY_SIZE(gt->engine)))
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 266422d8d1b1..8f1f2f12d6f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -42,7 +42,7 @@
 #define COPY_ENGINE_CLASS	3
 #define OTHER_CLASS		4
 #define MAX_ENGINE_CLASS	4
-#define MAX_ENGINE_INSTANCE	3
+#define MAX_ENGINE_INSTANCE	7
 
 #define I915_MAX_SLICES	3
 #define I915_MAX_SUBSLICES 8
@@ -60,7 +60,7 @@ struct intel_gt;
 struct intel_ring;
 struct intel_uncore;
 
-typedef u8 intel_engine_mask_t;
+typedef u32 intel_engine_mask_t;
 #define ALL_ENGINES ((intel_engine_mask_t)~0ul)
 
 struct intel_hw_status_page {
@@ -97,8 +97,8 @@ struct i915_ctx_workarounds {
 	struct i915_vma *vma;
 };
 
-#define I915_MAX_VCS	4
-#define I915_MAX_VECS	2
+#define I915_MAX_VCS	8
+#define I915_MAX_VECS	4
 
 /*
  * Engine IDs definitions.
@@ -111,9 +111,15 @@ enum intel_engine_id {
 	VCS1,
 	VCS2,
 	VCS3,
+	VCS4,
+	VCS5,
+	VCS6,
+	VCS7,
 #define _VCS(n) (VCS0 + (n))
 	VECS0,
 	VECS1,
+	VECS2,
+	VECS3,
 #define _VECS(n) (VECS0 + (n))
 	I915_NUM_ENGINES
 #define INVALID_ENGINE ((enum intel_engine_id)-1)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index d93d578a4105..97a5075288d2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -174,13 +174,14 @@ struct intel_gt {
 
 	struct intel_gt_info {
 		intel_engine_mask_t engine_mask;
+
+		u32 l3bank_mask;
+
 		u8 num_engines;
 
 		/* Media engine access to SFC per instance */
 		u8 vdbox_sfc_access;
 
-		u32 l3bank_mask;
-
 		/* Slice/subslice/EU info */
 		struct sseu_dev_info sseu;
 	} info;
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 48ea23dd3b5b..f28206484552 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1033,8 +1033,9 @@ static const struct intel_device_info xehpsdv_info = {
 	.pipe_mask = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
-		BIT(VECS0) | BIT(VECS1) |
-		BIT(VCS0) | BIT(VCS1) | BIT(VCS2) | BIT(VCS3),
+		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
+		BIT(VCS0) | BIT(VCS1) | BIT(VCS2) | BIT(VCS3) |
+		BIT(VCS4) | BIT(VCS5) | BIT(VCS6) | BIT(VCS7),
 	.require_force_probe = 1,
 };
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8e1392028184..143f2fabc07b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2516,9 +2516,15 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN11_BSD2_RING_BASE	0x1c4000
 #define GEN11_BSD3_RING_BASE	0x1d0000
 #define GEN11_BSD4_RING_BASE	0x1d4000
+#define XEHP_BSD5_RING_BASE	0x1e0000
+#define XEHP_BSD6_RING_BASE	0x1e4000
+#define XEHP_BSD7_RING_BASE	0x1f0000
+#define XEHP_BSD8_RING_BASE	0x1f4000
 #define VEBOX_RING_BASE		0x1a000
 #define GEN11_VEBOX_RING_BASE		0x1c8000
 #define GEN11_VEBOX2_RING_BASE		0x1d8000
+#define XEHP_VEBOX3_RING_BASE		0x1e8000
+#define XEHP_VEBOX4_RING_BASE		0x1f8000
 #define BLT_RING_BASE		0x22000
 #define RING_TAIL(base)		_MMIO((base) + 0x30)
 #define RING_HEAD(base)		_MMIO((base) + 0x34)
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 616ccec41d76..121d6d9afd3a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -172,7 +172,6 @@ struct intel_device_info {
 	u8 media_ver;
 	u8 media_rel;
 
-	u8 gt; /* GT number, 0 if undefined */
 	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
 
 	enum intel_platform platform;
@@ -188,6 +187,8 @@ struct intel_device_info {
 
 	u32 display_mmio_offset;
 
+	u8 gt; /* GT number, 0 if undefined */
+
 	u8 pipe_mask;
 	u8 cpu_transcoder_mask;
 
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
