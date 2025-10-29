Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70034C1D408
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 21:42:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 040CF10E83E;
	Wed, 29 Oct 2025 20:42:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bbMqYCs2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C07410E840
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 20:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761770550; x=1793306550;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TECnABXriVx4/JwCTmIKSx7hjh4Igb+HbXMpi7A/ztQ=;
 b=bbMqYCs27fXyVCIdSdRDq/SYhYULQaG+c6cGqRvvVSXyw5+VdfraXh9U
 NtefyB/KDzqmh6CvmTcnOXCUQQPASl9WzayxcWDzgK2t2k4iCHI+gqtw6
 RNfhu/t4S/zbeLlK3czP83HEautGgmXTtOrAb4dYYx5VBdG+rKjRyziaC
 tQeiZZ/4cXmGNtGuEUkl9byiABMYkOH3YZJcQusB0Sy440AwGGLzZoSxM
 03ITNVNT4P/yB/AFmx32+eSRrw4P1FC/PvgpFcjKUMnpM6eR3+4W/uH81
 kDV2s52QJBKvoZy38rZxx0pLPJ3a1EbJZ+j+z6AClAd84DObG0MwuLbTB Q==;
X-CSE-ConnectionGUID: E1xH0hEVTOSxb+P2ADI0VA==
X-CSE-MsgGUID: u2mVnUb5RC+jyOqMybopSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="64052993"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="64052993"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:42:30 -0700
X-CSE-ConnectionGUID: 8w5wYORfQLaYB6+/UJan9A==
X-CSE-MsgGUID: FmZf1VwLTiWy8FnYwG67EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="189839632"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:42:28 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/dram: Fix ICL DIMM_S decoding
Date: Wed, 29 Oct 2025 22:42:15 +0200
Message-ID: <20251029204215.12292-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
References: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Unfortunately the MAD_DIMM DIMM_S and DIMM_L bits on ICL are
not idential, so we are currently decoding DIMM_S incorrectly.

Fix the problem by defining the DIMM_S and DIMM_L bits separately.
And for consistency do that same for SKL, even though there the
bits do match between the two DIMMs. The result is rather
repetitive in places, but I didn't feel like obfuscatign things
with cpp macros/etc.

Broken decoding on Dell XPS 13 7390 2-in-1:
 CH0 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
 CH0 DIMM S size: 32 Gb, width: X32, ranks: 3, 16Gb+ DIMMs: no
 CH0 ranks: 2, 16Gb+ DIMMs: no
 CH1 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
 CH1 DIMM S size: 32 Gb, width: X32, ranks: 3, 16Gb+ DIMMs: no
 CH1 ranks: 2, 16Gb+ DIMMs: no
 Memory configuration is symmetric? no

Fixed decoding on Dell XPS 13 7390 2-in-1:
 CH0 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
 CH0 DIMM S size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
 CH0 ranks: 2, 16Gb+ DIMMs: no
 CH1 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
 CH1 DIMM S size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
 CH1 ranks: 2, 16Gb+ DIMMs: no
 Memory configuration is symmetric? yes

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_mchbar_regs.h |  53 +++++---
 drivers/gpu/drm/i915/soc/intel_dram.c    | 166 +++++++++++++++++------
 2 files changed, 155 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index a46a45b9d2e1..614d4017b57b 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -160,25 +160,40 @@
 
 #define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
 #define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5010)
