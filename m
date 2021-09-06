Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B760401555
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 05:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AFB2899E6;
	Mon,  6 Sep 2021 03:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5131189A76
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 03:51:05 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-KMJNQynaN-2G0uE7O9fGOA-1; Sun, 05 Sep 2021 23:44:28 -0400
X-MC-Unique: KMJNQynaN-2G0uE7O9fGOA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E38B18BA280;
 Mon,  6 Sep 2021 03:44:27 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DCBAA5D9DE;
 Mon,  6 Sep 2021 03:44:25 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Mon,  6 Sep 2021 13:43:56 +1000
Message-Id: <20210906034356.2946530-11-airlied@gmail.com>
In-Reply-To: <20210906034356.2946530-1-airlied@gmail.com>
References: <20210906034356.2946530-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 10/10] drm/i915/display: move fbc into display
 struct
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

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  | 10 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 98 +++++++++----------
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  2 +-
 5 files changed, 57 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i9=
15/display/i9xx_plane.c
index b1439ba78f67..6627ba207c4e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -791,7 +791,7 @@ intel_primary_plane_create(struct drm_i915_private *dev=
_priv, enum pipe pipe)
=20
 =09plane->has_fbc =3D i9xx_plane_has_fbc(dev_priv, plane->i9xx_plane);
 =09if (plane->has_fbc) {
-=09=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09=09fbc->possible_framebuffer_bits |=3D plane->frontbuffer_bit;
 =09}
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers=
/gpu/drm/i915/display/intel_display_debugfs.c
index 0fe8c1ec491f..f16ef3d91d0c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -43,7 +43,7 @@ static int i915_frontbuffer_tracking(struct seq_file *m, =
void *unused)
 static int i915_fbc_status(struct seq_file *m, void *unused)
 {
 =09struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09intel_wakeref_t wakeref;
=20
 =09if (!HAS_FBC(dev_priv))
@@ -88,7 +88,7 @@ static int i915_fbc_false_color_get(void *data, u64 *val)
 =09if (DISPLAY_VER(dev_priv) < 7 || !HAS_FBC(dev_priv))
 =09=09return -ENODEV;
=20
-=09*val =3D dev_priv->fbc.false_color;
+=09*val =3D dev_priv->display.fbc.false_color;
=20
 =09return 0;
 }
@@ -101,15 +101,15 @@ static int i915_fbc_false_color_set(void *data, u64 v=
al)
 =09if (DISPLAY_VER(dev_priv) < 7 || !HAS_FBC(dev_priv))
 =09=09return -ENODEV;
=20
-=09mutex_lock(&dev_priv->fbc.lock);
+=09mutex_lock(&dev_priv->display.fbc.lock);
=20
 =09reg =3D intel_de_read(dev_priv, ILK_DPFC_CONTROL);
-=09dev_priv->fbc.false_color =3D val;
+=09dev_priv->display.fbc.false_color =3D val;
=20
 =09intel_de_write(dev_priv, ILK_DPFC_CONTROL,
 =09=09       val ? (reg | FBC_CTL_FALSE_COLOR) : (reg & ~FBC_CTL_FALSE_COL=
OR));
=20
-=09mutex_unlock(&dev_priv->fbc.lock);
+=09mutex_unlock(&dev_priv->display.fbc.lock);
 =09return 0;
 }
=20
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i91=
5/display/intel_fbc.c
index 7e52858399c9..b96b71be81d2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -99,7 +99,7 @@ static void i8xx_fbc_deactivate(struct drm_i915_private *=
dev_priv)
=20
 static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc_reg_params *params =3D &dev_priv->fbc.params;
+=09struct intel_fbc_reg_params *params =3D &dev_priv->display.fbc.params;
 =09int cfb_pitch;
 =09int i;
 =09u32 fbc_ctl;
