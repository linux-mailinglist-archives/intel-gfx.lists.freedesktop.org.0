Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPwNNezg3GnrXgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 820BB3EBEEA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132E710E429;
	Mon, 13 Apr 2026 12:26:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="aw1P8DfC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F3610E840;
 Thu,  9 Apr 2026 17:09:24 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id 3F44DC5C18A;
 Thu,  9 Apr 2026 17:09:58 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 738B4603E4;
 Thu,  9 Apr 2026 17:09:23 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 0ADDA1045019C; 
 Thu,  9 Apr 2026 19:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1775754561; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=nAa49l6nByOD1QkrhvY6Ps2x0QzEkFpU0dCbNZY9aF8=;
 b=aw1P8DfCqZJvx+99QBmguuJ7MVbCrmNpryXOEuwm5gYIpjNqGh9vF9Q6NhunCZPeTggqw6
 BhFSb4P5aJnTwyK92yjrixqXHaYm5Q8whGLaFWWr4/3sJfoFIHqEl1xW4gOv4jgWeftwd5
 V7oOMIp+qYzGlJ2R1d9dOqyc2rKmTIhoFDPIjSrV4WE1pNlyNdW85IANCtFDQF2rzOf7Bv
 H2JTCW7MHmr0QHaelVVM6yz3g0TDjdrtLMZh5OubPZMbEyiRul6TOgkaktRHc5ahGtdFVS
 xh2adRdbwcL7yHtNmYK03B0r+m31UTOwNHcKH+nwpSTfhRBcEMn5TH7d93Iuvw==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Thu, 09 Apr 2026 19:08:24 +0200
Subject: [PATCH RFC 08/12] drm/i915/display: Switch to managed for
 connector
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-feat_link_cap-v1-8-7069e8199ce2@bootlin.com>
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
In-Reply-To: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Dave Airlie <airlied@redhat.com>, 
 Jesse Barnes <jbarnes@virtuousgeek.org>, Eric Anholt <eric@anholt.net>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chris Wilson <chris@chris-wilson.co.uk>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Simona Vetter <simona.vetter@ffwll.ch>, 
 Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.14-dev-d4707
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Approved-At: Mon, 13 Apr 2026 12:26:15 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[91];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 820BB3EBEEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The current i915 driver uses non-managed function to create connector. It
is not an issue yet, but in order to comply with the latest DRM
requirement, convert this code to use drm and device managed helpers.

