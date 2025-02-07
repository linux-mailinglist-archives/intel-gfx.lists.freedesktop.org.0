Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F5AA2C0BF
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 11:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA86010EAA5;
	Fri,  7 Feb 2025 10:41:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJU724J9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D21A10EAA5;
 Fri,  7 Feb 2025 10:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738924886; x=1770460886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FFTejVT4fMS/SHOodQ9Mww67LbT9pzXnFtyerAgxPZY=;
 b=BJU724J92zt2JYiAcbb+joUgcW3S9jyYwMb4GoWf1ARPV2VT96WPKr2y
 +m7sjh1UYxFtG7iUQYQQKrIoxMBwgP9c46CM5GDumK0xFvPQgUv0QnxeW
 02IyNeO+xlOg4IIb2HRZu8hepxuqhzE3QeVCKWqFc/LcyGy0Kpx2itZgt
 EXAJbxso9X3vVN5Y4rzRKtzXqev3g8TlpnzunwLTl+sKJdUHicpX3IkUJ
 0LcExMijxif/3wV+lPRLmi4ZYdgqLypE5YhTrfJ7Dnyea/Sn3h6jVQKlX
 7NXDCiPU+Kd1ufxImLK6TqHk52WT3gZHooFaxS63kSo8M/PwiAiI9aUSV Q==;
X-CSE-ConnectionGUID: eaFN7y37QoCMTduuWV56Ag==
X-CSE-MsgGUID: JdeayuThR7uU6p8kFoIu5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="50200463"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="50200463"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:41:25 -0800
X-CSE-ConnectionGUID: 4bkvpk0QRheJajabD2gkyg==
X-CSE-MsgGUID: fjuwf1UJRo2ZljFdhhTB9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111341621"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:41:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 1/3] drm/i915/hdcp: Move HDCP debugfs to intel_hdcp.c
Date: Fri,  7 Feb 2025 12:41:10 +0200
Message-Id: <c118e992673f6b054aacaff0e1850fcea329e000.1738924826.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738924826.git.jani.nikula@intel.com>
References: <cover.1738924826.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Continue with placing debugfs next to the implementation.
intel_connector_info() still needs intel_hdcp_info(), so we'll need to
expose that too.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 74 +----------------
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 82 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  4 +
 3 files changed, 88 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 926f09c35084..e547ea66657d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -213,38 +213,6 @@ static void intel_panel_info(struct seq_file *m,
 		intel_seq_print_mode(m, 2, fixed_mode);
 }
 
-static void intel_hdcp_info(struct seq_file *m,
-			    struct intel_connector *intel_connector,
-			    bool remote_req)
-{
-	bool hdcp_cap = false, hdcp2_cap = false;
-
-	if (!intel_connector->hdcp.shim) {
-		seq_puts(m, "No Connector Support");
-		goto out;
-	}
-
-	if (remote_req) {
-		intel_hdcp_get_remote_capability(intel_connector,
-						 &hdcp_cap,
-						 &hdcp2_cap);
-	} else {
-		hdcp_cap = intel_hdcp_get_capability(intel_connector);
-		hdcp2_cap = intel_hdcp2_get_capability(intel_connector);
-	}
-
-	if (hdcp_cap)
-		seq_puts(m, "HDCP1.4 ");
-	if (hdcp2_cap)
-		seq_puts(m, "HDCP2.2 ");
-
-	if (!hdcp_cap && !hdcp2_cap)
-		seq_puts(m, "None");
-
-out:
-	seq_puts(m, "\n");
-}
-
 static void intel_dp_info(struct seq_file *m, struct intel_connector *connector)
 {
 	struct intel_encoder *intel_encoder = intel_attached_encoder(connector);
@@ -309,12 +277,7 @@ static void intel_connector_info(struct seq_file *m,
 		break;
 	}
 
-	seq_puts(m, "\tHDCP version: ");
-	if (intel_connector->mst_port) {
-		intel_hdcp_info(m, intel_connector, true);
-		seq_puts(m, "\tMST Hub HDCP version: ");
-	}
-	intel_hdcp_info(m, intel_connector, false);
+	intel_hdcp_info(m, intel_connector);
 
 	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
 
@@ -893,33 +856,6 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_display_debugfs_params(display);
 }
 
