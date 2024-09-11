Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD8597534A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C43DC10EA07;
	Wed, 11 Sep 2024 13:12:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eeSAJyUN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DFE410EA13
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060334; x=1757596334;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=huHAz6U/7/iQCrpoByk/K98U9pdMYfhb/kLw7O7B5vo=;
 b=eeSAJyUNStrD1JTlE9biI4hUek3LZrGLJBsOwNIL58Usv+59Bj0VuVJx
 DLw1Axn5PYexgKIji4RpXGelQJDQuheF8JLmWbdboJDgTl9hlvWMJDihc
 iz1FQN6uWwp8x4yGvAd5pZ4oykhYtgUhJbRPdOYw0Nj92/SxpJD3YisMV
 TR31jrYEFf/JlOrjpls+S5fDbjJ9yxbBszi723gVqorovvwqSfUxPNgOu
 DsHFbbcKQSw5w3yyS9bC5+7gIF7cmkEbPoTTx2UbG4AI0aIKbvtzXiZK1
 TmALDo2EO0ncT5GpGJ4aqTe+8YRkGqg6+HpBedtA5qPqohTBYSSEwLETD w==;
X-CSE-ConnectionGUID: A9QDyG13SmGvdFwlj4uUPw==
X-CSE-MsgGUID: apjMuReGTWWOuRNDWkuzrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244345"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244345"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:14 -0700
X-CSE-ConnectionGUID: lQdWnLUIRQWWlrw4smVVBA==
X-CSE-MsgGUID: 976bI/pORz+6efo06pj6XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67380873"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 04/19] drm/i915/dp: Add helper to compute num pipes joined
Date: Wed, 11 Sep 2024 18:43:34 +0530
Message-ID: <20240911131349.933814-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

Add a helper to compute the number of pipes to be joined.
The num of pipes joined will depend on whether the joiner is required or
is forced through the debugfs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 46 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h     |  6 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 14 ++++---
 3 files changed, 46 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5c30d4488141..333624fcebd7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1261,17 +1261,33 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
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
 
-	if (!intel_dp_has_joiner(intel_dp))
-		return false;
+	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120;
+}
 
-	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
-	       connector->force_joined_pipes == 2;
+int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
+				  struct intel_connector *connector,
+				  int hdisplay, int clock)
+{
+	switch (connector->force_joined_pipes) {
+	case 2:
+		return connector->force_joined_pipes;
+	default:
+		MISSING_CASE(connector->force_joined_pipes);
+		fallthrough;
+	case 0:
+		if (intel_dp_has_joiner(intel_dp) &&
+		    intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
+			return 2;
+	}
+
+	return 0;
 }
 
 bool intel_dp_has_dsc(const struct intel_connector *connector)
@@ -1309,6 +1325,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
 	bool dsc = false, joiner = false;
+	int num_joined_pipes;
 
 	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
 	if (status != MODE_OK)
@@ -1329,11 +1346,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	if (intel_dp_need_joiner(intel_dp, connector,
-				 mode->hdisplay, target_clock)) {
+	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, connector,
+							 mode->hdisplay, target_clock);
+
+	if (num_joined_pipes == 2) {
 		joiner = true;
 		max_dotclk *= 2;
 	}
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
@@ -2523,15 +2543,17 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	int num_joined_pipes;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
 	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
 		return -EINVAL;
 
-	if (intel_dp_need_joiner(intel_dp, connector,
-				 adjusted_mode->crtc_hdisplay,
-				 adjusted_mode->crtc_clock))
+	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, connector,
+							 adjusted_mode->crtc_hdisplay,
+							 adjusted_mode->crtc_clock);
+	if (num_joined_pipes == 2)
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 1b9aaddd8c35..bc9a82d82df2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -153,9 +153,9 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				bool bigjoiner);
-bool intel_dp_need_joiner(struct intel_dp *intel_dp,
-			  struct intel_connector *connector,
-			  int hdisplay, int clock);
+int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
+				  struct intel_connector *connector,
+				  int hdisplay, int clock);
 
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 15541932b809..383b3e38df52 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -568,6 +568,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	int num_joined_pipes;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
@@ -577,9 +578,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (intel_dp_need_joiner(intel_dp, connector,
-				 adjusted_mode->crtc_hdisplay,
-				 adjusted_mode->crtc_clock))
+	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, connector,
+							 adjusted_mode->crtc_hdisplay,
+							 adjusted_mode->crtc_clock);
+	if (num_joined_pipes == 2)
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -1426,6 +1428,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
+	int num_joined_pipes;
 
 	if (drm_connector_is_unregistered(connector)) {
 		*status = MODE_ERROR;
@@ -1465,8 +1468,9 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 *   corresponding link capabilities of the sink) in case the
 	 *   stream is uncompressed for it by the last branch device.
 	 */
-	if (intel_dp_need_joiner(intel_dp, intel_connector,
-				 mode->hdisplay, target_clock)) {
+	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, intel_connector,
+							 mode->hdisplay, target_clock);
+	if (num_joined_pipes == 2) {
 		joiner = true;
 		max_dotclk *= 2;
 	}
-- 
2.45.2

