Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 867606867AA
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 14:54:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75CE10E149;
	Wed,  1 Feb 2023 13:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B69F910E149
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 13:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675259641; x=1706795641;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qbVF7XE7o0RdkiJHYjugXTuMNA8KjDz16weoMlUtNWY=;
 b=TQHxIJGYr1OsZwVDhKm5U5YS6yzc2vUp2WbDVFWXNqzo8wbnr6ssmOsY
 b9Ps/wL56tzzlHc5j7f8ypzecnsUYfQTPuTrlVBVZZEGHj/7RcJf1TssM
 TgV3qrGEOs1XgmYFQpLg3Ux4sAWjHj3+OocVU7j8uQ214csslEQ8q83s2
 V7r16DWTXRN1yVtoJeey8iJ7DNXN5wqNLhSbuQjAfqsezmmnSBfh96Wwz
 GOAGDGUVvC84K9OAbQ7k+PoGD+243/h4DavA1onYyeLmSDFwuTxGv9HfR
 1YNwIjBzKx/EpR5RnJuAHENX1FKh2zmeZN/ZM6u7p7YHHq4wuwaKQTyTe A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="414353064"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="414353064"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 05:53:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="753689565"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="753689565"
Received: from ktykarsk-mobl.ger.corp.intel.com (HELO
 kveik.ger.corp.intel.com) ([10.252.34.112])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 05:53:46 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Feb 2023 15:53:29 +0200
Message-Id: <20230201135329.514677-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC] drm/i915: make dev_priv usage explitic in some
 macros
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
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are a few macros (e.g. DPLL()) that implicitly use dev_priv, by
using other macros that implcitily use dev_priv.

In an effort to align all definitions of struct drm_i915_private to be
declared as i915 instead of arbitrarily using either i915 or dev_priv,
we need to make these macros explicitly use dev_priv, so that we can
change them later to be defined as i915.

In order to find and change all occurrences, the following semantic
patch rules were used:

@macros_noargs@
identifier m;
expression e =~ "dev_priv";
@@

@nested_macros@
identifier macros_noargs.m;
identifier nm;
identifier list il;
@@

@@
identifier nested_macros.nm;
identifier dev_priv, f;
expression list el;
@@
f(...) {
	...
	struct drm_i915_private *dev_priv = ...;

	<+...
	nm(
+	dev_priv,
	el)
	...+>
}

@@
identifier nested_macros.nm;
identifier dev_priv, f;
expression list el;
@@
f(..., struct drm_i915_private *dev_priv, ...) {
	<+...
	nm(
+	dev_priv,
	el)
	...+>
}

@@
identifier nested_macros.nm;
identifier list il;
expression e;
@@
-#define nm(il) e
+#define nm(dev_priv,il) e

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  34 ++-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |  22 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  40 +--
 drivers/gpu/drm/i915/display/intel_dpll.c     |  57 ++--
 drivers/gpu/drm/i915/display/intel_dvo.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        | 266 +++++++++++-------
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   6 +-
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h   |  93 +++---
 drivers/gpu/drm/i915/gvt/handlers.c           |  22 +-
 drivers/gpu/drm/i915/i915_reg.h               |  26 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   6 +-
 13 files changed, 316 insertions(+), 266 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e37cca6b18c6..f563d6dd3b4f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -469,11 +469,11 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 		fallthrough;
 	case PORT_B:
 		port_mask = DPLL_PORTB_READY_MASK;
-		dpll_reg = DPLL(0);
+		dpll_reg = DPLL(dev_priv, 0);
 		break;
 	case PORT_C:
 		port_mask = DPLL_PORTC_READY_MASK;
-		dpll_reg = DPLL(0);
+		dpll_reg = DPLL(dev_priv, 0);
 		expected_mask <<= 4;
 		break;
 	case PORT_D:
@@ -3248,14 +3248,16 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
 			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
 		else
-			tmp = intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
+			tmp = intel_de_read(dev_priv,
+					    DPLL_MD(dev_priv, crtc->pipe));
 		pipe_config->pixel_multiplier =
 			((tmp & DPLL_MD_UDI_MULTIPLIER_MASK)
 			 >> DPLL_MD_UDI_MULTIPLIER_SHIFT) + 1;
 		pipe_config->dpll_hw_state.dpll_md = tmp;
 	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv) ||
 		   IS_G33(dev_priv) || IS_PINEVIEW(dev_priv)) {
-		tmp = intel_de_read(dev_priv, DPLL(crtc->pipe));
+		tmp = intel_de_read(dev_priv,
+				    DPLL(dev_priv, crtc->pipe));
 		pipe_config->pixel_multiplier =
 			((tmp & SDVO_MULTIPLIER_MASK)
 			 >> SDVO_MULTIPLIER_SHIFT_HIRES) + 1;
@@ -3266,7 +3268,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->pixel_multiplier = 1;
 	}
 	pipe_config->dpll_hw_state.dpll = intel_de_read(dev_priv,
-							DPLL(crtc->pipe));
+							DPLL(dev_priv, crtc->pipe));
 	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
 		pipe_config->dpll_hw_state.fp0 = intel_de_read(dev_priv,
 							       FP0(crtc->pipe));
@@ -3973,7 +3975,8 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 		if (!(tmp & DPI_ENABLE))
 			continue;
 
-		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
+		tmp = intel_de_read(dev_priv,
+				    MIPI_CTRL(dev_priv, port));
 		if ((tmp & BXT_PIPE_SELECT_MASK) != BXT_PIPE_SELECT(crtc->pipe))
 			continue;
 
@@ -8786,11 +8789,12 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
 	 * dividers, even though the register value does change.
 	 */
-	intel_de_write(dev_priv, DPLL(pipe), dpll & ~DPLL_VGA_MODE_DIS);
-	intel_de_write(dev_priv, DPLL(pipe), dpll);
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
+		       dpll & ~DPLL_VGA_MODE_DIS);
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
 
 	/* Wait for the clocks to stabilize. */
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 	udelay(150);
 
 	/* The pixel multiplier can only be updated once the
@@ -8798,12 +8802,13 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	 *
 	 * So write it again.
 	 */
-	intel_de_write(dev_priv, DPLL(pipe), dpll);
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
 
 	/* We do this three times for luck */
 	for (i = 0; i < 3 ; i++) {
-		intel_de_write(dev_priv, DPLL(pipe), dpll);
-		intel_de_posting_read(dev_priv, DPLL(pipe));
+		intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
+		intel_de_posting_read(dev_priv,
+				      DPLL(dev_priv, pipe));
 		udelay(150); /* wait for warmup */
 	}
 
@@ -8836,8 +8841,9 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	intel_wait_for_pipe_scanline_stopped(crtc);
 
-	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
+		       DPLL_VGA_MODE_DIS);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 }
 
 void intel_display_resume(struct drm_device *dev)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1a23ecd4623a..dbfa58f2cfc5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1743,7 +1743,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 	 * current lane status.
 	 */
 	if (intel_power_well_is_enabled(dev_priv, cmn_bc)) {
-		u32 status = intel_de_read(dev_priv, DPLL(PIPE_A));
+		u32 status = intel_de_read(dev_priv, DPLL(dev_priv, PIPE_A));
 		unsigned int mask;
 
 		mask = status & DPLL_PORTB_READY_MASK;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8710dd41ffd4..042d52ea1fba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -506,11 +506,13 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
 
-	val = intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
+	val = intel_de_read(dev_priv,
+			    DP_AUX_CH_CTL(dev_priv, aux_ch));
 	val &= ~DP_AUX_CH_CTL_TBT_IO;
 	if (is_tbt)
 		val |= DP_AUX_CH_CTL_TBT_IO;
-	intel_de_write(dev_priv, DP_AUX_CH_CTL(aux_ch), val);
+	intel_de_write(dev_priv, DP_AUX_CH_CTL(dev_priv, aux_ch),
+		       val);
 
 	val = intel_de_read(dev_priv, regs->driver);
 	intel_de_write(dev_priv, regs->driver,
@@ -1189,13 +1191,14 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 	 * CHV DPLL B/C have some issues if VGA mode is enabled.
 	 */
 	for_each_pipe(dev_priv, pipe) {
-		u32 val = intel_de_read(dev_priv, DPLL(pipe));
+		u32 val = intel_de_read(dev_priv,
+					DPLL(dev_priv, pipe));
 
 		val |= DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
 		if (pipe != PIPE_A)
 			val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-		intel_de_write(dev_priv, DPLL(pipe), val);
+		intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
 	}
 
 	vlv_init_display_clock_gating(dev_priv);
@@ -1350,7 +1353,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 		 */
 		if (BITS_SET(phy_control,
 			     PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH1)) &&
-		    (intel_de_read(dev_priv, DPLL(PIPE_B)) & DPLL_VCO_ENABLE) == 0)
+		    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) & DPLL_VCO_ENABLE) == 0)
 			phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH1);
 
 		if (BITS_SET(phy_control,
@@ -1803,7 +1806,8 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 
-	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
+	intel_de_rmw(dev_priv,
+		     XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch),
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
 
@@ -1821,7 +1825,8 @@ static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 
-	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
+	intel_de_rmw(dev_priv,
+		     XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch),
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     0);
 	usleep_range(10, 30);
@@ -1832,7 +1837,8 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 
-	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
+	return intel_de_read(dev_priv,
+		             XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch)) &
 		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 5a176bfb10a2..479559434a4d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -483,10 +483,10 @@ static i915_reg_t g4x_aux_ctl_reg(struct intel_dp *intel_dp)
 	case AUX_CH_B:
 	case AUX_CH_C:
 	case AUX_CH_D:
-		return DP_AUX_CH_CTL(aux_ch);
+		return DP_AUX_CH_CTL(dev_priv, aux_ch);
 	default:
 		MISSING_CASE(aux_ch);
-		return DP_AUX_CH_CTL(AUX_CH_B);
+		return DP_AUX_CH_CTL(dev_priv, AUX_CH_B);
 	}
 }
 
