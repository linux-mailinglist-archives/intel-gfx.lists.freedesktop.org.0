Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34484A0B3F5
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA28E10E62A;
	Mon, 13 Jan 2025 10:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YFmS8s1c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0CC310E621
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 10:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736762616; x=1768298616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ab8DOD5pJuizI+v60ysRY1hmz/fbaWRhtCeYj1PZVsc=;
 b=YFmS8s1cdb2ksU6ziwbVGK5n0d5XQtFOCqZKAihTsQX0itP2mHz2RcJy
 7rEXR7kMw2suF8Nyq1hVNjw2mN5P/eirUDD1gwSV4lMjib2z3g8tRx/Fk
 FMIRdhBzxqWhA77NYvly9P5NofzODttVHDMzDgVtXl9WUzK1F8d0pE2Tr
 aXiAg+WSnvQlHQkwLKGRLEKGj2A4/Uf9LRHNLSVovK2grdXnyk7yZU0Qa
 p+syoJ8ZMi/9/d1bHpIx9wfWbA7WlSuvNF1mBj9f3OtigEfnroixhTZUV
 y3rpgnfG0HgufZireEsUUi/6UvG2vDs1dJBoQpG/OHn5QI2lGIwoyFpJO g==;
X-CSE-ConnectionGUID: Rst+IL0xQ4mWIDXj11yGIA==
X-CSE-MsgGUID: g3RYy6P9R8SfHZMguEe1hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="36227120"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36227120"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:03:36 -0800
X-CSE-ConnectionGUID: TPN+Ais9SPmvm4dybHPvuQ==
X-CSE-MsgGUID: 5GiSV1B9QRK+F0rpQHk99A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104242968"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa006.fm.intel.com with ESMTP; 13 Jan 2025 02:03:32 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Cc: nitin.r.gote@intel.com
Subject: [PATCH v2 7/8] drm/i915/display: fix typos in i915/display files
Date: Mon, 13 Jan 2025 15:54:20 +0530
Message-Id: <20250113102421.2431727-8-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113102421.2431727-1-nitin.r.gote@intel.com>
References: <20250113102421.2431727-1-nitin.r.gote@intel.com>
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

Fix all typos in files under drm/i915/display reported by codespell tool.

v2:
  - Include british and american spelling, as those are
    not typos.
  - Fix commenting style. <Jani>

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/display/dvo_ns2501.c     |  2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  6 +--
 drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  8 ++--
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 .../drm/i915/display/intel_display_power.c    |  4 +-
 .../i915/display/intel_display_power_well.h   |  4 +-
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 .../drm/i915/display/intel_dp_link_training.c |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c  |  4 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo_dev.h  |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  2 +-
 .../drm/i915/display/intel_fifo_underrun.c    |  2 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  8 ++--
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  6 +--
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_link_bw.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  | 21 +++++---
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++--
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  4 +-
 .../gpu/drm/i915/display/intel_sdvo_regs.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     | 48 +++++++++----------
 .../drm/i915/display/skl_universal_plane.c    |  4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  4 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  2 +-
 48 files changed, 109 insertions(+), 102 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/dvo_ns2501.c b/drivers/gpu/drm/i915/display/dvo_ns2501.c
index 686393dfbbf5..04005cdd0461 100644
--- a/drivers/gpu/drm/i915/display/dvo_ns2501.c
+++ b/drivers/gpu/drm/i915/display/dvo_ns2501.c
@@ -517,7 +517,7 @@ static enum drm_connector_status ns2501_detect(struct intel_dvo_device *dvo)
 	 * Even if not, the detection bit of the 2501 is unreliable as
 	 * it only works for some display types.
 	 * It is even more unreliable as the PLL must be active for
