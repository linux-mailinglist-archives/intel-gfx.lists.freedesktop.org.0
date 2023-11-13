Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CF37EA178
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 17:47:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7E610E16F;
	Mon, 13 Nov 2023 16:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39C9F10E16F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 16:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699894037; x=1731430037;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eCSR540bq9W169Owkf2qCyXpD85X61CGtKUV9z6sCPM=;
 b=SAiDFRCl73ed3Ag7Hb71wpZ1ONT4EJp5Z0BWiLt7U9VVznPIBRMgFNIn
 ZqW0lt4nkAN1k2f0S9oYDNzX+By66jOqeo8Y/Isa1MpFnUK9DwDg3GHTD
 JTpQeQlusiMuOSocR00Atr2WAcq/MlM86Zd0g1sUCe6qYqz8fBQR/rKQ4
 6t2t7TGeK+QDy6t5pdL1/1C/WA0OGdt1rMNuplzYDC12LRCQnBP4msAwc
 wSp1OY3KnIJdNy0D9LzwcNJcDvB6LyfwXQ9fIwaVPf4tSnei9FCwvn7t/
 g0A5ZGxaIWA2iKGrTh+CmaCzCwuzx+2qegevosOazY1tIzmfsJ3glcI1D w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="389330091"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="389330091"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 08:47:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="764376169"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="764376169"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 08:47:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Nov 2023 18:47:08 +0200
Message-Id: <20231113164711.4100548-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: move *_crtc_clock_get() to
 intel_dpll.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Considering what the functions do, intel_dpll.c is a more suitable
location, and lets us make some functions static while at it.

This also means intel_display.c no longer does any DPIO access.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 171 -----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 -
 drivers/gpu/drm/i915/display/intel_dpll.c     | 175 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll.h     |   9 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   1 +
 5 files changed, 181 insertions(+), 177 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3effafcbb411..09056232483c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -73,7 +73,6 @@
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
-#include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
 #include "intel_dpt.h"
@@ -2859,67 +2858,6 @@ static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
 		intel_de_read(dev_priv, PFIT_PGM_RATIOS);
 }
 
