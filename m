Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6496F9C0AF9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:12:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E01710E880;
	Thu,  7 Nov 2024 16:12:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cyOIE8sB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C04010E880
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 16:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730995934; x=1762531934;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TVewkF/Kj0P2xqGCmGbQXr1C/CTFAQIbzXUuy7goTsI=;
 b=cyOIE8sBvwIjGLgN7PHIxeqNCj4HW5qBW8OCGv9bOyxhH+GwZGx9FWdX
 0sQRqvmKPfynopn1kmFHSAp9jRQy0yZMc2ze2WbyxK48jDga1z0mw1iTz
 uTpZMVCjxPIgn/f3YdQ7fW9JZXWLmZT4qsykMwi9vTvXMN/4CJvBT1aEl
 3nliiJP3WgP0yGL7sRa4IUqcDl2ZgAqZTMbcTbPyO8EtK37qQ5cWsptbK
 SUqbiWGef4cSO0SXBi7VViFMgr4Z3TQaKNex8u6J1HhwpLMi9Xdtst4t3
 dltee4zmrA0SkDqtErkWUBUGbcUNbcZjAEYYJ6XhvN/ThIPz0xWhoA4XC w==;
X-CSE-ConnectionGUID: +Vq+DkPTREeekO+csEqm0Q==
X-CSE-MsgGUID: N68zuMtJRl2Dxs9UysHSEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41443348"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41443348"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:11:51 -0800
X-CSE-ConnectionGUID: reySODsxQ1aqTrnaIsilmg==
X-CSE-MsgGUID: Zr0nnY2+Q5e/+ZrfsMoT/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85277872"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 08:11:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 18:11:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/10] drm/i915/crt: Rename some variables
Date: Thu,  7 Nov 2024 18:11:22 +0200
Message-ID: <20241107161123.16269-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename a bunch of local variables to the preferred
encoder/connector from intel_encoder/intel_connector.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 44 +++++++++++-------------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 5c3c6bc16a9e..b243ab51bdf0 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -861,7 +861,7 @@ intel_crt_detect(struct drm_connector *connector,
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
-	struct intel_encoder *intel_encoder = &crt->base;
+	struct intel_encoder *encoder = &crt->base;
 	struct drm_atomic_state *state;
 	intel_wakeref_t wakeref;
 	int status;
@@ -877,8 +877,7 @@ intel_crt_detect(struct drm_connector *connector,
 		return connector->status;
 
 	if (display->params.load_detect_test) {
-		wakeref = intel_display_power_get(dev_priv,
-						  intel_encoder->power_domain);
+		wakeref = intel_display_power_get(dev_priv, encoder->power_domain);
 		goto load_detect;
 	}
 
@@ -886,8 +885,7 @@ intel_crt_detect(struct drm_connector *connector,
 	if (dmi_check_system(intel_spurious_crt_detect))
 		return connector_status_disconnected;
 
-	wakeref = intel_display_power_get(dev_priv,
-					  intel_encoder->power_domain);
+	wakeref = intel_display_power_get(dev_priv, encoder->power_domain);
 
 	if (I915_HAS_HOTPLUG(display)) {
 		/* We can not rely on the HPD pin always being correctly wired
@@ -944,7 +942,7 @@ intel_crt_detect(struct drm_connector *connector,
 	}
 
 out:
-	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
+	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
 
 	return status;
 }
@@ -954,7 +952,7 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
-	struct intel_encoder *intel_encoder = &crt->base;
+	struct intel_encoder *encoder = &crt->base;
 	intel_wakeref_t wakeref;
 	struct i2c_adapter *ddc;
 	int ret;
@@ -962,8 +960,7 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	if (!intel_display_driver_check_access(dev_priv))
 		return drm_edid_connector_add_modes(connector);
 
-	wakeref = intel_display_power_get(dev_priv,
-					  intel_encoder->power_domain);
+	wakeref = intel_display_power_get(dev_priv, encoder->power_domain);
 
 	ret = intel_crt_ddc_get_modes(connector, connector->ddc);
 	if (ret || !IS_G4X(dev_priv))
@@ -974,7 +971,7 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	ret = intel_crt_ddc_get_modes(connector, ddc);
 
 out:
-	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
+	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
 
 	return ret;
 }
@@ -1026,9 +1023,8 @@ static const struct drm_encoder_funcs intel_crt_enc_funcs = {
 void intel_crt_init(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	struct drm_connector *connector;
+	struct intel_connector *connector;
 	struct intel_crt *crt;
-	struct intel_connector *intel_connector;
 	i915_reg_t adpa_reg;
 	u8 ddc_pin;
 	u32 adpa;
@@ -1063,17 +1059,17 @@ void intel_crt_init(struct intel_display *display)
 	if (!crt)
 		return;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
+	connector = intel_connector_alloc();
+	if (!connector) {
 		kfree(crt);
 		return;
 	}
 
 	ddc_pin = display->vbt.crt_ddc_pin;
 
-	connector = &intel_connector->base;
-	crt->connector = intel_connector;
-	drm_connector_init_with_ddc(display->drm, connector,
+	crt->connector = connector;
+
+	drm_connector_init_with_ddc(display->drm, &connector->base,
 				    &intel_crt_connector_funcs,
 				    DRM_MODE_CONNECTOR_VGA,
 				    intel_gmbus_get_adapter(display, ddc_pin));
@@ -1081,7 +1077,7 @@ void intel_crt_init(struct intel_display *display)
 	drm_encoder_init(display->drm, &crt->base.base, &intel_crt_enc_funcs,
 			 DRM_MODE_ENCODER_DAC, "CRT");
 
-	intel_connector_attach_encoder(intel_connector, &crt->base);
+	intel_connector_attach_encoder(connector, &crt->base);
 
 	crt->base.type = INTEL_OUTPUT_ANALOG;
 	crt->base.cloneable = BIT(INTEL_OUTPUT_DVO) | BIT(INTEL_OUTPUT_HDMI);
@@ -1091,7 +1087,7 @@ void intel_crt_init(struct intel_display *display)
 		crt->base.pipe_mask = ~0;
 
 	if (DISPLAY_VER(display) != 2)
-		connector->interlace_allowed = true;
+		connector->base.interlace_allowed = true;
 
 	crt->adpa_reg = adpa_reg;
 
@@ -1101,11 +1097,11 @@ void intel_crt_init(struct intel_display *display)
 	    !dmi_check_system(intel_spurious_crt_detect)) {
 		crt->base.hpd_pin = HPD_CRT;
 		crt->base.hotplug = intel_encoder_hotplug;
-		intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
+		connector->polled = DRM_CONNECTOR_POLL_HPD;
 	} else {
-		intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
+		connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 	}
-	intel_connector->base.polled = intel_connector->polled;
+	connector->base.polled = connector->polled;
 
 	if (HAS_DDI(display)) {
 		assert_port_valid(dev_priv, PORT_E);
@@ -1138,9 +1134,9 @@ void intel_crt_init(struct intel_display *display)
 		crt->base.get_hw_state = intel_crt_get_hw_state;
 		crt->base.enable = intel_enable_crt;
 	}
-	intel_connector->get_hw_state = intel_connector_get_hw_state;
+	connector->get_hw_state = intel_connector_get_hw_state;
 
-	drm_connector_helper_add(connector, &intel_crt_connector_helper_funcs);
+	drm_connector_helper_add(&connector->base, &intel_crt_connector_helper_funcs);
 
 	/*
 	 * TODO: find a proper way to discover whether we need to set the the
-- 
2.45.2

