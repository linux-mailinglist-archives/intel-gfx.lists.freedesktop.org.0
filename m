Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 183C041BAAE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 00:59:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BA06E9CE;
	Tue, 28 Sep 2021 22:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E1B6E9CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 22:59:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="224477089"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="224477089"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 15:59:52 -0700
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="587708319"
Received: from pop-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.36.249])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2021 15:59:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Wed, 29 Sep 2021 01:58:01 +0300
Message-Id: <49e46e61206d4fdcf08fb5dc1978da3fce702134.1632869550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632869550.git.jani.nikula@intel.com>
References: <cover.1632869550.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/24] drm/i915: constify color function vtable.
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

From: Dave Airlie <airlied@redhat.com>

This clarifies quite well what functions get used on what platforms
instead of having to decipher the old tree.

v2: fixed IVB mistake (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 138 ++++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h            |   2 +-
 2 files changed, 93 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ed79075158dd..f5923f1c38bd 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1137,14 +1137,14 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	dev_priv->color_funcs.load_luts(crtc_state);
+	dev_priv->color_funcs->load_luts(crtc_state);
 }
 
 void intel_color_commit(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	dev_priv->color_funcs.color_commit(crtc_state);
+	dev_priv->color_funcs->color_commit(crtc_state);
 }
 
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
@@ -1200,15 +1200,15 @@ int intel_color_check(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	return dev_priv->color_funcs.color_check(crtc_state);
+	return dev_priv->color_funcs->color_check(crtc_state);
 }
 
 void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (dev_priv->color_funcs.read_luts)
-		dev_priv->color_funcs.read_luts(crtc_state);
+	if (dev_priv->color_funcs->read_luts)
+		dev_priv->color_funcs->read_luts(crtc_state);
 }
 
 static bool need_plane_update(struct intel_plane *plane,
@@ -2092,6 +2092,76 @@ static void icl_read_luts(struct intel_crtc_state *crtc_state)
 	}
 }
 
