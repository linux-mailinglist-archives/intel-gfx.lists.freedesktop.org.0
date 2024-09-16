Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0D6979F3E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 12:26:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C7510E33F;
	Mon, 16 Sep 2024 10:26:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VAed4oel";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FCF610E333
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726482413; x=1758018413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XBT1nvWe87ugRyOvPOyztIA9hKsOmWyhQJeTNBiIoAQ=;
 b=VAed4oelxVqqa1f5CwObRdgXVrGWxEc+guRzfaK+tY7kHt0dbgQiJaad
 VbzDh2cNparcgO4kHGSmKEAhkUcJrob3/W+N6SNdiq9FI3ED12Dqmkkyx
 jn+CKYhBKXjGlRIWOAfFuaIqBOkskwlaGwaQb5TrZZxEPqvgth8xQagGH
 sWuoh9TfpcWN7ITyUWGLTRsHIVRwERQjy9M9UTfEOnH9CEBwHN49CJR2E
 uzfJnyPAsgbokFgm4EVVq3zyjqOo9kkcBpiBAbvJqEJNj75TXGCt+d5Ru
 qbEA3NRJ+yCcA2yiaT45J1M46t22I/+WxpjpWf4GLR9+CLH+ZAWJOYikH Q==;
X-CSE-ConnectionGUID: ddB4I9rrRH6bXfzfp+SU1Q==
X-CSE-MsgGUID: glkAsx88Szm7QErvwlTPNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25428503"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="25428503"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:26:53 -0700
X-CSE-ConnectionGUID: K94OMhzlRMmNeF29ZriKlw==
X-CSE-MsgGUID: Ip4Illf9SES9cmBKRV1+mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="99678256"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:26:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/4] drm/i915/display: Use joined pipes in
 intel_dp_joiner_needs_dsc
Date: Mon, 16 Sep 2024 15:58:34 +0530
Message-ID: <20240916102836.2149012-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
References: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

In preparation of ultrajoiner, use number of joined pipes in the
intel_dp_joiner_needs_dsc helper, instead of joiner flag.

v2: Use intel_crtc_num_joined_pipes. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c      | 16 ++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h      |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 10 ++++++++--
 5 files changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 67962cb4dbfa..653e4ffd4b9f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -278,7 +278,7 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == joiner_primary_pipe(crtc_state);
 }
 
-static int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state)
+int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state)
 {
 	return hweight8(intel_crtc_joined_pipe_mask(crtc_state));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 7ca26e5cb20e..08d2466f8ef2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -587,5 +587,6 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 })
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
+int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c53eb8e165de..6cd4f126fb91 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1318,6 +1318,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
 	bool dsc = false, joiner = false;
+	int num_joined_pipes;
 
 	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
 	if (status != MODE_OK)
@@ -1343,6 +1344,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		joiner = true;
 		max_dotclk *= 2;
 	}
+
+	num_joined_pipes = joiner ? 2 : 1;
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
@@ -1399,7 +1403,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
+	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc)
 		return MODE_CLOCK_HIGH;
 
 	if (mode_rate > max_rate && !dsc)
@@ -2513,14 +2517,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
 	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
 }
 
-bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
+bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
+			       int num_joined_pipes)
 {
 	/*
 	 * Pipe joiner needs compression up to display 12 due to bandwidth
 	 * limitation. DG2 onwards pipe joiner can be enabled without
 	 * compression.
 	 */
-	return !HAS_UNCOMPRESSED_JOINER(i915) && use_joiner;
+	return !HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2;
 }
 
 static int
@@ -2538,6 +2543,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	int num_joined_pipes;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
@@ -2549,7 +2555,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 				 adjusted_mode->crtc_clock))
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
-	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
+	num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
+
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 1b9aaddd8c35..3aef57dd463a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -123,7 +123,8 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 				int max_dprx_rate, int max_dprx_lanes);
-bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner);
+bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
+			       int num_joined_pipes);
 bool intel_dp_has_joiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 15541932b809..8600ac55f766 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -568,6 +568,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	int num_joined_pipes;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
@@ -582,11 +583,13 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 				 adjusted_mode->crtc_clock))
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
+	num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
+
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->joiner_pipes);
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_mst_compute_config_limits(intel_dp,
@@ -1426,6 +1429,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
+	int num_joined_pipes;
 
 	if (drm_connector_is_unregistered(connector)) {
 		*status = MODE_ERROR;
@@ -1471,6 +1475,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		max_dotclk *= 2;
 	}
 
+	num_joined_pipes = joiner ? 2 : 1;
+
 	ret = drm_modeset_lock(&mgr->base.lock, ctx);
 	if (ret)
 		return ret;
@@ -1508,7 +1514,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc) {
+	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
-- 
2.45.2

