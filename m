Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A669D96F4C9
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B71410E192;
	Fri,  6 Sep 2024 12:56:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S9TnsdG6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76EDB10E192
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627393; x=1757163393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ta5EEFhGXpaRwYHnsdWxqTlPs05GzedBTdCpqHwYWNU=;
 b=S9TnsdG6sI67Q0nIOMkhWFA9BtxJyuJXkUPG85Xl6A5PImS1vUpBhgy5
 lr3RjJ6xOoRbN5m2GxSOtq5kmio7kY39uKuprK1V/E00GYC02vDhbP1vZ
 41ihOY2FhrU1+khpv3j3BAmepFUBVqZSEDMaxXrIKTybLM2fDRXexpkNb
 mhLt6xLBvZs5Jv20kfQ519j4D2Ifh8Hh5tQWtZ1Nfd60a9ZHba9TMjM/3
 qtXnQQ801UrH2d1zGAe5rG8H4+lWbDbK6juGHC0lFeQqwyI5x2hOQySgY
 +NOYjEgWT3mIC6bSXw92/hcmyUT5FbI3u4bSgnEtXmf20ke1rc+Vvvg6h Q==;
X-CSE-ConnectionGUID: tGLKlLSxTBeeQv6BRhAXMw==
X-CSE-MsgGUID: iVECgQsMT7uYOnuk9MPsKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257399"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257399"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:32 -0700
X-CSE-ConnectionGUID: o88FPiVzSy+JPVlwt6ER5w==
X-CSE-MsgGUID: eGQXzN8jTrurGXMyZNb0KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691048"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:31 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 02/14] drm/i915/display: Use joined pipes in
 intel_dp_joiner_needs_dsc
Date: Fri,  6 Sep 2024 18:27:55 +0530
Message-ID: <20240906125807.3960642-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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
index b4ec9bf12aa7..82492ee6c2e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -278,7 +278,7 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == joiner_primary_pipe(crtc_state);
 }
 
-static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
+int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
 {
 	return hweight8(crtc_state->joiner_pipes);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b21d9578d5db..3b90c5190d65 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -587,4 +587,6 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
 
+int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 862a460c32b7..f95b62a026b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1309,6 +1309,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
 	bool dsc = false, joiner = false;
+	enum intel_joiner_pipe_count joined_pipes = INTEL_NONE_JOINER_PIPES;
 
 	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
 	if (status != MODE_OK)
@@ -1332,7 +1333,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (intel_dp_need_joiner(intel_dp, connector,
 				 mode->hdisplay, target_clock)) {
 		joiner = true;
-		max_dotclk *= 2;
+		joined_pipes = INTEL_BIG_JOINER_PIPES;
+		max_dotclk *= INTEL_BIG_JOINER_PIPES;
 	}
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
@@ -1390,7 +1392,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
+	if (intel_dp_joiner_needs_dsc(dev_priv, joined_pipes) && !dsc)
 		return MODE_CLOCK_HIGH;
 
 	if (mode_rate > max_rate && !dsc)
@@ -2498,14 +2500,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
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
+	return DISPLAY_VER(i915) < 13 && (joined_pipes == INTEL_BIG_JOINER_PIPES);
 }
 
 static int
@@ -2523,6 +2526,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	enum intel_joiner_pipe_count joined_pipes;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
@@ -2534,7 +2538,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 				 adjusted_mode->crtc_clock))
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
-	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
+	joined_pipes = intel_joiner_num_pipes(pipe_config);
+	if (joined_pipes >= INTEL_INVALID_JOINER_PIPES)
+		drm_warn(&i915->drm, "Invalid joined pipes : %d\n", joined_pipes);
+
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 1b9aaddd8c35..0a14db9bb20f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+enum intel_joiner_pipe_count;
 enum intel_output_format;
 enum pipe;
 enum port;
@@ -123,7 +124,8 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
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
index 15541932b809..d3ff22f53fd5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -568,6 +568,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	enum intel_joiner_pipe_count joined_pipes;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
@@ -586,7 +587,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->joiner_pipes);
+	joined_pipes = intel_joiner_num_pipes(pipe_config);
+	if (joined_pipes >= INTEL_INVALID_JOINER_PIPES)
+		drm_warn(&dev_priv->drm, "Invalid joined pipes : %d\n", joined_pipes);
+
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_mst_compute_config_limits(intel_dp,
@@ -1426,6 +1431,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
+	enum intel_joiner_pipe_count joined_pipes = INTEL_NONE_JOINER_PIPES;
 
 	if (drm_connector_is_unregistered(connector)) {
 		*status = MODE_ERROR;
@@ -1468,7 +1474,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (intel_dp_need_joiner(intel_dp, intel_connector,
 				 mode->hdisplay, target_clock)) {
 		joiner = true;
-		max_dotclk *= 2;
+		joined_pipes = INTEL_BIG_JOINER_PIPES;
+		max_dotclk *= INTEL_BIG_JOINER_PIPES;
 	}
 
 	ret = drm_modeset_lock(&mgr->base.lock, ctx);
@@ -1508,7 +1515,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc) {
+	if (intel_dp_joiner_needs_dsc(dev_priv, joined_pipes) && !dsc) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
-- 
2.45.2

