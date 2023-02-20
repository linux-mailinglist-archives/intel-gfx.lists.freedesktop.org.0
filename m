Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C646869D23B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 18:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2AC10E741;
	Mon, 20 Feb 2023 17:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717D310E741
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676915118; x=1708451118;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Cr4B8QSgTHAOQvF3uQzl36OceIVyRAscn9A7AAaOGD4=;
 b=mMrGQRCiPZvPS9N4Gw/A4P7HIb5EyHhGxBFvLFRgZHkb2rehTcgVSCXC
 VbROJ7HsD3YifZiFSv0lEEEFzwLPtGcDwE3Zjeyz/GMMbqLgdcKLWbzYV
 JPXnN39Pnh+Itm9tgCskSCRudEBZPVNnXmR56Fu7x0Lrdp0OwRM3EX/i9
 omZbF0ey+DXqe8CZgFFuc7OUOevt6Xlt26SPWW4uLEcaGtnrsOyDXZSqg
 lXsp9OpGyzGd3aeGDB0K7ojfiWIRoBr09rgBA4cHAscvboIc0U75gDR0y
 2Bl5+feiEuWsW6ooIy+x16wHl6cxQdLOyPDHzgGK4PDJQ9inpep7+Kknl A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312085345"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="312085345"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 09:45:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701745253"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="701745253"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 20 Feb 2023 09:45:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 19:45:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 19:44:40 +0200
Message-Id: <20230220174448.7611-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
References: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/17] drm/i915: Nuke
 intel_bios_is_port_dp_dual_mode()
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

Now that we have encoder->devdata everwhere we don't need
the intel_bios_is_port_dp_dual_mode() wrapper any more.

And while at it let's include it in the child device log
dump as well since the logic in there is a bit more complex
than just DP&&HDMI.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 14 +++-----------
 drivers/gpu/drm/i915/display/intel_bios.h |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c |  6 +++---
 3 files changed, 7 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index cec38ed935e0..4ddced8c049c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2676,10 +2676,11 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
 	supports_typec_usb = intel_bios_encoder_supports_typec_usb(devdata);
 	supports_tbt = intel_bios_encoder_supports_tbt(devdata);
 
 	drm_dbg_kms(&i915->drm,
-		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
+		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%d DP++:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
 		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp, is_dsi,
+		    intel_bios_encoder_supports_dp_dual_mode(devdata),
 		    intel_bios_encoder_is_lspcon(devdata),
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
 
@@ -3432,9 +3433,9 @@ bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
 
 	return false;
 }
 
-static bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata)
+bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata)
 {
 	const struct child_device_config *child = &devdata->child;
 
 	if (!intel_bios_encoder_supports_dp(devdata) ||
@@ -3451,17 +3452,8 @@ static bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_enc
 
 	return false;
 }
 
-bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *i915,
-				     enum port port)
-{
-	const struct intel_bios_encoder_data *devdata =
-		intel_bios_encoder_data_lookup(i915, port);
-
-	return devdata && intel_bios_encoder_supports_dp_dual_mode(devdata);
-}
-
 /**
  * intel_bios_is_dsi_present - is DSI present in VBT
  * @i915:	i915 device instance
  * @port:	port for DSI if present
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index a3ff67c41128..3c4f7d5e909b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -246,9 +246,8 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size);
 bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
 bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i2c_pin);
 bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
-bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
 bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
 			       int dsc_max_bpc);
@@ -265,8 +264,9 @@ bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devd
 bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
 enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index c7e9e1fbed37..e6f887d75a70 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2371,9 +2371,9 @@ static void
 intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
-	enum port port = hdmi_to_dig_port(hdmi)->base.port;
+	struct intel_encoder *encoder = &hdmi_to_dig_port(hdmi)->base;
 	struct i2c_adapter *adapter =
 		intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
 	enum drm_dp_dual_mode_type type = drm_dp_dual_mode_detect(&dev_priv->drm, adapter);
 
@@ -2387,9 +2387,9 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 	 * if the port is a dual mode capable DP port.
 	 */
 	if (type == DRM_DP_DUAL_MODE_UNKNOWN) {
 		if (!connector->force &&
-		    intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
+		    intel_bios_encoder_supports_dp_dual_mode(encoder->devdata)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Assuming DP dual mode adaptor presence based on VBT\n");
 			type = DRM_DP_DUAL_MODE_TYPE1_DVI;
 		} else {
@@ -2410,9 +2410,9 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 		    hdmi->dp_dual_mode.max_tmds_clock);
 
 	/* Older VBTs are often buggy and can't be trusted :( Play it safe. */
 	if ((DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv)) &&
-	    !intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
+	    !intel_bios_encoder_supports_dp_dual_mode(encoder->devdata)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Ignoring DP dual mode adaptor max TMDS clock for native HDMI port\n");
 		hdmi->dp_dual_mode.max_tmds_clock = 0;
 	}
-- 
2.39.2

