Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F93C505EFA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 22:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73CC789E05;
	Mon, 18 Apr 2022 20:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A665989E05
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 20:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650315045; x=1681851045;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mfHstl8lwJFGnSJwSRHsYJ3NNX763wDVFj+v4S385Lk=;
 b=fBXGuscI/ypApY8WFYR/iotNrgB6Jho0VuKvkWhk8mUBadZyGIQ7/14S
 Rih9+4sIkY7qQ1vvS6VWvq3252Gj67zwvYYE+kK2mFaO00oKdn52wYbEo
 WVVk9cjiHzQj1Jmta9h9XBBxiXsBI+Vlw52Pmmi9ytx/fB+U9dh2dUIVG
 3/X93fhiP5xEO1xHRNOtApNPLDtxXCGOFQ954jPlbR3mj27Bz/X34gjff
 3CFHex3fhLYu6yLYuK10ZMkW2xghkERIbrUblcies16HVQwmjlrQ8nZIa
 PqHX9tGdBJuHS5lKtTRGqiWTDvZFhBPnCB3eYpUv20Pr4cXjMF5P1zKYS A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="245500921"
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; d="scan'208";a="245500921"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 13:50:45 -0700
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; d="scan'208";a="726783092"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 13:50:43 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Apr 2022 13:52:20 -0700
Message-Id: <20220418205221.291891-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display/drrs: Split the DRRS
 status per connector
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

Instead of keep the DRRS status of all connectors/pipe into a single
i915_drrs_status what makes user-space parsing terrible moving
each eDP connector status to its own folder.

As legacy support still returning the DRRS status of the first
eDP connector in the main i915_drrs_status.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 65 +++++++++++++------
 1 file changed, 46 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 452d773fd4e34..0d7d2e750a4c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1068,43 +1068,35 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int i915_drrs_status(struct seq_file *m, void *unused)
+static int intel_drrs_status(struct seq_file *m, struct drm_connector *connector)
 {
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct drm_connector_list_iter conn_iter;
-	struct intel_connector *connector;
+	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_crtc *crtc;
 
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
-	for_each_intel_connector_iter(connector, &conn_iter) {
-		seq_printf(m, "[CONNECTOR:%d:%s] DRRS type: %s\n",
-			   connector->base.base.id, connector->base.name,
-			   intel_drrs_type_str(intel_panel_drrs_type(connector)));
-	}
-	drm_connector_list_iter_end(&conn_iter);
-
-	seq_puts(m, "\n");
+	seq_printf(m, "DRRS type: %s\n",
+		   intel_drrs_type_str(intel_panel_drrs_type(intel_connector)));
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
-		seq_printf(m, "[CRTC:%d:%s]:\n",
-			   crtc->base.base.id, crtc->base.name);
+		if (!(crtc_state->uapi.connector_mask & drm_connector_mask(connector)))
+			continue;
 
 		mutex_lock(&crtc->drrs.mutex);
 
 		/* DRRS Supported */
-		seq_printf(m, "\tDRRS Enabled: %s\n",
+		seq_printf(m, "DRRS Enabled: %s\n",
 			   str_yes_no(crtc_state->has_drrs));
 
-		seq_printf(m, "\tDRRS Active: %s\n",
+		seq_printf(m, "DRRS Active: %s\n",
 			   str_yes_no(intel_drrs_is_active(crtc)));
 
-		seq_printf(m, "\tBusy_frontbuffer_bits: 0x%X\n",
+		seq_printf(m, "Busy_frontbuffer_bits: 0x%X\n",
 			   crtc->drrs.busy_frontbuffer_bits);
 
-		seq_printf(m, "\tDRRS refresh rate: %s\n",
+		seq_printf(m, "DRRS refresh rate: %s\n",
 			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
 			   "low" : "high");
 
@@ -1114,6 +1106,28 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
 	return 0;
 }
 
+static int i915_drrs_status(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct drm_connector_list_iter conn_iter;
+	struct drm_connector *connector = NULL;
+
+	/* Find the first eDP connector */
+	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		if (connector->connector_type != DRM_MODE_CONNECTOR_eDP)
+			continue;
+
+		break;
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	if (!connector)
+		return -ENODEV;
+
+	return intel_drrs_status(m, connector);
+}
+
 static bool
 intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
 			      enum i915_power_well_id power_well_id)
@@ -1990,6 +2004,14 @@ static int i915_psr_status_show(struct seq_file *m, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
 
+static int i915_drrs_status_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+
+	return intel_drrs_status(m, connector);
+}
+DEFINE_SHOW_ATTRIBUTE(i915_drrs_status);
+
 static int i915_lpsp_capability_show(struct seq_file *m, void *data)
 {
 	struct drm_connector *connector = m->private;
@@ -2232,6 +2254,11 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
 				    connector, &i915_psr_status_fops);
 	}
 
+	if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
+		debugfs_create_file("i915_drrs_status", 0444, root,
+				    connector, &i915_drrs_status_fops);
+	}
+
 	if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
 	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
-- 
2.35.3

