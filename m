Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18538417135
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 13:48:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C1526EE0B;
	Fri, 24 Sep 2021 11:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C1446EE1C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 11:48:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="204213286"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="204213286"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:48:37 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="614386323"
Received: from avanhout-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.153])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:48:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Fri, 24 Sep 2021 14:47:26 +0300
Message-Id: <20210924114741.15940-9-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210924114741.15940-1-jani.nikula@intel.com>
References: <20210924114741.15940-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 09/24] drm/i915: split color functions from display
 vtable
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

These are only used internally in the color module

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 64 +++++++++++-----------
 drivers/gpu/drm/i915/i915_drv.h            | 39 +++++++------
 2 files changed, 54 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index afcb4bf3826c..ed79075158dd 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1137,14 +1137,14 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	dev_priv->display.load_luts(crtc_state);
+	dev_priv->color_funcs.load_luts(crtc_state);
 }
 
 void intel_color_commit(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	dev_priv->display.color_commit(crtc_state);
+	dev_priv->color_funcs.color_commit(crtc_state);
 }
 
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
@@ -1200,15 +1200,15 @@ int intel_color_check(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	return dev_priv->display.color_check(crtc_state);
+	return dev_priv->color_funcs.color_check(crtc_state);
 }
 
 void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (dev_priv->display.read_luts)