-#define   SKL_DRAM_S_SHIFT			16
-#define   SKL_DRAM_RANK_MASK			REG_GENMASK(10, 10)
-#define   SKL_DRAM_RANK_1			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 0)
-#define   SKL_DRAM_RANK_2			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 1)
-#define   SKL_DRAM_WIDTH_MASK			REG_GENMASK(9, 8)
-#define   SKL_DRAM_WIDTH_X8			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 0)
-#define   SKL_DRAM_WIDTH_X16			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 1)
-#define   SKL_DRAM_WIDTH_X32			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 2)
-#define   SKL_DRAM_SIZE_MASK			REG_GENMASK(5, 0)
-#define   ICL_DRAM_RANK_MASK			REG_GENMASK(10, 9)
-#define   ICL_DRAM_RANK_1			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 0)
-#define   ICL_DRAM_RANK_2			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 1)
-#define   ICL_DRAM_RANK_3			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 2)
-#define   ICL_DRAM_RANK_4			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 3)
-#define   ICL_DRAM_WIDTH_MASK			REG_GENMASK(8, 7)
-#define   ICL_DRAM_WIDTH_X8			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 0)
-#define   ICL_DRAM_WIDTH_X16			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 1)
-#define   ICL_DRAM_WIDTH_X32			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 2)
-#define   ICL_DRAM_SIZE_MASK			REG_GENMASK(6, 0)
+#define   SKL_DIMM_S_RANK_MASK			REG_GENMASK(26, 26)
+#define   SKL_DIMM_S_RANK_1			REG_FIELD_PREP(SKL_DIMM_S_RANK_MASK, 0)
+#define   SKL_DIMM_S_RANK_2			REG_FIELD_PREP(SKL_DIMM_S_RANK_MASK, 1)
+#define   SKL_DIMM_S_WIDTH_MASK			REG_GENMASK(25, 24)
+#define   SKL_DIMM_S_WIDTH_X8			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK, 0)
+#define   SKL_DIMM_S_WIDTH_X16			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK, 1)
+#define   SKL_DIMM_S_WIDTH_X32			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK, 2)
+#define   SKL_DIMM_S_SIZE_MASK			REG_GENMASK(21, 16)
+#define   SKL_DIMM_L_RANK_MASK			REG_GENMASK(10, 10)
+#define   SKL_DIMM_L_RANK_1			REG_FIELD_PREP(SKL_DIMM_L_RANK_MASK, 0)
+#define   SKL_DIMM_L_RANK_2			REG_FIELD_PREP(SKL_DIMM_L_RANK_MASK, 1)
+#define   SKL_DIMM_L_WIDTH_MASK			REG_GENMASK(9, 8)
+#define   SKL_DIMM_L_WIDTH_X8			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK, 0)
+#define   SKL_DIMM_L_WIDTH_X16			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK, 1)
+#define   SKL_DIMM_L_WIDTH_X32			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK, 2)
+#define   SKL_DIMM_L_SIZE_MASK			REG_GENMASK(5, 0)
+#define   ICL_DIMM_S_RANK_MASK			REG_GENMASK(27, 26)
+#define   ICL_DIMM_S_RANK_1			REG_FIELD_PREP(ICL_DIMM_S_RANK_MASK, 0)
+#define   ICL_DIMM_S_RANK_2			REG_FIELD_PREP(ICL_DIMM_S_RANK_MASK, 1)
+#define   ICL_DIMM_S_WIDTH_MASK			REG_GENMASK(25, 24)
+#define   ICL_DIMM_S_WIDTH_X8			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK, 0)
+#define   ICL_DIMM_S_WIDTH_X16			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK, 1)
+#define   ICL_DIMM_S_WIDTH_X32			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK, 2)
+#define   ICL_DIMM_S_SIZE_MASK			REG_GENMASK(22, 16)
+#define   ICL_DIMM_L_RANK_MASK			REG_GENMASK(10, 9)
+#define   ICL_DIMM_L_RANK_1			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 0)
+#define   ICL_DIMM_L_RANK_2			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 1)
+#define   ICL_DIMM_L_RANK_3			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 2)
+#define   ICL_DIMM_L_RANK_4			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 3)
+#define   ICL_DIMM_L_WIDTH_MASK			REG_GENMASK(8, 7)
+#define   ICL_DIMM_L_WIDTH_X8			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK, 0)
+#define   ICL_DIMM_L_WIDTH_X16			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK, 1)
+#define   ICL_DIMM_L_WIDTH_X32			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK, 2)
+#define   ICL_DIMM_L_SIZE_MASK			REG_GENMASK(6, 0)
 
 #define SA_PERF_STATUS_0_0_0_MCHBAR_PC		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5918)
 #define  DG1_QCLK_RATIO_MASK			REG_GENMASK(9, 2)
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 768bede992bc..d8afc6963a48 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -266,69 +266,121 @@ static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
 }
 
 /* Returns total Gb for the whole DIMM */
-static int skl_get_dimm_size(u16 val)
+static int skl_get_dimm_s_size(u32 val)
 {
-	return REG_FIELD_GET(SKL_DRAM_SIZE_MASK, val) * 8;
+	return REG_FIELD_GET(SKL_DIMM_S_SIZE_MASK, val) * 8;
 }
 
