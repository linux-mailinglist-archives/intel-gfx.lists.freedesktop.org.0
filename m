Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 342CB42E9DD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 09:16:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577C76E226;
	Fri, 15 Oct 2021 07:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F91E6E226
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 07:16:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="227760072"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="227760072"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 00:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="442437381"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 15 Oct 2021 00:16:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 10:16:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Fri, 15 Oct 2021 10:16:17 +0300
Message-Id: <20211015071625.593-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Move PCH refclok stuff into its
 own file
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

Move the PCH refclk stuff (including all the LPT/WPT
iCLKIP/CLKOUT_DP things) to its own file.

We also suck in the mPHY programming from intel_fdi.c
since we're the only caller.

Cc: Dave Airlie <airlied@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 537 +--------------
 drivers/gpu/drm/i915/display/intel_display.h  |   4 -
 .../drm/i915/display/intel_display_power.c    |   1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   1 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |  99 ---
 drivers/gpu/drm/i915/display/intel_fdi.h      |   1 -
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 648 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_pch_refclk.h   |  21 +
 drivers/gpu/drm/i915/i915_drv.c               |   1 +
 11 files changed, 675 insertions(+), 640 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pch_refclk.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pch_refclk.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 660bb03de6fc..96f3b8f6c50d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -226,6 +226,7 @@ i915-y += \
 	display/intel_hotplug.o \
 	display/intel_lpe_audio.o \
 	display/intel_overlay.o \
+	display/intel_pch_refclk.o \
 	display/intel_plane_initial.o \
 	display/intel_psr.o \
 	display/intel_quirks.o \
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 1c161eeed82f..bf03bd0ecd43 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -45,6 +45,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
+#include "intel_pch_refclk.h"
 
 /* Here's the desired hotplug mode */
 #define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_PERIOD_128 |		\
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ff598b6cd953..995050443065 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -96,6 +96,7 @@
 #include "intel_hotplug.h"
 #include "intel_overlay.h"
 #include "intel_panel.h"
+#include "intel_pch_refclk.h"
 #include "intel_pcode.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane_initial.h"
@@ -103,7 +104,6 @@
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_quirks.h"
-#include "intel_sbi.h"
 #include "intel_sprite.h"
 #include "intel_tc.h"
 #include "intel_vga.h"
@@ -1388,133 +1388,6 @@ bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv)
 	return false;
 }
 
-void lpt_disable_iclkip(struct drm_i915_private *dev_priv)
-{
-	u32 temp;
-
-	intel_de_write(dev_priv, PIXCLK_GATE, PIXCLK_GATE_GATE);
-
-	mutex_lock(&dev_priv->sb_lock);
-
-	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
-	temp |= SBI_SSCCTL_DISABLE;
-	intel_sbi_write(dev_priv, SBI_SSCCTL6, temp, SBI_ICLK);
-
-	mutex_unlock(&dev_priv->sb_lock);
-}
-
-/* Program iCLKIP clock to the desired frequency */
-static void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
-	u32 divsel, phaseinc, auxdiv, phasedir = 0;
-	u32 temp;
-
-	lpt_disable_iclkip(dev_priv);
-
-	/* The iCLK virtual clock root frequency is in MHz,
-	 * but the adjusted_mode->crtc_clock in in KHz. To get the
-	 * divisors, it is necessary to divide one by another, so we
-	 * convert the virtual clock precision to KHz here for higher
-	 * precision.
-	 */
-	for (auxdiv = 0; auxdiv < 2; auxdiv++) {
-		u32 iclk_virtual_root_freq = 172800 * 1000;
-		u32 iclk_pi_range = 64;
-		u32 desired_divisor;
-
-		desired_divisor = DIV_ROUND_CLOSEST(iclk_virtual_root_freq,
-						    clock << auxdiv);
-		divsel = (desired_divisor / iclk_pi_range) - 2;
-		phaseinc = desired_divisor % iclk_pi_range;
-
-		/*
-		 * Near 20MHz is a corner case which is
-		 * out of range for the 7-bit divisor
-		 */
-		if (divsel <= 0x7f)
-			break;
-	}
-
-	/* This should not happen with any sane values */
-	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIVSEL(divsel) &
-		    ~SBI_SSCDIVINTPHASE_DIVSEL_MASK);
-	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIR(phasedir) &
-		    ~SBI_SSCDIVINTPHASE_INCVAL_MASK);
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "iCLKIP clock: found settings for %dKHz refresh rate: auxdiv=%x, divsel=%x, phasedir=%x, phaseinc=%x\n",
-		    clock, auxdiv, divsel, phasedir, phaseinc);
-
-	mutex_lock(&dev_priv->sb_lock);
-
-	/* Program SSCDIVINTPHASE6 */
-	temp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
-	temp &= ~SBI_SSCDIVINTPHASE_DIVSEL_MASK;
-	temp |= SBI_SSCDIVINTPHASE_DIVSEL(divsel);
-	temp &= ~SBI_SSCDIVINTPHASE_INCVAL_MASK;
-	temp |= SBI_SSCDIVINTPHASE_INCVAL(phaseinc);
-	temp |= SBI_SSCDIVINTPHASE_DIR(phasedir);
-	temp |= SBI_SSCDIVINTPHASE_PROPAGATE;
-	intel_sbi_write(dev_priv, SBI_SSCDIVINTPHASE6, temp, SBI_ICLK);
-
-	/* Program SSCAUXDIV */
-	temp = intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
-	temp &= ~SBI_SSCAUXDIV_FINALDIV2SEL(1);
-	temp |= SBI_SSCAUXDIV_FINALDIV2SEL(auxdiv);
-	intel_sbi_write(dev_priv, SBI_SSCAUXDIV6, temp, SBI_ICLK);
-
-	/* Enable modulator and associated divider */
-	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
-	temp &= ~SBI_SSCCTL_DISABLE;
-	intel_sbi_write(dev_priv, SBI_SSCCTL6, temp, SBI_ICLK);
-
-	mutex_unlock(&dev_priv->sb_lock);
-
-	/* Wait for initialization time */
-	udelay(24);
-
-	intel_de_write(dev_priv, PIXCLK_GATE, PIXCLK_GATE_UNGATE);
-}
-
-int lpt_get_iclkip(struct drm_i915_private *dev_priv)
-{
-	u32 divsel, phaseinc, auxdiv;
-	u32 iclk_virtual_root_freq = 172800 * 1000;
-	u32 iclk_pi_range = 64;
-	u32 desired_divisor;
-	u32 temp;
-
-	if ((intel_de_read(dev_priv, PIXCLK_GATE) & PIXCLK_GATE_UNGATE) == 0)
-		return 0;
-
-	mutex_lock(&dev_priv->sb_lock);
-
-	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
-	if (temp & SBI_SSCCTL_DISABLE) {
-		mutex_unlock(&dev_priv->sb_lock);
-		return 0;
-	}
-
-	temp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
-	divsel = (temp & SBI_SSCDIVINTPHASE_DIVSEL_MASK) >>
-		SBI_SSCDIVINTPHASE_DIVSEL_SHIFT;
-	phaseinc = (temp & SBI_SSCDIVINTPHASE_INCVAL_MASK) >>
-		SBI_SSCDIVINTPHASE_INCVAL_SHIFT;
-
-	temp = intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
-	auxdiv = (temp & SBI_SSCAUXDIV_FINALDIV2SEL_MASK) >>
-		SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT;
-
-	mutex_unlock(&dev_priv->sb_lock);
-
-	desired_divisor = (divsel + 2) * iclk_pi_range + phaseinc;
-
-	return DIV_ROUND_CLOSEST(iclk_virtual_root_freq,
-				 desired_divisor << auxdiv);
-}
 
 static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_state,
 					   enum pipe pch_transcoder)
