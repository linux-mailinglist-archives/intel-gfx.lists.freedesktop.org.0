Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4303180563E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 14:41:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2D510E52D;
	Tue,  5 Dec 2023 13:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36FA110E52D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 13:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701783708; x=1733319708;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pt32Dp2Rw5SmovoWcF8v0bhU/wD4+gYOYLk7QUGM/sY=;
 b=cSLMLjhVgbpJT6xUfkZPT6Z3MmxgeqP0QI5IF+s+mvXiAK4QHdY88dHP
 EN9PctknXOfQyYfK2zLGuewsWmqyFGLVNalcsENrX+M6DEXex/IOhnZEH
 YNl18sfXgs6CZYENqRPHKOAJ95hLqY9AYMdN3BM2sesqs6dWblIv9OOvY
 eW3B6/vmWKclZfqVJSTKqsb9daKab3R47J2zWZUIDhyzoKmXzFolymE66
 PHulWXrHw+MRvCXJ1BO/u0Rh5d4F+FKBNi/PETE4GhwTCLeiW4syloQSM
 ZLqvcZpGGkd+J1gzQ6GUidTdtITA1PcEXmovtkufi8I+2yrHmE5/DxLdU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="384293121"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="384293121"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:41:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="764330955"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="764330955"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.103])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:41:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Dec 2023 15:41:41 +0200
Message-Id: <20231205134143.2427661-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: use intel_connector in
 intel_connector_debugfs_add()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer struct intel_connector over struct drm_connector.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 53 +++++++++----------
 1 file changed, 26 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 915420d0cef8..bd398fdc61ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1565,59 +1565,58 @@ DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
 
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
- * @intel_connector: pointer to a registered drm_connector
+ * @connector: pointer to a registered intel_connector
  *
  * Cleanup will be done by drm_connector_unregister() through a call to
  * drm_debugfs_connector_remove().
  */
-void intel_connector_debugfs_add(struct intel_connector *intel_connector)
+void intel_connector_debugfs_add(struct intel_connector *connector)
 {
-	struct drm_connector *connector = &intel_connector->base;
-	struct dentry *root = connector->debugfs_entry;
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct dentry *root = connector->base.debugfs_entry;
+	int connector_type = connector->base.connector_type;
 
 	/* The connector must have been registered beforehands. */
 	if (!root)
 		return;
 
-	intel_drrs_connector_debugfs_add(intel_connector);
-	intel_psr_connector_debugfs_add(intel_connector);
+	intel_drrs_connector_debugfs_add(connector);
+	intel_psr_connector_debugfs_add(connector);
 
-	if (connector->connector_type == DRM_MODE_CONNECTOR_eDP)
+	if (connector_type == DRM_MODE_CONNECTOR_eDP)
 		debugfs_create_file("i915_panel_timings", S_IRUGO, root,
-				    connector, &i915_panel_fops);
+				    &connector->base, &i915_panel_fops);
 
-	if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
-	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
-	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
+	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
 		debugfs_create_file("i915_hdcp_sink_capability", S_IRUGO, root,
-				    connector, &i915_hdcp_sink_capability_fops);
+				    &connector->base, &i915_hdcp_sink_capability_fops);
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 11 &&
-	    ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
-	    !to_intel_connector(connector)->mst_port) ||
-	    connector->connector_type == DRM_MODE_CONNECTOR_eDP)) {
+	if (DISPLAY_VER(i915) >= 11 &&
+	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst_port) ||
+	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
 		debugfs_create_file("i915_dsc_fec_support", 0644, root,
-				    connector, &i915_dsc_fec_support_fops);
+				    &connector->base, &i915_dsc_fec_support_fops);
 
 		debugfs_create_file("i915_dsc_bpc", 0644, root,
-				    connector, &i915_dsc_bpc_fops);
+				    &connector->base, &i915_dsc_bpc_fops);
 
 		debugfs_create_file("i915_dsc_output_format", 0644, root,
-				    connector, &i915_dsc_output_format_fops);
+				    &connector->base, &i915_dsc_output_format_fops);
 
 		debugfs_create_file("i915_dsc_fractional_bpp", 0644, root,
-				    connector, &i915_dsc_fractional_bpp_fops);
+				    &connector->base, &i915_dsc_fractional_bpp_fops);
 	}
 
-	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
-	    connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
-	    connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
-	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
-	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB)
+	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
+	    connector_type == DRM_MODE_CONNECTOR_eDP ||
+	    connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
 		debugfs_create_file("i915_lpsp_capability", 0444, root,
-				    connector, &i915_lpsp_capability_fops);
+				    &connector->base, &i915_lpsp_capability_fops);
 }
 
 /**
-- 
2.39.2

