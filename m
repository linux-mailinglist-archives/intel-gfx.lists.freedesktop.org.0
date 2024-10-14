Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6F499C84E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 13:12:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB96D10E427;
	Mon, 14 Oct 2024 11:12:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WTJqgMM4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70D0410E423
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 11:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728904350; x=1760440350;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eo1h7RSJ4MUBsEg/6VOyn9lm/TPRO6+4mv20fCmOljA=;
 b=WTJqgMM41IgsMxiyn5ZUU8wdv2LALkKHfDTGw9HNH0eIktIEtcr81l3V
 /xs5TYQiaI2JYAIGNKax76bVtLv7kAvGNWv+tIplj0wGmXqZ/63IlJbcy
 ai/6mC1piLO6aqUuf4Lee7t9D+ujwEFCkXarK+AFN0y+PInISGtY3QK2V
 lfyMvb0XzA0YNHsXvj04g9zkdjNbLHE7s8XjZtuwfsGX6jxOU57fs5G/u
 110q9izzqU21UErRYD0hCg49c5efkeZiM306SQFIvrEyapahpMSvdoZ4F
 C1vpjKxv6FcBl/APzznyNPZWZx9clQMt3jr2B6VQgaTqcovXEkyZ7AQTC A==;
X-CSE-ConnectionGUID: YFXzNSy6TSuxNYOFlxmGLA==
X-CSE-MsgGUID: WaA+j4ZBR2i3AmLX34yjwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="28377953"
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="28377953"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 04:12:29 -0700
X-CSE-ConnectionGUID: 9ysA2lYZRk6WAW6gl1GPfA==
X-CSE-MsgGUID: klFJyhnsS2SaixjGm7kpZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77473341"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa010.jf.intel.com with ESMTP; 14 Oct 2024 04:12:28 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v3 4/5] drm/i915/display: Add registers and compute the
 strength
Date: Mon, 14 Oct 2024 16:43:01 +0530
Message-Id: <20241014111302.95362-5-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241014111302.95362-1-nemesa.garg@intel.com>
References: <20241014111302.95362-1-nemesa.garg@intel.com>
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

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c     | 108 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_casf.h     |   7 ++
 .../gpu/drm/i915/display/intel_casf_regs.h    |  17 +++
 drivers/gpu/drm/i915/display/intel_display.c  |   7 ++
 4 files changed, 139 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 41579bd94383..5bc6b1d46692 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -53,12 +53,89 @@ static u16 casf_coef(struct intel_crtc_state *crtc_state, int t)
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
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	int i;
+
+	intel_de_write(display, SHRPLUT_INDEX(display, cpu_transcoder), INDEX_AUTO_INCR | INDEX_VALUE(0));
+
+	for (i = 0; i < ARRAY_SIZE(lut_data); i++)
+		intel_de_write(display, SHRPLUT_DATA(display, cpu_transcoder), lut_data[i]);
+}
+
+static void intel_casf_size_compute(struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
+
+	if (mode->hdisplay <= 1920 && mode->vdisplay <= 1200)
+		crtc_state->hw.casf_params.win_size = 0;
+	else if (mode->hdisplay <= 3840 && mode->vdisplay <= 2400)
+		crtc_state->hw.casf_params.win_size = 1;
+	else
+		crtc_state->hw.casf_params.win_size = 2;
+}
+
+bool intel_casf_strength_changed(struct intel_atomic_state *state)
+{
+	int i;
+	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
+	struct intel_crtc *crtc;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		if (new_crtc_state->uapi.sharpness_strength !=
+				old_crtc_state->uapi.sharpness_strength)
+			return true;
+	}
+
+	return false;
+}
+
 void intel_casf_enable(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	int id = crtc_state->scaler_state.scaler_id;
 	int i;
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
+	sharpness_ctl =	FILTER_EN | FILTER_STRENGTH(val) |
+		FILTER_SIZE(crtc_state->hw.casf_params.win_size);
+
+	intel_de_write(display, SHARPNESS_CTL(display, cpu_transcoder),
+		       sharpness_ctl);
 
 	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id, 0),
 			  PS_COEF_INDEX_AUTO_INC);
