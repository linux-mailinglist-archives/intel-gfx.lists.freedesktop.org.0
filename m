Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7C69349AB
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DECDC10E5BA;
	Thu, 18 Jul 2024 08:17:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nS1XvmOp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6172410E5A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290627; x=1752826627;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hxTq/onij2A8kzAYXGSOpHjw0S13yWMQyxpf34LCY2g=;
 b=nS1XvmOpeP0Syd8Tbjwcj73Wqx7B9KcxG6IPEtsTfTKYfRJ1sTyEHKUE
 WlwzpS7EVhhHuB//3bDxmNiXbyAsAV8nUQsE4fQHvSntWjthXvm1u91FH
 sU5lJTbChiBJBMPL+19y2HTouJzb3t35ljfYmLHhuW94jozgdwmNWq1AK
 /8gFvDs704r/+H4aGOCYRo2KqDVuYg1LsuK8jj74vI9hn4GDhWxLW7xIx
 59EZ7j7mTKrcfWDtNQzPWje6ZmYcG3NCmQGW04QTleLSyktponnLEsB4m
 eRdgMqtrBg+zkpUfoYNOTZNZoMsKOkdS/Dil0FAfQDAAdStiV5jPZZWMc g==;
X-CSE-ConnectionGUID: 1NtVzK0OTei5Q2ExiPUrxg==
X-CSE-MsgGUID: E5mEpmOsThm8NZsvo8a8lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706018"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706018"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:06 -0700
X-CSE-ConnectionGUID: YnxPYW8WQbCx83lbuxvqAw==
X-CSE-MsgGUID: Hf4gbAcYSJWTT9sdUzKetw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400583"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 02/12] drm/i915/display: Use joined pipes in
 intel_dp_joiner_needs_dsc
Date: Thu, 18 Jul 2024 13:47:53 +0530
Message-ID: <20240718081803.3338564-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
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

In preparation of ultrajoiner, use number of joined pipes in the
intel_dp_joiner_needs_dsc helper, instead of joiner flag.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c      | 18 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h      |  4 +++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 13 ++++++++++---
 5 files changed, 29 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 01a5faa3fea5..eab07a5fa377 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -276,7 +276,7 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == joiner_primary_pipe(crtc_state);
 }
 
-static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
+int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
 {
 	return hweight8(crtc_state->joiner_pipes);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b0cf6ca70952..0aecc3330a53 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -584,4 +584,6 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
 
+int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 30442c9da06b..7d66a969c461 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1202,6 +1202,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
 	bool dsc = false, joiner = false;
+	enum intel_joiner_pipe_count joined_pipes = INTEL_PIPE_JOINER_NONE;
 
 	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
 	if (status != MODE_OK)
@@ -1225,7 +1226,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (intel_dp_need_joiner(intel_dp, connector,
 				 mode->hdisplay, target_clock)) {
 		joiner = true;
-		max_dotclk *= 2;
+		joined_pipes = INTEL_PIPE_JOINER_BIG;
+		max_dotclk *= INTEL_PIPE_JOINER_BIG;
 	}
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
@@ -1283,7 +1285,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
+	if (intel_dp_joiner_needs_dsc(dev_priv, joined_pipes) && !dsc)
 		return MODE_CLOCK_HIGH;
 
 	if (mode_rate > max_rate && !dsc)
@@ -2391,14 +2393,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
 	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
 }
 
-bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
+bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
+			       enum intel_joiner_pipe_count joined_pipes)
 {
 	/*
 	 * Pipe joiner needs compression up to display 12 due to bandwidth
 	 * limitation. DG2 onwards pipe joiner can be enabled without
 	 * compression.
 	 */
-	return DISPLAY_VER(i915) < 13 && use_joiner;
+	return DISPLAY_VER(i915) < 13 && (joined_pipes == INTEL_PIPE_JOINER_BIG);
 }
 
 static int
@@ -2416,6 +2419,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	enum intel_joiner_pipe_count joined_pipes;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
@@ -2427,7 +2431,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 				 adjusted_mode->crtc_clock))
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
-	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
+	joined_pipes = intel_joiner_num_pipes(pipe_config);
+	if (joined_pipes >= INTEL_PIPE_JOINER_INVALID)
+		drm_warn(&i915->drm, "Invalid joined pipes : %d\n", joined_pipes);
+
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 9be539edf817..a8116210c618 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+enum intel_joiner_pipe_count;
 enum intel_output_format;
 enum pipe;
 enum port;
@@ -121,7 +122,8 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 				int max_dprx_rate, int max_dprx_lanes);
-bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner);
+bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
+			       enum intel_joiner_pipe_count joined_pipes);
 bool intel_dp_has_joiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 27ce5c3f5951..e5797ee13667 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -567,6 +567,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	enum intel_joiner_pipe_count joined_pipes;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
@@ -585,7 +586,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->joiner_pipes);
+	joined_pipes = intel_joiner_num_pipes(pipe_config);
+	if (joined_pipes >= INTEL_PIPE_JOINER_INVALID)
+		drm_warn(&dev_priv->drm, "Invalid joined pipes : %d\n", joined_pipes);
+
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_mst_compute_config_limits(intel_dp,
@@ -1392,6 +1397,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
+	enum intel_joiner_pipe_count joined_pipes = INTEL_PIPE_JOINER_NONE;
 
 	if (drm_connector_is_unregistered(connector)) {
 		*status = MODE_ERROR;
@@ -1434,7 +1440,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (intel_dp_need_joiner(intel_dp, intel_connector,
 				 mode->hdisplay, target_clock)) {
 		joiner = true;
-		max_dotclk *= 2;
+		joined_pipes = INTEL_PIPE_JOINER_BIG;
+		max_dotclk *= INTEL_PIPE_JOINER_BIG;
 	}
 
 	ret = drm_modeset_lock(&mgr->base.lock, ctx);
@@ -1474,7 +1481,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc) {
+	if (intel_dp_joiner_needs_dsc(dev_priv, joined_pipes) && !dsc) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
-- 
2.45.2