-static void vlv_crtc_clock_get(struct intel_crtc *crtc,
-			       struct intel_crtc_state *pipe_config)
-{
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum pipe pipe = crtc->pipe;
-	struct dpll clock;
-	u32 mdiv;
-	int refclk = 100000;
-
-	/* In case of DSI, DPLL will not be used */
-	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
-		return;
-
-	vlv_dpio_get(dev_priv);
-	mdiv = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW3(pipe));
-	vlv_dpio_put(dev_priv);
-
-	clock.m1 = (mdiv >> DPIO_M1DIV_SHIFT) & 7;
-	clock.m2 = mdiv & DPIO_M2DIV_MASK;
-	clock.n = (mdiv >> DPIO_N_SHIFT) & 0xf;
-	clock.p1 = (mdiv >> DPIO_P1_SHIFT) & 7;
-	clock.p2 = (mdiv >> DPIO_P2_SHIFT) & 0x1f;
-
-	pipe_config->port_clock = vlv_calc_dpll_params(refclk, &clock);
-}
-
-static void chv_crtc_clock_get(struct intel_crtc *crtc,
-			       struct intel_crtc_state *pipe_config)
-{
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum pipe pipe = crtc->pipe;
-	enum dpio_channel port = vlv_pipe_to_channel(pipe);
-	struct dpll clock;
-	u32 cmn_dw13, pll_dw0, pll_dw1, pll_dw2, pll_dw3;
-	int refclk = 100000;
-
-	/* In case of DSI, DPLL will not be used */
-	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
-		return;
-
-	vlv_dpio_get(dev_priv);
-	cmn_dw13 = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW13(port));
-	pll_dw0 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW0(port));
-	pll_dw1 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW1(port));
-	pll_dw2 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW2(port));
-	pll_dw3 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW3(port));
-	vlv_dpio_put(dev_priv);
-
-	clock.m1 = (pll_dw1 & 0x7) == DPIO_CHV_M1_DIV_BY_2 ? 2 : 0;
-	clock.m2 = (pll_dw0 & 0xff) << 22;
-	if (pll_dw3 & DPIO_CHV_FRAC_DIV_EN)
-		clock.m2 |= pll_dw2 & 0x3fffff;
-	clock.n = (pll_dw1 >> DPIO_CHV_N_DIV_SHIFT) & 0xf;
-	clock.p1 = (cmn_dw13 >> DPIO_CHV_P1_DIV_SHIFT) & 0x7;
-	clock.p2 = (cmn_dw13 >> DPIO_CHV_P2_DIV_SHIFT) & 0x1f;
-
-	pipe_config->port_clock = chv_calc_dpll_params(refclk, &clock);
-}
-
 static enum intel_output_format
 bdw_get_pipe_misc_output_format(struct intel_crtc *crtc)
 {
@@ -3840,115 +3778,6 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-static int i9xx_pll_refclk(struct drm_device *dev,
-			   const struct intel_crtc_state *pipe_config)
-{
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	u32 dpll = pipe_config->dpll_hw_state.dpll;
-
-	if ((dpll & PLL_REF_INPUT_MASK) == PLLB_REF_INPUT_SPREADSPECTRUMIN)
-		return dev_priv->display.vbt.lvds_ssc_freq;
-	else if (HAS_PCH_SPLIT(dev_priv))
-		return 120000;
-	else if (DISPLAY_VER(dev_priv) != 2)
-		return 96000;
-	else
-		return 48000;
-}
-
-/* Returns the clock of the currently programmed mode of the given pipe. */
-void i9xx_crtc_clock_get(struct intel_crtc *crtc,
-			 struct intel_crtc_state *pipe_config)
-{
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	u32 dpll = pipe_config->dpll_hw_state.dpll;
-	u32 fp;
-	struct dpll clock;
-	int port_clock;
-	int refclk = i9xx_pll_refclk(dev, pipe_config);
-
-	if ((dpll & DISPLAY_RATE_SELECT_FPA1) == 0)
-		fp = pipe_config->dpll_hw_state.fp0;
-	else
-		fp = pipe_config->dpll_hw_state.fp1;
-
-	clock.m1 = (fp & FP_M1_DIV_MASK) >> FP_M1_DIV_SHIFT;
-	if (IS_PINEVIEW(dev_priv)) {
-		clock.n = ffs((fp & FP_N_PINEVIEW_DIV_MASK) >> FP_N_DIV_SHIFT) - 1;
-		clock.m2 = (fp & FP_M2_PINEVIEW_DIV_MASK) >> FP_M2_DIV_SHIFT;
-	} else {
-		clock.n = (fp & FP_N_DIV_MASK) >> FP_N_DIV_SHIFT;
-		clock.m2 = (fp & FP_M2_DIV_MASK) >> FP_M2_DIV_SHIFT;
-	}
-
-	if (DISPLAY_VER(dev_priv) != 2) {
-		if (IS_PINEVIEW(dev_priv))
-			clock.p1 = ffs((dpll & DPLL_FPA01_P1_POST_DIV_MASK_PINEVIEW) >>
-				DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW);
-		else
-			clock.p1 = ffs((dpll & DPLL_FPA01_P1_POST_DIV_MASK) >>
-			       DPLL_FPA01_P1_POST_DIV_SHIFT);
-
-		switch (dpll & DPLL_MODE_MASK) {
-		case DPLLB_MODE_DAC_SERIAL:
-			clock.p2 = dpll & DPLL_DAC_SERIAL_P2_CLOCK_DIV_5 ?
-				5 : 10;
-			break;
-		case DPLLB_MODE_LVDS:
-			clock.p2 = dpll & DPLLB_LVDS_P2_CLOCK_DIV_7 ?
-				7 : 14;
-			break;
-		default:
-			drm_dbg_kms(&dev_priv->drm,
-				    "Unknown DPLL mode %08x in programmed "
-				    "mode\n", (int)(dpll & DPLL_MODE_MASK));
-			return;
-		}
-
-		if (IS_PINEVIEW(dev_priv))
-			port_clock = pnv_calc_dpll_params(refclk, &clock);
-		else
-			port_clock = i9xx_calc_dpll_params(refclk, &clock);
-	} else {
-		enum pipe lvds_pipe;
-
-		if (IS_I85X(dev_priv) &&
-		    intel_lvds_port_enabled(dev_priv, LVDS, &lvds_pipe) &&
-		    lvds_pipe == crtc->pipe) {
-			u32 lvds = intel_de_read(dev_priv, LVDS);
-
-			clock.p1 = ffs((dpll & DPLL_FPA01_P1_POST_DIV_MASK_I830_LVDS) >>
-				       DPLL_FPA01_P1_POST_DIV_SHIFT);
-
-			if (lvds & LVDS_CLKB_POWER_UP)
-				clock.p2 = 7;
-			else
-				clock.p2 = 14;
-		} else {
-			if (dpll & PLL_P1_DIVIDE_BY_TWO)
-				clock.p1 = 2;
-			else {
-				clock.p1 = ((dpll & DPLL_FPA01_P1_POST_DIV_MASK_I830) >>
-					    DPLL_FPA01_P1_POST_DIV_SHIFT) + 2;
-			}
-			if (dpll & PLL_P2_DIVIDE_BY_4)
-				clock.p2 = 4;
-			else
-				clock.p2 = 2;
-		}
-
-		port_clock = i9xx_calc_dpll_params(refclk, &clock);
-	}
-
-	/*
-	 * This value includes pixel_multiplier. We will use
-	 * port_clock to compute adjusted_mode.crtc_clock in the
-	 * encoder's get_config() function.
-	 */
-	pipe_config->port_clock = port_clock;
-}
-
 int intel_dotclock_calculate(int link_freq,
 			     const struct intel_link_m_n *m_n)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 6d0636acb725..8548f49e3972 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -481,8 +481,6 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    enum transcoder cpu_transcoder,
 				    struct intel_link_m_n *m_n);
