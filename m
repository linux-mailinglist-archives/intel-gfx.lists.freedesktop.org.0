Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BB469CAFF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 13:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C92A910E692;
	Mon, 20 Feb 2023 12:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE69710E67F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 12:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676896020; x=1708432020;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IV0rBDhDpVaymXwtwfMSq7QHPRpZhZkTTvHtxrs594g=;
 b=K4fFObunEQQjSBzVZjUcBCWjpuIMCoRZqeWTAEkfAZ5t26T2pbX4Jokb
 tcFYARGMvJHJc+r1HPOGoYsXty5VFJuLy6pBAOxHDxj+cX5ANFt/QDcHG
 ksAEJPAi8ZtmY0SQotBcazGosCK0TUvpc/6NtzcvVRKGln2JYHn1Lf36Y
 0rnVnSML8HmfvIByUHFcUyITzfK/792BhkHddUnejscBnqqtmerDT0qhh
 ZLu3hB1zWyxv1woVUc0oxLV8QJgFyAY2Jhpds/Oz2JJzn2xq3zL1s0hVG
 1J4BDAVAIloX5fbLobYSq/WoyR9TIpj6M43MpUaVXlfV4Q8A8Orff9PU2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397073457"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397073457"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:27:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="621142108"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="621142108"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:26:58 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 17:53:57 +0530
Message-Id: <20230220122401.3495507-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
References: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 10/14] drm/i915/display: Add helper function
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
index 1be15a1caa39..9bcccf02a2b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2067,4 +2067,10 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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
index 60090fbbca5f..a2baec2f7b03 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2192,7 +2192,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits, with_dsc);
 	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		if (intel_crtc_has_420_sink_format(crtc_state) ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
@@ -2906,7 +2906,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
 			    str_enable_disable(intel_dp->has_hdmi_sink));
 
-	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_crtc_has_420_sink_format(crtc_state)) {
 		switch (crtc_state->output_format) {
 		case INTEL_OUTPUT_FORMAT_YCBCR420:
 			/*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 99928ca5a435..573781484e73 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2048,7 +2048,7 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
 		return false;
 
 	/* Display Wa_1405510057:icl,ehl */
-	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+	if (intel_crtc_has_420_sink_format(crtc_state) &&
 	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
 	    (adjusted_mode->crtc_hblank_end -
 	     adjusted_mode->crtc_hblank_start) % 8 == 2)
@@ -2210,7 +2210,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 	crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
 	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		if (intel_crtc_has_420_sink_format(crtc_state) ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
@@ -2294,7 +2294,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 	}
 
-	if (pipe_config->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_crtc_has_420_sink_format(pipe_config)) {
 		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
-- 
2.25.1

