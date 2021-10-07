Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E638E424C2C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 05:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6679A6E821;
	Thu,  7 Oct 2021 03:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F6746E821
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 03:16:59 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-442-K9NJb9SMOFKW_VRZjRN2Ig-1; Wed, 06 Oct 2021 23:16:57 -0400
X-MC-Unique: K9NJb9SMOFKW_VRZjRN2Ig-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9ED6D1808313;
 Thu,  7 Oct 2021 03:16:56 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1B6A25D9C6;
 Thu,  7 Oct 2021 03:16:54 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Thu,  7 Oct 2021 13:13:15 +1000
Message-Id: <20211007031318.3088987-6-airlied@gmail.com>
In-Reply-To: <20211007031318.3088987-1-airlied@gmail.com>
References: <20211007031318.3088987-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/display: move pin/unpin fb/plane
 code to a new file.
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

This just moves this code out of the i915_display.c into a new
standalone file.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |   1 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 258 -----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   8 -
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 274 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb_pin.h   |  28 ++
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   1 +
 8 files changed, 306 insertions(+), 267 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_pin.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_pin.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 5d9794d80bc2..f35485806ec5 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -216,6 +216,7 @@ i915-y +=3D \
 =09display/intel_drrs.o \
 =09display/intel_dsb.o \
 =09display/intel_fb.o \
+=09display/intel_fb_pin.o \
 =09display/intel_fbc.o \
 =09display/intel_fdi.o \
 =09display/intel_fifo_underrun.o \
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gp=
u/drm/i915/display/intel_atomic_plane.c
index 53ee56453270..0be8c00e3db9 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -39,6 +39,7 @@
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
+#include "intel_fb_pin.h"
 #include "intel_pm.h"
 #include "intel_sprite.h"
 #include "gt/intel_rps.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/=
i915/display/intel_cursor.c
index f6dcb5aa63f6..11842f212613 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -17,7 +17,7 @@
 #include "intel_display_types.h"
 #include "intel_display.h"
 #include "intel_fb.h"
-
+#include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
 #include "intel_pm.h"
 #include "intel_psr.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 537058a7a834..0580ae353013 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -852,198 +852,6 @@ unsigned int intel_remapped_info_size(const struct in=
tel_remapped_info *rem_info
 =09return size;
 }
