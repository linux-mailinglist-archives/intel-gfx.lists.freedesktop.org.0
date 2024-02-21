Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0A285D335
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 10:17:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C9B10E42C;
	Wed, 21 Feb 2024 09:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jcseF5ON";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5550210E4E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 09:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708507035; x=1740043035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2RMYt3vn0SZuUgfKZ1kHsbNyD2YCIVlk4DfKXEbzHf4=;
 b=jcseF5ONi+kD9X3U/sI1wLtxKAp13sJeQczeQQYmNldh6Ct236HbTwQy
 7L20Pt2v5E2/D2IaZw8zgy7cz6elnwqn1nTKL8aoJFVDzuzrgAxSJAHpy
 Rv3LxbWBGkxtUbwPrd8It1icrRnbSCB1K00i/Pcz51GSoOaQnpt2BACDr
 MBvHUDiX3CSmQ9NNaoc6Ty+dzQmWTn4/ZDdStNO/v2NXfLNN/5llnmb8s
 tqri7grHKv56Y3dH8S6MViZbWPPM72sa0iAoR7cBx94whWyXijysBLwYi
 SXn2Mok4/L4RYUrLAaEuR0mda6vwU0MTsETdv7dvJw7GHOId7SrIZihBq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2795803"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="2795803"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 01:17:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="42554345"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 01:17:15 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [RFC v1 2/3] drm/i915: Attach the Border property to DP and HDMI
 connectors
Date: Wed, 21 Feb 2024 00:47:55 -0800
Message-ID: <20240221085246.808287-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240221085246.808287-1-vivek.kasireddy@intel.com>
References: <20240221085246.808287-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The Border property is created as a blob if it doesn't exist and
then attached to DP and HDMI connectors. When userspace wants
to populate this blob, it is expected that it provides data of
size sizeof(struct drm_rect).

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   | 29 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_connector.c    | 20 +++++++++++++
 .../gpu/drm/i915/display/intel_connector.h    |  1 +
 .../gpu/drm/i915/display/intel_display_core.h |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 ++
 7 files changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index ec0d5168b503..76cdcad175cc 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -67,6 +67,9 @@ int intel_digital_connector_atomic_get_property(struct drm_connector *connector,
 		*val = intel_conn_state->force_audio;
 	else if (property == dev_priv->display.properties.broadcast_rgb)
 		*val = intel_conn_state->broadcast_rgb;
+	else if (property == dev_priv->display.properties.border)
+		*val = (intel_conn_state->border) ?
+		       intel_conn_state->border->base.id : 0;
 	else {
 		drm_dbg_atomic(&dev_priv->drm,
 			       "Unknown property [PROP:%d:%s]\n",
@@ -95,6 +98,8 @@ int intel_digital_connector_atomic_set_property(struct drm_connector *connector,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(state);
+	bool replaced;
+	int ret;
 
 	if (property == dev_priv->display.properties.force_audio) {
 		intel_conn_state->force_audio = val;
@@ -106,11 +111,32 @@ int intel_digital_connector_atomic_set_property(struct drm_connector *connector,
 		return 0;
 	}
 
+	if (property == dev_priv->display.properties.border) {
+		ret = drm_property_replace_blob_from_id(dev,
+						&intel_conn_state->border,
+						val,
+						sizeof(struct drm_rect), -1,
+						&replaced);
+		return ret;
+	}
+
 	drm_dbg_atomic(&dev_priv->drm, "Unknown property [PROP:%d:%s]\n",
 		       property->base.id, property->name);
 	return -EINVAL;
 }
 
+static bool intel_connector_blob_equal(struct drm_property_blob *old_blob,
+				       struct drm_property_blob *new_blob)
+{
+	if (!old_blob || !new_blob)
+		return false;
+
+	if (old_blob->length != new_blob->length)
+		return false;
+
+	return !memcmp(old_blob->data, new_blob->data, old_blob->length);
+}
+
 int intel_digital_connector_atomic_check(struct drm_connector *conn,
 					 struct drm_atomic_state *state)
 {
@@ -142,7 +168,8 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
 	    new_conn_state->base.content_type != old_conn_state->base.content_type ||
 	    new_conn_state->base.scaling_mode != old_conn_state->base.scaling_mode ||
 	    new_conn_state->base.privacy_screen_sw_state != old_conn_state->base.privacy_screen_sw_state ||
-	    !drm_connector_atomic_hdr_metadata_equal(old_state, new_state))
+	    !drm_connector_atomic_hdr_metadata_equal(old_state, new_state) ||
+	    !intel_connector_blob_equal(old_conn_state->border, new_conn_state->border))
 		crtc_state->mode_changed = true;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index c65887870ddc..05185db6635e 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -308,3 +308,23 @@ intel_attach_scaling_mode_property(struct drm_connector *connector)
 
 	connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 }
+
+void
+intel_attach_border_property(struct drm_connector *connector)
+{
+	struct drm_device *dev = connector->dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_property *prop;
+
+	prop = dev_priv->display.properties.border;
+	if (prop == NULL) {
+		prop = drm_property_create(dev, DRM_MODE_PROP_BLOB,
+					   "Border", 0);
+		if (prop == NULL)
+			return;
+
+		dev_priv->display.properties.border = prop;
+	}
+
+	drm_object_attach_property(&connector->base, prop, 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index bafde3f11ff4..ab88b57d475b 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -33,5 +33,6 @@ void intel_attach_aspect_ratio_property(struct drm_connector *connector);
 void intel_attach_hdmi_colorspace_property(struct drm_connector *connector);
 void intel_attach_dp_colorspace_property(struct drm_connector *connector);
 void intel_attach_scaling_mode_property(struct drm_connector *connector);
+void intel_attach_border_property(struct drm_connector *connector);
 
 #endif /* __INTEL_CONNECTOR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 8853a05dc331..c0f87ac67a94 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -471,6 +471,7 @@ struct intel_display {
 	struct {
 		struct drm_property *broadcast_rgb;
 		struct drm_property *force_audio;
+		struct drm_property *border;
 	} properties;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ae2e8cff9d69..399ed0867c20 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -646,6 +646,7 @@ struct intel_digital_connector_state {
 
 	enum hdmi_force_audio force_audio;
 	int broadcast_rgb;
+	struct drm_property_blob *border;
 };
 
 #define to_intel_digital_connector_state(x) container_of(x, struct intel_digital_connector_state, base)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e4b7d5606d4..065e685ada84 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6216,6 +6216,8 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 
 	if (HAS_VRR(dev_priv))
 		drm_connector_attach_vrr_capable_property(connector);
+
+	intel_attach_border_property(connector);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7020e5806109..ac736d708c22 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2622,6 +2622,8 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *c
 
 	if (!HAS_GMCH(dev_priv))
 		drm_connector_attach_max_bpc_property(connector, 8, 12);
+
+	intel_attach_border_property(connector);
 }
 
 /*
-- 
2.43.0

