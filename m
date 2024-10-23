Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A28029ABD38
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 06:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6449810E35A;
	Wed, 23 Oct 2024 04:45:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B2TR0Opa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F90510E35F;
 Wed, 23 Oct 2024 04:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729658743; x=1761194743;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iEhq7Zt+y5de/MhREwvUysYHRM0VBdvcV6Vzcc+5zD4=;
 b=B2TR0OpaTKb7f1fxSR69hZ+f8iBr9ghj+p2QmwYRt1gAPTlEVtzl0dPJ
 Z4WlRsdLZHX4IhqLXBpFLGtbAF7vNOX8G1//8WxpSY8rmxXaKlSjkDwg4
 1eSocsM14ZNwfNR1EMfyzmuldyUcsNVrt3aKe8MnjVLQq4MdbM/0hE2YU
 pxAv9GCoQEnXxRLhMPCfvUzJXHCv1y9z6Hegj+RxWI2vCflvRKbmPZ4SN
 cVXsGriGoGDLCvES1VIQMUhD1ZYcda+YoieJa2PimBho2VU/I57YHr/5u
 CxapsaV/qHXhri+//TRt37waAODr3VB807MY/Fbg3YRkaJJSiTWgK05R4 A==;
X-CSE-ConnectionGUID: WTh/JUA0Stmseppmm28bhQ==
X-CSE-MsgGUID: q4BH8YEDTFuAjreJHrCCGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29454812"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="29454812"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 21:45:42 -0700
X-CSE-ConnectionGUID: xesihiWPS4u+nPbV0ljEYA==
X-CSE-MsgGUID: fiNRPhTvQRCgFa36DboqdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="80095208"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa009.fm.intel.com with ESMTP; 22 Oct 2024 21:45:40 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH] drm/i915: Allow fastset for change in HDR infoframe
Date: Wed, 23 Oct 2024 10:11:22 +0530
Message-Id: <20241023044122.3889137-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

Changes in Dynamic Range and Mastering infoframe
should not trigger a full modeset. Therefore, allow
fastset. DP SDP programming is already hooked up in the
fastset flow but HDMI AVI infoframe update is not, add it.
Any other infoframe that can be fastset should be added to
the helper intel_hdmi_fastset_infoframes().

v3:
 - Create a wrapper intel_ddi_update_pipe_hdmi to stick to
   uniform naming (Jani)
 - Do not disable HDMI AVI infoframe if already disabled (Uma)

v2:
 - Update HDMI AVI infoframe during fastset.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 11 +++++++++
 drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 24 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.h    |  3 +++
 4 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ff4c633c8546..0935f06a6a33 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3478,6 +3478,13 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 	drm_connector_update_privacy_screen(conn_state);
 }
 
+static void intel_ddi_update_pipe_hdmi(struct intel_encoder *encoder,
+				       const struct intel_crtc_state *crtc_state,
+				       const struct drm_connector_state *conn_state)
+{
+	intel_hdmi_fastset_infoframes(encoder, crtc_state, conn_state);
+}
+
 void intel_ddi_update_pipe(struct intel_atomic_state *state,
 			   struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state,
@@ -3489,6 +3496,10 @@ void intel_ddi_update_pipe(struct intel_atomic_state *state,
 		intel_ddi_update_pipe_dp(state, encoder, crtc_state,
 					 conn_state);
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		intel_ddi_update_pipe_hdmi(encoder, crtc_state,
+					   conn_state);
+
 	intel_hdcp_update_pipe(state, encoder, crtc_state, conn_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef1436146325..af5062456750 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5701,7 +5701,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_INFOFRAME(avi);
 	PIPE_CONF_CHECK_INFOFRAME(spd);
 	PIPE_CONF_CHECK_INFOFRAME(hdmi);
-	PIPE_CONF_CHECK_INFOFRAME(drm);
+	if (!fastset)
+		PIPE_CONF_CHECK_INFOFRAME(drm);
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
 	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 72ac910bf6ec..9487210dae7e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1211,6 +1211,30 @@ static void vlv_set_infoframes(struct intel_encoder *encoder,
 			      &crtc_state->infoframes.hdmi);
 }
 
+void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
+				   const struct intel_crtc_state *crtc_state,
+				   const struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(display,
+					    crtc_state->cpu_transcoder);
+	u32 val = intel_de_read(display, reg);
+
+	if ((crtc_state->infoframes.enable &
+		intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_DRM)) == 0 &&
+			(val & VIDEO_DIP_ENABLE_DRM_GLK) == 0)
+		return;
+
+	val &= ~(VIDEO_DIP_ENABLE_DRM_GLK);
+
+	intel_de_write(display, reg, val);
+	intel_de_posting_read(display, reg);
+
+	intel_write_infoframe(encoder, crtc_state,
+			      HDMI_INFOFRAME_TYPE_DRM,
+			      &crtc_state->infoframes.drm);
+}
+
 static void hsw_set_infoframes(struct intel_encoder *encoder,
 			       bool enable,
 			       const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 9b97623665c5..466f48df8a74 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -42,6 +42,9 @@ u32 intel_hdmi_infoframes_enabled(struct intel_encoder *encoder,
 u32 intel_hdmi_infoframe_enable(unsigned int type);
 void intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
 				   struct intel_crtc_state *crtc_state);
+void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
+				   const struct intel_crtc_state *crtc_state,
+				   const struct drm_connector_state *conn_state);
 void intel_read_infoframe(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state,
 			  enum hdmi_infoframe_type type,
-- 
2.25.1