@@ -500,10 +500,10 @@ static i915_reg_t g4x_aux_data_reg(struct intel_dp *intel_dp, int index)
 	case AUX_CH_B:
 	case AUX_CH_C:
 	case AUX_CH_D:
-		return DP_AUX_CH_DATA(aux_ch, index);
+		return DP_AUX_CH_DATA(dev_priv, aux_ch, index);
 	default:
 		MISSING_CASE(aux_ch);
-		return DP_AUX_CH_DATA(AUX_CH_B, index);
+		return DP_AUX_CH_DATA(dev_priv, AUX_CH_B, index);
 	}
 }
 
@@ -515,14 +515,14 @@ static i915_reg_t ilk_aux_ctl_reg(struct intel_dp *intel_dp)
 
 	switch (aux_ch) {
 	case AUX_CH_A:
-		return DP_AUX_CH_CTL(aux_ch);
+		return DP_AUX_CH_CTL(dev_priv, aux_ch);
 	case AUX_CH_B:
 	case AUX_CH_C:
 	case AUX_CH_D:
 		return PCH_DP_AUX_CH_CTL(aux_ch);
 	default:
 		MISSING_CASE(aux_ch);
-		return DP_AUX_CH_CTL(AUX_CH_A);
+		return DP_AUX_CH_CTL(dev_priv, AUX_CH_A);
 	}
 }
 
@@ -534,14 +534,14 @@ static i915_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
 
 	switch (aux_ch) {
 	case AUX_CH_A:
-		return DP_AUX_CH_DATA(aux_ch, index);
+		return DP_AUX_CH_DATA(dev_priv, aux_ch, index);
 	case AUX_CH_B:
 	case AUX_CH_C:
 	case AUX_CH_D:
 		return PCH_DP_AUX_CH_DATA(aux_ch, index);
 	default:
 		MISSING_CASE(aux_ch);
-		return DP_AUX_CH_DATA(AUX_CH_A, index);
+		return DP_AUX_CH_DATA(dev_priv, AUX_CH_A, index);
 	}
 }
 
@@ -558,10 +558,10 @@ static i915_reg_t skl_aux_ctl_reg(struct intel_dp *intel_dp)
 	case AUX_CH_D:
 	case AUX_CH_E:
 	case AUX_CH_F:
-		return DP_AUX_CH_CTL(aux_ch);
+		return DP_AUX_CH_CTL(dev_priv, aux_ch);
 	default:
 		MISSING_CASE(aux_ch);
-		return DP_AUX_CH_CTL(AUX_CH_A);
+		return DP_AUX_CH_CTL(dev_priv, AUX_CH_A);
 	}
 }
 
@@ -578,10 +578,10 @@ static i915_reg_t skl_aux_data_reg(struct intel_dp *intel_dp, int index)
 	case AUX_CH_D:
 	case AUX_CH_E:
 	case AUX_CH_F:
-		return DP_AUX_CH_DATA(aux_ch, index);
+		return DP_AUX_CH_DATA(dev_priv, aux_ch, index);
 	default:
 		MISSING_CASE(aux_ch);
-		return DP_AUX_CH_DATA(AUX_CH_A, index);
+		return DP_AUX_CH_DATA(dev_priv, AUX_CH_A, index);
 	}
 }
 
@@ -601,10 +601,10 @@ static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
 	case AUX_CH_USBC4:
 	case AUX_CH_USBC5:  /* aka AUX_CH_D_XELPD */
 	case AUX_CH_USBC6:  /* aka AUX_CH_E_XELPD */
-		return DP_AUX_CH_CTL(aux_ch);
+		return DP_AUX_CH_CTL(dev_priv, aux_ch);
 	default:
 		MISSING_CASE(aux_ch);
-		return DP_AUX_CH_CTL(AUX_CH_A);
+		return DP_AUX_CH_CTL(dev_priv, AUX_CH_A);
 	}
 }
 
@@ -624,10 +624,10 @@ static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
 	case AUX_CH_USBC4:
 	case AUX_CH_USBC5:  /* aka AUX_CH_D_XELPD */
 	case AUX_CH_USBC6:  /* aka AUX_CH_E_XELPD */
-		return DP_AUX_CH_DATA(aux_ch, index);
+		return DP_AUX_CH_DATA(dev_priv, aux_ch, index);
 	default:
 		MISSING_CASE(aux_ch);
-		return DP_AUX_CH_DATA(AUX_CH_A, index);
+		return DP_AUX_CH_DATA(dev_priv, AUX_CH_A, index);
 	}
 }
 
@@ -644,10 +644,10 @@ static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
 	case AUX_CH_USBC2:
 	case AUX_CH_USBC3:
 	case AUX_CH_USBC4:
-		return XELPDP_DP_AUX_CH_CTL(aux_ch);
+		return XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch);
 	default:
 		MISSING_CASE(aux_ch);
-		return XELPDP_DP_AUX_CH_CTL(AUX_CH_A);
+		return XELPDP_DP_AUX_CH_CTL(dev_priv, AUX_CH_A);
 	}
 }
 
@@ -664,10 +664,10 @@ static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
 	case AUX_CH_USBC2:
 	case AUX_CH_USBC3:
 	case AUX_CH_USBC4:
-		return XELPDP_DP_AUX_CH_DATA(aux_ch, index);
+		return XELPDP_DP_AUX_CH_DATA(dev_priv, aux_ch, index);
 	default:
 		MISSING_CASE(aux_ch);
-		return XELPDP_DP_AUX_CH_DATA(AUX_CH_A, index);
+		return XELPDP_DP_AUX_CH_DATA(dev_priv, AUX_CH_A, index);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 4e9c18be7e1f..c6564d6a0f3a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1567,15 +1567,16 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
 	 * dividers, even though the register value does change.
 	 */
-	intel_de_write(dev_priv, DPLL(pipe), dpll & ~DPLL_VGA_MODE_DIS);
-	intel_de_write(dev_priv, DPLL(pipe), dpll);
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
+		       dpll & ~DPLL_VGA_MODE_DIS);
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
 
 	/* Wait for the clocks to stabilize. */
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 	udelay(150);
 
 	if (DISPLAY_VER(dev_priv) >= 4) {
-		intel_de_write(dev_priv, DPLL_MD(pipe),
+		intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
 			       crtc_state->dpll_hw_state.dpll_md);
 	} else {
 		/* The pixel multiplier can only be updated once the
@@ -1583,13 +1584,13 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 		 *
 		 * So write it again.
 		 */
-		intel_de_write(dev_priv, DPLL(pipe), dpll);
+		intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
 	}
 
 	/* We do this three times for luck */
 	for (i = 0; i < 3; i++) {
-		intel_de_write(dev_priv, DPLL(pipe), dpll);
-		intel_de_posting_read(dev_priv, DPLL(pipe));
+		intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
+		intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 		udelay(150); /* wait for warmup */
 	}
 }
@@ -1719,11 +1720,12 @@ static void _vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write(dev_priv, DPLL(pipe), crtc_state->dpll_hw_state.dpll);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
+		       crtc_state->dpll_hw_state.dpll);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 	udelay(150);
 
-	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
+	if (intel_de_wait_for_set(dev_priv, DPLL(dev_priv, pipe), DPLL_LOCK_VLV, 1))
 		drm_err(&dev_priv->drm, "DPLL %d failed to lock\n", pipe);
 }
 
@@ -1739,7 +1741,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_pps_unlocked(dev_priv, pipe);
 
 	/* Enable Refclk */
-	intel_de_write(dev_priv, DPLL(pipe),
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
 		       crtc_state->dpll_hw_state.dpll &
 		       ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));
 
@@ -1748,9 +1750,9 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 		_vlv_enable_pll(crtc_state);
 	}
 
-	intel_de_write(dev_priv, DPLL_MD(pipe),
+	intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
 		       crtc_state->dpll_hw_state.dpll_md);
-	intel_de_posting_read(dev_priv, DPLL_MD(pipe));
+	intel_de_posting_read(dev_priv, DPLL_MD(dev_priv, pipe));
 }
 
 static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
@@ -1872,10 +1874,11 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	udelay(1);
 
 	/* Enable PLL */
-	intel_de_write(dev_priv, DPLL(pipe), crtc_state->dpll_hw_state.dpll);
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
+		       crtc_state->dpll_hw_state.dpll);
 
 	/* Check PLL is locked */
-	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
+	if (intel_de_wait_for_set(dev_priv, DPLL(dev_priv, pipe), DPLL_LOCK_VLV, 1))
 		drm_err(&dev_priv->drm, "PLL %d failed to lock\n", pipe);
 }
 
@@ -1891,7 +1894,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_pps_unlocked(dev_priv, pipe);
 
 	/* Enable Refclk and SSC */
-	intel_de_write(dev_priv, DPLL(pipe),
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
 		       crtc_state->dpll_hw_state.dpll & ~DPLL_VCO_ENABLE);
 
 	if (crtc_state->dpll_hw_state.dpll & DPLL_VCO_ENABLE) {
@@ -1907,7 +1910,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 		 * the value from DPLLBMD to either pipe B or C.
 		 */
 		intel_de_write(dev_priv, CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
-		intel_de_write(dev_priv, DPLL_MD(PIPE_B),
+		intel_de_write(dev_priv, DPLL_MD(dev_priv, PIPE_B),
 			       crtc_state->dpll_hw_state.dpll_md);
 		intel_de_write(dev_priv, CBR4_VLV, 0);
 		dev_priv->display.state.chv_dpll_md[pipe] = crtc_state->dpll_hw_state.dpll_md;
@@ -1917,12 +1920,12 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 		 * We should always have it disabled.
 		 */
 		drm_WARN_ON(&dev_priv->drm,
-			    (intel_de_read(dev_priv, DPLL(PIPE_B)) &
+			    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) &
 			     DPLL_VGA_MODE_DIS) == 0);
 	} else {
-		intel_de_write(dev_priv, DPLL_MD(pipe),
+		intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
 			       crtc_state->dpll_hw_state.dpll_md);
-		intel_de_posting_read(dev_priv, DPLL_MD(pipe));
+		intel_de_posting_read(dev_priv, DPLL_MD(dev_priv, pipe));
 	}
 }
 
