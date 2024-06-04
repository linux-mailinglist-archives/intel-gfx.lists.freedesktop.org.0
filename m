Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 125078FB6F6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566BC10E4CE;
	Tue,  4 Jun 2024 15:26:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MFFzbsfT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8261110E3C0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514795; x=1749050795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sSa14hg9kGIAsH7+wmhna4KNLUGK/lX0RH9F4YkKc8s=;
 b=MFFzbsfTyZ6Tg9bMa4FTNpbY9kL3H8nqZA4uQ3IHRdaK6yus4A/RPSAy
 zM0r1qo08ponUVx6TSnOFwZ8TfP0pOVrLE4bTAoYptJ47J4TdvqrcsG3m
 xg92EFdB8zbdBKYUC0y7hWDYR1sMX9mzAY+DesI3rKosOvqv1N2xoTN/4
 taZe3AFqnW47TjBgmn54iz4yxsHGTlCYB6pT6b4SGYUPub2g5xwFYI//K
 wk1SBZWzyw1Y/+WoAfbh+aWTRVWoXjp4uDgruW7h2mMWF+eFoWESk17cN
 rz9PPxLbfPDnLmbVf0H9FpArGahOHSvIs0MlaiefrXDoKZ5U3arEn+HFE A==;
X-CSE-ConnectionGUID: olRNoXLfQNm5zN+cuOjyQg==
X-CSE-MsgGUID: judWImedQTOyyus8zKxNIg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949192"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949192"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:35 -0700
X-CSE-ConnectionGUID: ojw3BMJXTcKgpnXLvWw9TQ==
X-CSE-MsgGUID: 5NG1uh7sQT2jZN0Jh7Am2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60464422"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/65] drm/i915: pass dev_priv explicitly to DPLL
Date: Tue,  4 Jun 2024 18:25:19 +0300
Message-Id: <7deea1d86c2706994450ec938f8f174a2ac54d27.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
index 7370acdd6b8b..42e2d884c98e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -382,11 +382,11 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
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
@@ -8212,11 +8212,12 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
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
@@ -8224,12 +8225,12 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
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
 
@@ -8262,8 +8263,8 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	intel_wait_for_pipe_scanline_stopped(crtc);
 
-	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), DPLL_VGA_MODE_DIS);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 }
 
 void intel_hpd_poll_fini(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34b6d843bc9e..3c5cb587f9bd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1772,7 +1772,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 	 * current lane status.
 	 */
 	if (intel_power_well_is_enabled(dev_priv, cmn_bc)) {
-		u32 status = intel_de_read(dev_priv, DPLL(PIPE_A));
+		u32 status = intel_de_read(dev_priv, DPLL(dev_priv, PIPE_A));
 		unsigned int mask;
 
 		mask = status & DPLL_PORTB_READY_MASK;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 83f616097a29..3b6cb237d80a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1196,13 +1196,13 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
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
@@ -1355,7 +1355,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 		 */
 		if (BITS_SET(phy_control,
 			     PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH1)) &&
-		    (intel_de_read(dev_priv, DPLL(PIPE_B)) & DPLL_VCO_ENABLE) == 0)
+		    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) & DPLL_VCO_ENABLE) == 0)
 			phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH1);
 
 		if (BITS_SET(phy_control,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index a981f45facb3..a007ca5208b8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -403,7 +403,7 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
 		hw_state->dpll_md = tmp;
 	}
 
-	hw_state->dpll = intel_de_read(dev_priv, DPLL(crtc->pipe));
+	hw_state->dpll = intel_de_read(dev_priv, DPLL(dev_priv, crtc->pipe));
 
 	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
 		hw_state->fp0 = intel_de_read(dev_priv, FP0(crtc->pipe));
@@ -1842,11 +1842,12 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
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
@@ -1857,13 +1858,13 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
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
@@ -1991,11 +1992,11 @@ static void _vlv_enable_pll(const struct intel_crtc_state *crtc_state)
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
 
@@ -2012,7 +2013,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_pps_unlocked(dev_priv, pipe);
 
 	/* Enable Refclk */
-	intel_de_write(dev_priv, DPLL(pipe),
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
 		       hw_state->dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));
 
 	if (hw_state->dpll & DPLL_VCO_ENABLE) {
@@ -2138,10 +2139,10 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	udelay(1);
 
 	/* Enable PLL */
-	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
 
 	/* Check PLL is locked */
-	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
+	if (intel_de_wait_for_set(dev_priv, DPLL(dev_priv, pipe), DPLL_LOCK_VLV, 1))
 		drm_err(&dev_priv->drm, "PLL %d failed to lock\n", pipe);
 }
 
@@ -2158,7 +2159,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_pps_unlocked(dev_priv, pipe);
 
 	/* Enable Refclk and SSC */
-	intel_de_write(dev_priv, DPLL(pipe),
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
 		       hw_state->dpll & ~DPLL_VCO_ENABLE);
 
 	if (hw_state->dpll & DPLL_VCO_ENABLE) {
@@ -2183,7 +2184,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 		 * We should always have it disabled.
 		 */
 		drm_WARN_ON(&dev_priv->drm,
-			    (intel_de_read(dev_priv, DPLL(PIPE_B)) &
+			    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) &
 			     DPLL_VGA_MODE_DIS) == 0);
 	} else {
 		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
@@ -2241,8 +2242,8 @@ void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (pipe != PIPE_A)
 		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-	intel_de_write(dev_priv, DPLL(pipe), val);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 }
 
 void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
@@ -2259,8 +2260,8 @@ void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (pipe != PIPE_A)
 		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-	intel_de_write(dev_priv, DPLL(pipe), val);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 
 	vlv_dpio_get(dev_priv);
 
@@ -2285,8 +2286,8 @@ void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
 	/* Make sure the pipe isn't still relying on us */
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
-	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
-	intel_de_posting_read(dev_priv, DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(dev_priv, pipe), DPLL_VGA_MODE_DIS);
+	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
 }
 
 
@@ -2312,7 +2313,7 @@ static void assert_pll(struct drm_i915_private *dev_priv,
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
index 73046ef58d8e..42306bc4ba86 100644
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
index 6877e2f0fbc3..8ff04bb19cbe 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -668,7 +668,7 @@
 #define _DPLL_A			0x6014
 #define _DPLL_B			0x6018
 #define _CHV_DPLL_C		0x6030
-#define DPLL(pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
+#define DPLL(dev_priv, pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
 						 (pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
 
 #define VGA0	_MMIO(0x6000)
-- 
2.39.2

