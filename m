Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EC994344E
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 18:44:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FF2410E688;
	Wed, 31 Jul 2024 16:44:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YIHPcTMj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07EAF10E68E;
 Wed, 31 Jul 2024 16:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722444293; x=1753980293;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iMEfxnozBpBfk7xMimrCK5YtbmwHhBkpxabRkn5XdqQ=;
 b=YIHPcTMjrund0s3Tjs9eAeC1Vsu7UBEXiZyhxlEq7g5g/7R5htpoec8f
 pxJV1rGH44/PQ5PvTkCQuUqGesC7p26hD6doXfGW3Pvi5iibKKlayHt93
 4oI9Gb7dtURA2d4hl7EXHUwSpEjycgFzLz0sYi0BeIl+cvXhLpcfC3dy1
 3ueYLAMLD4rj7vM2PqOT4DLeykvnXFSn0dsD9TKnGOKbM3uc8zd9uXGje
 Zq34S7jlogofnO0re/9KxmQT6Ml2FZg0sAXjC2SNh1pdUpmY13wdSitTp
 ACWZg7XF0k3P1L63J8VR9q8Ks5zVQtzkTWZge8TV+8YluluACHmVoPuQ6 g==;
X-CSE-ConnectionGUID: sZvNhNQdSlar8qNFS8XbgA==
X-CSE-MsgGUID: n6MMcD1HQDG6vUsCYEwNTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="45754404"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="45754404"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:44:51 -0700
X-CSE-ConnectionGUID: tz99+xSwQky4pqfwyLa6uw==
X-CSE-MsgGUID: hPOGXOanQrSfFsS3cynzww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54405300"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.183])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:44:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/4] drm/i915/opregion: unify intel_encoder/intel_connector
 naming
Date: Wed, 31 Jul 2024 19:44:34 +0300
Message-Id: <d573ffe96416121297d9febb92156ea845de2b80.1722444150.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722444150.git.jani.nikula@intel.com>
References: <cover.1722444150.git.jani.nikula@intel.com>
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

Prefer the short encoder/connector names for struct
intel_encoder/intel_connector variables and parameters.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 23 +++++++++----------
 drivers/gpu/drm/i915/display/intel_opregion.h |  4 ++--
 2 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 4ff646a7f05d..4c9b9e7ebc91 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -381,10 +381,10 @@ static int swsci(struct drm_i915_private *dev_priv,
 #define DISPLAY_TYPE_EXTERNAL_FLAT_PANEL	2
 #define DISPLAY_TYPE_INTERNAL_FLAT_PANEL	3
 
-int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
+int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 				  bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 parm = 0;
 	u32 type = 0;
 	u32 port;
@@ -399,10 +399,10 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 	if (ret)
 		return ret;
 
-	if (intel_encoder->type == INTEL_OUTPUT_DSI)
+	if (encoder->type == INTEL_OUTPUT_DSI)
 		port = 0;
 	else
-		port = intel_encoder->port;
+		port = encoder->port;
 
 	if (port == PORT_E)  {
 		port = 0;
@@ -421,15 +421,15 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 	if (port > 4) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "[ENCODER:%d:%s] port %c (index %u) out of bounds for display power state notification\n",
-			    intel_encoder->base.base.id, intel_encoder->base.name,
-			    port_name(intel_encoder->port), port);
+			    encoder->base.base.id, encoder->base.name,
+			    port_name(encoder->port), port);
 		return -EINVAL;
 	}
 
 	if (!enable)
 		parm |= 4 << 8;
 
-	switch (intel_encoder->type) {
+	switch (encoder->type) {
 	case INTEL_OUTPUT_ANALOG:
 		type = DISPLAY_TYPE_CRT;
 		break;
@@ -446,7 +446,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 	default:
 		drm_WARN_ONCE(&dev_priv->drm, 1,
 			      "unsupported intel_encoder type %d\n",
-			      intel_encoder->type);
+			      encoder->type);
 		return -EINVAL;
 	}
 
@@ -1093,7 +1093,7 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
 
 /**
  * intel_opregion_get_edid - Fetch EDID from ACPI OpRegion mailbox #5
- * @intel_connector: eDP connector
+ * @connector: eDP connector
  *
  * This reads the ACPI Opregion mailbox #5 to extract the EDID that is passed
  * to it.
@@ -1102,10 +1102,9 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
  * The EDID in the OpRegion, or NULL if there is none or it's invalid.
  *
  */
-const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_connector)
+const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector)
 {
-	struct drm_connector *connector = &intel_connector->base;
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_opregion *opregion = i915->display.opregion;
 	const struct drm_edid *drm_edid;
 	const void *edid;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 4b2b8e752632..4dcd13c672e4 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -46,7 +46,7 @@ void intel_opregion_suspend(struct drm_i915_private *dev_priv,
 
 bool intel_opregion_asle_present(struct drm_i915_private *i915);
 void intel_opregion_asle_intr(struct drm_i915_private *dev_priv);
-int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
+int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 				  bool enable);
 int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
 				  pci_power_t state);
@@ -98,7 +98,7 @@ static inline void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
 }
 
 static inline int
-intel_opregion_notify_encoder(struct intel_encoder *intel_encoder, bool enable)
+intel_opregion_notify_encoder(struct intel_encoder *encoder, bool enable)
 {
 	return 0;
 }
-- 
2.39.2