@@ -1976,8 +1979,8 @@ void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (pipe != PIPE_A)
 		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-	intel_de_write(dev_priv, DPLL(pipe), val);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 }
 
 void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
@@ -1993,8 +1996,8 @@ void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (pipe != PIPE_A)
 		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-	intel_de_write(dev_priv, DPLL(pipe), val);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 
 	vlv_dpio_get(dev_priv);
 
@@ -2019,8 +2022,8 @@ void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
 	/* Make sure the pipe isn't still relying on us */
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
-	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), DPLL_VGA_MODE_DIS);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 }
 
 
@@ -2046,7 +2049,7 @@ static void assert_pll(struct drm_i915_private *dev_priv,
 {
 	bool cur_state;
 
-	cur_state = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
+	cur_state = intel_de_read(dev_priv, DPLL(dev_priv, pipe)) & DPLL_VCO_ENABLE;
 	I915_STATE_WARN(cur_state != state,
 			"PLL state assertion failure (expected %s, current %s)\n",
 			str_on_off(state), str_on_off(cur_state));
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 4aeae0f3ac91..eca596791fb8 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -445,8 +445,8 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 	 * the device.
 	 */
 	for_each_pipe(dev_priv, pipe) {
-		dpll[pipe] = intel_de_read(dev_priv, DPLL(pipe));
-		intel_de_write(dev_priv, DPLL(pipe),
+		dpll[pipe] = intel_de_read(dev_priv, DPLL(dev_priv, pipe));
+		intel_de_write(dev_priv, DPLL(dev_priv, pipe),
 			       dpll[pipe] | DPLL_DVO_2X_MODE);
 	}
 
@@ -454,7 +454,7 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 
 	/* restore the DVO 2x clock state to original */
 	for_each_pipe(dev_priv, pipe) {
-		intel_de_write(dev_priv, DPLL(pipe), dpll[pipe]);
+		intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll[pipe]);
 	}
 
 	intel_gmbus_force_bit(i2c, false);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 7b21438edd9b..3f41148a1678 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -117,7 +117,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	else
 		DP |= DP_PIPE_SEL(pipe);
 
-	pll_enabled = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
+	pll_enabled = intel_de_read(dev_priv, DPLL(dev_priv, pipe)) & DPLL_VCO_ENABLE;
 
 	/*
 	 * The DPLL for the pipe must be enabled for this to work.
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 662bdb656aa3..b01abbf46b69 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -92,7 +92,7 @@ void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
 	mask = LP_CTRL_FIFO_EMPTY | HS_CTRL_FIFO_EMPTY |
 		LP_DATA_FIFO_EMPTY | HS_DATA_FIFO_EMPTY;
 
-	if (intel_de_wait_for_set(dev_priv, MIPI_GEN_FIFO_STAT(port),
+	if (intel_de_wait_for_set(dev_priv, MIPI_GEN_FIFO_STAT(dev_priv, port),
 				  mask, 100))
 		drm_err(&dev_priv->drm, "DPI FIFOs are not empty\n");
 }
@@ -148,20 +148,20 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 	data = packet.payload;
 
 	if (msg->flags & MIPI_DSI_MSG_USE_LPM) {
-		data_reg = MIPI_LP_GEN_DATA(port);
+		data_reg = MIPI_LP_GEN_DATA(dev_priv, port);
 		data_mask = LP_DATA_FIFO_FULL;
-		ctrl_reg = MIPI_LP_GEN_CTRL(port);
+		ctrl_reg = MIPI_LP_GEN_CTRL(dev_priv, port);
 		ctrl_mask = LP_CTRL_FIFO_FULL;
 	} else {
-		data_reg = MIPI_HS_GEN_DATA(port);
+		data_reg = MIPI_HS_GEN_DATA(dev_priv, port);
 		data_mask = HS_DATA_FIFO_FULL;
-		ctrl_reg = MIPI_HS_GEN_CTRL(port);
+		ctrl_reg = MIPI_HS_GEN_CTRL(dev_priv, port);
 		ctrl_mask = HS_CTRL_FIFO_FULL;
 	}
 
 	/* note: this is never true for reads */
 	if (packet.payload_length) {
-		if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(port),
+		if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(dev_priv, port),
 					    data_mask, 50))
 			drm_err(&dev_priv->drm,
 				"Timeout waiting for HS/LP DATA FIFO !full\n");
@@ -171,11 +171,11 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 	}
 
 	if (msg->rx_len) {
-		intel_de_write(dev_priv, MIPI_INTR_STAT(port),
+		intel_de_write(dev_priv, MIPI_INTR_STAT(dev_priv, port),
 			       GEN_READ_DATA_AVAIL);
 	}
 
-	if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(port),
+	if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(dev_priv, port),
 				    ctrl_mask, 50)) {
 		drm_err(&dev_priv->drm,
 			"Timeout waiting for HS/LP CTRL FIFO !full\n");
@@ -187,7 +187,7 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 	/* ->rx_len is set only for reads */
 	if (msg->rx_len) {
 		data_mask = GEN_READ_DATA_AVAIL;
-		if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(port),
+		if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(dev_priv, port),
 					  data_mask, 50))
 			drm_err(&dev_priv->drm,
 				"Timeout waiting for read data.\n");
@@ -237,17 +237,18 @@ static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
 		cmd |= DPI_LP_MODE;
 
 	/* clear bit */
-	intel_de_write(dev_priv, MIPI_INTR_STAT(port), SPL_PKT_SENT_INTERRUPT);
+	intel_de_write(dev_priv, MIPI_INTR_STAT(dev_priv, port),
+		       SPL_PKT_SENT_INTERRUPT);
 
 	/* XXX: old code skips write if control unchanged */
-	if (cmd == intel_de_read(dev_priv, MIPI_DPI_CONTROL(port)))
+	if (cmd == intel_de_read(dev_priv, MIPI_DPI_CONTROL(dev_priv, port)))
 		drm_dbg_kms(&dev_priv->drm,
 			    "Same special packet %02x twice in a row.\n", cmd);
 
-	intel_de_write(dev_priv, MIPI_DPI_CONTROL(port), cmd);
+	intel_de_write(dev_priv, MIPI_DPI_CONTROL(dev_priv, port), cmd);
 
 	mask = SPL_PKT_SENT_INTERRUPT;
-	if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(port), mask, 100))
+	if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(dev_priv, port), mask, 100))
 		drm_err(&dev_priv->drm,
 			"Video mode command 0x%08x send failed.\n", cmd);
 
@@ -339,29 +340,29 @@ static bool glk_dsi_enable_io(struct intel_encoder *encoder)
 	 * Power ON MIPI IO first and then write into IO reset and LP wake bits
 	 */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
-		intel_de_write(dev_priv, MIPI_CTRL(port),
+		tmp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, port));
+		intel_de_write(dev_priv, MIPI_CTRL(dev_priv, port),
 			       tmp | GLK_MIPIIO_ENABLE);
 	}
 
 	/* Put the IO into reset */
-	tmp = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
+	tmp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, PORT_A));
 	tmp &= ~GLK_MIPIIO_RESET_RELEASED;
-	intel_de_write(dev_priv, MIPI_CTRL(PORT_A), tmp);
+	intel_de_write(dev_priv, MIPI_CTRL(dev_priv, PORT_A), tmp);
 
 	/* Program LP Wake */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
-		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY))
+		tmp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, port));
+		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port)) & DEVICE_READY))
 			tmp &= ~GLK_LP_WAKE;
 		else
 			tmp |= GLK_LP_WAKE;
-		intel_de_write(dev_priv, MIPI_CTRL(port), tmp);
+		intel_de_write(dev_priv, MIPI_CTRL(dev_priv, port), tmp);
 	}
 
 	/* Wait for Pwr ACK */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(dev_priv, port),
 					  GLK_MIPIIO_PORT_POWERED, 20))
 			drm_err(&dev_priv->drm, "MIPIO port is powergated\n");
 	}
@@ -369,7 +370,7 @@ static bool glk_dsi_enable_io(struct intel_encoder *encoder)
 	/* Check for cold boot scenario */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		cold_boot |=
-			!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY);
+			!(intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port)) & DEVICE_READY);
 	}
 
 	return cold_boot;
@@ -384,57 +385,67 @@ static void glk_dsi_device_ready(struct intel_encoder *encoder)
 
 	/* Wait for MIPI PHY status bit to set */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(dev_priv, port),
 					  GLK_PHY_STATUS_PORT_READY, 20))
 			drm_err(&dev_priv->drm, "PHY is not ON\n");
 	}
 
 	/* Get IO out of reset */
-	val = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
-	intel_de_write(dev_priv, MIPI_CTRL(PORT_A),
+	val = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, PORT_A));
+	intel_de_write(dev_priv, MIPI_CTRL(dev_priv, PORT_A),
 		       val | GLK_MIPIIO_RESET_RELEASED);
 
 	/* Get IO out of Low power state*/
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY)) {
-			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
+		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port)) & DEVICE_READY)) {
+			val = intel_de_read(dev_priv,
+					    MIPI_DEVICE_READY(dev_priv, port));
 			val &= ~ULPS_STATE_MASK;
 			val |= DEVICE_READY;
-			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+			intel_de_write(dev_priv,
+				       MIPI_DEVICE_READY(dev_priv, port), val);
 			usleep_range(10, 15);
 		} else {
 			/* Enter ULPS */
-			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
+			val = intel_de_read(dev_priv,
+					    MIPI_DEVICE_READY(dev_priv, port));
 			val &= ~ULPS_STATE_MASK;
 			val |= (ULPS_STATE_ENTER | DEVICE_READY);
-			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+			intel_de_write(dev_priv,
+				       MIPI_DEVICE_READY(dev_priv, port), val);
 
 			/* Wait for ULPS active */
-			if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
+			if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(dev_priv, port),
 						    GLK_ULPS_NOT_ACTIVE, 20))
 				drm_err(&dev_priv->drm, "ULPS not active\n");
 
 			/* Exit ULPS */
