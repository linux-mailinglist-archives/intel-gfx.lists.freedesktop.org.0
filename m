Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE483C7CA0
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106056E17C;
	Wed, 14 Jul 2021 03:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61DE86E176
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210256268"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="210256268"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031523"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:13 -0700
Message-Id: <20210714031540.3539704-24-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 23/50] drm/i915/dg2: add DG2 platform info
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

DG2 has Xe_LPD display (version 13) and Xe_HPG (version 12.55) graphics.
There are two variants (treated as subplatforms in the code):  DG2-G10
and DG2-G11 that require independent programming in some areas (e.g.,
workarounds).

Bspec: 44472, 44474, 46197, 48028, 48077
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 27 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_pci.c          | 16 ++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.c |  1 +
 drivers/gpu/drm/i915/intel_device_info.h |  5 +++++
 drivers/gpu/drm/i915/intel_step.c        | 20 +++++++++++++++++-
 5 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 24181aa36efb..714b0bd1ae0e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1454,6 +1454,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
 #define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_P)
 #define IS_XEHPSDV(dev_priv) IS_PLATFORM(dev_priv, INTEL_XEHPSDV)
+#define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, INTEL_DG2)
+#define IS_DG2_G10(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G10)
+#define IS_DG2_G11(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(dev_priv) \
@@ -1615,6 +1620,28 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_XEHPSDV_GT_STEP(p, since, until) \
 	(IS_XEHPSDV(p) && IS_GT_STEP(__i915, since, until))
 
+/*
+ * DG2 hardware steppings are a bit unusual.  The hardware design was forked
+ * to create two variants (G10 and G11) which have distinct workaround sets.
+ * The G11 fork of the DG2 design resets the GT stepping back to "A0" for its
+ * first iteration, even though it's more similar to a G10 B0 stepping in terms
+ * of functionality and workarounds.  However the display stepping does not
+ * reset in the same manner --- a specific stepping like "B0" has a consistent
+ * meaning regardless of whether it belongs to a G10 or G11 DG2.
+ *
+ * TLDR:  All GT workarounds and stepping-specific logic must be applied in
+ * relation to a specific subplatform (G10 or G11), whereas display workarounds
+ * and stepping-specific logic will be applied with a general DG2-wide stepping
+ * number.
+ */
+#define IS_DG2_GT_STEP(__i915, variant, since, until) \
+	(IS_SUBPLATFORM(__i915, INTEL_DG2, INTEL_SUBPLATFORM_##variant) && \
+	 IS_GT_STEP(__i915, since, until))
+
+#define IS_DG2_DISP_STEP(__i915, since, until) \
+	(IS_DG2(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))
+
 #define IS_LP(dev_priv)		(INTEL_INFO(dev_priv)->is_lp)
 #define IS_GEN9_LP(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && IS_LP(dev_priv))
 #define IS_GEN9_BC(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && !IS_LP(dev_priv))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 07c57d8f3a9c..7106b81b1e71 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1040,6 +1040,22 @@ static const struct intel_device_info xehpsdv_info = {
 	.require_force_probe = 1,
 };
 
+__maybe_unused
+static const struct intel_device_info dg2_info = {
+	XE_HP_FEATURES,
+	XE_HPM_FEATURES,
+	XE_LPD_FEATURES,
+	DGFX_FEATURES,
+	.graphics_rel = 55,
+	.media_rel = 55,
+	PLATFORM(INTEL_DG2),
+	.platform_engine_mask =
+		BIT(RCS0) | BIT(BCS0) |
+		BIT(VECS0) | BIT(VECS1) |
+		BIT(VCS0) | BIT(VCS2),
+	.require_force_probe = 1,
+};
+
 #undef PLATFORM
 
 /*
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index b750f9ded9d5..822a26b574a9 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -69,6 +69,7 @@ static const char * const platform_names[] = {
 	PLATFORM_NAME(ALDERLAKE_S),
 	PLATFORM_NAME(ALDERLAKE_P),
 	PLATFORM_NAME(XEHPSDV),
+	PLATFORM_NAME(DG2),
 };
 #undef PLATFORM_NAME
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 690a0d2812bb..2177372f9ac3 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -89,6 +89,7 @@ enum intel_platform {
 	INTEL_ALDERLAKE_S,
 	INTEL_ALDERLAKE_P,
 	INTEL_XEHPSDV,
+	INTEL_DG2,
 	INTEL_MAX_PLATFORMS
 };
 
@@ -107,6 +108,10 @@ enum intel_platform {
 /* CNL/ICL */
 #define INTEL_SUBPLATFORM_PORTF	(0)
 
+/* DG2 */
+#define INTEL_SUBPLATFORM_G10	0
+#define INTEL_SUBPLATFORM_G11	1
+
 enum intel_ppgtt_type {
 	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
 	INTEL_PPGTT_ALIASING = I915_GEM_PPGTT_ALIASING,
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index a27a41caed70..aded5c9769f5 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -61,6 +61,18 @@ static const struct intel_step_info xehpsdv_revid_step_tbl[] = {
 	[0x8] = { .gt_step = STEP_C0 },
 };
 
+static const struct intel_step_info dg2_g10_revid_step_tbl[] = {
+	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[0x1] = { .gt_step = STEP_A1, .display_step = STEP_A0 },
+	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+	[0x8] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
+};
+
+static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
+	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_B0 },
+	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
+};
+
 void intel_step_init(struct drm_i915_private *i915)
 {
 	const struct intel_step_info *revids = NULL;
@@ -68,7 +80,13 @@ void intel_step_init(struct drm_i915_private *i915)
 	int revid = INTEL_REVID(i915);
 	struct intel_step_info step = {};
 
-	if (IS_XEHPSDV(i915)) {
+	if (IS_DG2_G10(i915)) {
+		revids = dg2_g10_revid_step_tbl;
+		size = ARRAY_SIZE(dg2_g10_revid_step_tbl);
+	} else if (IS_DG2_G11(i915)) {
+		revids = dg2_g11_revid_step_tbl;
+		size = ARRAY_SIZE(dg2_g11_revid_step_tbl);
+	} else if (IS_XEHPSDV(i915)) {
 		revids = xehpsdv_revid_step_tbl;
 		size = ARRAY_SIZE(xehpsdv_revid_step_tbl);
 	} else if (IS_ALDERLAKE_P(i915)) {
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
