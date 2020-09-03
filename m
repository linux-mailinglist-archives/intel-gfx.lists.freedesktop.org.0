Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5BB25C0E1
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 14:24:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2B86E9DC;
	Thu,  3 Sep 2020 12:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7723A6E9DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 12:24:12 +0000 (UTC)
IronPort-SDR: GQDub1hYiFkJkOYOYHXnl2wjt9M/ra8OEn6ER9V4OhtPsdKmopBF7qCz/+lstRivvuB8feEG3b
 WeRYjFdhDhmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="219116023"
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="219116023"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 05:24:12 -0700
IronPort-SDR: 7MGaqeAN1l+MXxKJG2+sGWF8NYfGLWW2mlJzUh2y9rDHt6DOtioFcWZ9zfJg8ZxngddyCKsmYC
 WaevGcOfZmXg==
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="478034603"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 05:24:10 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Sep 2020 17:42:32 +0530
Message-Id: <20200903121235.22760-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200903121235.22760-1-anshuman.gupta@intel.com>
References: <20200903121235.22760-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/hdcp: DP MST transcoder for link
 and stream
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
index 6af080542c96..5bf3619c64f6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3967,7 +3967,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
 		intel_hdcp_enable(to_intel_connector(conn_state->connector),
-				  crtc_state->cpu_transcoder,
+				  crtc_state,
 				  (u8)conn_state->hdcp_content_type);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 413b60337a0b..297cfd7ad622 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -410,6 +410,8 @@ struct intel_hdcp {
 	 * Hence caching the transcoder here.
 	 */
 	enum transcoder cpu_transcoder;
+	/* Only used for DP MST stream encryption */
+	enum transcoder stream_transcoder;
 };
 
 struct intel_connector {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b6424bf5d544..c6107182519f 100644
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
