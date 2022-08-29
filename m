Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 003CB5A4DBA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AAB810F2AE;
	Mon, 29 Aug 2022 13:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AAC610F2A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779190; x=1693315190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7dmx5H8+I6zn+FPChnROeC4YOxgMVIpBGDsodooS/ek=;
 b=VNbrNDSTrqUtD5eB/J8rXfl4qGkarqoB5PknKoGD33NSCQikkF2gv7xX
 jMd0sD9RAFaqH2R4FpUPeEo65saHoCGXnqy/V0IqBSmnqzftb2ED3QSyO
 qt4gyqB8l0KUtv7TQ6lWKvvS8M9gwzEtOMzODq2zL24fwWUQVV1telYqb
 YEk72wc2+1XJerardcIlaA0gVmIcQcqELTOA926NDSB8KMCUc+DOixuv+
 L2JDoxv0suhxYSNqCKA/EwkPmUH1cjl2Rg54wBFXv4sstBBHaKhccIh3M
 ou+FVFYx9iKAccpJ02PGBfLTB243kk1lTBHLSnwO6B0fYAzEL8+pgWqEW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="275293793"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="275293793"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:49 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="787075627"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:18:25 +0300
Message-Id: <14b14f871e322419b10166c1bd8a5a956f5430c8.1661779055.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
References: <cover.1661779055.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 18/18] drm/i915: move and group properties
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
index 9dc1f2b19702..5eb6a5cd0c8c 100644
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

