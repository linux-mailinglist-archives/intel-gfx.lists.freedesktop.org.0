Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C947D4042A4
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7423E6E420;
	Thu,  9 Sep 2021 01:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE326E420
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:11:42 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-503-DY4SZdgtN7mcDNYHVKQVKw-1; Wed, 08 Sep 2021 21:11:38 -0400
X-MC-Unique: DY4SZdgtN7mcDNYHVKQVKw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EDDB801A92;
 Thu,  9 Sep 2021 01:11:37 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8DDFB1972E;
 Thu,  9 Sep 2021 01:11:35 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:10:53 +1000
Message-Id: <20210909011100.2987971-17-airlied@gmail.com>
In-Reply-To: <20210909011100.2987971-1-airlied@gmail.com>
References: <20210909011100.2987971-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 16/23] drm/i915: constify color function vtable.
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
---
 drivers/gpu/drm/i915/display/intel_color.c | 138 ++++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h            |   2 +-
 2 files changed, 93 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i=
915/display/intel_color.c
index ed79075158dd..f5923f1c38bd 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1137,14 +1137,14 @@ void intel_color_load_luts(const struct intel_crtc_=
state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09dev_priv->color_funcs.load_luts(crtc_state);
+=09dev_priv->color_funcs->load_luts(crtc_state);
 }
=20
 void intel_color_commit(const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09dev_priv->color_funcs.color_commit(crtc_state);
+=09dev_priv->color_funcs->color_commit(crtc_state);
 }
=20
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc=
_state)
@@ -1200,15 +1200,15 @@ int intel_color_check(struct intel_crtc_state *crtc=
_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09return dev_priv->color_funcs.color_check(crtc_state);
+=09return dev_priv->color_funcs->color_check(crtc_state);
 }
=20
 void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09if (dev_priv->color_funcs.read_luts)
-=09=09dev_priv->color_funcs.read_luts(crtc_state);
+=09if (dev_priv->color_funcs->read_luts)
+=09=09dev_priv->color_funcs->read_luts(crtc_state);
 }
=20
 static bool need_plane_update(struct intel_plane *plane,
@@ -2092,6 +2092,76 @@ static void icl_read_luts(struct intel_crtc_state *c=
rtc_state)
 =09}
 }
=20
+static const struct intel_color_funcs chv_color_funcs =3D {
+=09.color_check =3D chv_color_check,
+=09.color_commit =3D i9xx_color_commit,
+=09.load_luts =3D chv_load_luts,
+=09.read_luts =3D chv_read_luts,
+};
+
+static const struct intel_color_funcs i965_color_funcs =3D {
+=09.color_check =3D i9xx_color_check,
+=09.color_commit =3D i9xx_color_commit,
+=09.load_luts =3D i965_load_luts,
+=09.read_luts =3D i965_read_luts,
+};
+
+static const struct intel_color_funcs i9xx_color_funcs =3D {
+=09.color_check =3D i9xx_color_check,
+=09.color_commit =3D i9xx_color_commit,
+=09.load_luts =3D i9xx_load_luts,
+=09.read_luts =3D i9xx_read_luts,
+};
+
+static const struct intel_color_funcs icl_color_funcs =3D {
+=09.color_check =3D icl_color_check,
+=09.color_commit =3D skl_color_commit,
+=09.load_luts =3D icl_load_luts,
+=09.read_luts =3D icl_read_luts,
+};
+
+static const struct intel_color_funcs glk_color_funcs =3D {
+=09.color_check =3D glk_color_check,
+=09.color_commit =3D skl_color_commit,
+=09.load_luts =3D glk_load_luts,
+=09.read_luts =3D glk_read_luts,
+};
+
+static const struct intel_color_funcs skl_color_funcs =3D {
+=09.color_check =3D ivb_color_check,
+=09.color_commit =3D skl_color_commit,
+=09.load_luts =3D bdw_load_luts,
+=09.read_luts =3D NULL,
+};
+
+static const struct intel_color_funcs bdw_color_funcs =3D {
+=09.color_check =3D ivb_color_check,
+=09.color_commit =3D hsw_color_commit,
+=09.load_luts =3D bdw_load_luts,
+=09.read_luts =3D NULL,
+};
+
+static const struct intel_color_funcs hsw_color_funcs =3D {
+=09.color_check =3D ivb_color_check,
+=09.color_commit =3D hsw_color_commit,
+=09.load_luts =3D ivb_load_luts,
+=09.read_luts =3D NULL,
+};
+
+static const struct intel_color_funcs ivb_color_funcs =3D {
+=09.color_check =3D ivb_color_check,
+=09.color_commit =3D ilk_color_commit,
+=09.load_luts =3D ivb_load_luts,
+=09.read_luts =3D NULL,
+};
+
+static const struct intel_color_funcs ilk_color_funcs =3D {
+=09.color_check =3D ilk_color_check,
+=09.color_commit =3D ilk_color_commit,
+=09.load_luts =3D ilk_load_luts,
+=09.read_luts =3D ilk_read_luts,
+};
+
 void intel_color_init(struct intel_crtc *crtc)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