@@ -4299,414 +4172,6 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	return ret;
 }
 
-static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
-{
-	struct intel_encoder *encoder;
-	int i;
-	u32 val, final;
-	bool has_lvds = false;
-	bool has_cpu_edp = false;
-	bool has_panel = false;
-	bool has_ck505 = false;
-	bool can_ssc = false;
-	bool using_ssc_source = false;
-
-	/* We need to take the global config into account */
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
-		switch (encoder->type) {
-		case INTEL_OUTPUT_LVDS:
-			has_panel = true;
-			has_lvds = true;
-			break;
-		case INTEL_OUTPUT_EDP:
-			has_panel = true;
-			if (encoder->port == PORT_A)
-				has_cpu_edp = true;
-			break;
-		default:
-			break;
-		}
-	}
-
-	if (HAS_PCH_IBX(dev_priv)) {
-		has_ck505 = dev_priv->vbt.display_clock_mode;
-		can_ssc = has_ck505;
-	} else {
-		has_ck505 = false;
-		can_ssc = true;
-	}
-
-	/* Check if any DPLLs are using the SSC source */
-	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
-		u32 temp = intel_de_read(dev_priv, PCH_DPLL(i));
-
-		if (!(temp & DPLL_VCO_ENABLE))
-			continue;
-
-		if ((temp & PLL_REF_INPUT_MASK) ==
-		    PLLB_REF_INPUT_SPREADSPECTRUMIN) {
-			using_ssc_source = true;
-			break;
-		}
-	}
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "has_panel %d has_lvds %d has_ck505 %d using_ssc_source %d\n",
-		    has_panel, has_lvds, has_ck505, using_ssc_source);
-
-	/* Ironlake: try to setup display ref clock before DPLL
-	 * enabling. This is only under driver's control after
-	 * PCH B stepping, previous chipset stepping should be
-	 * ignoring this setting.
-	 */
-	val = intel_de_read(dev_priv, PCH_DREF_CONTROL);
-
-	/* As we must carefully and slowly disable/enable each source in turn,
-	 * compute the final state we want first and check if we need to
-	 * make any changes at all.
-	 */
-	final = val;
-	final &= ~DREF_NONSPREAD_SOURCE_MASK;
-	if (has_ck505)
-		final |= DREF_NONSPREAD_CK505_ENABLE;
-	else
-		final |= DREF_NONSPREAD_SOURCE_ENABLE;
-
-	final &= ~DREF_SSC_SOURCE_MASK;
-	final &= ~DREF_CPU_SOURCE_OUTPUT_MASK;
-	final &= ~DREF_SSC1_ENABLE;
-
-	if (has_panel) {
-		final |= DREF_SSC_SOURCE_ENABLE;
-
-		if (intel_panel_use_ssc(dev_priv) && can_ssc)
-			final |= DREF_SSC1_ENABLE;
-
-		if (has_cpu_edp) {
-			if (intel_panel_use_ssc(dev_priv) && can_ssc)
-				final |= DREF_CPU_SOURCE_OUTPUT_DOWNSPREAD;
-			else
-				final |= DREF_CPU_SOURCE_OUTPUT_NONSPREAD;
-		} else
-			final |= DREF_CPU_SOURCE_OUTPUT_DISABLE;
-	} else if (using_ssc_source) {
-		final |= DREF_SSC_SOURCE_ENABLE;
-		final |= DREF_SSC1_ENABLE;
-	}
-
-	if (final == val)
-		return;
-
-	/* Always enable nonspread source */
-	val &= ~DREF_NONSPREAD_SOURCE_MASK;
-
-	if (has_ck505)
-		val |= DREF_NONSPREAD_CK505_ENABLE;
-	else
-		val |= DREF_NONSPREAD_SOURCE_ENABLE;
-
-	if (has_panel) {
-		val &= ~DREF_SSC_SOURCE_MASK;
-		val |= DREF_SSC_SOURCE_ENABLE;
-
-		/* SSC must be turned on before enabling the CPU output  */
-		if (intel_panel_use_ssc(dev_priv) && can_ssc) {
-			drm_dbg_kms(&dev_priv->drm, "Using SSC on panel\n");
-			val |= DREF_SSC1_ENABLE;
-		} else
-			val &= ~DREF_SSC1_ENABLE;
-
-		/* Get SSC going before enabling the outputs */
-		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
-		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
-		udelay(200);
-
-		val &= ~DREF_CPU_SOURCE_OUTPUT_MASK;
-
-		/* Enable CPU source on CPU attached eDP */
-		if (has_cpu_edp) {
-			if (intel_panel_use_ssc(dev_priv) && can_ssc) {
-				drm_dbg_kms(&dev_priv->drm,
-					    "Using SSC on eDP\n");
-				val |= DREF_CPU_SOURCE_OUTPUT_DOWNSPREAD;
-			} else
-				val |= DREF_CPU_SOURCE_OUTPUT_NONSPREAD;
-		} else
-			val |= DREF_CPU_SOURCE_OUTPUT_DISABLE;
-
-		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
-		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
-		udelay(200);
-	} else {
-		drm_dbg_kms(&dev_priv->drm, "Disabling CPU source output\n");
-
-		val &= ~DREF_CPU_SOURCE_OUTPUT_MASK;
-
-		/* Turn off CPU output */
-		val |= DREF_CPU_SOURCE_OUTPUT_DISABLE;
-
-		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
-		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
-		udelay(200);
-
-		if (!using_ssc_source) {
-			drm_dbg_kms(&dev_priv->drm, "Disabling SSC source\n");
-
-			/* Turn off the SSC source */
-			val &= ~DREF_SSC_SOURCE_MASK;
-			val |= DREF_SSC_SOURCE_DISABLE;
-
-			/* Turn off SSC1 */
-			val &= ~DREF_SSC1_ENABLE;
-
-			intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
-			intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
-			udelay(200);
-		}
-	}
-
-	BUG_ON(val != final);
-}
-
-/* Implements 3 different sequences from BSpec chapter "Display iCLK
- * Programming" based on the parameters passed:
- * - Sequence to enable CLKOUT_DP
- * - Sequence to enable CLKOUT_DP without spread
- * - Sequence to enable CLKOUT_DP for FDI usage and configure PCH FDI I/O
- */
-static void lpt_enable_clkout_dp(struct drm_i915_private *dev_priv,
-				 bool with_spread, bool with_fdi)
-{
-	u32 reg, tmp;
-
-	if (drm_WARN(&dev_priv->drm, with_fdi && !with_spread,
-		     "FDI requires downspread\n"))
-		with_spread = true;
-	if (drm_WARN(&dev_priv->drm, HAS_PCH_LPT_LP(dev_priv) &&
-		     with_fdi, "LP PCH doesn't have FDI\n"))
-		with_fdi = false;
-
-	mutex_lock(&dev_priv->sb_lock);
-
-	tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
-	tmp &= ~SBI_SSCCTL_DISABLE;
-	tmp |= SBI_SSCCTL_PATHALT;
-	intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
-
-	udelay(24);
-
-	if (with_spread) {
-		tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
-		tmp &= ~SBI_SSCCTL_PATHALT;
-		intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
-
-		if (with_fdi)
-			lpt_fdi_program_mphy(dev_priv);
-	}
-
-	reg = HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
-	tmp = intel_sbi_read(dev_priv, reg, SBI_ICLK);
-	tmp |= SBI_GEN0_CFG_BUFFENABLE_DISABLE;
-	intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);
-
-	mutex_unlock(&dev_priv->sb_lock);
-}
-
-/* Sequence to disable CLKOUT_DP */
-void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv)
-{
-	u32 reg, tmp;
-
-	mutex_lock(&dev_priv->sb_lock);
-
-	reg = HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
-	tmp = intel_sbi_read(dev_priv, reg, SBI_ICLK);
-	tmp &= ~SBI_GEN0_CFG_BUFFENABLE_DISABLE;
-	intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);
-
-	tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
-	if (!(tmp & SBI_SSCCTL_DISABLE)) {
-		if (!(tmp & SBI_SSCCTL_PATHALT)) {
-			tmp |= SBI_SSCCTL_PATHALT;
-			intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
-			udelay(32);
-		}
-		tmp |= SBI_SSCCTL_DISABLE;
-		intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
-	}
-
-	mutex_unlock(&dev_priv->sb_lock);
-}
-
-#define BEND_IDX(steps) ((50 + (steps)) / 5)
-
-static const u16 sscdivintphase[] = {
-	[BEND_IDX( 50)] = 0x3B23,
-	[BEND_IDX( 45)] = 0x3B23,
-	[BEND_IDX( 40)] = 0x3C23,
-	[BEND_IDX( 35)] = 0x3C23,
-	[BEND_IDX( 30)] = 0x3D23,
-	[BEND_IDX( 25)] = 0x3D23,
-	[BEND_IDX( 20)] = 0x3E23,
-	[BEND_IDX( 15)] = 0x3E23,
-	[BEND_IDX( 10)] = 0x3F23,
-	[BEND_IDX(  5)] = 0x3F23,
-	[BEND_IDX(  0)] = 0x0025,
-	[BEND_IDX( -5)] = 0x0025,
-	[BEND_IDX(-10)] = 0x0125,
-	[BEND_IDX(-15)] = 0x0125,
-	[BEND_IDX(-20)] = 0x0225,
-	[BEND_IDX(-25)] = 0x0225,
-	[BEND_IDX(-30)] = 0x0325,
-	[BEND_IDX(-35)] = 0x0325,
-	[BEND_IDX(-40)] = 0x0425,
-	[BEND_IDX(-45)] = 0x0425,
-	[BEND_IDX(-50)] = 0x0525,
-};
-
-/*
- * Bend CLKOUT_DP
- * steps -50 to 50 inclusive, in steps of 5
- * < 0 slow down the clock, > 0 speed up the clock, 0 == no bend (135MHz)
- * change in clock period = -(steps / 10) * 5.787 ps
- */
-static void lpt_bend_clkout_dp(struct drm_i915_private *dev_priv, int steps)
-{
-	u32 tmp;
-	int idx = BEND_IDX(steps);
-
-	if (drm_WARN_ON(&dev_priv->drm, steps % 5 != 0))
-		return;
-
-	if (drm_WARN_ON(&dev_priv->drm, idx >= ARRAY_SIZE(sscdivintphase)))
-		return;
-
-	mutex_lock(&dev_priv->sb_lock);
-
-	if (steps % 10 != 0)
-		tmp = 0xAAAAAAAB;
-	else
-		tmp = 0x00000000;
-	intel_sbi_write(dev_priv, SBI_SSCDITHPHASE, tmp, SBI_ICLK);
-
-	tmp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE, SBI_ICLK);
-	tmp &= 0xffff0000;
-	tmp |= sscdivintphase[idx];
-	intel_sbi_write(dev_priv, SBI_SSCDIVINTPHASE, tmp, SBI_ICLK);
-
-	mutex_unlock(&dev_priv->sb_lock);
-}
-
-#undef BEND_IDX
-
-static bool spll_uses_pch_ssc(struct drm_i915_private *dev_priv)
-{
-	u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
-	u32 ctl = intel_de_read(dev_priv, SPLL_CTL);
-
-	if ((ctl & SPLL_PLL_ENABLE) == 0)
-		return false;
-
-	if ((ctl & SPLL_REF_MASK) == SPLL_REF_MUXED_SSC &&
-	    (fuse_strap & HSW_CPU_SSC_ENABLE) == 0)
-		return true;
-
-	if (IS_BROADWELL(dev_priv) &&
-	    (ctl & SPLL_REF_MASK) == SPLL_REF_PCH_SSC_BDW)
-		return true;
-
-	return false;
-}
-
-static bool wrpll_uses_pch_ssc(struct drm_i915_private *dev_priv,
-			       enum intel_dpll_id id)
-{
-	u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
-	u32 ctl = intel_de_read(dev_priv, WRPLL_CTL(id));
-
-	if ((ctl & WRPLL_PLL_ENABLE) == 0)
-		return false;
-
-	if ((ctl & WRPLL_REF_MASK) == WRPLL_REF_PCH_SSC)
-		return true;
-
-	if ((IS_BROADWELL(dev_priv) || IS_HSW_ULT(dev_priv)) &&
-	    (ctl & WRPLL_REF_MASK) == WRPLL_REF_MUXED_SSC_BDW &&
-	    (fuse_strap & HSW_CPU_SSC_ENABLE) == 0)
-		return true;
-
-	return false;
-}
-
-static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
-{
-	struct intel_encoder *encoder;
-	bool has_fdi = false;
-
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
-		switch (encoder->type) {
-		case INTEL_OUTPUT_ANALOG:
-			has_fdi = true;
-			break;
-		default:
-			break;
-		}
-	}
-
-	/*
-	 * The BIOS may have decided to use the PCH SSC
-	 * reference so we must not disable it until the
-	 * relevant PLLs have stopped relying on it. We'll
-	 * just leave the PCH SSC reference enabled in case
-	 * any active PLL is using it. It will get disabled
-	 * after runtime suspend if we don't have FDI.
-	 *
-	 * TODO: Move the whole reference clock handling
-	 * to the modeset sequence proper so that we can
-	 * actually enable/disable/reconfigure these things
-	 * safely. To do that we need to introduce a real
-	 * clock hierarchy. That would also allow us to do
-	 * clock bending finally.
-	 */
-	dev_priv->pch_ssc_use = 0;
-
-	if (spll_uses_pch_ssc(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm, "SPLL using PCH SSC\n");
-		dev_priv->pch_ssc_use |= BIT(DPLL_ID_SPLL);
-	}
-
-	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL1)) {
-		drm_dbg_kms(&dev_priv->drm, "WRPLL1 using PCH SSC\n");
-		dev_priv->pch_ssc_use |= BIT(DPLL_ID_WRPLL1);
-	}
-
-	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL2)) {
-		drm_dbg_kms(&dev_priv->drm, "WRPLL2 using PCH SSC\n");
-		dev_priv->pch_ssc_use |= BIT(DPLL_ID_WRPLL2);
-	}
-
-	if (dev_priv->pch_ssc_use)
-		return;
-
-	if (has_fdi) {
-		lpt_bend_clkout_dp(dev_priv, 0);
-		lpt_enable_clkout_dp(dev_priv, true, true);
-	} else {
-		lpt_disable_clkout_dp(dev_priv);
-	}
-}
-
-/*
- * Initialize reference clocks when the driver loads
- */
-void intel_init_pch_refclk(struct drm_i915_private *dev_priv)
-{
-	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
-		ilk_init_pch_refclk(dev_priv);
-	else if (HAS_PCH_LPT(dev_priv))
-		lpt_init_pch_refclk(dev_priv);
-}
-
 static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 0c76bf57f86b..39c18b8807f9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -521,7 +521,6 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    struct intel_link_m_n *m_n,
 			    bool constant_n, bool fec_enable);
