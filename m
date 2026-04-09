Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICj4Mu7g3GnrXgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DA43EBF0F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A6510E42D;
	Mon, 13 Apr 2026 12:26:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="f4o385lf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557F910E837;
 Thu,  9 Apr 2026 17:09:20 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id F3CA9C5C18D;
 Thu,  9 Apr 2026 17:09:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 34F8E603E4;
 Thu,  9 Apr 2026 17:09:19 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 126CF104501D0; 
 Thu,  9 Apr 2026 19:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1775754557; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=4zTCftcFdbHfd09YrMB7pNOLoJLsMARPpzU+VDQDU9A=;
 b=f4o385lfqOAkrmNLvJ9Gebbr6dmxUMzNZxPRmLmKv3kF/71x+Ts4PIonuNEqt/77LxftL/
 Is2Z+9xyBGoCTHvwhCaImazbNjTtN+QA/OMrCr0ceczKRJhX4d43m+xpAyfVfR1odEfkzr
 vEeSPQh0tamrA+yZG/lLfboIdgIZ5LxjaWcS6AfiSRz7FCl+vv+So0j/tmq2BU6ztDP+pt
 MfbixRkFrTpcbRgpgpzXzIB8w6WvhyHebsM5tGZHoDxebemRb+2NQp2wHxuDcNYlGLng9P
 57c7aqybDXWFS8E1UpI7Y5jZw70rubz7/KbxN3JHbDLw11GVVq3G71fsTIX9Aw==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Thu, 09 Apr 2026 19:08:23 +0200
Subject: [PATCH RFC 07/12] drm/i915/display: Switch to managed for encoder
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-feat_link_cap-v1-7-7069e8199ce2@bootlin.com>
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
X-Rspamd-Queue-Id: 79DA43EBF0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The current i915 driver uses non-managed function to create encoder. It
is not an issue yet, but in order to comply with the latest DRM
requirement, convert this code to use drm and device managed helpers.

Assisted-by: Claude Code:2.1.90
Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        | 31 ++++++++---------
 drivers/gpu/drm/i915/display/g4x_hdmi.c      | 19 ++++-------
 drivers/gpu/drm/i915/display/icl_dsi.c       | 20 +++--------
 drivers/gpu/drm/i915/display/intel_crt.c     |  9 +++--
 drivers/gpu/drm/i915/display/intel_ddi.c     | 50 +++++++++++++++-------------
 drivers/gpu/drm/i915/display/intel_display.c |  8 -----
 drivers/gpu/drm/i915/display/intel_display.h |  1 -
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 20 +++--------
 drivers/gpu/drm/i915/display/intel_dvo.c     | 22 ++++++------
 drivers/gpu/drm/i915/display/intel_encoder.c |  6 ++--
 drivers/gpu/drm/i915/display/intel_encoder.h |  3 +-
 drivers/gpu/drm/i915/display/intel_lvds.c    | 13 +++-----
 drivers/gpu/drm/i915/display/intel_sdvo.c    | 45 +++++++++++--------------
 drivers/gpu/drm/i915/display/intel_tv.c      | 11 +++---
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 22 +++++-------
 15 files changed, 114 insertions(+), 166 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 5e74d8a3ba5c8..99b6c5ce39b2a 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -7,6 +7,7 @@
 
 #include <linux/string_helpers.h>
 
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 
 #include "g4x_dp.h"
@@ -1250,12 +1251,9 @@ static void g4x_dp_suspend_complete(struct intel_encoder *encoder)
 	intel_encoder_link_check_flush_work(encoder);
 }
 
-static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
+static void intel_dp_encoder_flush_work_cleanup(struct drm_device *drm, void *data)
 {
-	intel_dp_encoder_flush_work(encoder);
-
-	drm_encoder_cleanup(encoder);
-	kfree(enc_to_dig_port(to_intel_encoder(encoder)));
+	intel_dp_encoder_flush_work(data);
 }
 
 static void intel_dp_encoder_reset(struct drm_encoder *encoder)
