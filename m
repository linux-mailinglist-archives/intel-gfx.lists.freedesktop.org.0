Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 677EC986D73
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:24:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FCE710EAB1;
	Thu, 26 Sep 2024 07:24:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g7d5+ArV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41EC910EAB5;
 Thu, 26 Sep 2024 07:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727335491; x=1758871491;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a7AFqXjv3rHUUw9arYKdtoZpW8KDpbY4pYYKL5me+c8=;
 b=g7d5+ArVZO8jJzGf5Q4qZhSWtuai5Kmbno71OC6Tl+q2FEm0sQz13Mfi
 nfEAXRhUYMXbwYMMyVoc/xUg6qBK74ZrGzIu8hDJlvIwyHtnqpfmsHSD1
 1TXFdDAOgk9Myjp3/XTs3b8rWMxcFHnRW0FBrbJWQc9DVIFC//LrwRNjk
 XnTD+BiNqZxnMPlw6FvLZNKzY4qOA3ieg4cNQlueg1r0CZRzWQV2EYrLT
 BCUyJr2fB7wmrT6/7FJWOPXWNZAloAoRfC2O1ihXb2rRrCXvf3/OMvWJE
 Pogndlnf5ruW8VZp1NShtCtMCSy01HWsg4DmsMYQR82LaYcQVzbmLzWaA w==;
X-CSE-ConnectionGUID: Y06lP99YTJOgKY105+2PCw==
X-CSE-MsgGUID: cf/nbvCaSRujTKIXA0MVRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51829446"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="51829446"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:51 -0700
X-CSE-ConnectionGUID: b2Qu40RcR+CjSd6QPmzY3w==
X-CSE-MsgGUID: rET67egRS+u1Fk4mKZNtHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72334417"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 04/15] drm/i915/dp: Add helper to compute num pipes required
Date: Thu, 26 Sep 2024 12:56:27 +0530
Message-ID: <20240926072638.3689367-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
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
v4: Remove redundant 'fallthrough' statement. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 46 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h       |  6 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 23 ++++------
 4 files changed, 40 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 29590cc4429c..14bfda9f2d5c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1343,6 +1343,7 @@ static ssize_t i915_joiner_write(struct file *file,
 
 	switch (force_joined_pipes) {
 	case 0:
+	case 1:
 	case 2:
 		connector->force_joined_pipes = force_joined_pipes;
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1a64758d30d..f2a2541c1091 100644
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
+						     adjusted_mode->crtc_hdisplay,
+						     adjusted_mode->crtc_clock);
+	if (num_joined_pipes > 1)
+		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
 
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, num_joined_pipes);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3b869429e575..53d1217800ef 100644
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
+			      struct intel_connector *connector,
+			      int hdisplay, int clock);
 
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 732d7543ad06..4765bda154c1 100644
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
+						     adjusted_mode->crtc_hdisplay,
+						     adjusted_mode->crtc_clock);
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
+						     mode->hdisplay, target_clock);
+	max_dotclk *= num_joined_pipes;
 
 	ret = drm_modeset_lock(&mgr->base.lock, ctx);
 	if (ret)
-- 
2.45.2

