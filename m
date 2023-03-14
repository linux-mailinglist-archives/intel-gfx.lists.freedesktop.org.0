Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEE16B9530
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 14:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAFF10E7DE;
	Tue, 14 Mar 2023 13:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F54710E7DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 13:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678799006; x=1710335006;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=B4JY5RLexTkLcJclMPLSRkr6s9UbkyZPk06xNdD8ba4=;
 b=D1VC4EMnQJrsW/6ltqQ1cF5Ha/BLb5qQkUJsf3Meu6Qt6MK4QjuS5nOH
 1I2XtdRuwkDbVNM1zMI4JN51SGLdeCXHZzr9gzCnCkmTnI9xj68oiJ6nR
 ou7LCiHLmZfS33zD9QEpv9vLlKufpdEe1zRurm0LL6Si7oDZYx7LJ3Y0B
 RTsG+VjxgIcjgamSy5NNgpX9Dn6BBnFRhCTN55vmJpvvBjgX8rqnDR9Ts
 UIZcBjjhK8Ie00UQqtIBkR73igy2guHz4chfqNjAJVRuP0Sq6QYUEeKsT
 cGzY1GQWB1b3nWkX4PcakVI1CKpTa3tFoMh3CRb0fQewnp7uCpChs3dlL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="365080019"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="365080019"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672323914"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="672323914"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 14 Mar 2023 06:03:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Mar 2023 15:03:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 15:02:55 +0200
Message-Id: <20230314130255.23273-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: Extract intel_sprite_uapi.c
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

Move the sprite colorkey ioctl handler to its own file
so that intel_sprite.c becomes all about the low level
details of pre-skl sprite planes.

And drop a bunch of unnecessary includes while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_sprite.c   | 125 -----------------
 .../gpu/drm/i915/display/intel_sprite_uapi.c  | 127 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_sprite_uapi.h  |  15 +++
 4 files changed, 143 insertions(+), 125 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_sprite_uapi.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_sprite_uapi.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 8e46f57e4569..a59937b2b431 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -267,6 +267,7 @@ i915-y += \
 	display/intel_psr.o \
 	display/intel_quirks.o \
 	display/intel_sprite.o \
+	display/intel_sprite_uapi.o \
 	display/intel_tc.o \
 	display/intel_vblank.o \
 	display/intel_vga.o \
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 3563fecee838..25034bbf1445 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -32,27 +32,20 @@
 
 #include <linux/string_helpers.h>
 
-#include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_blend.h>
 #include <drm/drm_color_mgmt.h>
-#include <drm/drm_crtc.h>
-#include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_rect.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
-#include "i915_vgpu.h"
 #include "i9xx_plane.h"
 #include "intel_atomic_plane.h"
-#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
-#include "intel_frontbuffer.h"
 #include "intel_sprite.h"
