Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA0B2756F5
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 13:16:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A43316E966;
	Wed, 23 Sep 2020 11:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78376E966
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 11:16:37 +0000 (UTC)
IronPort-SDR: ZiJ1YoY/SSAljcT4iN0N/xPN/kv34nj8hK4blMzEmopsy6G49Muv8u2hg3ip+l7iT7s6TA492i
 mqAjqss7Stfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="178932837"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="178932837"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 04:16:37 -0700
IronPort-SDR: R6Kapykgiuj/asKmtx22HWqlh67IigY6lD5gsx/KGZDMBBnHO5r+6HCalDKVR55zEWfhiOQVyS
 z33oV2mNs5sw==
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="511610345"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 04:16:36 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Sep 2020 16:35:24 +0530
Message-Id: <20200923110527.28661-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200923110527.28661-1-anshuman.gupta@intel.com>
References: <20200923110527.28661-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/hdcp: DP MST transcoder for
 link and stream
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gen12 has H/W delta with respect to HDCP{1.x,2.x} display engine
instances lies in Transcoder instead of DDI as in Gen11.

This requires hdcp driver to use mst_master_transcoder for link
authentication and stream transcoder for stream encryption
separately.

This will be used for both HDCP 1.4 and HDCP 2.2 over DP MST
on Gen12.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c          |  2 +-
 .../gpu/drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c         | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_hdcp.h         |  2 +-
 5 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4d06178cd76c..683b252f1dbe 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3966,7 +3966,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
 		intel_hdcp_enable(to_intel_connector(conn_state->connector),
-				  crtc_state->cpu_transcoder,
+				  crtc_state,
 				  (u8)conn_state->hdcp_content_type);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3d4bf9b6a0a2..1a9e186e4a5d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -412,6 +412,8 @@ struct intel_hdcp {
 	 * Hence caching the transcoder here.
 	 */
 	enum transcoder cpu_transcoder;
+	/* Only used for DP MST stream encryption */
+	enum transcoder stream_transcoder;
 };
 
 struct intel_connector {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 64d885539e94..79060b2aefcd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -564,7 +564,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
 		intel_hdcp_enable(to_intel_connector(conn_state->connector),
-				  pipe_config->cpu_transcoder,
+				  pipe_config,
 				  (u8)conn_state->hdcp_content_type);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 5492076d1ae0..1d5026bb45a4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2072,7 +2072,7 @@ int intel_hdcp_init(struct intel_connector *connector,
 }
 
 int intel_hdcp_enable(struct intel_connector *connector,
-		      enum transcoder cpu_transcoder, u8 content_type)
+		      const struct intel_crtc_state *pipe_config, u8 content_type)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
@@ -2088,10 +2088,17 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	drm_WARN_ON(&dev_priv->drm,
 		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
 	hdcp->content_type = content_type;
-	hdcp->cpu_transcoder = cpu_transcoder;
+
+	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
+		hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
+		hdcp->stream_transcoder = pipe_config->cpu_transcoder;
+	} else {
+		hdcp->cpu_transcoder = pipe_config->cpu_transcoder;
+		hdcp->stream_transcoder = INVALID_TRANSCODER;
+	}
 
 	if (INTEL_GEN(dev_priv) >= 12)
-		hdcp->port_data.fw_tc = intel_get_mei_fw_tc(cpu_transcoder);
+		hdcp->port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
 
 	/*
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
@@ -2202,7 +2209,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 
 	if (desired_and_not_enabled || content_protection_type_changed)
 		intel_hdcp_enable(connector,
-				  crtc_state->cpu_transcoder,
+				  crtc_state,
 				  (u8)conn_state->hdcp_content_type);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index 1bbf5b67ed0a..bc51c1e9b481 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -25,7 +25,7 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 int intel_hdcp_init(struct intel_connector *connector, enum port port,
 		    const struct intel_hdcp_shim *hdcp_shim);
 int intel_hdcp_enable(struct intel_connector *connector,
-		      enum transcoder cpu_transcoder, u8 content_type);
+		      const struct intel_crtc_state *pipe_config, u8 content_type);
 int intel_hdcp_disable(struct intel_connector *connector);
 void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 			    struct intel_encoder *encoder,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