-static int skl_get_dimm_width(u16 val)
+static int skl_get_dimm_l_size(u32 val)
 {
-	if (skl_get_dimm_size(val) == 0)
+	return REG_FIELD_GET(SKL_DIMM_L_SIZE_MASK, val) * 8;
+}
+
+static int skl_get_dimm_s_width(u32 val)
+{
+	if (skl_get_dimm_s_size(val) == 0)
+		return 0;
+
+	switch (val & SKL_DIMM_S_WIDTH_MASK) {
+	case SKL_DIMM_S_WIDTH_X8:
+	case SKL_DIMM_S_WIDTH_X16:
+	case SKL_DIMM_S_WIDTH_X32:
+		return 8 << REG_FIELD_GET(SKL_DIMM_S_WIDTH_MASK, val);
+	default:
+		MISSING_CASE(val);
+		return 0;
+	}
+}
+
+static int skl_get_dimm_l_width(u32 val)
+{
+	if (skl_get_dimm_l_size(val) == 0)
 		return 0;
 
-	switch (val & SKL_DRAM_WIDTH_MASK) {
-	case SKL_DRAM_WIDTH_X8:
-	case SKL_DRAM_WIDTH_X16:
-	case SKL_DRAM_WIDTH_X32:
-		val = REG_FIELD_GET(SKL_DRAM_WIDTH_MASK, val);
-		return 8 << val;
+	switch (val & SKL_DIMM_L_WIDTH_MASK) {
+	case SKL_DIMM_L_WIDTH_X8:
+	case SKL_DIMM_L_WIDTH_X16:
+	case SKL_DIMM_L_WIDTH_X32:
+		return 8 << REG_FIELD_GET(SKL_DIMM_L_WIDTH_MASK, val);
 	default:
 		MISSING_CASE(val);
 		return 0;
 	}
 }
 
-static int skl_get_dimm_ranks(u16 val)
+static int skl_get_dimm_s_ranks(u32 val)
 {
-	if (skl_get_dimm_size(val) == 0)
+	if (skl_get_dimm_s_size(val) == 0)
 		return 0;
 
-	val = REG_FIELD_GET(SKL_DRAM_RANK_MASK, val);
+	return REG_FIELD_GET(SKL_DIMM_S_RANK_MASK, val) + 1;
+}
+
+static int skl_get_dimm_l_ranks(u32 val)
+{
+	if (skl_get_dimm_l_size(val) == 0)
+		return 0;
 
-	return val + 1;
+	return REG_FIELD_GET(SKL_DIMM_L_RANK_MASK, val) + 1;
 }
 
 /* Returns total Gb for the whole DIMM */
-static int icl_get_dimm_size(u16 val)
+static int icl_get_dimm_s_size(u32 val)
 {
-	return REG_FIELD_GET(ICL_DRAM_SIZE_MASK, val) * 8 / 2;
+	return REG_FIELD_GET(ICL_DIMM_S_SIZE_MASK, val) * 8 / 2;
 }
 
-static int icl_get_dimm_width(u16 val)
+static int icl_get_dimm_l_size(u32 val)
 {
-	if (icl_get_dimm_size(val) == 0)
+	return REG_FIELD_GET(ICL_DIMM_L_SIZE_MASK, val) * 8 / 2;
+}
+
+static int icl_get_dimm_s_width(u32 val)
+{
+	if (icl_get_dimm_s_size(val) == 0)
+		return 0;
+
+	switch (val & ICL_DIMM_S_WIDTH_MASK) {
+	case ICL_DIMM_S_WIDTH_X8:
+	case ICL_DIMM_S_WIDTH_X16:
+	case ICL_DIMM_S_WIDTH_X32:
+		return 8 << REG_FIELD_GET(ICL_DIMM_S_WIDTH_MASK, val);
+	default:
+		MISSING_CASE(val);
+		return 0;
+	}
+}
+
+static int icl_get_dimm_l_width(u32 val)
+{
+	if (icl_get_dimm_l_size(val) == 0)
 		return 0;
 
-	switch (val & ICL_DRAM_WIDTH_MASK) {
-	case ICL_DRAM_WIDTH_X8:
-	case ICL_DRAM_WIDTH_X16:
-	case ICL_DRAM_WIDTH_X32:
-		val = REG_FIELD_GET(ICL_DRAM_WIDTH_MASK, val);
-		return 8 << val;
+	switch (val & ICL_DIMM_L_WIDTH_MASK) {
+	case ICL_DIMM_L_WIDTH_X8:
+	case ICL_DIMM_L_WIDTH_X16:
+	case ICL_DIMM_L_WIDTH_X32:
+		return 8 << REG_FIELD_GET(ICL_DIMM_L_WIDTH_MASK, val);
 	default:
 		MISSING_CASE(val);
 		return 0;
 	}
 }
 
-static int icl_get_dimm_ranks(u16 val)
+static int icl_get_dimm_s_ranks(u32 val)
 {
-	if (icl_get_dimm_size(val) == 0)
+	if (icl_get_dimm_s_size(val) == 0)
 		return 0;
 
-	val = REG_FIELD_GET(ICL_DRAM_RANK_MASK, val);
+	return REG_FIELD_GET(ICL_DIMM_S_RANK_MASK, val) + 1;
+}
+
+static int icl_get_dimm_l_ranks(u32 val)
+{
+	if (icl_get_dimm_l_size(val) == 0)
+		return 0;
 
-	return val + 1;
+	return REG_FIELD_GET(ICL_DIMM_L_RANK_MASK, val) + 1;
 }
 
 static bool
@@ -339,35 +391,59 @@ skl_is_16gb_dimm(const struct dram_dimm_info *dimm)
 }
 
 static void
-skl_dram_get_dimm_info(struct drm_i915_private *i915,
-		       struct dram_dimm_info *dimm,
-		       int channel, char dimm_name, u16 val)
+skl_dram_print_dimm_info(struct drm_i915_private *i915,
+			 struct dram_dimm_info *dimm,
+			 int channel, char dimm_name)
 {
-	if (GRAPHICS_VER(i915) >= 11) {
-		dimm->size = icl_get_dimm_size(val);
-		dimm->width = icl_get_dimm_width(val);
-		dimm->ranks = icl_get_dimm_ranks(val);
-	} else {
-		dimm->size = skl_get_dimm_size(val);
-		dimm->width = skl_get_dimm_width(val);
-		dimm->ranks = skl_get_dimm_ranks(val);
-	}
-
 	drm_dbg_kms(&i915->drm,
 		    "CH%u DIMM %c size: %u Gb, width: X%u, ranks: %u, 16Gb+ DIMMs: %s\n",
 		    channel, dimm_name, dimm->size, dimm->width, dimm->ranks,
 		    str_yes_no(skl_is_16gb_dimm(dimm)));
 }
 
+static void
+skl_dram_get_dimm_l_info(struct drm_i915_private *i915,
+			 struct dram_dimm_info *dimm,
+			 int channel, u32 val)
+{
+	if (GRAPHICS_VER(i915) >= 11) {
+		dimm->size = icl_get_dimm_l_size(val);
+		dimm->width = icl_get_dimm_l_width(val);
+		dimm->ranks = icl_get_dimm_l_ranks(val);
+	} else {
+		dimm->size = skl_get_dimm_l_size(val);
+		dimm->width = skl_get_dimm_l_width(val);
+		dimm->ranks = skl_get_dimm_l_ranks(val);
+	}
+
+	skl_dram_print_dimm_info(i915, dimm, channel, 'L');
+}
+
+static void
+skl_dram_get_dimm_s_info(struct drm_i915_private *i915,
+			 struct dram_dimm_info *dimm,
+			 int channel, u32 val)
+{
+	if (GRAPHICS_VER(i915) >= 11) {
+		dimm->size = icl_get_dimm_s_size(val);
+		dimm->width = icl_get_dimm_s_width(val);
+		dimm->ranks = icl_get_dimm_s_ranks(val);
+	} else {
+		dimm->size = skl_get_dimm_s_size(val);
+		dimm->width = skl_get_dimm_s_width(val);
+		dimm->ranks = skl_get_dimm_s_ranks(val);
+	}
+
+	skl_dram_print_dimm_info(i915, dimm, channel, 'S');
+}
+
 static int
 skl_dram_get_channel_info(struct drm_i915_private *i915,
 			  struct dram_channel_info *ch,
 			  int channel, u32 val)
 {
-	skl_dram_get_dimm_info(i915, &ch->dimm_l,
-			       channel, 'L', val & 0xffff);
-	skl_dram_get_dimm_info(i915, &ch->dimm_s,
-			       channel, 'S', val >> 16);
+	skl_dram_get_dimm_l_info(i915, &ch->dimm_l, channel, val);
+	skl_dram_get_dimm_s_info(i915, &ch->dimm_s, channel, val);
 
 	if (ch->dimm_l.size == 0 && ch->dimm_s.size == 0) {
 		drm_dbg_kms(&i915->drm, "CH%u not populated\n", channel);
-- 
2.49.1

