Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1451D9EAE46
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 11:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A646F10E1B5;
	Tue, 10 Dec 2024 10:46:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ewALYmgW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6222A10E396;
 Tue, 10 Dec 2024 10:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733827601; x=1765363601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eRuxmJj55SbgvVFtTo3GwuUFtEHuE/3CzpLJ6NZdz48=;
 b=ewALYmgWO+McTDMMi3IaEyY67XjoapmlnO5c0kCWDW7DBlDpNy91h4R6
 sRLzu3v0/R1P9Kxi5G4KiS9IXu3lxN2Cmb0K4eIxCAjU2uolvCVXwiEfh
 Ps6cNxCUZ2uK328XQJM5nN4/ajWNENYOtZrFzxB78HP/7klPWP+U5mQ9d
 DvDKCupGk0rExFlaIoHM/bd2WqL+Tx826BnHYrfVaDwov8gAd451wOi8n
 5b5RfszL729cTb5PAW6hsGgzD0IfzsgVrC7RoZ2RpIfgyN7IspTzHP+8a
 ZNTEnV53yUAmgwKOx8pF1N3sOIfCke8Td4cp4kPZ91PzEn5rlFwSxiRP7 g==;
X-CSE-ConnectionGUID: yM+0siq+Tre/2sPVPlfQMw==
X-CSE-MsgGUID: QWbMuJLDRROFaTBkh01gpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="37949413"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="37949413"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 02:46:41 -0800
X-CSE-ConnectionGUID: ilqUhzhZSIayJUCB4fSm7Q==
X-CSE-MsgGUID: RzVoiYxeS9msAvIsS7QYEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="96177356"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 02:46:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 1/5] drm/i915/dp: s/intel_encoder/encoder/
Date: Tue, 10 Dec 2024 12:46:26 +0200
Message-Id: <d04779211e96f541d5e46b3fdd2f249fb50e9460.1733827537.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733827537.git.jani.nikula@intel.com>
References: <cover.1733827537.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Use the contemporary naming convention of struct intel_encoder *encoder.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 ++++++++++++-------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbe6b77d642e..21598a35016e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5777,8 +5777,8 @@ intel_dp_force(struct drm_connector *connector)
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *intel_encoder = &dig_port->base;
-	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
@@ -5908,18 +5908,18 @@ void intel_dp_encoder_flush_work(struct drm_encoder *_encoder)
 	intel_dp_aux_fini(intel_dp);
 }
 
-void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
+void intel_dp_encoder_suspend(struct intel_encoder *encoder)
 {
-	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_pps_vdd_off_sync(intel_dp);
 
 	intel_dp_tunnel_suspend(intel_dp);
 }
 
-void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
+void intel_dp_encoder_shutdown(struct intel_encoder *encoder)
 {
-	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_pps_wait_power_cycle(intel_dp);
 }
@@ -6492,10 +6492,10 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	struct intel_display *display = to_intel_display(dig_port);
 	struct drm_connector *connector = &intel_connector->base;
 	struct intel_dp *intel_dp = &dig_port->dp;
-	struct intel_encoder *intel_encoder = &dig_port->base;
-	struct drm_device *dev = intel_encoder->base.dev;
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum port port = intel_encoder->port;
+	enum port port = encoder->port;
 	int type;
 
 	/* Initialize the work for modeset in case of link train failure */
@@ -6503,8 +6503,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	if (drm_WARN(dev, dig_port->max_lanes < 1,
 		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
-		     dig_port->max_lanes, intel_encoder->base.base.id,
-		     intel_encoder->base.name))
+		     dig_port->max_lanes, encoder->base.base.id,
+		     encoder->base.name))
 		return false;
 
 	intel_dp->reset_link_params = true;
@@ -6513,15 +6513,15 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
 	intel_dp->attached_connector = intel_connector;
 
-	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
+	if (_intel_dp_is_port_edp(dev_priv, encoder->devdata, port)) {
 		/*
 		 * Currently we don't support eDP on TypeC ports for DISPLAY_VER < 30,
 		 * although in theory it could work on TypeC legacy ports.
 		 */
-		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder) &&
+		drm_WARN_ON(dev, intel_encoder_is_tc(encoder) &&
 			    DISPLAY_VER(dev_priv) < 30);
 		type = DRM_MODE_CONNECTOR_eDP;
-		intel_encoder->type = INTEL_OUTPUT_EDP;
+		encoder->type = INTEL_OUTPUT_EDP;
 
 		/* eDP only on port B and/or C on vlv/chv */
 		if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
@@ -6544,7 +6544,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	drm_dbg_kms(&dev_priv->drm,
 		    "Adding %s connector on [ENCODER:%d:%s]\n",
 		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
-		    intel_encoder->base.base.id, intel_encoder->base.name);
+		    encoder->base.base.id, encoder->base.name);
 
 	drm_connector_init_with_ddc(dev, connector, &intel_dp_connector_funcs,
 				    type, &intel_dp->aux.ddc);
@@ -6557,7 +6557,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
 	intel_connector->base.polled = intel_connector->polled;
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	intel_connector_attach_encoder(intel_connector, encoder);
 
 	if (HAS_DDI(dev_priv))
 		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
-- 
2.39.5

