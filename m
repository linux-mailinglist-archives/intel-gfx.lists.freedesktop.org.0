Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D21127D6540
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 10:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EDED10E58C;
	Wed, 25 Oct 2023 08:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6212D10E58C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 08:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698222934; x=1729758934;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aluVjTO+hDxYjOoAvWkkvED+ZxgwPvMoJ/9+55QaZXs=;
 b=nw8Z3cqHy54f7QQE+5TUFLnOm0z0PUzsA/Aut3nDHZYKPxVmMHlx5qR/
 clxvHUk/yD0DfkM4WQpfssBDq004LGkwc1XhzeCuwB8Yjrr90xr933dCc
 ZcIYCW7KEKia49xPPoq5cUkz6nAtl7fJta0NwhOuD20Y5Ikg3InxRct81
 Tf2XBe3f4rW50nx/vqrnhhuFIgNhrqe2NYjD7iEV7BPjuRNV7o+rjeVrR
 X/z2UXcRFTjvLJGdOn6eYdUDhln7bapba4hzvo7INPnkQatGy/fjAbnYi
 Am6AzzcADKYmRaLvoadudyFYGYqOumo5cyxSYdBN0d7oQVl/GsBbH5ufR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="384474404"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="384474404"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 01:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="875419922"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="875419922"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2023 01:35:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 14:03:38 +0530
Message-Id: <20231025083338.929123-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Additional conditions to enable
 hdcp
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

When we dock a monitor we end up with a enable and disable connector
cycle but if hdcp content is running we get the userspace in
enabled state and driver maintaing a undesired state which causes
the content to stop playing and we only enabe hdcp if the userspace
state in desired. This patch fixes that.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 14 ++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++++++--
 2 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9151d5add960..3dbf2d545f24 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3242,6 +3242,10 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+	struct intel_hdcp *hdcp = &connector->hdcp;
+
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
 	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
@@ -3259,9 +3263,15 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	else
 		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
 
-	/* Enable hdcp if it's desired */
+	/*
+	 * Enable hdcp if it's desired or if userspace is enabled and
+	 * driver set its state to undesired
+	 */
 	if (conn_state->content_protection ==
-	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
+	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
+	    (conn_state->content_protection ==
+	    DRM_MODE_CONTENT_PROTECTION_ENABLED && hdcp->value ==
+	    DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
 		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7b4628f4f124..008ff14fad18 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -788,6 +788,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = intel_mst->primary;
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_hdcp *hdcp = &connector->hdcp;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_dp_mst_topology_state *mst_state =
 		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
@@ -836,9 +837,15 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_audio_codec_enable(encoder, pipe_config, conn_state);
 
-	/* Enable hdcp if it's desired */
+	/*
+	 * Enable hdcp if it's desired or if userspace is enabled and
+	 * driver set its state to undesired
+	 */
 	if (conn_state->content_protection ==
-	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
+	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
+	    (conn_state->content_protection ==
+	    DRM_MODE_CONTENT_PROTECTION_ENABLED && hdcp->value ==
+	    DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
 		intel_hdcp_enable(state, encoder, pipe_config, conn_state);
 }
 
-- 
2.25.1