-		dev_priv->display.read_luts(crtc_state);
+	if (dev_priv->color_funcs.read_luts)
+		dev_priv->color_funcs.read_luts(crtc_state);
 }
 
 static bool need_plane_update(struct intel_plane *plane,
@@ -2101,51 +2101,51 @@ void intel_color_init(struct intel_crtc *crtc)
 
 	if (HAS_GMCH(dev_priv)) {
 		if (IS_CHERRYVIEW(dev_priv)) {
-			dev_priv->display.color_check = chv_color_check;
-			dev_priv->display.color_commit = i9xx_color_commit;
-			dev_priv->display.load_luts = chv_load_luts;
-			dev_priv->display.read_luts = chv_read_luts;
+			dev_priv->color_funcs.color_check = chv_color_check;
+			dev_priv->color_funcs.color_commit = i9xx_color_commit;
+			dev_priv->color_funcs.load_luts = chv_load_luts;
+			dev_priv->color_funcs.read_luts = chv_read_luts;
 		} else if (DISPLAY_VER(dev_priv) >= 4) {
-			dev_priv->display.color_check = i9xx_color_check;
-			dev_priv->display.color_commit = i9xx_color_commit;
-			dev_priv->display.load_luts = i965_load_luts;
-			dev_priv->display.read_luts = i965_read_luts;
+			dev_priv->color_funcs.color_check = i9xx_color_check;
+			dev_priv->color_funcs.color_commit = i9xx_color_commit;
+			dev_priv->color_funcs.load_luts = i965_load_luts;
+			dev_priv->color_funcs.read_luts = i965_read_luts;
 		} else {
-			dev_priv->display.color_check = i9xx_color_check;
-			dev_priv->display.color_commit = i9xx_color_commit;
-			dev_priv->display.load_luts = i9xx_load_luts;
-			dev_priv->display.read_luts = i9xx_read_luts;
+			dev_priv->color_funcs.color_check = i9xx_color_check;
+			dev_priv->color_funcs.color_commit = i9xx_color_commit;
+			dev_priv->color_funcs.load_luts = i9xx_load_luts;
+			dev_priv->color_funcs.read_luts = i9xx_read_luts;
 		}
 	} else {
 		if (DISPLAY_VER(dev_priv) >= 11)
-			dev_priv->display.color_check = icl_color_check;
+			dev_priv->color_funcs.color_check = icl_color_check;
 		else if (DISPLAY_VER(dev_priv) >= 10)
-			dev_priv->display.color_check = glk_color_check;
+			dev_priv->color_funcs.color_check = glk_color_check;
 		else if (DISPLAY_VER(dev_priv) >= 7)
-			dev_priv->display.color_check = ivb_color_check;
+			dev_priv->color_funcs.color_check = ivb_color_check;
 		else
-			dev_priv->display.color_check = ilk_color_check;
+			dev_priv->color_funcs.color_check = ilk_color_check;
 
 		if (DISPLAY_VER(dev_priv) >= 9)
-			dev_priv->display.color_commit = skl_color_commit;
+			dev_priv->color_funcs.color_commit = skl_color_commit;
 		else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-			dev_priv->display.color_commit = hsw_color_commit;
+			dev_priv->color_funcs.color_commit = hsw_color_commit;
 		else
-			dev_priv->display.color_commit = ilk_color_commit;
+			dev_priv->color_funcs.color_commit = ilk_color_commit;
 
 		if (DISPLAY_VER(dev_priv) >= 11) {
-			dev_priv->display.load_luts = icl_load_luts;
-			dev_priv->display.read_luts = icl_read_luts;
+			dev_priv->color_funcs.load_luts = icl_load_luts;
+			dev_priv->color_funcs.read_luts = icl_read_luts;
 		} else if (DISPLAY_VER(dev_priv) == 10) {
-			dev_priv->display.load_luts = glk_load_luts;
-			dev_priv->display.read_luts = glk_read_luts;
+			dev_priv->color_funcs.load_luts = glk_load_luts;
+			dev_priv->color_funcs.read_luts = glk_read_luts;
 		} else if (DISPLAY_VER(dev_priv) >= 8) {
-			dev_priv->display.load_luts = bdw_load_luts;
+			dev_priv->color_funcs.load_luts = bdw_load_luts;
 		} else if (DISPLAY_VER(dev_priv) >= 7) {
-			dev_priv->display.load_luts = ivb_load_luts;
+			dev_priv->color_funcs.load_luts = ivb_load_luts;
 		} else {
-			dev_priv->display.load_luts = ilk_load_luts;
-			dev_priv->display.read_luts = ilk_read_luts;
+			dev_priv->color_funcs.load_luts = ilk_load_luts;
+			dev_priv->color_funcs.read_luts = ilk_read_luts;
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a095184df006..e35b721d1130 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -345,6 +345,25 @@ struct drm_i915_wm_disp_funcs {
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 };
 
+struct intel_color_funcs {
+	int (*color_check)(struct intel_crtc_state *crtc_state);
+	/*
+	 * Program double buffered color management registers during
+	 * vblank evasion. The registers should then latch during the
+	 * next vblank start, alongside any other double buffered registers
+	 * involved with the same commit.
+	 */
+	void (*color_commit)(const struct intel_crtc_state *crtc_state);
+	/*
+	 * Load LUTs (and other single buffered color management
+	 * registers). Will (hopefully) be called during the vblank
+	 * following the latching of any double buffered registers
+	 * involved with the same commit.
+	 */
+	void (*load_luts)(const struct intel_crtc_state *crtc_state);
+	void (*read_luts)(struct intel_crtc_state *crtc_state);
+};
+
 struct drm_i915_display_funcs {
 	void (*get_cdclk)(struct drm_i915_private *dev_priv,
 			  struct intel_cdclk_config *cdclk_config);
@@ -381,23 +400,6 @@ struct drm_i915_display_funcs {
 	/* render clock increase/decrease */
 	/* display clock increase/decrease */
 	/* pll clock increase/decrease */
-
-	int (*color_check)(struct intel_crtc_state *crtc_state);
-	/*
-	 * Program double buffered color management registers during
-	 * vblank evasion. The registers should then latch during the
-	 * next vblank start, alongside any other double buffered registers
-	 * involved with the same commit.
-	 */
-	void (*color_commit)(const struct intel_crtc_state *crtc_state);
-	/*
-	 * Load LUTs (and other single buffered color management
-	 * registers). Will (hopefully) be called during the vblank
-	 * following the latching of any double buffered registers
-	 * involved with the same commit.
-	 */
-	void (*load_luts)(const struct intel_crtc_state *crtc_state);
-	void (*read_luts)(struct intel_crtc_state *crtc_state);
 };
 
 
@@ -972,6 +974,9 @@ struct drm_i915_private {
 	/* Display functions */
 	struct drm_i915_display_funcs display;
 
+	/* Display internal color functions */
+	struct intel_color_funcs color_funcs;
+
 	/* PCH chipset type */
 	enum intel_pch pch_type;
 	unsigned short pch_id;
-- 
2.30.2

