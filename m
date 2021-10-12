Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 048D7429C74
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 06:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5778589F9F;
	Tue, 12 Oct 2021 04:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB4B89F99
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 04:35:29 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-qTS2EOTlMZig7lKggPe4-g-1; Tue, 12 Oct 2021 00:35:26 -0400
X-MC-Unique: qTS2EOTlMZig7lKggPe4-g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55CDB1006AA9;
 Tue, 12 Oct 2021 04:35:25 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0A49E60BF4;
 Tue, 12 Oct 2021 04:35:23 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Tue, 12 Oct 2021 14:34:58 +1000
Message-Id: <20211012043502.1377715-5-airlied@gmail.com>
In-Reply-To: <20211012043502.1377715-1-airlied@gmail.com>
References: <20211012043502.1377715-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/display: refactor initial plane
 config to a separate file
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

This moves this functionality out of intel_display.c to separate
self-contained file.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 279 +----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +
 .../drm/i915/display/intel_plane_initial.c    | 283 ++++++++++++++++++
 .../drm/i915/display/intel_plane_initial.h    |  13 +
 5 files changed, 302 insertions(+), 276 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_plane_initial.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_plane_initial.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c36c8a4f0716..5d9794d80bc2 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -225,6 +225,7 @@ i915-y +=3D \
 =09display/intel_hotplug.o \
 =09display/intel_lpe_audio.o \
 =09display/intel_overlay.o \
+=09display/intel_plane_initial.o \
 =09display/intel_psr.o \
 =09display/intel_quirks.o \
 =09display/intel_sprite.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 39a7b24135c9..b0684537f987 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -95,6 +95,7 @@
 #include "intel_overlay.h"
 #include "intel_panel.h"
 #include "intel_pipe_crc.h"
+#include "intel_plane_initial.h"
 #include "intel_pm.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
@@ -1238,123 +1239,6 @@ u32 intel_plane_fb_max_stride(struct drm_i915_priva=
te *dev_priv,
 =09=09=09=09 DRM_MODE_ROTATE_0);
 }
