Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F49975356
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029C910EA22;
	Wed, 11 Sep 2024 13:12:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gVbVNhbb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E004210EA22
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060358; x=1757596358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ov7BoF4i6wlelqJLH6bW0dNz073ZTGald2KTCB6DSa0=;
 b=gVbVNhbbhMreYxLq35cuVIWNjt2cce21zcZO1xK5lAyjCfwAZmEWNnLh
 glW4vKTxGIA0UgN0rLxl6wzWM0Pg/tDnV8bl4KPESQh2l3s7MPYP07ZLx
 Q6fJDBvr3vUmP12zbm3nfpmIDhKJk/DcLPZSR40Q+MyKNeHbfe9oLwpKq
 iw56L5CQuP30aUrWfxFu+6jnUyE9OMpHPtRrVJH+gvvE+jtwm8PD1ZZ6g
 q6WIFfbHLAepkmVzT/N8vZFi7eoDA1V+NwdiEpnhJ9mi0iRxolH4Gz0OB
 Njo9elN4Khluia0VDNHuerDrkQ+lbykHvbPADvgblVe8byN3tDjg61rKy Q==;
X-CSE-ConnectionGUID: xi3Mg5j6SiCTqFl7UKX6Dg==
X-CSE-MsgGUID: e0XyRkoDRuGVKb8Mc3jbXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244428"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244428"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:37 -0700
X-CSE-ConnectionGUID: hGL07YUyS92g74OAy0U8gw==
X-CSE-MsgGUID: 3SBGRpJuR+2O1zg4WD/MEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67381110"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 17/19] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Date: Wed, 11 Sep 2024 18:43:47 +0530
Message-ID: <20240911131349.933814-18-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Implement required changes for mode validation and compute config,
to support Ultrajoiner.
This also includes required DSC changes and checks.

v2:
-Use enum for Ultrajoiner pipes.
-Drop changes for HDMI.
-Separate out DSC changes into another patch.

v3:
-Fix check in can_ultrajoiner. (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 -
 drivers/gpu/drm/i915/display/intel_display.h |  3 +
 drivers/gpu/drm/i915/display/intel_dp.c      | 59 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  8 ++-
 4 files changed, 58 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 27622d51a473..bab336d8702f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3745,7 +3745,6 @@ static u8 fixup_ultrajoiner_secondary_pipes(u8 ultrajoiner_primary_pipes,
 	return ultrajoiner_secondary_pipes | ultrajoiner_primary_pipes << 3;
 }
 
-static
 bool intel_display_can_use_ultrajoiner(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 72dc495c645c..6aa3aac8c927 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -52,6 +52,7 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 struct intel_initial_plane_config;
@@ -599,4 +600,6 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
 int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state);
 
+bool intel_display_can_use_ultrajoiner(struct intel_display *display);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4b05a717cce3..9160614d74c6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -862,24 +862,34 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       int num_joined_pipes)
 {
 	u32 max_bpp_small_joiner_ram;
+	u32 max_bpp_joiner;
 
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
+	max_bpp_joiner = max_bpp_small_joiner_ram;
 
-	if (num_joined_pipes == 2) {
-		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
+	/* if ultra joiner is enabled, we have 2 bigjoiners enabled */
+	if (num_joined_pipes == 2 ||
+	    num_joined_pipes == 4) {
+		int joiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
 		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
 		int ppc = 2;
-		u32 max_bpp_bigjoiner =
-			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
+		max_bpp_joiner =
+			i915->display.cdclk.max_cdclk_freq * ppc * joiner_interface_bits /
 			intel_dp_mode_to_fec_clock(mode_clock);
 
 		max_bpp_small_joiner_ram *= 2;
 
-		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
 	}
+	if (num_joined_pipes == 4) {
+		/* TODO: Check for ultrajoiner ram constraints */
 
-	return max_bpp_small_joiner_ram;
+		/* both get multiplied by 2, because ram bits/ppc now doubled */
+		max_bpp_small_joiner_ram *= 2;
+		max_bpp_joiner *= 2;
+	}
+
+	return min(max_bpp_small_joiner_ram, max_bpp_joiner);
 }
 
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
@@ -985,6 +995,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_pipes == 2 && test_slice_count < 4)
 			continue;
 
+		/* ultrajoiner needs 2 bigjoiners to be enabled */
+		if (num_pipes == 4 && test_slice_count < 8)
+			continue;
+
 		if (min_slice_count <= test_slice_count)
 			return test_slice_count;
 	}
@@ -1261,6 +1275,19 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	return MODE_OK;
 }
 
+static
+bool intel_dp_needs_ultrajoiner(struct intel_dp *dp, int clock)
+{
+	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
+
+	if (!intel_display_can_use_ultrajoiner(display))
+		return false;
+
+	return clock > (i915->display.cdclk.max_dotclk_freq * 2);
+}
+
 static
 bool intel_dp_needs_bigjoiner(struct intel_dp *intel_dp,
 			      struct intel_connector *connector,
@@ -1275,6 +1302,8 @@ int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
 				  struct intel_connector *connector,
 				  int hdisplay, int clock)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+
 	switch (connector->force_joined_pipes) {
 	case 1:
 		fallthrough;
@@ -1284,8 +1313,11 @@ int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
 		MISSING_CASE(connector->force_joined_pipes);
 		fallthrough;
 	case 0:
-		if (intel_dp_has_joiner(intel_dp) &&
-		    intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
+		if (intel_display_can_use_ultrajoiner(display) &&
+		    intel_dp_needs_ultrajoiner(intel_dp, clock))
+			return 4;
+		else if (intel_dp_has_joiner(intel_dp) &&
+			 intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
 			return 2;
 	}
 
@@ -1353,6 +1385,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	if (num_joined_pipes == 2)
 		max_dotclk *= 2;
+	else if (num_joined_pipes == 4)
+		max_dotclk *= 4;
 
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
@@ -2527,8 +2561,10 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
 	 * Pipe joiner needs compression up to display 12 due to bandwidth
 	 * limitation. DG2 onwards pipe joiner can be enabled without
 	 * compression.
+	 * Ultrajoiner always needs compression.
 	 */
-	return DISPLAY_VER(i915) < 13 && (num_joined_pipes == 2);
+	return (DISPLAY_VER(i915) < 13 && (num_joined_pipes == 2)) ||
+		num_joined_pipes == 4;
 }
 
 static int
@@ -2556,7 +2592,10 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, connector,
 							 adjusted_mode->crtc_hdisplay,
 							 adjusted_mode->crtc_clock);
-	if (num_joined_pipes == 2)
+
+	if (num_joined_pipes == 4)
+		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
+	else if (num_joined_pipes == 2)
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, num_joined_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1c87f81568c8..cfa30d5e26ca 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -583,7 +583,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, connector,
 							 adjusted_mode->crtc_hdisplay,
 							 adjusted_mode->crtc_clock);
-	if (num_joined_pipes == 2)
+	if (num_joined_pipes == 4)
+		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
+	else if (num_joined_pipes == 2)
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -1476,7 +1478,9 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 */
 	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, intel_connector,
 							 mode->hdisplay, target_clock);
-	if (num_joined_pipes == 2)
+	if (num_joined_pipes == 4)
+		max_dotclk *= 4;
+	else if (num_joined_pipes == 2)
 		max_dotclk *= 2;
 
 	ret = drm_modeset_lock(&mgr->base.lock, ctx);
-- 
2.45.2

