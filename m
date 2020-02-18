Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2068B1635B8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:04:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D196EAB5;
	Tue, 18 Feb 2020 22:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A226EAAA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:03:40 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id j78so7884141ybg.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 14:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1xFrPsR+pjvWrrTqLwAtnCgdK8XyTUkpgkcfWZE6OuQ=;
 b=HjKFQ8zX41XCdED2ya1dkpvNb3SVU+BGBlEMZwP5a1BltQjLzzmdBVdZL5tH8ywZYx
 xcl1xyM/3enpOnBYXmGdbE8V/VjA/A20MCLqkLNwQ0tEfW8QhGRBssvBfkhZ4z0Egjoa
 6PUDJulcBMJoM3BOak2KAp1adi+W48aUpzaqq8uHLUnYihbHczDw7v2SNGZoX3HOOIvW
 mNjq9pI0PJizR1wT5ZG1mK9fuODm5NXfrM6peuBWLj0GMSw7d4RR2yhJOPF3irWp1fmT
 g1AzwvTW4Tav6FI1N/piGQmkt304iYXRKD7NEKbrIYOU4xH/sz3TSl5C/8rEWHPydtOQ
 pUUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1xFrPsR+pjvWrrTqLwAtnCgdK8XyTUkpgkcfWZE6OuQ=;
 b=nbEfnA6Xo7/FY1smyPepQWz56S9nW/ukHzRq064xVH/ZrjbFmgt1yuCbCJ8O0L9d3J
 QbyF+jDfl2ffdGqKHN4Rxyd5WYYPHO3QyrS7B1ylexun15CVLeIf43qWXaz/6ZRnnd7K
 04ih7d0cg3wYwbtYiRmJDAjrY47ZXYIn6hRPHgu33HqolfXZ7eyW5F7rVsx7+Mr3d6SY
 nuCXhTPziC/DO3VtLDEf/u5f0LifW0/W6O9CSwv31/4olO9BdocPQFlqcaIGTvk28j4O
 bKoiNIi70AhxeCNgUfX1nzRhHQO4CHue1b/cjLlaAjPhvUdi3RblvpSaL+JDE1MbTtDV
 RxYw==
X-Gm-Message-State: APjAAAVQ0Q1CtiE7/yR3ZrFx7QNpnS1CpCFHGLNhu/SafUp6jCdnUW0l
 FV/p55ygQZ15wL83bn9+ZyNLJw==
X-Google-Smtp-Source: APXvYqyGsQ6J+U59yjtBLbHezD8dCQLdAEDFQm+EWLUpyNlED8n3VxtbFDVM5EyyoqNv4H0wbAH7/g==
X-Received: by 2002:a25:3454:: with SMTP id b81mr21953911yba.417.1582063419436; 
 Tue, 18 Feb 2020 14:03:39 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id q130sm22610ywg.52.2020.02.18.14.03.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 14:03:38 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 17:02:36 -0500
Message-Id: <20200218220242.107265-9-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
In-Reply-To: <20200218220242.107265-1-sean@poorly.run>
References: <20200218220242.107265-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 08/14] drm/i915: Don't fully disable HDCP on
 a port if multiple pipes are using it
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

This patch is required for HDCP over MST. If a port is being used for
multiple HDCP streams, we don't want to fully disable HDCP on a port if
one of them is disabled. Instead, we just disable the HDCP signalling on
that particular pipe and exit early. The last pipe to disable HDCP will
also bring down HDCP on the port.

In order to achieve this, we need to keep a refcount in intel_digital_port
and protect it using a new hdcp_mutex.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-8-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-9-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-9-sean@poorly.run #v3

Changes in v2:
-Move the toggle_signalling call into _intel_hdcp_disable so it's called from check_work
Changes in v3:
-None
Changes in v4:
-None
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  3 ++
 .../drm/i915/display/intel_display_types.h    |  5 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 52 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +
 5 files changed, 55 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 61984218961fa..e84315ce753cd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4758,6 +4758,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
 			 DRM_MODE_ENCODER_TMDS, "DDI %c", port_name(port));
 
+	mutex_init(&intel_dig_port->hdcp_mutex);
+	intel_dig_port->num_hdcp_streams = 0;
+
 	encoder->hotplug = intel_ddi_hotplug;
 	encoder->compute_output_type = intel_ddi_compute_output_type;
 	encoder->compute_config = intel_ddi_compute_config;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b9e4ba8071d29..edbe8211078df 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1339,6 +1339,11 @@ struct intel_digital_port {
 	enum phy_fia tc_phy_fia;
 	u8 tc_phy_fia_idx;
 
+	/* protects num_hdcp_streams reference count */
+	struct mutex hdcp_mutex;
+	/* the number of pipes using HDCP signalling out of this port */
+	unsigned int num_hdcp_streams;
+
 	void (*write_infoframe)(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
 				unsigned int type,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f601cdcd4c647..05d09161afa76 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7641,6 +7641,8 @@ bool intel_dp_init(struct drm_i915_private *dev_priv,
 	intel_encoder = &intel_dig_port->base;
 	encoder = &intel_encoder->base;
 
+	mutex_init(&intel_dig_port->hdcp_mutex);
+
 	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
 			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			     "DP %c", port_name(port)))
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 161f4bcc5bda5..970cdd793cbbe 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -796,6 +796,19 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being disabled...\n",
 		    connector->base.name, connector->base.base.id);
 
