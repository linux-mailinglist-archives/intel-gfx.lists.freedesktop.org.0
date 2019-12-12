Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A49A311D6BA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 20:03:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F8516E183;
	Thu, 12 Dec 2019 19:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB186E157
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 19:02:51 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id o63so890676ybc.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 11:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ej6S5sZ/3O8dkLj3JltBoet6OIw7CY2Bx8qpK10wdc0=;
 b=R/xR6sEQHjkTWFCjK2z4zn+IZ1+I7dOWk+aZYDoAyHmrsIn2nqRhQZZWSNO1Tpj5tz
 hrOZgTPhd9jBKJknRJ/UDdql2vF2ovw7xDTg5kdNu4NUU48dMuqzJaqTNInYVC7UUSBx
 QSHO9sYoT9EqwdGk9VPWWC6w91PHGtVknU5Y5Y7/LxlumL0thW17HWAN66DEMjXCUyjt
 igBUcklMIqioUT1h6ZNclkuB0mwq67YFPf/YoPC7L5+qjo2Air/BsCbQa03RyJB0MHEl
 1tnfQNBknl+ZeI2G0f9d8/y9HqOonpTKL+EJ8mW+LtBk/voZEsKODfw98u1U/qV9UfkT
 q2TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ej6S5sZ/3O8dkLj3JltBoet6OIw7CY2Bx8qpK10wdc0=;
 b=T6GNQtgeQLcZSeWEHSknBqjzXeq8BcNWL4THLpsRQSY4EEvs1OVW0uIdPiGWI2F8yP
 Qp0InzAJyVGUoc/cMew51YoqD2HZTb8mzH8kCDvaICTqjKXG/yoO5D63xri+Ed1iqDj+
 F8A8IB0xl246LAB5fUGyJNshsbj78QVaKtR9xl2hUMKZzcQeLNfA6cj4gghQi/Xy4Dmt
 OLkQ0hyHuoiDEfBTtWXHGR9AZuAjRhlc1e9hOKhDghy4sCypNi+aH1+D3nzz4Y+PuzGy
 2v6bMcz1l00QrNHDQDTtNlMF4moYJYJ9sfzWT/F3aD9/qIBnawkgoMwEouM6x27AOjP6
 bMQA==
X-Gm-Message-State: APjAAAWe7ZQkpCCOYnepcjmUVbgf/KyTbQtvpGYBdvYDWo5zNVgYNE9h
 MHJ7c4SMkXhDC2mVH81R27BDFxTJSiR5SQ==
X-Google-Smtp-Source: APXvYqxMZ73UTCjMjXsP9gyC44UB30QnyyVt+mnYbnGy29codOJHmT2J6zysxHTSOfsRMdoYjiZZRg==
X-Received: by 2002:a25:41c3:: with SMTP id o186mr5649947yba.471.1576177370098; 
 Thu, 12 Dec 2019 11:02:50 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id e204sm2993462ywe.92.2019.12.12.11.02.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:02:49 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:02:30 -0500
Message-Id: <20191212190230.188505-13-sean@poorly.run>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20191212190230.188505-1-sean@poorly.run>
References: <20191212190230.188505-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/12] drm/i915: Add HDCP 1.4 support for MST
 connectors
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

Now that all the groundwork has been laid, we can turn on HDCP 1.4 over
MST. Everything except for toggling the HDCP signalling and HDCP 2.2
support is the same as the DP case, so we'll re-use those callbacks

Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-12-sean@poorly.run #v1

Changes in v2:
- Toggle HDCP from encoder disable/enable
- Don't disable HDCP on MST connector destroy, leave that for encoder
  disable, just ensure the check_work routine isn't running any longer
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 89 +++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fbd9a6c543e7..1e08ce751abe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -36,6 +36,7 @@
 #include "intel_dp.h"
 #include "intel_dp_mst.h"
 #include "intel_dpio_phy.h"
+#include "intel_hdcp.h"
 
 static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 					    struct intel_crtc_state *crtc_state,