@@ -150,8 +150,8 @@ static bool i8xx_fbc_is_active(struct drm_i915_private =
*dev_priv)
=20
 static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *i915)
 {
-=09const struct intel_fbc_reg_params *params =3D &i915->fbc.params;
-=09int limit =3D i915->fbc.limit;
+=09const struct intel_fbc_reg_params *params =3D &i915->display.fbc.params=
;
+=09int limit =3D i915->display.fbc.limit;
=20
 =09if (params->fb.format->cpp[0] =3D=3D 2)
 =09=09limit <<=3D 1;
@@ -171,7 +171,7 @@ static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *=
i915)
=20
 static void g4x_fbc_activate(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc_reg_params *params =3D &dev_priv->fbc.params;
+=09struct intel_fbc_reg_params *params =3D &dev_priv->display.fbc.params;
 =09u32 dpfc_ctl;
=20
 =09dpfc_ctl =3D DPFC_CTL_PLANE(params->crtc.i9xx_plane) | DPFC_SR_EN;
@@ -209,7 +209,7 @@ static bool g4x_fbc_is_active(struct drm_i915_private *=
dev_priv)
=20
 static void i8xx_fbc_recompress(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc_reg_params *params =3D &dev_priv->fbc.params;
+=09struct intel_fbc_reg_params *params =3D &dev_priv->display.fbc.params;
 =09enum i9xx_plane_id i9xx_plane =3D params->crtc.i9xx_plane;
=20
 =09spin_lock_irq(&dev_priv->uncore.lock);
@@ -220,7 +220,7 @@ static void i8xx_fbc_recompress(struct drm_i915_private=
 *dev_priv)
=20
 static void i965_fbc_recompress(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc_reg_params *params =3D &dev_priv->fbc.params;
+=09struct intel_fbc_reg_params *params =3D &dev_priv->display.fbc.params;
 =09enum i9xx_plane_id i9xx_plane =3D params->crtc.i9xx_plane;
=20
 =09spin_lock_irq(&dev_priv->uncore.lock);
@@ -238,7 +238,7 @@ static void snb_fbc_recompress(struct drm_i915_private =
*dev_priv)
=20
 static void intel_fbc_recompress(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09trace_intel_fbc_nuke(fbc->crtc);
=20
@@ -252,7 +252,7 @@ static void intel_fbc_recompress(struct drm_i915_privat=
e *dev_priv)
=20
 static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc_reg_params *params =3D &dev_priv->fbc.params;
+=09struct intel_fbc_reg_params *params =3D &dev_priv->display.fbc.params;
 =09u32 dpfc_ctl;
=20
 =09dpfc_ctl =3D DPFC_CTL_PLANE(params->crtc.i9xx_plane);
@@ -301,7 +301,7 @@ static bool ilk_fbc_is_active(struct drm_i915_private *=
dev_priv)
=20
 static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc_reg_params *params =3D &dev_priv->fbc.params;
+=09struct intel_fbc_reg_params *params =3D &dev_priv->display.fbc.params;
 =09u32 dpfc_ctl;
=20
 =09/* Display WA #0529: skl, kbl, bxt. */
@@ -334,7 +334,7 @@ static void gen7_fbc_activate(struct drm_i915_private *=
dev_priv)
 =09=09intel_de_write(dev_priv, DPFC_CPU_FENCE_OFFSET, 0);
 =09}
=20
-=09if (dev_priv->fbc.false_color)
+=09if (dev_priv->display.fbc.false_color)
 =09=09dpfc_ctl |=3D FBC_CTL_FALSE_COLOR;
=20
 =09intel_de_write(dev_priv, ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);
@@ -352,7 +352,7 @@ static bool intel_fbc_hw_is_active(struct drm_i915_priv=
ate *dev_priv)
=20
 static void intel_fbc_hw_activate(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09trace_intel_fbc_activate(fbc->crtc);
=20
@@ -371,7 +371,7 @@ static void intel_fbc_hw_activate(struct drm_i915_priva=
te *dev_priv)
=20
 static void intel_fbc_hw_deactivate(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09trace_intel_fbc_deactivate(fbc->crtc);
=20
@@ -396,7 +396,7 @@ static void intel_fbc_hw_deactivate(struct drm_i915_pri=
vate *dev_priv)
  */
 bool intel_fbc_is_active(struct drm_i915_private *dev_priv)
 {
-=09return dev_priv->fbc.active;
+=09return dev_priv->display.fbc.active;
 }
=20
 static void intel_fbc_activate(struct drm_i915_private *dev_priv)
@@ -408,7 +408,7 @@ static void intel_fbc_activate(struct drm_i915_private =
*dev_priv)
 static void intel_fbc_deactivate(struct drm_i915_private *dev_priv,
 =09=09=09=09 const char *reason)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
=20
@@ -464,7 +464,7 @@ static int find_compression_limit(struct drm_i915_priva=
te *dev_priv,
 =09=09=09=09  unsigned int size,
 =09=09=09=09  unsigned int fb_cpp)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09u64 end =3D intel_fbc_stolen_end(dev_priv);
 =09int ret, limit =3D 1;
=20
@@ -487,7 +487,7 @@ static int find_compression_limit(struct drm_i915_priva=
te *dev_priv,
 static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 =09=09=09       unsigned int size, unsigned int fb_cpp)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09int ret;
=20
 =09drm_WARN_ON(&dev_priv->drm,
@@ -529,7 +529,7 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private =
*dev_priv,
=20
 static void intel_fbc_program_cfb(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 5) {
 =09=09intel_de_write(dev_priv, ILK_DPFC_CB_BASE,
@@ -554,7 +554,7 @@ static void intel_fbc_program_cfb(struct drm_i915_priva=
te *dev_priv)
=20
 static void __intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09if (WARN_ON(intel_fbc_hw_is_active(dev_priv)))
 =09=09return;
@@ -567,7 +567,7 @@ static void __intel_fbc_cleanup_cfb(struct drm_i915_pri=
vate *dev_priv)
=20
 void intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09if (!HAS_FBC(dev_priv))
 =09=09return;
@@ -648,7 +648,7 @@ static bool rotation_is_valid(struct drm_i915_private *=
dev_priv,
 static bool intel_fbc_hw_tracking_covers_screen(struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09unsigned int effective_w, effective_h, max_w, max_h;
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 10) {
@@ -692,7 +692,7 @@ static void intel_fbc_update_state_cache(struct intel_c=
rtc *crtc,
 =09=09=09=09=09 const struct intel_plane_state *plane_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
 =09struct drm_framebuffer *fb =3D plane_state->hw.fb;
=20
@@ -744,7 +744,7 @@ static void intel_fbc_update_state_cache(struct intel_c=
rtc *crtc,
=20
 static bool intel_fbc_cfb_size_changed(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09return intel_fbc_calculate_cfb_size(dev_priv, &fbc->state_cache) >
 =09=09fbc->compressed_fb.size * fbc->limit;
@@ -752,7 +752,7 @@ static bool intel_fbc_cfb_size_changed(struct drm_i915_=
private *dev_priv)
=20
 static u16 intel_fbc_override_cfb_stride(struct drm_i915_private *dev_priv=
)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
=20
 =09if ((DISPLAY_VER(dev_priv) =3D=3D 9) &&
@@ -764,14 +764,14 @@ static u16 intel_fbc_override_cfb_stride(struct drm_i=
915_private *dev_priv)
=20
 static bool intel_fbc_override_cfb_stride_changed(struct drm_i915_private =
*dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09return fbc->params.override_cfb_stride !=3D intel_fbc_override_cfb_stri=
de(dev_priv);
 }
=20
 static bool intel_fbc_can_enable(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09if (intel_vgpu_active(dev_priv)) {
 =09=09fbc->no_fbc_reason =3D "VGPU is active";
@@ -794,7 +794,7 @@ static bool intel_fbc_can_enable(struct drm_i915_privat=
e *dev_priv)
 static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
=20
 =09if (!intel_fbc_can_enable(dev_priv))
@@ -929,7 +929,7 @@ static void intel_fbc_get_reg_params(struct intel_crtc =
*crtc,
 =09=09=09=09     struct intel_fbc_reg_params *params)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
=20
 =09/* Since all our fields are integer types, use memset here so the
@@ -960,7 +960,7 @@ static bool intel_fbc_can_flip_nuke(const struct intel_=
crtc_state *crtc_state)
 {
 =09struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
-=09const struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09const struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09const struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
 =09const struct intel_fbc_reg_params *params =3D &fbc->params;
=20
@@ -1000,7 +1000,7 @@ bool intel_fbc_pre_update(struct intel_atomic_state *=
state,
 =09const struct intel_plane_state *plane_state =3D
 =09=09intel_atomic_get_new_plane_state(state, plane);
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09const char *reason =3D "update pending";
 =09bool need_vblank_wait =3D false;
=20
@@ -1051,7 +1051,7 @@ bool intel_fbc_pre_update(struct intel_atomic_state *=
state,
  */
 static void __intel_fbc_disable(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09struct intel_crtc *crtc =3D fbc->crtc;
=20
 =09drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
@@ -1069,7 +1069,7 @@ static void __intel_fbc_disable(struct drm_i915_priva=
te *dev_priv)
 static void __intel_fbc_post_update(struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
=20
@@ -1103,7 +1103,7 @@ void intel_fbc_post_update(struct intel_atomic_state =
*state,
 =09struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
 =09const struct intel_plane_state *plane_state =3D
 =09=09intel_atomic_get_new_plane_state(state, plane);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09if (!plane->has_fbc || !plane_state)
 =09=09return;
@@ -1125,7 +1125,7 @@ void intel_fbc_invalidate(struct drm_i915_private *de=
v_priv,
 =09=09=09  unsigned int frontbuffer_bits,
 =09=09=09  enum fb_op_origin origin)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09if (!HAS_FBC(dev_priv))
 =09=09return;
@@ -1146,7 +1146,7 @@ void intel_fbc_invalidate(struct drm_i915_private *de=
v_priv,
 void intel_fbc_flush(struct drm_i915_private *dev_priv,
 =09=09     unsigned int frontbuffer_bits, enum fb_op_origin origin)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09if (!HAS_FBC(dev_priv))
 =09=09return;
@@ -1180,12 +1180,12 @@ void intel_fbc_flush(struct drm_i915_private *dev_p=
riv,
  * true.
  *
  * Later, intel_fbc_enable is going to look for state->enable_fbc and then=
 maybe
- * enable FBC for the chosen CRTC. If it does, it will set dev_priv->fbc.c=
rtc.
+ * enable FBC for the chosen CRTC. If it does, it will set dev_priv->displ=
ay.fbc.crtc.
  */
 void intel_fbc_choose_crtc(struct drm_i915_private *dev_priv,
 =09=09=09   struct intel_atomic_state *state)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09struct intel_plane *plane;
 =09struct intel_plane_state *plane_state;
 =09bool crtc_chosen =3D false;
@@ -1248,7 +1248,7 @@ static void intel_fbc_enable(struct intel_atomic_stat=
e *state,
 =09=09intel_atomic_get_new_crtc_state(state, crtc);
 =09const struct intel_plane_state *plane_state =3D
 =09=09intel_atomic_get_new_plane_state(state, plane);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
 =09struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
=20
 =09if (!plane->has_fbc || !plane_state)
@@ -1304,7 +1304,7 @@ void intel_fbc_disable(struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
 =09struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09if (!plane->has_fbc)
 =09=09return;
@@ -1345,7 +1345,7 @@ void intel_fbc_update(struct intel_atomic_state *stat=
e,
  */
 void intel_fbc_global_disable(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09if (!HAS_FBC(dev_priv))
 =09=09return;
@@ -1361,8 +1361,8 @@ void intel_fbc_global_disable(struct drm_i915_private=
 *dev_priv)
 static void intel_fbc_underrun_work_fn(struct work_struct *work)
 {
 =09struct drm_i915_private *dev_priv =3D
-=09=09container_of(work, struct drm_i915_private, fbc.underrun_work);
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09=09container_of(work, struct drm_i915_private, display.fbc.underrun_wor=
k);
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09mutex_lock(&fbc->lock);
=20
@@ -1389,20 +1389,20 @@ int intel_fbc_reset_underrun(struct drm_i915_privat=
e *dev_priv)
 {
 =09int ret;
=20
-=09cancel_work_sync(&dev_priv->fbc.underrun_work);
+=09cancel_work_sync(&dev_priv->display.fbc.underrun_work);
=20
-=09ret =3D mutex_lock_interruptible(&dev_priv->fbc.lock);
+=09ret =3D mutex_lock_interruptible(&dev_priv->display.fbc.lock);
 =09if (ret)
 =09=09return ret;
=20
-=09if (dev_priv->fbc.underrun_detected) {
+=09if (dev_priv->display.fbc.underrun_detected) {
 =09=09drm_dbg_kms(&dev_priv->drm,
 =09=09=09    "Re-allowing FBC after fifo underrun\n");
-=09=09dev_priv->fbc.no_fbc_reason =3D "FIFO underrun cleared";
+=09=09dev_priv->display.fbc.no_fbc_reason =3D "FIFO underrun cleared";
 =09}
=20
-=09dev_priv->fbc.underrun_detected =3D false;
-=09mutex_unlock(&dev_priv->fbc.lock);
+=09dev_priv->display.fbc.underrun_detected =3D false;
+=09mutex_unlock(&dev_priv->display.fbc.lock);
=20
 =09return 0;
 }
@@ -1423,7 +1423,7 @@ int intel_fbc_reset_underrun(struct drm_i915_private =
*dev_priv)
  */
 void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09if (!HAS_FBC(dev_priv))
 =09=09return;
@@ -1484,7 +1484,7 @@ static bool need_fbc_vtd_wa(struct drm_i915_private *=
dev_priv)
  */
 void intel_fbc_init(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
 =09mutex_init(&fbc->lock);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/g=
pu/drm/i915/display/skl_universal_plane.c
index 724e7b04f3b6..a9c7fe4bcab7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2067,7 +2067,7 @@ skl_universal_plane_create(struct drm_i915_private *d=
ev_priv,
=20
 =09plane->has_fbc =3D skl_plane_has_fbc(dev_priv, pipe, plane_id);
 =09if (plane->has_fbc) {
-=09=09struct intel_fbc *fbc =3D &dev_priv->fbc;
+=09=09struct intel_fbc *fbc =3D &dev_priv->display.fbc;
=20
 =09=09fbc->possible_framebuffer_bits |=3D plane->frontbuffer_bit;
 =09}
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index daa289a0efab..e5dba4e7f636 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -868,6 +868,7 @@ struct drm_i915_display {
=20
 =09struct intel_dmc dmc;
 =09struct i915_drrs drrs;
+=09struct intel_fbc fbc;
 };
=20
 struct drm_i915_private {
@@ -941,7 +942,6 @@ struct drm_i915_private {
 =09u32 pipestat_irq_mask[I915_MAX_PIPES];
=20
 =09struct i915_hotplug hotplug;
-=09struct intel_fbc fbc;
 =09struct intel_opregion opregion;
 =09struct intel_vbt_data vbt;
=20
--=20
2.31.1

