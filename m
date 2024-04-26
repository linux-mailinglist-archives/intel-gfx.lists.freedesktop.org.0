Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CAF8B37D8
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:03:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E70112391;
	Fri, 26 Apr 2024 13:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k2Irvb5y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C46E10F077;
 Fri, 26 Apr 2024 13:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136622; x=1745672622;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vhy5///10uTNJJi7U7bp8xcVbWoq3J5H3APYQKP3q8M=;
 b=k2Irvb5ybqUFs1BrhHmdeacOcoUzLIepPXb65ZJLVJcPYSQTVFbDxPj9
 9YXtYYxM8Ixe537PV2MRnrvtmdtOU9HpAET5PeuFI2hdCR2v/udEMubDH
 b/loziXcceiD0Nz7L8e2NYzLuhSWQXcOXvQxGNabMhI+i3g6eq/RMiQbT
 f0Attwj92/+s9vgp+uazDO+ABvkKisvJX6MX/v87Zn9aSb9D4DOKRwssv
 qdo/0+O7wciP6e85zAdRhlONnwBtHz3wFNSHH+YRcgPNijaGeiJarA+mW
 EjuwhNyTAVR57wU6ixK8ZzNeeunT7sDSCdwm92E+Q3YhWxmwryLtsFkgw g==;
X-CSE-ConnectionGUID: neMYJjnkQAeQgoOKY766tw==
X-CSE-MsgGUID: z58QYDAWRG+zpYmft89YsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="10028803"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="10028803"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:39 -0700
X-CSE-ConnectionGUID: ivhQ6me9SnmVRFci3SnnLA==
X-CSE-MsgGUID: hyV3XtXLQs6PDJDCw0lJbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="30052973"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 001/123] drm/i915: pass dev_priv explicitly to DPLL
Date: Fri, 26 Apr 2024 16:01:26 +0300
Message-Id: <44a7f672d7bfe02e542c114caaa8a78bfa01b72c.1714136165.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714136165.git.jani.nikula@intel.com>
References: <cover.1714136165.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the DPLL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 21 ++++-----
 .../drm/i915/display/intel_display_power.c    |  2 +-
 .../i915/display/intel_display_power_well.c   |  6 +--
 drivers/gpu/drm/i915/display/intel_dpll.c     | 45 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dvo.c      |  5 ++-
 drivers/gpu/drm/i915/display/intel_pps.c      |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  2 +-
 7 files changed, 43 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f45e5f02096d..5b6025e2f621 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -376,11 +376,11 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
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
@@ -8185,11 +8185,12 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
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
@@ -8197,12 +8198,12 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
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
+		intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 		udelay(150); /* wait for warmup */
 	}
 
@@ -8235,8 +8236,8 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	intel_wait_for_pipe_scanline_stopped(crtc);
 
-	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), DPLL_VGA_MODE_DIS);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 }
 
 void intel_hpd_poll_fini(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 03dc7edcc443..354083128efb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1768,7 +1768,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 	 * current lane status.
 	 */
 	if (intel_power_well_is_enabled(dev_priv, cmn_bc)) {
-		u32 status = intel_de_read(dev_priv, DPLL(PIPE_A));
+		u32 status = intel_de_read(dev_priv, DPLL(dev_priv, PIPE_A));
 		unsigned int mask;
 
 		mask = status & DPLL_PORTB_READY_MASK;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index e8a6e53fd551..77b586f9e931 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1195,13 +1195,13 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 	 * CHV DPLL B/C have some issues if VGA mode is enabled.
 	 */
 	for_each_pipe(dev_priv, pipe) {
-		u32 val = intel_de_read(dev_priv, DPLL(pipe));
+		u32 val = intel_de_read(dev_priv, DPLL(dev_priv, pipe));
 
 		val |= DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
 		if (pipe != PIPE_A)
 			val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-		intel_de_write(dev_priv, DPLL(pipe), val);
+		intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
 	}
 
 	vlv_init_display_clock_gating(dev_priv);
@@ -1354,7 +1354,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 		 */
 		if (BITS_SET(phy_control,
 			     PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH1)) &&
-		    (intel_de_read(dev_priv, DPLL(PIPE_B)) & DPLL_VCO_ENABLE) == 0)
+		    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) & DPLL_VCO_ENABLE) == 0)
 			phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH1);
 
 		if (BITS_SET(phy_control,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 49274d632716..ccd299e31e95 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -402,7 +402,7 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
 		hw_state->dpll_md = tmp;
 	}
 
-	hw_state->dpll = intel_de_read(dev_priv, DPLL(crtc->pipe));
+	hw_state->dpll = intel_de_read(dev_priv, DPLL(dev_priv, crtc->pipe));
 
 	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
 		hw_state->fp0 = intel_de_read(dev_priv, FP0(crtc->pipe));
@@ -1840,11 +1840,12 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
 	 * dividers, even though the register value does change.
 	 */
-	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll & ~DPLL_VGA_MODE_DIS);
-	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
+		       hw_state->dpll & ~DPLL_VGA_MODE_DIS);
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
 
 	/* Wait for the clocks to stabilize. */
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 	udelay(150);
 
 	if (DISPLAY_VER(dev_priv) >= 4) {
@@ -1855,13 +1856,13 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 		 *
 		 * So write it again.
 		 */
-		intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
+		intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
 	}
 
 	/* We do this three times for luck */
 	for (i = 0; i < 3; i++) {
-		intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
-		intel_de_posting_read(dev_priv, DPLL(pipe));
+		intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
+		intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 		udelay(150); /* wait for warmup */
 	}
 }
