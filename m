Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05229812F5A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:49:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6565310E925;
	Thu, 14 Dec 2023 11:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C8610E804
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702554537; x=1734090537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L0cq/6pJfN+qrT0yyhTZm7hwUhRZrym7x31M5cDesjM=;
 b=c4N7+5iuG3kZ1roaY7jjLI9GX0JiJxhfsUOzKw+JmAuVQRm1Qj4v41It
 bX6Qm4ipga4Wd4Ktu2EX6cKCx5Q3o2x9G4ZBUPOIrG+ZEcoYtq0CO5Wko
 amJQ4BR6P3xRwL8Vxpi3ui+cIVaNsVftLZ7kHR4AjBXc5tNAkUfLjQbd+
 dPysW7Ucyd4qxI39PksrE/O/obl1RmCg1OONct+FEMygGWUXgOijdzwD3
 eBx552KRyDgb1RzraKByWYvpzIq6UyH86sfuOLwPwVhjAsW+T2ChoN+VR
 6ux2LYySzNysY1hnL8yn1V8/DotlSeqegTibsyhtocqjYcMkAd/Iln+KY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="16658687"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="16658687"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="844678865"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="844678865"
Received: from unknown (HELO jhogande-mobl1.fi.intel.com) ([10.237.66.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:55 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/7] drm/i915/display: Unify VSC SPD preparation
Date: Thu, 14 Dec 2023 13:48:34 +0200
Message-Id: <20231214114838.1113648-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214114838.1113648-1-jouni.hogander@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

There is no specific reason to prepare VSC SDP for PSR case somehow
differently. Unify PSR and non-PSR preparation.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 43 ++++--------------------
 drivers/gpu/drm/i915/display/intel_dp.h  |  7 ----
 drivers/gpu/drm/i915/display/intel_psr.c |  6 ----
 3 files changed, 6 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 08c48a58aa4d..3550cebb44f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2616,28 +2616,17 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 				     struct intel_crtc_state *crtc_state,
 				     const struct drm_connector_state *conn_state)
 {
-	struct drm_dp_vsc_sdp *vsc = &crtc_state->infoframes.vsc;
+	struct drm_dp_vsc_sdp *vsc;
 
-	/* When a crtc state has PSR, VSC SDP will be handled by PSR routine */
-	if (crtc_state->has_psr)
+	if ((!intel_dp->colorimetry_support ||
+	    !intel_dp_needs_vsc_sdp(crtc_state, conn_state)) &&
+	    !crtc_state->has_psr)
 		return;
 
-	if (!intel_dp->colorimetry_support ||
-	    !intel_dp_needs_vsc_sdp(crtc_state, conn_state))
-		return;
+	vsc = &crtc_state->infoframes.vsc;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 	vsc->sdp_type = DP_SDP_VSC;
-	intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
-					 &crtc_state->infoframes.vsc);
-}
-
-void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
-				  const struct intel_crtc_state *crtc_state,
-				  const struct drm_connector_state *conn_state,
-				  struct drm_dp_vsc_sdp *vsc)
-{
-	vsc->sdp_type = DP_SDP_VSC;
 
 	if (crtc_state->has_psr2) {
 		if (intel_dp->colorimetry_support &&
@@ -4289,24 +4278,6 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 	dig_port->write_infoframe(encoder, crtc_state, type, &sdp, len);
 }
 
-void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
-			    const struct intel_crtc_state *crtc_state,
-			    const struct drm_dp_vsc_sdp *vsc)
-{
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct dp_sdp sdp = {};
-	ssize_t len;
-
-	len = intel_dp_vsc_sdp_pack(vsc, &sdp, sizeof(sdp));
-
-	if (drm_WARN_ON(&dev_priv->drm, len < 0))
-		return;
-
-	dig_port->write_infoframe(encoder, crtc_state, DP_SDP_VSC,
-					&sdp, len);
-}
-
 void intel_dp_set_infoframes(struct intel_encoder *encoder,
 			     bool enable,
 			     const struct intel_crtc_state *crtc_state,
@@ -4333,9 +4304,7 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 	if (!enable)
 		return;
 
-	/* When PSR is enabled, VSC SDP is handled by PSR routine */
-	if (!crtc_state->has_psr)
-		intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
+	intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
 
 	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 05db46b111f2..b911706d2e95 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -109,13 +109,6 @@ int intel_dp_max_data_rate(int max_link_rate, int max_lanes);
 bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
-void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
-				  const struct intel_crtc_state *crtc_state,
-				  const struct drm_connector_state *conn_state,
-				  struct drm_dp_vsc_sdp *vsc);
-void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
-			    const struct intel_crtc_state *crtc_state,
-			    const struct drm_dp_vsc_sdp *vsc);
 void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d9fffc802335..494d08817d71 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1374,10 +1374,6 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
-
-	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
-	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
-				     &crtc_state->infoframes.vsc);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -1621,7 +1617,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
-	struct intel_encoder *encoder = &dig_port->base;
 	u32 val;
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
@@ -1649,7 +1644,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.psr2_enabled ? "2" : "1");
 
-	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->infoframes.vsc);
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
 	intel_psr_enable_sink(intel_dp);
 	intel_psr_enable_source(intel_dp, crtc_state);
-- 
2.34.1

