Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E4D610D93
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 11:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B5310E7D0;
	Fri, 28 Oct 2022 09:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD39E10E7BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 09:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666950237; x=1698486237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OMlqmMAcALxtlv9q/yj5qP5y7B5epTJbeN7U4w5Poxo=;
 b=e2nl1Ylfvy//Bmlt743iqgabDV7RQICAEhCgdutaYZh+lCij8wfT2HFG
 cHv5m7htrk1bLIeo6A85MFq4XbNZJWfXXkqm/U0pp1S+kOIZhIE70hIlM
 NSr+eqTQ4l1KnVaNrz2x2OXD9lzPuV6gVCD+Vq1AIjzLUIJczqbdQf2zE
 B+3+kZWWu4JmatKDHeZI9vBVPqgINCeQmeYPpRJ2fE60SvBzRRQMbjP3k
 UtF6TO6IwsMiYdKfQ21aUhvJQzjFugJYHNi0b38gDEybFfIifaxq3RfiJ
 lzw1FK5cisRGDwUrU6FxgdZYZSbfBXbel37+obs6dXmej8UX613p+zPOG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="335094674"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="335094674"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:43:57 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="758026600"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="758026600"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:43:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 15:14:07 +0530
Message-Id: <20221028094411.3673476-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
References: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 5/9] drm/i915/display: Add helper function to
 check if sink_format is 420
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
index ae070420309d..33da22a9174c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2093,4 +2093,10 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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
index f40584130232..b9ef59882a90 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2008,7 +2008,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits);
 	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		if (intel_crtc_has_420_sink_format(crtc_state) ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
@@ -2688,7 +2688,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
 			    str_enable_disable(intel_dp->has_hdmi_sink));
 
-	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_crtc_has_420_sink_format(crtc_state)) {
 		switch (crtc_state->output_format) {
 		case INTEL_OUTPUT_FORMAT_YCBCR420:
 			/*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index cb7dd8ebb33f..c0e602ccb021 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2068,7 +2068,7 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
 		return false;
 
 	/* Display Wa_1405510057:icl,ehl */
-	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+	if (intel_crtc_has_420_sink_format(crtc_state) &&
 	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
 	    (adjusted_mode->crtc_hblank_end -
 	     adjusted_mode->crtc_hblank_start) % 8 == 2)
@@ -2228,7 +2228,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 							     crtc_state->sink_format);
 	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		if (intel_crtc_has_420_sink_format(crtc_state) ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
@@ -2285,7 +2285,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 	}
 
-	if (pipe_config->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_crtc_has_420_sink_format(pipe_config)) {
 		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
-- 
2.25.1

