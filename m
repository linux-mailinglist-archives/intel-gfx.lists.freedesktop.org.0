Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FAE40434B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:54:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E915D6E43A;
	Thu,  9 Sep 2021 01:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06B4F6E437
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:53:51 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-310-gmscn-xROh6dh8hJq-Iz2Q-1; Wed, 08 Sep 2021 21:53:47 -0400
X-MC-Unique: gmscn-xROh6dh8hJq-Iz2Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9930C1006AA2;
 Thu,  9 Sep 2021 01:53:46 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1216C1A26A;
 Thu,  9 Sep 2021 01:53:44 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:53:07 +1000
Message-Id: <20210909015322.2988500-9-airlied@gmail.com>
In-Reply-To: <20210909015322.2988500-1-airlied@gmail.com>
References: <20210909015322.2988500-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 08/23] drm/i915: split color functions from
 display vtable
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
---
 drivers/gpu/drm/i915/display/intel_color.c | 64 +++++++++++-----------
 drivers/gpu/drm/i915/i915_drv.h            | 39 +++++++------
 2 files changed, 54 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i=
915/display/intel_color.c
index afcb4bf3826c..ed79075158dd 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1137,14 +1137,14 @@ void intel_color_load_luts(const struct intel_crtc_=
state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09dev_priv->display.load_luts(crtc_state);
+=09dev_priv->color_funcs.load_luts(crtc_state);
 }
=20
 void intel_color_commit(const struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09dev_priv->display.color_commit(crtc_state);
+=09dev_priv->color_funcs.color_commit(crtc_state);
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
-=09return dev_priv->display.color_check(crtc_state);
+=09return dev_priv->color_funcs.color_check(crtc_state);
 }
=20
 void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
=20
-=09if (dev_priv->display.read_luts)
-=09=09dev_priv->display.read_luts(crtc_state);
+=09if (dev_priv->color_funcs.read_luts)
+=09=09dev_priv->color_funcs.read_luts(crtc_state);
 }
