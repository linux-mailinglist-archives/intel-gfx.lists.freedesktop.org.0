Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF7D58FF1E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EAF3B3C4F;
	Thu, 11 Aug 2022 15:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30A7B3C39
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660231003; x=1691767003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MvSaRABcfAkewG7QTzJtjdafwg5Uguf0iQae4BAuw+o=;
 b=fowHrXclU/o5a0TvYi5+g+e36DHgbAILFMynii3qEVJiFlpHsYGzkzNg
 wS0v4yLaOlG8hTVxOPNFRWOYSEmkMpSV262gC4n8Pp5vRkMcCDn5J/7tJ
 gdScJwaCheBqcdEIBp6H9y+OzvDvmU1eawJCuq2EEWQLJMRBz7G+miFNZ
 a8Nnl5kFzBJx9ZCH9pyRPwUns9DppFWVi42QrsW9cyocGwZB6fjDnNhgx
 mgpPDK63nGhmsR/mN7nvgWtAbDyV889xkUmjXamTvWkbPIfbzAVg2LLCo
 8d5j/iix9qUlB0ZbmyPethH/VEzWr2DEwQGwm5OEW8JdrkzMGepqXbTWP w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="278320362"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="278320362"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="665413348"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:50 +0300
Message-Id: <218604faf636e176c3668f35e08f95b65c110d99.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 39/39] drm/i915: move and group properties under
 display.properties
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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
index a753f6d66714..41ebdbd741c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -27,6 +27,7 @@
 #include "intel_pm_types.h"
 
 struct drm_i915_private;
+struct drm_property;
 struct i915_audio_component;
 struct i915_hdcp_comp_master;
 struct intel_atomic_state;
@@ -373,6 +374,11 @@ struct intel_display {
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
index 1bf7b13fdeda..ca97437f0e44 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -317,9 +317,6 @@ struct drm_i915_private {
 
 	struct i915_gpu_error gpu_error;
 
-	struct drm_property *broadcast_rgb_property;
-	struct drm_property *force_audio_property;
-
 	/*
 	 * Shadows for CHV DPLL_MD regs to keep the state
 	 * checker somewhat working in the presence hardware
-- 
2.34.1