Assisted-by: Claude Code:2.1.90
Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c          | 14 ++---
 drivers/gpu/drm/i915/display/g4x_hdmi.c        | 10 ++--
 drivers/gpu/drm/i915/display/icl_dsi.c         | 30 +++++------
 drivers/gpu/drm/i915/display/intel_connector.c | 26 ++++++---
 drivers/gpu/drm/i915/display/intel_connector.h |  5 +-
 drivers/gpu/drm/i915/display/intel_crt.c       | 19 +++----
 drivers/gpu/drm/i915/display/intel_ddi.c       | 14 +++--
 drivers/gpu/drm/i915/display/intel_dp.c        | 12 +++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c    | 13 ++++-
 drivers/gpu/drm/i915/display/intel_dvo.c       | 21 ++++----
 drivers/gpu/drm/i915/display/intel_hdmi.c      | 15 ++++--
 drivers/gpu/drm/i915/display/intel_lvds.c      | 18 ++++---
 drivers/gpu/drm/i915/display/intel_sdvo.c      | 73 +++++++++-----------------
 drivers/gpu/drm/i915/display/intel_tv.c        | 15 +++---
 drivers/gpu/drm/i915/display/vlv_dsi.c         | 20 ++++---
 15 files changed, 153 insertions(+), 152 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 99b6c5ce39b2a..e7c3d72d223ee 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1299,7 +1299,7 @@ bool g4x_dp_init(struct intel_display *display,
 	if (!dig_port)
 		return false;
 
-	intel_connector = intel_connector_alloc();
+	intel_connector = intel_connector_alloc(display->drm);
 	if (!intel_connector)
 		return false;
 
@@ -1311,11 +1311,11 @@ bool g4x_dp_init(struct intel_display *display,
 	if (drmm_encoder_init(display->drm, &intel_encoder->base,
 			      &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			      "DP %c", port_name(port)))
-		goto err_encoder_init;
+		return false;
 
 	if (drmm_add_action_or_reset(display->drm,
 				     intel_dp_encoder_flush_work_cleanup, encoder))
-		goto err_encoder_init;
+		return false;
 
 	intel_encoder_link_check_init(intel_encoder, intel_dp_link_check);
 
@@ -1412,14 +1412,10 @@ bool g4x_dp_init(struct intel_display *display,
 
 	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
 	if (dig_port->aux_ch == AUX_CH_NONE)
-		goto err_encoder_init;
+		return false;
 
 	if (!intel_dp_init_connector(dig_port, intel_connector))
-		goto err_encoder_init;
+		return false;
 
 	return true;
-
-err_encoder_init:
-	kfree(intel_connector);
-	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 45ee1ad504bc1..ab964194e63d0 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -690,7 +690,7 @@ bool g4x_hdmi_init(struct intel_display *display,
 	if (!dig_port)
 		return false;
 
-	intel_connector = intel_connector_alloc();
+	intel_connector = intel_connector_alloc(display->drm);
 	if (!intel_connector)
 		return false;
 
@@ -701,7 +701,7 @@ bool g4x_hdmi_init(struct intel_display *display,
 	if (drmm_encoder_init(display->drm, &intel_encoder->base,
 			      &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			      "HDMI %c", port_name(port)))
-		goto err_encoder_init;
+		return false;
 
 	intel_encoder->hotplug = intel_hdmi_hotplug;
 	intel_encoder->compute_config = g4x_hdmi_compute_config;
@@ -763,11 +763,7 @@ bool g4x_hdmi_init(struct intel_display *display,
 	intel_infoframe_init(dig_port);
 
 	if (!intel_hdmi_init_connector(dig_port, intel_connector))
-		goto err_encoder_init;
+		return false;
 
 	return true;
-err_encoder_init:
-	kfree(intel_connector);
-
-	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index cfee173a2367a..3d7372f473d95 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1783,7 +1783,6 @@ static const struct drm_connector_funcs gen11_dsi_connector_funcs = {
 	.detect = intel_panel_detect,
 	.late_register = intel_connector_register,
 	.early_unregister = intel_connector_unregister,
-	.destroy = intel_connector_destroy,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_get_property = intel_digital_connector_atomic_get_property,
 	.atomic_set_property = intel_digital_connector_atomic_set_property,
@@ -1935,11 +1934,9 @@ void icl_dsi_init(struct intel_display *display,
 	if (IS_ERR(intel_dsi))
 		return;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
-		kfree(intel_dsi);
+	intel_connector = intel_connector_alloc(display->drm);
+	if (!intel_connector)
 		return;
-	}
 
 	encoder = &intel_dsi->base;
 	intel_dsi->attached_connector = intel_connector;
@@ -1969,10 +1966,16 @@ void icl_dsi_init(struct intel_display *display,
 	encoder->shutdown = intel_dsi_shutdown;
 
 	/* register DSI connector with DRM subsystem */
-	drm_connector_init(display->drm, connector,
-			   &gen11_dsi_connector_funcs,
-			   DRM_MODE_CONNECTOR_DSI);
+	drmm_connector_init(display->drm, connector,
+			    &gen11_dsi_connector_funcs,
+			    DRM_MODE_CONNECTOR_DSI, NULL);
 	drm_connector_helper_add(connector, &gen11_dsi_connector_helper_funcs);
+
+	if (drmm_add_action_or_reset(display->drm, intel_connector_destroy, intel_connector)) {
+		drm_err(display->drm, "Failed to register intel_connector_destroy clean-up.\n");
+		return;
+	}
+
 	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
 	intel_connector->get_hw_state = intel_connector_get_hw_state;
 
@@ -1989,7 +1992,7 @@ void icl_dsi_init(struct intel_display *display,
 
 	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
 		drm_err(display->drm, "DSI fixed mode info missing\n");
-		goto err;
+		return;
 	}
 
 	intel_panel_init(intel_connector, NULL);
@@ -2012,22 +2015,17 @@ void icl_dsi_init(struct intel_display *display,
 
 		host = intel_dsi_host_init(intel_dsi, &gen11_dsi_host_ops, port);
 		if (!host)
-			goto err;
+			return;
 
 		intel_dsi->dsi_hosts[port] = host;
 	}
 
 	if (!intel_dsi_vbt_init(intel_dsi, MIPI_DSI_GENERIC_PANEL_ID)) {
 		drm_dbg_kms(display->drm, "no device found\n");
-		goto err;
+		return;
 	}
 
 	icl_dphy_param_init(intel_dsi);
 
 	icl_dsi_add_properties(intel_connector);
-	return;
-
-err:
-	drm_connector_cleanup(connector);
-	kfree(intel_connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 7ef9338d67abf..6fb64c6f4c9e4 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -28,6 +28,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -101,7 +102,21 @@ static int intel_connector_init(struct intel_connector *connector)
 	return 0;
 }
 
-struct intel_connector *intel_connector_alloc(void)
+struct intel_connector *intel_connector_alloc(struct drm_device *dev)
+{
+	struct intel_connector *connector;
+
+	connector = drmm_kzalloc(dev, sizeof(*connector), GFP_KERNEL);
+	if (!connector)
+		return NULL;
+
+	if (intel_connector_init(connector) < 0)
+		return NULL;
+
+	return connector;
+}
+
+struct intel_connector *intel_subconnector_alloc(void)
 {
 	struct intel_connector *connector;
 
@@ -127,15 +142,14 @@ struct intel_connector *intel_connector_alloc(void)
 void intel_connector_free(struct intel_connector *connector)
 {
 	kfree(to_intel_digital_connector_state(connector->base.state));
-	kfree(connector);
 }
 
 /*
  * Connector type independent destroy hook for drm_connector_funcs.
  */
-void intel_connector_destroy(struct drm_connector *connector)
+void intel_connector_destroy(struct drm_device *dev, void *data)
 {
-	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_connector *intel_connector = (struct intel_connector *)data;
 
 	drm_edid_free(intel_connector->detect_edid);
 
@@ -143,12 +157,8 @@ void intel_connector_destroy(struct drm_connector *connector)
 
 	intel_panel_fini(intel_connector);
 
-	drm_connector_cleanup(connector);
-
 	if (intel_connector->mst.port)
 		drm_dp_mst_put_port_malloc(intel_connector->mst.port);
-
-	kfree(connector);
 }
 
 int intel_connector_register(struct drm_connector *_connector)
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index 0aa86626e6463..6c47ca46c1d18 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -14,9 +14,10 @@ struct i2c_adapter;
 struct intel_connector;
 struct intel_encoder;
 
-struct intel_connector *intel_connector_alloc(void);
+struct intel_connector *intel_connector_alloc(struct drm_device *dev);
+struct intel_connector *intel_subconnector_alloc(void);
 void intel_connector_free(struct intel_connector *connector);
-void intel_connector_destroy(struct drm_connector *connector);
+void intel_connector_destroy(struct drm_device *dev, void *data);
 int intel_connector_register(struct drm_connector *connector);
 void intel_connector_unregister(struct drm_connector *connector);
 void intel_connector_attach_encoder(struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 39bb115955f5a..8af76d141888b 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -992,7 +992,6 @@ static const struct drm_connector_funcs intel_crt_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.late_register = intel_connector_register,
 	.early_unregister = intel_connector_unregister,
-	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 };
@@ -1046,19 +1045,21 @@ void intel_crt_init(struct intel_display *display)
 	if (IS_ERR(crt))
 		return;
 
-	connector = intel_connector_alloc();
-	if (!connector) {
-		kfree(crt);
+	connector = intel_connector_alloc(display->drm);
+	if (!connector)
 		return;
-	}
 
 	ddc_pin = display->vbt.crt_ddc_pin;
 
-	drm_connector_init_with_ddc(display->drm, &connector->base,
-				    &intel_crt_connector_funcs,
-				    DRM_MODE_CONNECTOR_VGA,
-				    intel_gmbus_get_adapter(display, ddc_pin));
+	drmm_connector_init(display->drm, &connector->base,
+			    &intel_crt_connector_funcs,
+			    DRM_MODE_CONNECTOR_VGA,
+			    intel_gmbus_get_adapter(display, ddc_pin));
 
+	if (drmm_add_action_or_reset(display->drm, intel_connector_destroy, connector)) {
+		drm_err(display->drm, "Failed to register intel_connector_destroy clean-up.\n");
+		return;
+	}
 
 	intel_connector_attach_encoder(connector, &crt->base);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 003287ad5bc59..bb87a7361aa92 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4694,7 +4694,7 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
 
-	connector = intel_connector_alloc();
+	connector = intel_connector_alloc(display->drm);
 	if (!connector)
 		return -ENOMEM;
 
@@ -4709,10 +4709,8 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	dig_port->dp.voltage_max = intel_ddi_dp_voltage_max;
 	dig_port->dp.preemph_max = intel_ddi_dp_preemph_max;
 
-	if (!intel_dp_init_connector(dig_port, connector)) {
-		kfree(connector);
+	if (!intel_dp_init_connector(dig_port, connector))
 		return -EINVAL;
-	}
 
 	if (dig_port->base.type == INTEL_OUTPUT_EDP) {
 		struct drm_privacy_screen *privacy_screen;
@@ -4892,12 +4890,13 @@ static bool bdw_digital_port_connected(struct intel_encoder *encoder)
 	return intel_de_read(display, GEN8_DE_PORT_ISR) & bit;
 }
 
-static int intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
+static int intel_ddi_init_hdmi_connector(struct drm_device *dev,
+					 struct intel_digital_port *dig_port)
 {
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
 
-	connector = intel_connector_alloc();
+	connector = intel_connector_alloc(dev);
 	if (!connector)
 		return -ENOMEM;
 
@@ -4910,7 +4909,6 @@ static int intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 		 * don't fail the entire DDI init.
 		 */
 		dig_port->hdmi.hdmi_reg = INVALID_MMIO_REG;
-		kfree(connector);
 	}
 
 	return 0;
@@ -5499,7 +5497,7 @@ void intel_ddi_init(struct intel_display *display,
 	 * but leave it just in case we have some really bad VBTs...
 	 */
 	if (encoder->type != INTEL_OUTPUT_EDP && init_hdmi) {
-		if (intel_ddi_init_hdmi_connector(dig_port))
+		if (intel_ddi_init_hdmi_connector(display->drm, dig_port))
 			return;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 71f206adbebd3..2af64de9c81de 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -47,6 +47,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_fixed.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -6810,7 +6811,6 @@ static const struct drm_connector_funcs intel_dp_connector_funcs = {
 	.atomic_set_property = intel_digital_connector_atomic_set_property,
 	.late_register = intel_dp_connector_register,
 	.early_unregister = intel_dp_connector_unregister,
-	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 	.oob_hotplug_event = intel_dp_oob_hotplug_event,
@@ -7213,10 +7213,15 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
 		    encoder->base.base.id, encoder->base.name);
 
-	drm_connector_init_with_ddc(dev, &connector->base, &intel_dp_connector_funcs,
-				    type, &intel_dp->aux.ddc);
+	drmm_connector_init(dev, &connector->base, &intel_dp_connector_funcs,
+			    type, &intel_dp->aux.ddc);
 	drm_connector_helper_add(&connector->base, &intel_dp_connector_helper_funcs);
 
+	if (drmm_add_action_or_reset(dev, intel_connector_destroy, connector)) {
+		drm_err(dev, "Failed to register intel_connector_destroy clean-up.\n");
+		goto fail;
+	}
+
 	if (!HAS_GMCH(display) && DISPLAY_VER(display) < 12)
 		connector->base.interlace_allowed = true;
 
@@ -7260,7 +7265,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 fail:
 	intel_display_power_flush_work(display);
-	drm_connector_cleanup(&connector->base);
 
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5fe6fbcaf9371..4b0cdb61c33d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1438,13 +1438,22 @@ mst_connector_early_unregister(struct drm_connector *_connector)
 	drm_dp_mst_connector_early_unregister(&connector->base, connector->mst.port);
 }
 
+static void mst_connector_destroy(struct drm_connector *connector)
+{
+	struct intel_connector *intel_connector = to_intel_connector(connector);
+
+	intel_connector_destroy(connector->dev, intel_connector);
+	drm_connector_cleanup(connector);
+	kfree(connector);
+}
+
 static const struct drm_connector_funcs mst_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_get_property = intel_digital_connector_atomic_get_property,
 	.atomic_set_property = intel_digital_connector_atomic_set_property,
 	.late_register = mst_connector_late_register,
 	.early_unregister = mst_connector_early_unregister,
-	.destroy = intel_connector_destroy,
+	.destroy = mst_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 };
@@ -1769,7 +1778,7 @@ mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
 	enum pipe pipe;
 	int ret;
 
-	connector = intel_connector_alloc();
+	connector = intel_subconnector_alloc();
 	if (!connector)
 		return NULL;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index ea2f6426fd77d..1f84cc44598bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -362,7 +362,6 @@ static const struct drm_connector_funcs intel_dvo_connector_funcs = {
 	.detect = intel_dvo_detect,
 	.late_register = intel_connector_register,
 	.early_unregister = intel_connector_unregister,
-	.destroy = intel_connector_destroy,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
@@ -496,11 +495,9 @@ void intel_dvo_init(struct intel_display *display)
 	if (!intel_dvo)
 		return;
 
-	connector = intel_connector_alloc();
-	if (!connector) {
-		kfree(intel_dvo);
+	connector = intel_connector_alloc(display->drm);
+	if (!connector)
 		return;
-	}
 
 	intel_dvo->attached_connector = connector;
 
@@ -547,13 +544,19 @@ void intel_dvo_init(struct intel_display *display)
 			DRM_CONNECTOR_POLL_DISCONNECT;
 	connector->base.polled = connector->polled;
 
-	drm_connector_init_with_ddc(display->drm, &connector->base,
-				    &intel_dvo_connector_funcs,
-				    intel_dvo_connector_type(&intel_dvo->dev),
-				    intel_gmbus_get_adapter(display, GMBUS_PIN_DPC));
+	drmm_connector_init(display->drm, &connector->base,
+			    &intel_dvo_connector_funcs,
+			    intel_dvo_connector_type(&intel_dvo->dev),
+			    intel_gmbus_get_adapter(display, GMBUS_PIN_DPC));
 
 	drm_connector_helper_add(&connector->base,
 				 &intel_dvo_connector_helper_funcs);
+
+	if (drmm_add_action_or_reset(display->drm, intel_connector_destroy, connector)) {
+		drm_err(display->drm, "Failed to register intel_connector_destroy clean-up.\n");
+		return;
+	}
+
 	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB;
 
 	intel_connector_attach_encoder(connector, encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 05e898d10a2be..f744bae14eaf2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -39,6 +39,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/intel/intel_lpe_audio.h>
@@ -2650,7 +2651,6 @@ static const struct drm_connector_funcs intel_hdmi_connector_funcs = {
 	.atomic_set_property = intel_digital_connector_atomic_set_property,
 	.late_register = intel_hdmi_connector_register,
 	.early_unregister = intel_hdmi_connector_unregister,
-	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 };
@@ -3083,13 +3083,18 @@ bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 	if (!ddc_pin)
 		return false;
 
-	drm_connector_init_with_ddc(dev, connector,
-				    &intel_hdmi_connector_funcs,
-				    DRM_MODE_CONNECTOR_HDMIA,
-				    intel_gmbus_get_adapter(display, ddc_pin));
+	drmm_connector_init(dev, connector,
+			    &intel_hdmi_connector_funcs,
+			    DRM_MODE_CONNECTOR_HDMIA,
+			    intel_gmbus_get_adapter(display, ddc_pin));
 
 	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
 
+	if (drmm_add_action_or_reset(display->drm, intel_connector_destroy, intel_connector)) {
+		drm_err(dev, "Failed to register intel_connector_destroy clean-up.\n");
+		return false;
+	}
+
 	if (DISPLAY_VER(display) < 12)
 		connector->interlace_allowed = true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 7bb99eb44a5a4..567eda1720261 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -512,7 +512,6 @@ static const struct drm_connector_funcs intel_lvds_connector_funcs = {
 	.atomic_set_property = intel_digital_connector_atomic_set_property,
 	.late_register = intel_connector_register,
 	.early_unregister = intel_connector_unregister,
-	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 };
@@ -891,18 +890,23 @@ void intel_lvds_init(struct intel_display *display)
 	if (IS_ERR(lvds_encoder))
 		return;
 
-	connector = intel_connector_alloc();
+	encoder = &lvds_encoder->base;
+
+	connector = intel_connector_alloc(display->drm);
 	if (!connector)
 		return;
 
 	lvds_encoder->attached_connector = connector;
-	encoder = &lvds_encoder->base;
 
-	drm_connector_init_with_ddc(display->drm, &connector->base,
-				    &intel_lvds_connector_funcs,
-				    DRM_MODE_CONNECTOR_LVDS,
-				    intel_gmbus_get_adapter(display, ddc_pin));
+	drmm_connector_init(display->drm, &connector->base,
+			    &intel_lvds_connector_funcs,
+			    DRM_MODE_CONNECTOR_LVDS,
+			    intel_gmbus_get_adapter(display, ddc_pin));
 
+	if (drmm_add_action_or_reset(display->drm, intel_connector_destroy, connector)) {
+		drm_err(display->drm, "Failed to register intel_connector_destroy clean-up.\n");
+		return;
+	}
 
 	encoder->enable = intel_enable_lvds;
 	encoder->pre_enable = intel_pre_enable_lvds;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index f5aaa38002674..af3a250f637e1 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2507,7 +2507,6 @@ static const struct drm_connector_funcs intel_sdvo_connector_funcs = {
 	.atomic_set_property = intel_sdvo_connector_atomic_set_property,
 	.late_register = intel_connector_register,
 	.early_unregister = intel_connector_unregister,
-	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_sdvo_connector_duplicate_state,
 };
@@ -2730,17 +2729,23 @@ intel_sdvo_connector_init(struct intel_sdvo_connector *connector,
 	if (HAS_DDC(connector))
 		ddc = intel_sdvo_select_ddc_bus(encoder, connector);
 
-	ret = drm_connector_init_with_ddc(encoder->base.base.dev,
-					  &connector->base.base,
-					  &intel_sdvo_connector_funcs,
-					  connector->base.base.connector_type,
-					  ddc ? &ddc->ddc : NULL);
+	ret = drmm_connector_init(encoder->base.base.dev,
+				  &connector->base.base,
+				  &intel_sdvo_connector_funcs,
+				  connector->base.base.connector_type,
+				  ddc ? &ddc->ddc : NULL);
 	if (ret < 0)
 		return ret;
 
 	drm_connector_helper_add(&connector->base.base,
 				 &intel_sdvo_connector_helper_funcs);
 
+	ret = drmm_add_action_or_reset(display->drm, intel_connector_destroy, &connector->base);
+	if (ret) {
+		drm_err(display->drm, "Failed to register intel_connector_destroy clean-up.\n");
+		return ret;
+	}
+
 	connector->base.base.display_info.subpixel_order = SubPixelHorizontalRGB;
 	connector->base.base.interlace_allowed = true;
 	connector->base.get_hw_state = intel_sdvo_connector_get_hw_state;
@@ -2765,20 +2770,18 @@ intel_sdvo_add_hdmi_properties(struct intel_sdvo *intel_sdvo,
 	intel_attach_aspect_ratio_property(&connector->base.base);
 }
 
-static struct intel_sdvo_connector *intel_sdvo_connector_alloc(void)
+static struct intel_sdvo_connector *intel_sdvo_connector_alloc(struct drm_device *dev)
 {
 	struct intel_sdvo_connector *sdvo_connector;
 	struct intel_sdvo_connector_state *conn_state;
 
-	sdvo_connector = kzalloc_obj(*sdvo_connector);
+	sdvo_connector = drmm_kzalloc(dev, sizeof(*sdvo_connector), GFP_KERNEL);
 	if (!sdvo_connector)
 		return NULL;
 
 	conn_state = kzalloc_obj(*conn_state);
-	if (!conn_state) {
-		kfree(sdvo_connector);
+	if (!conn_state)
 		return NULL;
-	}
 
 	__drm_atomic_helper_connector_reset(&sdvo_connector->base.base,
 					    &conn_state->base.base);
@@ -2800,7 +2803,7 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, u16 type)
 
 	drm_dbg_kms(display->drm, "initialising DVI type 0x%x\n", type);
 
-	intel_sdvo_connector = intel_sdvo_connector_alloc();
+	intel_sdvo_connector = intel_sdvo_connector_alloc(display->drm);
 	if (!intel_sdvo_connector)
 		return false;
 
@@ -2830,10 +2833,8 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, u16 type)
 		intel_sdvo_connector->is_hdmi = true;
 	}
 
-	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
-		kfree(intel_sdvo_connector);
+	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0)
 		return false;
-	}
 
 	if (intel_sdvo_connector->is_hdmi)
 		intel_sdvo_add_hdmi_properties(intel_sdvo, intel_sdvo_connector);
@@ -2852,7 +2853,7 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, u16 type)
 
 	drm_dbg_kms(display->drm, "initialising TV type 0x%x\n", type);
 
-	intel_sdvo_connector = intel_sdvo_connector_alloc();
+	intel_sdvo_connector = intel_sdvo_connector_alloc(display->drm);
 	if (!intel_sdvo_connector)
 		return false;
 
@@ -2863,10 +2864,8 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, u16 type)
 
 	intel_sdvo_connector->output_flag = type;
 
-	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
-		kfree(intel_sdvo_connector);
+	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0)
 		return false;
-	}
 
 	if (!intel_sdvo_tv_create_property(intel_sdvo, intel_sdvo_connector, type))
 		return false;
@@ -2888,7 +2887,7 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, u16 type)
 
 	drm_dbg_kms(display->drm, "initialising analog type 0x%x\n", type);
 
-	intel_sdvo_connector = intel_sdvo_connector_alloc();
+	intel_sdvo_connector = intel_sdvo_connector_alloc(display->drm);
 	if (!intel_sdvo_connector)
 		return false;
 
@@ -2901,10 +2900,8 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, u16 type)
 
 	intel_sdvo_connector->output_flag = type;
 
-	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
-		kfree(intel_sdvo_connector);
+	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0)
 		return false;
-	}
 
 	return true;
 }