-			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
+			val = intel_de_read(dev_priv,
+					    MIPI_DEVICE_READY(dev_priv, port));
 			val &= ~ULPS_STATE_MASK;
 			val |= (ULPS_STATE_EXIT | DEVICE_READY);
-			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+			intel_de_write(dev_priv,
+				       MIPI_DEVICE_READY(dev_priv, port), val);
 
 			/* Enter Normal Mode */
-			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
+			val = intel_de_read(dev_priv,
+					    MIPI_DEVICE_READY(dev_priv, port));
 			val &= ~ULPS_STATE_MASK;
 			val |= (ULPS_STATE_NORMAL_OPERATION | DEVICE_READY);
-			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+			intel_de_write(dev_priv,
+				       MIPI_DEVICE_READY(dev_priv, port), val);
 
-			val = intel_de_read(dev_priv, MIPI_CTRL(port));
+			val = intel_de_read(dev_priv,
+					    MIPI_CTRL(dev_priv, port));
 			val &= ~GLK_LP_WAKE;
-			intel_de_write(dev_priv, MIPI_CTRL(port), val);
+			intel_de_write(dev_priv, MIPI_CTRL(dev_priv, port),
+				       val);
 		}
 	}
 
 	/* Wait for Stop state */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(dev_priv, port),
 					  GLK_DATA_LANE_STOP_STATE, 20))
 			drm_err(&dev_priv->drm,
 				"Date lane not in STOP state\n");
@@ -468,12 +479,15 @@ static void bxt_dsi_device_ready(struct intel_encoder *encoder)
 
 	/* Clear ULPS and set device ready */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
+		val = intel_de_read(dev_priv,
+				    MIPI_DEVICE_READY(dev_priv, port));
 		val &= ~ULPS_STATE_MASK;
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
+			       val);
 		usleep_range(2000, 2500);
 		val |= DEVICE_READY;
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
+			       val);
 	}
 }
 
@@ -497,7 +511,7 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       ULPS_STATE_ENTER);
 		usleep_range(2500, 3000);
 
@@ -510,11 +524,11 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 			       val | LP_OUTPUT_HOLD);
 		usleep_range(1000, 1500);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       ULPS_STATE_EXIT);
 		usleep_range(2500, 3000);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       DEVICE_READY);
 		usleep_range(2500, 3000);
 	}
@@ -541,22 +555,24 @@ static void glk_dsi_enter_low_power_mode(struct intel_encoder *encoder)
 
 	/* Enter ULPS */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
+		val = intel_de_read(dev_priv,
+				    MIPI_DEVICE_READY(dev_priv, port));
 		val &= ~ULPS_STATE_MASK;
 		val |= (ULPS_STATE_ENTER | DEVICE_READY);
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
+			       val);
 	}
 
 	/* Wait for MIPI PHY status bit to unset */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(dev_priv, port),
 					    GLK_PHY_STATUS_PORT_READY, 20))
 			drm_err(&dev_priv->drm, "PHY is not turning OFF\n");
 	}
 
 	/* Wait for Pwr ACK bit to unset */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(dev_priv, port),
 					    GLK_MIPIIO_PORT_POWERED, 20))
 			drm_err(&dev_priv->drm,
 				"MIPI IO Port is not powergated\n");
@@ -571,22 +587,22 @@ static void glk_dsi_disable_mipi_io(struct intel_encoder *encoder)
 	u32 tmp;
 
 	/* Put the IO into reset */
-	tmp = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
+	tmp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, PORT_A));
 	tmp &= ~GLK_MIPIIO_RESET_RELEASED;
-	intel_de_write(dev_priv, MIPI_CTRL(PORT_A), tmp);
+	intel_de_write(dev_priv, MIPI_CTRL(dev_priv, PORT_A), tmp);
 
 	/* Wait for MIPI PHY status bit to unset */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(dev_priv, port),
 					    GLK_PHY_STATUS_PORT_READY, 20))
 			drm_err(&dev_priv->drm, "PHY is not turning OFF\n");
 	}
 
 	/* Clear MIPI mode */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
+		tmp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, port));
 		tmp &= ~GLK_MIPIIO_ENABLE;
-		intel_de_write(dev_priv, MIPI_CTRL(port), tmp);
+		intel_de_write(dev_priv, MIPI_CTRL(dev_priv, port), tmp);
 	}
 }
 
@@ -609,15 +625,15 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(PORT_A);
 		u32 val;
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       DEVICE_READY | ULPS_STATE_ENTER);
 		usleep_range(2000, 2500);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       DEVICE_READY | ULPS_STATE_EXIT);
 		usleep_range(2000, 2500);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       DEVICE_READY | ULPS_STATE_ENTER);
 		usleep_range(2000, 2500);
 
@@ -635,7 +651,8 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 		intel_de_write(dev_priv, port_ctrl, val & ~LP_OUTPUT_HOLD);
 		usleep_range(1000, 1500);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x00);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
+			       0x00);
 		usleep_range(2000, 2500);
 	}
 }
@@ -653,11 +670,12 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
 			for_each_dsi_port(port, intel_dsi->ports) {
 				temp = intel_de_read(dev_priv,
-						     MIPI_CTRL(port));
+						     MIPI_CTRL(dev_priv, port));
 				temp &= ~BXT_PIXEL_OVERLAP_CNT_MASK |
 					intel_dsi->pixel_overlap <<
 					BXT_PIXEL_OVERLAP_CNT_SHIFT;
-				intel_de_write(dev_priv, MIPI_CTRL(port),
+				intel_de_write(dev_priv,
+					       MIPI_CTRL(dev_priv, port),
 					       temp);
 			}
 		} else {
@@ -872,7 +890,8 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 	if (is_cmd_mode(intel_dsi)) {
 		for_each_dsi_port(port, intel_dsi->ports)
 			intel_de_write(dev_priv,
-				       MIPI_MAX_RETURN_PKT_SIZE(port), 8 * 4);
+				       MIPI_MAX_RETURN_PKT_SIZE(dev_priv, port),
+				       8 * 4);
 		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_TEAR_ON);
 		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
 	} else {
@@ -1063,18 +1082,19 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 		/* Try command mode if video mode not enabled */
 		if (!enabled) {
 			u32 tmp = intel_de_read(dev_priv,
-						MIPI_DSI_FUNC_PRG(port));
+						MIPI_DSI_FUNC_PRG(dev_priv, port));
 			enabled = tmp & CMD_MODE_DATA_WIDTH_MASK;
 		}
 
 		if (!enabled)
 			continue;
 
-		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY))
+		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port)) & DEVICE_READY))
 			continue;
 
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-			u32 tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
+			u32 tmp = intel_de_read(dev_priv,
+						MIPI_CTRL(dev_priv, port));
 			tmp &= BXT_PIPE_SELECT_MASK;
 			tmp >>= BXT_PIPE_SELECT_SHIFT;
 
@@ -1126,7 +1146,7 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 			break;
 	}
 
-	fmt = intel_de_read(dev_priv, MIPI_DSI_FUNC_PRG(port)) & VID_MODE_FORMAT_MASK;
+	fmt = intel_de_read(dev_priv, MIPI_DSI_FUNC_PRG(dev_priv, port)) & VID_MODE_FORMAT_MASK;
 	bpp = mipi_dsi_pixel_format_to_bpp(
 			pixel_format_from_register_bits(fmt));
 
@@ -1148,14 +1168,15 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 				              BXT_MIPI_TRANS_VTOTAL(port));
 
 	hactive = adjusted_mode->crtc_hdisplay;
-	hfp = intel_de_read(dev_priv, MIPI_HFP_COUNT(port));
+	hfp = intel_de_read(dev_priv, MIPI_HFP_COUNT(dev_priv, port));
 
 	/*
 	 * Meaningful for video mode non-burst sync pulse mode only,
 	 * can be zero for non-burst sync events and burst modes
 	 */
-	hsync = intel_de_read(dev_priv, MIPI_HSYNC_PADDING_COUNT(port));
-	hbp = intel_de_read(dev_priv, MIPI_HBP_COUNT(port));
+	hsync = intel_de_read(dev_priv,
+		              MIPI_HSYNC_PADDING_COUNT(dev_priv, port));
+	hbp = intel_de_read(dev_priv, MIPI_HBP_COUNT(dev_priv, port));
 
 	/* harizontal values are in terms of high speed byte clock */
 	hfp = pixels_from_txbyteclkhs(hfp, bpp, lane_count,
@@ -1172,9 +1193,10 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 	}
 
 	/* vertical values are in terms of lines */
-	vfp = intel_de_read(dev_priv, MIPI_VFP_COUNT(port));
-	vsync = intel_de_read(dev_priv, MIPI_VSYNC_PADDING_COUNT(port));
-	vbp = intel_de_read(dev_priv, MIPI_VBP_COUNT(port));
+	vfp = intel_de_read(dev_priv, MIPI_VFP_COUNT(dev_priv, port));
+	vsync = intel_de_read(dev_priv,
+		              MIPI_VSYNC_PADDING_COUNT(dev_priv, port));
+	vbp = intel_de_read(dev_priv, MIPI_VBP_COUNT(dev_priv, port));
 
 	adjusted_mode->crtc_htotal = hactive + hfp + hsync + hbp;
 	adjusted_mode->crtc_hsync_start = hfp + adjusted_mode->crtc_hdisplay;
@@ -1354,21 +1376,24 @@ static void set_dsi_timings(struct drm_encoder *encoder,
 				       adjusted_mode->crtc_vtotal);
 		}
 
