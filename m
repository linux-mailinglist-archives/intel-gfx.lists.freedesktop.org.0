Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9DB1635C5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:04:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21CFB6EAAE;
	Tue, 18 Feb 2020 22:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6086EABC
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:03:48 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id b6so11337467ybr.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 14:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6FWDpPOp5SnUYvKqoDjlOAx23GmsnRjgCgyGIX4xGiA=;
 b=d/hF5ZrWj+a8BrePP8E1V/dOPL78r2bRG/UwoP8jph/hm8aAf5l6itqOXGlC/84/OR
 vY2lCJ6oXk/0njHM1M5GuAgn1qzI5qaQd6Gh28IYZ/qKtSCId2aHdT20ahzkN2UJydUx
 me1FFYXc6DAflYb5Ig/Eh6gCi4mUMpd1LfKDb3PnJhgUhSgtdTr/DF/XCaAjTCvQ8680
 4Cr9LhUnWNC4YpLgSapXzSh2OSt6yG6/M5B86f7K65q8Zs4J3TUMW4mF9ceB/fi3co93
 9BRVMpqBpemf8zM0Ya/0iHBMJAJBeQgVCH1JhqPmhYCia1Gi8ef3X2lcB4hrA2Sx4CH7
 Zlgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6FWDpPOp5SnUYvKqoDjlOAx23GmsnRjgCgyGIX4xGiA=;
 b=TLCiYxCI1wUCAcp/fGvJ6iSi79PXPyutr/mHEtAoAk0Q1C/KYKw1beMfRgtyuVLYYN
 zWzi37TxlECAePNN7i5xgaXfxq61iW50AL0rKi2UdGFWPd/4HfRRx9FRPSiLXCRTbGNK
 GnCIX54XEOGmIOhHsS2mECxwrB1E6rJQvODwgr36u/bBPGjFaTBrNafQJwZLo89yo+XW
 9nSKsuZGin5xPuYShjcEiPhYAZqHSgVXBU2faO+3fs6FadL+SHU2kWvKFtmlTi7Bffhl
 CX9P/Ig0RXvzQ8q6y7yXXMWWheN9fhR4Huv87fKq1b+TZIKNoD3qWJ5q3vjpOcBnXXdj
 ZbCw==
X-Gm-Message-State: APjAAAU59cXORzSoF2bRS9Sq5a6vY3YxmddO3mXbAJAugvegPAuvfGMs
 EQWD9I9iHLjbmiuQOAYvvcvlVQ==
X-Google-Smtp-Source: APXvYqygkdZFgNy7Hepc9WKd/Gpfe5p9nai99IukFZNT/QakshtwYwdLu6f6x+5fd29rfgUlK1lTXg==
X-Received: by 2002:a25:4656:: with SMTP id t83mr318254yba.184.1582063427252; 
 Tue, 18 Feb 2020 14:03:47 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id d199sm14601ywh.83.2020.02.18.14.03.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 14:03:46 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 17:02:42 -0500
Message-Id: <20200218220242.107265-15-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
In-Reply-To: <20200218220242.107265-1-sean@poorly.run>
References: <20200218220242.107265-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 14/14] drm/i915: Add HDCP 1.4 support for MST
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

Cc: Juston Li <juston.li@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-12-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-13-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-13-sean@poorly.run #v3

Changes in v2:
-Toggle HDCP from encoder disable/enable
-Don't disable HDCP on MST connector destroy, leave that for encoder
 disable, just ensure the check_work routine isn't running any longer
Changes in v3:
-Place the shim in the new intel_dp_hdcp.c file (Ville)
Changes in v4:
-Actually use the mst shim for mst connections (Juston)
-Use QUERY_STREAM_ENC_STATUS MST message to verify channel is encrypted
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 102 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  14 +++
 2 files changed, 115 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index f1f4c2c793652..e69ad428d10fb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -7,10 +7,12 @@
  */
 
 #include <drm/drm_dp_helper.h>
+#include <drm/drm_dp_mst_helper.h>
 #include <drm/drm_hdcp.h>
 #include <drm/drm_print.h>
 
 #include "intel_display_types.h"
+#include "intel_ddi.h"
 #include "intel_dp.h"
 #include "intel_hdcp.h"
 
@@ -586,6 +588,101 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
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
+static
+bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *intel_dig_port,
+				  struct intel_connector *connector)
+{
+	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct drm_dp_query_stream_enc_status_ack_reply reply;
+	int ret;
+
+	if (!intel_dp_hdcp_check_link(intel_dig_port, connector))
+		return false;
+
+	ret = drm_dp_send_query_stream_enc_status(&intel_dp->mst_mgr,
+						  connector->port, &reply);
+	if (ret) {
+		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] failed QSES ret=%d\n",
+			      connector->base.base.id, connector->base.name,
+			      ret);
+		return false;
+	}
+
+	return reply.auth_completed && reply.encryption_enabled;
+}
+
+static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
+	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
+	.read_bksv = intel_dp_hdcp_read_bksv,
+	.read_bstatus = intel_dp_hdcp_read_bstatus,
+	.repeater_present = intel_dp_hdcp_repeater_present,
+	.read_ri_prime = intel_dp_hdcp_read_ri_prime,
+	.read_ksv_ready = intel_dp_hdcp_read_ksv_ready,
+	.read_ksv_fifo = intel_dp_hdcp_read_ksv_fifo,
+	.read_v_prime_part = intel_dp_hdcp_read_v_prime_part,
+	.toggle_signalling = intel_dp_mst_hdcp_toggle_signalling,
+	.check_link = intel_dp_mst_hdcp_check_link,
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
 int intel_dp_init_hdcp(struct intel_digital_port *intel_dig_port,
 		       struct intel_connector *intel_connector)
 {
@@ -598,7 +695,10 @@ int intel_dp_init_hdcp(struct intel_digital_port *intel_dig_port,
 	if (!is_hdcp_supported(dev_priv, port))
 		return 0;
 
-	if (!intel_dp_is_edp(intel_dp))
+	if (intel_connector->mst_port)
+		return intel_hdcp_init(intel_connector,
+				       &intel_dp_mst_hdcp_shim);
+	else if (!intel_dp_is_edp(intel_dp))
 		return intel_hdcp_init(intel_connector, &intel_dp_hdcp_shim);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f44a58e14a736..ac5dc17ad6d86 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -36,6 +36,7 @@
 #include "intel_dp.h"
 #include "intel_dp_mst.h"
 #include "intel_dpio_phy.h"
+#include "intel_hdcp.h"
 
 static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 					    struct intel_crtc_state *crtc_state,
@@ -326,6 +327,8 @@ static void intel_mst_disable_dp(struct intel_encoder *encoder,
 
 	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
 
+	intel_hdcp_disable(intel_mst->connector);
+
 	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
 
 	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr);
@@ -510,6 +513,13 @@ static void intel_mst_enable_dp(struct intel_encoder *encoder,
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
@@ -703,6 +713,10 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	intel_attach_force_audio_property(connector);
 	intel_attach_broadcast_rgb_property(connector);
 
+	ret = intel_dp_init_hdcp(intel_dig_port, intel_connector);
+	if (ret)
+		DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
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
