Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FEB7D7FAD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 11:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A15310E789;
	Thu, 26 Oct 2023 09:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1573810E789
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 09:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698313132; x=1729849132;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X5c8tRDw6F72ykz6230EYg7dSf+JJbagUswe5wYcxS8=;
 b=UujpMhwZca5iVPZ3oyRAaBAF/dVASwiY7tIlcB9J4U4BjIuytNSlPxq8
 CntoVfzCspHa8gC+DRKx1O8PRgjI/INgRTZC4UpfgsHXKQr/9cKLO3kQr
 idg7pLKfHzFPR7XJrZ8VMocW4zgkR+fHRcAny+7n2AtGdIHPgJUK+1bJ7
 RCSMeOQkL9NFclBfXkMYKkuEiezKOmvhvjV5GpLL0TQB/ujFOkC9nr31b
 nnv9rJPrGAKvag1Q9DRMfLgPkgZJpwVI4pQMiGIZSBFc1GpTBxhrGnME2
 AGW43XDsDpFXrr5RN5T7E96wNGUh4wapOTJZ8RmEF6duFdhHMaRLc8vlx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="384708156"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="384708156"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 02:38:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="735688274"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="735688274"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 26 Oct 2023 02:38:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 15:06:46 +0530
Message-Id: <20231026093647.987267-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231026093647.987267-1-suraj.kandpal@intel.com>
References: <20231026093647.987267-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Convert intel_hdcp_enable to
 a blanket function
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

Let's convert intel_hdcp_enable to a blanket function
which just has some conditions which needs to be checked
before connectors enable hdcp.
This cleans up code and avoids code duplication.

--v3
-Keep function name as intel_hdcp_enable() [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +----
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +----
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 21 ++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_hdcp.h   |  8 ++++----
 4 files changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9151d5add960..b644cf981846 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3259,10 +3259,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	else
 		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
 
-	/* Enable hdcp if it's desired */
-	if (conn_state->content_protection ==
-	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
-		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
+	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 }
 
 static void intel_disable_ddi_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7b4628f4f124..4366da79fe81 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -836,10 +836,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 
-	/* Enable hdcp if it's desired */
-	if (conn_state->content_protection ==
-	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
-		intel_hdcp_enable(state, encoder, pipe_config, conn_state);
+	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
 }
 
 static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 7c0cfcb48521..44c0a93f3af8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2324,10 +2324,10 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
 	return 0;
 }
 
-int intel_hdcp_enable(struct intel_atomic_state *state,
-		      struct intel_encoder *encoder,
-		      const struct intel_crtc_state *pipe_config,
-		      const struct drm_connector_state *conn_state)
+static int _intel_hdcp_enable(struct intel_atomic_state *state,
+			      struct intel_encoder *encoder,
+			      const struct intel_crtc_state *pipe_config,
+			      const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_connector *connector =
@@ -2404,6 +2404,17 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
 	return ret;
 }
 
+void intel_hdcp_enable(struct intel_atomic_state *state,
+		       struct intel_encoder *encoder,
+		       const struct intel_crtc_state *crtc_state,
+		       const struct drm_connector_state *conn_state)
+{
+	/* Enable hdcp if it's desired */
+	if (conn_state->content_protection ==
+	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
+		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
+}
+
 int intel_hdcp_disable(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
@@ -2491,7 +2502,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 	}
 
 	if (desired_and_not_enabled || content_protection_type_changed)
-		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
+		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 }
 
 void intel_hdcp_component_fini(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index 5997c52a0958..a9c784fd9ba5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -28,10 +28,10 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 int intel_hdcp_init(struct intel_connector *connector,
 		    struct intel_digital_port *dig_port,
 		    const struct intel_hdcp_shim *hdcp_shim);
-int intel_hdcp_enable(struct intel_atomic_state *state,
-		      struct intel_encoder *encoder,
-		      const struct intel_crtc_state *pipe_config,
-		      const struct drm_connector_state *conn_state);
+void intel_hdcp_enable(struct intel_atomic_state *state,
+		       struct intel_encoder *encoder,
+		       const struct intel_crtc_state *pipe_config,
+		       const struct drm_connector_state *conn_state);
 int intel_hdcp_disable(struct intel_connector *connector);
 void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 			    struct intel_encoder *encoder,
-- 
2.25.1