@@ -2101,52 +2171,28 @@ void intel_color_init(struct intel_crtc *crtc)
=20
 =09if (HAS_GMCH(dev_priv)) {
 =09=09if (IS_CHERRYVIEW(dev_priv)) {
-=09=09=09dev_priv->color_funcs.color_check =3D chv_color_check;
-=09=09=09dev_priv->color_funcs.color_commit =3D i9xx_color_commit;
-=09=09=09dev_priv->color_funcs.load_luts =3D chv_load_luts;
-=09=09=09dev_priv->color_funcs.read_luts =3D chv_read_luts;
+=09=09=09dev_priv->color_funcs =3D &chv_color_funcs;
 =09=09} else if (DISPLAY_VER(dev_priv) >=3D 4) {
-=09=09=09dev_priv->color_funcs.color_check =3D i9xx_color_check;
-=09=09=09dev_priv->color_funcs.color_commit =3D i9xx_color_commit;
-=09=09=09dev_priv->color_funcs.load_luts =3D i965_load_luts;
-=09=09=09dev_priv->color_funcs.read_luts =3D i965_read_luts;
+=09=09=09dev_priv->color_funcs =3D &i965_color_funcs;
 =09=09} else {
-=09=09=09dev_priv->color_funcs.color_check =3D i9xx_color_check;
-=09=09=09dev_priv->color_funcs.color_commit =3D i9xx_color_commit;
-=09=09=09dev_priv->color_funcs.load_luts =3D i9xx_load_luts;
-=09=09=09dev_priv->color_funcs.read_luts =3D i9xx_read_luts;
+=09=09=09dev_priv->color_funcs =3D &i9xx_color_funcs;
 =09=09}
 =09} else {
 =09=09if (DISPLAY_VER(dev_priv) >=3D 11)
-=09=09=09dev_priv->color_funcs.color_check =3D icl_color_check;
-=09=09else if (DISPLAY_VER(dev_priv) >=3D 10)
-=09=09=09dev_priv->color_funcs.color_check =3D glk_color_check;
-=09=09else if (DISPLAY_VER(dev_priv) >=3D 7)
-=09=09=09dev_priv->color_funcs.color_check =3D ivb_color_check;
-=09=09else
-=09=09=09dev_priv->color_funcs.color_check =3D ilk_color_check;
-
-=09=09if (DISPLAY_VER(dev_priv) >=3D 9)
-=09=09=09dev_priv->color_funcs.color_commit =3D skl_color_commit;
-=09=09else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-=09=09=09dev_priv->color_funcs.color_commit =3D hsw_color_commit;
-=09=09else
-=09=09=09dev_priv->color_funcs.color_commit =3D ilk_color_commit;
-
-=09=09if (DISPLAY_VER(dev_priv) >=3D 11) {
-=09=09=09dev_priv->color_funcs.load_luts =3D icl_load_luts;
-=09=09=09dev_priv->color_funcs.read_luts =3D icl_read_luts;
-=09=09} else if (DISPLAY_VER(dev_priv) =3D=3D 10) {
-=09=09=09dev_priv->color_funcs.load_luts =3D glk_load_luts;
-=09=09=09dev_priv->color_funcs.read_luts =3D glk_read_luts;
-=09=09} else if (DISPLAY_VER(dev_priv) >=3D 8) {
-=09=09=09dev_priv->color_funcs.load_luts =3D bdw_load_luts;
-=09=09} else if (DISPLAY_VER(dev_priv) >=3D 7) {
-=09=09=09dev_priv->color_funcs.load_luts =3D ivb_load_luts;
-=09=09} else {
-=09=09=09dev_priv->color_funcs.load_luts =3D ilk_load_luts;
-=09=09=09dev_priv->color_funcs.read_luts =3D ilk_read_luts;
-=09=09}
+=09=09=09dev_priv->color_funcs =3D &icl_color_funcs;
+=09=09else if (DISPLAY_VER(dev_priv) =3D=3D 10)
+=09=09=09dev_priv->color_funcs =3D &glk_color_funcs;
+=09=09else if (DISPLAY_VER(dev_priv) =3D=3D 9)
+=09=09=09dev_priv->color_funcs =3D &skl_color_funcs;
+=09=09else if (DISPLAY_VER(dev_priv) =3D=3D 8)
+=09=09=09dev_priv->color_funcs =3D &bdw_color_funcs;
+=09=09else if (DISPLAY_VER(dev_priv) =3D=3D 7) {
+=09=09=09if (IS_HASWELL(dev_priv))
+=09=09=09=09dev_priv->color_funcs =3D &hsw_color_funcs;
+=09=09=09else
+=09=09=09=09dev_priv->color_funcs =3D &ivb_color_funcs;
+=09=09} else
+=09=09=09dev_priv->color_funcs =3D &ilk_color_funcs;
 =09}
=20
 =09drm_crtc_enable_color_mgmt(&crtc->base,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index af1960856f19..28cd816549b8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1000,7 +1000,7 @@ struct drm_i915_private {
 =09struct drm_i915_display_funcs display;
=20
 =09/* Display internal color functions */
-=09struct intel_color_funcs color_funcs;
+=09const struct intel_color_funcs *color_funcs;
=20
 =09/* Display internal audio functions */
 =09struct intel_audio_funcs audio_funcs;
--=20
2.31.1

