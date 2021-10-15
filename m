Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E60C342F3E5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:39:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9386EDA2;
	Fri, 15 Oct 2021 13:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BAC16EDA9
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:39:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="228194549"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="228194549"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:39:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="442524815"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 15 Oct 2021 06:39:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:39:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:06 +0300
Message-Id: <20211015133921.4609-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/20] drm/i915/hdmi: Extract
 intel_hdmi_output_format()
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

Reorganize the HDMI 4:2:0 handling a bit by introducing
intel_hdmi_output_format(). We already have the DP counterpart
and I want to unify the 4:2:0 handling across both a bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 35 ++++++++++++++---------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 18e7ef125827..7e6af959bf83 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2157,34 +2157,43 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
 
+static enum intel_output_format
+intel_hdmi_output_format(struct intel_connector *connector,
+			 bool ycbcr_420_output)
+{
+	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
+		return INTEL_OUTPUT_FORMAT_YCBCR420;
+	else
+		return INTEL_OUTPUT_FORMAT_RGB;
+}
+
 static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 					    struct intel_crtc_state *crtc_state,
 					    const struct drm_connector_state *conn_state)
 {
-	struct drm_connector *connector = conn_state->connector;
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	const struct drm_display_info *info = &connector->base.display_info;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
 	int ret;
-	bool ycbcr_420_only;
 
-	ycbcr_420_only = drm_mode_is_420_only(&connector->display_info, adjusted_mode);
-	if (connector->ycbcr_420_allowed && ycbcr_420_only) {
-		crtc_state->output_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-	} else {
-		if (!connector->ycbcr_420_allowed && ycbcr_420_only)
-			drm_dbg_kms(&i915->drm,
-				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
+	crtc_state->output_format = intel_hdmi_output_format(connector, ycbcr_420_only);
+
+	if (ycbcr_420_only && !intel_hdmi_is_ycbcr420(crtc_state)) {
+		drm_dbg_kms(&i915->drm,
+			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
 		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
 	ret = intel_hdmi_compute_clock(encoder, crtc_state);
 	if (ret) {
 		if (intel_hdmi_is_ycbcr420(crtc_state) ||
-		    !connector->ycbcr_420_allowed ||
-		    !drm_mode_is_420_also(&connector->display_info, adjusted_mode))
+		    !connector->base.ycbcr_420_allowed ||
+		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
-		crtc_state->output_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		crtc_state->output_format = intel_hdmi_output_format(connector, true);
 		ret = intel_hdmi_compute_clock(encoder, crtc_state);
 	}
 
-- 
2.32.0

