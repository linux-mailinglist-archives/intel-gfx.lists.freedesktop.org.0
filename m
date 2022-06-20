Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9622055231B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:53:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C6D10EDD0;
	Mon, 20 Jun 2022 17:53:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D8F10EDD0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747583; x=1687283583;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ejq4XSl2/iJscfQ/nXwX4FDji3xulJ2yXhIVzSdi+LM=;
 b=DvPFQKGNjDl/nBAF0HPX31xIDLcbkzEL7VhKLD72FC8rPgfxGJ/DSmQd
 NgjEBXvEgkLOz45k+r5rHJI8yRAMOdb/X13Rdqok1prVElyitRnI2uQ+S
 b8pc6x8LH15h6/SRwmmWPjFAUmvmdVVysorYySMiMdTvVICJixINVs8/B
 LwoH9eFWACndFkKhqZEzgUSoa4MBxoAvkt330SUa1Er3NnxMgTKSRVaNh
 w+4Q9Fo+ykkYBNkowVacCdmUrxK0mB4H2uAIiEwZ5ItXr3EEm+NGwzLW1
 eKEhiEfm9UjRhvKZSDAioqbq4YFQeXvlcuQJzLEwvrM+kHVHfNn9T4ABD g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="278720520"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="278720520"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="620189748"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga001.jf.intel.com with SMTP; 20 Jun 2022 10:52:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:52:08 +0300
Message-Id: <20220620175210.28788-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 15/17] drm/i915: Allow M/N change during
 fastset on bdw+
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

The slight downside is that we have to keep the link running at
a link rate capable of supporting the highest refresh rate we
want to use. For the moment we just pick the highest mode the
panel reports and calculate the link based on that. This might
need further refinement (eg. if we run into bandwidth
restrictions)...

v2: Only use the high link rate if the platform really supports
    the seamless M/N change uring fastset (ie. bdw+)
v3: Rebase due to HAS_DOUBLE_BUFFERED_M_N()

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 13 +++++--
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 37 ++++++++++++++++---
 3 files changed, 43 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index afef6a826ef2..43c00f8b4057 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5719,7 +5719,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
 	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
-		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
+		if (!fastset || !pipe_config->seamless_m_n)
+			PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
 	} else {
 		PIPE_CONF_CHECK_M_N(dp_m_n);
 		PIPE_CONF_CHECK_M_N(dp_m2_n2);
@@ -5851,8 +5852,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -6991,6 +6994,10 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
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
index 8b0949b6dc75..95159d1c8ca8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1129,6 +1129,7 @@ struct intel_crtc_state {
 	/* m2_n2 for eDP downclock */
 	struct intel_link_m_n dp_m2_n2;
 	bool has_drrs;
+	bool seamless_m_n;
 
 	/* PSR is supported but might not be enabled due the lack of enabled planes */
 	bool has_psr;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cf7e4e105891..90fa8eda6911 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1311,21 +1311,45 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 	}
 }
 
+static bool has_seamless_m_n(struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
+	/*
+	 * Seamless M/N reprogramming only implemented
+	 * for BDW+ double buffered M/N registers so far.
+	 */
+	return HAS_DOUBLE_BUFFERED_M_N(i915) &&
+		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
+}
+
+static int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
+			       const struct drm_connector_state *conn_state)
+{
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	/* FIXME a bit of a mess wrt clock vs. crtc_clock */
+	if (has_seamless_m_n(connector))
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
@@ -1625,7 +1649,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	 * Optimize for slow and wide for everything, because there are some
 	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
 	 */
-	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
+	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, conn_state, &limits);
 
 	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
 		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
@@ -1913,6 +1937,9 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
 
+	if (has_seamless_m_n(connector))
+		pipe_config->seamless_m_n = true;
+
 	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
 		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
 			intel_zero_m_n(&pipe_config->dp_m2_n2);
-- 
2.35.1