@@ -1276,7 +1274,6 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
 
 static const struct drm_encoder_funcs intel_dp_enc_funcs = {
 	.reset = intel_dp_encoder_reset,
-	.destroy = intel_dp_encoder_destroy,
 };
 
 bool g4x_dp_init(struct intel_display *display,
@@ -1298,22 +1295,26 @@ bool g4x_dp_init(struct intel_display *display,
 		drm_dbg_kms(display->drm, "No VBT child device for DP-%c\n",
 			    port_name(port));
 
-	dig_port = intel_dig_port_alloc();
+	dig_port = intel_dig_port_alloc(display->drm);
 	if (!dig_port)
 		return false;
 
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector)
-		goto err_connector_alloc;
+		return false;
 
 	intel_encoder = &dig_port->base;
 	encoder = &intel_encoder->base;
 
 	intel_encoder->devdata = devdata;
 
-	if (drm_encoder_init(display->drm, &intel_encoder->base,
-			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
-			     "DP %c", port_name(port)))
+	if (drmm_encoder_init(display->drm, &intel_encoder->base,
+			      &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
+			      "DP %c", port_name(port)))
+		goto err_encoder_init;
+
+	if (drmm_add_action_or_reset(display->drm,
+				     intel_dp_encoder_flush_work_cleanup, encoder))
 		goto err_encoder_init;
 
 	intel_encoder_link_check_init(intel_encoder, intel_dp_link_check);
@@ -1411,18 +1412,14 @@ bool g4x_dp_init(struct intel_display *display,
 
 	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
 	if (dig_port->aux_ch == AUX_CH_NONE)
-		goto err_init_connector;
+		goto err_encoder_init;
 
 	if (!intel_dp_init_connector(dig_port, intel_connector))
-		goto err_init_connector;
+		goto err_encoder_init;
 
 	return true;
 
-err_init_connector:
-	drm_encoder_cleanup(encoder);
 err_encoder_init:
 	kfree(intel_connector);
-err_connector_alloc:
-	kfree(dig_port);
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 5fe5067c4237c..45ee1ad504bc1 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -5,6 +5,7 @@
  * HDMI support for G4x,ILK,SNB,IVB,VLV,CHV (HSW+ handled by the DDI code).
  */
 
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 
 #include "g4x_hdmi.h"
@@ -562,7 +563,6 @@ static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
 }
 
 static const struct drm_encoder_funcs intel_hdmi_enc_funcs = {
-	.destroy = intel_encoder_destroy,
 };
 
 static enum intel_hotplug_state
@@ -686,21 +686,21 @@ bool g4x_hdmi_init(struct intel_display *display,
 		drm_dbg_kms(display->drm, "No VBT child device for HDMI-%c\n",
 			    port_name(port));
 
-	dig_port = intel_dig_port_alloc();
+	dig_port = intel_dig_port_alloc(display->drm);
 	if (!dig_port)
 		return false;
 
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector)
-		goto err_connector_alloc;
+		return false;
 
 	intel_encoder = &dig_port->base;
 
 	intel_encoder->devdata = devdata;
 
-	if (drm_encoder_init(display->drm, &intel_encoder->base,
-			     &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
-			     "HDMI %c", port_name(port)))
+	if (drmm_encoder_init(display->drm, &intel_encoder->base,
+			      &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
+			      "HDMI %c", port_name(port)))
 		goto err_encoder_init;
 
 	intel_encoder->hotplug = intel_hdmi_hotplug;
@@ -763,16 +763,11 @@ bool g4x_hdmi_init(struct intel_display *display,
 	intel_infoframe_init(dig_port);
 
 	if (!intel_hdmi_init_connector(dig_port, intel_connector))
-		goto err_init_connector;
+		goto err_encoder_init;
 
 	return true;
-
-err_init_connector:
-	drm_encoder_cleanup(&intel_encoder->base);
 err_encoder_init:
 	kfree(intel_connector);
-err_connector_alloc:
-	kfree(dig_port);
 
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index afbaa0465842a..cfee173a2367a 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -30,6 +30,7 @@
 #include <drm/display/drm_dsc_helper.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fixed.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
@@ -1775,13 +1776,7 @@ static bool gen11_dsi_initial_fastset_check(struct intel_encoder *encoder,
 	return true;
 }
 
-static void gen11_dsi_encoder_destroy(struct drm_encoder *encoder)
-{
-	intel_encoder_destroy(encoder);
-}
-
 static const struct drm_encoder_funcs gen11_dsi_encoder_funcs = {
-	.destroy = gen11_dsi_encoder_destroy,
 };
 
 static const struct drm_connector_funcs gen11_dsi_connector_funcs = {
@@ -1934,8 +1929,10 @@ void icl_dsi_init(struct intel_display *display,
 	if (port == PORT_NONE)
 		return;
 
-	intel_dsi = kzalloc_obj(*intel_dsi);
-	if (!intel_dsi)
+	intel_dsi = drmm_encoder_alloc(display->drm, struct intel_dsi, base.base,
+				       &gen11_dsi_encoder_funcs,
+				       DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
+	if (IS_ERR(intel_dsi))
 		return;
 
 	intel_connector = intel_connector_alloc();
@@ -1950,11 +1947,6 @@ void icl_dsi_init(struct intel_display *display,
 
 	encoder->devdata = devdata;
 
-	/* register DSI encoder with DRM subsystem */
-	drm_encoder_init(display->drm, &encoder->base,
-			 &gen11_dsi_encoder_funcs,
-			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
-
 	encoder->pre_pll_enable = gen11_dsi_pre_pll_enable;
 	encoder->pre_enable = gen11_dsi_pre_enable;
 	encoder->enable = gen11_dsi_enable;
@@ -2037,7 +2029,5 @@ void icl_dsi_init(struct intel_display *display,
 
 err:
 	drm_connector_cleanup(connector);
-	drm_encoder_cleanup(&encoder->base);
-	kfree(intel_dsi);
 	kfree(intel_connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 6aa6a1dd6e1b0..39bb115955f5a 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -31,6 +31,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 #include <video/vga.h>
@@ -1004,7 +1005,6 @@ static const struct drm_connector_helper_funcs intel_crt_connector_helper_funcs
 
 static const struct drm_encoder_funcs intel_crt_enc_funcs = {
 	.reset = intel_crt_reset,
-	.destroy = intel_encoder_destroy,
 };
 
 void intel_crt_init(struct intel_display *display)
@@ -1041,8 +1041,9 @@ void intel_crt_init(struct intel_display *display)
 		intel_de_write(display, adpa_reg, adpa);
 	}
 
-	crt = kzalloc_obj(struct intel_crt);
-	if (!crt)
+	crt = drmm_encoder_alloc(display->drm, struct intel_crt, base.base,
+				 &intel_crt_enc_funcs, DRM_MODE_ENCODER_DAC, "CRT");
+	if (IS_ERR(crt))
 		return;
 
 	connector = intel_connector_alloc();
@@ -1058,8 +1059,6 @@ void intel_crt_init(struct intel_display *display)
 				    DRM_MODE_CONNECTOR_VGA,
 				    intel_gmbus_get_adapter(display, ddc_pin));
 
-	drm_encoder_init(display->drm, &crt->base.base, &intel_crt_enc_funcs,
-			 DRM_MODE_ENCODER_DAC, "CRT");
 
 	intel_connector_attach_encoder(connector, &crt->base);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ebefa889bc8c5..003287ad5bc59 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -31,6 +31,7 @@
 
 #include <drm/display/drm_dp_helper.h>
 #include <drm/display/drm_scdc_helper.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_privacy_screen_consumer.h>
 
@@ -4644,19 +4645,19 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 	return 0;
 }
 
-static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
+static void intel_ddi_encoder_cleanup(struct drm_device *drm, void *data)
 {
-	struct intel_display *display = to_intel_display(encoder->dev);
-	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
+	struct intel_digital_port *dig_port = data;
+	struct intel_display *display = to_intel_display(&dig_port->base);
 
-	intel_dp_encoder_flush_work(encoder);
-	if (intel_encoder_is_tc(&dig_port->base))
-		intel_tc_port_cleanup(dig_port);
+	intel_dp_encoder_flush_work(&dig_port->base.base);
 	intel_display_power_flush_work(display);
-
-	drm_encoder_cleanup(encoder);
 	kfree(dig_port->hdcp.port_data.streams);
-	kfree(dig_port);
+}
+
+static void intel_tc_port_cleanup_action(struct drm_device *drm, void *data)
+{
+	intel_tc_port_cleanup(data);
 }
 
 static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
@@ -4684,7 +4685,6 @@ static int intel_ddi_encoder_late_register(struct drm_encoder *_encoder)
 
 static const struct drm_encoder_funcs intel_ddi_funcs = {
 	.reset = intel_ddi_encoder_reset,
-	.destroy = intel_ddi_encoder_destroy,
 	.late_register = intel_ddi_encoder_late_register,
 };
 
@@ -5243,16 +5243,20 @@ void intel_ddi_init(struct intel_display *display,
 			    phy_name(phy));
 	}
 
-	dig_port = intel_dig_port_alloc();
+	dig_port = intel_dig_port_alloc(display->drm);
 	if (!dig_port)
 		return;
 
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
 
-	drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
-			 DRM_MODE_ENCODER_TMDS, "%s",
-			 intel_ddi_encoder_name(display, port, phy, &encoder_name));
+	if (drmm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
+			      DRM_MODE_ENCODER_TMDS, "%s",
+			      intel_ddi_encoder_name(display, port, phy, &encoder_name)))
+		return;
+
+	if (drmm_add_action_or_reset(display->drm, intel_ddi_encoder_cleanup, dig_port))
+		return;
 
 	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
 
@@ -5411,7 +5415,7 @@ void intel_ddi_init(struct intel_display *display,
 	if (need_aux_ch(encoder, init_dp)) {
 		dig_port->aux_ch = intel_dp_aux_ch(encoder);
 		if (dig_port->aux_ch == AUX_CH_NONE)
-			goto err;
+			return;
 	}
 
 	/*
@@ -5447,7 +5451,11 @@ void intel_ddi_init(struct intel_display *display,
 		dig_port->unlock = intel_tc_port_unlock;
 
 		if (intel_tc_port_init(dig_port, is_legacy) < 0)
-			goto err;
+			return;
+
+		if (drmm_add_action_or_reset(display->drm,
+					     intel_tc_port_cleanup_action, dig_port))
+			return;
 	}
 
 	drm_WARN_ON(display->drm, port > PORT_I);
@@ -5478,7 +5486,7 @@ void intel_ddi_init(struct intel_display *display,
 
 	if (init_dp) {
 		if (intel_ddi_init_dp_connector(dig_port))
-			goto err;
+			return;
 
 		dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
@@ -5492,12 +5500,6 @@ void intel_ddi_init(struct intel_display *display,
 	 */
 	if (encoder->type != INTEL_OUTPUT_EDP && init_hdmi) {
 		if (intel_ddi_init_hdmi_connector(dig_port))
-			goto err;
+			return;
 	}
-
-	return;
-
-err:
-	drm_encoder_cleanup(&encoder->base);
-	kfree(dig_port);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 10b6c6fcb03f6..049a796da4c38 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2192,14 +2192,6 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 		i830_enable_pipe(display, pipe);
 }
 
-void intel_encoder_destroy(struct drm_encoder *encoder)
-{
-	struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
-
-	drm_encoder_cleanup(encoder);
-	kfree(intel_encoder);
-}
-
 static bool intel_crtc_supports_double_wide(const struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 552a59d19e0f6..6c2681738e6b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -416,7 +416,6 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
 void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
-void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder);
 void intel_encoder_get_config(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 887b6de14e467..5fe6fbcaf9371 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -30,6 +30,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_fixed.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -1645,16 +1646,7 @@ static const struct drm_connector_helper_funcs mst_connector_helper_funcs = {
 	.detect_ctx = mst_connector_detect_ctx,
 };
 
-static void mst_stream_encoder_destroy(struct drm_encoder *encoder)
-{
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(to_intel_encoder(encoder));
-
-	drm_encoder_cleanup(encoder);
-	kfree(intel_mst);
-}
-
 static const struct drm_encoder_funcs mst_stream_encoder_funcs = {
-	.destroy = mst_stream_encoder_destroy,
 };
 
 static bool mst_connector_get_hw_state(struct intel_connector *connector)
@@ -1850,18 +1842,16 @@ mst_stream_encoder_create(struct intel_digital_port *dig_port, enum pipe pipe)
 	struct intel_dp_mst_encoder *intel_mst;
 	struct intel_encoder *encoder;
 
-	intel_mst = kzalloc_obj(*intel_mst);
-
-	if (!intel_mst)
+	intel_mst = drmm_encoder_alloc(display->drm, struct intel_dp_mst_encoder,
+				       base.base, &mst_stream_encoder_funcs,
+				       DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
+	if (IS_ERR(intel_mst))
 		return NULL;
 
 	intel_mst->pipe = pipe;
 	encoder = &intel_mst->base;
 	intel_mst->primary = dig_port;
 
-	drm_encoder_init(display->drm, &encoder->base, &mst_stream_encoder_funcs,
-			 DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
-
 	encoder->type = INTEL_OUTPUT_DP_MST;
 	encoder->power_domain = primary_encoder->power_domain;
 	encoder->port = primary_encoder->port;
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 405b33aca9dde..ea2f6426fd77d 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -31,6 +31,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -372,18 +373,15 @@ static const struct drm_connector_helper_funcs intel_dvo_connector_helper_funcs
 	.get_modes = intel_dvo_get_modes,
 };
 
-static void intel_dvo_enc_destroy(struct drm_encoder *encoder)
+static void intel_dvo_dev_destroy(struct drm_device *drm, void *data)
 {
-	struct intel_dvo *intel_dvo = enc_to_dvo(to_intel_encoder(encoder));
+	struct intel_dvo *intel_dvo = data;
 
 	if (intel_dvo->dev.dev_ops->destroy)
 		intel_dvo->dev.dev_ops->destroy(&intel_dvo->dev);
-
-	intel_encoder_destroy(encoder);
 }
 
 static const struct drm_encoder_funcs intel_dvo_enc_funcs = {
-	.destroy = intel_dvo_enc_destroy,
 };
 
 static int intel_dvo_encoder_type(const struct intel_dvo_device *dvo)
@@ -494,7 +492,7 @@ void intel_dvo_init(struct intel_display *display)
 	struct intel_encoder *encoder;
 	struct intel_dvo *intel_dvo;
 
-	intel_dvo = kzalloc_obj(*intel_dvo);
+	intel_dvo = drmm_kzalloc(display->drm, sizeof(*intel_dvo), GFP_KERNEL);
 	if (!intel_dvo)
 		return;
 
@@ -517,13 +515,15 @@ void intel_dvo_init(struct intel_display *display)
 	connector->get_hw_state = intel_dvo_connector_get_hw_state;
 
 	if (!intel_dvo_probe(display, intel_dvo)) {
-		kfree(intel_dvo);
 		intel_connector_free(connector);
 		return;
 	}
 
 	assert_port_valid(display, intel_dvo->dev.port);
 
+	if (drmm_add_action_or_reset(display->drm, intel_dvo_dev_destroy, intel_dvo))
+		return;
+
 	encoder->type = INTEL_OUTPUT_DVO;
 	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
 	encoder->port = intel_dvo->dev.port;
@@ -533,10 +533,10 @@ void intel_dvo_init(struct intel_display *display)
 		encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
 			BIT(INTEL_OUTPUT_DVO);
 
-	drm_encoder_init(display->drm, &encoder->base,
-			 &intel_dvo_enc_funcs,
-			 intel_dvo_encoder_type(&intel_dvo->dev),
-			 "DVO %c", port_name(encoder->port));
+	drmm_encoder_init(display->drm, &encoder->base,
+			  &intel_dvo_enc_funcs,
+			  intel_dvo_encoder_type(&intel_dvo->dev),
+			  "DVO %c", port_name(encoder->port));
 
 	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] detected %s\n",
 		    encoder->base.base.id, encoder->base.name,
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
index d01b081a60740..2ebd1e4457482 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.c
+++ b/drivers/gpu/drm/i915/display/intel_encoder.c
@@ -5,6 +5,8 @@
 
 #include <linux/workqueue.h>
 
+#include <drm/drm_managed.h>
+
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_encoder.h"
@@ -104,11 +106,11 @@ void intel_encoder_shutdown_all(struct intel_display *display)
 			encoder->shutdown_complete(encoder);
 }
 
-struct intel_digital_port *intel_dig_port_alloc(void)
+struct intel_digital_port *intel_dig_port_alloc(struct drm_device *drm)
 {
 	struct intel_digital_port *dig_port;
 
-	dig_port = kzalloc_obj(*dig_port);
+	dig_port = drmm_kzalloc(drm, sizeof(*dig_port), GFP_KERNEL);
 	if (!dig_port)
 		return NULL;
 
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
index ace0fe1a8f27a..42f3982970065 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.h
+++ b/drivers/gpu/drm/i915/display/intel_encoder.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_ENCODER_H__
 #define __INTEL_ENCODER_H__
 
+struct drm_device;
 struct intel_digital_port;
 struct intel_display;
 struct intel_encoder;
@@ -21,6 +22,6 @@ void intel_encoder_shutdown_all(struct intel_display *display);
 void intel_encoder_block_all_hpds(struct intel_display *display);
 void intel_encoder_unblock_all_hpds(struct intel_display *display);
 
-struct intel_digital_port *intel_dig_port_alloc(void);
+struct intel_digital_port *intel_dig_port_alloc(struct drm_device *drm);
 
 #endif /* __INTEL_ENCODER_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e78a41e2b268c..7bb99eb44a5a4 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -37,6 +37,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -517,7 +518,6 @@ static const struct drm_connector_funcs intel_lvds_connector_funcs = {
 };
 
 static const struct drm_encoder_funcs intel_lvds_enc_funcs = {
-	.destroy = intel_encoder_destroy,
 };
 
 static int intel_no_lvds_dmi_callback(const struct dmi_system_id *id)
@@ -886,15 +886,14 @@ void intel_lvds_init(struct intel_display *display)
 			    "LVDS is not present in VBT, but enabled anyway\n");
 	}
 
-	lvds_encoder = kzalloc_obj(*lvds_encoder);
-	if (!lvds_encoder)
+	lvds_encoder = drmm_encoder_alloc(display->drm, struct intel_lvds_encoder, base.base,
+					  &intel_lvds_enc_funcs, DRM_MODE_ENCODER_LVDS, "LVDS");
+	if (IS_ERR(lvds_encoder))
 		return;
 
 	connector = intel_connector_alloc();
-	if (!connector) {
-		kfree(lvds_encoder);
+	if (!connector)
 		return;
-	}
 
 	lvds_encoder->attached_connector = connector;
 	encoder = &lvds_encoder->base;
@@ -904,8 +903,6 @@ void intel_lvds_init(struct intel_display *display)
 				    DRM_MODE_CONNECTOR_LVDS,
 				    intel_gmbus_get_adapter(display, ddc_pin));
 
