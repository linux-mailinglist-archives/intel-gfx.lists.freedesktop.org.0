Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D553E7D8258
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E5F510E126;
	Thu, 26 Oct 2023 12:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C0910E11D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 12:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698322420; x=1729858420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X5c8tRDw6F72ykz6230EYg7dSf+JJbagUswe5wYcxS8=;
 b=OK+lndCQsHH9rmTGDO7cjsFuvru0QM+Zm1gOovG0b+XYSVjcBLcUqie7
 zmoixOTxtkLA41vM5LNU827jJ6kjPiRk3dzOo6+d2IUB3B421AEf2rWJt
 cs5vMh1lL2hc70Z5fr5PysAvcT/A81vPCvGZZuWvkWCLKRBd4+zZXDtTN
 w62i1Z1O9mbrjkBvXS3K77YbCdXG/Nnr1vCGR3kQr/sMWyC0jLc+d8Xhx
 l3rQ63Gq61qgdrs59s+3jXhFjcut6aqtcqK8coOc1xV6/9Vbac7h3zZ9W
 V9N/myTXY/Mjb4l9uQZBp54o+c+x3PQfQklPY3LpWCrRfx928obq5jqVM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="387354593"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="387354593"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:13:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="762809245"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="762809245"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 26 Oct 2023 05:13:38 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 17:41:39 +0530
Message-Id: <20231026121139.987437-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231026121139.987437-1-suraj.kandpal@intel.com>
References: <20231026121139.987437-1-suraj.kandpal@intel.com>
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

