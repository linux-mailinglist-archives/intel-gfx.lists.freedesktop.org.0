Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB771AA2AE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 15:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5286E9D9;
	Wed, 15 Apr 2020 13:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B3536E9D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 13:00:44 +0000 (UTC)
IronPort-SDR: lVUOdSl8A0o+RQuW8ZAX43Ol9AmtY+SvHvWTsafHShDO0sdeqc11I0G4/I0rE3Bd1ePPgYaTrY
 TzJMSh1MigNQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 06:00:44 -0700
IronPort-SDR: im1Rhv6OS25yAOss2qn1ntpvloLPlB/ox/e/oicM4X/9IuTK9ojGLevwGENlHy9LJKEusHhvik
 ODdIUrcb84eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="273374611"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga008.jf.intel.com with ESMTP; 15 Apr 2020 06:00:41 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 18:20:48 +0530
Message-Id: <20200415125048.21992-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200409060646.30817-3-anshuman.gupta@intel.com>
References: <20200409060646.30817-3-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915: Add i915_lpsp_capability
 debugfs
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
debugfs attribute i915_lpsp_capability, it exposes whether an output is
capable of driving lpsp.

v2:
- CI fixup.
v3:
- register i915_lpsp_info only for supported connector. [Jani]
- use intel_display_power_well_is_enabled() instead of looking
  inside power_well count. [Jani]
- fixes the lpsp capable conditional logic. [Jani]
- combined the lpsp capable and enable info. [Jani]
v4:
- Separate out connector based debugfs i915_lpsp_capability
  lpsp enable status would be exposes by different entry. [Animesh]
v5:
- Add Platform Gen condition to add i915_lpsp_capability
  and some cosmetic nitpick changes. [Animesh]

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index bdeea2e02642..ea48de3cac24 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1991,6 +1991,48 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
 
+#define LPSP_CAPABLE(COND) (COND ? seq_puts(m, "LPSP: capable\n") : \
+				seq_puts(m, "LPSP: incapable\n"))
+
+static int i915_lpsp_capability_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+	struct intel_encoder *encoder =
+			intel_attached_encoder(to_intel_connector(connector));
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+
+	if (connector->status != connector_status_connected)
+		return -ENODEV;
+
+	switch (INTEL_GEN(i915)) {
+	case 12:
+		/*
+		 * Actually TGL can drive LPSP on port till DDI_C
+		 * but there is no physical connected DDI_C on TGL sku's,
+		 * even driver is not initilizing DDI_C port for gen12.
+		 */
+		LPSP_CAPABLE(encoder->port <= PORT_B);
+		break;
+	case 11:
+		LPSP_CAPABLE(connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
+			     connector->connector_type == DRM_MODE_CONNECTOR_eDP);
+		break;
+	case 10:
+	case 9:
+		LPSP_CAPABLE(encoder->port == PORT_A &&
+			     (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
+			     connector->connector_type == DRM_MODE_CONNECTOR_eDP  ||
+			     connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort));
+		break;
+	default:
+		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+			LPSP_CAPABLE(connector->connector_type == DRM_MODE_CONNECTOR_eDP);
+	}
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(i915_lpsp_capability);
+
 static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 {
 	struct drm_connector *connector = m->private;
@@ -2134,5 +2176,16 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
 		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
 				    connector, &i915_dsc_fec_support_fops);
 
+	/* Legacy panels doesn't lpsp on any platform */
+	if ((INTEL_GEN(dev_priv) >= 9 || IS_HASWELL(dev_priv) ||
+	     IS_BROADWELL(dev_priv)) &&
+	     (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
+	     connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
+	     connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	     connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	     connector->connector_type == DRM_MODE_CONNECTOR_HDMIB))
+		debugfs_create_file("i915_lpsp_capability", 0444, root,
+				    connector, &i915_lpsp_capability_fops);
+
 	return 0;
 }
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
