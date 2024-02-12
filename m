Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFE9851A05
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 17:50:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA9B10EDFE;
	Mon, 12 Feb 2024 16:50:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BW+HGP3W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E705510EDDA
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 16:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707756623; x=1739292623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N7qAhk5wI1WxcwJ3/BXNXcw83SfwxY52ahBUDq3zye0=;
 b=BW+HGP3WDRAe6WW4rHKv8nbqm5+zahEOR7VMZp2owOpDsZN0/XUkICc1
 bt4Nfvruj2UnvAQp7iP0wxpbP0VPQLvPLCL1j1CYqmGl+OJGe6KxzQLdF
 m7fvtexDN5jxvUqSEjvnv2/KCczmCmeYa65eNfoUDYe68sZea35MOD8Xi
 i9iNnyQA24Ulwe2PbJStfm9o2iLdbBjoWdWIf1QbPizYaoybGE4Aq5tQm
 eqErrlgXp1zx+C+BW/ZT0Ov0qRozJ43zFzqAdNloB+JYBCnQHhdWMeQfk
 mumR6Z9pEUWxIp9zoWRIR2zqzPYRXEd9s1nwj2GspoDJcoHep7RpFB1uj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1886014"
X-IronPort-AV: E=Sophos;i="6.06,264,1705392000"; 
   d="scan'208";a="1886014"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 08:50:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,264,1705392000"; 
   d="scan'208";a="2980127"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 Feb 2024 08:50:22 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 4/4] drm/i915/display: Compute and Enable AS SDP
Date: Mon, 12 Feb 2024 22:13:15 +0530
Message-Id: <20240212164316.1411230-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240212164316.1411230-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240212164316.1411230-1-mitulkumar.ajitkumar.golani@intel.com>
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
index bea441590204..47dfe727e98a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3972,6 +3972,9 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
 
+	if ((DISPLAY_VER(dev_priv) >= 13) && HAS_VRR(dev_priv))
+		intel_read_dp_sdp(encoder, pipe_config, DP_SDP_ADAPTIVE_SYNC);
+
 	intel_audio_codec_get_config(encoder, pipe_config);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6e9180ce069a..7ecbe9f48847 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2615,6 +2615,25 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
 	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
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
 static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 				     struct intel_crtc_state *crtc_state,
 				     const struct drm_connector_state *conn_state)
@@ -2940,6 +2959,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		g4x_dp_set_clock(encoder, pipe_config);
 
 	intel_vrr_compute_config(pipe_config, conn_state);
+	intel_dp_compute_as_sdp(intel_dp, pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
@@ -4325,6 +4345,9 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 
 	intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
 
+	if ((DISPLAY_VER(dev_priv) >= 13) && HAS_VRR(dev_priv))
+		intel_write_dp_sdp(encoder, crtc_state, DP_SDP_ADAPTIVE_SYNC);
+
 	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
-- 
2.25.1