-static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
-{
-	struct intel_connector *connector = m->private;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	int ret;
-
-	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
-	if (ret)
-		return ret;
-
-	if (!connector->base.encoder ||
-	    connector->base.status != connector_status_connected) {
-		ret = -ENODEV;
-		goto out;
-	}
-
-	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
-		   connector->base.base.id);
-	intel_hdcp_info(m, connector, false);
-
-out:
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
-
-	return ret;
-}
-DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
-
 static int i915_lpsp_capability_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
@@ -1401,18 +1337,12 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 		return;
 
 	intel_drrs_connector_debugfs_add(connector);
+	intel_hdcp_connector_debugfs_add(connector);
 	intel_pps_connector_debugfs_add(connector);
 	intel_psr_connector_debugfs_add(connector);
 	intel_alpm_lobf_debugfs_add(connector);
 	intel_dp_link_training_debugfs_add(connector);
 
-	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
-	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
-	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
-		debugfs_create_file("i915_hdcp_sink_capability", 0444, root,
-				    connector, &i915_hdcp_sink_capability_fops);
-	}
-
 	if (DISPLAY_VER(i915) >= 11 &&
 	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst_port) ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 7cc0399b2a5d..718d8bad77a0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -9,6 +9,7 @@
  */
 
 #include <linux/component.h>
+#include <linux/debugfs.h>
 #include <linux/i2c.h>
 #include <linux/random.h>
 
@@ -2731,3 +2732,84 @@ void intel_hdcp_handle_cp_irq(struct intel_connector *connector)
 
 	queue_delayed_work(i915->unordered_wq, &hdcp->check_work, 0);
 }
+
+static void __intel_hdcp_info(struct seq_file *m, struct intel_connector *intel_connector,
+			      bool remote_req)
+{
+	bool hdcp_cap = false, hdcp2_cap = false;
+
+	if (!intel_connector->hdcp.shim) {
+		seq_puts(m, "No Connector Support");
+		goto out;
+	}
+
+	if (remote_req) {
+		intel_hdcp_get_remote_capability(intel_connector,
+						 &hdcp_cap,
+						 &hdcp2_cap);
+	} else {
+		hdcp_cap = intel_hdcp_get_capability(intel_connector);
+		hdcp2_cap = intel_hdcp2_get_capability(intel_connector);
+	}
+
+	if (hdcp_cap)
+		seq_puts(m, "HDCP1.4 ");
+	if (hdcp2_cap)
+		seq_puts(m, "HDCP2.2 ");
+
+	if (!hdcp_cap && !hdcp2_cap)
+		seq_puts(m, "None");
+
+out:
+	seq_puts(m, "\n");
+}
+
+void intel_hdcp_info(struct seq_file *m, struct intel_connector *connector)
+{
+	seq_puts(m, "\tHDCP version: ");
+	if (connector->mst_port) {
+		__intel_hdcp_info(m, connector, true);
+		seq_puts(m, "\tMST Hub HDCP version: ");
+	}
+	__intel_hdcp_info(m, connector, false);
+}
+
+static int intel_hdcp_sink_capability_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	int ret;
+
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	if (!connector->base.encoder ||
+	    connector->base.status != connector_status_connected) {
+		ret = -ENODEV;
+		goto out;
+	}
+
+	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
+		   connector->base.base.id);
+	__intel_hdcp_info(m, connector, false);
+
+out:
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return ret;
+}
+DEFINE_SHOW_ATTRIBUTE(intel_hdcp_sink_capability);
+
+void intel_hdcp_connector_debugfs_add(struct intel_connector *connector)
+{
+	struct dentry *root = connector->base.debugfs_entry;
+	int connector_type = connector->base.connector_type;
+
+	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
+		debugfs_create_file("i915_hdcp_sink_capability", 0444, root,
+				    connector, &intel_hdcp_sink_capability_fops);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index d99830cfb798..76bd3996f636 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -19,6 +19,7 @@ struct intel_digital_port;
 struct intel_display;
 struct intel_encoder;
 struct intel_hdcp_shim;
+struct seq_file;
 enum port;
 enum transcoder;
 
@@ -48,4 +49,7 @@ void intel_hdcp_component_fini(struct intel_display *display);
 void intel_hdcp_cleanup(struct intel_connector *connector);
 void intel_hdcp_handle_cp_irq(struct intel_connector *connector);
 
+void intel_hdcp_info(struct seq_file *m, struct intel_connector *connector);
+void intel_hdcp_connector_debugfs_add(struct intel_connector *connector);
+
 #endif /* __INTEL_HDCP_H__ */
-- 
2.39.5

