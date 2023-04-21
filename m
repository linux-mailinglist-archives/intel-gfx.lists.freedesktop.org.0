Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6286EA9A5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAF610EE09;
	Fri, 21 Apr 2023 11:48:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0B3810EDF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077730; x=1713613730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QP1OhnykwU4Wovh4rcdVe9/gg6N/T4GuEkw3SbyH7P0=;
 b=OuQD8ihqduAe0NuvpDhCYpbvQhIpEeU1d2v7CnIEkeof86hQf5kt7Y18
 LYkOCvp2ubd2vpsuaT2JPWm7WYzV1CVAtZwluxfb4hpxdk4sCubWPOBSV
 0SlOewLyqQ0Hdn/80ujab5mkAcTNo+M86ljjSw71Fkz+G+x2gO5F0khFl
 NLwdUzNKG9RzPu9yR5DogWNmGbpb6n6GijV8RtUbIunpdrSI4D7Jbr3Nm
 JvMAYsDBemouIiTKvpWIPfofo0nt1rJ/TZ0Vae1Tj/QCionJxcOsba/hy
 45DojgiQigDD5oLJiZSBm0nYxif5hV9DxwPB+bMq8UzOy3uykYeKX+Y4B A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="432252065"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="432252065"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="642491507"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="642491507"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:51 +0300
Message-Id: <c05fce420aa338ac7aa69ecc68cb15fdfa0f2f48.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/13] drm/i915/display: switch the rest of the
 connectors to struct drm_edid
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

Convert the remaining uses of struct edid based drm_get_edid(),
drm_connector_update_edid_property() and drm_add_edid_modes() calls to
the struct drm_edid based drm_edid_read_ddc(),
drm_edid_connector_update() and drm_edid_connector_add_modes().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    | 18 ++---
 .../gpu/drm/i915/display/intel_connector.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_crt.c      | 34 +++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 10 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 73 ++++++++++---------
 5 files changed, 74 insertions(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 257afac34839..00ea71b03ec7 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -176,15 +176,15 @@ enum pipe intel_connector_get_pipe(struct intel_connector *connector)
 /**
  * intel_connector_update_modes - update connector from edid
  * @connector: DRM connector device to use
- * @edid: previously read EDID information
+ * @drm_edid: previously read EDID information
  */
 int intel_connector_update_modes(struct drm_connector *connector,
-				struct edid *edid)
+				 const struct drm_edid *drm_edid)
 {
 	int ret;
 
-	drm_connector_update_edid_property(connector, edid);
-	ret = drm_add_edid_modes(connector, edid);
+	drm_edid_connector_update(connector, drm_edid);
+	ret = drm_edid_connector_add_modes(connector);
 
 	return ret;
 }
