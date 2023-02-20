Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E29A69CAFA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 13:27:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7AFA10E687;
	Mon, 20 Feb 2023 12:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1429D10E67F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 12:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676896017; x=1708432017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lkrjLQF3LaGY6LE35iO88qw992OsT1NYDX86va4aTs8=;
 b=OwEM4OGgjCADuwpGDrOYzoh5p63B477hCGVuNtr1RY7vJlXSiUnst5yP
 6ammO1zcDZ9Lav6wY/5I7mgxI83DYQTNR6qhl7uTnZesaSc8iKWLFzwtB
 SDfP7XGL0CLcuZB/V6KyStUsbOu5DAj/ELzpdOvIEYuNJ5S8sGZdfaa01
 EVLII6FkezZbDzFp5kgdTYZJa1TSCM6Zne1fEzC5QIL+8+W/W9H3y48+r
 EGYB6b648Hwn/EpXV+KFbzSHLSSSoA+I1ofPOd6YhJy3vgtUJoyROIkEN
 XXAClx++6A1Yn8KV1XGYlOJDFNfm7tLYz9kBdeu7zeydnjsudlKohQUV5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397073445"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397073445"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:26:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="621142100"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="621142100"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:26:55 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 17:53:55 +0530
Message-Id: <20230220122401.3495507-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
References: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 08/14] drm/i915/dp: Consider output_format
 while computing dsc bpp for mode_valid
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

During modevalid step, the pipe bpp is computed assuming RGB output
format. When checking with DSC, consider the output_format and compute
the input bpp for DSC appropriately.

v2: For DP-MST we currently use RGB output format only, so continue
using RGB while computing dsc_bpp for MST case.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 28 ++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
 3 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f39e3dbe50f5..dfd7af97ea55 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1148,11 +1148,21 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	if (HAS_DSC(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
+		int pipe_bpp;
+		enum intel_output_format output_format, sink_format;
+		const struct drm_display_info *info = &connector->base.display_info;
+
+		if (drm_mode_is_420_only(info, mode))
+			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		else
+			sink_format = INTEL_OUTPUT_FORMAT_RGB;
+
+		output_format = intel_dp_output_format(connector, mode, sink_format, true);
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
-		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
+		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, output_format, U8_MAX);
 
 		/*
 		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
@@ -1492,12 +1502,15 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
+int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
+			     enum intel_output_format output_format,
+			     u8 max_req_bpc)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {0};
 	u8 dsc_max_bpc;
+	int pipe_bpp = 0;
 
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
 	if (DISPLAY_VER(i915) >= 12)
@@ -1508,11 +1521,13 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
 						       dsc_bpc);
 	for (i = 0; i < num_bpc; i++) {
-		if (dsc_max_bpc >= dsc_bpc[i])
-			return dsc_bpc[i] * 3;
+		if (dsc_max_bpc >= dsc_bpc[i]) {
+			pipe_bpp = dsc_bpc[i] * 3;
+			break;
+		}
 	}
 
-	return 0;
+	return intel_dp_output_bpp(output_format, pipe_bpp);
 }
 
 static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
@@ -1626,7 +1641,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		return -EINVAL;
 
 	if (compute_pipe_bpp)
-		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, pipe_config->output_format,
+						    conn_state->max_requested_bpc);
 	else
 		pipe_bpp = pipe_config->pipe_bpp;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ef39e4f7a329..2f4136e43f38 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -102,7 +102,9 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 		       struct intel_crtc_state *crtc_state,
 		       unsigned int type);
 bool intel_digital_port_connected(struct intel_encoder *encoder);
-int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
+int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
+			     enum intel_output_format output_format,
+			     u8 dsc_max_bpc);
 u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				u32 link_clock, u32 lane_count,
 				u32 mode_clock, u32 mode_hdisplay,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 054b179d0b6a..d005f1aad337 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -910,7 +910,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
-		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
+		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, INTEL_OUTPUT_FORMAT_RGB, U8_MAX);
 
 		if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
 			dsc_max_output_bpp =
-- 
2.25.1