=20
-static struct i915_vma *
-initial_plane_vma(struct drm_i915_private *i915,
-=09=09  struct intel_initial_plane_config *plane_config)
-{
-=09struct drm_i915_gem_object *obj;
-=09struct i915_vma *vma;
-=09u32 base, size;
-
-=09if (plane_config->size =3D=3D 0)
-=09=09return NULL;
-
-=09base =3D round_down(plane_config->base,
-=09=09=09  I915_GTT_MIN_ALIGNMENT);
-=09size =3D round_up(plane_config->base + plane_config->size,
-=09=09=09I915_GTT_MIN_ALIGNMENT);
-=09size -=3D base;
-
-=09/*
-=09 * If the FB is too big, just don't use it since fbdev is not very
-=09 * important and we should probably use that space with FBC or other
-=09 * features.
-=09 */
-=09if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
-=09    size * 2 > i915->stolen_usable_size)
-=09=09return NULL;
-
-=09obj =3D i915_gem_object_create_stolen_for_preallocated(i915, base, size=
);
-=09if (IS_ERR(obj))
-=09=09return NULL;
-
-=09/*
-=09 * Mark it WT ahead of time to avoid changing the
-=09 * cache_level during fbdev initialization. The
-=09 * unbind there would get stuck waiting for rcu.
-=09 */
-=09i915_gem_object_set_cache_coherency(obj, HAS_WT(i915) ?
-=09=09=09=09=09    I915_CACHE_WT : I915_CACHE_NONE);
-
-=09switch (plane_config->tiling) {
-=09case I915_TILING_NONE:
-=09=09break;
-=09case I915_TILING_X:
-=09case I915_TILING_Y:
-=09=09obj->tiling_and_stride =3D
-=09=09=09plane_config->fb->base.pitches[0] |
-=09=09=09plane_config->tiling;
-=09=09break;
-=09default:
-=09=09MISSING_CASE(plane_config->tiling);
-=09=09goto err_obj;
-=09}
-
-=09vma =3D i915_vma_instance(obj, &i915->ggtt.vm, NULL);
-=09if (IS_ERR(vma))
-=09=09goto err_obj;
-
-=09if (i915_ggtt_pin(vma, NULL, 0, PIN_MAPPABLE | PIN_OFFSET_FIXED | base)=
)
-=09=09goto err_obj;
-
-=09if (i915_gem_object_is_tiled(obj) &&
-=09    !i915_vma_is_map_and_fenceable(vma))
-=09=09goto err_obj;
-
-=09return vma;
-
-err_obj:
-=09i915_gem_object_put(obj);
-=09return NULL;
-}
-
-static bool
-intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
-=09=09=09      struct intel_initial_plane_config *plane_config)
-{
-=09struct drm_device *dev =3D crtc->base.dev;
-=09struct drm_i915_private *dev_priv =3D to_i915(dev);
-=09struct drm_mode_fb_cmd2 mode_cmd =3D { 0 };
-=09struct drm_framebuffer *fb =3D &plane_config->fb->base;
-=09struct i915_vma *vma;
-
-=09switch (fb->modifier) {
-=09case DRM_FORMAT_MOD_LINEAR:
-=09case I915_FORMAT_MOD_X_TILED:
-=09case I915_FORMAT_MOD_Y_TILED:
-=09=09break;
-=09default:
-=09=09drm_dbg(&dev_priv->drm,
-=09=09=09"Unsupported modifier for initial FB: 0x%llx\n",
-=09=09=09fb->modifier);
-=09=09return false;
-=09}
-
-=09vma =3D initial_plane_vma(dev_priv, plane_config);
-=09if (!vma)
-=09=09return false;
-
-=09mode_cmd.pixel_format =3D fb->format->format;
-=09mode_cmd.width =3D fb->width;
-=09mode_cmd.height =3D fb->height;
-=09mode_cmd.pitches[0] =3D fb->pitches[0];
-=09mode_cmd.modifier[0] =3D fb->modifier;
-=09mode_cmd.flags =3D DRM_MODE_FB_MODIFIERS;
-
-=09if (intel_framebuffer_init(to_intel_framebuffer(fb),
-=09=09=09=09   vma->obj, &mode_cmd)) {
-=09=09drm_dbg_kms(&dev_priv->drm, "intel fb init failed\n");
-=09=09goto err_vma;
-=09}
-
-=09plane_config->vma =3D vma;
-=09return true;
-
-err_vma:
-=09i915_vma_put(vma);
-=09return false;
-}
-
 static void
 intel_set_plane_visible(struct intel_crtc_state *crtc_state,
 =09=09=09struct intel_plane_state *plane_state,
@@ -1390,8 +1274,8 @@ static void fixup_plane_bitmasks(struct intel_crtc_st=
ate *crtc_state)
 =09}
 }
=20
-static void intel_plane_disable_noatomic(struct intel_crtc *crtc,
-=09=09=09=09=09 struct intel_plane *plane)
+void intel_plane_disable_noatomic(struct intel_crtc *crtc,
+=09=09=09=09  struct intel_plane *plane)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
 =09struct intel_crtc_state *crtc_state =3D
@@ -1436,123 +1320,6 @@ static void intel_plane_disable_noatomic(struct int=
el_crtc *crtc,
 =09intel_wait_for_vblank(dev_priv, crtc->pipe);
 }
