Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6180F64042C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:10:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18B510E6CD;
	Fri,  2 Dec 2022 10:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D53D10E6C7
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 10:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669975792; x=1701511792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L40MzQIgS1iqnWmQtZzPh9lECtyGpvZMQLKofDlzeGc=;
 b=FesGfjpiUoXQ9PwhGN7XbmlcToyXwNNv4Uv7snsz777eg1+DdCcznvJp
 5pH4c+htZkRqJW2T7/B9AbxX8jOp1d/eOeK2Y/3Y/SybVJwb/YUaXxyqk
 Rsak93vAdI78PTo342IsqS8zqLBx23nHSL9Ky+8CKwy69JyCUJ5xcNaXD
 Mu3erzETSA1u1f0iMtR77nDZaFbE46FR9UNZnc+kLhZN+uEJ0AmejwLud
 z0BGl6loEuoYVcnWdSOzk5Fp92Fj3crjXFIfgkE6d87kFwH/b6Z68XOUr
 3q9hlRZZVxql13nmZIJiVkZc/W4p+laCmN6i0wosXeXBssjLhpgwazRVY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="313564605"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="313564605"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="647115802"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="647115802"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:50 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:40:24 +0530
Message-Id: <20221202101028.803630-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
References: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 10/14] drm/i915/display: Add helper function
 to check if sink_format is 420
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

Add an inline helper function to check if the sink_format is set to
YCBCR420 format.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dp.c            | 4 ++--
 drivers/gpu/drm/i915/display/intel_hdmi.c          | 6 +++---
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 212f4aa8fba1..883cab869e1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2064,4 +2064,10 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
 }
 
+static inline bool
+intel_crtc_has_420_sink_format(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420;
+}
+
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 920be0fd39c1..8c5480cd2f65 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2134,7 +2134,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits, with_dsc);
 	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		if (intel_crtc_has_420_sink_format(crtc_state) ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
@@ -2846,7 +2846,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
 			    str_enable_disable(intel_dp->has_hdmi_sink));
 
-	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_crtc_has_420_sink_format(crtc_state)) {
 		switch (crtc_state->output_format) {
 		case INTEL_OUTPUT_FORMAT_YCBCR420:
 			/*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 3f9450ed5241..3de2416f70ce 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2067,7 +2067,7 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
 		return false;
 
 	/* Display Wa_1405510057:icl,ehl */
-	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+	if (intel_crtc_has_420_sink_format(crtc_state) &&
 	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
 	    (adjusted_mode->crtc_hblank_end -
 	     adjusted_mode->crtc_hblank_start) % 8 == 2)
@@ -2229,7 +2229,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 	crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
 	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		if (intel_crtc_has_420_sink_format(crtc_state) ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
@@ -2289,7 +2289,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 	}
 
-	if (pipe_config->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_crtc_has_420_sink_format(pipe_config)) {
 		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
-- 
2.25.1