-void i9xx_crtc_clock_get(struct intel_crtc *crtc,
-			 struct intel_crtc_state *pipe_config);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
 int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
 enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 509b862f9e60..ac732a3a70a8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -16,6 +16,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_lvds.h"
+#include "intel_lvds_regs.h"
 #include "intel_panel.h"
 #include "intel_pps.h"
 #include "intel_snps_phy.h"
@@ -311,7 +312,7 @@ static const struct intel_limit intel_limits_bxt = {
  * divided-down version of it.
  */
 /* m1 is reserved as 0 in Pineview, n is a ring counter */
-int pnv_calc_dpll_params(int refclk, struct dpll *clock)
+static int pnv_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = clock->m2 + 2;
 	clock->p = clock->p1 * clock->p2;
@@ -342,7 +343,7 @@ int i9xx_calc_dpll_params(int refclk, struct dpll *clock)
 	return clock->dot;
 }
 
-int vlv_calc_dpll_params(int refclk, struct dpll *clock)
+static int vlv_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = clock->m1 * clock->m2;
 	clock->p = clock->p1 * clock->p2 * 5;
@@ -368,6 +369,176 @@ int chv_calc_dpll_params(int refclk, struct dpll *clock)
 	return clock->dot;
 }
 
+static int i9xx_pll_refclk(struct drm_device *dev,
+			   const struct intel_crtc_state *pipe_config)
+{
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	u32 dpll = pipe_config->dpll_hw_state.dpll;
+
+	if ((dpll & PLL_REF_INPUT_MASK) == PLLB_REF_INPUT_SPREADSPECTRUMIN)
+		return dev_priv->display.vbt.lvds_ssc_freq;
+	else if (HAS_PCH_SPLIT(dev_priv))
+		return 120000;
+	else if (DISPLAY_VER(dev_priv) != 2)
+		return 96000;
+	else
+		return 48000;
+}
+
+/* Returns the clock of the currently programmed mode of the given pipe. */
+void i9xx_crtc_clock_get(struct intel_crtc *crtc,
+			 struct intel_crtc_state *pipe_config)
+{
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	u32 dpll = pipe_config->dpll_hw_state.dpll;
+	u32 fp;
+	struct dpll clock;
+	int port_clock;
+	int refclk = i9xx_pll_refclk(dev, pipe_config);
+
+	if ((dpll & DISPLAY_RATE_SELECT_FPA1) == 0)
+		fp = pipe_config->dpll_hw_state.fp0;
+	else
+		fp = pipe_config->dpll_hw_state.fp1;
+
+	clock.m1 = (fp & FP_M1_DIV_MASK) >> FP_M1_DIV_SHIFT;
+	if (IS_PINEVIEW(dev_priv)) {
+		clock.n = ffs((fp & FP_N_PINEVIEW_DIV_MASK) >> FP_N_DIV_SHIFT) - 1;
+		clock.m2 = (fp & FP_M2_PINEVIEW_DIV_MASK) >> FP_M2_DIV_SHIFT;
+	} else {
+		clock.n = (fp & FP_N_DIV_MASK) >> FP_N_DIV_SHIFT;
+		clock.m2 = (fp & FP_M2_DIV_MASK) >> FP_M2_DIV_SHIFT;
+	}
+
+	if (DISPLAY_VER(dev_priv) != 2) {
+		if (IS_PINEVIEW(dev_priv))
+			clock.p1 = ffs((dpll & DPLL_FPA01_P1_POST_DIV_MASK_PINEVIEW) >>
+				DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW);
+		else
+			clock.p1 = ffs((dpll & DPLL_FPA01_P1_POST_DIV_MASK) >>
+			       DPLL_FPA01_P1_POST_DIV_SHIFT);
+
+		switch (dpll & DPLL_MODE_MASK) {
+		case DPLLB_MODE_DAC_SERIAL:
+			clock.p2 = dpll & DPLL_DAC_SERIAL_P2_CLOCK_DIV_5 ?
+				5 : 10;
+			break;
+		case DPLLB_MODE_LVDS:
+			clock.p2 = dpll & DPLLB_LVDS_P2_CLOCK_DIV_7 ?
+				7 : 14;
+			break;
+		default:
+			drm_dbg_kms(&dev_priv->drm,
+				    "Unknown DPLL mode %08x in programmed "
+				    "mode\n", (int)(dpll & DPLL_MODE_MASK));
+			return;
+		}
+
+		if (IS_PINEVIEW(dev_priv))
+			port_clock = pnv_calc_dpll_params(refclk, &clock);
+		else
+			port_clock = i9xx_calc_dpll_params(refclk, &clock);
+	} else {
+		enum pipe lvds_pipe;
+
+		if (IS_I85X(dev_priv) &&
+		    intel_lvds_port_enabled(dev_priv, LVDS, &lvds_pipe) &&
+		    lvds_pipe == crtc->pipe) {
+			u32 lvds = intel_de_read(dev_priv, LVDS);
+
+			clock.p1 = ffs((dpll & DPLL_FPA01_P1_POST_DIV_MASK_I830_LVDS) >>
+				       DPLL_FPA01_P1_POST_DIV_SHIFT);
+
+			if (lvds & LVDS_CLKB_POWER_UP)
+				clock.p2 = 7;
+			else
+				clock.p2 = 14;
+		} else {
+			if (dpll & PLL_P1_DIVIDE_BY_TWO)
+				clock.p1 = 2;
+			else {
+				clock.p1 = ((dpll & DPLL_FPA01_P1_POST_DIV_MASK_I830) >>
+					    DPLL_FPA01_P1_POST_DIV_SHIFT) + 2;
+			}
+			if (dpll & PLL_P2_DIVIDE_BY_4)
+				clock.p2 = 4;
+			else
+				clock.p2 = 2;
+		}
+
+		port_clock = i9xx_calc_dpll_params(refclk, &clock);
+	}
+
+	/*
+	 * This value includes pixel_multiplier. We will use
+	 * port_clock to compute adjusted_mode.crtc_clock in the
+	 * encoder's get_config() function.
+	 */
+	pipe_config->port_clock = port_clock;
+}
+
+void vlv_crtc_clock_get(struct intel_crtc *crtc,
+			struct intel_crtc_state *pipe_config)
+{
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum pipe pipe = crtc->pipe;
+	struct dpll clock;
+	u32 mdiv;
+	int refclk = 100000;
+
+	/* In case of DSI, DPLL will not be used */
+	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
+		return;
+
+	vlv_dpio_get(dev_priv);
+	mdiv = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW3(pipe));
+	vlv_dpio_put(dev_priv);
+
+	clock.m1 = (mdiv >> DPIO_M1DIV_SHIFT) & 7;
+	clock.m2 = mdiv & DPIO_M2DIV_MASK;
+	clock.n = (mdiv >> DPIO_N_SHIFT) & 0xf;
+	clock.p1 = (mdiv >> DPIO_P1_SHIFT) & 7;
+	clock.p2 = (mdiv >> DPIO_P2_SHIFT) & 0x1f;
+
+	pipe_config->port_clock = vlv_calc_dpll_params(refclk, &clock);
+}
+
+void chv_crtc_clock_get(struct intel_crtc *crtc,
+			struct intel_crtc_state *pipe_config)
+{
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum pipe pipe = crtc->pipe;
+	enum dpio_channel port = vlv_pipe_to_channel(pipe);
+	struct dpll clock;
+	u32 cmn_dw13, pll_dw0, pll_dw1, pll_dw2, pll_dw3;
+	int refclk = 100000;
+
+	/* In case of DSI, DPLL will not be used */
+	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
+		return;
+
+	vlv_dpio_get(dev_priv);
+	cmn_dw13 = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW13(port));
+	pll_dw0 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW0(port));
+	pll_dw1 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW1(port));
+	pll_dw2 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW2(port));
+	pll_dw3 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW3(port));
+	vlv_dpio_put(dev_priv);
+
+	clock.m1 = (pll_dw1 & 0x7) == DPIO_CHV_M1_DIV_BY_2 ? 2 : 0;
+	clock.m2 = (pll_dw0 & 0xff) << 22;
+	if (pll_dw3 & DPIO_CHV_FRAC_DIV_EN)
+		clock.m2 |= pll_dw2 & 0x3fffff;
+	clock.n = (pll_dw1 >> DPIO_CHV_N_DIV_SHIFT) & 0xf;
+	clock.p1 = (cmn_dw13 >> DPIO_CHV_P1_DIV_SHIFT) & 0x7;
+	clock.p2 = (cmn_dw13 >> DPIO_CHV_P2_DIV_SHIFT) & 0x1f;
+
+	pipe_config->port_clock = chv_calc_dpll_params(refclk, &clock);
+}
+
 /*
  * Returns whether the given set of divisors are valid for a given refclk with
  * the given connectors.
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index bbc30542f29f..ac01bb19cc6c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -20,8 +20,6 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
-int vlv_calc_dpll_params(int refclk, struct dpll *clock);
-int pnv_calc_dpll_params(int refclk, struct dpll *clock);
 int i9xx_calc_dpll_params(int refclk, struct dpll *clock);
 u32 i9xx_dpll_compute_fp(const struct dpll *dpll);
 void vlv_compute_dpll(struct intel_crtc_state *crtc_state);
@@ -41,6 +39,13 @@ bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
 			struct dpll *best_clock);
 int chv_calc_dpll_params(int refclk, struct dpll *pll_clock);
 
+void i9xx_crtc_clock_get(struct intel_crtc *crtc,
+			 struct intel_crtc_state *pipe_config);
+void vlv_crtc_clock_get(struct intel_crtc *crtc,
+			struct intel_crtc_state *pipe_config);
+void chv_crtc_clock_get(struct intel_crtc *crtc,
+			struct intel_crtc_state *pipe_config);
+
 void assert_pll_enabled(struct drm_i915_private *i915, enum pipe pipe);
 void assert_pll_disabled(struct drm_i915_private *i915, enum pipe pipe);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 866786e6b32f..baf679759e00 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -8,6 +8,7 @@
 #include "intel_crt.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dpll.h"
 #include "intel_fdi.h"
 #include "intel_fdi_regs.h"
 #include "intel_lvds.h"
-- 
2.39.2