=20
-static bool
-intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
-=09=09=09      const struct intel_initial_plane_config *plane_config,
-=09=09=09      struct drm_framebuffer **fb,
-=09=09=09      struct i915_vma **vma)
-{
-=09struct intel_crtc *crtc;
-
-=09for_each_intel_crtc(&i915->drm, crtc) {
-=09=09struct intel_crtc_state *crtc_state =3D
-=09=09=09to_intel_crtc_state(crtc->base.state);
-=09=09struct intel_plane *plane =3D
-=09=09=09to_intel_plane(crtc->base.primary);
-=09=09struct intel_plane_state *plane_state =3D
-=09=09=09to_intel_plane_state(plane->base.state);
-
-=09=09if (!crtc_state->uapi.active)
-=09=09=09continue;
-
-=09=09if (!plane_state->ggtt_vma)
-=09=09=09continue;
-
-=09=09if (intel_plane_ggtt_offset(plane_state) =3D=3D plane_config->base) =
{
-=09=09=09*fb =3D plane_state->hw.fb;
-=09=09=09*vma =3D plane_state->ggtt_vma;
-=09=09=09return true;
-=09=09}
-=09}
-
-=09return false;
-}
-
-static void
-intel_find_initial_plane_obj(struct intel_crtc *crtc,
-=09=09=09     struct intel_initial_plane_config *plane_config)
-{
-=09struct drm_device *dev =3D crtc->base.dev;
-=09struct drm_i915_private *dev_priv =3D to_i915(dev);
-=09struct intel_crtc_state *crtc_state =3D
-=09=09to_intel_crtc_state(crtc->base.state);
-=09struct intel_plane *plane =3D
-=09=09to_intel_plane(crtc->base.primary);
-=09struct intel_plane_state *plane_state =3D
-=09=09to_intel_plane_state(plane->base.state);
-=09struct drm_framebuffer *fb;
-=09struct i915_vma *vma;
-
-=09/*
-=09 * TODO:
-=09 *   Disable planes if get_initial_plane_config() failed.
-=09 *   Make sure things work if the surface base is not page aligned.
-=09 */
-=09if (!plane_config->fb)
-=09=09return;
-
-=09if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
-=09=09fb =3D &plane_config->fb->base;
-=09=09vma =3D plane_config->vma;
-=09=09goto valid_fb;
-=09}
-
-=09/*
-=09 * Failed to alloc the obj, check to see if we should share
-=09 * an fb with another CRTC instead
-=09 */
-=09if (intel_reuse_initial_plane_obj(dev_priv, plane_config, &fb, &vma))
-=09=09goto valid_fb;
-
-=09/*
-=09 * We've failed to reconstruct the BIOS FB.  Current display state
-=09 * indicates that the primary plane is visible, but has a NULL FB,
-=09 * which will lead to problems later if we don't fix it up.  The
-=09 * simplest solution is to just disable the primary plane now and
-=09 * pretend the BIOS never had it enabled.
-=09 */
-=09intel_plane_disable_noatomic(crtc, plane);
-=09if (crtc_state->bigjoiner) {
-=09=09struct intel_crtc *slave =3D
-=09=09=09crtc_state->bigjoiner_linked_crtc;
-=09=09intel_plane_disable_noatomic(slave, to_intel_plane(slave->base.prima=
ry));
-=09}
-
-=09return;
-
-valid_fb:
-=09plane_state->uapi.rotation =3D plane_config->rotation;
-=09intel_fb_fill_view(to_intel_framebuffer(fb),
-=09=09=09   plane_state->uapi.rotation, &plane_state->view);
-
-=09__i915_vma_pin(vma);
-=09plane_state->ggtt_vma =3D i915_vma_get(vma);
-=09if (intel_plane_uses_fence(plane_state) &&
-=09    i915_vma_pin_fence(vma) =3D=3D 0 && vma->fence)
-=09=09plane_state->flags |=3D PLANE_HAS_FENCE;
-
-=09plane_state->uapi.src_x =3D 0;
-=09plane_state->uapi.src_y =3D 0;
-=09plane_state->uapi.src_w =3D fb->width << 16;
-=09plane_state->uapi.src_h =3D fb->height << 16;
-
-=09plane_state->uapi.crtc_x =3D 0;
-=09plane_state->uapi.crtc_y =3D 0;
-=09plane_state->uapi.crtc_w =3D fb->width;
-=09plane_state->uapi.crtc_h =3D fb->height;
-
-=09if (plane_config->tiling)
-=09=09dev_priv->preserve_bios_swizzle =3D true;
-
-=09plane_state->uapi.fb =3D fb;
-=09drm_framebuffer_get(fb);
-
-=09plane_state->uapi.crtc =3D &crtc->base;
-=09intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
-
-=09atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
-}
-
 unsigned int
 intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
 {
@@ -11373,22 +11140,6 @@ static void intel_mode_config_cleanup(struct drm_i=
915_private *i915)
 =09drm_mode_config_cleanup(&i915->drm);
 }
=20
-static void plane_config_fini(struct intel_initial_plane_config *plane_con=
fig)
-{
-=09if (plane_config->fb) {
-=09=09struct drm_framebuffer *fb =3D &plane_config->fb->base;
-
-=09=09/* We may only have the stub and not a full framebuffer */
-=09=09if (drm_framebuffer_read_refcount(fb))
-=09=09=09drm_framebuffer_put(fb);
-=09=09else
-=09=09=09kfree(fb);
-=09}
-
-=09if (plane_config->vma)
-=09=09i915_vma_put(plane_config->vma);
-}
-
 /* part #1: call before irq install */
 int intel_modeset_init_noirq(struct drm_i915_private *i915)
 {
@@ -11460,30 +11211,6 @@ int intel_modeset_init_noirq(struct drm_i915_priva=
te *i915)
 =09return ret;
 }