-		intel_de_write(dev_priv, MIPI_HACTIVE_AREA_COUNT(port),
+		intel_de_write(dev_priv,
+			       MIPI_HACTIVE_AREA_COUNT(dev_priv, port),
 			       hactive);
-		intel_de_write(dev_priv, MIPI_HFP_COUNT(port), hfp);
+		intel_de_write(dev_priv, MIPI_HFP_COUNT(dev_priv, port), hfp);
 
 		/* meaningful for video mode non-burst sync pulse mode only,
 		 * can be zero for non-burst sync events and burst modes */
-		intel_de_write(dev_priv, MIPI_HSYNC_PADDING_COUNT(port),
+		intel_de_write(dev_priv,
+			       MIPI_HSYNC_PADDING_COUNT(dev_priv, port),
 			       hsync);
-		intel_de_write(dev_priv, MIPI_HBP_COUNT(port), hbp);
+		intel_de_write(dev_priv, MIPI_HBP_COUNT(dev_priv, port), hbp);
 
 		/* vertical values are in terms of lines */
-		intel_de_write(dev_priv, MIPI_VFP_COUNT(port), vfp);
-		intel_de_write(dev_priv, MIPI_VSYNC_PADDING_COUNT(port),
+		intel_de_write(dev_priv, MIPI_VFP_COUNT(dev_priv, port), vfp);
+		intel_de_write(dev_priv,
+			       MIPI_VSYNC_PADDING_COUNT(dev_priv, port),
 			       vsync);
-		intel_de_write(dev_priv, MIPI_VBP_COUNT(port), vbp);
+		intel_de_write(dev_priv, MIPI_VBP_COUNT(dev_priv, port), vbp);
 	}
 }
 
@@ -1419,34 +1444,40 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 			 * escape clock divider, 20MHz, shared for A and C.
 			 * device ready must be off when doing this! txclkesc?
 			 */
-			tmp = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
+			tmp = intel_de_read(dev_priv,
+					    MIPI_CTRL(dev_priv, PORT_A));
 			tmp &= ~ESCAPE_CLOCK_DIVIDER_MASK;
-			intel_de_write(dev_priv, MIPI_CTRL(PORT_A),
+			intel_de_write(dev_priv, MIPI_CTRL(dev_priv, PORT_A),
 				       tmp | ESCAPE_CLOCK_DIVIDER_1);
 
 			/* read request priority is per pipe */
-			tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
+			tmp = intel_de_read(dev_priv,
+					    MIPI_CTRL(dev_priv, port));
 			tmp &= ~READ_REQUEST_PRIORITY_MASK;
-			intel_de_write(dev_priv, MIPI_CTRL(port),
+			intel_de_write(dev_priv, MIPI_CTRL(dev_priv, port),
 				       tmp | READ_REQUEST_PRIORITY_HIGH);
 		} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
 			enum pipe pipe = crtc->pipe;
 
-			tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
+			tmp = intel_de_read(dev_priv,
+					    MIPI_CTRL(dev_priv, port));
 			tmp &= ~BXT_PIPE_SELECT_MASK;
 
 			tmp |= BXT_PIPE_SELECT(pipe);
-			intel_de_write(dev_priv, MIPI_CTRL(port), tmp);
+			intel_de_write(dev_priv, MIPI_CTRL(dev_priv, port),
+				       tmp);
 		}
 
 		/* XXX: why here, why like this? handling in irq handler?! */
-		intel_de_write(dev_priv, MIPI_INTR_STAT(port), 0xffffffff);
-		intel_de_write(dev_priv, MIPI_INTR_EN(port), 0xffffffff);
+		intel_de_write(dev_priv, MIPI_INTR_STAT(dev_priv, port),
+			       0xffffffff);
+		intel_de_write(dev_priv, MIPI_INTR_EN(dev_priv, port),
+			       0xffffffff);
 
-		intel_de_write(dev_priv, MIPI_DPHY_PARAM(port),
+		intel_de_write(dev_priv, MIPI_DPHY_PARAM(dev_priv, port),
 			       intel_dsi->dphy_reg);
 
-		intel_de_write(dev_priv, MIPI_DPI_RESOLUTION(port),
+		intel_de_write(dev_priv, MIPI_DPI_RESOLUTION(dev_priv, port),
 			       adjusted_mode->crtc_vdisplay << VERTICAL_ADDRESS_SHIFT | mode_hdisplay << HORIZONTAL_ADDRESS_SHIFT);
 	}
 
@@ -1474,7 +1505,8 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(port), val);
+		intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(dev_priv, port),
+			       val);
 
 		/* timeouts for recovery. one frame IIUC. if counter expires,
 		 * EOT and stop state. */
@@ -1495,23 +1527,27 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 
 		if (is_vid_mode(intel_dsi) &&
 			intel_dsi->video_mode == BURST_MODE) {
-			intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(port),
+			intel_de_write(dev_priv,
+				       MIPI_HS_TX_TIMEOUT(dev_priv, port),
 				       txbyteclkhs(adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
 		} else {
-			intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(port),
+			intel_de_write(dev_priv,
+				       MIPI_HS_TX_TIMEOUT(dev_priv, port),
 				       txbyteclkhs(adjusted_mode->crtc_vtotal * adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
 		}
-		intel_de_write(dev_priv, MIPI_LP_RX_TIMEOUT(port),
+		intel_de_write(dev_priv, MIPI_LP_RX_TIMEOUT(dev_priv, port),
 			       intel_dsi->lp_rx_timeout);
-		intel_de_write(dev_priv, MIPI_TURN_AROUND_TIMEOUT(port),
+		intel_de_write(dev_priv,
+			       MIPI_TURN_AROUND_TIMEOUT(dev_priv, port),
 			       intel_dsi->turn_arnd_val);
-		intel_de_write(dev_priv, MIPI_DEVICE_RESET_TIMER(port),
+		intel_de_write(dev_priv,
+			       MIPI_DEVICE_RESET_TIMER(dev_priv, port),
 			       intel_dsi->rst_timer_val);
 
 		/* dphy stuff */
 
 		/* in terms of low power clock */
-		intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
+		intel_de_write(dev_priv, MIPI_INIT_COUNT(dev_priv, port),
 			       txclkesc(intel_dsi->escape_clk_div, 100));
 
 		if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
@@ -1523,15 +1559,16 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 			 * if not in dual link mode.
 			 */
 			intel_de_write(dev_priv,
-				       MIPI_INIT_COUNT(port == PORT_A ? PORT_C : PORT_A),
+				       MIPI_INIT_COUNT(dev_priv, port == PORT_A ? PORT_C : PORT_A),
 				       intel_dsi->init_count);
 		}
 
 		/* recovery disables */
-		intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), tmp);
+		intel_de_write(dev_priv, MIPI_EOT_DISABLE(dev_priv, port),
+			       tmp);
 
 		/* in terms of low power clock */
-		intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
+		intel_de_write(dev_priv, MIPI_INIT_COUNT(dev_priv, port),
 			       intel_dsi->init_count);
 
 		/* in terms of txbyteclkhs. actual high to low switch +
@@ -1539,7 +1576,8 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		 *
 		 * XXX: write MIPI_STOP_STATE_STALL?
 		 */
-		intel_de_write(dev_priv, MIPI_HIGH_LOW_SWITCH_COUNT(port),
+		intel_de_write(dev_priv,
+			       MIPI_HIGH_LOW_SWITCH_COUNT(dev_priv, port),
 			       intel_dsi->hs_to_lp_count);
 
 		/* XXX: low power clock equivalence in terms of byte clock.
@@ -1548,14 +1586,16 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		 * txclkesc time / txbyteclk time * (105 + MIPI_STOP_STATE_STALL
 		 * ) / 105.???
 		 */
-		intel_de_write(dev_priv, MIPI_LP_BYTECLK(port),
+		intel_de_write(dev_priv, MIPI_LP_BYTECLK(dev_priv, port),
 			       intel_dsi->lp_byte_clk);
 
 		if (IS_GEMINILAKE(dev_priv)) {
-			intel_de_write(dev_priv, MIPI_TLPX_TIME_COUNT(port),
+			intel_de_write(dev_priv,
+				       MIPI_TLPX_TIME_COUNT(dev_priv, port),
 				       intel_dsi->lp_byte_clk);
 			/* Shadow of DPHY reg */
-			intel_de_write(dev_priv, MIPI_CLK_LANE_TIMING(port),
+			intel_de_write(dev_priv,
+				       MIPI_CLK_LANE_TIMING(dev_priv, port),
 				       intel_dsi->dphy_reg);
 		}
 
@@ -1564,10 +1604,11 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		 * this register in terms of byte clocks. based on dsi transfer
 		 * rate and the number of lanes configured the time taken to
 		 * transmit 16 long packets in a dsi stream varies. */
-		intel_de_write(dev_priv, MIPI_DBI_BW_CTRL(port),
+		intel_de_write(dev_priv, MIPI_DBI_BW_CTRL(dev_priv, port),
 			       intel_dsi->bw_timer);
 
-		intel_de_write(dev_priv, MIPI_CLK_LANE_SWITCH_TIME_CNT(port),
+		intel_de_write(dev_priv,
+			       MIPI_CLK_LANE_SWITCH_TIME_CNT(dev_priv, port),
 			       intel_dsi->clk_lp_to_hs_count << LP_HS_SSW_CNT_SHIFT | intel_dsi->clk_hs_to_lp_count << HS_LP_PWR_SW_CNT_SHIFT);
 
 		if (is_vid_mode(intel_dsi)) {
@@ -1595,7 +1636,9 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 				break;
 			}
 
-			intel_de_write(dev_priv, MIPI_VIDEO_MODE_FORMAT(port), fmt);
+			intel_de_write(dev_priv,
+				       MIPI_VIDEO_MODE_FORMAT(dev_priv, port),
+				       fmt);
 		}
 	}
 }
@@ -1612,19 +1655,24 @@ static void intel_dsi_unprepare(struct intel_encoder *encoder)
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		/* Panel commands can be sent when clock is in LP11 */
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x0);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
+			       0x0);
 
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 			bxt_dsi_reset_clocks(encoder, port);
 		else
 			vlv_dsi_reset_clocks(encoder, port);
-		intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
+		intel_de_write(dev_priv, MIPI_EOT_DISABLE(dev_priv, port),
+			       CLOCKSTOP);
 
-		val = intel_de_read(dev_priv, MIPI_DSI_FUNC_PRG(port));
+		val = intel_de_read(dev_priv,
+				    MIPI_DSI_FUNC_PRG(dev_priv, port));
 		val &= ~VID_MODE_FORMAT_MASK;
-		intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(port), val);
+		intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(dev_priv, port),
+			       val);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x1);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
+			       0x1);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index af7402127cd9..7defea00dedc 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -372,9 +372,9 @@ void vlv_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
-	temp = intel_de_read(dev_priv, MIPI_CTRL(port));
+	temp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, port));
 	temp &= ~ESCAPE_CLOCK_DIVIDER_MASK;
