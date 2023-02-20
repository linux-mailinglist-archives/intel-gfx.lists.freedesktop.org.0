Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD6869CAE9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 13:26:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC3510E675;
	Mon, 20 Feb 2023 12:26:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3993010E196
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 12:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676896007; x=1708432007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HLqbAgnG7ddsVNXhrVNXyx+IsQ9LGhRvKGbday0RzkE=;
 b=FiFMhxOowoD+Yez5xcoAKFKkeQ3eR3K3VRTobl0mDt1eoQBUqSEBMbEy
 nexc1ftHSD9eGmFmWwH8+l2fV3ze4XFl6qnGe9Zpkw1i0aIqt/I7n3++L
 BEJLmefuMOLjGhqQRF4PC6bUybJwMOv0coOYcfgWbyRMmE6FDgV1eJ4Gc
 2jnrY/ZqaftkNG7ovUE2gM0WMyrs15RYMcFqMczB+gisnGdv+UYgO3a7t
 bFZMp9WS7JSM5f4hpEsqK/xxrbhemKnuusgqrjdixhNX2nA2xKXSv5aaB
 DaRy+LBIueLacGQpgJrQEG4A1bHi+Z/DEVTdXODbaEhAyjB6f5OGkoKTf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397073417"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397073417"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:26:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="621142081"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="621142081"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:26:45 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 17:53:50 +0530
Message-Id: <20230220122401.3495507-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
References: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 03/14] drm/i915/dp: Add Scaler constraint for
 YCbCr420 output
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

For YCbCr420 output, scaler is required for downsampling.
Scaler can be used only when source size smaller than max_src_w and
max_src_h as defined by for the platform.
So go for native YCbCr420 only if there are no scaler constraints.

v2: Corrected max-width based on Display Version.

v3: Updated max-width as per latest Bspec change.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 41 ++++++++++++++++++++++---
 1 file changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 81fbef30c469..f99bf52171fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -804,11 +804,36 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static bool
+ycbcr420_scaler_constraints(struct drm_i915_private *i915,
+			    const struct drm_display_mode *mode)
+{
+	int max_src_w, max_src_h;
+
+	if (DISPLAY_VER(i915) < 11) {
+		max_src_w = 4096;
+		max_src_h = 4096;
+	} else if (DISPLAY_VER(i915) < 12) {
+		max_src_w = 5120;
+		max_src_h = 4096;
+	} else if (DISPLAY_VER(i915) < 14) {
+		max_src_w = 5120;
+		max_src_h = 8192;
+	} else {
+		max_src_w = 4096;
+		max_src_h = 8192;
+	}
+
+	return mode->hdisplay > max_src_w || mode->vdisplay > max_src_h;
+}
+
 static enum intel_output_format
 intel_dp_output_format(struct intel_connector *connector,
+		       const struct drm_display_mode *mode,
 		       enum intel_output_format sink_format)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	if (!connector->base.ycbcr_420_allowed ||
 	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
@@ -820,8 +845,15 @@ intel_dp_output_format(struct intel_connector *connector,
 
 	if (intel_dp->dfp.ycbcr_444_to_420)
 		return INTEL_OUTPUT_FORMAT_YCBCR444;
-	else
+
+	/*
+	 * For YCbCr420 output, scaler is required for downsampling
+	 * So go for native YCbCr420 only if there are no scaler constraints.
+	 */
+	if (!ycbcr420_scaler_constraints(i915, mode))
 		return INTEL_OUTPUT_FORMAT_YCBCR420;
+
+	return INTEL_OUTPUT_FORMAT_RGB;
 }
 
 int intel_dp_min_bpp(enum intel_output_format output_format)
@@ -857,7 +889,7 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 	else
 		sink_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	output_format = intel_dp_output_format(connector, sink_format);
+	output_format = intel_dp_output_format(connector, mode, sink_format);
 
 	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
 }
@@ -2053,7 +2085,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
-	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
+	crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
+							   crtc_state->sink_format);
 
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits);
@@ -2063,7 +2096,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 			return ret;
 
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-		crtc_state->output_format = intel_dp_output_format(connector,
+		crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
 								   crtc_state->sink_format);
 		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 						   respect_downstream_limits);
-- 
2.25.1

