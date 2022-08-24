Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 429F459FB0D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F53B512A;
	Wed, 24 Aug 2022 13:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF41F9B2AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347010; x=1692883010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LjhgyyuaA050V9hY7cW+5zuCpKVLBRn0A+TldQyUEbE=;
 b=NJZyH1JNMLgXIQcAOj2wy4sYi6nICnjPnp+4DZ9+LQgidMAdp3HNRRhP
 SGMsFBfXVEHjDn8/9Ow9fPF/zKMPHPItpkiLttiui0qEDMwxc7WgNG9Wa
 4EbIXKnI6xCnF+lWvwrKNS6D4wQB1gy0t7SXf45EzRI2MXlZXqYYQYoCD
 KnZLh9wSbnd+ya+puusNEb0Jts0G6U0o14kFAYxdQpKiabdPkvmKCX+kO
 i9C70/5pXWQw01exYLyiHNuhMClrCqsZn/6s5UYLT9H2c1VYRBqmvxQ4R
 8Jv7r22Cw8wH7tIikeSGW/jkuwi5ECsLTjtscPFbs7pqIR2y70Tz06Afu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="355690017"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="355690017"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:16:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="678041882"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:33 +0300
Message-Id: <36d6e9327582c94c1962c10ebd1581c3d15a5743.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/38] drm/i915: move color_funcs to
 display.funcs
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

Move display color functions under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 34 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  4 +++
 drivers/gpu/drm/i915/i915_drv.h               |  4 ---
 3 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 9583d17e858d..ed98c732b24e 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1167,22 +1167,22 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	dev_priv->color_funcs->load_luts(crtc_state);
+	dev_priv->display.funcs.color->load_luts(crtc_state);
 }
 
 void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (dev_priv->color_funcs->color_commit_noarm)
-		dev_priv->color_funcs->color_commit_noarm(crtc_state);
+	if (dev_priv->display.funcs.color->color_commit_noarm)
+		dev_priv->display.funcs.color->color_commit_noarm(crtc_state);
 }
 
 void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	dev_priv->color_funcs->color_commit_arm(crtc_state);
+	dev_priv->display.funcs.color->color_commit_arm(crtc_state);
 }
 
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
@@ -1238,15 +1238,15 @@ int intel_color_check(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	return dev_priv->color_funcs->color_check(crtc_state);
+	return dev_priv->display.funcs.color->color_check(crtc_state);
 }
 
 void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (dev_priv->color_funcs->read_luts)
-		dev_priv->color_funcs->read_luts(crtc_state);
+	if (dev_priv->display.funcs.color->read_luts)
+		dev_priv->display.funcs.color->read_luts(crtc_state);
 }
 
 static bool need_plane_update(struct intel_plane *plane,
@@ -2225,28 +2225,28 @@ void intel_color_init(struct intel_crtc *crtc)
 
 	if (HAS_GMCH(dev_priv)) {
 		if (IS_CHERRYVIEW(dev_priv)) {
-			dev_priv->color_funcs = &chv_color_funcs;
+			dev_priv->display.funcs.color = &chv_color_funcs;
 		} else if (DISPLAY_VER(dev_priv) >= 4) {
-			dev_priv->color_funcs = &i965_color_funcs;
+			dev_priv->display.funcs.color = &i965_color_funcs;
 		} else {
-			dev_priv->color_funcs = &i9xx_color_funcs;
+			dev_priv->display.funcs.color = &i9xx_color_funcs;
 		}
 	} else {
 		if (DISPLAY_VER(dev_priv) >= 11)
-			dev_priv->color_funcs = &icl_color_funcs;
+			dev_priv->display.funcs.color = &icl_color_funcs;
 		else if (DISPLAY_VER(dev_priv) == 10)
-			dev_priv->color_funcs = &glk_color_funcs;
+			dev_priv->display.funcs.color = &glk_color_funcs;
 		else if (DISPLAY_VER(dev_priv) == 9)
-			dev_priv->color_funcs = &skl_color_funcs;
+			dev_priv->display.funcs.color = &skl_color_funcs;
 		else if (DISPLAY_VER(dev_priv) == 8)
-			dev_priv->color_funcs = &bdw_color_funcs;
+			dev_priv->display.funcs.color = &bdw_color_funcs;
 		else if (DISPLAY_VER(dev_priv) == 7) {
 			if (IS_HASWELL(dev_priv))
-				dev_priv->color_funcs = &hsw_color_funcs;
+				dev_priv->display.funcs.color = &hsw_color_funcs;
 			else
-				dev_priv->color_funcs = &ivb_color_funcs;
+				dev_priv->display.funcs.color = &ivb_color_funcs;
 		} else
-			dev_priv->color_funcs = &ilk_color_funcs;
+			dev_priv->display.funcs.color = &ilk_color_funcs;
 	}
 
 	drm_crtc_enable_color_mgmt(&crtc->base,
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index afb1b0a73457..a9fcaedc78f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -11,6 +11,7 @@
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_cdclk_funcs;
+struct intel_color_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dpll_funcs;
@@ -71,6 +72,9 @@ struct intel_display {
 
 		/* fdi display functions */
 		const struct intel_fdi_funcs *fdi;
+
+		/* Display internal color functions */
+		const struct intel_color_funcs *color;
 	} funcs;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index aa57bb069c91..d7abbb1362f9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -85,7 +85,6 @@ struct intel_audio_funcs;
 struct intel_cdclk_config;
 struct intel_cdclk_state;
 struct intel_cdclk_vals;
-struct intel_color_funcs;
 struct intel_connector;
 struct intel_dp;
 struct intel_encoder;
@@ -485,9 +484,6 @@ struct drm_i915_private {
 	/* pm private clock gating functions */
 	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
 
-	/* Display internal color functions */
-	const struct intel_color_funcs *color_funcs;
-
 	/* PCH chipset type */
 	enum intel_pch pch_type;
 	unsigned short pch_id;
-- 
2.34.1

