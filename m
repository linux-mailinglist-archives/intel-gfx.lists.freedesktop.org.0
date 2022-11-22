Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC5E633626
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 08:46:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE2CD10E398;
	Tue, 22 Nov 2022 07:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A52610E38E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 07:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669103166; x=1700639166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z1MRFAtUv8jj2OTMtttia0n+eAZPlJKaQViAu6h5Dxk=;
 b=e9zX5fmQXTB7HI7aR7eydvYymnVeSjBzMSVhIufTu6oHsivjapcpGliS
 V9vKBbepS82BHneaZHqEiwa9a12gXXUIZrePFrPzDfaKoOSYFq8ndDeKK
 jasj4AqgdTPBn+dR4QVa+/FC/XXM/vuhhGPPHuJFKEo82xeni4768tJPq
 u15BbVjlh1q0N3SbAnGjxNxxxqJlACIo5mQB0x9KBZjjp7eVzkoCnmBcm
 mNG+gpnC8AGJuJ4EYfhcziKY4vlIGIXGrlbtHsenmBTc1LuGYuRuVMxOt
 RwKpX8Py3HoGV8tln4oTI7Zp93Yjm59nzxTaPRaKbWDQqgDRW+jOGzJfe w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="378015382"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="378015382"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:46:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="783756321"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="783756321"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:46:04 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 13:16:40 +0530
Message-Id: <20221122074644.2969553-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221122074644.2969553-1-ankit.k.nautiyal@intel.com>
References: <20221122074644.2969553-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 06/10] drm/i915/display: Add helper function
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
index 9e31aa008f22..f28858668339 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2062,4 +2062,10 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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
index dc9b1bf44967..ea723138fe07 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2096,7 +2096,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits, with_dsc);
 	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		if (intel_crtc_has_420_sink_format(crtc_state) ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
@@ -2789,7 +2789,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
 			    str_enable_disable(intel_dp->has_hdmi_sink));
 
-	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_crtc_has_420_sink_format(crtc_state)) {
 		switch (crtc_state->output_format) {
 		case INTEL_OUTPUT_FORMAT_YCBCR420:
 			/*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 85453c3f7dc1..aa36dd43c992 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2062,7 +2062,7 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
 		return false;
 
 	/* Display Wa_1405510057:icl,ehl */
-	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+	if (intel_crtc_has_420_sink_format(crtc_state) &&
 	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
 	    (adjusted_mode->crtc_hblank_end -
 	     adjusted_mode->crtc_hblank_start) % 8 == 2)
@@ -2224,7 +2224,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 	crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
 	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		if (intel_crtc_has_420_sink_format(crtc_state) ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
@@ -2284,7 +2284,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 	}
 
-	if (pipe_config->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_crtc_has_420_sink_format(pipe_config)) {
 		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
-- 
2.25.1