-#include "intel_vrr.h"
 
 static void i9xx_plane_linear_gamma(u16 gamma[8])
 {
@@ -1391,124 +1384,6 @@ vlv_sprite_check(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static bool has_dst_key_in_primary_plane(struct drm_i915_private *dev_priv)
-{
-	return DISPLAY_VER(dev_priv) >= 9;
-}
-
-static void intel_plane_set_ckey(struct intel_plane_state *plane_state,
-				 const struct drm_intel_sprite_colorkey *set)
-{
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
-
-	*key = *set;
-
-	/*
-	 * We want src key enabled on the
-	 * sprite and not on the primary.
-	 */
-	if (plane->id == PLANE_PRIMARY &&
-	    set->flags & I915_SET_COLORKEY_SOURCE)
-		key->flags = 0;
-
-	/*
-	 * On SKL+ we want dst key enabled on
-	 * the primary and not on the sprite.
-	 */
-	if (DISPLAY_VER(dev_priv) >= 9 && plane->id != PLANE_PRIMARY &&
-	    set->flags & I915_SET_COLORKEY_DESTINATION)
-		key->flags = 0;
-}
-
-int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
-				    struct drm_file *file_priv)
-{
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct drm_intel_sprite_colorkey *set = data;
-	struct drm_plane *plane;
-	struct drm_plane_state *plane_state;
-	struct drm_atomic_state *state;
-	struct drm_modeset_acquire_ctx ctx;
-	int ret = 0;
-
-	/* ignore the pointless "none" flag */
-	set->flags &= ~I915_SET_COLORKEY_NONE;
-
-	if (set->flags & ~(I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))
-		return -EINVAL;
-
-	/* Make sure we don't try to enable both src & dest simultaneously */
-	if ((set->flags & (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE)) == (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))
-		return -EINVAL;
-
-	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	    set->flags & I915_SET_COLORKEY_DESTINATION)
-		return -EINVAL;
-
-	plane = drm_plane_find(dev, file_priv, set->plane_id);
-	if (!plane || plane->type != DRM_PLANE_TYPE_OVERLAY)
-		return -ENOENT;
-
-	/*
-	 * SKL+ only plane 2 can do destination keying against plane 1.
-	 * Also multiple planes can't do destination keying on the same
-	 * pipe simultaneously.
-	 */
-	if (DISPLAY_VER(dev_priv) >= 9 &&
-	    to_intel_plane(plane)->id >= PLANE_SPRITE1 &&
-	    set->flags & I915_SET_COLORKEY_DESTINATION)
-		return -EINVAL;
-
-	drm_modeset_acquire_init(&ctx, 0);
-
-	state = drm_atomic_state_alloc(plane->dev);
-	if (!state) {
-		ret = -ENOMEM;
-		goto out;
-	}
-	state->acquire_ctx = &ctx;
-
-	while (1) {
-		plane_state = drm_atomic_get_plane_state(state, plane);
-		ret = PTR_ERR_OR_ZERO(plane_state);
-		if (!ret)
-			intel_plane_set_ckey(to_intel_plane_state(plane_state), set);
-
-		/*
-		 * On some platforms we have to configure
-		 * the dst colorkey on the primary plane.
-		 */
-		if (!ret && has_dst_key_in_primary_plane(dev_priv)) {
-			struct intel_crtc *crtc =
-				intel_crtc_for_pipe(dev_priv,
-						    to_intel_plane(plane)->pipe);
-
-			plane_state = drm_atomic_get_plane_state(state,
-								 crtc->base.primary);
-			ret = PTR_ERR_OR_ZERO(plane_state);
-			if (!ret)
-				intel_plane_set_ckey(to_intel_plane_state(plane_state), set);
-		}
-
-		if (!ret)
-			ret = drm_atomic_commit(state);
-
-		if (ret != -EDEADLK)
-			break;
-
-		drm_atomic_state_clear(state);
-		drm_modeset_backoff(&ctx);
-	}
-
-	drm_atomic_state_put(state);
-out:
-	drm_modeset_drop_locks(&ctx);
-	drm_modeset_acquire_fini(&ctx);
-	return ret;
-}
-
 static const u32 g4x_sprite_formats[] = {
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_YUYV,
diff --git a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
new file mode 100644
index 000000000000..70a391083751
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "intel_crtc.h"
+#include "intel_display_types.h"
+#include "intel_sprite_uapi.h"
+
+static bool has_dst_key_in_primary_plane(struct drm_i915_private *dev_priv)
+{
+	return DISPLAY_VER(dev_priv) >= 9;
+}
+
+static void intel_plane_set_ckey(struct intel_plane_state *plane_state,
+				 const struct drm_intel_sprite_colorkey *set)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
+
+	*key = *set;
+
+	/*
+	 * We want src key enabled on the
+	 * sprite and not on the primary.
+	 */
+	if (plane->id == PLANE_PRIMARY &&
+	    set->flags & I915_SET_COLORKEY_SOURCE)
+		key->flags = 0;
+
+	/*
+	 * On SKL+ we want dst key enabled on
+	 * the primary and not on the sprite.
+	 */
+	if (DISPLAY_VER(dev_priv) >= 9 && plane->id != PLANE_PRIMARY &&
+	    set->flags & I915_SET_COLORKEY_DESTINATION)
+		key->flags = 0;
+}
+
+int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
+				    struct drm_file *file_priv)
+{
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_intel_sprite_colorkey *set = data;
+	struct drm_plane *plane;
+	struct drm_plane_state *plane_state;
+	struct drm_atomic_state *state;
+	struct drm_modeset_acquire_ctx ctx;
+	int ret = 0;
+
+	/* ignore the pointless "none" flag */
+	set->flags &= ~I915_SET_COLORKEY_NONE;
+
+	if (set->flags & ~(I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))
+		return -EINVAL;
+
+	/* Make sure we don't try to enable both src & dest simultaneously */
+	if ((set->flags & (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE)) == (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))
+		return -EINVAL;
+
+	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	    set->flags & I915_SET_COLORKEY_DESTINATION)
+		return -EINVAL;
+
+	plane = drm_plane_find(dev, file_priv, set->plane_id);
+	if (!plane || plane->type != DRM_PLANE_TYPE_OVERLAY)
+		return -ENOENT;
+
+	/*
+	 * SKL+ only plane 2 can do destination keying against plane 1.
+	 * Also multiple planes can't do destination keying on the same
+	 * pipe simultaneously.
+	 */
+	if (DISPLAY_VER(dev_priv) >= 9 &&
+	    to_intel_plane(plane)->id >= PLANE_SPRITE1 &&
+	    set->flags & I915_SET_COLORKEY_DESTINATION)
+		return -EINVAL;
+
+	drm_modeset_acquire_init(&ctx, 0);
+
+	state = drm_atomic_state_alloc(plane->dev);
+	if (!state) {
+		ret = -ENOMEM;
+		goto out;
+	}
+	state->acquire_ctx = &ctx;
+
+	while (1) {
+		plane_state = drm_atomic_get_plane_state(state, plane);
+		ret = PTR_ERR_OR_ZERO(plane_state);
+		if (!ret)
+			intel_plane_set_ckey(to_intel_plane_state(plane_state), set);
+
+		/*
+		 * On some platforms we have to configure
+		 * the dst colorkey on the primary plane.
+		 */
+		if (!ret && has_dst_key_in_primary_plane(dev_priv)) {
+			struct intel_crtc *crtc =
+				intel_crtc_for_pipe(dev_priv,
+						    to_intel_plane(plane)->pipe);
+
+			plane_state = drm_atomic_get_plane_state(state,
+								 crtc->base.primary);
+			ret = PTR_ERR_OR_ZERO(plane_state);
+			if (!ret)
+				intel_plane_set_ckey(to_intel_plane_state(plane_state), set);
+		}
+
+		if (!ret)
+			ret = drm_atomic_commit(state);
+
+		if (ret != -EDEADLK)
+			break;
+
+		drm_atomic_state_clear(state);
+		drm_modeset_backoff(&ctx);
+	}
+
+	drm_atomic_state_put(state);
+out:
+	drm_modeset_drop_locks(&ctx);
+	drm_modeset_acquire_fini(&ctx);
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_sprite_uapi.h b/drivers/gpu/drm/i915/display/intel_sprite_uapi.h
new file mode 100644
index 000000000000..3eb50025acaf
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_sprite_uapi.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_SPRITE_UAPI_H__
+#define __INTEL_SPRITE_UAPI_H__
+
+struct drm_device;
+struct drm_file;
+
+int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
+				    struct drm_file *file_priv);
+
+#endif /* __INTEL_SPRITE_UAPI_H__ */
-- 
2.39.2

