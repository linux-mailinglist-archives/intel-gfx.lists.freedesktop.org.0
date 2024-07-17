Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3D1933663
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 07:25:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE66610E933;
	Wed, 17 Jul 2024 05:25:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DYoCxgYx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A90510E932
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 05:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721193916; x=1752729916;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zJ+NiyHyg4rG5cwY1eeHQyB+OvtHgERRQ+A96T6GRYg=;
 b=DYoCxgYx/PLOAROwxCFKxvqMAFBn9QRs4QafNU8XaSZ7UqFs4Zu9nMbg
 9zKWLks8EaKgqNFtk/LNQiAbm1BaiRFwfC00+xYUxCH5Td/TEP96n6ZGi
 DpLjIId99cKAD3S9JIb0tKSCobRuAP4UwV2wiKhN5KmXyA/+RQ2C44nPj
 oi9uDWF9byDZAQMfrp9eznakWcrAEeM8xG9phJgBPOCf4Xf9fbVUT60e/
 1YMa8X2SAr0+AWPeQUKbHSESaC81DTl/t01S1lEAEc0Gb449NQuPYLZuL
 KYaE5G0aTlnbQWK1O4YlS7sUCpbUNSIKnMsMlRPDVvg5mvrVhXcywUJrr w==;
X-CSE-ConnectionGUID: zOIGitFGRFSfZ1acsODEGA==
X-CSE-MsgGUID: A0w5J2XkQ3KW89U3WYTdfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18805254"
X-IronPort-AV: E=Sophos;i="6.09,213,1716274800"; d="scan'208";a="18805254"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2024 22:25:13 -0700
X-CSE-ConnectionGUID: YEvzKHP3SDC9GBuVU8Eb9Q==
X-CSE-MsgGUID: YfZRRrqKTZCflodv2vDpQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,213,1716274800"; d="scan'208";a="50609316"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa006.jf.intel.com with ESMTP; 16 Jul 2024 22:25:12 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, ankit.k.nautiyal@intel.com,
 mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dpmst: Enable VSC SDP for DPMST
Date: Wed, 17 Jul 2024 10:52:47 +0530
Message-ID: <20240717052247.3452537-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Enable VSC SDP for DPMST since after addition of panel replay has_psr
gets set in DPMST scenarios because of which we do not clear VSC SDP
which causes infoframes.enable

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.h     | 3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++++++
 4 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a07aca96e551..854152ab5642 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3471,8 +3471,6 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 {
 	intel_ddi_set_dp_msa(crtc_state, conn_state);
 
-	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
-
 	intel_backlight_update(state, encoder, crtc_state, conn_state);
 	drm_connector_update_privacy_screen(conn_state);
 }
@@ -3488,6 +3486,8 @@ void intel_ddi_update_pipe(struct intel_atomic_state *state,
 		intel_ddi_update_pipe_dp(state, encoder, crtc_state,
 					 conn_state);
 
+	if (intel_encoder_is_dp(encoder) || intel_encoder_is_mst(encoder))
+		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 	intel_hdcp_update_pipe(state, encoder, crtc_state, conn_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index edfb30857479..d294fed22525 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2640,9 +2640,9 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	}
 }
 
-static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
-				     struct intel_crtc_state *crtc_state,
-				     const struct drm_connector_state *conn_state)
+void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
+			      struct intel_crtc_state *crtc_state,
+			      const struct drm_connector_state *conn_state)
 {
 	struct drm_dp_vsc_sdp *vsc;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 9be539edf817..7eea3cfdad44 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -201,5 +201,8 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
 bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
+void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
+			      struct intel_crtc_state *crtc_state,
+			      const struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 27ce5c3f5951..a674cf761524 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -662,6 +662,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 
+	/* TODO: Add other SDP computes here as well */
+	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
+
 	return intel_dp_tunnel_atomic_compute_stream_bw(state, intel_dp, connector,
 							pipe_config);
 }
@@ -1274,6 +1277,9 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 		intel_crtc_vblank_on(pipe_crtc_state);
 	}
 
+	if (!dig_port->lspcon.active || intel_dp_has_hdmi_sink(&dig_port->dp))
+		intel_dp_set_infoframes(encoder, true, pipe_config, conn_state);
+
 	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
 }
 
-- 
2.43.2

