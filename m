Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3652470233B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 07:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD1810E133;
	Mon, 15 May 2023 05:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38A0410E133
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 05:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684127855; x=1715663855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dlJQ540HabyARmwbbArELv92AytG3CNlwjKfb6K6+yo=;
 b=bZb5lmIJJJII66mg3GoeEZL8uQjN5q71MjWG9CKDPVNl2qotFBgLWq25
 ZUrrZm6mI1SSzVAuu9ZKRN5Tsr+iV4VAZwEnpqIvLsD44EiN08hUEQy89
 B0mbK9JAwoBFEme9B2YnLRFcYE3koj4GXQLzrmL8IgFpqNDZMqaheZ0uJ
 VaFjsF74QgtzfP/QQowrq5QpUlB2IEX44sL4YG6J/X3T6FD8ngBRRYVxq
 2BMZp792tK2Ip/MKcfP4RZOULD262c1mQPJi3YSdJzIM86fBflREaqeo5
 kP8/XarvJ3h0+LrWZgyX/LFbEpC/vddh+pSYIviwmGKMmMb1QsjK3vMom g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="330729703"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="330729703"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 22:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="700835423"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="700835423"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 14 May 2023 22:17:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 10:45:54 +0530
Message-Id: <20230515051557.672109-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515051557.672109-1-suraj.kandpal@intel.com>
References: <20230515051557.672109-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/4] drm/i915/hdcp: add intel_atomic_state
 argument to hdcp_enable function
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

Pass all the parameter in intel_encoder->enable()
to intel_hdcp_enable as we need intel_atomic_state
later down to get acquire_ctx.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  4 +---
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +---
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 16 +++++++++-------
 drivers/gpu/drm/i915/display/intel_hdcp.h   |  6 ++++--
 4 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 29e4bfab4635..2d3071e46567 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3264,9 +3264,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	/* Enable hdcp if it's desired */
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
-		intel_hdcp_enable(to_intel_connector(conn_state->connector),
-				  crtc_state,
-				  (u8)conn_state->hdcp_content_type);
+		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 }
 
 static void intel_disable_ddi_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2c49d9ab86a2..da1666c7c2ee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -800,9 +800,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	/* Enable hdcp if it's desired */
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
-		intel_hdcp_enable(to_intel_connector(conn_state->connector),
-				  pipe_config,
-				  (u8)conn_state->hdcp_content_type);
+		intel_hdcp_enable(state, encoder, pipe_config, conn_state);
 }
 
 static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 650232c4892b..e2c5781ad0ab 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2330,10 +2330,14 @@ int intel_hdcp_init(struct intel_connector *connector,
 	return 0;
 }
 
-int intel_hdcp_enable(struct intel_connector *connector,
-		      const struct intel_crtc_state *pipe_config, u8 content_type)
+int intel_hdcp_enable(struct intel_atomic_state *state,
+		      struct intel_encoder *encoder,
+		      const struct intel_crtc_state *pipe_config,
+		      const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	unsigned long check_link_interval = DRM_HDCP_CHECK_PERIOD_MS;
@@ -2352,7 +2356,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	mutex_lock(&dig_port->hdcp_mutex);
 	drm_WARN_ON(&dev_priv->drm,
 		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
-	hdcp->content_type = content_type;
+	hdcp->content_type = (u8)conn_state->content_type;
 
 	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
 		hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
@@ -2483,9 +2487,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 	}
 
 	if (desired_and_not_enabled || content_protection_type_changed)
-		intel_hdcp_enable(connector,
-				  crtc_state,
-				  (u8)conn_state->hdcp_content_type);
+		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 }
 
 void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index 8f53b0c7fe5c..ce283f4f69fd 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -28,8 +28,10 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 int intel_hdcp_init(struct intel_connector *connector,
 		    struct intel_digital_port *dig_port,
 		    const struct intel_hdcp_shim *hdcp_shim);
-int intel_hdcp_enable(struct intel_connector *connector,
-		      const struct intel_crtc_state *pipe_config, u8 content_type);
+int intel_hdcp_enable(struct intel_atomic_state *state,
+		      struct intel_encoder *encoder,
+		      const struct intel_crtc_state *pipe_config,
+		      const struct drm_connector_state *conn_state);
 int intel_hdcp_disable(struct intel_connector *connector);
 void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 			    struct intel_encoder *encoder,
-- 
2.25.1