=20
-static struct i915_vma *
-intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
-=09=09     const struct i915_ggtt_view *view,
-=09=09     bool uses_fence,
-=09=09     unsigned long *out_flags,
-=09=09     struct i915_address_space *vm)
-{
-=09struct drm_device *dev =3D fb->dev;
-=09struct drm_i915_private *dev_priv =3D to_i915(dev);
-=09struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
-=09struct i915_vma *vma;
-=09u32 alignment;
-=09int ret;
-
-=09if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
-=09=09return ERR_PTR(-EINVAL);
-
-=09alignment =3D 4096 * 512;
-
-=09atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
-
-=09ret =3D i915_gem_object_set_cache_level(obj, I915_CACHE_NONE);
-=09if (ret) {
-=09=09vma =3D ERR_PTR(ret);
-=09=09goto err;
-=09}
-
-=09vma =3D i915_vma_instance(obj, vm, view);
-=09if (IS_ERR(vma))
-=09=09goto err;
-
-=09if (i915_vma_misplaced(vma, 0, alignment, 0)) {
-=09=09ret =3D i915_vma_unbind(vma);
-=09=09if (ret) {
-=09=09=09vma =3D ERR_PTR(ret);
-=09=09=09goto err;
-=09=09}
-=09}
-
-=09ret =3D i915_vma_pin(vma, 0, alignment, PIN_GLOBAL);
-=09if (ret) {
-=09=09vma =3D ERR_PTR(ret);
-=09=09goto err;
-=09}
-
-=09vma->display_alignment =3D max_t(u64, vma->display_alignment, alignment=
);
-
-=09i915_gem_object_flush_if_display(obj);
-
-=09i915_vma_get(vma);
-err:
-=09atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
-
-=09return vma;
-}
-
-struct i915_vma *
-intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
-=09=09=09   bool phys_cursor,
-=09=09=09   const struct i915_ggtt_view *view,
-=09=09=09   bool uses_fence,
-=09=09=09   unsigned long *out_flags)
-{
-=09struct drm_device *dev =3D fb->dev;
-=09struct drm_i915_private *dev_priv =3D to_i915(dev);
-=09struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
-=09intel_wakeref_t wakeref;
-=09struct i915_gem_ww_ctx ww;
-=09struct i915_vma *vma;
-=09unsigned int pinctl;
-=09u32 alignment;
-=09int ret;
-
-=09if (drm_WARN_ON(dev, !i915_gem_object_is_framebuffer(obj)))
-=09=09return ERR_PTR(-EINVAL);
-
-=09if (phys_cursor)
-=09=09alignment =3D intel_cursor_alignment(dev_priv);
-=09else
-=09=09alignment =3D intel_surf_alignment(fb, 0);
-=09if (drm_WARN_ON(dev, alignment && !is_power_of_2(alignment)))
-=09=09return ERR_PTR(-EINVAL);
-
-=09/* Note that the w/a also requires 64 PTE of padding following the
-=09 * bo. We currently fill all unused PTE with the shadow page and so
-=09 * we should always have valid PTE following the scanout preventing
-=09 * the VT-d warning.
-=09 */
-=09if (intel_scanout_needs_vtd_wa(dev_priv) && alignment < 256 * 1024)
-=09=09alignment =3D 256 * 1024;
-
-=09/*
-=09 * Global gtt pte registers are special registers which actually forwar=
d
-=09 * writes to a chunk of system memory. Which means that there is no ris=
k
-=09 * that the register values disappear as soon as we call
-=09 * intel_runtime_pm_put(), so it is correct to wrap only the
-=09 * pin/unpin/fence and not more.
-=09 */
-=09wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
-
-=09atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
-
-=09/*
-=09 * Valleyview is definitely limited to scanning out the first
-=09 * 512MiB. Lets presume this behaviour was inherited from the
-=09 * g4x display engine and that all earlier gen are similarly
-=09 * limited. Testing suggests that it is a little more
-=09 * complicated than this. For example, Cherryview appears quite
-=09 * happy to scanout from anywhere within its global aperture.
-=09 */
-=09pinctl =3D 0;
-=09if (HAS_GMCH(dev_priv))
-=09=09pinctl |=3D PIN_MAPPABLE;
-
-=09i915_gem_ww_ctx_init(&ww, true);
-retry:
-=09ret =3D i915_gem_object_lock(obj, &ww);
-=09if (!ret && phys_cursor)
-=09=09ret =3D i915_gem_object_attach_phys(obj, alignment);
-=09else if (!ret && HAS_LMEM(dev_priv))
-=09=09ret =3D i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM);
-=09/* TODO: Do we need to sync when migration becomes async? */
-=09if (!ret)
-=09=09ret =3D i915_gem_object_pin_pages(obj);
-=09if (ret)
-=09=09goto err;
-
-=09if (!ret) {
-=09=09vma =3D i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
-=09=09=09=09=09=09=09   view, pinctl);
-=09=09if (IS_ERR(vma)) {
-=09=09=09ret =3D PTR_ERR(vma);
-=09=09=09goto err_unpin;
-=09=09}
-=09}
-
-=09if (uses_fence && i915_vma_is_map_and_fenceable(vma)) {
-=09=09/*
-=09=09 * Install a fence for tiled scan-out. Pre-i965 always needs a
-=09=09 * fence, whereas 965+ only requires a fence if using
-=09=09 * framebuffer compression.  For simplicity, we always, when
-=09=09 * possible, install a fence as the cost is not that onerous.
-=09=09 *
-=09=09 * If we fail to fence the tiled scanout, then either the
-=09=09 * modeset will reject the change (which is highly unlikely as
-=09=09 * the affected systems, all but one, do not have unmappable
-=09=09 * space) or we will not be able to enable full powersaving
-=09=09 * techniques (also likely not to apply due to various limits
-=09=09 * FBC and the like impose on the size of the buffer, which
-=09=09 * presumably we violated anyway with this unmappable buffer).
-=09=09 * Anyway, it is presumably better to stumble onwards with
-=09=09 * something and try to run the system in a "less than optimal"
-=09=09 * mode that matches the user configuration.
-=09=09 */
-=09=09ret =3D i915_vma_pin_fence(vma);
-=09=09if (ret !=3D 0 && DISPLAY_VER(dev_priv) < 4) {
-=09=09=09i915_vma_unpin(vma);
-=09=09=09goto err_unpin;
-=09=09}
-=09=09ret =3D 0;
-
-=09=09if (vma->fence)
-=09=09=09*out_flags |=3D PLANE_HAS_FENCE;
-=09}
-
-=09i915_vma_get(vma);
-
-err_unpin:
-=09i915_gem_object_unpin_pages(obj);
-err:
-=09if (ret =3D=3D -EDEADLK) {
-=09=09ret =3D i915_gem_ww_ctx_backoff(&ww);
-=09=09if (!ret)
-=09=09=09goto retry;
-=09}
-=09i915_gem_ww_ctx_fini(&ww);
-=09if (ret)
-=09=09vma =3D ERR_PTR(ret);
-
-=09atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
-=09intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
-=09return vma;
-}
-
-void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
-{
-=09if (flags & PLANE_HAS_FENCE)
-=09=09i915_vma_unpin_fence(vma);
-=09i915_vma_unpin(vma);
-=09i915_vma_put(vma);
-}
-
 /*
  * Convert the x/y offsets into a linear offset.
  * Only valid with 0/180 degree rotation, which is fine since linear
@@ -10235,72 +10043,6 @@ static int intel_atomic_commit(struct drm_device *=
dev,
 =09return 0;
 }
=20
-int intel_plane_pin_fb(struct intel_plane_state *plane_state)
-{
-=09struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
-=09struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
-=09struct drm_framebuffer *fb =3D plane_state->hw.fb;
-=09struct i915_vma *vma;
-=09bool phys_cursor =3D
-=09=09plane->id =3D=3D PLANE_CURSOR &&
-=09=09INTEL_INFO(dev_priv)->display.cursor_needs_physical;
-
-=09if (!intel_fb_uses_dpt(fb)) {
-=09=09vma =3D intel_pin_and_fence_fb_obj(fb, phys_cursor,
-=09=09=09=09=09=09 &plane_state->view.gtt,
-=09=09=09=09=09=09 intel_plane_uses_fence(plane_state),
-=09=09=09=09=09=09 &plane_state->flags);
-=09=09if (IS_ERR(vma))
-=09=09=09return PTR_ERR(vma);
-
-=09=09plane_state->ggtt_vma =3D vma;
-=09} else {
-=09=09struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
-
-=09=09vma =3D intel_dpt_pin(intel_fb->dpt_vm);
-=09=09if (IS_ERR(vma))
-=09=09=09return PTR_ERR(vma);
-
-=09=09plane_state->ggtt_vma =3D vma;
-
-=09=09vma =3D intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt, false,
-=09=09=09=09=09   &plane_state->flags, intel_fb->dpt_vm);
-=09=09if (IS_ERR(vma)) {
-=09=09=09intel_dpt_unpin(intel_fb->dpt_vm);
-=09=09=09plane_state->ggtt_vma =3D NULL;
-=09=09=09return PTR_ERR(vma);
-=09=09}
-
-=09=09plane_state->dpt_vma =3D vma;
-
-=09=09WARN_ON(plane_state->ggtt_vma =3D=3D plane_state->dpt_vma);
-=09}
-
-=09return 0;
-}
-
-void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
-{
-=09struct drm_framebuffer *fb =3D old_plane_state->hw.fb;
-=09struct i915_vma *vma;
-
-=09if (!intel_fb_uses_dpt(fb)) {
-=09=09vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
-=09=09if (vma)
-=09=09=09intel_unpin_fb_vma(vma, old_plane_state->flags);
-=09} else {
-=09=09struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
-
-=09=09vma =3D fetch_and_zero(&old_plane_state->dpt_vma);
-=09=09if (vma)
-=09=09=09intel_unpin_fb_vma(vma, old_plane_state->flags);
-
-=09=09vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
-=09=09if (vma)
-=09=09=09intel_dpt_unpin(intel_fb->dpt_vm);
-=09}
-}
-
 /**
  * intel_plane_destroy - destroy a plane
  * @plane: plane to destroy
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm=
/i915/display/intel_display.h
index de9c414063d1..fe1b317aac7b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -576,12 +576,6 @@ int intel_get_load_detect_pipe(struct drm_connector *c=
onnector,
 void intel_release_load_detect_pipe(struct drm_connector *connector,
 =09=09=09=09    struct intel_load_detect_pipe *old,
 =09=09=09=09    struct drm_modeset_acquire_ctx *ctx);
-struct i915_vma *
-intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb, bool phys_cursor,
-=09=09=09   const struct i915_ggtt_view *view,
-=09=09=09   bool uses_fence,
-=09=09=09   unsigned long *out_flags);
-void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags);
 struct drm_framebuffer *
 intel_framebuffer_create(struct drm_i915_gem_object *obj,
 =09=09=09 struct drm_mode_fb_cmd2 *mode_cmd);
@@ -619,8 +613,6 @@ bool
 intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
 =09=09=09=09    u64 modifier);
=20
-int intel_plane_pin_fb(struct intel_plane_state *plane_state);
-void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
 struct intel_encoder *
 intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 =09=09=09   const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/=
i915/display/intel_fb_pin.c
new file mode 100644
index 000000000000..c5f6dd1aab80
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -0,0 +1,274 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright =C2=A9 2021 Intel Corporation
+ */
+
+/**
+ * DOC: display pinning helpers
+ */
+
+#include "display/intel_display_types.h"
+#include "display/intel_fb_pin.h"
+#include "display/intel_fb.h"
+
+#include "intel_dpt.h"
+
+#include "gem/i915_gem_object.h"
+
+static struct i915_vma *
+intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
+=09=09     const struct i915_ggtt_view *view,
+=09=09     bool uses_fence,
+=09=09     unsigned long *out_flags,
+=09=09     struct i915_address_space *vm)
+{
+=09struct drm_device *dev =3D fb->dev;
+=09struct drm_i915_private *dev_priv =3D to_i915(dev);
+=09struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
+=09struct i915_vma *vma;
+=09u32 alignment;
+=09int ret;
+
+=09if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
+=09=09return ERR_PTR(-EINVAL);
+
+=09alignment =3D 4096 * 512;
+
+=09atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
+
+=09ret =3D i915_gem_object_set_cache_level(obj, I915_CACHE_NONE);
+=09if (ret) {
+=09=09vma =3D ERR_PTR(ret);
+=09=09goto err;
+=09}
+
+=09vma =3D i915_vma_instance(obj, vm, view);
+=09if (IS_ERR(vma))
+=09=09goto err;
+
+=09if (i915_vma_misplaced(vma, 0, alignment, 0)) {
+=09=09ret =3D i915_vma_unbind(vma);
+=09=09if (ret) {
+=09=09=09vma =3D ERR_PTR(ret);
+=09=09=09goto err;
+=09=09}
+=09}
+
+=09ret =3D i915_vma_pin(vma, 0, alignment, PIN_GLOBAL);
+=09if (ret) {
+=09=09vma =3D ERR_PTR(ret);
+=09=09goto err;
+=09}
+
+=09vma->display_alignment =3D max_t(u64, vma->display_alignment, alignment=
);
+
+=09i915_gem_object_flush_if_display(obj);
+
+=09i915_vma_get(vma);
+err:
+=09atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
+
+=09return vma;
+}
+
+struct i915_vma *
+intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
+=09=09=09   bool phys_cursor,
+=09=09=09   const struct i915_ggtt_view *view,
+=09=09=09   bool uses_fence,
+=09=09=09   unsigned long *out_flags)
+{
+=09struct drm_device *dev =3D fb->dev;
+=09struct drm_i915_private *dev_priv =3D to_i915(dev);
+=09struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
+=09intel_wakeref_t wakeref;
+=09struct i915_gem_ww_ctx ww;
+=09struct i915_vma *vma;
+=09unsigned int pinctl;
+=09u32 alignment;
+=09int ret;
+
+=09if (drm_WARN_ON(dev, !i915_gem_object_is_framebuffer(obj)))
+=09=09return ERR_PTR(-EINVAL);
+
+=09if (phys_cursor)
+=09=09alignment =3D intel_cursor_alignment(dev_priv);
+=09else
+=09=09alignment =3D intel_surf_alignment(fb, 0);
+=09if (drm_WARN_ON(dev, alignment && !is_power_of_2(alignment)))
+=09=09return ERR_PTR(-EINVAL);
+
+=09/* Note that the w/a also requires 64 PTE of padding following the
+=09 * bo. We currently fill all unused PTE with the shadow page and so
+=09 * we should always have valid PTE following the scanout preventing
+=09 * the VT-d warning.
+=09 */
+=09if (intel_scanout_needs_vtd_wa(dev_priv) && alignment < 256 * 1024)
+=09=09alignment =3D 256 * 1024;
+
+=09/*
+=09 * Global gtt pte registers are special registers which actually forwar=
d
+=09 * writes to a chunk of system memory. Which means that there is no ris=
k
+=09 * that the register values disappear as soon as we call
+=09 * intel_runtime_pm_put(), so it is correct to wrap only the
+=09 * pin/unpin/fence and not more.
+=09 */
+=09wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
+
+=09atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
+
+=09/*
+=09 * Valleyview is definitely limited to scanning out the first
+=09 * 512MiB. Lets presume this behaviour was inherited from the
+=09 * g4x display engine and that all earlier gen are similarly
+=09 * limited. Testing suggests that it is a little more
+=09 * complicated than this. For example, Cherryview appears quite
+=09 * happy to scanout from anywhere within its global aperture.
+=09 */
+=09pinctl =3D 0;
+=09if (HAS_GMCH(dev_priv))
+=09=09pinctl |=3D PIN_MAPPABLE;
+
+=09i915_gem_ww_ctx_init(&ww, true);
+retry:
+=09ret =3D i915_gem_object_lock(obj, &ww);
+=09if (!ret && phys_cursor)
+=09=09ret =3D i915_gem_object_attach_phys(obj, alignment);
+=09else if (!ret && HAS_LMEM(dev_priv))
+=09=09ret =3D i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM);
+=09/* TODO: Do we need to sync when migration becomes async? */
+=09if (!ret)
+=09=09ret =3D i915_gem_object_pin_pages(obj);
+=09if (ret)
+=09=09goto err;
+
+=09if (!ret) {
+=09=09vma =3D i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
+=09=09=09=09=09=09=09   view, pinctl);
+=09=09if (IS_ERR(vma)) {
+=09=09=09ret =3D PTR_ERR(vma);
+=09=09=09goto err_unpin;
+=09=09}
+=09}
+
+=09if (uses_fence && i915_vma_is_map_and_fenceable(vma)) {
+=09=09/*
+=09=09 * Install a fence for tiled scan-out. Pre-i965 always needs a
+=09=09 * fence, whereas 965+ only requires a fence if using
+=09=09 * framebuffer compression.  For simplicity, we always, when
+=09=09 * possible, install a fence as the cost is not that onerous.
+=09=09 *
+=09=09 * If we fail to fence the tiled scanout, then either the
+=09=09 * modeset will reject the change (which is highly unlikely as
+=09=09 * the affected systems, all but one, do not have unmappable
+=09=09 * space) or we will not be able to enable full powersaving
+=09=09 * techniques (also likely not to apply due to various limits
+=09=09 * FBC and the like impose on the size of the buffer, which
+=09=09 * presumably we violated anyway with this unmappable buffer).
+=09=09 * Anyway, it is presumably better to stumble onwards with
+=09=09 * something and try to run the system in a "less than optimal"
+=09=09 * mode that matches the user configuration.
+=09=09 */
+=09=09ret =3D i915_vma_pin_fence(vma);
+=09=09if (ret !=3D 0 && DISPLAY_VER(dev_priv) < 4) {
+=09=09=09i915_vma_unpin(vma);
+=09=09=09goto err_unpin;
+=09=09}
+=09=09ret =3D 0;
+
+=09=09if (vma->fence)
+=09=09=09*out_flags |=3D PLANE_HAS_FENCE;
+=09}
+
+=09i915_vma_get(vma);
+
+err_unpin:
+=09i915_gem_object_unpin_pages(obj);
+err:
+=09if (ret =3D=3D -EDEADLK) {
+=09=09ret =3D i915_gem_ww_ctx_backoff(&ww);
+=09=09if (!ret)
+=09=09=09goto retry;
+=09}
+=09i915_gem_ww_ctx_fini(&ww);
+=09if (ret)
+=09=09vma =3D ERR_PTR(ret);
+
+=09atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
+=09intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+=09return vma;
+}
+
+void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
+{
+=09if (flags & PLANE_HAS_FENCE)
+=09=09i915_vma_unpin_fence(vma);
+=09i915_vma_unpin(vma);
+=09i915_vma_put(vma);
+}
+
+int intel_plane_pin_fb(struct intel_plane_state *plane_state)
+{
+=09struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
+=09struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
+=09struct drm_framebuffer *fb =3D plane_state->hw.fb;
+=09struct i915_vma *vma;
+=09bool phys_cursor =3D
+=09=09plane->id =3D=3D PLANE_CURSOR &&
+=09=09INTEL_INFO(dev_priv)->display.cursor_needs_physical;
+
+=09if (!intel_fb_uses_dpt(fb)) {
+=09=09vma =3D intel_pin_and_fence_fb_obj(fb, phys_cursor,
+=09=09=09=09=09=09 &plane_state->view.gtt,
+=09=09=09=09=09=09 intel_plane_uses_fence(plane_state),
+=09=09=09=09=09=09 &plane_state->flags);
+=09=09if (IS_ERR(vma))
+=09=09=09return PTR_ERR(vma);
+
+=09=09plane_state->ggtt_vma =3D vma;
+=09} else {
+=09=09struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
+
+=09=09vma =3D intel_dpt_pin(intel_fb->dpt_vm);
+=09=09if (IS_ERR(vma))
+=09=09=09return PTR_ERR(vma);
+
+=09=09plane_state->ggtt_vma =3D vma;
+
+=09=09vma =3D intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt, false,
+=09=09=09=09=09   &plane_state->flags, intel_fb->dpt_vm);
+=09=09if (IS_ERR(vma)) {
+=09=09=09intel_dpt_unpin(intel_fb->dpt_vm);
+=09=09=09plane_state->ggtt_vma =3D NULL;
+=09=09=09return PTR_ERR(vma);
+=09=09}
+
+=09=09plane_state->dpt_vma =3D vma;
+
+=09=09WARN_ON(plane_state->ggtt_vma =3D=3D plane_state->dpt_vma);
+=09}
+
+=09return 0;
+}
+
+void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
+{
+=09struct drm_framebuffer *fb =3D old_plane_state->hw.fb;
+=09struct i915_vma *vma;
+
+=09if (!intel_fb_uses_dpt(fb)) {
+=09=09vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
+=09=09if (vma)
+=09=09=09intel_unpin_fb_vma(vma, old_plane_state->flags);
+=09} else {
+=09=09struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
+
+=09=09vma =3D fetch_and_zero(&old_plane_state->dpt_vma);
+=09=09if (vma)
+=09=09=09intel_unpin_fb_vma(vma, old_plane_state->flags);
+
+=09=09vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
+=09=09if (vma)
+=09=09=09intel_dpt_unpin(intel_fb->dpt_vm);
+=09}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/=
i915/display/intel_fb_pin.h
new file mode 100644
index 000000000000..e4fcd0218d9d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright =C2=A9 2021 Intel Corporation
+ */
+
+#ifndef __INTEL_FB_PIN_H__
+#define __INTEL_FB_PIN_H__
+
+#include <linux/types.h>
+
+struct drm_framebuffer;
+struct i915_vma;
+struct intel_plane_state;
+struct i915_ggtt_view;
+
+struct i915_vma *
+intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
+=09=09=09   bool phys_cursor,
+=09=09=09   const struct i915_ggtt_view *view,
+=09=09=09   bool uses_fence,
+=09=09=09   unsigned long *out_flags);
+
+void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags);
+
+int intel_plane_pin_fb(struct intel_plane_state *plane_state);
+void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
+
+#endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i=
915/display/intel_fbdev.c
index 53484267b2a4..adc3a81be9f7 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -46,6 +46,7 @@
 #include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_fb_pin.h"
 #include "intel_fbdev.h"
 #include "intel_frontbuffer.h"
=20
--=20
2.25.4

