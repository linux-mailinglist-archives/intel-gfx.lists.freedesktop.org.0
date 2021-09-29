Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B85FB41C59C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 15:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD8E86EA6E;
	Wed, 29 Sep 2021 13:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BD256EA6E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 13:28:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="310487720"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="310487720"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="617510879"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:35 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Wed, 29 Sep 2021 16:28:27 +0300
Message-Id: <20210929132833.2253961-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-2-imre.deak@intel.com>
References: <20210921002313.1132357-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/13] drm/i915/tc: Fix TypeC port
 init/resume time sanitization
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

Atm during driver loading and system resume TypeC ports are accessed
before their HW/SW state is synced. Move the TypeC port sanitization to
the encoder's sync_state hook to fix this.

v2: Handle the encoder disabled case in gen11_dsi_sync_state() as well
    (Jose, Jani)

Fixes: f9e76a6e68d3 ("drm/i915: Add an encoder hook to sanitize its state during init/resume")
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_ddi.c     |  8 +++++++-
 drivers/gpu/drm/i915/display/intel_display.c | 20 +++++---------------
 3 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 060bc8fb0d307..bd210166b0793 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1599,8 +1599,14 @@ static void gen11_dsi_sync_state(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum pipe pipe = intel_crtc->pipe;
+	struct intel_crtc *intel_crtc;
+	enum pipe pipe;
+
+	if (!crtc_state)
+		return;
+
+	intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	pipe = intel_crtc->pipe;
 
 	/* wa verify 1409054076:icl,jsl,ehl */
 	if (DISPLAY_VER(dev_priv) == 11 && pipe == PIPE_B &&
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a4667741d3548..04572ce6630f9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3838,7 +3838,13 @@ void hsw_ddi_get_config(struct intel_encoder *encoder,
 static void intel_ddi_sync_state(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
-	if (intel_crtc_has_dp_encoder(crtc_state))
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	if (intel_phy_is_tc(i915, phy))
+		intel_tc_port_sanitize(enc_to_dig_port(encoder));
+
+	if (crtc_state && intel_crtc_has_dp_encoder(crtc_state))
 		intel_dp_sync_state(encoder, crtc_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9e407760e51f6..5f241e2415cea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -12285,18 +12285,16 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 	readout_plane_state(dev_priv);
 
 	for_each_intel_encoder(dev, encoder) {
+		struct intel_crtc_state *crtc_state = NULL;
+
 		pipe = 0;
 
 		if (encoder->get_hw_state(encoder, &pipe)) {
-			struct intel_crtc_state *crtc_state;
-
 			crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
 			crtc_state = to_intel_crtc_state(crtc->base.state);
 
 			encoder->base.crtc = &crtc->base;
 			intel_encoder_get_config(encoder, crtc_state);
-			if (encoder->sync_state)
-				encoder->sync_state(encoder, crtc_state);
 
 			/* read out to slave crtc as well for bigjoiner */
 			if (crtc_state->bigjoiner) {
@@ -12311,6 +12309,9 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			encoder->base.crtc = NULL;
 		}
 
+		if (encoder->sync_state)
+			encoder->sync_state(encoder, crtc_state);
+
 		drm_dbg_kms(&dev_priv->drm,
 			    "[ENCODER:%d:%s] hw state readout: %s, pipe %c\n",
 			    encoder->base.base.id, encoder->base.name,
@@ -12593,17 +12594,6 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 	intel_modeset_readout_hw_state(dev);
 
 	/* HW state is read out, now we need to sanitize this mess. */
-
-	/* Sanitize the TypeC port mode upfront, encoders depend on this */
-	for_each_intel_encoder(dev, encoder) {
-		enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-
-		/* We need to sanitize only the MST primary port. */
-		if (encoder->type != INTEL_OUTPUT_DP_MST &&
-		    intel_phy_is_tc(dev_priv, phy))
-			intel_tc_port_sanitize(enc_to_dig_port(encoder));
-	}
-
 	get_encoder_power_domains(dev_priv);
 
 	if (HAS_PCH_IBX(dev_priv))
-- 
2.27.0

