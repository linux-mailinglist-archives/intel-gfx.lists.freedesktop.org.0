Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 253001995A2
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 13:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A386E312;
	Tue, 31 Mar 2020 11:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560D76E81C
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 11:47:56 +0000 (UTC)
IronPort-SDR: XaKZ6zUnuGBCdeTsLVvShTHsDudVCq71fVGfmZmkbHl45cmHbmyjkF6Vru7JdIaAxbkKHj3Ucw
 T1H8ROurQoIw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 04:47:56 -0700
IronPort-SDR: eatatfzbGG4Ni/LH+QyJwiaZOm8vtEzWR5QhfY64CpI1c2eG/UnlxA40QMWgPIWjeF6Y0BS+0P
 WqMt1TVXOKGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="240101006"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga007.fm.intel.com with ESMTP; 31 Mar 2020 04:47:54 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 17:07:34 +0530
Message-Id: <20200331113735.5452-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200331113735.5452-1-anshuman.gupta@intel.com>
References: <20200331113735.5452-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/3] drm/i915: Add i915_lpsp_info debugfs
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

v2:
- CI fixup.
v3:
- register i915_lpsp_info only for supported connector. [Jani]
- use intel_display_power_well_is_enabled() instead of looking
  inside power_well count. [Jani]
- fixes the lpsp capable conditional logic. [Jani]
- combined the lpsp capable and enable info. [Jani]

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 124 ++++++++++++++++++
 .../drm/i915/display/intel_display_power.h    |   2 +
 2 files changed, 126 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 424f4e52f783..b185c4617468 100644
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
@@ -611,6 +612,98 @@ static void intel_hdcp_info(struct seq_file *m,
 	seq_puts(m, "\n");
 }
 
+#define LPSP_CAPABLE(COND) (COND ? seq_puts(m, "LPSP capable\n") : seq_puts(m, "LPSP incapable\n"))
+#define LPSP_ENABLE(COND) (COND ? seq_puts(m, "LPSP enabled\n") : seq_puts(m, "LPSP disabled\n"))
+
+/* LVDS also an embedded panel but we are not interested in it */
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
+static bool intel_have_lpsp_supported_panel(struct drm_connector *connector)
+{
+	return intel_have_gen9_lpsp_panel(connector) ||
+		connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+		connector->connector_type == DRM_MODE_CONNECTOR_HDMIB;
+}
+
+static bool
+intel_lpsp_power_well_enabled(struct drm_i915_private *dev_priv,
+			      enum i915_power_well_id power_well_id)
+{
+	intel_wakeref_t wakeref;
+	bool is_enabled;
+
+	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	is_enabled = intel_display_power_well_is_enabled(dev_priv,
+							 power_well_id);
+	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+
+	return is_enabled;
+}
+
+static void
+intel_lpsp_gen12_helper(struct seq_file *m, struct drm_connector *connector)
+{
+	struct intel_encoder *encoder =
+			intel_attached_encoder(to_intel_connector(connector));
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	bool lpsp_capable = false;
+
+	if (IS_TIGERLAKE(dev_priv))
+		lpsp_capable = encoder->port <= PORT_C;
+
+	LPSP_CAPABLE(lpsp_capable);
+	LPSP_ENABLE(!intel_lpsp_power_well_enabled(dev_priv, ICL_DISP_PW_3));
+}
+
+static void
+intel_lpsp_gen11_helper(struct seq_file *m, struct drm_connector *connector)
+{
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+
+	LPSP_CAPABLE(intel_have_embedded_panel(connector));
+	LPSP_ENABLE(!intel_lpsp_power_well_enabled(dev_priv, ICL_DISP_PW_3));
+}
+
+static void
+intel_lpsp_gen9_helper(struct seq_file *m, struct drm_connector *connector)
+{
+	struct intel_encoder *encoder =
+			intel_attached_encoder(to_intel_connector(connector));
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+
+	LPSP_CAPABLE(encoder->port == PORT_A &&
+		     intel_have_gen9_lpsp_panel(connector));
+	LPSP_ENABLE(!intel_lpsp_power_well_enabled(dev_priv, SKL_DISP_PW_2));
+}
+
+static void
+intel_lpsp_legacy_gen_helper(struct seq_file *m,
+			     struct drm_connector *connector)
+{
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+
+	/*
+	 * Apart from HASWELL/BROADWELL other legacy platform doesn't
+	 * support lpsp.
+	 */
+	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
+		LPSP_CAPABLE(connector->connector_type == DRM_MODE_CONNECTOR_eDP);
+		LPSP_ENABLE(!intel_lpsp_power_well_enabled(dev_priv, HSW_DISP_PW_GLOBAL));
+	} else {
+		seq_puts(m, "LPSP not supported\n");
+	}
+}
+
 static void intel_dp_info(struct seq_file *m,
 			  struct intel_connector *intel_connector)
 {
@@ -1987,6 +2080,33 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
 
+static int i915_lpsp_info_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+
+	if (connector->status != connector_status_connected)
+		return -ENODEV;
+
+	switch (INTEL_GEN(dev_priv)) {
+	case 12:
+		intel_lpsp_gen12_helper(m, connector);
+		break;
+	case 11:
+		intel_lpsp_gen11_helper(m, connector);
+		break;
+	case 10:
+	case 9:
+		intel_lpsp_gen9_helper(m, connector);
+		break;
+	default:
+		intel_lpsp_legacy_gen_helper(m, connector);
+	}
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(i915_lpsp_info);
+
 static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 {
 	struct drm_connector *connector = m->private;
@@ -2130,5 +2250,9 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
 		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
 				    connector, &i915_dsc_fec_support_fops);
 
+	if (intel_have_lpsp_supported_panel(connector))
+		debugfs_create_file("i915_lpsp_info", 0444, root,
+				    connector, &i915_lpsp_info_fops);
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
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
