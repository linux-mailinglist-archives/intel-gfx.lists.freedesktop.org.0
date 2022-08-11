Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FCC58FEE9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96ABAB3D45;
	Thu, 11 Aug 2022 15:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CCEDB3D34
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230769; x=1691766769;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gYSeU3SYwR8WJXnsfssyO0cfrCF6zofLRGoIFfOfYe8=;
 b=jmtkqgbCzN3M1+jgDjL4F3IndrwXfvrDsFufVLPjBFpH3ECubvcBKLGq
 fCJxR+J1BdmJBH4qOq29uXD1HMx8VwYdhRqDhTPlRrNacHW5atpxQDbfL
 hHp9N3VoJFWslRznCNYMVOHz1qc4oU9L2117ZIOpXb63eQytSUbh3lSD2
 B2V4fX1XmCZ14fHcGkbcwNma0OpHu5olBujlEQDSjYeQHZ2Int6JsrDIg
 3X75/+AQgZRquhIR6SWG5kUnCPzqONbB9jGHN4BC5HBs85k9lMQKVirCa
 4RyNlgnMuJ+Y/Iv06paflI8hlijaVINTZHtbRDmLzVh2XVdcE617vmuFs A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="353113611"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="353113611"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="638533980"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:19 +0300
Message-Id: <5bf65a20aa1fc7be74eedd57cd830136b867a54b.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/39] drm/i915: move color_funcs to
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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
index 7dbffaebd9c0..306584c038c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -12,6 +12,7 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_cdclk_funcs;
 struct intel_clock_gating_funcs;
+struct intel_color_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dpll_funcs;
@@ -73,6 +74,9 @@ struct intel_display {
 
 		/* fdi display functions */
 		const struct intel_fdi_funcs *fdi;
+
+		/* Display internal color functions */
+		const struct intel_color_funcs *color;
 	} funcs;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8a9f2bf24186..a2ce11f01a6d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -84,7 +84,6 @@ struct intel_audio_funcs;
 struct intel_cdclk_config;
 struct intel_cdclk_state;
 struct intel_cdclk_vals;
-struct intel_color_funcs;
 struct intel_connector;
 struct intel_dp;
 struct intel_encoder;
@@ -481,9 +480,6 @@ struct drm_i915_private {
 	/* unbound hipri wq for page flips/plane updates */
 	struct workqueue_struct *flip_wq;
 
-	/* Display internal color functions */
-	const struct intel_color_funcs *color_funcs;
-
 	/* PCH chipset type */
 	enum intel_pch pch_type;
 	unsigned short pch_id;
-- 
2.34.1

