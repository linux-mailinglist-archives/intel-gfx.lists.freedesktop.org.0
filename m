Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3414A6C0CBF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF7B10E2AE;
	Mon, 20 Mar 2023 09:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA69110E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679303139; x=1710839139;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vJ7Aokr+w4o53JnNf3wwPxwmktdXSgz2xIRlopF93dU=;
 b=Tiayest9MTgcTVTAgCZ6njCbxz7mdL+N7760wT8HfwH6mqLrLfjyTIwN
 Y8ALuM1njTLWgVJqJN6llCs6GerSijWfK5I0CCW39pEur7aQqPtnqREOX
 VjVXKrS2AL3Swmv2QIFUZXLRrFoLw9S1EzdQkpFcha9dHb/xwdlK0QuvE
 fn/aXFnrcVyZTwWla/KgPWSIFVtxLIaL8HEYk1jZQvo6DUtYjgjD6xpVc
 3hcxwnTL6Dj34EWnp4wWoyVcXWI9imgYeU/Ux0vUITD0DR2CrZtHtLU1L
 IiWiW0dez6Y7cB5cToTOluaq6pbrWSUCUhSwOZfSejNVPG2IGdgsLLXwR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="338637096"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="338637096"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:05:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="745289465"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="745289465"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 20 Mar 2023 02:05:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:05:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:05:21 +0200
Message-Id: <20230320090522.9909-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
References: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/dpt: Add a modparam to disable DPT
 via the chicken bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add i915.enable_dpt modparam to allow disabling the DPT
usage in hardware via the chicken bit. Useful when debugging
potential DPT issues.

Quickly smoke tested on ADL.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  6 ++++++
 drivers/gpu/drm/i915/display/intel_dpt.c      | 21 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpt.h      |  2 ++
 drivers/gpu/drm/i915/display/intel_fb.c       |  7 ++++---
 drivers/gpu/drm/i915/display/intel_fb.h       |  1 +
 .../drm/i915/display/skl_universal_plane.c    |  6 ++++++
 drivers/gpu/drm/i915/i915_params.c            |  3 +++
 drivers/gpu/drm/i915/i915_params.h            |  1 +
 drivers/gpu/drm/i915/i915_reg.h               |  2 ++
 9 files changed, 46 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 121990ba2a28..07e29fe95602 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6969,6 +6969,12 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
+	if (old_crtc_state->inherited ||
+	    intel_crtc_needs_modeset(new_crtc_state)) {
+		if (HAS_DPT(i915))
+			intel_dpt_configure(crtc);
+	}
+
 	if (!modeset) {
 		if (new_crtc_state->preload_luts &&
 		    intel_crtc_needs_color_update(new_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 2a9f40a2b3ed..2bf5cce232d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -9,6 +9,8 @@
 #include "gt/gen8_ppgtt.h"
 
 #include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
@@ -313,3 +315,22 @@ void intel_dpt_destroy(struct i915_address_space *vm)
 	dpt->obj->is_dpt = false;
 	i915_vm_put(&dpt->vm);
 }
+
+void intel_dpt_configure(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	if (DISPLAY_VER(i915) == 14) {
+		enum pipe pipe = crtc->pipe;
+		enum plane_id plane_id;
+
+		for_each_plane_id_on_crtc(crtc, plane_id)
+			intel_de_rmw(i915, PLANE_CHICKEN(pipe, plane_id),
+				     PLANE_CHICKEN_DISABLE_DPT,
+				     i915->params.enable_dpt ? 0 : PLANE_CHICKEN_DISABLE_DPT);
+	} else if (DISPLAY_VER(i915) == 13) {
+		intel_de_rmw(i915, CHICKEN_MISC_2,
+			     CHICKEN_MISC_DISABLE_DPT,
+			     i915->params.enable_dpt ? 0 : CHICKEN_MISC_DISABLE_DPT);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h b/drivers/gpu/drm/i915/display/intel_dpt.h
index e18a9f767b11..d9a166550185 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.h
+++ b/drivers/gpu/drm/i915/display/intel_dpt.h
@@ -10,6 +10,7 @@ struct drm_i915_private;
 
 struct i915_address_space;
 struct i915_vma;
+struct intel_crtc;
 struct intel_framebuffer;
 
 void intel_dpt_destroy(struct i915_address_space *vm);
@@ -19,5 +20,6 @@ void intel_dpt_suspend(struct drm_i915_private *i915);
 void intel_dpt_resume(struct drm_i915_private *i915);
 struct i915_address_space *
 intel_dpt_create(struct intel_framebuffer *fb);
+void intel_dpt_configure(struct intel_crtc *crtc);
 
 #endif /* __INTEL_DPT_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 9609c5de3f91..e5f637897b5e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -716,14 +716,15 @@ static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
 	}
 }
 
-static bool intel_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
+bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
 {
 	return HAS_DPT(i915) && modifier != DRM_FORMAT_MOD_LINEAR;
 }
 
 bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
 {
-	return fb && intel_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
+	return fb && to_i915(fb->dev)->params.enable_dpt &&
+		intel_fb_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
 }
 
 unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
@@ -1705,7 +1706,7 @@ u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
 	 * The new CCS hash mode makes remapping impossible
 	 */
 	if (DISPLAY_VER(dev_priv) < 4 || intel_fb_is_ccs_modifier(modifier) ||
-	    intel_modifier_uses_dpt(dev_priv, modifier))
+	    intel_fb_modifier_uses_dpt(dev_priv, modifier))
 		return intel_plane_fb_max_stride(dev_priv, pixel_format, modifier);
 	else if (DISPLAY_VER(dev_priv) >= 7)
 		return 256 * 1024;
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 4662b812b934..e85167d6bc34 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -92,6 +92,7 @@ intel_user_framebuffer_create(struct drm_device *dev,
 			      struct drm_file *filp,
 			      const struct drm_mode_fb_cmd2 *user_mode_cmd);
 
+bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier);
 bool intel_fb_uses_dpt(const struct drm_framebuffer *fb);
 
 #endif /* __INTEL_FB_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index fd0065a46ec5..8ea0598a5a07 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2475,6 +2475,12 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		goto error;
 	}
 
