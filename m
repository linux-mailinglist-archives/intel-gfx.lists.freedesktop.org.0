Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A022D1832A1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 15:16:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDC0A6EAD8;
	Thu, 12 Mar 2020 14:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625276EAD7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 14:15:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 07:15:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="261515034"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga002.jf.intel.com with ESMTP; 12 Mar 2020 07:15:55 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Mar 2020 19:37:02 +0530
Message-Id: <20200312140702.14028-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312140702.14028-1-anshuman.gupta@intel.com>
References: <20200312140702.14028-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add i915_lpsp_info debugfs
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

New i915_pm_lpsp igt solution approach relies on connector specific
debugfs attribute i915_lpsp_info, it exposes whether an output is
capable of driving lpsp and exposes lpsp enablement info.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 65 +++++++++++++++++++
 .../drm/i915/display/intel_display_power.h    |  2 +
 2 files changed, 67 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 1e6eb7f2f72d..16ee04368cc1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -9,6 +9,7 @@
 #include "i915_debugfs.h"
 #include "intel_csr.h"
 #include "intel_display_debugfs.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_fbc.h"
@@ -611,6 +612,56 @@ static void intel_hdcp_info(struct seq_file *m,
 	seq_puts(m, "\n");
 }
 
+static bool intel_have_embedded_panel(struct drm_connector *connector)
+{
+	return connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
+		connector->connector_type == DRM_MODE_CONNECTOR_eDP;
+}
+
+static bool intel_have_hdmi_panel(struct drm_connector *connector)
+{
+	return connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+			connector->connector_type == DRM_MODE_CONNECTOR_HDMIB;
+}
+
+static void
+intel_lpsp_capable_info(struct seq_file *m, struct drm_connector *connector)
+{
+	struct intel_encoder *encoder =
+			intel_attached_encoder(to_intel_connector(connector));
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	bool lpsp_capable = false;
+
+	if (IS_TIGERLAKE(dev_priv) && encoder->port <= PORT_C) {
+		lpsp_capable = true;
+	} else if (INTEL_GEN(dev_priv) >= 11 && intel_have_embedded_panel(connector)) {
+		lpsp_capable = true;
+	} else if (INTEL_GEN(dev_priv) >= 9 && (encoder->port == PORT_A &&
+		   !intel_have_hdmi_panel(connector))) {
+		lpsp_capable = true;
+	} else if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
+		lpsp_capable = true;
+	}
+
+	lpsp_capable ? seq_puts(m, "LPSP capable\n") : seq_puts(m, "LPSP incapable\n");
+}
+
+static void
+intel_lpsp_enable_info(struct seq_file *m, struct drm_connector *connector)
+{
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	bool is_lpsp = false;
+
+	if (INTEL_GEN(dev_priv) >= 11)
+		is_lpsp = !intel_display_power_well_is_enabled(dev_priv,
+							       ICL_DISP_PW_3);
+	else
+		is_lpsp = !intel_display_power_well_is_enabled(dev_priv,
+							       SKL_DISP_PW_2);
+
+	is_lpsp ? seq_puts(m, "LPSP enabled\n") : seq_puts(m, "LPSP disabled\n");
+}
+
 static void intel_dp_info(struct seq_file *m,
 			  struct intel_connector *intel_connector)
 {
@@ -1987,6 +2038,17 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
 
+static int i915_lpsp_info_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+
+	intel_lpsp_capable_info(m, connector);
+	intel_lpsp_enable_info(m, connector);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(i915_lpsp_info);
+
 static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 {
 	struct drm_connector *connector = m->private;
@@ -2130,5 +2192,8 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
 		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
 				    connector, &i915_dsc_fec_support_fops);
 
+	debugfs_create_file("i915_lpsp_info", S_IRUGO, root,
+			    connector, &i915_lpsp_info_fops);
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 56cbae6327b7..14c5ad20287f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -266,6 +266,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain);
 
 bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				    enum intel_display_power_domain domain);
+bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
+					 enum i915_power_well_id power_well_id);
 bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				      enum intel_display_power_domain domain);
 intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
