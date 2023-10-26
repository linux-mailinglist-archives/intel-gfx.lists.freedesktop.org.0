Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A6D7D7D80
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 09:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE67D10E769;
	Thu, 26 Oct 2023 07:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D642A10E070
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 07:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698304666; x=1729840666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SiyXPB+NFsH7UK96Rf1un6hrrvlRMnx4khSiyqBsTo4=;
 b=iUZFHPrQ2O76jICwPUncu1Lnh+2suRPOl6fLoJ0KZttqhHWRk04IRrxO
 jgZkjHrFrQcYVl0eH8qyIgPOI8BiyOZsFp/H+ix26FxLbcJgsOn3ELITP
 uakPPFaIuP99/Yw4Sc6PtAFWIoYazM1ecccS9p422dNTtX8KWwcWBLaZT
 bnGph5MsIXWXPtbNWhijEzkFWgoA7jJxPmZR0lk4dk0UBq1+OUvMXWtUU
 qy5l+VylHz/bXp3HbBb4QKVWadULOePawNTlw1cwB43aCFOzLJGq7JzGf
 Lprsl8SKVPnoiTUtQW1buVajQGup/zd3ndFLM/js8KsvQtAj6Sp4j1S6+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="451713073"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="451713073"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 00:17:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="902798054"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="902798054"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2023 00:15:19 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 12:45:40 +0530
Message-Id: <20231026071540.974755-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231026071540.974755-1-suraj.kandpal@intel.com>
References: <20231026071540.974755-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Create a blanket hdcp enable
 function
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

Let's create a blanket function which just has some conditions
which need to be checked before connectors enable hdcp.
This cleans up code and avoids code duplication.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +----
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +----
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.h   |  4 ++++
 4 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9151d5add960..338049b66e9c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3259,10 +3259,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	else
 		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
 
-	/* Enable hdcp if it's desired */
-	if (conn_state->content_protection ==
-	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
-		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
+	intel_hdcp_try_enable(state, encoder, crtc_state, conn_state);
 }
 
 static void intel_disable_ddi_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7b4628f4f124..cfcaf54a4a72 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -836,10 +836,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 
-	/* Enable hdcp if it's desired */
-	if (conn_state->content_protection ==
-	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
-		intel_hdcp_enable(state, encoder, pipe_config, conn_state);
+	intel_hdcp_try_enable(state, encoder, pipe_config, conn_state);
 }
 
 static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c89da3568ebd..9d632a85309d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2324,6 +2324,17 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
 	return 0;
 }
 
+void intel_hdcp_try_enable(struct intel_atomic_state *state,
+			   struct intel_encoder *encoder,
+			   const struct intel_crtc_state *crtc_state,
+			   const struct drm_connector_state *conn_state)
+{
+	/* Enable hdcp if it's desired */
+	if (conn_state->content_protection ==
+	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
+		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
+}
+
 int intel_hdcp_enable(struct intel_atomic_state *state,
 		      struct intel_encoder *encoder,
 		      const struct intel_crtc_state *pipe_config,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index 5997c52a0958..280eaa4d1010 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -44,5 +44,9 @@ void intel_hdcp_component_init(struct drm_i915_private *i915);
 void intel_hdcp_component_fini(struct drm_i915_private *i915);
 void intel_hdcp_cleanup(struct intel_connector *connector);
 void intel_hdcp_handle_cp_irq(struct intel_connector *connector);
+void intel_hdcp_try_enable(struct intel_atomic_state *state,
+			   struct intel_encoder *encoder,
+			   const struct intel_crtc_state *crtc_state,
+			   const struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_HDCP_H__ */
-- 
2.25.1