@@ -199,15 +199,15 @@ int intel_connector_update_modes(struct drm_connector *connector,
 int intel_ddc_get_modes(struct drm_connector *connector,
 			struct i2c_adapter *adapter)
 {
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 	int ret;
 
-	edid = drm_get_edid(connector, adapter);
-	if (!edid)
+	drm_edid = drm_edid_read_ddc(connector, adapter);
+	if (!drm_edid)
 		return 0;
 
-	ret = intel_connector_update_modes(connector, edid);
-	kfree(edid);
+	ret = intel_connector_update_modes(connector, drm_edid);
+	drm_edid_free(drm_edid);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index 9d2bc261b204..aaf7281462dc 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -9,7 +9,7 @@
 #include <linux/types.h>
 
 struct drm_connector;
-struct edid;
+struct drm_edid;
 struct i2c_adapter;
 struct intel_connector;
 struct intel_encoder;
@@ -25,7 +25,7 @@ void intel_connector_attach_encoder(struct intel_connector *connector,
 bool intel_connector_get_hw_state(struct intel_connector *connector);
 enum pipe intel_connector_get_pipe(struct intel_connector *connector);
 int intel_connector_update_modes(struct drm_connector *connector,
-				 struct edid *edid);
+				 const struct drm_edid *drm_edid);
 int intel_ddc_get_modes(struct drm_connector *c, struct i2c_adapter *adapter);
 void intel_attach_force_audio_property(struct drm_connector *connector);
 void intel_attach_broadcast_rgb_property(struct drm_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 13519f78cf9f..c198145effd1 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -607,37 +607,38 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 	return ret;
 }
 
-static struct edid *intel_crt_get_edid(struct drm_connector *connector,
-				struct i2c_adapter *i2c)
+static const struct drm_edid *intel_crt_get_edid(struct drm_connector *connector,
+						 struct i2c_adapter *i2c)
 {
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 
-	edid = drm_get_edid(connector, i2c);
+	drm_edid = drm_edid_read_ddc(connector, i2c);
 
-	if (!edid && !intel_gmbus_is_forced_bit(i2c)) {
+	if (!drm_edid && !intel_gmbus_is_forced_bit(i2c)) {
 		drm_dbg_kms(connector->dev,
 			    "CRT GMBUS EDID read failed, retry using GPIO bit-banging\n");
 		intel_gmbus_force_bit(i2c, true);
-		edid = drm_get_edid(connector, i2c);
+		drm_edid = drm_edid_read_ddc(connector, i2c);
 		intel_gmbus_force_bit(i2c, false);
 	}
 
-	return edid;
+	return drm_edid;
 }
 
 /* local version of intel_ddc_get_modes() to use intel_crt_get_edid() */
 static int intel_crt_ddc_get_modes(struct drm_connector *connector,
 				struct i2c_adapter *adapter)
 {
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 	int ret;
 
-	edid = intel_crt_get_edid(connector, adapter);
-	if (!edid)
+	drm_edid = intel_crt_get_edid(connector, adapter);
+	if (!drm_edid)
 		return 0;
 
-	ret = intel_connector_update_modes(connector, edid);
-	kfree(edid);
+	ret = intel_connector_update_modes(connector, drm_edid);
+
+	drm_edid_free(drm_edid);
 
 	return ret;
 }
@@ -646,14 +647,15 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
 {
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct drm_i915_private *dev_priv = to_i915(crt->base.base.dev);
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 	struct i2c_adapter *i2c;
 	bool ret = false;
 
 	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->display.vbt.crt_ddc_pin);
-	edid = intel_crt_get_edid(connector, i2c);
+	drm_edid = intel_crt_get_edid(connector, i2c);
 
-	if (edid) {
+	if (drm_edid) {
+		const struct edid *edid = drm_edid_raw(drm_edid);
 		bool is_digital = edid->input & DRM_EDID_INPUT_DIGITAL;
 
 		/*
@@ -674,7 +676,7 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
 			    "CRT not detected via DDC:0x50 [no valid EDID found]\n");
 	}
 
-	kfree(edid);
+	drm_edid_free(drm_edid);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 506118a13866..deb926c2c1c7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -837,15 +837,17 @@ static int intel_dp_mst_get_ddc_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct intel_dp *intel_dp = intel_connector->mst_port;
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 	int ret;
 
 	if (drm_connector_is_unregistered(connector))
 		return intel_connector_update_modes(connector, NULL);
 
-	edid = drm_dp_mst_get_edid(connector, &intel_dp->mst_mgr, intel_connector->port);
-	ret = intel_connector_update_modes(connector, edid);
-	kfree(edid);
+	drm_edid = drm_dp_mst_edid_read(connector, &intel_dp->mst_mgr, intel_connector->port);
+
+	ret = intel_connector_update_modes(connector, drm_edid);
+
+	drm_edid_free(drm_edid);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 0f0c1733cd0d..cdd8adbd5432 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2035,22 +2035,23 @@ intel_sdvo_multifunc_encoder(struct intel_sdvo *intel_sdvo)
 	return hweight16(intel_sdvo->caps.output_flags) > 1;
 }
 
-static struct edid *
+static const struct drm_edid *
 intel_sdvo_get_edid(struct drm_connector *connector)
 {
 	struct intel_sdvo *sdvo = intel_attached_sdvo(to_intel_connector(connector));
-	return drm_get_edid(connector, &sdvo->ddc);
+	return drm_edid_read_ddc(connector, &sdvo->ddc);
 }
 
 /* Mac mini hack -- use the same DDC as the analog connector */
-static struct edid *
+static const struct drm_edid *
 intel_sdvo_get_analog_edid(struct drm_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct i2c_adapter *i2c;
 
-	return drm_get_edid(connector,
-			    intel_gmbus_get_adapter(dev_priv,
-						    dev_priv->display.vbt.crt_ddc_pin));
+	i2c = intel_gmbus_get_adapter(i915, i915->display.vbt.crt_ddc_pin);
+
+	return drm_edid_read_ddc(connector, i2c);
 }
 
 static enum drm_connector_status
@@ -2058,11 +2059,11 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
 {
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
 	enum drm_connector_status status;
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 
-	edid = intel_sdvo_get_edid(connector);
+	drm_edid = intel_sdvo_get_edid(connector);
 
-	if (edid == NULL && intel_sdvo_multifunc_encoder(intel_sdvo)) {
+	if (!drm_edid && intel_sdvo_multifunc_encoder(intel_sdvo)) {
 		u8 ddc, saved_ddc = intel_sdvo->ddc_bus;
 
 		/*
@@ -2071,15 +2072,15 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
 		 */
 		for (ddc = intel_sdvo->ddc_bus >> 1; ddc > 1; ddc >>= 1) {
 			intel_sdvo->ddc_bus = ddc;
-			edid = intel_sdvo_get_edid(connector);
-			if (edid)
+			drm_edid = intel_sdvo_get_edid(connector);
+			if (drm_edid)
 				break;
 		}
 		/*
 		 * If we found the EDID on the other bus,
 		 * assume that is the correct DDC bus.
 		 */
-		if (edid == NULL)
+		if (!drm_edid)
 			intel_sdvo->ddc_bus = saved_ddc;
 	}
 
@@ -2087,17 +2088,19 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
 	 * When there is no edid and no monitor is connected with VGA
 	 * port, try to use the CRT ddc to read the EDID for DVI-connector.
 	 */
-	if (edid == NULL)
-		edid = intel_sdvo_get_analog_edid(connector);
+	if (!drm_edid)
+		drm_edid = intel_sdvo_get_analog_edid(connector);
 
 	status = connector_status_unknown;
-	if (edid != NULL) {
+	if (drm_edid) {
+		const struct edid *edid = drm_edid_raw(drm_edid);
+
 		/* DDC bus is shared, match EDID to connector type */
 		if (edid->input & DRM_EDID_INPUT_DIGITAL)
 			status = connector_status_connected;
 		else
 			status = connector_status_disconnected;
-		kfree(edid);
+		drm_edid_free(drm_edid);
 	}
 
 	return status;
@@ -2105,8 +2108,9 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
 
 static bool
 intel_sdvo_connector_matches_edid(struct intel_sdvo_connector *sdvo,
-				  struct edid *edid)
+				  const struct drm_edid *drm_edid)
 {
+	const struct edid *edid = drm_edid_raw(drm_edid);
 	bool monitor_is_digital = !!(edid->input & DRM_EDID_INPUT_DIGITAL);
 	bool connector_is_digital = !!IS_DIGITAL(sdvo);
 
@@ -2149,22 +2153,23 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 	else if (IS_TMDS(intel_sdvo_connector))
 		ret = intel_sdvo_tmds_sink_detect(connector);
 	else {
-		struct edid *edid;
+		const struct drm_edid *drm_edid;
 
 		/* if we have an edid check it matches the connection */
-		edid = intel_sdvo_get_edid(connector);
-		if (edid == NULL)
-			edid = intel_sdvo_get_analog_edid(connector);
-		if (edid != NULL) {
+		drm_edid = intel_sdvo_get_edid(connector);
+		if (!drm_edid)
+			drm_edid = intel_sdvo_get_analog_edid(connector);
+		if (drm_edid) {
 			if (intel_sdvo_connector_matches_edid(intel_sdvo_connector,
-							      edid))
+							      drm_edid))
 				ret = connector_status_connected;
 			else
 				ret = connector_status_disconnected;
 
-			kfree(edid);
-		} else
+			drm_edid_free(drm_edid);
+		} else {
 			ret = connector_status_connected;
+		}
 	}
 
 	return ret;
@@ -2173,13 +2178,13 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 static int intel_sdvo_get_ddc_modes(struct drm_connector *connector)
 {
 	int num_modes = 0;
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 
 	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
 		      connector->base.id, connector->name);
 
 	/* set the bus switch and get the modes */
-	edid = intel_sdvo_get_edid(connector);
+	drm_edid = intel_sdvo_get_edid(connector);
 
 	/*
 	 * Mac mini hack.  On this device, the DVI-I connector shares one DDC
@@ -2187,17 +2192,17 @@ static int intel_sdvo_get_ddc_modes(struct drm_connector *connector)
 	 * DDC fails, check to see if the analog output is disconnected, in
 	 * which case we'll look there for the digital DDC data.
 	 */
-	if (!edid)
-		edid = intel_sdvo_get_analog_edid(connector);
+	if (!drm_edid)
+		drm_edid = intel_sdvo_get_analog_edid(connector);
 
-	if (!edid)
+	if (!drm_edid)
 		return 0;
 
 	if (intel_sdvo_connector_matches_edid(to_intel_sdvo_connector(connector),
-					      edid))
-		num_modes += intel_connector_update_modes(connector, edid);
+					      drm_edid))
+		num_modes += intel_connector_update_modes(connector, drm_edid);
 
-	kfree(edid);
+	drm_edid_free(drm_edid);
 
 	return num_modes;
 }
-- 
2.39.2

