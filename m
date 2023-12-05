Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CD680563F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 14:41:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A0C10E537;
	Tue,  5 Dec 2023 13:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A07B10E537
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701783713; x=1733319713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t1E32cbgguZf1zTZTiBjQEngab26kLSaZ5aODFRpLQM=;
 b=DLpO6DrNCg9sUQUx1YQHhtI8jTjBuh5MOwAdJYlpGTQKFDUvmOwLbabH
 8O8E2aLCC6l+Q2kqVZ7tokkxZf4jJDNDh0SjMPJ2U1n6mY7Dqd+nuBdCX
 RE4E1gIv57NW0IbWkLYzU2txLWDjG4KORhoe2/LnI4SnRUriu29GSTPQm
 38a1kNV0eIJ017l/wMe7lAkElNGyeEe1nju6/6rvB7POX/a/6RK81vuFd
 Vd9nx6zulGMWuD4OGhgBI8fcYWJ+GfLT2xjwtcTctTpQkoZkdABcZdD3f
 J46ShWGYEFIhyCZfV315UATVxLTAzS74xP+ZPkDcejQOA1gPHRffczzao w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="384293140"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="384293140"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:41:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="764330980"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="764330980"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.103])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:41:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Dec 2023 15:41:42 +0200
Message-Id: <20231205134143.2427661-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205134143.2427661-1-jani.nikula@intel.com>
References: <20231205134143.2427661-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: pass struct intel_connector to
 connector debugfs fops
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

