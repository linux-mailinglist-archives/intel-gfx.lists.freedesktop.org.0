Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 410586FCAB1
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 18:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02FF210E033;
	Tue,  9 May 2023 16:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4EA310E169
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 16:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683648181; x=1715184181;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Zq9fRN8xSZFXm9ySaoJZfb6MWtSw+lJ2enrCoWRJgEU=;
 b=OC+w68Par+ObIsSB6rI/IKOBPgZ53rTIaN+VvYOIUr0NjrEwe3iyqUqH
 wz2lZ2dd2XYljAw1ggt0cYyiFN08xPqKopfsMJucf3GzSm5czsv9DC5OH
 JF99AmBku6hwdXlkC1Zz7CMa6ielRKKpZBG52v94T41l0TI2iINUAZfY5
 pKvCKg1RpuIK3NyJS/5DTZASFnsSMe4aP8qXGcTQaEh5Ot1961ClqX8bG
 2uZP8DeOPyrNsO/fP4AMUhE4MtGYE4Cn8boNeV/HtqdMPm/fv9ru2T4o6
 E8CYHl5GOXaD2I7faHxARV/tww0tdFAMOaavJcLg1Wies7ZZRmsmDlrLM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="339205186"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="339205186"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 09:02:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="823158629"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="823158629"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 09 May 2023 09:02:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 May 2023 19:02:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 May 2023 19:02:06 +0300
Message-Id: <20230509160206.25971-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230509160206.25971-1-ville.syrjala@linux.intel.com>
References: <20230509160206.25971-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Nuke
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
index ac0fc1993376..64eb11a45265 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2677,8 +2677,9 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
 	supports_tbt = intel_bios_encoder_supports_tbt(devdata);
 
 	drm_dbg_kms(&i915->drm,
-		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
+		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%d DP++:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
 		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp, is_dsi,
+		    intel_bios_encoder_supports_dp_dual_mode(devdata),
 		    intel_bios_encoder_is_lspcon(devdata),
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
@@ -3426,7 +3427,7 @@ bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
 	return false;
 }
 
-static bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata)
+bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata)
 {
 	const struct child_device_config *child = &devdata->child;
 
@@ -3445,15 +3446,6 @@ static bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_enc
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
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 8a0730c9b48c..45fae97d9719 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -247,7 +247,6 @@ bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
 bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i2c_pin);
 bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
-bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
 bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
@@ -264,6 +263,7 @@ bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdat
 bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 61a2b63ab4d2..c2464f98c76e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2400,7 +2400,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
-	enum port port = hdmi_to_dig_port(hdmi)->base.port;
+	struct intel_encoder *encoder = &hdmi_to_dig_port(hdmi)->base;
 	struct i2c_adapter *adapter =
 		intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
 	enum drm_dp_dual_mode_type type = drm_dp_dual_mode_detect(&dev_priv->drm, adapter);
@@ -2416,7 +2416,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 	 */
 	if (type == DRM_DP_DUAL_MODE_UNKNOWN) {
 		if (!connector->force &&
-		    intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
+		    intel_bios_encoder_supports_dp_dual_mode(encoder->devdata)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Assuming DP dual mode adaptor presence based on VBT\n");
 			type = DRM_DP_DUAL_MODE_TYPE1_DVI;
@@ -2439,7 +2439,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 
 	/* Older VBTs are often buggy and can't be trusted :( Play it safe. */
 	if ((DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv)) &&
-	    !intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
+	    !intel_bios_encoder_supports_dp_dual_mode(encoder->devdata)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Ignoring DP dual mode adaptor max TMDS clock for native HDMI port\n");
 		hdmi->dp_dual_mode.max_tmds_clock = 0;
-- 
2.39.2