-	intel_de_write(dev_priv, MIPI_CTRL(port),
+	intel_de_write(dev_priv, MIPI_CTRL(dev_priv, port),
 		       temp | intel_dsi->escape_clk_div << ESCAPE_CLOCK_DIVIDER_SHIFT);
 }
 
@@ -597,7 +597,7 @@ void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 		tmp &= ~GLK_TX_ESC_CLK_DIV2_MASK;
 		intel_de_write(dev_priv, MIPIO_TXESC_CLK_DIV2, tmp);
 	}
-	intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
+	intel_de_write(dev_priv, MIPI_EOT_DISABLE(dev_priv, port), CLOCKSTOP);
 }
 
 static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
index abbe427e462e..d00e9321064a 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
@@ -100,7 +100,7 @@
 
 #define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
 #define _MIPIC_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb800)
-#define MIPI_DEVICE_READY(port)		_MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
+#define MIPI_DEVICE_READY(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
 #define  BUS_POSSESSION					(1 << 3) /* set to give bus to receiver */
 #define  ULPS_STATE_MASK				(3 << 1)
 #define  ULPS_STATE_ENTER				(2 << 1)
@@ -110,10 +110,10 @@
 
 #define _MIPIA_INTR_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb004)
 #define _MIPIC_INTR_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb804)
-#define MIPI_INTR_STAT(port)		_MMIO_MIPI(port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)
+#define MIPI_INTR_STAT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)
 #define _MIPIA_INTR_EN			(_MIPI_MMIO_BASE(dev_priv) + 0xb008)
 #define _MIPIC_INTR_EN			(_MIPI_MMIO_BASE(dev_priv) + 0xb808)
-#define MIPI_INTR_EN(port)		_MMIO_MIPI(port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)
+#define MIPI_INTR_EN(dev_priv, port) _MMIO_MIPI(port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)
 #define  TEARING_EFFECT					(1 << 31)
 #define  SPL_PKT_SENT_INTERRUPT				(1 << 30)
 #define  GEN_READ_DATA_AVAIL				(1 << 29)
@@ -149,7 +149,7 @@
 
 #define _MIPIA_DSI_FUNC_PRG		(_MIPI_MMIO_BASE(dev_priv) + 0xb00c)
 #define _MIPIC_DSI_FUNC_PRG		(_MIPI_MMIO_BASE(dev_priv) + 0xb80c)
-#define MIPI_DSI_FUNC_PRG(port)		_MMIO_MIPI(port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)
+#define MIPI_DSI_FUNC_PRG(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)
 #define  CMD_MODE_DATA_WIDTH_MASK			(7 << 13)
 #define  CMD_MODE_NOT_SUPPORTED				(0 << 13)
 #define  CMD_MODE_DATA_WIDTH_16_BIT			(1 << 13)
@@ -172,27 +172,27 @@
 
 #define _MIPIA_HS_TX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb010)
 #define _MIPIC_HS_TX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb810)
-#define MIPI_HS_TX_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)
+#define MIPI_HS_TX_TIMEOUT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)
 #define  HIGH_SPEED_TX_TIMEOUT_COUNTER_MASK		0xffffff
 
 #define _MIPIA_LP_RX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb014)
 #define _MIPIC_LP_RX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb814)
-#define MIPI_LP_RX_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)
+#define MIPI_LP_RX_TIMEOUT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)
 #define  LOW_POWER_RX_TIMEOUT_COUNTER_MASK		0xffffff
 
 #define _MIPIA_TURN_AROUND_TIMEOUT	(_MIPI_MMIO_BASE(dev_priv) + 0xb018)
 #define _MIPIC_TURN_AROUND_TIMEOUT	(_MIPI_MMIO_BASE(dev_priv) + 0xb818)
-#define MIPI_TURN_AROUND_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)
+#define MIPI_TURN_AROUND_TIMEOUT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)
 #define  TURN_AROUND_TIMEOUT_MASK			0x3f
 
 #define _MIPIA_DEVICE_RESET_TIMER	(_MIPI_MMIO_BASE(dev_priv) + 0xb01c)
 #define _MIPIC_DEVICE_RESET_TIMER	(_MIPI_MMIO_BASE(dev_priv) + 0xb81c)
-#define MIPI_DEVICE_RESET_TIMER(port)	_MMIO_MIPI(port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)
+#define MIPI_DEVICE_RESET_TIMER(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)
 #define  DEVICE_RESET_TIMER_MASK			0xffff
 
 #define _MIPIA_DPI_RESOLUTION		(_MIPI_MMIO_BASE(dev_priv) + 0xb020)
 #define _MIPIC_DPI_RESOLUTION		(_MIPI_MMIO_BASE(dev_priv) + 0xb820)
-#define MIPI_DPI_RESOLUTION(port)	_MMIO_MIPI(port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)
+#define MIPI_DPI_RESOLUTION(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)
 #define  VERTICAL_ADDRESS_SHIFT				16
 #define  VERTICAL_ADDRESS_MASK				(0xffff << 16)
 #define  HORIZONTAL_ADDRESS_SHIFT			0
@@ -200,7 +200,7 @@
 
 #define _MIPIA_DBI_FIFO_THROTTLE	(_MIPI_MMIO_BASE(dev_priv) + 0xb024)
 #define _MIPIC_DBI_FIFO_THROTTLE	(_MIPI_MMIO_BASE(dev_priv) + 0xb824)
-#define MIPI_DBI_FIFO_THROTTLE(port)	_MMIO_MIPI(port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)
+#define MIPI_DBI_FIFO_THROTTLE(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)
 #define  DBI_FIFO_EMPTY_HALF				(0 << 0)
 #define  DBI_FIFO_EMPTY_QUARTER				(1 << 0)
 #define  DBI_FIFO_EMPTY_7_LOCATIONS			(2 << 0)
@@ -208,39 +208,39 @@
 /* regs below are bits 15:0 */
 #define _MIPIA_HSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb028)
 #define _MIPIC_HSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb828)
-#define MIPI_HSYNC_PADDING_COUNT(port)	_MMIO_MIPI(port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)
+#define MIPI_HSYNC_PADDING_COUNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)
 
 #define _MIPIA_HBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb02c)
 #define _MIPIC_HBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb82c)
-#define MIPI_HBP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)
+#define MIPI_HBP_COUNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)
 
 #define _MIPIA_HFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb030)
 #define _MIPIC_HFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb830)
-#define MIPI_HFP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)
+#define MIPI_HFP_COUNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)
 
 #define _MIPIA_HACTIVE_AREA_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb034)
 #define _MIPIC_HACTIVE_AREA_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb834)
-#define MIPI_HACTIVE_AREA_COUNT(port)	_MMIO_MIPI(port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)
+#define MIPI_HACTIVE_AREA_COUNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)
 
 #define _MIPIA_VSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb038)
 #define _MIPIC_VSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb838)
-#define MIPI_VSYNC_PADDING_COUNT(port)	_MMIO_MIPI(port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)
+#define MIPI_VSYNC_PADDING_COUNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)
 
 #define _MIPIA_VBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb03c)
 #define _MIPIC_VBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb83c)
-#define MIPI_VBP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)
+#define MIPI_VBP_COUNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)
 
 #define _MIPIA_VFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb040)
 #define _MIPIC_VFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb840)
-#define MIPI_VFP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)
+#define MIPI_VFP_COUNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)
 
 #define _MIPIA_HIGH_LOW_SWITCH_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb044)
 #define _MIPIC_HIGH_LOW_SWITCH_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb844)
-#define MIPI_HIGH_LOW_SWITCH_COUNT(port)	_MMIO_MIPI(port,	_MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)
+#define MIPI_HIGH_LOW_SWITCH_COUNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)
 
 #define _MIPIA_DPI_CONTROL		(_MIPI_MMIO_BASE(dev_priv) + 0xb048)
 #define _MIPIC_DPI_CONTROL		(_MIPI_MMIO_BASE(dev_priv) + 0xb848)
-#define MIPI_DPI_CONTROL(port)		_MMIO_MIPI(port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)
+#define MIPI_DPI_CONTROL(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)
 #define  DPI_LP_MODE					(1 << 6)
 #define  BACKLIGHT_OFF					(1 << 5)
 #define  BACKLIGHT_ON					(1 << 4)
@@ -251,26 +251,25 @@
 
 #define _MIPIA_DPI_DATA			(_MIPI_MMIO_BASE(dev_priv) + 0xb04c)
 #define _MIPIC_DPI_DATA			(_MIPI_MMIO_BASE(dev_priv) + 0xb84c)
-#define MIPI_DPI_DATA(port)		_MMIO_MIPI(port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)
+#define MIPI_DPI_DATA(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)
 #define  COMMAND_BYTE_SHIFT				0
 #define  COMMAND_BYTE_MASK				(0x3f << 0)
 
 #define _MIPIA_INIT_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb050)
 #define _MIPIC_INIT_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb850)
-#define MIPI_INIT_COUNT(port)		_MMIO_MIPI(port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)
+#define MIPI_INIT_COUNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)
 #define  MASTER_INIT_TIMER_SHIFT			0
 #define  MASTER_INIT_TIMER_MASK				(0xffff << 0)
 
 #define _MIPIA_MAX_RETURN_PKT_SIZE	(_MIPI_MMIO_BASE(dev_priv) + 0xb054)
 #define _MIPIC_MAX_RETURN_PKT_SIZE	(_MIPI_MMIO_BASE(dev_priv) + 0xb854)