Prefer struct intel_connector over struct drm_connector, and unify the
declarations in the fops.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 134 +++++++++---------
 1 file changed, 66 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index bd398fdc61ac..668862fa513c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1116,11 +1116,10 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 
 static int i915_panel_show(struct seq_file *m, void *data)
 {
-	struct drm_connector *connector = m->private;
-	struct intel_dp *intel_dp =
-		intel_attached_dp(to_intel_connector(connector));
+	struct intel_connector *connector = m->private;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
-	if (connector->status != connector_status_connected)
+	if (connector->base.status != connector_status_connected)
 		return -ENODEV;
 
 	seq_printf(m, "Panel power up delay: %d\n",
@@ -1138,23 +1137,23 @@ DEFINE_SHOW_ATTRIBUTE(i915_panel);
 
 static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 {
-	struct drm_connector *connector = m->private;
-	struct drm_i915_private *i915 = to_i915(connector->dev);
-	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int ret;
 
 	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
 	if (ret)
 		return ret;
 
-	if (!connector->encoder || connector->status != connector_status_connected) {
+	if (!connector->base.encoder ||
+	    connector->base.status != connector_status_connected) {
 		ret = -ENODEV;
 		goto out;
 	}
 
-	seq_printf(m, "%s:%d HDCP version: ", connector->name,
-		   connector->base.id);
-	intel_hdcp_info(m, intel_connector);
+	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
+		   connector->base.base.id);
+	intel_hdcp_info(m, connector);
 
 out:
 	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
@@ -1165,16 +1164,16 @@ DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
 
 static int i915_lpsp_capability_show(struct seq_file *m, void *data)
 {
-	struct drm_connector *connector = m->private;
-	struct drm_i915_private *i915 = to_i915(connector->dev);
-	struct intel_encoder *encoder;
+	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	int connector_type = connector->base.connector_type;
 	bool lpsp_capable = false;
 
-	encoder = intel_attached_encoder(to_intel_connector(connector));
 	if (!encoder)
 		return -ENODEV;
 
-	if (connector->status != connector_status_connected)
+	if (connector->base.status != connector_status_connected)
 		return -ENODEV;
 
 	if (DISPLAY_VER(i915) >= 13)
@@ -1187,15 +1186,15 @@ static int i915_lpsp_capability_show(struct seq_file *m, void *data)
 		 */
 		lpsp_capable = encoder->port <= PORT_B;
 	else if (DISPLAY_VER(i915) == 11)
-		lpsp_capable = (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
-				connector->connector_type == DRM_MODE_CONNECTOR_eDP);
+		lpsp_capable = (connector_type == DRM_MODE_CONNECTOR_DSI ||
+				connector_type == DRM_MODE_CONNECTOR_eDP);
 	else if (IS_DISPLAY_VER(i915, 9, 10))
 		lpsp_capable = (encoder->port == PORT_A &&
-				(connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
-				 connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
-				 connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort));
+				(connector_type == DRM_MODE_CONNECTOR_DSI ||
+				 connector_type == DRM_MODE_CONNECTOR_eDP ||
+				 connector_type == DRM_MODE_CONNECTOR_DisplayPort));
 	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
-		lpsp_capable = connector->connector_type == DRM_MODE_CONNECTOR_eDP;
+		lpsp_capable = connector_type == DRM_MODE_CONNECTOR_eDP;
 
 	seq_printf(m, "LPSP: %s\n", lpsp_capable ? "capable" : "incapable");
 
@@ -1205,7 +1204,7 @@ DEFINE_SHOW_ATTRIBUTE(i915_lpsp_capability);
 
 static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 {
-	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_connector *connector = m->private;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct drm_crtc *crtc;
 	struct intel_dp *intel_dp;
@@ -1275,13 +1274,13 @@ static ssize_t i915_dsc_fec_support_write(struct file *file,
 					  const char __user *ubuf,
 					  size_t len, loff_t *offp)
 {
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	bool dsc_enable = false;
 	int ret;
-	struct drm_connector *connector =
-		((struct seq_file *)file->private_data)->private;
-	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	if (len == 0)
 		return 0;
@@ -1319,22 +1318,22 @@ static const struct file_operations i915_dsc_fec_support_fops = {
 
 static int i915_dsc_bpc_show(struct seq_file *m, void *data)
 {
-	struct drm_connector *connector = m->private;
-	struct drm_device *dev = connector->dev;
+	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
 	struct drm_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
-	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
 	int ret;
 
 	if (!encoder)
 		return -ENODEV;
 
-	ret = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
 	if (ret)
 		return ret;
 
-	crtc = connector->state->crtc;
-	if (connector->status != connector_status_connected || !crtc) {
+	crtc = connector->base.state->crtc;
+	if (connector->base.status != connector_status_connected || !crtc) {
 		ret = -ENODEV;
 		goto out;
 	}
@@ -1342,7 +1341,7 @@ static int i915_dsc_bpc_show(struct seq_file *m, void *data)
 	crtc_state = to_intel_crtc_state(crtc->state);
 	seq_printf(m, "Input_BPC: %d\n", crtc_state->dsc.config.bits_per_component);
 
-out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
 
 	return ret;
 }
@@ -1351,9 +1350,9 @@ static ssize_t i915_dsc_bpc_write(struct file *file,
 				  const char __user *ubuf,
 				  size_t len, loff_t *offp)
 {
-	struct drm_connector *connector =
-		((struct seq_file *)file->private_data)->private;
-	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	int dsc_bpc = 0;
 	int ret;
@@ -1385,22 +1384,22 @@ static const struct file_operations i915_dsc_bpc_fops = {
 
 static int i915_dsc_output_format_show(struct seq_file *m, void *data)
 {
-	struct drm_connector *connector = m->private;
-	struct drm_device *dev = connector->dev;
+	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
 	struct drm_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
-	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
 	int ret;
 
 	if (!encoder)
 		return -ENODEV;
 
-	ret = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
 	if (ret)
 		return ret;
 
-	crtc = connector->state->crtc;
-	if (connector->status != connector_status_connected || !crtc) {
+	crtc = connector->base.state->crtc;
+	if (connector->base.status != connector_status_connected || !crtc) {
 		ret = -ENODEV;
 		goto out;
 	}
@@ -1409,7 +1408,7 @@ static int i915_dsc_output_format_show(struct seq_file *m, void *data)
 	seq_printf(m, "DSC_Output_Format: %s\n",
 		   intel_output_format_name(crtc_state->output_format));
 
-out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
 
 	return ret;
 }
@@ -1418,9 +1417,9 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
 					    const char __user *ubuf,
 					    size_t len, loff_t *offp)
 {
-	struct drm_connector *connector =
-		((struct seq_file *)file->private_data)->private;
-	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	int dsc_output_format = 0;
 	int ret;
@@ -1452,33 +1451,32 @@ static const struct file_operations i915_dsc_output_format_fops = {
 
 static int i915_dsc_fractional_bpp_show(struct seq_file *m, void *data)
 {
-	struct drm_connector *connector = m->private;
-	struct drm_device *dev = connector->dev;
+	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
 	struct drm_crtc *crtc;
 	struct intel_dp *intel_dp;
-	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct intel_encoder *encoder = intel_attached_encoder(intel_connector);
 	int ret;
 
 	if (!encoder)
 		return -ENODEV;
 
-	ret = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
 	if (ret)
 		return ret;
 
-	crtc = connector->state->crtc;
-	if (connector->status != connector_status_connected || !crtc) {
+	crtc = connector->base.state->crtc;
+	if (connector->base.status != connector_status_connected || !crtc) {
 		ret = -ENODEV;
 		goto out;
 	}
 
-	intel_dp = intel_attached_dp(intel_connector);
+	intel_dp = intel_attached_dp(connector);
 	seq_printf(m, "Force_DSC_Fractional_BPP_Enable: %s\n",
 		   str_yes_no(intel_dp->force_dsc_fractional_bpp_en));
 
 out:
-	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
 
 	return ret;
 }
@@ -1487,10 +1485,10 @@ static ssize_t i915_dsc_fractional_bpp_write(struct file *file,
 					     const char __user *ubuf,
 					     size_t len, loff_t *offp)
 {
-	struct drm_connector *connector =
-		((struct seq_file *)file->private_data)->private;
-	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	bool dsc_fractional_bpp_enable = false;
 	int ret;
@@ -1585,29 +1583,29 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 
 	if (connector_type == DRM_MODE_CONNECTOR_eDP)
 		debugfs_create_file("i915_panel_timings", S_IRUGO, root,
-				    &connector->base, &i915_panel_fops);
+				    connector, &i915_panel_fops);
 
 	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
 	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
 		debugfs_create_file("i915_hdcp_sink_capability", S_IRUGO, root,
-				    &connector->base, &i915_hdcp_sink_capability_fops);
+				    connector, &i915_hdcp_sink_capability_fops);
 	}
 
 	if (DISPLAY_VER(i915) >= 11 &&
 	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst_port) ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
 		debugfs_create_file("i915_dsc_fec_support", 0644, root,
-				    &connector->base, &i915_dsc_fec_support_fops);
+				    connector, &i915_dsc_fec_support_fops);
 
 		debugfs_create_file("i915_dsc_bpc", 0644, root,
-				    &connector->base, &i915_dsc_bpc_fops);
+				    connector, &i915_dsc_bpc_fops);
 
 		debugfs_create_file("i915_dsc_output_format", 0644, root,
-				    &connector->base, &i915_dsc_output_format_fops);
+				    connector, &i915_dsc_output_format_fops);
 
 		debugfs_create_file("i915_dsc_fractional_bpp", 0644, root,
-				    &connector->base, &i915_dsc_fractional_bpp_fops);
+				    connector, &i915_dsc_fractional_bpp_fops);
 	}
 
 	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
@@ -1616,7 +1614,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
 	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
 		debugfs_create_file("i915_lpsp_capability", 0444, root,
-				    &connector->base, &i915_lpsp_capability_fops);
+				    connector, &i915_lpsp_capability_fops);
 }
 
 /**
-- 
2.39.2

