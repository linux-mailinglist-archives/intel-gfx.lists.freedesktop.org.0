Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 466E39E3DC2
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 16:07:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2F9B10E2AB;
	Wed,  4 Dec 2024 15:07:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RkQAeEJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA1110E2AB;
 Wed,  4 Dec 2024 15:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733324858; x=1764860858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bSfokEruiqL+ai8fKHqUlL51zAVT6x4ykZcgxIcfVF8=;
 b=RkQAeEJenr+zIg8ZRTQua+zcAj9iQ/YpJMFr1rynvDZpMH5NIXLM/EWW
 fJ88kY74iA9ymiLnlIuO10eAN/BWqFs64AsLqeGalrAR0Aq9GGhzU7Bsb
 KCirnATGlROWsy1nAbg8xadswW2aDeiDceCD7YDcj0ONiuTyMyU5Kfvjt
 smoIiAfK1xpJXWAHT85OiSBtsjgXIH+K3/DeeyZVUNfdGTAwQVXLDgDPi
 3bxIeYdM98A+FsE3KEUAhAcAo98TKdr0EVuwWLLBGb2doPM2YvjGKNLvc
 bVZ07AjlVh8qUwe7ax9qdFBU6vW5ac7EfzOqPYFheRTQWQLlVtigvSPer w==;
X-CSE-ConnectionGUID: VWAyL2KTRbeJSbTeCi4buQ==
X-CSE-MsgGUID: /Kzxip4kT22Lk6q7bABrgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33745688"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33745688"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:07:38 -0800
X-CSE-ConnectionGUID: zP3IBLIxQfaDDwlUVS2t5A==
X-CSE-MsgGUID: wMtMCvx6QXu7lf1RPM4h6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="117038242"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:07:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 2/5] drm/i915/hdmi: add error handling in g4x_hdmi_init()
Date: Wed,  4 Dec 2024 17:07:18 +0200
Message-Id: <6ea48b8ccf0a13d3306dcd21616dd866f0672683.1733324735.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733324735.git.jani.nikula@intel.com>
References: <cover.1733324735.git.jani.nikula@intel.com>
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
index d1a7d0d57c6b..bc6362a68fcc 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -682,7 +682,7 @@ static bool assert_hdmi_port_valid(struct drm_i915_private *i915, enum port port
 			 "Platform does not support HDMI %c\n", port_name(port));
 }
 
-void g4x_hdmi_init(struct drm_i915_private *dev_priv,
+bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		   i915_reg_t hdmi_reg, enum port port)
 {
 	struct intel_display *display = &dev_priv->display;
@@ -692,10 +692,10 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	struct intel_connector *intel_connector;
 
 	if (!assert_port_valid(dev_priv, port))
-		return;
+		return false;
 
 	if (!assert_hdmi_port_valid(dev_priv, port))
-		return;
+		return false;
 
 	devdata = intel_bios_encoder_data_lookup(display, port);
 
@@ -706,15 +706,13 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
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
 
@@ -722,9 +720,10 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
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
@@ -787,5 +786,17 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
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