@@ -215,6 +216,8 @@ static void intel_mst_disable_dp(struct intel_encoder *encoder,
 
 	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
 
+	intel_hdcp_disable(intel_mst->connector);
+
 	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
 
 	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr);
@@ -378,6 +381,13 @@ static void intel_mst_enable_dp(struct intel_encoder *encoder,
 	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
 	if (pipe_config->has_audio)
 		intel_audio_codec_enable(encoder, pipe_config, conn_state);
+
+	/* Enable hdcp if it's desired */
+	if (conn_state->content_protection ==
+	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
+		intel_hdcp_enable(to_intel_connector(conn_state->connector),
+				  pipe_config->cpu_transcoder,
+				  (u8)conn_state->hdcp_content_type);
 }
 
 static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
@@ -522,11 +532,84 @@ static bool intel_dp_mst_get_hw_state(struct intel_connector *connector)
 	return false;
 }
 
+static int
+intel_dp_mst_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
+				    enum transcoder cpu_transcoder,
+				    bool enable)
+{
+	int ret;
+
+	ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base,
+					       cpu_transcoder, enable);
+	if (ret)
+		DRM_DEBUG_KMS("%s HDCP signalling failed (%d)\n",
+			      enable ? "Enable" : "Disable", ret);
+	return ret;
+}
+
+static
+int intel_dp_mst_hdcp2_write_msg(struct intel_digital_port *intel_dig_port,
+				 void *buf, size_t size)
+{
+	return -EOPNOTSUPP;
+}
+
+static
+int intel_dp_mst_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
+				u8 msg_id, void *buf, size_t size)
+{
+	return -EOPNOTSUPP;
+}
+
+static int
+intel_dp_mst_hdcp2_config_stream_type(struct intel_digital_port *intel_dig_port,
+				      bool is_repeater, u8 content_type)
+{
+	return -EOPNOTSUPP;
+}
+
+static
+int intel_dp_mst_hdcp2_check_link(struct intel_digital_port *intel_dig_port)
+{
+	return -EOPNOTSUPP;
+}
+
+static
+int intel_dp_mst_hdcp2_capable(struct intel_digital_port *intel_dig_port,
+			       bool *capable)
+{
+	*capable = false;
+	return 0;
+}
+
+static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
+	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
+	.read_bksv = intel_dp_hdcp_read_bksv,
+	.read_bstatus = intel_dp_hdcp_read_bstatus,
+	.repeater_present = intel_dp_hdcp_repeater_present,
+	.read_ri_prime = intel_dp_hdcp_read_ri_prime,
+	.read_ksv_ready = intel_dp_hdcp_read_ksv_ready,
+	.read_ksv_fifo = intel_dp_hdcp_read_ksv_fifo,
+	.read_v_prime_part = intel_dp_hdcp_read_v_prime_part,
+	.toggle_signalling = intel_dp_mst_hdcp_toggle_signalling,
+	.check_link = intel_dp_hdcp_check_link,
+	.hdcp_capable = intel_dp_hdcp_capable,
+
+	.write_2_2_msg = intel_dp_mst_hdcp2_write_msg,
+	.read_2_2_msg = intel_dp_mst_hdcp2_read_msg,
+	.config_stream_type = intel_dp_mst_hdcp2_config_stream_type,
+	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
+	.hdcp_2_2_capable = intel_dp_mst_hdcp2_capable,
+
+	.protocol = HDCP_PROTOCOL_DP,
+};
+
 static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port, const char *pathprop)
 {
 	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct drm_device *dev = intel_dig_port->base.base.dev;
+	struct intel_encoder *intel_encoder = &intel_dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_connector *intel_connector;
 	struct drm_connector *connector;
@@ -571,6 +654,12 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	intel_attach_force_audio_property(connector);
 	intel_attach_broadcast_rgb_property(connector);
 
+	if (is_hdcp_supported(dev_priv, intel_encoder->port)) {
+		int ret = intel_hdcp_init(intel_connector, &intel_dp_hdcp_shim);
+		if (ret)
+			DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
+	}
+
 	/*
 	 * Reuse the prop from the SST connector because we're
 	 * not allowed to create new props after device registration.
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
