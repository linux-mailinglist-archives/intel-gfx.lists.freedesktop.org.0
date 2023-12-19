Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C7E8183F6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 09:58:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D99910E42A;
	Tue, 19 Dec 2023 08:58:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E423A10E428
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 08:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702976307; x=1734512307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wttk8F2hm4cQ5qnyj0hWhxuV72qfUpiT3NTCTCciEr0=;
 b=MotcQtnXtSKomdbVY3EjKaaKm3x91VjYYAb3eAWZwpgvVP88dQfEouc5
 zoxfscqaEB9P711Xv8jZNugznpwTEQf9a6drO9rFaQSTIUVz/NU5UH8bI
 LuPrR38Z23k3rz+t5BQhYOlfgTCwTtf6p3HAyEXxE21iPaxcBkVJwHsjm
 T3DQsgpygfdAaPA584ZJaOCMfppPJ5mIPKhXu1+Zuv+iFchayp2igwn7A
 cXLfQgaxSboRtNIILfsqmHkl1gsYscPQVQ23NfytRw8UyrshYjCPZYY8F
 V+79rpf85dnZTtr1o+/j5b//Lnj6IulqO7NJHXHAIuyRJEDmIbU8Cfdr5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2857455"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
   d="scan'208";a="2857455"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 00:58:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="24118520"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 19 Dec 2023 00:58:25 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/display: Compute and Enable AS SDP
Date: Tue, 19 Dec 2023 14:23:43 +0530
Message-Id: <20231219085343.1211864-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231219085343.1211864-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231219085343.1211864-1-mitulkumar.ajitkumar.golani@intel.com>
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add necessary functions definitions to enable
and compute AS SDP data. The new `intel_dp_compute_as_sdp`
function computes AS SDP values based on the display
configuration, ensuring proper handling of Variable Refresh
Rate (VRR).

--v2:
- Add DP_SDP_ADAPTIVE_SYNC to infoframe_type_to_idx().[Ankit]
- separate patch for intel_read/write_dp_sdp [Ankit].
- _HSW_VIDEO_DIP_ASYNC_DATA_A should be from ADL onward [Ankit]
- To fix indentation [Ankit]

--v3:
- Add VIDEO_DIP_ENABLE_AS_HSW flag to intel_dp_set_infoframes.

--v4:
- Add HAS_VRR check before write as sdp.

--v5:
- Add missed HAS_VRR check before read as sdp.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  3 +++
 drivers/gpu/drm/i915/display/intel_dp.c  | 23 +++++++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 38f28c480b38..ed5afaa0ce5d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3918,6 +3918,9 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
 
+	if ((DISPLAY_VER(dev_priv) >= 13) && HAS_VRR(dev_priv))
+		intel_read_dp_sdp(encoder, pipe_config, DP_SDP_ADAPTIVE_SYNC);
+
 	intel_psr_get_config(encoder, pipe_config);
 
 	intel_audio_codec_get_config(encoder, pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5dee50f812c6..0747b5bda5c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2630,6 +2630,25 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 					 &crtc_state->infoframes.vsc);
 }
 
+static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
+				    struct intel_crtc_state *crtc_state,
+				    const struct drm_connector_state *conn_state)
+{
+	struct drm_dp_as_sdp *as_sdp = &crtc_state->infoframes.as_sdp;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int vrefresh = drm_mode_vrefresh(adjusted_mode);
+
+	if (!intel_vrr_is_in_range(connector, vrefresh))
+		return;
+
+	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
+	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
+	as_sdp->length = 0x9;
+	as_sdp->vtotal = adjusted_mode->vtotal;
+}
+
 void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state,
@@ -2956,6 +2975,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		g4x_dp_set_clock(encoder, pipe_config);
 
 	intel_vrr_compute_config(pipe_config, conn_state);
+	intel_dp_compute_as_sdp(intel_dp, pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
@@ -4368,6 +4388,9 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 	if (!crtc_state->has_psr)
 		intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
 
+	if ((DISPLAY_VER(dev_priv) >= 13) && HAS_VRR(dev_priv))
+		intel_write_dp_sdp(encoder, crtc_state, DP_SDP_ADAPTIVE_SYNC);
+
 	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
-- 
2.25.1