-void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
 u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
@@ -544,7 +543,6 @@ int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
 			   const char *name, u32 reg);
 void lpt_pch_enable(const struct intel_crtc_state *crtc_state);
 void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
-void lpt_disable_iclkip(struct drm_i915_private *dev_priv);
 void intel_init_display_hooks(struct drm_i915_private *dev_priv);
 unsigned int intel_fb_xy_to_linear(int x, int y,
 				   const struct intel_plane_state *state,
@@ -583,7 +581,6 @@ intel_framebuffer_create(struct drm_i915_gem_object *obj,
 void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
 				    enum pipe pipe);
 
-int lpt_get_iclkip(struct drm_i915_private *dev_priv);
 bool intel_fuzzy_clock_check(int clock1, int clock2);
 
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
@@ -632,7 +629,6 @@ void intel_modeset_driver_remove(struct drm_i915_private *i915);
 void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
 void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_resume(struct drm_device *dev);
-void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
 int intel_modeset_all_pipes(struct intel_atomic_state *state);
 
 /* modesetting asserts */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1672604f9ef7..d88da0d0f05a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -15,6 +15,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_hotplug.h"
+#include "intel_pch_refclk.h"
 #include "intel_pcode.h"
 #include "intel_pm.h"
 #include "intel_pps.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 0a7e04db04be..ca69b67bbc23 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -26,6 +26,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
+#include "intel_pch_refclk.h"
 #include "intel_tc.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index dd2cf0c59921..d1c1600c66cb 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -8,7 +8,6 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
-#include "intel_sbi.h"
 
 static void assert_fdi_tx(struct drm_i915_private *dev_priv,
 			  enum pipe pipe, bool state)
@@ -1006,104 +1005,6 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
 	udelay(100);
 }
 