-#define MIPI_MAX_RETURN_PKT_SIZE(port)	_MMIO_MIPI(port, \
-			_MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)
+#define MIPI_MAX_RETURN_PKT_SIZE(dev_priv, port) _MMIO_MIPI(port, _MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)
 #define  MAX_RETURN_PKT_SIZE_SHIFT			0
 #define  MAX_RETURN_PKT_SIZE_MASK			(0x3ff << 0)
 
 #define _MIPIA_VIDEO_MODE_FORMAT	(_MIPI_MMIO_BASE(dev_priv) + 0xb058)
 #define _MIPIC_VIDEO_MODE_FORMAT	(_MIPI_MMIO_BASE(dev_priv) + 0xb858)
-#define MIPI_VIDEO_MODE_FORMAT(port)	_MMIO_MIPI(port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)
+#define MIPI_VIDEO_MODE_FORMAT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)
 #define  RANDOM_DPI_DISPLAY_RESOLUTION			(1 << 4)
 #define  DISABLE_VIDEO_BTA				(1 << 3)
 #define  IP_TG_CONFIG					(1 << 2)
@@ -280,7 +279,7 @@
 
 #define _MIPIA_EOT_DISABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb05c)
 #define _MIPIC_EOT_DISABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb85c)
-#define MIPI_EOT_DISABLE(port)		_MMIO_MIPI(port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)
+#define MIPI_EOT_DISABLE(dev_priv, port) _MMIO_MIPI(port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)
 #define  BXT_DEFEATURE_DPI_FIFO_CTR			(1 << 9)
 #define  BXT_DPHY_DEFEATURE_EN				(1 << 8)
 #define  LP_RX_TIMEOUT_ERROR_RECOVERY_DISABLE		(1 << 7)
@@ -294,34 +293,34 @@
 
 #define _MIPIA_LP_BYTECLK		(_MIPI_MMIO_BASE(dev_priv) + 0xb060)
 #define _MIPIC_LP_BYTECLK		(_MIPI_MMIO_BASE(dev_priv) + 0xb860)
-#define MIPI_LP_BYTECLK(port)		_MMIO_MIPI(port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)
+#define MIPI_LP_BYTECLK(dev_priv, port) _MMIO_MIPI(port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)
 #define  LP_BYTECLK_SHIFT				0
 #define  LP_BYTECLK_MASK				(0xffff << 0)
 
 #define _MIPIA_TLPX_TIME_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb0a4)
 #define _MIPIC_TLPX_TIME_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb8a4)
-#define MIPI_TLPX_TIME_COUNT(port)	 _MMIO_MIPI(port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)
+#define MIPI_TLPX_TIME_COUNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)
 
 #define _MIPIA_CLK_LANE_TIMING		(_MIPI_MMIO_BASE(dev_priv) + 0xb098)
 #define _MIPIC_CLK_LANE_TIMING		(_MIPI_MMIO_BASE(dev_priv) + 0xb898)
-#define MIPI_CLK_LANE_TIMING(port)	 _MMIO_MIPI(port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)
+#define MIPI_CLK_LANE_TIMING(dev_priv, port) _MMIO_MIPI(port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)
 
 /* bits 31:0 */
 #define _MIPIA_LP_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb064)
 #define _MIPIC_LP_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb864)
-#define MIPI_LP_GEN_DATA(port)		_MMIO_MIPI(port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)
+#define MIPI_LP_GEN_DATA(dev_priv, port) _MMIO_MIPI(port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)
 
 /* bits 31:0 */
 #define _MIPIA_HS_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb068)
 #define _MIPIC_HS_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb868)
-#define MIPI_HS_GEN_DATA(port)		_MMIO_MIPI(port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)
+#define MIPI_HS_GEN_DATA(dev_priv, port) _MMIO_MIPI(port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)
 
 #define _MIPIA_LP_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb06c)
 #define _MIPIC_LP_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb86c)
-#define MIPI_LP_GEN_CTRL(port)		_MMIO_MIPI(port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)
+#define MIPI_LP_GEN_CTRL(dev_priv, port) _MMIO_MIPI(port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)
 #define _MIPIA_HS_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb070)
 #define _MIPIC_HS_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb870)
-#define MIPI_HS_GEN_CTRL(port)		_MMIO_MIPI(port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)
+#define MIPI_HS_GEN_CTRL(dev_priv, port) _MMIO_MIPI(port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)
 #define  LONG_PACKET_WORD_COUNT_SHIFT			8
 #define  LONG_PACKET_WORD_COUNT_MASK			(0xffff << 8)
 #define  SHORT_PACKET_PARAM_SHIFT			8
@@ -334,7 +333,7 @@
 
 #define _MIPIA_GEN_FIFO_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb074)
 #define _MIPIC_GEN_FIFO_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb874)
-#define MIPI_GEN_FIFO_STAT(port)	_MMIO_MIPI(port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)
+#define MIPI_GEN_FIFO_STAT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)
 #define  DPI_FIFO_EMPTY					(1 << 28)
 #define  DBI_FIFO_EMPTY					(1 << 27)
 #define  LP_CTRL_FIFO_EMPTY				(1 << 26)
@@ -352,14 +351,14 @@
 
 #define _MIPIA_HS_LS_DBI_ENABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb078)
 #define _MIPIC_HS_LS_DBI_ENABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb878)
-#define MIPI_HS_LP_DBI_ENABLE(port)	_MMIO_MIPI(port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)
+#define MIPI_HS_LP_DBI_ENABLE(dev_priv, port) _MMIO_MIPI(port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)
 #define  DBI_HS_LP_MODE_MASK				(1 << 0)
 #define  DBI_LP_MODE					(1 << 0)
 #define  DBI_HS_MODE					(0 << 0)
 
 #define _MIPIA_DPHY_PARAM		(_MIPI_MMIO_BASE(dev_priv) + 0xb080)
 #define _MIPIC_DPHY_PARAM		(_MIPI_MMIO_BASE(dev_priv) + 0xb880)
-#define MIPI_DPHY_PARAM(port)		_MMIO_MIPI(port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)
+#define MIPI_DPHY_PARAM(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)
 #define  EXIT_ZERO_COUNT_SHIFT				24
 #define  EXIT_ZERO_COUNT_MASK				(0x3f << 24)
 #define  TRAIL_COUNT_SHIFT				16
@@ -371,11 +370,11 @@
 
 #define _MIPIA_DBI_BW_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb084)
 #define _MIPIC_DBI_BW_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb884)
-#define MIPI_DBI_BW_CTRL(port)		_MMIO_MIPI(port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)
+#define MIPI_DBI_BW_CTRL(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)
 
 #define _MIPIA_CLK_LANE_SWITCH_TIME_CNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb088)
 #define _MIPIC_CLK_LANE_SWITCH_TIME_CNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb888)
-#define MIPI_CLK_LANE_SWITCH_TIME_CNT(port)	_MMIO_MIPI(port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)
+#define MIPI_CLK_LANE_SWITCH_TIME_CNT(dev_priv, port) _MMIO_MIPI(port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)
 #define  LP_HS_SSW_CNT_SHIFT				16
 #define  LP_HS_SSW_CNT_MASK				(0xffff << 16)
 #define  HS_LP_PWR_SW_CNT_SHIFT				0
@@ -383,16 +382,16 @@
 
 #define _MIPIA_STOP_STATE_STALL		(_MIPI_MMIO_BASE(dev_priv) + 0xb08c)
 #define _MIPIC_STOP_STATE_STALL		(_MIPI_MMIO_BASE(dev_priv) + 0xb88c)
-#define MIPI_STOP_STATE_STALL(port)	_MMIO_MIPI(port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)
+#define MIPI_STOP_STATE_STALL(dev_priv, port) _MMIO_MIPI(port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)
 #define  STOP_STATE_STALL_COUNTER_SHIFT			0
 #define  STOP_STATE_STALL_COUNTER_MASK			(0xff << 0)
 
 #define _MIPIA_INTR_STAT_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb090)
 #define _MIPIC_INTR_STAT_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb890)
-#define MIPI_INTR_STAT_REG_1(port)	_MMIO_MIPI(port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)
+#define MIPI_INTR_STAT_REG_1(dev_priv, port) _MMIO_MIPI(port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)
 #define _MIPIA_INTR_EN_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb094)
 #define _MIPIC_INTR_EN_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb894)
-#define MIPI_INTR_EN_REG_1(port)	_MMIO_MIPI(port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)
+#define MIPI_INTR_EN_REG_1(dev_priv, port) _MMIO_MIPI(port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)
 #define  RX_CONTENTION_DETECTED				(1 << 0)
 
 /* XXX: only pipe A ?!? */
@@ -411,7 +410,7 @@
 
 #define _MIPIA_CTRL			(_MIPI_MMIO_BASE(dev_priv) + 0xb104)
 #define _MIPIC_CTRL			(_MIPI_MMIO_BASE(dev_priv) + 0xb904)
-#define MIPI_CTRL(port)			_MMIO_MIPI(port, _MIPIA_CTRL, _MIPIC_CTRL)
+#define MIPI_CTRL(dev_priv, port) _MMIO_MIPI(port, _MIPIA_CTRL, _MIPIC_CTRL)
 #define  ESCAPE_CLOCK_DIVIDER_SHIFT			5 /* A only */
 #define  ESCAPE_CLOCK_DIVIDER_MASK			(3 << 5)
 #define  ESCAPE_CLOCK_DIVIDER_1				(0 << 5)
@@ -444,20 +443,20 @@
 
 #define _MIPIA_DATA_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb108)
 #define _MIPIC_DATA_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb908)
-#define MIPI_DATA_ADDRESS(port)		_MMIO_MIPI(port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)
+#define MIPI_DATA_ADDRESS(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)
 #define  DATA_MEM_ADDRESS_SHIFT				5
 #define  DATA_MEM_ADDRESS_MASK				(0x7ffffff << 5)
 #define  DATA_VALID					(1 << 0)
 
 #define _MIPIA_DATA_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb10c)
 #define _MIPIC_DATA_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb90c)
-#define MIPI_DATA_LENGTH(port)		_MMIO_MIPI(port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)
+#define MIPI_DATA_LENGTH(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)
 #define  DATA_LENGTH_SHIFT				0
 #define  DATA_LENGTH_MASK				(0xfffff << 0)
 
 #define _MIPIA_COMMAND_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb110)
 #define _MIPIC_COMMAND_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb910)