+	if (!dev_priv->params.enable_dpt &&
+	    intel_fb_modifier_uses_dpt(dev_priv, fb->modifier)) {
+		drm_dbg_kms(&dev_priv->drm, "DPT disabled, skipping initial FB\n");
+		goto error;
+	}
+
 	/*
 	 * DRM_MODE_ROTATE_ is counter clockwise to stay compatible with Xrandr
 	 * while i915 HW rotation is clockwise, thats why this swapping.
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index ade744cccfea..bec94feb512d 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -131,6 +131,9 @@ i915_param_named_unsafe(disable_power_well, int, 0400,
 
 i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: true)");
 
+i915_param_named_unsafe(enable_dpt, bool, 0400,
+	"Enable display page table (DPT) (default: true)");
+
 i915_param_named(fastboot, int, 0400,
 	"Try to skip unnecessary mode sets at boot time "
 	"(0=disabled, 1=enabled) "
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 3f51f90145b6..d824fe6d266e 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -54,6 +54,7 @@ struct drm_printer;
 	param(int, enable_dc, -1, 0400) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
+	param(bool, enable_dpt, true, 0400) \
 	param(bool, psr_safest_params, false, 0400) \
 	param(bool, enable_psr2_sel_fetch, true, 0400) \
 	param(int, disable_power_well, -1, 0400) \
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4ad36b637f82..09849bcb1ccf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4646,6 +4646,7 @@
 #define   PLANE_COLOR_ALPHA_HW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_ALPHA_MASK, 3)
 #define _PLANE_CHICKEN_1_A			0x7026C
 #define _PLANE_CHICKEN_2_A			0x7036C
+#define   PLANE_CHICKEN_DISABLE_DPT		REG_BIT(19) /* mtl+ */
 #define _PLANE_BUF_CFG_1_A			0x7027c
 #define _PLANE_BUF_CFG_2_A			0x7037c
 #define _PLANE_NV12_BUF_CFG_1_A		0x70278
@@ -5510,6 +5511,7 @@
 #define  KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	(1 << 14)
 
 #define CHICKEN_MISC_2		_MMIO(0x42084)
+#define  CHICKEN_MISC_DISABLE_DPT	REG_BIT(30) /* adl,dg2 */
 #define  KBL_ARB_FILL_SPARE_14	REG_BIT(14)
 #define  KBL_ARB_FILL_SPARE_13	REG_BIT(13)
 #define  GLK_CL2_PWR_DOWN	(1 << 12)
-- 
2.39.2

