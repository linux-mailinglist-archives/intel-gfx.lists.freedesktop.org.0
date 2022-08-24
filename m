Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A04B859FB54
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:27:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E6310FD49;
	Wed, 24 Aug 2022 13:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30DDB528D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347134; x=1692883134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QgnoXpGFdWhcWqU0H/EObR/GHrnKnCEDx223OsnHc20=;
 b=d4TUpoF+jC3mPYK6VRtWFiQUPKf6EvPy6sCiFQP/+UAefJsNCJOWfknz
 zm8MyjTf5M/0AODuAtZJkCmwAIO0uYK5TzWFPbWPN1WCxyvMJ2wHqmRcR
 PpWxQ/KLE5BOs50mTJ3eLPf+DpTzlfh0C66j5L6tp+ZfDQU+2OcnsDsDZ
 xJv+pPam5lRBjKWS0IoxarJb91eq6Ed8aWPLemolyXozaPz9wrZ6YUiXC
 h/gFkz0rKbaPVDH4pQFQKfu21+vhsec4lpcEN794vAE0rqxhGuWJcpVOy
 CnHCGkr5nGw57nb14EhGRAXwk9PpnRh0Lvd5FSitL7KjAFsXpT0Ep5s5s A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="355690697"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="355690697"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="735878692"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:16:04 +0300
Message-Id: <cf7699f412b48bc5ea03e4ddbf862147919ce79d.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 38/38] drm/i915: move and group properties
 under display.properties
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display property related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c       | 8 ++++----
 drivers/gpu/drm/i915/display/intel_connector.c    | 8 ++++----
 drivers/gpu/drm/i915/display/intel_display_core.h | 6 ++++++
 drivers/gpu/drm/i915/i915_drv.h                   | 3 ---
 4 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index b94973b5633f..18f0a5ae3bac 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -62,9 +62,9 @@ int intel_digital_connector_atomic_get_property(struct drm_connector *connector,
 	struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(state);
 
-	if (property == dev_priv->force_audio_property)
+	if (property == dev_priv->display.properties.force_audio)
 		*val = intel_conn_state->force_audio;
-	else if (property == dev_priv->broadcast_rgb_property)
+	else if (property == dev_priv->display.properties.broadcast_rgb)
 		*val = intel_conn_state->broadcast_rgb;
 	else {
 		drm_dbg_atomic(&dev_priv->drm,
@@ -95,12 +95,12 @@ int intel_digital_connector_atomic_set_property(struct drm_connector *connector,
 	struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(state);
 
-	if (property == dev_priv->force_audio_property) {
+	if (property == dev_priv->display.properties.force_audio) {
 		intel_conn_state->force_audio = val;
 		return 0;
 	}
 
-	if (property == dev_priv->broadcast_rgb_property) {
+	if (property == dev_priv->display.properties.broadcast_rgb) {
 		intel_conn_state->broadcast_rgb = val;
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 1dcc268927a2..6d5cbeb8df4d 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -229,7 +229,7 @@ intel_attach_force_audio_property(struct drm_connector *connector)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_property *prop;
 
-	prop = dev_priv->force_audio_property;
+	prop = dev_priv->display.properties.force_audio;
 	if (prop == NULL) {
 		prop = drm_property_create_enum(dev, 0,
 					   "audio",
@@ -238,7 +238,7 @@ intel_attach_force_audio_property(struct drm_connector *connector)
 		if (prop == NULL)
 			return;
 
-		dev_priv->force_audio_property = prop;
+		dev_priv->display.properties.force_audio = prop;
 	}
 	drm_object_attach_property(&connector->base, prop, 0);
 }
@@ -256,7 +256,7 @@ intel_attach_broadcast_rgb_property(struct drm_connector *connector)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_property *prop;
 
-	prop = dev_priv->broadcast_rgb_property;
+	prop = dev_priv->display.properties.broadcast_rgb;
 	if (prop == NULL) {
 		prop = drm_property_create_enum(dev, DRM_MODE_PROP_ENUM,
 					   "Broadcast RGB",
@@ -265,7 +265,7 @@ intel_attach_broadcast_rgb_property(struct drm_connector *connector)
 		if (prop == NULL)
 			return;
 
-		dev_priv->broadcast_rgb_property = prop;
+		dev_priv->display.properties.broadcast_rgb = prop;
 	}
 
 	drm_object_attach_property(&connector->base, prop, 0);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index bf78b0fcbd11..9086a612365e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -27,6 +27,7 @@
 #include "intel_pm_types.h"
 
 struct drm_i915_private;
+struct drm_property;
 struct i915_audio_component;
 struct i915_hdcp_comp_master;
 struct intel_atomic_state;
@@ -371,6 +372,11 @@ struct intel_display {
 		struct mutex mutex;
 	} pps;
 
+	struct {
+		struct drm_property *broadcast_rgb;
+		struct drm_property *force_audio;
+	} properties;
+
 	struct {
 		unsigned long mask;
 	} quirks;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0fee591c35b1..a845b4dfdbee 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -321,9 +321,6 @@ struct drm_i915_private {
 
 	struct i915_gpu_error gpu_error;
 
-	struct drm_property *broadcast_rgb_property;
-	struct drm_property *force_audio_property;
-
 	/*
 	 * Shadows for CHV DPLL_MD regs to keep the state
 	 * checker somewhat working in the presence hardware
-- 
2.34.1

