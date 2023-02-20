Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C1969C989
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 12:15:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E96B10E687;
	Mon, 20 Feb 2023 11:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C479F10E682
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 11:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676891735; x=1708427735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PU1VBDL0InC+OFz+db2r8wrxcuFbSP2f/Exyg/L3DRY=;
 b=LZiq5m0kRQ19Rl4gwGRfj/+BF9SL2uvFGzoqdUENoV2Zpw553v1NX/4p
 6nDesH6vx9P1sSuYYiql6TNDIz3aGSn46vdCk6zfElaqIbmbp9/ozwZwv
 9+Sy4wuX7sQtmBmz/VioMeuhuFyMWQnPpPgCuiWPzsWGTVRDpAbYaJdVK
 XKruVukrfqfke6ku7t3rPUMm4a3lcR3OYWTSv6gUA/u352x+B5XUJDKwv
 ZYv8RuWzwqDMlLRaFsBN7PVGl/Nbg0/kOhJ5UI5MVjJNRRB6fviGpi9P/
 hl0nFzmjfu9WBNxQBNLC6aMebS7SCippYQWOMhQsPB2C0PTPimZ/AfI1R A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397061793"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397061793"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="740013112"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="740013112"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:33 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 16:42:28 +0530
Message-Id: <20230220111232.3383820-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
References: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/14] drm/i915/display: Add helper function to
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
index e6e617f67fd1..1ecae95e6939 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2078,4 +2078,10 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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
index 56e787cbbe1d..311ffb7cc3b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2180,7 +2180,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits, with_dsc);
 	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		if (intel_crtc_has_420_sink_format(crtc_state) ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
@@ -2894,7 +2894,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
 			    str_enable_disable(intel_dp->has_hdmi_sink));
 
-	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_crtc_has_420_sink_format(crtc_state)) {
 		switch (crtc_state->output_format) {
 		case INTEL_OUTPUT_FORMAT_YCBCR420:
 			/*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 17b5a7708d63..eb9bf9cf0f69 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2064,7 +2064,7 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
 		return false;
 
 	/* Display Wa_1405510057:icl,ehl */
-	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+	if (intel_crtc_has_420_sink_format(crtc_state) &&
 	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
 	    (adjusted_mode->crtc_hblank_end -
 	     adjusted_mode->crtc_hblank_start) % 8 == 2)
@@ -2226,7 +2226,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 	crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
 	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		if (intel_crtc_has_420_sink_format(crtc_state) ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
@@ -2310,7 +2310,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 	}
 
-	if (pipe_config->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_crtc_has_420_sink_format(pipe_config)) {
 		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
-- 
2.25.1