@@ -2920,7 +2917,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 
 	drm_dbg_kms(display->drm, "initialising LVDS type 0x%x\n", type);
 
-	intel_sdvo_connector = intel_sdvo_connector_alloc();
+	intel_sdvo_connector = intel_sdvo_connector_alloc(display->drm);
 	if (!intel_sdvo_connector)
 		return false;
 
@@ -2931,10 +2928,8 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 
 	intel_sdvo_connector->output_flag = type;
 
-	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
-		kfree(intel_sdvo_connector);
+	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0)
 		return false;
-	}
 
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		return false;
@@ -3038,19 +3033,6 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 	return true;
 }
 
-static void intel_sdvo_output_cleanup(struct intel_sdvo *intel_sdvo)
-{
-	struct intel_display *display = to_intel_display(&intel_sdvo->base);
-	struct drm_connector *connector, *tmp;
-
-	list_for_each_entry_safe(connector, tmp,
-				 &display->drm->mode_config.connector_list, head) {
-		if (intel_attached_encoder(to_intel_connector(connector)) == &intel_sdvo->base) {
-			drm_connector_unregister(connector);
-			intel_connector_destroy(connector);
-		}
-	}
-}
 
 static bool intel_sdvo_tv_create_property(struct intel_sdvo *intel_sdvo,
 					  struct intel_sdvo_connector *intel_sdvo_connector,
@@ -3443,7 +3425,7 @@ bool intel_sdvo_init(struct intel_display *display,
 			    "SDVO output failed to setup on %s\n",
 			    SDVO_NAME(intel_sdvo));
 		/* Output_setup can leave behind connectors! */
-		goto err_output;
+		return false;
 	}
 
 	/*
@@ -3469,12 +3451,12 @@ bool intel_sdvo_init(struct intel_display *display,
 
 	/* Set the input timing to the screen. Assume always input 0. */
 	if (!intel_sdvo_set_target_input(intel_sdvo))