-static void lpt_fdi_reset_mphy(struct drm_i915_private *dev_priv)
-{
-	u32 tmp;
-
-	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
-	tmp |= FDI_MPHY_IOSFSB_RESET_CTL;
-	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
-
-	if (wait_for_us(intel_de_read(dev_priv, SOUTH_CHICKEN2) &
-			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
-		drm_err(&dev_priv->drm, "FDI mPHY reset assert timeout\n");
-
-	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
-	tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
-	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
-
-	if (wait_for_us((intel_de_read(dev_priv, SOUTH_CHICKEN2) &
-			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
-		drm_err(&dev_priv->drm, "FDI mPHY reset de-assert timeout\n");
-}
-
-/* WaMPhyProgramming:hsw */
-void lpt_fdi_program_mphy(struct drm_i915_private *dev_priv)
-{
-	u32 tmp;
-
-	lpt_fdi_reset_mphy(dev_priv);
-
-	tmp = intel_sbi_read(dev_priv, 0x8008, SBI_MPHY);
-	tmp &= ~(0xFF << 24);
-	tmp |= (0x12 << 24);
-	intel_sbi_write(dev_priv, 0x8008, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2008, SBI_MPHY);
-	tmp |= (1 << 11);
-	intel_sbi_write(dev_priv, 0x2008, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2108, SBI_MPHY);
-	tmp |= (1 << 11);
-	intel_sbi_write(dev_priv, 0x2108, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x206C, SBI_MPHY);
-	tmp |= (1 << 24) | (1 << 21) | (1 << 18);
-	intel_sbi_write(dev_priv, 0x206C, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x216C, SBI_MPHY);
-	tmp |= (1 << 24) | (1 << 21) | (1 << 18);
-	intel_sbi_write(dev_priv, 0x216C, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2080, SBI_MPHY);
-	tmp &= ~(7 << 13);
-	tmp |= (5 << 13);
-	intel_sbi_write(dev_priv, 0x2080, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2180, SBI_MPHY);
-	tmp &= ~(7 << 13);
-	tmp |= (5 << 13);
-	intel_sbi_write(dev_priv, 0x2180, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x208C, SBI_MPHY);
-	tmp &= ~0xFF;
-	tmp |= 0x1C;
-	intel_sbi_write(dev_priv, 0x208C, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x218C, SBI_MPHY);
-	tmp &= ~0xFF;
-	tmp |= 0x1C;
-	intel_sbi_write(dev_priv, 0x218C, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2098, SBI_MPHY);
-	tmp &= ~(0xFF << 16);
-	tmp |= (0x1C << 16);
-	intel_sbi_write(dev_priv, 0x2098, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2198, SBI_MPHY);
-	tmp &= ~(0xFF << 16);
-	tmp |= (0x1C << 16);
-	intel_sbi_write(dev_priv, 0x2198, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x20C4, SBI_MPHY);
-	tmp |= (1 << 27);
-	intel_sbi_write(dev_priv, 0x20C4, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x21C4, SBI_MPHY);
-	tmp |= (1 << 27);
-	intel_sbi_write(dev_priv, 0x21C4, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x20EC, SBI_MPHY);
-	tmp &= ~(0xF << 28);
-	tmp |= (4 << 28);
-	intel_sbi_write(dev_priv, 0x20EC, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x21EC, SBI_MPHY);
-	tmp &= ~(0xF << 28);
-	tmp |= (4 << 28);
-	intel_sbi_write(dev_priv, 0x21EC, tmp, SBI_MPHY);
-}
-
 static const struct intel_fdi_funcs ilk_funcs = {
 	.fdi_link_train = ilk_fdi_link_train,
 };
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index 640d6585c137..5a361730f80a 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -24,7 +24,6 @@ void intel_fdi_init_hook(struct drm_i915_private *dev_priv);
 void hsw_fdi_link_train(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
 void intel_fdi_pll_freq_update(struct drm_i915_private *i915);
-void lpt_fdi_program_mphy(struct drm_i915_private *i915);
 
 void intel_fdi_link_train(struct intel_crtc *crtc,
 			  const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
new file mode 100644
index 000000000000..b688fd87e3da
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -0,0 +1,648 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_panel.h"
+#include "intel_pch_refclk.h"
+#include "intel_sbi.h"
+
+static void lpt_fdi_reset_mphy(struct drm_i915_private *dev_priv)
+{
+	u32 tmp;
+
+	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
+	tmp |= FDI_MPHY_IOSFSB_RESET_CTL;
+	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
+
+	if (wait_for_us(intel_de_read(dev_priv, SOUTH_CHICKEN2) &
+			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
+		drm_err(&dev_priv->drm, "FDI mPHY reset assert timeout\n");
+
+	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
+	tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
+	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
+
+	if (wait_for_us((intel_de_read(dev_priv, SOUTH_CHICKEN2) &
+			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
+		drm_err(&dev_priv->drm, "FDI mPHY reset de-assert timeout\n");
+}
+
+/* WaMPhyProgramming:hsw */
+static void lpt_fdi_program_mphy(struct drm_i915_private *dev_priv)
+{
+	u32 tmp;
+
+	lpt_fdi_reset_mphy(dev_priv);
+
+	tmp = intel_sbi_read(dev_priv, 0x8008, SBI_MPHY);
+	tmp &= ~(0xFF << 24);
+	tmp |= (0x12 << 24);
+	intel_sbi_write(dev_priv, 0x8008, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2008, SBI_MPHY);
+	tmp |= (1 << 11);
+	intel_sbi_write(dev_priv, 0x2008, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2108, SBI_MPHY);
+	tmp |= (1 << 11);
+	intel_sbi_write(dev_priv, 0x2108, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x206C, SBI_MPHY);
+	tmp |= (1 << 24) | (1 << 21) | (1 << 18);
+	intel_sbi_write(dev_priv, 0x206C, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x216C, SBI_MPHY);
+	tmp |= (1 << 24) | (1 << 21) | (1 << 18);
+	intel_sbi_write(dev_priv, 0x216C, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2080, SBI_MPHY);
+	tmp &= ~(7 << 13);
+	tmp |= (5 << 13);
+	intel_sbi_write(dev_priv, 0x2080, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2180, SBI_MPHY);
+	tmp &= ~(7 << 13);
+	tmp |= (5 << 13);
+	intel_sbi_write(dev_priv, 0x2180, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x208C, SBI_MPHY);
+	tmp &= ~0xFF;
+	tmp |= 0x1C;
+	intel_sbi_write(dev_priv, 0x208C, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x218C, SBI_MPHY);
+	tmp &= ~0xFF;
+	tmp |= 0x1C;
+	intel_sbi_write(dev_priv, 0x218C, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2098, SBI_MPHY);
+	tmp &= ~(0xFF << 16);
+	tmp |= (0x1C << 16);
+	intel_sbi_write(dev_priv, 0x2098, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2198, SBI_MPHY);
+	tmp &= ~(0xFF << 16);
+	tmp |= (0x1C << 16);
+	intel_sbi_write(dev_priv, 0x2198, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x20C4, SBI_MPHY);
+	tmp |= (1 << 27);
+	intel_sbi_write(dev_priv, 0x20C4, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x21C4, SBI_MPHY);
+	tmp |= (1 << 27);
+	intel_sbi_write(dev_priv, 0x21C4, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x20EC, SBI_MPHY);
+	tmp &= ~(0xF << 28);
+	tmp |= (4 << 28);
+	intel_sbi_write(dev_priv, 0x20EC, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x21EC, SBI_MPHY);
+	tmp &= ~(0xF << 28);
+	tmp |= (4 << 28);
+	intel_sbi_write(dev_priv, 0x21EC, tmp, SBI_MPHY);
+}
+
+void lpt_disable_iclkip(struct drm_i915_private *dev_priv)
+{
+	u32 temp;
+
+	intel_de_write(dev_priv, PIXCLK_GATE, PIXCLK_GATE_GATE);
+
+	mutex_lock(&dev_priv->sb_lock);
+
+	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
+	temp |= SBI_SSCCTL_DISABLE;
+	intel_sbi_write(dev_priv, SBI_SSCCTL6, temp, SBI_ICLK);
+
+	mutex_unlock(&dev_priv->sb_lock);
+}
+
+/* Program iCLKIP clock to the desired frequency */
+void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
+	u32 divsel, phaseinc, auxdiv, phasedir = 0;
+	u32 temp;
+
+	lpt_disable_iclkip(dev_priv);
+
+	/* The iCLK virtual clock root frequency is in MHz,
+	 * but the adjusted_mode->crtc_clock in KHz. To get the
+	 * divisors, it is necessary to divide one by another, so we
+	 * convert the virtual clock precision to KHz here for higher
+	 * precision.
+	 */
+	for (auxdiv = 0; auxdiv < 2; auxdiv++) {
+		u32 iclk_virtual_root_freq = 172800 * 1000;
+		u32 iclk_pi_range = 64;
+		u32 desired_divisor;
+
+		desired_divisor = DIV_ROUND_CLOSEST(iclk_virtual_root_freq,
+						    clock << auxdiv);
+		divsel = (desired_divisor / iclk_pi_range) - 2;
+		phaseinc = desired_divisor % iclk_pi_range;
+
+		/*
+		 * Near 20MHz is a corner case which is
+		 * out of range for the 7-bit divisor
+		 */
+		if (divsel <= 0x7f)
+			break;
+	}
+
+	/* This should not happen with any sane values */
+	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIVSEL(divsel) &
+		    ~SBI_SSCDIVINTPHASE_DIVSEL_MASK);
+	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIR(phasedir) &
+		    ~SBI_SSCDIVINTPHASE_INCVAL_MASK);
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "iCLKIP clock: found settings for %dKHz refresh rate: auxdiv=%x, divsel=%x, phasedir=%x, phaseinc=%x\n",
+		    clock, auxdiv, divsel, phasedir, phaseinc);
+
+	mutex_lock(&dev_priv->sb_lock);
+
+	/* Program SSCDIVINTPHASE6 */
+	temp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
+	temp &= ~SBI_SSCDIVINTPHASE_DIVSEL_MASK;
+	temp |= SBI_SSCDIVINTPHASE_DIVSEL(divsel);
+	temp &= ~SBI_SSCDIVINTPHASE_INCVAL_MASK;
+	temp |= SBI_SSCDIVINTPHASE_INCVAL(phaseinc);
+	temp |= SBI_SSCDIVINTPHASE_DIR(phasedir);
+	temp |= SBI_SSCDIVINTPHASE_PROPAGATE;
+	intel_sbi_write(dev_priv, SBI_SSCDIVINTPHASE6, temp, SBI_ICLK);
+
+	/* Program SSCAUXDIV */
+	temp = intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
+	temp &= ~SBI_SSCAUXDIV_FINALDIV2SEL(1);
+	temp |= SBI_SSCAUXDIV_FINALDIV2SEL(auxdiv);
+	intel_sbi_write(dev_priv, SBI_SSCAUXDIV6, temp, SBI_ICLK);
+
+	/* Enable modulator and associated divider */
+	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
+	temp &= ~SBI_SSCCTL_DISABLE;
+	intel_sbi_write(dev_priv, SBI_SSCCTL6, temp, SBI_ICLK);
+
+	mutex_unlock(&dev_priv->sb_lock);
+
+	/* Wait for initialization time */
+	udelay(24);
+
+	intel_de_write(dev_priv, PIXCLK_GATE, PIXCLK_GATE_UNGATE);
+}
+
+int lpt_get_iclkip(struct drm_i915_private *dev_priv)
+{
+	u32 divsel, phaseinc, auxdiv;
+	u32 iclk_virtual_root_freq = 172800 * 1000;
+	u32 iclk_pi_range = 64;
+	u32 desired_divisor;
+	u32 temp;
+
+	if ((intel_de_read(dev_priv, PIXCLK_GATE) & PIXCLK_GATE_UNGATE) == 0)
+		return 0;
+
+	mutex_lock(&dev_priv->sb_lock);
+
+	temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
+	if (temp & SBI_SSCCTL_DISABLE) {
+		mutex_unlock(&dev_priv->sb_lock);
+		return 0;
+	}
+
+	temp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
+	divsel = (temp & SBI_SSCDIVINTPHASE_DIVSEL_MASK) >>
+		SBI_SSCDIVINTPHASE_DIVSEL_SHIFT;
+	phaseinc = (temp & SBI_SSCDIVINTPHASE_INCVAL_MASK) >>
+		SBI_SSCDIVINTPHASE_INCVAL_SHIFT;
+
+	temp = intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
+	auxdiv = (temp & SBI_SSCAUXDIV_FINALDIV2SEL_MASK) >>
+		SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT;
+
+	mutex_unlock(&dev_priv->sb_lock);
+
+	desired_divisor = (divsel + 2) * iclk_pi_range + phaseinc;
+
+	return DIV_ROUND_CLOSEST(iclk_virtual_root_freq,
+				 desired_divisor << auxdiv);
+}
+
+/* Implements 3 different sequences from BSpec chapter "Display iCLK
+ * Programming" based on the parameters passed:
+ * - Sequence to enable CLKOUT_DP
+ * - Sequence to enable CLKOUT_DP without spread
+ * - Sequence to enable CLKOUT_DP for FDI usage and configure PCH FDI I/O
+ */
+static void lpt_enable_clkout_dp(struct drm_i915_private *dev_priv,
+				 bool with_spread, bool with_fdi)
+{
+	u32 reg, tmp;
+
+	if (drm_WARN(&dev_priv->drm, with_fdi && !with_spread,
+		     "FDI requires downspread\n"))
+		with_spread = true;
+	if (drm_WARN(&dev_priv->drm, HAS_PCH_LPT_LP(dev_priv) &&
+		     with_fdi, "LP PCH doesn't have FDI\n"))
+		with_fdi = false;
+
+	mutex_lock(&dev_priv->sb_lock);
+
+	tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
+	tmp &= ~SBI_SSCCTL_DISABLE;
+	tmp |= SBI_SSCCTL_PATHALT;
+	intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
+
+	udelay(24);
+
+	if (with_spread) {
+		tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
+		tmp &= ~SBI_SSCCTL_PATHALT;
+		intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
+
+		if (with_fdi)
+			lpt_fdi_program_mphy(dev_priv);
+	}
+
+	reg = HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
+	tmp = intel_sbi_read(dev_priv, reg, SBI_ICLK);
+	tmp |= SBI_GEN0_CFG_BUFFENABLE_DISABLE;
+	intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);
+
+	mutex_unlock(&dev_priv->sb_lock);
+}
+
+/* Sequence to disable CLKOUT_DP */
+void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv)
+{
+	u32 reg, tmp;
+
+	mutex_lock(&dev_priv->sb_lock);
+
+	reg = HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
+	tmp = intel_sbi_read(dev_priv, reg, SBI_ICLK);
+	tmp &= ~SBI_GEN0_CFG_BUFFENABLE_DISABLE;
+	intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);
+
+	tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
+	if (!(tmp & SBI_SSCCTL_DISABLE)) {
+		if (!(tmp & SBI_SSCCTL_PATHALT)) {
+			tmp |= SBI_SSCCTL_PATHALT;
+			intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
+			udelay(32);
+		}
+		tmp |= SBI_SSCCTL_DISABLE;
+		intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
+	}
+
+	mutex_unlock(&dev_priv->sb_lock);
+}
+
+#define BEND_IDX(steps) ((50 + (steps)) / 5)
+
+static const u16 sscdivintphase[] = {
+	[BEND_IDX( 50)] = 0x3B23,
+	[BEND_IDX( 45)] = 0x3B23,
+	[BEND_IDX( 40)] = 0x3C23,
+	[BEND_IDX( 35)] = 0x3C23,
+	[BEND_IDX( 30)] = 0x3D23,
+	[BEND_IDX( 25)] = 0x3D23,
+	[BEND_IDX( 20)] = 0x3E23,
+	[BEND_IDX( 15)] = 0x3E23,
+	[BEND_IDX( 10)] = 0x3F23,
+	[BEND_IDX(  5)] = 0x3F23,
+	[BEND_IDX(  0)] = 0x0025,
+	[BEND_IDX( -5)] = 0x0025,
+	[BEND_IDX(-10)] = 0x0125,
+	[BEND_IDX(-15)] = 0x0125,
+	[BEND_IDX(-20)] = 0x0225,
+	[BEND_IDX(-25)] = 0x0225,
+	[BEND_IDX(-30)] = 0x0325,
+	[BEND_IDX(-35)] = 0x0325,
+	[BEND_IDX(-40)] = 0x0425,
+	[BEND_IDX(-45)] = 0x0425,
+	[BEND_IDX(-50)] = 0x0525,
+};
+
+/*
+ * Bend CLKOUT_DP
+ * steps -50 to 50 inclusive, in steps of 5
+ * < 0 slow down the clock, > 0 speed up the clock, 0 == no bend (135MHz)
+ * change in clock period = -(steps / 10) * 5.787 ps
+ */
+static void lpt_bend_clkout_dp(struct drm_i915_private *dev_priv, int steps)
+{
+	u32 tmp;
+	int idx = BEND_IDX(steps);
+
+	if (drm_WARN_ON(&dev_priv->drm, steps % 5 != 0))
+		return;
+
+	if (drm_WARN_ON(&dev_priv->drm, idx >= ARRAY_SIZE(sscdivintphase)))
+		return;
+
+	mutex_lock(&dev_priv->sb_lock);
+
+	if (steps % 10 != 0)
+		tmp = 0xAAAAAAAB;
+	else
+		tmp = 0x00000000;
+	intel_sbi_write(dev_priv, SBI_SSCDITHPHASE, tmp, SBI_ICLK);
+
+	tmp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE, SBI_ICLK);
+	tmp &= 0xffff0000;
+	tmp |= sscdivintphase[idx];
+	intel_sbi_write(dev_priv, SBI_SSCDIVINTPHASE, tmp, SBI_ICLK);
+
+	mutex_unlock(&dev_priv->sb_lock);
+}
+
+#undef BEND_IDX
+
+static bool spll_uses_pch_ssc(struct drm_i915_private *dev_priv)
+{
+	u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
+	u32 ctl = intel_de_read(dev_priv, SPLL_CTL);
+
+	if ((ctl & SPLL_PLL_ENABLE) == 0)
+		return false;
+
+	if ((ctl & SPLL_REF_MASK) == SPLL_REF_MUXED_SSC &&
+	    (fuse_strap & HSW_CPU_SSC_ENABLE) == 0)
+		return true;
+
+	if (IS_BROADWELL(dev_priv) &&
+	    (ctl & SPLL_REF_MASK) == SPLL_REF_PCH_SSC_BDW)
+		return true;
+
+	return false;
+}
+
+static bool wrpll_uses_pch_ssc(struct drm_i915_private *dev_priv,
+			       enum intel_dpll_id id)
+{
+	u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
+	u32 ctl = intel_de_read(dev_priv, WRPLL_CTL(id));
+
+	if ((ctl & WRPLL_PLL_ENABLE) == 0)
+		return false;
+
+	if ((ctl & WRPLL_REF_MASK) == WRPLL_REF_PCH_SSC)
+		return true;
+
+	if ((IS_BROADWELL(dev_priv) || IS_HSW_ULT(dev_priv)) &&
+	    (ctl & WRPLL_REF_MASK) == WRPLL_REF_MUXED_SSC_BDW &&
+	    (fuse_strap & HSW_CPU_SSC_ENABLE) == 0)
+		return true;
+
+	return false;
+}
+
+static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
+{
+	struct intel_encoder *encoder;
+	bool has_fdi = false;
+
+	for_each_intel_encoder(&dev_priv->drm, encoder) {
+		switch (encoder->type) {
+		case INTEL_OUTPUT_ANALOG:
+			has_fdi = true;
+			break;
+		default:
+			break;
+		}
+	}
+
+	/*
+	 * The BIOS may have decided to use the PCH SSC
+	 * reference so we must not disable it until the
+	 * relevant PLLs have stopped relying on it. We'll
+	 * just leave the PCH SSC reference enabled in case
+	 * any active PLL is using it. It will get disabled
+	 * after runtime suspend if we don't have FDI.
+	 *
+	 * TODO: Move the whole reference clock handling
+	 * to the modeset sequence proper so that we can
+	 * actually enable/disable/reconfigure these things
+	 * safely. To do that we need to introduce a real
+	 * clock hierarchy. That would also allow us to do
+	 * clock bending finally.
+	 */
+	dev_priv->pch_ssc_use = 0;
+
+	if (spll_uses_pch_ssc(dev_priv)) {
+		drm_dbg_kms(&dev_priv->drm, "SPLL using PCH SSC\n");
+		dev_priv->pch_ssc_use |= BIT(DPLL_ID_SPLL);
+	}
+
+	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL1)) {
+		drm_dbg_kms(&dev_priv->drm, "WRPLL1 using PCH SSC\n");
+		dev_priv->pch_ssc_use |= BIT(DPLL_ID_WRPLL1);
+	}
+
+	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL2)) {
+		drm_dbg_kms(&dev_priv->drm, "WRPLL2 using PCH SSC\n");
+		dev_priv->pch_ssc_use |= BIT(DPLL_ID_WRPLL2);
+	}
+
+	if (dev_priv->pch_ssc_use)
+		return;
+
+	if (has_fdi) {
+		lpt_bend_clkout_dp(dev_priv, 0);
+		lpt_enable_clkout_dp(dev_priv, true, true);
+	} else {
+		lpt_disable_clkout_dp(dev_priv);
+	}
+}
+
+static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
+{
+	struct intel_encoder *encoder;
+	int i;
+	u32 val, final;
+	bool has_lvds = false;
+	bool has_cpu_edp = false;
+	bool has_panel = false;
+	bool has_ck505 = false;
+	bool can_ssc = false;
+	bool using_ssc_source = false;
+
+	/* We need to take the global config into account */
+	for_each_intel_encoder(&dev_priv->drm, encoder) {
+		switch (encoder->type) {
+		case INTEL_OUTPUT_LVDS:
+			has_panel = true;
+			has_lvds = true;
+			break;
+		case INTEL_OUTPUT_EDP:
+			has_panel = true;
+			if (encoder->port == PORT_A)
+				has_cpu_edp = true;
+			break;
+		default:
+			break;
+		}
+	}
+
+	if (HAS_PCH_IBX(dev_priv)) {
+		has_ck505 = dev_priv->vbt.display_clock_mode;
+		can_ssc = has_ck505;
+	} else {
+		has_ck505 = false;
+		can_ssc = true;
+	}
+
+	/* Check if any DPLLs are using the SSC source */
+	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
+		u32 temp = intel_de_read(dev_priv, PCH_DPLL(i));
+
+		if (!(temp & DPLL_VCO_ENABLE))
+			continue;
+
+		if ((temp & PLL_REF_INPUT_MASK) ==
+		    PLLB_REF_INPUT_SPREADSPECTRUMIN) {
+			using_ssc_source = true;
+			break;
+		}
+	}
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "has_panel %d has_lvds %d has_ck505 %d using_ssc_source %d\n",
+		    has_panel, has_lvds, has_ck505, using_ssc_source);
+
+	/* Ironlake: try to setup display ref clock before DPLL
+	 * enabling. This is only under driver's control after
+	 * PCH B stepping, previous chipset stepping should be
+	 * ignoring this setting.
+	 */
+	val = intel_de_read(dev_priv, PCH_DREF_CONTROL);
+
+	/* As we must carefully and slowly disable/enable each source in turn,
+	 * compute the final state we want first and check if we need to
+	 * make any changes at all.
+	 */
+	final = val;
+	final &= ~DREF_NONSPREAD_SOURCE_MASK;
+	if (has_ck505)
+		final |= DREF_NONSPREAD_CK505_ENABLE;
+	else
+		final |= DREF_NONSPREAD_SOURCE_ENABLE;
+
+	final &= ~DREF_SSC_SOURCE_MASK;
+	final &= ~DREF_CPU_SOURCE_OUTPUT_MASK;
+	final &= ~DREF_SSC1_ENABLE;
+
+	if (has_panel) {
+		final |= DREF_SSC_SOURCE_ENABLE;
+
+		if (intel_panel_use_ssc(dev_priv) && can_ssc)
+			final |= DREF_SSC1_ENABLE;
+
+		if (has_cpu_edp) {
+			if (intel_panel_use_ssc(dev_priv) && can_ssc)
+				final |= DREF_CPU_SOURCE_OUTPUT_DOWNSPREAD;
+			else
+				final |= DREF_CPU_SOURCE_OUTPUT_NONSPREAD;
+		} else {
+			final |= DREF_CPU_SOURCE_OUTPUT_DISABLE;
+		}
+	} else if (using_ssc_source) {
+		final |= DREF_SSC_SOURCE_ENABLE;
+		final |= DREF_SSC1_ENABLE;
+	}
+
+	if (final == val)
+		return;
+
+	/* Always enable nonspread source */
+	val &= ~DREF_NONSPREAD_SOURCE_MASK;
+
+	if (has_ck505)
+		val |= DREF_NONSPREAD_CK505_ENABLE;
+	else
+		val |= DREF_NONSPREAD_SOURCE_ENABLE;
+
+	if (has_panel) {
+		val &= ~DREF_SSC_SOURCE_MASK;
+		val |= DREF_SSC_SOURCE_ENABLE;
+
+		/* SSC must be turned on before enabling the CPU output  */
+		if (intel_panel_use_ssc(dev_priv) && can_ssc) {
+			drm_dbg_kms(&dev_priv->drm, "Using SSC on panel\n");
+			val |= DREF_SSC1_ENABLE;
+		} else {
+			val &= ~DREF_SSC1_ENABLE;
+		}
+
+		/* Get SSC going before enabling the outputs */
+		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
+		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
+		udelay(200);
+
+		val &= ~DREF_CPU_SOURCE_OUTPUT_MASK;
+
+		/* Enable CPU source on CPU attached eDP */
+		if (has_cpu_edp) {
+			if (intel_panel_use_ssc(dev_priv) && can_ssc) {
+				drm_dbg_kms(&dev_priv->drm,
+					    "Using SSC on eDP\n");
+				val |= DREF_CPU_SOURCE_OUTPUT_DOWNSPREAD;
+			} else {
+				val |= DREF_CPU_SOURCE_OUTPUT_NONSPREAD;
+			}
+		} else {
+			val |= DREF_CPU_SOURCE_OUTPUT_DISABLE;
+		}
+
+		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
+		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
+		udelay(200);
+	} else {
+		drm_dbg_kms(&dev_priv->drm, "Disabling CPU source output\n");
+
+		val &= ~DREF_CPU_SOURCE_OUTPUT_MASK;
+
+		/* Turn off CPU output */
+		val |= DREF_CPU_SOURCE_OUTPUT_DISABLE;
+
+		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
+		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
+		udelay(200);
+
+		if (!using_ssc_source) {
+			drm_dbg_kms(&dev_priv->drm, "Disabling SSC source\n");
+
+			/* Turn off the SSC source */
+			val &= ~DREF_SSC_SOURCE_MASK;
+			val |= DREF_SSC_SOURCE_DISABLE;
+
+			/* Turn off SSC1 */
+			val &= ~DREF_SSC1_ENABLE;
+
+			intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
+			intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
+			udelay(200);
+		}
+	}
+
+	BUG_ON(val != final);
+}
+
+/*
+ * Initialize reference clocks when the driver loads
+ */
+void intel_init_pch_refclk(struct drm_i915_private *dev_priv)
+{
+	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
+		ilk_init_pch_refclk(dev_priv);
+	else if (HAS_PCH_LPT(dev_priv))
+		lpt_init_pch_refclk(dev_priv);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.h b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
new file mode 100644
index 000000000000..12ab2c75a800
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef _INTEL_PCH_REFCLK_H_
+#define _INTEL_PCH_REFCLK_H_
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+struct intel_crtc_state;
+
+void lpt_program_iclkip(const struct intel_crtc_state *crtc_state);
+void lpt_disable_iclkip(struct drm_i915_private *dev_priv);
+int lpt_get_iclkip(struct drm_i915_private *dev_priv);
+
+void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
+void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
+
+#endif
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index b18a250e5d2e..1e5b75ae9932 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -54,6 +54,7 @@
 #include "display/intel_fbdev.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_overlay.h"
+#include "display/intel_pch_refclk.h"
 #include "display/intel_pipe_crc.h"
 #include "display/intel_pps.h"
 #include "display/intel_sprite.h"
-- 
2.32.0