-#define MIPI_COMMAND_ADDRESS(port)	_MMIO_MIPI(port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)
+#define MIPI_COMMAND_ADDRESS(dev_priv, port) _MMIO_MIPI(port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)
 #define  COMMAND_MEM_ADDRESS_SHIFT			5
 #define  COMMAND_MEM_ADDRESS_MASK			(0x7ffffff << 5)
 #define  AUTO_PWG_ENABLE				(1 << 2)
@@ -466,17 +465,17 @@
 
 #define _MIPIA_COMMAND_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb114)
 #define _MIPIC_COMMAND_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb914)
-#define MIPI_COMMAND_LENGTH(port)	_MMIO_MIPI(port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)
+#define MIPI_COMMAND_LENGTH(dev_priv, port) _MMIO_MIPI(port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)
 #define  COMMAND_LENGTH_SHIFT(n)			(8 * (n)) /* n: 0...3 */
 #define  COMMAND_LENGTH_MASK(n)				(0xff << (8 * (n)))
 
 #define _MIPIA_READ_DATA_RETURN0	(_MIPI_MMIO_BASE(dev_priv) + 0xb118)
 #define _MIPIC_READ_DATA_RETURN0	(_MIPI_MMIO_BASE(dev_priv) + 0xb918)
-#define MIPI_READ_DATA_RETURN(port, n) _MMIO(_MIPI(port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */
+#define MIPI_READ_DATA_RETURN(dev_priv, port, n) _MMIO(_MIPI(port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */
 
 #define _MIPIA_READ_DATA_VALID		(_MIPI_MMIO_BASE(dev_priv) + 0xb138)
 #define _MIPIC_READ_DATA_VALID		(_MIPI_MMIO_BASE(dev_priv) + 0xb938)
-#define MIPI_READ_DATA_VALID(port)	_MMIO_MIPI(port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)
+#define MIPI_READ_DATA_VALID(dev_priv, port) _MMIO_MIPI(port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)
 #define  READ_DATA_VALID(n)				(1 << (n))
 
 #endif /* __VLV_DSI_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 735fc83e7026..614e815c048b 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -997,14 +997,13 @@ static int south_chicken2_mmio_write(struct intel_vgpu *vgpu,
 	return 0;
 }
 
-#define DSPSURF_TO_PIPE(offset) \
-	calc_index(offset, _DSPASURF, _DSPBSURF, 0, DSPSURF(PIPE_C))
+#define DSPSURF_TO_PIPE(dev_priv,offset) calc_index(offset, _DSPASURF, _DSPBSURF, 0, DSPSURF(PIPE_C))
 
 static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	u32 pipe = DSPSURF_TO_PIPE(offset);
+	u32 pipe = DSPSURF_TO_PIPE(dev_priv, offset);
 	int event = SKL_FLIP_EVENT(pipe, PLANE_PRIMARY);
 
 	write_vreg(vgpu, offset, p_data, bytes);
@@ -1071,16 +1070,16 @@ static int trigger_aux_channel_interrupt(struct intel_vgpu *vgpu,
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	enum intel_gvt_event_type event;
 
-	if (reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(AUX_CH_A)))
+	if (reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(dev_priv, AUX_CH_A)))
 		event = AUX_CHANNEL_A;
 	else if (reg == _PCH_DPB_AUX_CH_CTL ||
-		 reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(AUX_CH_B)))
+		 reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(dev_priv, AUX_CH_B)))
 		event = AUX_CHANNEL_B;
 	else if (reg == _PCH_DPC_AUX_CH_CTL ||
-		 reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(AUX_CH_C)))
+		 reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(dev_priv, AUX_CH_C)))
 		event = AUX_CHANNEL_C;
 	else if (reg == _PCH_DPD_AUX_CH_CTL ||
-		 reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(AUX_CH_D)))
+		 reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(dev_priv, AUX_CH_D)))
 		event = AUX_CHANNEL_D;
 	else {
 		drm_WARN_ON(&dev_priv->drm, true);
@@ -2581,11 +2580,14 @@ static int init_skl_mmio_info(struct intel_gvt *gvt)
 	MMIO_DH(FORCEWAKE_MEDIA_GEN9, D_SKL_PLUS, NULL, mul_force_wake_write);
 	MMIO_DH(FORCEWAKE_ACK_MEDIA_GEN9, D_SKL_PLUS, NULL, NULL);
 
-	MMIO_F(DP_AUX_CH_CTL(AUX_CH_B), 6 * 4, 0, 0, 0, D_SKL_PLUS, NULL,
+	MMIO_F(DP_AUX_CH_CTL(dev_priv, AUX_CH_B), 6 * 4, 0, 0, 0, D_SKL_PLUS,
+						NULL,
 						dp_aux_ch_ctl_mmio_write);
-	MMIO_F(DP_AUX_CH_CTL(AUX_CH_C), 6 * 4, 0, 0, 0, D_SKL_PLUS, NULL,
+	MMIO_F(DP_AUX_CH_CTL(dev_priv, AUX_CH_C), 6 * 4, 0, 0, 0, D_SKL_PLUS,
+						NULL,
 						dp_aux_ch_ctl_mmio_write);
-	MMIO_F(DP_AUX_CH_CTL(AUX_CH_D), 6 * 4, 0, 0, 0, D_SKL_PLUS, NULL,
+	MMIO_F(DP_AUX_CH_CTL(dev_priv, AUX_CH_D), 6 * 4, 0, 0, 0, D_SKL_PLUS,
+						NULL,
 						dp_aux_ch_ctl_mmio_write);
 
 	MMIO_DH(HSW_PWR_WELL_CTL2, D_SKL_PLUS, NULL, skl_power_well_ctl_write);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3b2642397b82..234ea483090f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1402,7 +1402,7 @@
 #define _DPLL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x6014)
 #define _DPLL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x6018)
 #define _CHV_DPLL_C (DISPLAY_MMIO_BASE(dev_priv) + 0x6030)
-#define DPLL(pipe) _MMIO_PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
+#define DPLL(dev_priv, pipe) _MMIO_PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
 
 #define VGA0	_MMIO(0x6000)
 #define VGA1	_MMIO(0x6004)
@@ -1501,7 +1501,7 @@
 #define _DPLL_A_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x601c)
 #define _DPLL_B_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x6020)
 #define _CHV_DPLL_C_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x603c)
-#define DPLL_MD(pipe) _MMIO_PIPE3((pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
+#define DPLL_MD(dev_priv, pipe) _MMIO_PIPE3((pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
 
 /*
  * UDI pixel divider, controlling how many pixels are stuffed into a packet.
@@ -3377,36 +3377,22 @@
 #define _DPB_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
 #define _DPB_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
 
-#define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
-#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
+#define DP_AUX_CH_CTL(dev_priv, aux_ch) _MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
+#define DP_AUX_CH_DATA(dev_priv, aux_ch, i) _MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
 
 #define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
 #define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
 #define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
 #define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
 
-#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
-						       _DPA_AUX_CH_CTL, \
-						       _DPB_AUX_CH_CTL, \
-						       0, /* port/aux_ch C is non-existent */ \
-						       _XELPDP_USBC1_AUX_CH_CTL, \
-						       _XELPDP_USBC2_AUX_CH_CTL, \
-						       _XELPDP_USBC3_AUX_CH_CTL, \
-						       _XELPDP_USBC4_AUX_CH_CTL))
+#define XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch) _MMIO(_PICK(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL, 0, _XELPDP_USBC1_AUX_CH_CTL, _XELPDP_USBC2_AUX_CH_CTL, _XELPDP_USBC3_AUX_CH_CTL, _XELPDP_USBC4_AUX_CH_CTL))
 
 #define _XELPDP_USBC1_AUX_CH_DATA1      0x16F214
 #define _XELPDP_USBC2_AUX_CH_DATA1      0x16F414
 #define _XELPDP_USBC3_AUX_CH_DATA1      0x16F614
 #define _XELPDP_USBC4_AUX_CH_DATA1      0x16F814
 
-#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
-						       _DPA_AUX_CH_DATA1, \
-						       _DPB_AUX_CH_DATA1, \
-						       0, /* port/aux_ch C is non-existent */ \
-						       _XELPDP_USBC1_AUX_CH_DATA1, \
-						       _XELPDP_USBC2_AUX_CH_DATA1, \
-						       _XELPDP_USBC3_AUX_CH_DATA1, \
-						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
+#define XELPDP_DP_AUX_CH_DATA(dev_priv, aux_ch, i) _MMIO(_PICK(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1, 0, _XELPDP_USBC1_AUX_CH_DATA1, _XELPDP_USBC2_AUX_CH_DATA1, _XELPDP_USBC3_AUX_CH_DATA1, _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
 
 #define   DP_AUX_CH_CTL_SEND_BUSY	    (1 << 31)
 #define   DP_AUX_CH_CTL_DONE		    (1 << 30)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index ce6b3c3b636a..81afe3b9b67e 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -898,9 +898,9 @@ static int iterate_skl_plus_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(FORCEWAKE_ACK_GT_GEN9);
 	MMIO_D(FORCEWAKE_MEDIA_GEN9);
 	MMIO_D(FORCEWAKE_ACK_MEDIA_GEN9);
-	MMIO_F(DP_AUX_CH_CTL(AUX_CH_B), 6 * 4);
-	MMIO_F(DP_AUX_CH_CTL(AUX_CH_C), 6 * 4);
-	MMIO_F(DP_AUX_CH_CTL(AUX_CH_D), 6 * 4);
+	MMIO_F(DP_AUX_CH_CTL(dev_priv, AUX_CH_B), 6 * 4);
+	MMIO_F(DP_AUX_CH_CTL(dev_priv, AUX_CH_C), 6 * 4);
+	MMIO_F(DP_AUX_CH_CTL(dev_priv, AUX_CH_D), 6 * 4);
 	MMIO_D(HSW_PWR_WELL_CTL1);
 	MMIO_D(HSW_PWR_WELL_CTL2);
 	MMIO_D(DBUF_CTL_S(0));
-- 
2.39.1