-	 * allowing reading from the chiop.
+	 * allowing reading from the chip.
 	 */
 	return connector_status_connected;
 }
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index db78c1e6b0a3..497850a6ac81 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -446,7 +446,7 @@ static const struct intel_watermark_params i845_wm_info = {
  * @latency: Memory wakeup latency in 0.1us units
  *
  * Compute the watermark using the method 1 or "small buffer"
- * formula. The caller may additonally add extra cachelines
+ * formula. The caller may additionally add extra cachelines
  * to account for TLB misses and clock crossings.
  *
  * This method is concerned with the short term drain rate
@@ -493,7 +493,7 @@ static unsigned int intel_wm_method1(unsigned int pixel_rate,
  * @latency: Memory wakeup latency in 0.1us units
  *
  * Compute the watermark using the method 2 or "large buffer"
- * formula. The caller may additonally add extra cachelines
+ * formula. The caller may additionally add extra cachelines
  * to account for TLB misses and clock crossings.
  *
  * This method is concerned with the long term drain rate
@@ -1562,7 +1562,7 @@ static int vlv_compute_fifo(struct intel_crtc_state *crtc_state)
 	/*
 	 * When enabling sprite0 after sprite1 has already been enabled
 	 * we tend to get an underrun unless sprite0 already has some
-	 * FIFO space allcoated. Hence we always allocate at least one
+	 * FIFO space allocated. Hence we always allocate at least one
 	 * cacheline for sprite0 whenever sprite1 is enabled.
 	 *
 	 * All other plane enable sequences appear immune to this problem.
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index c977b74f82f0..d4615919e526 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -243,7 +243,7 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 	for_each_dsi_phy(phy, intel_dsi->phys) {
 		/*
 		 * Program voltage swing and pre-emphasis level values as per
-		 * table in BSPEC under DDI buffer programing
+		 * table in BSPEC under DDI buffer programming
 		 */
 		mask = SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK;
 		val = SCALING_MODE_SEL(0x2) | TAP2_DISABLE | TAP3_DISABLE |
@@ -961,7 +961,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
 		/*
-		 * FIXME: Programing this by assuming progressive mode, since
+		 * FIXME: Programming this by assuming progressive mode, since
 		 * non-interlaced info from VBT is not saved inside
 		 * struct drm_display_mode.
 		 * For interlace mode: program required pixel minus 2
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index ce8a4319a63c..e2fc8d7363ef 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -567,7 +567,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 		     AUDIO_ELD_VALID(cpu_transcoder), 0);
 
 	/*
-	 * The audio componenent is used to convey the ELD
+	 * The audio component is used to convey the ELD
 	 * instead using of the hardware ELD buffer.
 	 */
 
@@ -663,7 +663,7 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
 		     IBX_ELD_VALID(port), 0);
 
 	/*
-	 * The audio componenent is used to convey the ELD
+	 * The audio component is used to convey the ELD
 	 * instead using of the hardware ELD buffer.
 	 */
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 3506e576bf6b..addc1e19b05c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2250,7 +2250,7 @@ static void bxt_sanitize_cdclk(struct intel_display *display)
 
 	/*
 	 * Let's ignore the pipe field, since BIOS could have configured the
-	 * dividers both synching to an active pipe, or asynchronously
+	 * dividers both syncing to an active pipe, or asynchronously
 	 * (PIPE_NONE).
 	 */
 	cdctl &= ~bxt_cdclk_cd2x_pipe(display, INVALID_PIPE);
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 2f51eccdb27a..8400a97f7e43 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -998,7 +998,7 @@ static void skl_color_commit_noarm(struct intel_dsb *dsb,
 	 * output all black (until CSC_MODE is rearmed and properly latched).
 	 * Once PSR exit (and proper register latching) has occurred the
 	 * danger is over. Thus when PSR is enabled the CSC coeff/offset
-	 * register programming will be peformed from skl_color_commit_arm()
+	 * register programming will be performed from skl_color_commit_arm()
 	 * which is called after PSR exit.
 	 */
 	if (!crtc_state->has_psr)
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 4634d3fd9f20..df8f0f37efbb 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -745,7 +745,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 			       transconf | TRANSCONF_FORCE_BORDER);
 		intel_de_posting_read(display,
 				      TRANSCONF(display, cpu_transcoder));
-		/* Wait for next Vblank to substitue
+		/* Wait for next Vblank to substitute
 		 * border color for Color info */
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
 		st00 = intel_de_read8(display, _VGA_MSR_WRITE);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index c910168602d2..14fdaf675636 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -96,7 +96,7 @@ u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
 	/*
-	 * From Gen 11, In case of dsi cmd mode, frame counter wouldnt
+	 * From Gen 11, In case of dsi cmd mode, frame counter wouldn't
 	 * have updated at the beginning of TE, if we want to use
 	 * the hw counter, then we would find it updated in only
 	 * the next TE, hence switching to sw counter.
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 57cf8f46a458..12867748d1c1 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -680,7 +680,7 @@ static void i9xx_cursor_update_arm(struct intel_dsb *dsb,
 	 * CURPOS.
 	 *
 	 * On other platforms CURPOS always requires the
-	 * CURBASE write to arm the update. Additonally
+	 * CURBASE write to arm the update. Additionally
 	 * a write to any of the cursor register will cancel
 	 * an already armed cursor update. Thus leaving out
 	 * the CURBASE write after CURPOS could lead to a
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4f9c50996446..5ed0d9945488 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2948,7 +2948,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
  * - crtc_state will be the state of the first stream to be activated on this
  *   port, and it may not be the same stream that will be deactivated last, but
  *   each stream should have a state that is identical when it comes to the DP
- *   link parameteres
+ *   link parameters
  */
 static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 				 struct intel_encoder *encoder,
@@ -3232,7 +3232,7 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 	 *   be deactivated on this port, and it may not be the same
 	 *   stream that was activated last, but each stream
 	 *   should have a state that is identical when it comes to
-	 *   the DP link parameteres
+	 *   the DP link parameters
 	 */
 
 	if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4271da219b41..699a56abe114 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1013,7 +1013,7 @@ static void intel_async_flip_vtd_wa(struct drm_i915_private *i915,
 {
 	if (DISPLAY_VER(i915) == 9) {
 		/*
-		 * "Plane N strech max must be programmed to 11b (x1)
+		 * "Plane N stretch max must be programmed to 11b (x1)
 		 *  when Async flips are enabled on that plane."
 		 */
 		intel_de_rmw(i915, CHICKEN_PIPESL_1(pipe),
@@ -3529,7 +3529,7 @@ static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
 		      REG_FIELD_GET(PF_WIN_YSIZE_MASK, size));
 
 	/*
-	 * We currently do not free assignements of panel fitters on
+	 * We currently do not free assignments of panel fitters on
 	 * ivb/hsw (since we don't use the higher upscaling modes which
 	 * differentiates them) so just WARN about this case for now.
 	 */
@@ -4229,7 +4229,7 @@ int intel_dotclock_calculate(int link_freq,
 	/*
 	 * The calculation for the data clock -> pixel clock is:
 	 * pixel_clock = ((m/n)*(link_clock * nr_lanes))/bpp
-	 * But we want to avoid losing precison if possible, so:
+	 * But we want to avoid losing precision if possible, so:
 	 * pixel_clock = ((m * link_clock * nr_lanes)/(n*bpp))
 	 *
 	 * and for link freq (10kbs units) -> pixel clock it is:
@@ -6359,7 +6359,7 @@ static void kill_joiner_secondaries(struct intel_atomic_state *state,
  * the intel_crtc_enable_flip_done() function.
  *
  * As soon as the surface address register is written, flip done interrupt is
- * generated and the requested events are sent to the usersapce in the interrupt
+ * generated and the requested events are sent to the userspace in the interrupt
  * handler itself. The timestamp and sequence sent during the flip done event
  * correspond to the last vblank and have no relation to the actual time when
  * the flip done event was sent.
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f1d76484025a..926f09c35084 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -940,7 +940,7 @@ static int i915_lpsp_capability_show(struct seq_file *m, void *data)
 		/*
 		 * Actually TGL can drive LPSP on port till DDI_C
 		 * but there is no physical connected DDI_C on TGL sku's,
-		 * even driver is not initilizing DDI_C port for gen12.
+		 * even driver is not initializing DDI_C port for gen12.
 		 */
 		lpsp_capable = encoder->port <= PORT_B;
 	else if (DISPLAY_VER(i915) == 11)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34465d56def0..03f1b6fc3597 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -842,7 +842,7 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
  * block right away if this is the last reference.
  *
  * This function is only for the power domain code's internal use to suppress wakeref
- * tracking when the correspondig debug kconfig option is disabled, should not
+ * tracking when the corresponding debug kconfig option is disabled, should not
  * be used otherwise.
  */
 void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
@@ -1736,7 +1736,7 @@ static void icl_display_core_uninit(struct intel_display *display)
 	gen9_disable_dc_states(display);
 	intel_dmc_disable_program(display);
 
-	/* 1. Disable all display engine functions -> aready done */
+	/* 1. Disable all display engine functions -> already done */
 
 	/* 2. Disable DBUF */
 	gen9_dbuf_disable(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 338379dae44c..ec8e508d0593 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -60,7 +60,7 @@ struct i915_power_well_instance {
 	/* unique identifier for this power well */
 	enum i915_power_well_id id;
 	/*
-	 * Arbitraty data associated with this power well. Platform and power
+	 * Arbitrary data associated with this power well. Platform and power
 	 * well specific.
 	 */
 	union {
@@ -77,7 +77,7 @@ struct i915_power_well_instance {
 		struct {
 			/*
 			 * request/status flag index in the power well
-			 * constrol/status registers.
+			 * control/status registers.
 			 */
 			u8 idx;
 		} hsw;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index eb9dd1125a4a..806c2efb2318 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -732,7 +732,7 @@ struct intel_crtc_scaler_state {
 	 *
 	 * intel_atomic_setup_scalers will setup available scalers to users
 	 * requesting scalers. It will gracefully fail if request exceeds
-	 * avilability.
+	 * availability.
 	 */
 #define SKL_CRTC_INDEX 31
 	unsigned scaler_users;
@@ -1113,7 +1113,7 @@ struct intel_crtc_state {
 	u16 su_y_granularity;
 
 	/*
-	 * Frequence the dpll for the port should run at. Differs from the
+	 * Frequency the dpll for the port should run at. Differs from the
 	 * adjusted dotclock e.g. for DP or 10/12bpc hdmi mode. This is also
 	 * already multiplied by pixel_multiplier.
 	 */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0d74adae2ec9..6689983336a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1075,7 +1075,7 @@ static bool source_can_output(struct intel_dp *intel_dp,
 		/*
 		 * No YCbCr output support on gmch platforms.
 		 * Also, ILK doesn't seem capable of DP YCbCr output.
-		 * The displayed image is severly corrupted. SNB+ is fine.
+		 * The displayed image is severely corrupted. SNB+ is fine.
 		 */
 		return !HAS_GMCH(display) && !display->platform.ironlake;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 8b1977cfec50..9cb22baafeeb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -783,7 +783,7 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 	/*
 	 * WaEdpLinkRateDataReload
 	 *
-	 * Parade PS8461E MUX (used on varius TGL+ laptops) needs
+	 * Parade PS8461E MUX (used on various TGL+ laptops) needs
 	 * to snoop the link rates reported by the sink when we
 	 * use LINK_RATE_SET in order to operate in jitter cleaning
 	 * mode (as opposed to redriver mode). Unfortunately it
@@ -1629,7 +1629,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	/*
 	 * Ignore the link failure in CI
 	 *
-	 * In fixed enviroments like CI, sometimes unexpected long HPDs are
+	 * In fixed environments like CI, sometimes unexpected long HPDs are
 	 * generated by the displays. If ignore_long_hpd flag is set, such long
 	 * HPDs are ignored. And probably as a consequence of these ignored
 	 * long HPDs, subsequent link trainings are failed resulting into CI
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fffd199999e0..e518785213a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -824,7 +824,7 @@ static int intel_dp_mst_check_bw(struct intel_atomic_state *state,
  * @state must be recomputed with the updated @limits.
  *
  * Returns:
- *   - 0 if the confugration is valid
+ *   - 0 if the configuration is valid
  *   - %-EAGAIN, if the configuration is invalid and @limits got updated
  *     with fallback values with which the configuration of all CRTCs in
  *     @state must be recomputed
@@ -2043,7 +2043,7 @@ bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
  * @intel_dp: DP port object
  *
  * Prepare an MST link for topology probing, programming the target
- * link parameters to DPCD. This step is a requirement of the enumaration
+ * link parameters to DPCD. This step is a requirement of the enumeration
  * of path resources during probing.
  */
 void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 380b359b0420..614b90d6938f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -257,7 +257,7 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 		/*
 		 * FIXME: Ideally pattern should come from DPCD 0x250. As
 		 * current firmware of DPR-100 could not set it, so hardcoding
-		 * now for complaince test.
+		 * now for compliance test.
 		 */
 		drm_dbg_kms(display->drm,
 			    "Set 80Bit Custom Phy Test Pattern 0x3e0f83e0 0x0f83e0f8 0x0000f83e\n");
@@ -275,7 +275,7 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 		/*
 		 * FIXME: Ideally pattern should come from DPCD 0x24A. As
 		 * current firmware of DPR-100 could not set it, so hardcoding
-		 * now for complaince test.
+		 * now for compliance test.
 		 */
 		drm_dbg_kms(display->drm,
 			    "Set HBR2 compliance Phy Test Pattern\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 589872babdd7..280f302967e3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -647,7 +647,7 @@ void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
  * @state must be recomputed with the updated @limits.
  *
  * Returns:
- *   - 0 if the confugration is valid
+ *   - 0 if the configuration is valid
  *   - %-EAGAIN, if the configuration is invalid and @limits got updated
  *     with fallback values with which the configuration of all CRTCs in
  *     @state must be recomputed
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 52a36a2281e6..5f88702818d3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -40,7 +40,7 @@
  * VLV, CHV and BXT have slightly peculiar display PHYs for driving DP/HDMI
  * ports. DPIO is the name given to such a display PHY. These PHYs
  * don't follow the standard programming model using direct MMIO
- * registers, and instead their registers must be accessed trough IOSF
+ * registers, and instead their registers must be accessed through IOSF
  * sideband. VLV has one such PHY for driving ports B and C, and CHV
  * adds another PHY for driving port D. Each PHY responds to specific
  * IOSF-SB port.
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 3256b1293f7f..7bea44576a40 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -2123,7 +2123,7 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	tmp |= DPIO_CHV_TDC_TARGET_CNT(tribuf_calcntr);
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(ch), tmp);
 
-	/* AFC Recal */
+	/* AFC Recall */
 	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(ch),
 		       vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(ch)) |
 		       DPIO_AFC_RECAL);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index d86cc9ffd4ac..b8fa04d3cd5c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4372,7 +4372,7 @@ void intel_shared_dpll_init(struct drm_i915_private *i915)
  * calling intel_shared_dpll_swap_state().
  *
  * Returns:
- * 0 on success, negative error code on falure.
+ * 0 on success, negative error code on failure.
  */
 int intel_compute_shared_dplls(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 6af325b8e27d..3eee76874304 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -318,7 +318,7 @@ struct dpll_info {
 	const struct intel_shared_dpll_funcs *funcs;
 
 	/**
-	 * @id: unique indentifier for this DPLL
+	 * @id: unique identifier for this DPLL
 	 */
 	enum intel_dpll_id id;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index e6f8fc743fb4..ac279df1c4ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -825,7 +825,7 @@ void intel_dsb_irq_handler(struct intel_display *display,
 
 		if (crtc->dsb_event) {
 			/*
-			 * Update vblank counter/timestmap in case it
+			 * Update vblank counter/timestamp in case it
 			 * hasn't been done yet for this frame.
 			 */
 			drm_crtc_accurate_vblank_count(&crtc->base);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index b2b78f39cfd3..7b2ffd14ae6e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -582,7 +582,7 @@ static const fn_mipi_elem_exec exec_elem[] = {
 
 /*
  * MIPI Sequence from VBT #53 parsing logic
- * We have already separated each seqence during bios parsing
+ * We have already separated each sequence during bios parsing
  * Following is generic execution function for any sequence
  */
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
index 4bf476656b8c..3be1a16cac20 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
+++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
@@ -57,7 +57,7 @@ struct intel_dvo_dev_ops {
 	 * Turn on/off output.
 	 *
 	 * Because none of our dvo drivers support an intermediate power levels,
-	 * we don't expose this in the interfac.
+	 * we don't expose this in the interface.
 	 */
 	void (*dpms)(struct intel_dvo_device *dvo, bool enable);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 37cdfa9c692a..3e8d6d8af780 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -390,7 +390,7 @@ static int intel_fdi_atomic_check_bw(struct intel_atomic_state *state,
  * @state must be recomputed with the updated @limits.
  *
  * Returns:
- *   - 0 if the confugration is valid
+ *   - 0 if the configuration is valid
  *   - %-EAGAIN, if the configuration is invalid and @limits got updated
  *     with fallback values with which the configuration of all CRTCs
  *     in @state must be recomputed
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index cda1daf4cdea..18fcdbe1248a 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -290,7 +290,7 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
 }
 
 /**
- * intel_set_cpu_fifo_underrun_reporting - set cpu fifo underrrun reporting state
+ * intel_set_cpu_fifo_underrun_reporting - set cpu fifo underrun reporting state
  * @dev_priv: i915 device instance
  * @pipe: (CPU) pipe to set state for
  * @enable: whether underruns should be reported or not
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 6ed5f726ee60..26128c610cb4 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -227,7 +227,7 @@ static void intel_frontbuffer_flush_work(struct work_struct *work)
  * @front: GEM object to flush
  *
  * This function is targeted for our dirty callback for queueing flush when
- * dma fence is signales
+ * dma fence is signals
  */
 void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index f6e68a0e3b6d..bf8627e65242 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -353,7 +353,7 @@ static bool hdcp_key_loadable(struct intel_display *display)
 
 	/*
 	 * Another req for hdcp key loadability is enabled state of pll for
-	 * cdclk. Without active crtc we wont land here. So we are assuming that
+	 * cdclk. Without active crtc we won't land here. So we are assuming that
 	 * cdclk is already on.
 	 */
 
@@ -1544,9 +1544,9 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	 * with a 50ms delay if not hdcp2 capable for DP/DPMST encoders
 	 * (dock decides to stop advertising hdcp2 capability for some reason).
 	 * The reason being that during suspend resume dock usually keeps the
-	 * HDCP2 registers inaccesible causing AUX error. This wouldn't be a
+	 * HDCP2 registers inaccessible causing AUX error. This wouldn't be a
 	 * big problem if the userspace just kept retrying with some delay while
-	 * it continues to play low value content but most userpace applications
+	 * it continues to play low value content but most userspace applications
 	 * end up throwing an error when it receives one from KMD. This makes
 	 * sure we give the dock and the sink devices to complete its power cycle
 	 * and then try HDCP authentication. The values of 10 and delay of 50ms
@@ -2554,7 +2554,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 
 	/*
 	 * During the HDCP encryption session if Type change is requested,
-	 * disable the HDCP and reenable it with new TYPE value.
+	 * disable the HDCP and re-enable it with new TYPE value.
 	 */
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_UNDESIRED ||
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 3adc791d3776..c0d48f651dab 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -806,7 +806,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
  * of the powerwells.
  *
  * Since this function can get called in contexts where we're already holding
- * dev->mode_config.mutex, we do the actual hotplug enabling in a seperate
+ * dev->mode_config.mutex, we do the actual hotplug enabling in a separate
  * worker.
  *
  * Also see: intel_hpd_init() and intel_hpd_poll_disable().
@@ -823,7 +823,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 
 	/*
 	 * We might already be holding dev->mode_config.mutex, so do this in a
-	 * seperate worker
+	 * separate worker
 	 * As well, there's no issue if we race here since we always reschedule
 	 * this worker anyway
 	 */
@@ -844,7 +844,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
  * of the powerwells.
  *
  * Since this function can get called in contexts where we're already holding
- * dev->mode_config.mutex, we do the actual hotplug enabling in a seperate
+ * dev->mode_config.mutex, we do the actual hotplug enabling in a separate
  * worker.
  *
  * Also used during driver init to initialize connector->polled
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 476ac88087e0..2137ac7b882a 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -197,7 +197,7 @@ void i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
  * @bits: bits to enable
  * NOTE: the HPD enable bits are modified both inside and outside
  * of an interrupt context. To avoid that read-modify-write cycles
- * interfer, these bits are protected by a spinlock. Since this
+ * interfere, these bits are protected by a spinlock. Since this
  * function is usually not called from a context where the lock is
  * held already, this function acquires the lock itself. A non-locking
  * version is also available.
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index 29705c159119..f4d60e77aa18 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -221,7 +221,7 @@ assert_link_limit_change_valid(struct intel_display *display,
  * limits in @new_limits if there is a BW limitation.
  *
  * Returns:
- *   - 0 if the confugration is valid
+ *   - 0 if the configuration is valid
  *   - %-EAGAIN, if the configuration is invalid and @new_limits got updated
  *     with fallback values with which the configuration of all CRTCs
  *     in @state must be recomputed
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index ca30fff61876..9c3742b53a4a 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -43,10 +43,12 @@
 #include "intel_overlay.h"
 #include "intel_pci_config.h"
 
-/* Limits for overlay size. According to intel doc, the real limits are:
+/*
+ * Limits for overlay size. According to intel doc, the real limits are:
  * Y width: 4095, UV width (planar): 2047, Y height: 2047,
  * UV width (planar): * 1023. But the xorg thinks 2048 for height and width. Use
- * the mininum of both.  */
+ * the minimum of both.
+ */
 #define IMAGE_MAX_WIDTH		2048
 #define IMAGE_MAX_HEIGHT	2046 /* 2 * 1023 */
 /* on 830 and 845 these large limits result in the card hanging */
@@ -408,10 +410,12 @@ static int intel_overlay_off(struct intel_overlay *overlay)
 
 	drm_WARN_ON(display->drm, !overlay->active);
 
-	/* According to intel docs the overlay hw may hang (when switching
+	/*
+	 * According to intel docs the overlay hw may hang (when switching
 	 * off) without loading the filter coeffs. It is however unclear whether
 	 * this applies to the disabling of the overlay or to the switching off
-	 * of the hw. Do it in both cases */
+	 * of the hw. Do it in both cases.
+	 */
 	flip_addr |= OFC_UPDATE;
 
 	rq = alloc_request(overlay, intel_overlay_off_tail);
@@ -442,14 +446,17 @@ static int intel_overlay_off(struct intel_overlay *overlay)
 	return i915_active_wait(&overlay->last_flip);
 }
 
-/* recover from an interruption due to a signal
- * We have to be careful not to repeat work forever an make forward progess. */
+/*
+ * Recover from an interruption due to a signal.
+ * We have to be careful not to repeat work forever an make forward progress.
+ */
 static int intel_overlay_recover_from_interrupt(struct intel_overlay *overlay)
 {
 	return i915_active_wait(&overlay->last_flip);
 }
 
-/* Wait for pending overlay flip and release old frame.
+/*
+ * Wait for pending overlay flip and release old frame.
  * Needs to be called before the overlay register are changed
  * via intel_overlay_(un)map_regs
  */
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index cdd314956a31..11969fda47d7 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -576,7 +576,7 @@ intel_pmdemand_program_params(struct drm_i915_private *i915,
 		goto unlock;
 
 	drm_dbg_kms(&i915->drm,
-		    "initate pmdemand request values: (0x%x 0x%x)\n",
+		    "initiate pmdemand request values: (0x%x 0x%x)\n",
 		    mod_reg1, mod_reg2);
 
 	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index eb35f0249f2b..f2c1280b51c9 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1502,7 +1502,7 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 		return;
 
 	/* On Toshiba Satellite P50-C-18C system the VBT T12 delay
-	 * of 500ms appears to be too short. Ocassionally the panel
+	 * of 500ms appears to be too short. Occasionally the panel
 	 * just fails to power back on. Increasing the delay to 800ms
 	 * seems sufficient to avoid this problem.
 	 */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0b021acb330f..3e7934242821 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -154,7 +154,7 @@
  *
  *  Unfortunately CHICKEN_TRANS itself seems to be double buffered
  *  and thus won't latch until the first vblank. So with DC states
- *  enabled the register effctively uses the reset value during DC5
+ *  enabled the register effectively uses the reset value during DC5
  *  exit+PSR exit sequence, and thus the bit does nothing until
  *  latched by the vblank that it was trying to prevent from being
  *  generated in the first place. So we should probably call this
@@ -171,7 +171,7 @@
  * CHICKEN_PIPESL_1[15]/HSW_UNMASK_VBL_TO_REGS_IN_SRD (hsw):
  *
  *  On BDW without this bit is no vblanks whatsoever are
- *  generated after PSR exit. On HSW this has no apparant effect.
+ *  generated after PSR exit. On HSW this has no apparent effect.
  *  WaPsrDPRSUnmaskVBlankInSRD says to set this.
  *
  * The rest of the bits are more self-explanatory and/or
@@ -185,7 +185,7 @@
  *  has_psr + has_panel_replay:				Panel Replay
  *  has_psr + has_panel_replay + has_sel_update:	Panel Replay Selective Update
  *
- * Description of some intel_psr varibles. enabled, panel_replay_enabled,
+ * Description of some intel_psr variables. enabled, panel_replay_enabled,
  * sel_update_enabled
  *
  *  enabled (alone):						PSR1
@@ -1043,7 +1043,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		};
 		/*
 		 * Still using the default IO_BUFFER_WAKE and FAST_WAKE, see
-		 * comments bellow for more information
+		 * comments below for more information
 		 */
 		int tmp;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 498b35ec4e0f..c78da5a2b559 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1741,8 +1741,8 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 	 * pixel multiplier readout is tricky: Only on i915g/gm it is stored in
 	 * the sdvo port register, on all other platforms it is part of the dpll
 	 * state. Since the general pipe state readout happens before the
-	 * encoder->get_config we so already have a valid pixel multplier on all
-	 * other platfroms.
+	 * encoder->get_config we so already have a valid pixel multiplier on all
+	 * other platforms.
 	 */
 	if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
 		pipe_config->pixel_multiplier =
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo_regs.h b/drivers/gpu/drm/i915/display/intel_sdvo_regs.h
index 54f099abefeb..56c4551abefd 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_sdvo_regs.h
@@ -244,7 +244,7 @@ struct intel_sdvo_set_target_input_args {
  * Takes a struct intel_sdvo_output_flags of which outputs are targeted by
  * future output commands.
  *
- * Affected commands inclue SET_OUTPUT_TIMINGS_PART[12],
+ * Affected commands include SET_OUTPUT_TIMINGS_PART[12],
  * GET_OUTPUT_TIMINGS_PART[12], and GET_OUTPUT_PIXEL_CLOCK_RANGE.
  */
 #define SDVO_CMD_SET_TARGET_OUTPUT			0x11
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 41fe26dc200b..cf7da666074c 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -521,7 +521,7 @@ static const struct intel_mpllb_state dg2_hdmi_148_5 = {
 		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
 };
 
-/* values in the below table are calculted using the algo */
+/* values in the below table are calculated using the algo */
 static const struct intel_mpllb_state dg2_hdmi_25200 = {
 	.clock = 25200,
 	.ref_control =
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index a95fb3349eba..5ca3003093ce 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -369,7 +369,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 
 		/*
 		 * Already exiting vblank? If so, shift our position
-		 * so it looks like we're already apporaching the full
+		 * so it looks like we're already approaching the full
 		 * vblank end. This should make the generated timestamp
 		 * more or less match when the active portion will start.
 		 */
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index b355c479eda3..cc43b6a2711e 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -99,7 +99,7 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	 * According to DSC 1.2 spec in Section 4.1 if native_420 is set:
 	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
 	 * height < 8.
-	 * -second_line_offset_adj is 512 as shown by emperical values to yield best chroma
+	 * -second_line_offset_adj is 512 as shown by empirical values to yield best chroma
 	 * preservation in second line.
 	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 then rounded
 	 * up to 16 fractional bits, we left shift second line offset by 11 to preserve 11
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index ae21fce534dc..402d8258cf21 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -573,31 +573,31 @@ static u16 glk_nearest_filter_coef(int t)
  *  The letter represents the filter tap (D is the center tap) and the number
  *  represents the coefficient set for a phase (0-16).
  *
- *         +------------+------------------------+------------------------+
- *         |Index value | Data value coeffient 1 | Data value coeffient 2 |
- *         +------------+------------------------+------------------------+
- *         |   00h      |          B0            |          A0            |
- *         +------------+------------------------+------------------------+
- *         |   01h      |          D0            |          C0            |
- *         +------------+------------------------+------------------------+
- *         |   02h      |          F0            |          E0            |
- *         +------------+------------------------+------------------------+
- *         |   03h      |          A1            |          G0            |
- *         +------------+------------------------+------------------------+
- *         |   04h      |          C1            |          B1            |
- *         +------------+------------------------+------------------------+
- *         |   ...      |          ...           |          ...           |
- *         +------------+------------------------+------------------------+
- *         |   38h      |          B16           |          A16           |
- *         +------------+------------------------+------------------------+
- *         |   39h      |          D16           |          C16           |
- *         +------------+------------------------+------------------------+
- *         |   3Ah      |          F16           |          C16           |
- *         +------------+------------------------+------------------------+
- *         |   3Bh      |        Reserved        |          G16           |
- *         +------------+------------------------+------------------------+
+ *         +------------+--------------------------+--------------------------+
+ *         |Index value | Data value coefficient 1 | Data value coefficient 2 |
+ *         +------------+--------------------------+--------------------------+
+ *         |   00h      |          B0              |          A0              |
+ *         +------------+--------------------------+--------------------------+
+ *         |   01h      |          D0              |          C0              |
+ *         +------------+--------------------------+--------------------------+
+ *         |   02h      |          F0              |          E0              |
+ *         +------------+--------------------------+--------------------------+
+ *         |   03h      |          A1              |          G0              |
+ *         +------------+--------------------------+--------------------------+
+ *         |   04h      |          C1              |          B1              |
+ *         +------------+--------------------------+--------------------------+
+ *         |   ...      |          ...             |          ...             |
+ *         +------------+--------------------------+--------------------------+
+ *         |   38h      |          B16             |          A16             |
+ *         +------------+--------------------------+--------------------------+
+ *         |   39h      |          D16             |          C16             |
+ *         +------------+--------------------------+--------------------------+
+ *         |   3Ah      |          F16             |          C16             |
+ *         +------------+--------------------------+--------------------------+
+ *         |   3Bh      |        Reserved          |          G16             |
+ *         +------------+--------------------------+--------------------------+
  *
- *  To enable nearest-neighbor scaling:  program scaler coefficents with
+ *  To enable nearest-neighbor scaling:  program scaler coefficients with
  *  the center tap (Dxx) values set to 1 and all other values set to 0 as per
  *  SCALER_COEFFICIENT_FORMAT
  *
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ff9764cac1e7..7ad89bf9cf04 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1024,7 +1024,7 @@ static u32 skl_plane_ctl_rotate(unsigned int rotate)
 		break;
 	/*
 	 * DRM_MODE_ROTATE_ is counter clockwise to stay compatible with Xrandr
-	 * while i915 HW rotation is clockwise, thats why this swapping.
+	 * while i915 HW rotation is clockwise, that's why this swapping.
 	 */
 	case DRM_MODE_ROTATE_90:
 		return PLANE_CTL_ROTATE_270;
@@ -2885,7 +2885,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	/*
 	 * DRM_MODE_ROTATE_ is counter clockwise to stay compatible with Xrandr
-	 * while i915 HW rotation is clockwise, thats why this swapping.
+	 * while i915 HW rotation is clockwise, that's why this swapping.
 	 */
 	switch (val & PLANE_CTL_ROTATE_MASK) {
 	case PLANE_CTL_ROTATE_0:
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 29e8ea91c858..14f27f3bd823 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -584,7 +584,7 @@ u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *i915,
 
 	/*
 	 * Per plane DDB entry can in a really worst case be on multiple slices
-	 * but single entry is anyway contigious.
+	 * but single entry is anyway contiguous.
 	 */
 	while (start_slice <= end_slice) {
 		slice_mask |= BIT(start_slice);
@@ -3197,7 +3197,7 @@ adjust_wm_latency(struct drm_i915_private *i915,
 	 * WaWmMemoryReadLatency
 	 *
 	 * punit doesn't take into account the read latency so we need
-	 * to add proper adjustement to each valid level we retrieve
+	 * to add proper adjustment to each valid level we retrieve
 	 * from the punit when level 0 response data is 0us.
 	 */
 	if (wm[0] == 0) {
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index d49e9b3c7627..0333c4d9b703 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -59,7 +59,7 @@ static u16 txbyteclkhs(u16 pixels, int bpp, int lane_count,
 					 8 * 100), lane_count);
 }
 
-/* return pixels equvalent to txbyteclkhs */
+/* return pixels equivalent to txbyteclkhs */
 static u16 pixels_from_txbyteclkhs(u16 clk_hs, int bpp, int lane_count,
 			u16 burst_mode_ratio)
 {
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 59a50647f2c3..ac69eaece0fd 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -459,7 +459,7 @@ static void bxt_dsi_program_clocks(struct drm_device *dev, enum port port,
 
 	/*
 	 * rx divider value needs to be updated in the
-	 * two differnt bit fields in the register hence splitting the
+	 * two different bit fields in the register hence splitting the
 	 * rx divider value accordingly
 	 */
 	rx_div_lower = rx_div & RX_DIVIDER_BIT_1_2;
-- 
2.25.1

