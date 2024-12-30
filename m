Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C48E9FE6E6
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 15:15:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B1F10E380;
	Mon, 30 Dec 2024 14:15:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fu/Q8ZnC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F42110E2C7;
 Mon, 30 Dec 2024 14:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735568107; x=1767104107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zc1sOo3gywuLN6XWOoFdTAxOHL6Ue63lSset64SRi/M=;
 b=fu/Q8ZnCCvSnViFbifq3Orh/P051JuKj7fUH7tkz7Wj5TRemv6QpZQe/
 vEMNWVYLDskAy8aejVBLyLA34A/Vm4iPC4gKZf7OOz+BcofulERBndj0r
 9Wk07luxDnTdeKlwWldP30CYKn1HlhazckqnttMyZ9Xf/VvluE4oI0nKT
 RWUxGf45OJrME1Uko8z2+xkklziCz5mRUzuD29U9rph+lvIqXbFYwRBkx
 rDUudEr+qX6acqgEa/ngsRHAWSXIZsWcB+Zu8UQSVUTSU943r4PYxEQgJ
 e6DoieXcvsoBrqmf4NBtwIeQWvY9JbZiOqzNO63e1rtuqInzOF6KhYZCG Q==;
X-CSE-ConnectionGUID: Bsg4CdJmT9C3b7Lir5+CWg==
X-CSE-MsgGUID: zB2B8fZfRTSR6gJKArnoTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="39538326"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="39538326"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:15:07 -0800
X-CSE-ConnectionGUID: M9V6rlP8TvySUpgx4ajlSQ==
X-CSE-MsgGUID: vF1bUla+T9yXuO8CglLmcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="101215285"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:15:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [CI v3 3/6] drm/i915/hdmi: add error handling in g4x_hdmi_init()
Date: Mon, 30 Dec 2024 16:14:42 +0200
Message-Id: <cafae7bf1f9ffb8f6a1d7a508cd2ce7dcf06fef7.1735568047.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735568047.git.jani.nikula@intel.com>
References: <cover.1735568047.git.jani.nikula@intel.com>
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

Handle encoder and connector init failures in g4x_hdmi_init(). This is
similar to g4x_dp_init().

Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Closes: https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c | 35 ++++++++++++++++---------
 drivers/gpu/drm/i915/display/g4x_hdmi.h |  5 ++--
 2 files changed, 26 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 503f4b903098..98e6a931042f 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -683,7 +683,7 @@ static bool assert_hdmi_port_valid(struct drm_i915_private *i915, enum port port
 			 "Platform does not support HDMI %c\n", port_name(port));
 }
 
-void g4x_hdmi_init(struct drm_i915_private *dev_priv,
+bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		   i915_reg_t hdmi_reg, enum port port)
 {
 	struct intel_display *display = &dev_priv->display;
@@ -693,10 +693,10 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	struct intel_connector *intel_connector;
 
 	if (!assert_port_valid(dev_priv, port))
-		return;
+		return false;
 
 	if (!assert_hdmi_port_valid(dev_priv, port))
-		return;
+		return false;
 
 	devdata = intel_bios_encoder_data_lookup(display, port);
 
@@ -707,15 +707,13 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
 	if (!dig_port)
-		return;
+		return false;
 
 	dig_port->aux_ch = AUX_CH_NONE;
 
 	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
-		kfree(dig_port);
-		return;
-	}
+	if (!intel_connector)
+		goto err_connector_alloc;
 
 	intel_encoder = &dig_port->base;
 
@@ -723,9 +721,10 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	mutex_init(&dig_port->hdcp_mutex);
 
-	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
-			 &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
-			 "HDMI %c", port_name(port));
+	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+			     &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
+			     "HDMI %c", port_name(port)))
+		goto err_encoder_init;
 
 	intel_encoder->hotplug = intel_hdmi_hotplug;
 	intel_encoder->compute_config = g4x_hdmi_compute_config;
@@ -788,5 +787,17 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	intel_infoframe_init(dig_port);
 
-	intel_hdmi_init_connector(dig_port, intel_connector);
+	if (!intel_hdmi_init_connector(dig_port, intel_connector))
+		goto err_init_connector;
+
+	return true;
+
+err_init_connector:
+	drm_encoder_cleanup(&intel_encoder->base);
+err_encoder_init:
+	kfree(intel_connector);
+err_connector_alloc:
+	kfree(dig_port);
+
+	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.h b/drivers/gpu/drm/i915/display/g4x_hdmi.h
index 817f55c7a3a1..a52e8986ec7a 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.h
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.h
@@ -16,14 +16,15 @@ struct drm_connector;
 struct drm_i915_private;
 
 #ifdef I915
-void g4x_hdmi_init(struct drm_i915_private *dev_priv,
+bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		   i915_reg_t hdmi_reg, enum port port);
 int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
 				    struct drm_atomic_state *state);
 #else
-static inline void g4x_hdmi_init(struct drm_i915_private *dev_priv,
+static inline bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
 				 i915_reg_t hdmi_reg, int port)
 {
+	return false;
 }
 static inline int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
 						  struct drm_atomic_state *state)
-- 
2.39.5

