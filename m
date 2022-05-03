Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5F4518C42
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD5A10EB6B;
	Tue,  3 May 2022 18:23:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D684A10E90C
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602237; x=1683138237;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GgX2e2MpmOfh8bgMUTMXGPnPqRwtC0xdsYfPdAwjw90=;
 b=gABUZrPkN9g5hAImHuY/q97WStx6ss0N4uSklFtrHaReG0tbBZfyzTWD
 SLNV+02+mkkoygoAU6sZ53xrXxV3YWVg8NxZ/sivuJy14j/PRqU1gLjZT
 t+9MeZupHkQ090MaEuDOKcsCgVAU2hb9PLqJHFZF85pXY3iTSvdYFNNdg
 fbnKd8UEL42UWeBD3qPZe+7lqsQEAauMXHN+ufhnr+mUnZFOYr0068iKX
 NchJmRRtHY/LLXTKe6L54BgJ0o4P5qH+vyyew+5b4k0UW+vzpplFO0DJ5
 0XitMISo3adks+d/uJjfgY2p1zButu3bKV2O29/HtVn75c6xiquYKtBy9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="267432919"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="267432919"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="547720202"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 03 May 2022 11:23:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:38 +0300
Message-Id: <20220503182242.18797-23-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 22/26] drm/i915: Allow M/N change during fastset
 on bdw+
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

On BDW+ M/N are double buffered and so we can easily reprogram them
during a fastset. So for eDP panels that support seamless DRRS we
can just change these without a full modeset.

For earlier platforms we'd need to play tricks with M1/N1 vs.
M2/N2 during the fastset to make sure we do the switch atomically.
Not sure the added complexity is worth the hassle, so leave it
alone for now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 13 +++++++---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 26 +++++++++++++++----
 3 files changed, 32 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2acc5f3a2c0e..f30bdcdd4c84 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6174,7 +6174,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
 	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv)) {
-		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
+		if (!fastset || !pipe_config->seamless_m_n)
+			PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
 	} else {
 		PIPE_CONF_CHECK_M_N(dp_m_n);
 		PIPE_CONF_CHECK_M_N(dp_m2_n2);
@@ -6306,8 +6307,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
+	if (!fastset || !pipe_config->seamless_m_n) {
+		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
+		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
+	}
 	PIPE_CONF_CHECK_I(port_clock);
 
 	PIPE_CONF_CHECK_I(min_voltage_level);
@@ -7890,6 +7893,10 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	if (DISPLAY_VER(dev_priv) >= 9 ||
 	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		hsw_set_linetime_wm(new_crtc_state);
+
+	if (new_crtc_state->seamless_m_n)
+		intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state->cpu_transcoder,
+					       &new_crtc_state->dp_m_n);
 }
 
 static void commit_pipe_pre_planes(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 408152f9f46a..fb58893510a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1057,6 +1057,7 @@ struct intel_crtc_state {
 	/* m2_n2 for eDP downclock */
 	struct intel_link_m_n dp_m2_n2;
 	bool has_drrs;
+	bool seamless_m_n;
 
 	/* PSR is supported but might not be enabled due the lack of enabled planes */
 	bool has_psr;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e4a79c11fd25..9385178c7fd6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1270,21 +1270,33 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 	}
 }
 
+static int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
+			       const struct drm_connector_state *conn_state)
+{
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	/* FIXME a bit of a mess wrt clock vs. crtc_clock */
+	if (intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS)
+		return intel_panel_highest_mode(connector, adjusted_mode)->clock;
+	else
+		return adjusted_mode->crtc_clock;
+}
+
 /* Optimize link config in order: max bpp, min clock, min lanes */
 static int
 intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *pipe_config,
+				  const struct drm_connector_state *conn_state,
 				  const struct link_config_limits *limits)
 {
-	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	int bpp, i, lane_count;
+	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	int mode_rate, link_rate, link_avail;
 
 	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
 		int output_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
 
-		mode_rate = intel_dp_link_required(adjusted_mode->crtc_clock,
-						   output_bpp);
+		mode_rate = intel_dp_link_required(clock, output_bpp);
 
 		for (i = 0; i < intel_dp->num_common_rates; i++) {
 			link_rate = intel_dp_common_rate(intel_dp, i);
@@ -1584,7 +1596,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	 * Optimize for slow and wide for everything, because there are some
 	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
 	 */
-	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
+	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, conn_state, &limits);
 
 	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
 		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
@@ -1873,6 +1885,10 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
 
+	if ((DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915)) &&
+	    intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS)
+		pipe_config->seamless_m_n = true;
+
 	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
 		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
 			intel_zero_m_n(&pipe_config->dp_m2_n2);
-- 
2.35.1

