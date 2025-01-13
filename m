Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FF9A0B4DA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:54:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAE5710E63B;
	Mon, 13 Jan 2025 10:54:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e1ZTkBIh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF02410E647;
 Mon, 13 Jan 2025 10:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736765661; x=1768301661;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rimF8nK0vyB3FXldOnnuZ2BpfAXrSP/YgfaSbSBFCWs=;
 b=e1ZTkBIhbguVjLuI3Rwe69lOSRpoI2k2EiDWOfFyxM5dCLgKsztYHwZm
 5pZJCpENt33ms2NUsRKgp6BmDkoOG66+1PtBxkQfyhGAc91vpfx7aGOf7
 ooRD36TNHyvir6uvtY9kRWdfjdW9WJh/BEiC2vEJS84DwvX3BRVEQ+iRJ
 boHQuLrA6leJPLRFLRY+jGaK2RHRcb8zJDRrKJleUsFvb+Sy4hiLcSDwB
 akSoLoJnsEUHFn0l9vOX4qVzKmLHvLa6ueQDf39gHXTjt3+98rhv0Zea1
 mPVcPMIsjHqbuAYedX50DJOiEJRoer5oDaRS5PWhAmnAeicTrXJGqtWKM A==;
X-CSE-ConnectionGUID: IlycSn9+S5yYW2l5/W5jeg==
X-CSE-MsgGUID: Mn9TyXOxRvWX6X6MzSzVbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="54565162"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="54565162"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:54:21 -0800
X-CSE-ConnectionGUID: UxO4gm9hR+y6MtCnIZLJsw==
X-CSE-MsgGUID: fm2rLbtdQWee11CfeDps1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104955110"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa007.jf.intel.com with ESMTP; 13 Jan 2025 02:54:19 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v7 5/6] drm/i915/display: Add registers and compute the
 strength
Date: Mon, 13 Jan 2025 16:19:35 +0530
Message-Id: <20250113104936.1338290-6-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113104936.1338290-1-nemesa.garg@intel.com>
References: <20250113104936.1338290-1-nemesa.garg@intel.com>
MIME-Version: 1.0
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

Add new registers and related bits. Compute the strength
value and tap value based on display mode.

v2: Replace i915/dev_priv with display[Jani]
v3: Create separate file for defining register[Jani]
    Add display->drm in debug prints[Jani]
v4: Rebase
v5: Fix build issue
v6: Remove erraneous condition[Ankit]
v7: Change the place of compute function

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c     | 108 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_casf.h     |   7 ++
 .../gpu/drm/i915/display/intel_casf_regs.h    |  20 ++++
 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 4 files changed, 139 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index aff7aa6d3eb3..e918d6cb9911 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -17,6 +17,9 @@
 #define FILTER_COEFF_0_0 0
 #define SET_POSITIVE_SIGN(x) ((x) & (~SIGN))
 
+#define MAX_PIXELS_FOR_3_TAP_FILTER (1920 * 1080)
+#define MAX_PIXELS_FOR_5_TAP_FILTER (3840 * 2160)
+
 /**
  * DOC: Content Adaptive Sharpness Filter (CASF)
  *
@@ -64,6 +67,84 @@ static u16 casf_coef(struct intel_crtc_state *crtc_state, int t)
 	return coeff;
 }
 
+/* Default LUT values to be loaded one time. */
+static const u16 lut_data[] = {
+	4095, 2047, 1364, 1022, 816, 678, 579,
+	504, 444, 397, 357, 323, 293, 268, 244, 224,
+	204, 187, 170, 154, 139, 125, 111, 98, 85,
+	73, 60, 48, 36, 24, 12, 0
+};
+
+void intel_filter_lut_load(struct intel_crtc *crtc,
+			   const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int i;
+
+	intel_de_write(display, SHRPLUT_INDEX(crtc->pipe),
+		       INDEX_AUTO_INCR | INDEX_VALUE(0));
+
+	for (i = 0; i < ARRAY_SIZE(lut_data); i++)
+		intel_de_write(display, SHRPLUT_DATA(crtc->pipe),
+			       lut_data[i]);
+}
+
+static void intel_casf_size_compute(struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
+	u16 total_pixels = mode->hdisplay * mode->vdisplay;
+
+	if (total_pixels <= MAX_PIXELS_FOR_3_TAP_FILTER)
+		crtc_state->hw.casf_params.win_size = 0;
+	else if (total_pixels <= MAX_PIXELS_FOR_5_TAP_FILTER)
+		crtc_state->hw.casf_params.win_size = 1;
+	else
+		crtc_state->hw.casf_params.win_size = 2;
+}
+
+bool intel_casf_strength_changed(struct intel_crtc_state *new_crtc_state,
+				 const struct intel_crtc_state *old_crtc_state)
+{
+	if (new_crtc_state->uapi.sharpness_strength !=
+			old_crtc_state->uapi.sharpness_strength)
+		return true;
+
+	return false;
+}
+
+static void intel_casf_write_reg(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	u32 sharpness_ctl;
+	u8 val;
+
+	if (crtc_state->uapi.sharpness_strength == 0 ||
+	    crtc_state->pch_pfit.enabled) {
+		intel_casf_disable(crtc_state);
+
+		return;
+	}
+
+	/*
+	 * HW takes a value in form (1.0 + strength) in 4.4 fixed format.
+	 * Strength is from 0.0-14.9375 ie from 0-239.
+	 * User can give value from 0-255 but is clamped to 239.
+	 * Ex. User gives 85 which is 5.3125 and adding 1.0 gives 6.3125.
+	 * 6.3125 in 4.4 format is 01100101 which is equal to 101.
+	 * Also 85 + 16 = 101.
+	 */
+	val = min(crtc_state->uapi.sharpness_strength, 0xEF) + 0x10;
+
+	drm_dbg(display->drm, "Filter strength value: %d\n", val);
+
+	sharpness_ctl = FILTER_EN | FILTER_STRENGTH(val) |
+		FILTER_SIZE(crtc_state->hw.casf_params.win_size);
+
+	intel_de_write(display, SHARPNESS_CTL(crtc->pipe),
+		       sharpness_ctl);
+}
+
 static void intel_casf_write_coeff(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -96,6 +177,8 @@ static void intel_casf_write_coeff(struct intel_crtc_state *crtc_state)
 
 void intel_casf_enable(struct intel_crtc_state *crtc_state)
 {
+	intel_casf_write_reg(crtc_state);
+
 	intel_casf_write_coeff(crtc_state);
 
 	skl_scaler_setup_casf(crtc_state);
@@ -103,8 +186,24 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state)
 
 int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (crtc_state->uapi.sharpness_strength == 0) {
+		crtc_state->hw.casf_params.need_scaler = false;
+		return 0;
+	}
+
+	if (crtc_state->pch_pfit.enabled)
+		return -EINVAL;
+
 	crtc_state->hw.casf_params.need_scaler = true;
 
+	intel_casf_size_compute(crtc_state);
+	drm_dbg(display->drm, "Tap Size: %d\n",
+		crtc_state->hw.casf_params.win_size);
+
+	intel_casf_scaler_compute_config(crtc_state);
+
 	return 0;
 }
 