+	/*
+	 * If there are other connectors on this port using HDCP, don't disable
+	 * it. Instead, toggle the HDCP signalling off on that particular
+	 * connector/pipe and exit.
+	 */
+	if (intel_dig_port->num_hdcp_streams > 0) {
+		ret = hdcp->shim->toggle_signalling(intel_dig_port,
+						    cpu_transcoder, false);
+		if (ret)
+			DRM_ERROR("Failed to disable HDCP signalling\n");
+		return ret;
+	}
+
 	hdcp->hdcp_encrypted = false;
 	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
 	if (intel_de_wait_for_clear(dev_priv,
@@ -876,6 +889,7 @@ struct intel_connector *intel_hdcp_to_connector(struct intel_hdcp *hdcp)
 static void intel_hdcp_update_value(struct intel_connector *connector,
 				    u64 value, bool update_property)
 {
+	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	WARN_ON(!mutex_is_locked(&hdcp->mutex));
@@ -883,6 +897,15 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 	if (hdcp->value == value)
 		return;
 
+	WARN_ON(!mutex_is_locked(&intel_dig_port->hdcp_mutex));
+
+	if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED) {
+		if (!WARN_ON(intel_dig_port->num_hdcp_streams == 0))
+			intel_dig_port->num_hdcp_streams--;
+	} else if (value == DRM_MODE_CONTENT_PROTECTION_ENABLED) {
+		intel_dig_port->num_hdcp_streams++;
+	}
+
 	hdcp->value = value;
 	if (update_property) {
 		drm_connector_get(&connector->base);
@@ -901,6 +924,8 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 	int ret = 0;
 
 	mutex_lock(&hdcp->mutex);
+	mutex_lock(&intel_dig_port->hdcp_mutex);
+
 	cpu_transcoder = hdcp->cpu_transcoder;
 
 	/* Check_link valid only when HDCP1.4 is enabled */
@@ -953,6 +978,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 	}
 
 out:
+	mutex_unlock(&intel_dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
@@ -2034,6 +2060,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
 		      enum transcoder cpu_transcoder, u8 content_type)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	unsigned long check_link_interval = DRM_HDCP_CHECK_PERIOD_MS;
 	int ret = -EINVAL;
@@ -2042,6 +2069,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
 		return -ENOENT;
 
 	mutex_lock(&hdcp->mutex);
+	mutex_lock(&intel_dig_port->hdcp_mutex);
 	WARN_ON(hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
 	hdcp->content_type = content_type;
 
@@ -2076,12 +2104,14 @@ int intel_hdcp_enable(struct intel_connector *connector,
 					true);
 	}
 
+	mutex_unlock(&intel_dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
 }
 
 int intel_hdcp_disable(struct intel_connector *connector)
 {
+	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret = 0;
 
@@ -2089,17 +2119,21 @@ int intel_hdcp_disable(struct intel_connector *connector)
 		return -ENOENT;
 
 	mutex_lock(&hdcp->mutex);
+	mutex_lock(&intel_dig_port->hdcp_mutex);
 
-	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
-		intel_hdcp_update_value(connector,
-					DRM_MODE_CONTENT_PROTECTION_UNDESIRED,
-					false);
-		if (hdcp->hdcp2_encrypted)
-			ret = _intel_hdcp2_disable(connector);
-		else if (hdcp->hdcp_encrypted)
-			ret = _intel_hdcp_disable(connector);
-	}
+	if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
+		goto out;
+
+	intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_UNDESIRED, false);
 
+	if (hdcp->hdcp2_encrypted)
+		ret = _intel_hdcp2_disable(connector);
+	else if (hdcp->hdcp_encrypted)
+		ret = _intel_hdcp_disable(connector);
+
+out:
+	mutex_unlock(&intel_dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
 	cancel_delayed_work_sync(&hdcp->check_work);
 	return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f1092066440f4..d569d0a1f1dcf 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3264,6 +3264,8 @@ void intel_hdmi_init(struct drm_i915_private *dev_priv,
 
 	intel_encoder = &intel_dig_port->base;
 
+	mutex_init(&intel_dig_port->hdcp_mutex);
+
 	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
 			 &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			 "HDMI %c", port_name(port));
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