-	drm_encoder_init(display->drm, &encoder->base, &intel_lvds_enc_funcs,
-			 DRM_MODE_ENCODER_LVDS, "LVDS");
 
 	encoder->enable = intel_enable_lvds;
 	encoder->pre_enable = intel_pre_enable_lvds;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 6eb2b4b45a9b4..f5aaa38002674 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -36,6 +36,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_eld.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -2542,24 +2543,19 @@ static const struct drm_connector_helper_funcs intel_sdvo_connector_helper_funcs
 	.atomic_check = intel_sdvo_atomic_check,
 };
 
-static void intel_sdvo_encoder_destroy(struct drm_encoder *_encoder)
+static void intel_sdvo_unselect_i2c_bus(struct intel_sdvo *sdvo);
+
+static void intel_sdvo_cleanup(struct drm_device *drm, void *data)
 {
-	struct intel_encoder *encoder = to_intel_encoder(_encoder);
-	struct intel_sdvo *sdvo = to_sdvo(encoder);
+	struct intel_sdvo *intel_sdvo = data;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(sdvo->ddc); i++) {
-		if (sdvo->ddc[i].ddc_bus)
-			i2c_del_adapter(&sdvo->ddc[i].ddc);
+	for (i = 0; i < ARRAY_SIZE(intel_sdvo->ddc); i++) {
+		if (intel_sdvo->ddc[i].ddc_bus)
+			i2c_del_adapter(&intel_sdvo->ddc[i].ddc);
 	}
-
-	drm_encoder_cleanup(&encoder->base);
-	kfree(sdvo);
-};
-
-static const struct drm_encoder_funcs intel_sdvo_enc_funcs = {
-	.destroy = intel_sdvo_encoder_destroy,
-};
+	intel_sdvo_unselect_i2c_bus(intel_sdvo);
+}
 
 static int
 intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo,
