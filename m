Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE245B0015
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E7E10E4AF;
	Wed,  7 Sep 2022 09:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F1110E4D3
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541908; x=1694077908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mHmvgj1YbaE+XqCWK1Ut/ROCOoNp9w0j6kA6A6xmSwM=;
 b=n0g6i0mKu17e6j8aGhcfI78BQM1B6Pz1Z+xdSQjZS1X1cHZmWEa/ZKoa
 n9dMNc23y4/7Vh434wwvj9Bk5hfFlt3u6Pyf0ZGWf3Wy3t43aFhD1ztk8
 5iPcqEoBlH7axp6soSOjfsQVTrLYWKp4BRkAkzUKSJKKLYnoTJNPo8J+9
 B8lY7XJBrzdrCmtVLoogdssb7zTAcd9rJOKkl1tSJqm1OhqXF0MdxlFUq
 8BdY7cvwJNPspfWzN/XNRCxd0ZEucBoY2NfRLZ6hP2jSLNdFtifmF8BBc
 t7a5DIUHJE6jpmyyGjVDRWjDzJVPc1V4G2BXQwF5wEfio0UNn0WC19rjM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="283820629"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="283820629"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="718052814"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 07 Sep 2022 02:11:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:55 +0300
Message-Id: <20220907091057.11572-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 15/17] drm/i915: Allow M/N change during
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

Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 13 +++++--
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 37 ++++++++++++++++---
 3 files changed, 43 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0586aa5f7bd1..88d3b535b24a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5729,7 +5729,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
 	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
-		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
+		if (!fastset || !pipe_config->seamless_m_n)
+			PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
 	} else {
 		PIPE_CONF_CHECK_M_N(dp_m_n);
 		PIPE_CONF_CHECK_M_N(dp_m2_n2);
@@ -5861,8 +5862,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -7001,6 +7004,10 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
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
index 0da9b208d56e..688c18f638e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1130,6 +1130,7 @@ struct intel_crtc_state {
 	/* m2_n2 for eDP downclock */
 	struct intel_link_m_n dp_m2_n2;
 	bool has_drrs;
+	bool seamless_m_n;
 
 	/* PSR is supported but might not be enabled due the lack of enabled planes */
 	bool has_psr;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dd6fadf57f30..2d30904f2c52 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1297,21 +1297,45 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
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
@@ -1621,7 +1645,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	 * Optimize for slow and wide for everything, because there are some
 	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
 	 */
-	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
+	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, conn_state, &limits);
 
 	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
 		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
@@ -1909,6 +1933,9 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
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