@@ -1993,11 +1994,11 @@ static void _vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 	udelay(150);
 
-	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
+	if (intel_de_wait_for_set(dev_priv, DPLL(dev_priv, pipe), DPLL_LOCK_VLV, 1))
 		drm_err(&dev_priv->drm, "DPLL %d failed to lock\n", pipe);
 }
 
@@ -2014,7 +2015,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_pps_unlocked(dev_priv, pipe);
 
 	/* Enable Refclk */
-	intel_de_write(dev_priv, DPLL(pipe),
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
 		       hw_state->dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));
 
 	if (hw_state->dpll & DPLL_VCO_ENABLE) {
@@ -2146,10 +2147,10 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	udelay(1);
 
 	/* Enable PLL */
-	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
 
 	/* Check PLL is locked */
-	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
+	if (intel_de_wait_for_set(dev_priv, DPLL(dev_priv, pipe), DPLL_LOCK_VLV, 1))
 		drm_err(&dev_priv->drm, "PLL %d failed to lock\n", pipe);
 }
 
@@ -2166,7 +2167,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_pps_unlocked(dev_priv, pipe);
 
 	/* Enable Refclk and SSC */
-	intel_de_write(dev_priv, DPLL(pipe),
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
 		       hw_state->dpll & ~DPLL_VCO_ENABLE);
 
 	if (hw_state->dpll & DPLL_VCO_ENABLE) {
@@ -2191,7 +2192,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 		 * We should always have it disabled.
 		 */
 		drm_WARN_ON(&dev_priv->drm,
-			    (intel_de_read(dev_priv, DPLL(PIPE_B)) &
+			    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) &
 			     DPLL_VGA_MODE_DIS) == 0);
 	} else {
 		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
@@ -2249,8 +2250,8 @@ void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (pipe != PIPE_A)
 		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-	intel_de_write(dev_priv, DPLL(pipe), val);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 }
 
 void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
@@ -2267,8 +2268,8 @@ void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (pipe != PIPE_A)
 		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-	intel_de_write(dev_priv, DPLL(pipe), val);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 
 	vlv_dpio_get(dev_priv);
 
@@ -2293,8 +2294,8 @@ void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
 	/* Make sure the pipe isn't still relying on us */
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
-	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), DPLL_VGA_MODE_DIS);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 }
 
 
@@ -2320,7 +2321,7 @@ static void assert_pll(struct drm_i915_private *dev_priv,
 {
 	bool cur_state;
 
-	cur_state = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
+	cur_state = intel_de_read(dev_priv, DPLL(dev_priv, pipe)) & DPLL_VCO_ENABLE;
 	I915_STATE_WARN(dev_priv, cur_state != state,
 			"PLL state assertion failure (expected %s, current %s)\n",
 			str_on_off(state), str_on_off(cur_state));
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 1840f5b59229..091824334f26 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -456,13 +456,14 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 	 * the device.
 	 */
 	for_each_pipe(dev_priv, pipe)
-		dpll[pipe] = intel_de_rmw(dev_priv, DPLL(pipe), 0, DPLL_DVO_2X_MODE);
+		dpll[pipe] = intel_de_rmw(dev_priv, DPLL(dev_priv, pipe), 0,
+					  DPLL_DVO_2X_MODE);
 
 	ret = dvo->dev_ops->init(&intel_dvo->dev, i2c);
 
 	/* restore the DVO 2x clock state to original */
 	for_each_pipe(dev_priv, pipe) {
-		intel_de_write(dev_priv, DPLL(pipe), dpll[pipe]);
+		intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll[pipe]);
 	}
 
 	intel_gmbus_force_bit(i2c, false);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 0ccbf9a85914..c0208e85e4ad 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -119,7 +119,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	else
 		DP |= DP_PIPE_SEL(pipe);
 
-	pll_enabled = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
+	pll_enabled = intel_de_read(dev_priv, DPLL(dev_priv, pipe)) & DPLL_VCO_ENABLE;
 
 	/*
 	 * The DPLL for the pipe must be enabled for this to work.
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4eb37f38d888..2f34069b05b0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1150,7 +1150,7 @@
 #define _DPLL_A			0x6014
 #define _DPLL_B			0x6018
 #define _CHV_DPLL_C		0x6030
-#define DPLL(pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
+#define DPLL(dev_priv, pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
 						 (pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
 
 #define VGA0	_MMIO(0x6000)
-- 
2.39.2