@@ -149,3 +248,12 @@ void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
 					      filter_coeff[i]);
 	}
 }
+
+void intel_casf_disable(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), 0);
+	drm_dbg(display->drm, "Filter strength value: %d\n", 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
index 568e0f8083eb..43660e48ecff 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.h
+++ b/drivers/gpu/drm/i915/display/intel_casf.h
@@ -9,9 +9,16 @@
 #include <linux/types.h>
 
 struct intel_crtc_state;
+struct intel_atomic_state;
+struct intel_crtc;
 
 void intel_casf_enable(struct intel_crtc_state *crtc_state);
 void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
 int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
+void intel_filter_lut_load(struct intel_crtc *crtc,
+			   const struct intel_crtc_state *crtc_state);
+bool intel_casf_strength_changed(struct intel_crtc_state *new_crtc_state,
+				 const struct intel_crtc_state *old_crtc_state);
+void intel_casf_disable(struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CASF_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_casf_regs.h b/drivers/gpu/drm/i915/display/intel_casf_regs.h
index 0b3fcdb22c0c..b4be252a9671 100644
--- a/drivers/gpu/drm/i915/display/intel_casf_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_casf_regs.h
@@ -15,5 +15,25 @@
 #define MANTISSA_MASK			REG_GENMASK(11, 3)
 #define MANTISSA(x)			REG_FIELD_PREP(MANTISSA_MASK, (x))
 
+#define _SHARPNESS_CTL_A		0x682B0
+#define _SHARPNESS_CTL_B		0x68AB0
+#define SHARPNESS_CTL(pipe)		_MMIO_PIPE(pipe, _SHARPNESS_CTL_A, _SHARPNESS_CTL_B)
+#define   FILTER_EN			REG_BIT(31)
+#define   FILTER_STRENGTH_MASK		REG_GENMASK(15, 8)
+#define   FILTER_STRENGTH(x)		REG_FIELD_PREP(FILTER_STRENGTH_MASK, (x))
+#define   FILTER_SIZE_MASK		REG_GENMASK(1, 0)
+#define   FILTER_SIZE(x)		REG_FIELD_PREP(FILTER_SIZE_MASK, (x))
+
+#define _SHRPLUT_DATA_A			0x682B8
+#define _SHRPLUT_DATA_B			0x68AB8
+#define SHRPLUT_DATA(pipe)		_MMIO_PIPE(pipe, _SHRPLUT_DATA_A, _SHRPLUT_DATA_B)
+
+#define _SHRPLUT_INDEX_A		0x682B4
+#define _SHRPLUT_INDEX_B		0x68AB4
+#define SHRPLUT_INDEX(pipe)		_MMIO_PIPE(pipe, _SHRPLUT_INDEX_A, _SHRPLUT_INDEX_B)
+#define   INDEX_AUTO_INCR		REG_BIT(10)
+#define   INDEX_VALUE_MASK		REG_GENMASK(4, 0)
+#define   INDEX_VALUE(x)		REG_FIELD_PREP(INDEX_VALUE_MASK, (x))
+
 #endif /* __INTEL_CASF_REGS__ */
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index beef3a76eba4..7ab885fad189 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4582,6 +4582,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		return ret;
 	}
 
+	ret = intel_casf_compute_config(crtc_state);
+	if (ret)
+		return ret;
+
 	if (DISPLAY_VER(dev_priv) >= 9) {
 		if (intel_crtc_needs_modeset(crtc_state) ||
 		    intel_crtc_needs_fastset(crtc_state) ||
@@ -6179,8 +6183,6 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
-		intel_casf_scaler_compute_config(new_crtc_state);
-
 		/*
 		 * On some platforms the number of active planes affects
 		 * the planes' minimum cdclk calculation. Add such planes
-- 
2.25.1

