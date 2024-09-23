Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7618497F027
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0EAE10E453;
	Mon, 23 Sep 2024 18:11:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VixQ52Hi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546E610E44F;
 Mon, 23 Sep 2024 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115113; x=1758651113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D+KrlBdPcf0w8hO8ta84Fcr1M2PtAWRtAyWVgHrcsWc=;
 b=VixQ52Hipp+shLaxhcJ/mVB8yCxzmh1fx59UculDTzSDnPf1mmEvCVWD
 u6vY4WU2yWCdIZTH9Laf8g0hrv7gg/s50IVPKZH9vNWMscxBEXeVpZvms
 TbzRMpVg581c1YQyTzUuCdiIIkaR+g734lqtjMpa8g76IU8agZB3Keilj
 dwnKSwWpV0yeKU4g9mTegXB7RQsdud+RWZKjzYLuhi7VWP3mkE39x5pOo
 DFvTwlYVcDFsm/u2NvYDqNCy4nZqF358pA5GtsQSB7+kZP85Zj75I9l32
 A0YIFFpbtkxchpuAoZQI1dzp9V9/qs5a/ffi0K0+QLdZtcVECenPMaAxf w==;
X-CSE-ConnectionGUID: HuOClH6sRF6MROp91F5s6w==
X-CSE-MsgGUID: gVTu3aPWThWlJLCBqS+UCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866208"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866208"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:53 -0700
X-CSE-ConnectionGUID: Lvd2jZknTLiWH4PaAJNiBA==
X-CSE-MsgGUID: eydOSj3rSISEbprzzwfQww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734264"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 04/16] drm/i915/dp: Add helper to compute num pipes required
Date: Mon, 23 Sep 2024 23:43:24 +0530
Message-ID: <20240923181336.3303940-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
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

Add a helper to compute the number of pipes required.
This will depend on whether the joiner is required or is forced through
the debugfs. If no joiner is required the helper returns 1.

v2:
-Return 1 if no joiner is required. (Ville)
-Change the suffix from joined_pipes to num_pipes. (Ville)
-Use number of pipes while calculating joined_pipe masks and
max_dotclk. (Ville)

v3: Simplify and rename the helper to intel_dp_num_joined_pipes(). Ville

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 46 ++++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h     |  6 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 ++++-------
 3 files changed, 39 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1a64758d30d..e4b6594d870e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1264,17 +1264,30 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	return MODE_OK;
 }
 
-bool intel_dp_need_joiner(struct intel_dp *intel_dp,
-			  struct intel_connector *connector,
-			  int hdisplay, int clock)
+static
+bool intel_dp_needs_bigjoiner(struct intel_dp *intel_dp,
+			      struct intel_connector *connector,
+			      int hdisplay, int clock)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
-	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
-	       connector->force_joined_pipes == 2;
+	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120;
+}
+
+int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
+			      struct intel_connector *connector,
+			      int hdisplay, int clock)
+{
+	if (connector->force_joined_pipes)
+		return connector->force_joined_pipes;
+
+	if (intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
+		return 2;
+
+	return 1;
 }
 
 bool intel_dp_has_dsc(const struct intel_connector *connector)
@@ -1311,7 +1324,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
-	bool dsc = false, joiner = false;
+	bool dsc = false;
 	int num_joined_pipes;
 
 	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
@@ -1333,13 +1346,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	if (intel_dp_need_joiner(intel_dp, connector,
-				 mode->hdisplay, target_clock)) {
-		joiner = true;
-		max_dotclk *= 2;
-	}
-
-	num_joined_pipes = joiner ? 2 : 1;
+	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
+						     mode->hdisplay, target_clock);
+	max_dotclk *= num_joined_pipes;
 
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
@@ -2507,12 +2516,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
 		return -EINVAL;
 
-	if (intel_dp_need_joiner(intel_dp, connector,
-				 adjusted_mode->crtc_hdisplay,
-				 adjusted_mode->crtc_clock))
-		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
-
-	num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
+	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
+						      adjusted_mode->crtc_hdisplay,
+						      adjusted_mode->crtc_clock);
+	if (num_joined_pipes > 1)
+		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
 
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, num_joined_pipes);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3b869429e575..39a031996c64 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -151,9 +151,9 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				int num_joined_pipes);
-bool intel_dp_need_joiner(struct intel_dp *intel_dp,
-			  struct intel_connector *connector,
-			  int hdisplay, int clock);
+int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
+			       struct intel_connector *connector,
+			       int hdisplay, int clock);
 
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 732d7543ad06..9250e1b2f19c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -581,12 +581,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (intel_dp_need_joiner(intel_dp, connector,
-				 adjusted_mode->crtc_hdisplay,
-				 adjusted_mode->crtc_clock))
-		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
-
-	num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
+	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
+						      adjusted_mode->crtc_hdisplay,
+						      adjusted_mode->crtc_clock);
+	if (num_joined_pipes > 1)
+		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
 
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -1428,7 +1427,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int ret;
-	bool dsc = false, joiner = false;
+	bool dsc = false;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
@@ -1472,13 +1471,9 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 *   corresponding link capabilities of the sink) in case the
 	 *   stream is uncompressed for it by the last branch device.
 	 */
-	if (intel_dp_need_joiner(intel_dp, intel_connector,
-				 mode->hdisplay, target_clock)) {
-		joiner = true;
-		max_dotclk *= 2;
-	}
-
-	num_joined_pipes = joiner ? 2 : 1;
+	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, intel_connector,
+						      mode->hdisplay, target_clock);
+	max_dotclk *= num_joined_pipes;
 
 	ret = drm_modeset_lock(&mgr->base.lock, ctx);
 	if (ret)
-- 
2.45.2

