Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C89C25546C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 08:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26F716E129;
	Fri, 28 Aug 2020 06:19:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CA3E6E129
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Aug 2020 06:19:50 +0000 (UTC)
IronPort-SDR: ZsZ+fisll7Tks1U5MVkEDbau3kjolcNrDOgClmIGqnyyte95+HCrE5RBN3WX1YD0yzoRaG0Ean
 pWgqtOqVZ9/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="241430885"
X-IronPort-AV: E=Sophos;i="5.76,362,1592895600"; d="scan'208";a="241430885"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 23:19:49 -0700
IronPort-SDR: ZtRv3azIXH/dos26JxBfwGd1RXeBMqDlFPErGRtKpJHwFfP/hRnb9uJPlH/m8+1yjz/RfP11iT
 M7dliGyP2djg==
X-IronPort-AV: E=Sophos;i="5.76,362,1592895600"; d="scan'208";a="475546750"
Received: from junhoson-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.35.131])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 23:19:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Aug 2020 09:19:40 +0300
Message-Id: <20200828061941.17051-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add support for mailbox
 #5 EDID
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The ACPI OpRegion Mailbox #5 ASLE extension may contain an EDID to be
used for the embedded display. Add support for using it via the EDID
override mechanism.

Note that the override EDID may be later reset or changed via debugfs,
as usual.

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 46 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h |  8 ++++
 2 files changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index de995362f428..13485969fafa 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -196,6 +196,8 @@ struct opregion_asle_ext {
 #define ASLE_IUER_WINDOWS_BTN		(1 << 1)
 #define ASLE_IUER_POWER_BTN		(1 << 0)
 
+#define ASLE_PHED_EDID_VALID_MASK	0x3
+
 /* Software System Control Interrupt (SWSCI) */
 #define SWSCI_SCIC_INDICATOR		(1 << 0)
 #define SWSCI_SCIC_MAIN_FUNCTION_SHIFT	1
@@ -909,8 +911,10 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		opregion->asle->ardy = ASLE_ARDY_NOT_READY;
 	}
 
-	if (mboxes & MBOX_ASLE_EXT)
+	if (mboxes & MBOX_ASLE_EXT) {
 		drm_dbg(&dev_priv->drm, "ASLE extension supported\n");
+		opregion->asle_ext = base + OPREGION_ASLE_EXT_OFFSET;
+	}
 
 	if (intel_load_vbt_firmware(dev_priv) == 0)
 		goto out;
@@ -1041,6 +1045,45 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
 	return ret - 1;
 }
 
+void intel_opregion_edid_override(struct intel_connector *intel_connector)
+{
+	struct drm_connector *connector = &intel_connector->base;
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_opregion *opregion = &i915->opregion;
+	const void *in_edid;
+	const struct edid *edid;
+	int len, ret;
+
+	if (!opregion->asle_ext)
+		return;
+
+	in_edid = opregion->asle_ext->bddc;
+
+	/* Validity corresponds to number of 128-byte blocks */
+	len = (opregion->asle_ext->phed & ASLE_PHED_EDID_VALID_MASK) * 128;
+	if (!len || !memchr_inv(in_edid, 0, len))
+		return;
+
+	edid = in_edid;
+
+	/*
+	 * FIXME: Might also check drm_edid_is_valid(edid) here but that
+	 * requires mutable edid.
+	 */
+	if (len < EDID_LENGTH * (1 + edid->extensions)) {
+		drm_dbg_kms(&i915->drm, "Invalid EDID in ACPI OpRegion (Mailbox #5)\n");
+		return;
+	}
+
+	connector->override_edid = false;
+	ret = drm_connector_update_edid_property(connector, edid);
+	if (ret)
+		return;
+
+	drm_dbg_kms(&i915->drm, "Using OpRegion EDID for [CONNECTOR:%d:%s]\n",
+		    connector->base.id, connector->name);
+}
+
 void intel_opregion_register(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->opregion;
@@ -1131,6 +1174,7 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	opregion->acpi = NULL;
 	opregion->swsci = NULL;
 	opregion->asle = NULL;
+	opregion->asle_ext = NULL;
 	opregion->vbt = NULL;
 	opregion->lid_state = NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 4aa68ffbd30e..b407a0744c40 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -29,12 +29,14 @@
 #include <linux/pci.h>
 
 struct drm_i915_private;
+struct intel_connector;
 struct intel_encoder;
 
 struct opregion_header;
 struct opregion_acpi;
 struct opregion_swsci;
 struct opregion_asle;
+struct opregion_asle_ext;
 
 struct intel_opregion {
 	struct opregion_header *header;
@@ -43,6 +45,7 @@ struct intel_opregion {
 	u32 swsci_gbda_sub_functions;
 	u32 swsci_sbcb_sub_functions;
 	struct opregion_asle *asle;
+	struct opregion_asle_ext *asle_ext;
 	void *rvda;
 	void *vbt_firmware;
 	const void *vbt;
@@ -71,6 +74,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
 				  pci_power_t state);
 int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
+void intel_opregion_edid_override(struct intel_connector *connector);
 
 #else /* CONFIG_ACPI*/
 
@@ -117,6 +121,10 @@ static inline int intel_opregion_get_panel_type(struct drm_i915_private *dev)
 	return -ENODEV;
 }
 
+void intel_opregion_edid_override(struct intel_connector *connector)
+{
+}
+
 #endif /* CONFIG_ACPI */
 
 #endif
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