@@ -87,9 +164,23 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state)
 
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
 	if (!crtc_state->pch_pfit.enabled)
 		crtc_state->hw.casf_params.need_scaler = true;
 
+	intel_casf_size_compute(crtc_state);
+	drm_dbg(display->drm, "Tap Size: %d\n",
+		crtc_state->hw.casf_params.win_size);
+
 	return 0;
 }
 
@@ -139,3 +230,20 @@ void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
 {
 	intel_casf_coeff(crtc_state);
 }
+
+void intel_casf_disable(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_de_write(display, SHARPNESS_CTL(display, cpu_transcoder), 0);
+	drm_dbg(display->drm, "Filter strength value: %d\n", 0);
+}
+
+bool intel_casf_compute(struct intel_crtc_state *crtc_state)
+{
+	if (!(FILTER_EN & 1) && crtc_state->uapi.sharpness_strength != 0)
+		return true;
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
index 568e0f8083eb..05b0abddd917 100644
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
+bool intel_casf_strength_changed(struct intel_atomic_state *state);
+void intel_casf_disable(struct intel_crtc_state *crtc_state);
+bool intel_casf_compute(struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CASF_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_casf_regs.h b/drivers/gpu/drm/i915/display/intel_casf_regs.h
index 0b3fcdb22c0c..fb92978e386a 100644
--- a/drivers/gpu/drm/i915/display/intel_casf_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_casf_regs.h
@@ -15,5 +15,22 @@
 #define MANTISSA_MASK			REG_GENMASK(11, 3)
 #define MANTISSA(x)			REG_FIELD_PREP(MANTISSA_MASK, (x))
 
+#define _SHARPNESS_CTL_A                0x682B0
+#define SHARPNESS_CTL(display, trans)   _MMIO_PIPE2(display, trans, _SHARPNESS_CTL_A)
+#define   FILTER_EN                     REG_BIT(31)
+#define   FILTER_STRENGTH_MASK          REG_GENMASK(15, 8)
+#define   FILTER_STRENGTH(x)            REG_FIELD_PREP(FILTER_STRENGTH_MASK, (x))
+#define   FILTER_SIZE_MASK              REG_GENMASK(1, 0)
+#define   FILTER_SIZE(x)                REG_FIELD_PREP(FILTER_SIZE_MASK, (x))
+
+#define _SHRPLUT_DATA_A                 0x682B8
+#define SHRPLUT_DATA(display, trans)    _MMIO_PIPE2(display, trans, _SHRPLUT_DATA_A)
+
+#define _SHRPLUT_INDEX_A                0x682B4
+#define SHRPLUT_INDEX(display, trans)   _MMIO_PIPE2(display, trans, _SHRPLUT_INDEX_A)
+#define   INDEX_AUTO_INCR               REG_BIT(10)
+#define   INDEX_VALUE_MASK              REG_GENMASK(4, 0)
+#define   INDEX_VALUE(x)                REG_FIELD_PREP(INDEX_VALUE_MASK, (x))
+
 #endif /* __INTEL_CASF_REGS__ */
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d222e7aa90a9..f85ed0c9a94d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5924,6 +5924,13 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 
 		intel_casf_scaler_compute_config(new_crtc_state);
 
+		if (intel_casf_compute(new_crtc_state)) {
+			intel_casf_scaler_compute_config(new_crtc_state);
+			ret = intel_casf_compute_config(new_crtc_state);
+			if (ret)
+				return ret;
+		}
+
 		/*
 		 * On some platforms the number of active planes affects
 		 * the planes' minimum cdclk calculation. Add such planes
-- 
2.25.1