=20
-static void
-intel_crtc_initial_plane_config(struct intel_crtc *crtc)
-{
-=09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
-=09struct intel_initial_plane_config plane_config =3D {};
-
-=09/*
-=09 * Note that reserving the BIOS fb up front prevents us
-=09 * from stuffing other stolen allocations like the ring
-=09 * on top.  This prevents some ugliness at boot time, and
-=09 * can even allow for smooth boot transitions if the BIOS
-=09 * fb is large enough for the active pipe configuration.
-=09 */
-=09dev_priv->display->get_initial_plane_config(crtc, &plane_config);
-
-=09/*
-=09 * If the fb is shared between multiple heads, we'll
-=09 * just get the first one.
-=09 */
-=09intel_find_initial_plane_obj(crtc, &plane_config);
-
-=09plane_config_fini(&plane_config);
-}
-
 /* part #2: call after irq install, but before gem init */
 int intel_modeset_init_nogem(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm=
/i915/display/intel_display.h
index d655d996d465..38afc758d7d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -625,6 +625,8 @@ void intel_plane_unpin_fb(struct intel_plane_state *old=
_plane_state);
 struct intel_encoder *
 intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 =09=09=09   const struct intel_crtc_state *crtc_state);
+void intel_plane_disable_noatomic(struct intel_crtc *crtc,
+=09=09=09=09  struct intel_plane *plane);
=20
 void intel_display_driver_register(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/g=
pu/drm/i915/display/intel_plane_initial.c
new file mode 100644
index 000000000000..dcd698a02da2
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -0,0 +1,283 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright =C2=A9 2021 Intel Corporation
+ */
+
+#include "intel_display_types.h"
+#include "intel_plane_initial.h"
+#include "intel_atomic_plane.h"
+#include "intel_display.h"
+#include "intel_fb.h"
+
+static bool
+intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
+=09=09=09      const struct intel_initial_plane_config *plane_config,
+=09=09=09      struct drm_framebuffer **fb,
+=09=09=09      struct i915_vma **vma)
+{
+=09struct intel_crtc *crtc;
+
+=09for_each_intel_crtc(&i915->drm, crtc) {
+=09=09struct intel_crtc_state *crtc_state =3D
+=09=09=09to_intel_crtc_state(crtc->base.state);
+=09=09struct intel_plane *plane =3D
+=09=09=09to_intel_plane(crtc->base.primary);
+=09=09struct intel_plane_state *plane_state =3D
+=09=09=09to_intel_plane_state(plane->base.state);
+
+=09=09if (!crtc_state->uapi.active)
+=09=09=09continue;
+
+=09=09if (!plane_state->ggtt_vma)
+=09=09=09continue;
+
+=09=09if (intel_plane_ggtt_offset(plane_state) =3D=3D plane_config->base) =
{
+=09=09=09*fb =3D plane_state->hw.fb;
+=09=09=09*vma =3D plane_state->ggtt_vma;
+=09=09=09return true;
+=09=09}
+=09}
+
+=09return false;
+}
+
+static struct i915_vma *
+initial_plane_vma(struct drm_i915_private *i915,
+=09=09  struct intel_initial_plane_config *plane_config)
+{
+=09struct drm_i915_gem_object *obj;
+=09struct i915_vma *vma;
+=09u32 base, size;
+
+=09if (plane_config->size =3D=3D 0)
+=09=09return NULL;
+
+=09base =3D round_down(plane_config->base,
+=09=09=09  I915_GTT_MIN_ALIGNMENT);
+=09size =3D round_up(plane_config->base + plane_config->size,
+=09=09=09I915_GTT_MIN_ALIGNMENT);
+=09size -=3D base;
+
+=09/*
+=09 * If the FB is too big, just don't use it since fbdev is not very
+=09 * important and we should probably use that space with FBC or other
+=09 * features.
+=09 */
+=09if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
+=09    size * 2 > i915->stolen_usable_size)
+=09=09return NULL;
+
+=09obj =3D i915_gem_object_create_stolen_for_preallocated(i915, base, size=
);
+=09if (IS_ERR(obj))
+=09=09return NULL;
+
+=09/*
+=09 * Mark it WT ahead of time to avoid changing the
+=09 * cache_level during fbdev initialization. The
+=09 * unbind there would get stuck waiting for rcu.
+=09 */
+=09i915_gem_object_set_cache_coherency(obj, HAS_WT(i915) ?
+=09=09=09=09=09    I915_CACHE_WT : I915_CACHE_NONE);
+
+=09switch (plane_config->tiling) {
+=09case I915_TILING_NONE:
+=09=09break;
+=09case I915_TILING_X:
+=09case I915_TILING_Y:
+=09=09obj->tiling_and_stride =3D
+=09=09=09plane_config->fb->base.pitches[0] |
+=09=09=09plane_config->tiling;
+=09=09break;
+=09default:
+=09=09MISSING_CASE(plane_config->tiling);
+=09=09goto err_obj;
+=09}
+
+=09vma =3D i915_vma_instance(obj, &i915->ggtt.vm, NULL);
+=09if (IS_ERR(vma))
+=09=09goto err_obj;
+
+=09if (i915_ggtt_pin(vma, NULL, 0, PIN_MAPPABLE | PIN_OFFSET_FIXED | base)=
)
+=09=09goto err_obj;
+
+=09if (i915_gem_object_is_tiled(obj) &&
+=09    !i915_vma_is_map_and_fenceable(vma))
+=09=09goto err_obj;
+
+=09return vma;
+
+err_obj:
+=09i915_gem_object_put(obj);
+=09return NULL;
+}
+
+static bool
+intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
+=09=09=09      struct intel_initial_plane_config *plane_config)
+{
+=09struct drm_device *dev =3D crtc->base.dev;
+=09struct drm_i915_private *dev_priv =3D to_i915(dev);
+=09struct drm_mode_fb_cmd2 mode_cmd =3D { 0 };
+=09struct drm_framebuffer *fb =3D &plane_config->fb->base;
+=09struct i915_vma *vma;
+
+=09switch (fb->modifier) {
+=09case DRM_FORMAT_MOD_LINEAR:
+=09case I915_FORMAT_MOD_X_TILED:
+=09case I915_FORMAT_MOD_Y_TILED:
+=09=09break;
+=09default:
+=09=09drm_dbg(&dev_priv->drm,
+=09=09=09"Unsupported modifier for initial FB: 0x%llx\n",
+=09=09=09fb->modifier);
+=09=09return false;
+=09}
+
+=09vma =3D initial_plane_vma(dev_priv, plane_config);
+=09if (!vma)
+=09=09return false;
+
+=09mode_cmd.pixel_format =3D fb->format->format;
+=09mode_cmd.width =3D fb->width;
+=09mode_cmd.height =3D fb->height;
+=09mode_cmd.pitches[0] =3D fb->pitches[0];
+=09mode_cmd.modifier[0] =3D fb->modifier;
+=09mode_cmd.flags =3D DRM_MODE_FB_MODIFIERS;
+
+=09if (intel_framebuffer_init(to_intel_framebuffer(fb),
+=09=09=09=09   vma->obj, &mode_cmd)) {
+=09=09drm_dbg_kms(&dev_priv->drm, "intel fb init failed\n");
+=09=09goto err_vma;
+=09}
+
+=09plane_config->vma =3D vma;
+=09return true;
+
+err_vma:
+=09i915_vma_put(vma);
+=09return false;
+}
+
+static void
+intel_find_initial_plane_obj(struct intel_crtc *crtc,
+=09=09=09     struct intel_initial_plane_config *plane_config)
+{
+=09struct drm_device *dev =3D crtc->base.dev;
+=09struct drm_i915_private *dev_priv =3D to_i915(dev);
+=09struct intel_crtc_state *crtc_state =3D
+=09=09to_intel_crtc_state(crtc->base.state);
+=09struct intel_plane *plane =3D
+=09=09to_intel_plane(crtc->base.primary);
+=09struct intel_plane_state *plane_state =3D
+=09=09to_intel_plane_state(plane->base.state);
+=09struct drm_framebuffer *fb;
+=09struct i915_vma *vma;
+
+=09/*
+=09 * TODO:
+=09 *   Disable planes if get_initial_plane_config() failed.
+=09 *   Make sure things work if the surface base is not page aligned.
+=09 */
+=09if (!plane_config->fb)
+=09=09return;
+
+=09if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
+=09=09fb =3D &plane_config->fb->base;
+=09=09vma =3D plane_config->vma;
+=09=09goto valid_fb;
+=09}
+
+=09/*
+=09 * Failed to alloc the obj, check to see if we should share
+=09 * an fb with another CRTC instead
+=09 */
+=09if (intel_reuse_initial_plane_obj(dev_priv, plane_config, &fb, &vma))
+=09=09goto valid_fb;
+
+=09/*
+=09 * We've failed to reconstruct the BIOS FB.  Current display state
+=09 * indicates that the primary plane is visible, but has a NULL FB,
+=09 * which will lead to problems later if we don't fix it up.  The
+=09 * simplest solution is to just disable the primary plane now and
+=09 * pretend the BIOS never had it enabled.
+=09 */
+=09intel_plane_disable_noatomic(crtc, plane);
+=09if (crtc_state->bigjoiner) {
+=09=09struct intel_crtc *slave =3D
+=09=09=09crtc_state->bigjoiner_linked_crtc;
+=09=09intel_plane_disable_noatomic(slave, to_intel_plane(slave->base.prima=
ry));
+=09}
+
+=09return;
+
+valid_fb:
+=09plane_state->uapi.rotation =3D plane_config->rotation;
+=09intel_fb_fill_view(to_intel_framebuffer(fb),
+=09=09=09   plane_state->uapi.rotation, &plane_state->view);
+
+=09__i915_vma_pin(vma);
+=09plane_state->ggtt_vma =3D i915_vma_get(vma);
+=09if (intel_plane_uses_fence(plane_state) &&
+=09    i915_vma_pin_fence(vma) =3D=3D 0 && vma->fence)
+=09=09plane_state->flags |=3D PLANE_HAS_FENCE;
+
+=09plane_state->uapi.src_x =3D 0;
+=09plane_state->uapi.src_y =3D 0;
+=09plane_state->uapi.src_w =3D fb->width << 16;
+=09plane_state->uapi.src_h =3D fb->height << 16;
+
+=09plane_state->uapi.crtc_x =3D 0;
+=09plane_state->uapi.crtc_y =3D 0;
+=09plane_state->uapi.crtc_w =3D fb->width;
+=09plane_state->uapi.crtc_h =3D fb->height;
+
+=09if (plane_config->tiling)
+=09=09dev_priv->preserve_bios_swizzle =3D true;
+
+=09plane_state->uapi.fb =3D fb;
+=09drm_framebuffer_get(fb);
+
+=09plane_state->uapi.crtc =3D &crtc->base;
+=09intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
+
+=09atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
+}
+
+static void plane_config_fini(struct intel_initial_plane_config *plane_con=
fig)
+{
+=09if (plane_config->fb) {
+=09=09struct drm_framebuffer *fb =3D &plane_config->fb->base;
+
+=09=09/* We may only have the stub and not a full framebuffer */
+=09=09if (drm_framebuffer_read_refcount(fb))
+=09=09=09drm_framebuffer_put(fb);
+=09=09else
+=09=09=09kfree(fb);
+=09}
+
+=09if (plane_config->vma)
+=09=09i915_vma_put(plane_config->vma);
+}
+
+void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
+{
+=09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
+=09struct intel_initial_plane_config plane_config =3D {};
+
+=09/*
+=09 * Note that reserving the BIOS fb up front prevents us
+=09 * from stuffing other stolen allocations like the ring
+=09 * on top.  This prevents some ugliness at boot time, and
+=09 * can even allow for smooth boot transitions if the BIOS
+=09 * fb is large enough for the active pipe configuration.
+=09 */
+=09dev_priv->display->get_initial_plane_config(crtc, &plane_config);
+
+=09/*
+=09 * If the fb is shared between multiple heads, we'll
+=09 * just get the first one.
+=09 */
+=09intel_find_initial_plane_obj(crtc, &plane_config);
+
+=09plane_config_fini(&plane_config);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers/g=
pu/drm/i915/display/intel_plane_initial.h
new file mode 100644
index 000000000000..c7e35ab3182b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright =C2=A9 2021 Intel Corporation
+ */
+
+#ifndef __INTEL_PLANE_INITIAL_H__
+#define __INTEL_PLANE_INITIAL_H__
+
+struct intel_crtc;
+
+void intel_crtc_initial_plane_config(struct intel_crtc *crtc);
+
+#endif
--=20
2.25.4

