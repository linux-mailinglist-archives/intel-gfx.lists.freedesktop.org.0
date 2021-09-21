Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A387A4129EA
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 02:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4EF86E8BF;
	Tue, 21 Sep 2021 00:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8076E8BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 00:23:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="308811925"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="308811925"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="549183675"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Tue, 21 Sep 2021 03:23:01 +0300
Message-Id: <20210921002313.1132357-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-1-imre.deak@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/13] drm/i915/tc: Fix TypeC port init/resume
 time sanitization
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

Fixes: f9e76a6e68d3 ("drm/i915: Add an encoder hook to sanitize its state during init/resume")
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  8 +++++++-
 drivers/gpu/drm/i915/display/intel_display.c | 20 +++++---------------
 2 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bba0ab99836b1..c4ed4675f5791 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3840,7 +3840,13 @@ void hsw_ddi_get_config(struct intel_encoder *encoder,
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
index f6c0c595f6313..8547842935389 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -12194,18 +12194,16 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
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
@@ -12220,6 +12218,9 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			encoder->base.crtc = NULL;
 		}
 
+		if (encoder->sync_state)
+			encoder->sync_state(encoder, crtc_state);
+
 		drm_dbg_kms(&dev_priv->drm,
 			    "[ENCODER:%d:%s] hw state readout: %s, pipe %c\n",
 			    encoder->base.base.id, encoder->base.name,
@@ -12502,17 +12503,6 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
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

