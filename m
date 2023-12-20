Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AF0819CE3
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 11:36:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6813610E354;
	Wed, 20 Dec 2023 10:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD78910E354
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 10:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703068596; x=1734604596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CbbKWqWchKfIsZGyU35w10Q4z0r8HI/+zpaz20TApDc=;
 b=P2YMD4FJMVRzhiv9zAKkAH4DIEh0f5OxgY96RalITUAJS9GOc9y9n4y+
 P6EYLLcQqz6Em4vLEng61HQH58qdpP70VxUUTcz3EQz8hzyDBl1FkUCmX
 NHFdrcXAD52oftvpvDyqqX7BA8h8zxzrvG8AbpRg2mqHVg7VLiFP4k6Nu
 2aBmNrZK86bNodipwgTRUQKECpvWoKzqhBOpupQ4TVsa9i4mduPqTMxY+
 BFPQpgOw6zoVgAryA9dLIdODWEQZPbGpCwCuTXvSjBzJ3cmxjaeFdZo2r
 0tLDppLUHR2UEKNCK8r/Fdi/qaFoGEk2XHSTJm4RHco2MkhXaEUF9rwsJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2631986"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2631986"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="1107686274"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="1107686274"
Received: from sparrish-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.221])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:34 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 3/7] drm/i915/display: Unify VSC SPD preparation
Date: Wed, 20 Dec 2023 12:36:05 +0200
Message-Id: <20231220103609.1384523-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231220103609.1384523-1-jouni.hogander@intel.com>
References: <20231220103609.1384523-1-jouni.hogander@intel.com>
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is no specific reason to prepare VSC SDP for PSR case somehow
differently. Unify PSR and non-PSR preparation.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Tested-by: Shawn Lee <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 43 ++++--------------------
 drivers/gpu/drm/i915/display/intel_dp.h  |  7 ----
 drivers/gpu/drm/i915/display/intel_psr.c |  6 ----
 3 files changed, 6 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 77fa4dcc4fb7..38165ef97ee1 100644
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
+	     !intel_dp_needs_vsc_sdp(crtc_state, conn_state)) &&
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