-		goto err_output;
+		return false;
 
 	if (!intel_sdvo_get_input_pixel_clock_range(intel_sdvo,
 						    &intel_sdvo->pixel_clock_min,
 						    &intel_sdvo->pixel_clock_max))
-		goto err_output;
+		return false;
 
 	drm_dbg_kms(display->drm, "%s device VID/DID: %02X:%02X.%02X, "
 		    "clock range %dMHz - %dMHz, "
@@ -3495,9 +3477,4 @@ bool intel_sdvo_init(struct intel_display *display,
 		    (SDVO_OUTPUT_TMDS1 | SDVO_OUTPUT_RGB1 |
 		     SDVO_OUTPUT_LVDS1) ? 'Y' : 'N');
 	return true;
-
-err_output:
-	intel_sdvo_output_cleanup(intel_sdvo);
-
-	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 05df0acc6dc3e..d473d915909e0 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1841,7 +1841,6 @@ intel_tv_get_modes(struct drm_connector *connector)
 static const struct drm_connector_funcs intel_tv_connector_funcs = {
 	.late_register = intel_connector_register,
 	.early_unregister = intel_connector_unregister,
-	.destroy = intel_connector_destroy,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_tv_connector_duplicate_state,
@@ -1971,11 +1970,9 @@ intel_tv_init(struct intel_display *display)
 	if (IS_ERR(intel_tv))
 		return;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
-		kfree(intel_tv);
+	intel_connector = intel_connector_alloc(display->drm);
+	if (!intel_connector)
 		return;
-	}
 
 	intel_encoder = &intel_tv->base;
 	connector = &intel_connector->base;
@@ -1993,9 +1990,13 @@ intel_tv_init(struct intel_display *display)
 	intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 	intel_connector->base.polled = intel_connector->polled;
 
-	drm_connector_init(display->drm, connector, &intel_tv_connector_funcs,
-			   DRM_MODE_CONNECTOR_SVIDEO);
+	drmm_connector_init(display->drm, connector, &intel_tv_connector_funcs,
+			    DRM_MODE_CONNECTOR_SVIDEO, NULL);
 
+	if (drmm_add_action_or_reset(display->drm, intel_connector_destroy, intel_connector)) {
+		drm_err(display->drm, "Failed to register intel_connector_destroy clean-up.\n");
+		return;
+	}
 
 	intel_encoder->compute_config = intel_tv_compute_config;
 	intel_encoder->get_config = intel_tv_get_config;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index e84edb6242716..726f4190a8398 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1560,7 +1560,6 @@ static const struct drm_connector_funcs intel_dsi_connector_funcs = {
 	.detect = intel_panel_detect,
 	.late_register = intel_connector_register,
 	.early_unregister = intel_connector_unregister,
-	.destroy = intel_connector_destroy,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_get_property = intel_digital_connector_atomic_get_property,
 	.atomic_set_property = intel_digital_connector_atomic_set_property,
@@ -1924,7 +1923,7 @@ void vlv_dsi_init(struct intel_display *display)
 	if (IS_ERR(intel_dsi))
 		return;
 
-	connector = intel_connector_alloc();
+	connector = intel_connector_alloc(display->drm);
 	if (!connector)
 		return;
 
@@ -2011,11 +2010,16 @@ void vlv_dsi_init(struct intel_display *display)
 	intel_dsi_vbt_gpio_init(intel_dsi,
 				intel_dsi_get_hw_state(encoder, &pipe));
 
-	drm_connector_init(display->drm, &connector->base, &intel_dsi_connector_funcs,
-			   DRM_MODE_CONNECTOR_DSI);
+	drmm_connector_init(display->drm, &connector->base, &intel_dsi_connector_funcs,
+			    DRM_MODE_CONNECTOR_DSI, NULL);
 
 	drm_connector_helper_add(&connector->base, &intel_dsi_connector_helper_funcs);
 
+	if (drmm_add_action_or_reset(display->drm, intel_connector_destroy, connector)) {
+		drm_err(display->drm, "Failed to register intel_connector_destroy clean-up.\n");
+		return;
+	}
+
 	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/
 
 	intel_connector_attach_encoder(connector, encoder);
@@ -2026,7 +2030,7 @@ void vlv_dsi_init(struct intel_display *display)
 
 	if (!intel_panel_preferred_fixed_mode(connector)) {
 		drm_dbg_kms(display->drm, "no fixed mode\n");
-		goto err_cleanup_connector;
+		return;
 	}
 
 	dmi_id = dmi_first_match(vlv_dsi_dmi_quirk_table);
@@ -2042,10 +2046,4 @@ void vlv_dsi_init(struct intel_display *display)
 	intel_backlight_setup(connector, INVALID_PIPE);
 
 	vlv_dsi_add_properties(connector);
-
-	return;
-
-err_cleanup_connector:
-	drm_connector_cleanup(&connector->base);
-	kfree(connector);
 }

-- 
2.43.0