+static const struct intel_color_funcs chv_color_funcs = {
+	.color_check = chv_color_check,
+	.color_commit = i9xx_color_commit,
+	.load_luts = chv_load_luts,
+	.read_luts = chv_read_luts,
+};
+
+static const struct intel_color_funcs i965_color_funcs = {
+	.color_check = i9xx_color_check,
+	.color_commit = i9xx_color_commit,
+	.load_luts = i965_load_luts,
+	.read_luts = i965_read_luts,
+};
+
+static const struct intel_color_funcs i9xx_color_funcs = {
+	.color_check = i9xx_color_check,
+	.color_commit = i9xx_color_commit,
+	.load_luts = i9xx_load_luts,
+	.read_luts = i9xx_read_luts,
+};
+
+static const struct intel_color_funcs icl_color_funcs = {
+	.color_check = icl_color_check,
+	.color_commit = skl_color_commit,
+	.load_luts = icl_load_luts,
+	.read_luts = icl_read_luts,
+};
+
+static const struct intel_color_funcs glk_color_funcs = {
+	.color_check = glk_color_check,
+	.color_commit = skl_color_commit,
+	.load_luts = glk_load_luts,
+	.read_luts = glk_read_luts,
+};
+
+static const struct intel_color_funcs skl_color_funcs = {
+	.color_check = ivb_color_check,
+	.color_commit = skl_color_commit,
+	.load_luts = bdw_load_luts,
+	.read_luts = NULL,
+};
+
+static const struct intel_color_funcs bdw_color_funcs = {
+	.color_check = ivb_color_check,
+	.color_commit = hsw_color_commit,
+	.load_luts = bdw_load_luts,
+	.read_luts = NULL,
+};
+
+static const struct intel_color_funcs hsw_color_funcs = {
+	.color_check = ivb_color_check,
+	.color_commit = hsw_color_commit,
+	.load_luts = ivb_load_luts,
+	.read_luts = NULL,
+};
+
+static const struct intel_color_funcs ivb_color_funcs = {
+	.color_check = ivb_color_check,
+	.color_commit = ilk_color_commit,
+	.load_luts = ivb_load_luts,
+	.read_luts = NULL,
+};
+
+static const struct intel_color_funcs ilk_color_funcs = {
+	.color_check = ilk_color_check,
+	.color_commit = ilk_color_commit,
+	.load_luts = ilk_load_luts,
+	.read_luts = ilk_read_luts,
+};
+
 void intel_color_init(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -2101,52 +2171,28 @@ void intel_color_init(struct intel_crtc *crtc)
 
 	if (HAS_GMCH(dev_priv)) {
 		if (IS_CHERRYVIEW(dev_priv)) {
-			dev_priv->color_funcs.color_check = chv_color_check;
-			dev_priv->color_funcs.color_commit = i9xx_color_commit;
-			dev_priv->color_funcs.load_luts = chv_load_luts;
-			dev_priv->color_funcs.read_luts = chv_read_luts;
+			dev_priv->color_funcs = &chv_color_funcs;
 		} else if (DISPLAY_VER(dev_priv) >= 4) {
-			dev_priv->color_funcs.color_check = i9xx_color_check;
-			dev_priv->color_funcs.color_commit = i9xx_color_commit;
-			dev_priv->color_funcs.load_luts = i965_load_luts;
-			dev_priv->color_funcs.read_luts = i965_read_luts;
+			dev_priv->color_funcs = &i965_color_funcs;
 		} else {
-			dev_priv->color_funcs.color_check = i9xx_color_check;
-			dev_priv->color_funcs.color_commit = i9xx_color_commit;
-			dev_priv->color_funcs.load_luts = i9xx_load_luts;
-			dev_priv->color_funcs.read_luts = i9xx_read_luts;
+			dev_priv->color_funcs = &i9xx_color_funcs;
 		}
 	} else {
 		if (DISPLAY_VER(dev_priv) >= 11)
-			dev_priv->color_funcs.color_check = icl_color_check;
-		else if (DISPLAY_VER(dev_priv) >= 10)
-			dev_priv->color_funcs.color_check = glk_color_check;
-		else if (DISPLAY_VER(dev_priv) >= 7)
-			dev_priv->color_funcs.color_check = ivb_color_check;
-		else
-			dev_priv->color_funcs.color_check = ilk_color_check;
-
-		if (DISPLAY_VER(dev_priv) >= 9)
-			dev_priv->color_funcs.color_commit = skl_color_commit;
-		else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-			dev_priv->color_funcs.color_commit = hsw_color_commit;
-		else
-			dev_priv->color_funcs.color_commit = ilk_color_commit;
-
-		if (DISPLAY_VER(dev_priv) >= 11) {
-			dev_priv->color_funcs.load_luts = icl_load_luts;
-			dev_priv->color_funcs.read_luts = icl_read_luts;
-		} else if (DISPLAY_VER(dev_priv) == 10) {
-			dev_priv->color_funcs.load_luts = glk_load_luts;
-			dev_priv->color_funcs.read_luts = glk_read_luts;
-		} else if (DISPLAY_VER(dev_priv) >= 8) {
-			dev_priv->color_funcs.load_luts = bdw_load_luts;
-		} else if (DISPLAY_VER(dev_priv) >= 7) {
-			dev_priv->color_funcs.load_luts = ivb_load_luts;
-		} else {
-			dev_priv->color_funcs.load_luts = ilk_load_luts;
-			dev_priv->color_funcs.read_luts = ilk_read_luts;
-		}
+			dev_priv->color_funcs = &icl_color_funcs;
+		else if (DISPLAY_VER(dev_priv) == 10)
+			dev_priv->color_funcs = &glk_color_funcs;
+		else if (DISPLAY_VER(dev_priv) == 9)
+			dev_priv->color_funcs = &skl_color_funcs;
+		else if (DISPLAY_VER(dev_priv) == 8)
+			dev_priv->color_funcs = &bdw_color_funcs;
+		else if (DISPLAY_VER(dev_priv) == 7) {
+			if (IS_HASWELL(dev_priv))
+				dev_priv->color_funcs = &hsw_color_funcs;
+			else
+				dev_priv->color_funcs = &ivb_color_funcs;
+		} else
+			dev_priv->color_funcs = &ilk_color_funcs;
 	}
 
 	drm_crtc_enable_color_mgmt(&crtc->base,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0e8592445804..ddd921a0c141 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1000,7 +1000,7 @@ struct drm_i915_private {
 	struct drm_i915_display_funcs display;
 
 	/* Display internal color functions */
-	struct intel_color_funcs color_funcs;
+	const struct intel_color_funcs *color_funcs;
 
 	/* Display internal audio functions */
 	struct intel_audio_funcs audio_funcs;
-- 
2.30.2

