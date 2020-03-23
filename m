Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBF118F03B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 08:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5928889E5A;
	Mon, 23 Mar 2020 07:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAE9189E52
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:28:25 +0000 (UTC)
IronPort-SDR: fH+zFPaY61eizG8zzeooxPP/fZbsboCb5WOfx+3sxY2FK6D/vooqlJ+g1NFAkgpcAASk2FeKpS
 OYYidq5oJraw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 00:28:25 -0700
IronPort-SDR: Z9k5oYrYrtrw1iHWZ5V3ZETBSRctajWo8V4bHZEHLSqlJYTRDj01eJY7EjJh/FdK3W/7Ga3yhr
 JNZq0dPzAagQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,295,1580803200"; d="scan'208";a="419414472"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005.jf.intel.com with ESMTP; 23 Mar 2020 00:28:23 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 12:43:12 +0530
Message-Id: <20200323071313.5858-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200323071313.5858-1-anshuman.gupta@intel.com>
References: <20200323071313.5858-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Add i915_lpsp_info debugfs
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com, martin.peres@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

New i915_pm_lpsp igt solution approach relies on connector specific
debugfs attribute i915_lpsp_info, it exposes whether an output is
capable of driving lpsp and exposes lpsp enablement info.

v2:
- CI fixup.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 102 ++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 424f4e52f783..3105f4a80764 100644
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
@@ -611,6 +612,93 @@ static void intel_hdcp_info(struct seq_file *m,
 	seq_puts(m, "\n");
 }
 
+static bool intel_have_embedded_panel(struct drm_connector *connector)
+{
+	return connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
+		connector->connector_type == DRM_MODE_CONNECTOR_eDP;
+}
+
+static bool intel_have_gen9_lpsp_panel(struct drm_connector *connector)
+{
+	return intel_have_embedded_panel(connector) ||
+		connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort;
+}
+
+static int
+intel_lpsp_power_well_enabled(struct drm_i915_private *dev_priv,
+			      enum i915_power_well_id power_well_id)
+{
+	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct i915_power_well *power_well = NULL;
+	bool is_enabled;
+
+	mutex_lock(&power_domains->lock);
+
+	for_each_power_well(dev_priv, power_well)
+		if (power_well->desc->id == power_well_id)
+			break;
+
+	if (drm_WARN_ON(&dev_priv->drm, !power_well)) {
+		mutex_unlock(&power_domains->lock);
+		/* Assume that BIOS has enabled the power well*/
+		return true;
+	}
+
+	is_enabled = !!power_well->count;
+	mutex_unlock(&power_domains->lock);
+
+	return is_enabled;
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
+		   intel_have_gen9_lpsp_panel(connector))) {
+		lpsp_capable = true;
+	} else if ((IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) &&
+		   connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
+		lpsp_capable = true;
+	} else {
+		seq_puts(m, "LPSP not supported\n");
+		return;
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
+	if (INTEL_GEN(dev_priv) >= 11) {
+		is_lpsp = !intel_lpsp_power_well_enabled(dev_priv,
+							 ICL_DISP_PW_3);
+	} else if (INTEL_GEN(dev_priv) >= 9) {
+		is_lpsp = !intel_lpsp_power_well_enabled(dev_priv,
+							 SKL_DISP_PW_2);
+	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
+		is_lpsp = !intel_lpsp_power_well_enabled(dev_priv,
+							 HSW_DISP_PW_GLOBAL);
+	} else {
+		seq_puts(m, "LPSP not supported\n");
+		return;
+	}
+
+	is_lpsp ? seq_puts(m, "LPSP enabled\n") : seq_puts(m, "LPSP disabled\n");
+}
+
 static void intel_dp_info(struct seq_file *m,
 			  struct intel_connector *intel_connector)
 {
@@ -1987,6 +2075,17 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
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
@@ -2130,5 +2229,8 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
 		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
 				    connector, &i915_dsc_fec_support_fops);
 
+	debugfs_create_file("i915_lpsp_info", S_IRUGO, root,
+			    connector, &i915_lpsp_info_fops);
+
 	return 0;
 }
-- 
2.25.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
