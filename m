Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2485D28D96A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 07:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EDEF6E9C7;
	Wed, 14 Oct 2020 05:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EDF66E9C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 05:03:33 +0000 (UTC)
IronPort-SDR: IAZg2XSx04/b/Q3emqpqeEQ2llMdMIROsbUsKdUN3zCJ3R5mrJluKcUw8FAtjfloxEb/Ixq6Ay
 Xf4ut2iWxD5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="166099959"
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="166099959"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:33 -0700
IronPort-SDR: 7wvRwJWTuR+UZcKfsDfxrAx5IehOjL+X+TESzGdjrvpCi4dE++COqQarTegy+VFnXy2H8A1LEK
 lIJkz3QPyNTQ==
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="351376323"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:31 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 10:22:42 +0530
Message-Id: <20201014045252.13608-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201014045252.13608-1-anshuman.gupta@intel.com>
References: <20201014045252.13608-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/13] drm/i915/hdcp: DP MST transcoder for link
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
index 35edbd826443..d4c4afcfce99 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4059,7 +4059,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
 		intel_hdcp_enable(to_intel_connector(conn_state->connector),
-				  crtc_state->cpu_transcoder,
+				  crtc_state,
 				  (u8)conn_state->hdcp_content_type);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0b5df8e44966..bd4cd34d1923 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -432,6 +432,8 @@ struct intel_hdcp {
 	 * Hence caching the transcoder here.
 	 */
 	enum transcoder cpu_transcoder;
+	/* Only used for DP MST stream encryption */
+	enum transcoder stream_transcoder;
 };
 
 struct intel_connector {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e948aacbd4ab..23da9902c300 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -568,7 +568,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
 		intel_hdcp_enable(to_intel_connector(conn_state->connector),
-				  pipe_config->cpu_transcoder,
+				  pipe_config,
 				  (u8)conn_state->hdcp_content_type);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index cbe3ee661bb7..29ac60d5e70e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2095,7 +2095,7 @@ int intel_hdcp_init(struct intel_connector *connector,
 }
 
 int intel_hdcp_enable(struct intel_connector *connector,
-		      enum transcoder cpu_transcoder, u8 content_type)
+		      const struct intel_crtc_state *pipe_config, u8 content_type)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
@@ -2111,10 +2111,17 @@ int intel_hdcp_enable(struct intel_connector *connector,
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
@@ -2229,7 +2236,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 
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