=20
 static bool need_plane_update(struct intel_plane *plane,
@@ -2101,51 +2101,51 @@ void intel_color_init(struct intel_crtc *crtc)
=20
 =09if (HAS_GMCH(dev_priv)) {
 =09=09if (IS_CHERRYVIEW(dev_priv)) {
-=09=09=09dev_priv->display.color_check =3D chv_color_check;
-=09=09=09dev_priv->display.color_commit =3D i9xx_color_commit;
-=09=09=09dev_priv->display.load_luts =3D chv_load_luts;
-=09=09=09dev_priv->display.read_luts =3D chv_read_luts;
+=09=09=09dev_priv->color_funcs.color_check =3D chv_color_check;
+=09=09=09dev_priv->color_funcs.color_commit =3D i9xx_color_commit;
+=09=09=09dev_priv->color_funcs.load_luts =3D chv_load_luts;
+=09=09=09dev_priv->color_funcs.read_luts =3D chv_read_luts;
 =09=09} else if (DISPLAY_VER(dev_priv) >=3D 4) {
-=09=09=09dev_priv->display.color_check =3D i9xx_color_check;
-=09=09=09dev_priv->display.color_commit =3D i9xx_color_commit;
-=09=09=09dev_priv->display.load_luts =3D i965_load_luts;
-=09=09=09dev_priv->display.read_luts =3D i965_read_luts;
+=09=09=09dev_priv->color_funcs.color_check =3D i9xx_color_check;
+=09=09=09dev_priv->color_funcs.color_commit =3D i9xx_color_commit;
+=09=09=09dev_priv->color_funcs.load_luts =3D i965_load_luts;
+=09=09=09dev_priv->color_funcs.read_luts =3D i965_read_luts;
 =09=09} else {
-=09=09=09dev_priv->display.color_check =3D i9xx_color_check;
-=09=09=09dev_priv->display.color_commit =3D i9xx_color_commit;
-=09=09=09dev_priv->display.load_luts =3D i9xx_load_luts;
-=09=09=09dev_priv->display.read_luts =3D i9xx_read_luts;
+=09=09=09dev_priv->color_funcs.color_check =3D i9xx_color_check;
+=09=09=09dev_priv->color_funcs.color_commit =3D i9xx_color_commit;
+=09=09=09dev_priv->color_funcs.load_luts =3D i9xx_load_luts;
+=09=09=09dev_priv->color_funcs.read_luts =3D i9xx_read_luts;
 =09=09}
 =09} else {
 =09=09if (DISPLAY_VER(dev_priv) >=3D 11)
-=09=09=09dev_priv->display.color_check =3D icl_color_check;
+=09=09=09dev_priv->color_funcs.color_check =3D icl_color_check;
 =09=09else if (DISPLAY_VER(dev_priv) >=3D 10)
-=09=09=09dev_priv->display.color_check =3D glk_color_check;
+=09=09=09dev_priv->color_funcs.color_check =3D glk_color_check;
 =09=09else if (DISPLAY_VER(dev_priv) >=3D 7)
-=09=09=09dev_priv->display.color_check =3D ivb_color_check;
+=09=09=09dev_priv->color_funcs.color_check =3D ivb_color_check;
 =09=09else
-=09=09=09dev_priv->display.color_check =3D ilk_color_check;
+=09=09=09dev_priv->color_funcs.color_check =3D ilk_color_check;
=20
 =09=09if (DISPLAY_VER(dev_priv) >=3D 9)
-=09=09=09dev_priv->display.color_commit =3D skl_color_commit;
+=09=09=09dev_priv->color_funcs.color_commit =3D skl_color_commit;
 =09=09else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-=09=09=09dev_priv->display.color_commit =3D hsw_color_commit;
+=09=09=09dev_priv->color_funcs.color_commit =3D hsw_color_commit;
 =09=09else
-=09=09=09dev_priv->display.color_commit =3D ilk_color_commit;
+=09=09=09dev_priv->color_funcs.color_commit =3D ilk_color_commit;
=20
 =09=09if (DISPLAY_VER(dev_priv) >=3D 11) {
-=09=09=09dev_priv->display.load_luts =3D icl_load_luts;
-=09=09=09dev_priv->display.read_luts =3D icl_read_luts;
+=09=09=09dev_priv->color_funcs.load_luts =3D icl_load_luts;
+=09=09=09dev_priv->color_funcs.read_luts =3D icl_read_luts;
 =09=09} else if (DISPLAY_VER(dev_priv) =3D=3D 10) {
-=09=09=09dev_priv->display.load_luts =3D glk_load_luts;
-=09=09=09dev_priv->display.read_luts =3D glk_read_luts;
+=09=09=09dev_priv->color_funcs.load_luts =3D glk_load_luts;
+=09=09=09dev_priv->color_funcs.read_luts =3D glk_read_luts;
 =09=09} else if (DISPLAY_VER(dev_priv) >=3D 8) {
-=09=09=09dev_priv->display.load_luts =3D bdw_load_luts;
+=09=09=09dev_priv->color_funcs.load_luts =3D bdw_load_luts;
 =09=09} else if (DISPLAY_VER(dev_priv) >=3D 7) {
-=09=09=09dev_priv->display.load_luts =3D ivb_load_luts;
+=09=09=09dev_priv->color_funcs.load_luts =3D ivb_load_luts;
 =09=09} else {
-=09=09=09dev_priv->display.load_luts =3D ilk_load_luts;
-=09=09=09dev_priv->display.read_luts =3D ilk_read_luts;
+=09=09=09dev_priv->color_funcs.load_luts =3D ilk_load_luts;
+=09=09=09dev_priv->color_funcs.read_luts =3D ilk_read_luts;
 =09=09}
 =09}
=20
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index e70587cf8679..8930bf2db226 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -345,6 +345,25 @@ struct drm_i915_wm_disp_funcs {
 =09int (*compute_global_watermarks)(struct intel_atomic_state *state);
 };
=20
+struct intel_color_funcs {
+=09int (*color_check)(struct intel_crtc_state *crtc_state);
+=09/*
+=09 * Program double buffered color management registers during
+=09 * vblank evasion. The registers should then latch during the
+=09 * next vblank start, alongside any other double buffered registers
+=09 * involved with the same commit.
+=09 */
+=09void (*color_commit)(const struct intel_crtc_state *crtc_state);
+=09/*
+=09 * Load LUTs (and other single buffered color management
+=09 * registers). Will (hopefully) be called during the vblank
+=09 * following the latching of any double buffered registers
+=09 * involved with the same commit.
+=09 */
+=09void (*load_luts)(const struct intel_crtc_state *crtc_state);
+=09void (*read_luts)(struct intel_crtc_state *crtc_state);
+};
+
 struct drm_i915_display_funcs {
 =09void (*get_cdclk)(struct drm_i915_private *dev_priv,
 =09=09=09  struct intel_cdclk_config *cdclk_config);
@@ -381,23 +400,6 @@ struct drm_i915_display_funcs {
 =09/* render clock increase/decrease */
 =09/* display clock increase/decrease */
 =09/* pll clock increase/decrease */
-
-=09int (*color_check)(struct intel_crtc_state *crtc_state);
-=09/*
-=09 * Program double buffered color management registers during
-=09 * vblank evasion. The registers should then latch during the
-=09 * next vblank start, alongside any other double buffered registers
-=09 * involved with the same commit.
-=09 */
-=09void (*color_commit)(const struct intel_crtc_state *crtc_state);
-=09/*
-=09 * Load LUTs (and other single buffered color management
-=09 * registers). Will (hopefully) be called during the vblank
-=09 * following the latching of any double buffered registers
-=09 * involved with the same commit.
-=09 */
-=09void (*load_luts)(const struct intel_crtc_state *crtc_state);
-=09void (*read_luts)(struct intel_crtc_state *crtc_state);
 };
=20
=20
@@ -972,6 +974,9 @@ struct drm_i915_private {
 =09/* Display functions */
 =09struct drm_i915_display_funcs display;
=20
+=09/* Display internal color functions */
+=09struct intel_color_funcs color_funcs;
+
 =09/* PCH chipset type */
 =09enum intel_pch pch_type;
 =09unsigned short pch_id;
--=20
2.31.1