@@ -3381,8 +3377,9 @@ bool intel_sdvo_init(struct intel_display *display,
 	if (!assert_sdvo_port_valid(display, port))
 		return false;
 
-	intel_sdvo = kzalloc_obj(*intel_sdvo);
-	if (!intel_sdvo)
+	intel_sdvo = drmm_encoder_alloc(display->drm, struct intel_sdvo, base.base,
+					NULL, 0, "SDVO %c", port_name(port));
+	if (IS_ERR(intel_sdvo))
 		return false;
 
 	/* encoder type will be decided later */
@@ -3391,15 +3388,14 @@ bool intel_sdvo_init(struct intel_display *display,
 	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
 	intel_encoder->port = port;
 
-	drm_encoder_init(display->drm, &intel_encoder->base,
-			 &intel_sdvo_enc_funcs, 0,
-			 "SDVO %c", port_name(port));
-
 	intel_sdvo->sdvo_reg = sdvo_reg;
 	intel_sdvo->target_addr = intel_sdvo_get_target_addr(intel_sdvo) >> 1;
 
 	intel_sdvo_select_i2c_bus(intel_sdvo);
 
+	if (drmm_add_action_or_reset(display->drm, intel_sdvo_cleanup, intel_sdvo))
+		return false;
+
 	/* Read the regs to test if we can talk to the device */
 	for (i = 0; i < 0x40; i++) {
 		u8 byte;
@@ -3408,7 +3404,7 @@ bool intel_sdvo_init(struct intel_display *display,
 			drm_dbg_kms(display->drm,
 				    "No SDVO device found on %s\n",
 				    SDVO_NAME(intel_sdvo));
-			goto err;
+			return false;
 		}
 	}
 
@@ -3428,7 +3424,7 @@ bool intel_sdvo_init(struct intel_display *display,
 
 	/* In default case sdvo lvds is false */
 	if (!intel_sdvo_get_capabilities(intel_sdvo, &intel_sdvo->caps))
-		goto err;
+		return false;
 
 	intel_sdvo->colorimetry_cap =
 		intel_sdvo_get_colorimetry_cap(intel_sdvo);
@@ -3439,7 +3435,7 @@ bool intel_sdvo_init(struct intel_display *display,
 		ret = intel_sdvo_init_ddc_proxy(&intel_sdvo->ddc[i],
 						intel_sdvo, i + 1);
 		if (ret)
-			goto err;
+			return false;
 	}
 
 	if (!intel_sdvo_output_setup(intel_sdvo)) {
@@ -3502,9 +3498,6 @@ bool intel_sdvo_init(struct intel_display *display,
 
 err_output:
 	intel_sdvo_output_cleanup(intel_sdvo);
-err:
-	intel_sdvo_unselect_i2c_bus(intel_sdvo);
-	intel_sdvo_encoder_destroy(&intel_encoder->base);
 
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 8fbf0adb56992..05df0acc6dc3e 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -33,6 +33,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -1881,7 +1882,6 @@ static const struct drm_connector_helper_funcs intel_tv_connector_helper_funcs =
 };
 
 static const struct drm_encoder_funcs intel_tv_enc_funcs = {
-	.destroy = intel_encoder_destroy,
 };
 
 static void intel_tv_add_properties(struct drm_connector *connector)
@@ -1966,10 +1966,10 @@ intel_tv_init(struct intel_display *display)
 	    (tv_dac_off & TVDAC_STATE_CHG_EN) != 0)
 		return;
 
-	intel_tv = kzalloc_obj(*intel_tv);
-	if (!intel_tv) {
+	intel_tv = drmm_encoder_alloc(display->drm, struct intel_tv, base.base,
+				      &intel_tv_enc_funcs, DRM_MODE_ENCODER_TVDAC, "TV");
+	if (IS_ERR(intel_tv))
 		return;
-	}
 
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector) {
@@ -1996,9 +1996,6 @@ intel_tv_init(struct intel_display *display)
 	drm_connector_init(display->drm, connector, &intel_tv_connector_funcs,
 			   DRM_MODE_CONNECTOR_SVIDEO);
 
-	drm_encoder_init(display->drm, &intel_encoder->base,
-			 &intel_tv_enc_funcs,
-			 DRM_MODE_ENCODER_TVDAC, "TV");
 
 	intel_encoder->compute_config = intel_tv_compute_config;
 	intel_encoder->get_config = intel_tv_get_config;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index d4db73c184e5c..e84edb6242716 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -30,6 +30,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -1531,7 +1532,6 @@ static void intel_dsi_unprepare(struct intel_encoder *encoder)
 }
 
 static const struct drm_encoder_funcs intel_dsi_funcs = {
-	.destroy = intel_encoder_destroy,
 };
 
 static enum drm_mode_status vlv_dsi_mode_valid(struct drm_connector *connector,
@@ -1918,22 +1918,19 @@ void vlv_dsi_init(struct intel_display *display)
 	else
 		display->dsi.mmio_base = VLV_MIPI_BASE;
 
-	intel_dsi = kzalloc_obj(*intel_dsi);
-	if (!intel_dsi)
+	intel_dsi = drmm_encoder_alloc(display->drm, struct intel_dsi, base.base,
+				       &intel_dsi_funcs, DRM_MODE_ENCODER_DSI,
+				       "DSI %c", port_name(port));
+	if (IS_ERR(intel_dsi))
 		return;
 
 	connector = intel_connector_alloc();
-	if (!connector) {
-		kfree(intel_dsi);
+	if (!connector)
 		return;
-	}
 
 	encoder = &intel_dsi->base;
 	intel_dsi->attached_connector = connector;
 
-	drm_encoder_init(display->drm, &encoder->base, &intel_dsi_funcs,
-			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
-
 	encoder->compute_config = intel_dsi_compute_config;
 	encoder->pre_enable = intel_dsi_pre_enable;
 	if (display->platform.geminilake || display->platform.broxton)
@@ -1985,14 +1982,14 @@ void vlv_dsi_init(struct intel_display *display)
 		host = intel_dsi_host_init(intel_dsi, &intel_dsi_host_ops,
 					   port);
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
 
 	/* Use clock read-back from current hw-state for fastboot */
@@ -2050,8 +2047,5 @@ void vlv_dsi_init(struct intel_display *display)
 
 err_cleanup_connector:
 	drm_connector_cleanup(&connector->base);
-err:
-	drm_encoder_cleanup(&encoder->base);
-	kfree(intel_dsi);
 	kfree(connector);
 }

-- 
2.43.0

