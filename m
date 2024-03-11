Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB6B877D41
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 10:49:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C9410EDB2;
	Mon, 11 Mar 2024 09:49:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="biYVZJjW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7723310ECD3;
 Mon, 11 Mar 2024 09:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710150569; x=1741686569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6j/cBGoPOJjlBxCJEdHvTO7mWUCpboWfIUNHvnvpB9U=;
 b=biYVZJjW8bhwB0sk9QWySQtO0RQ8BKu/1psZMz7jlBz4mEAbt2bkLPuH
 fUBlJaG/AsO9qfBgUSr64VFwAfT0cY19ODqOG0sV7wMWts9e25zwTo01G
 T7HWY14MkncIHd4ta6miDQL6vzyySL0uFnQya94zzHnSdKWUmTWIyJdW2
 MXUd/pt0//czIvGzeHV5jFzGuDX94sjLC9djoBJRac/Okx8kwmB4zprTO
 WRKCGsfPJF6PndCMPqng7GgdUnPUkfyGY3BIO2q6aMTp+oQaOx7F2O8Iz
 n72+f7LQl5A3087+9iMU+uvOGKkDIBpPgAe0p1fzJd541ZDxquNKcfgbu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="8619216"
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; 
   d="scan'208";a="8619216"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 02:49:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="11198041"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 11 Mar 2024 02:49:26 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, dri-devel@lists.freedesktop.org,
 jani.nikula@intel.com, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH v17 6/9] drm/i915/display: Compute AS SDP parameters
Date: Mon, 11 Mar 2024 15:12:35 +0530
Message-Id: <20240311094238.3320888-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240311094238.3320888-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240311094238.3320888-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add necessary function definitions to compute AS SDP data.
The new intel_dp_compute_as_sdp function computes AS SDP
values based on the display configuration, ensuring proper
handling of Variable Refresh Rate (VRR).

--v2:
- Added DP_SDP_ADAPTIVE_SYNC to infoframe_type_to_idx(). [Ankit]
- Separated patch for intel_read/write_dp_sdp. [Ankit]
- _HSW_VIDEO_DIP_ASYNC_DATA_A should be from ADL onward. [Ankit]
- Fixed indentation issues. [Ankit]

--v3:
- Added VIDEO_DIP_ENABLE_AS_HSW flag to intel_dp_set_infoframes.

--v4:
- Added HAS_VRR check before writing AS SDP.

--v5:
Added missed HAS_VRR check before reading AS SDP.

--v6:
- Used Adaptive Sync sink status as a check for read/write SDP. (Ankit)

--v7:
- Remove as_sdp_enable from crtc_state.
- Add a comment mentioning current support of
  DP_AS_SDP_AVT_FIXED_VTOTAL.
- Add state checker for AS_SDP infoframe enable.

--v8:
- Drop conn_state from intel_dp_compute_as_sdp, as not used.
- Remove fullstop in subject line.

--v9:
- Add vrr.enable instead of is_in_vrr_range.

--v10:
- remove vrefresh and connector, as they are no  longer required.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3c8bca12dd6f..a9ed0c66ea63 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2621,6 +2621,29 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
 	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
 }
 
+static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
+				    struct intel_crtc_state *crtc_state)
+{
+	struct drm_dp_as_sdp *as_sdp = &crtc_state->infoframes.as_sdp;
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	if (!crtc_state->vrr.enable ||
+	    !intel_dp_as_sdp_supported(intel_dp))
+		return;
+
+	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
+
+	/* Currently only DP_AS_SDP_AVT_FIXED_VTOTAL mode supported */
+	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
+	as_sdp->length = 0x9;
+	as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+	as_sdp->vtotal = adjusted_mode->vtotal;
+	as_sdp->target_rr = 0;
+	as_sdp->duration_incr_ms = 0;
+	as_sdp->duration_incr_ms = 0;
+}
+
 static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 				     struct intel_crtc_state *crtc_state,
 				     const struct drm_connector_state *conn_state)
@@ -2972,6 +2995,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		g4x_dp_set_clock(encoder, pipe_config);
 
 	intel_vrr_compute_config(pipe_config, conn_state);
+	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
-- 
2.25.1

