Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E14E24042AA
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022B96E424;
	Thu,  9 Sep 2021 01:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA336E424
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:11:53 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-Xr7Ir5zZNvWKuj_tuXK6-g-1; Wed, 08 Sep 2021 21:11:49 -0400
X-MC-Unique: Xr7Ir5zZNvWKuj_tuXK6-g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2293E18414A0;
 Thu,  9 Sep 2021 01:11:48 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 909D11972E;
 Thu,  9 Sep 2021 01:11:46 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:10:58 +1000
Message-Id: <20210909011100.2987971-22-airlied@gmail.com>
In-Reply-To: <20210909011100.2987971-1-airlied@gmail.com>
References: <20210909011100.2987971-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 21/23] drm/i915: constify display function vtable
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

Make nice clear tables instead of having things in two places.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 81 ++++++++++++--------
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 2 files changed, 52 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 2e672b988343..8b9727d84435 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3789,7 +3789,7 @@ static void intel_crtc_disable_noatomic(struct intel_=
crtc *crtc,
=20
 =09drm_WARN_ON(&dev_priv->drm, IS_ERR(temp_crtc_state) || ret);
=20
-=09dev_priv->display.crtc_disable(to_intel_atomic_state(state), crtc);
+=09dev_priv->display->crtc_disable(to_intel_atomic_state(state), crtc);
=20
 =09drm_atomic_state_put(state);
=20
@@ -5994,7 +5994,7 @@ static bool intel_crtc_get_pipe_config(struct intel_c=
rtc_state *crtc_state)
 =09struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
 =09struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
=20
-=09if (!i915->display.get_pipe_config(crtc, crtc_state))
+=09if (!i915->display->get_pipe_config(crtc, crtc_state))
 =09=09return false;
=20
 =09crtc_state->hw.active =3D true;
@@ -9802,7 +9802,7 @@ static void intel_enable_crtc(struct intel_atomic_sta=
te *state,
=20
 =09intel_crtc_update_active_timings(new_crtc_state);
=20
-=09dev_priv->display.crtc_enable(state, crtc);
+=09dev_priv->display->crtc_enable(state, crtc);
=20
 =09if (new_crtc_state->bigjoiner_slave)
 =09=09return;
@@ -9890,7 +9890,7 @@ static void intel_old_crtc_state_disables(struct inte=
l_atomic_state *state,
 =09 */
 =09intel_crtc_disable_pipe_crc(crtc);
=20
-=09dev_priv->display.crtc_disable(state, crtc);
+=09dev_priv->display->crtc_disable(state, crtc);
 =09crtc->active =3D false;
 =09intel_fbc_disable(crtc);
 =09intel_disable_shared_dpll(old_crtc_state);
@@ -10269,7 +10269,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
 =09}
=20
 =09/* Now enable the clocks, plane, pipe, and connectors that we set up. *=
/
-=09dev_priv->display.commit_modeset_enables(state);
+=09dev_priv->display->commit_modeset_enables(state);
=20
 =09if (state->modeset) {
 =09=09intel_encoders_update_complete(state);
@@ -11272,6 +11272,46 @@ static const struct drm_mode_config_funcs intel_mo=
de_funcs =3D {
 =09.atomic_state_free =3D intel_atomic_state_free,
 };
=20
+static const struct drm_i915_display_funcs skl_display_funcs =3D {
+=09.get_pipe_config =3D hsw_get_pipe_config,
+=09.crtc_enable =3D hsw_crtc_enable,
+=09.crtc_disable =3D hsw_crtc_disable,
+=09.commit_modeset_enables =3D skl_commit_modeset_enables,
+=09.get_initial_plane_config =3D skl_get_initial_plane_config,
+};
+
+static const struct drm_i915_display_funcs ddi_display_funcs =3D {
+=09.get_pipe_config =3D hsw_get_pipe_config,
+=09.crtc_enable =3D hsw_crtc_enable,
+=09.crtc_disable =3D hsw_crtc_disable,
+=09.commit_modeset_enables =3D intel_commit_modeset_enables,
+=09.get_initial_plane_config =3D i9xx_get_initial_plane_config,
+};
+
+static const struct drm_i915_display_funcs pch_split_display_funcs =3D {
+=09.get_pipe_config =3D ilk_get_pipe_config,
+=09.crtc_enable =3D ilk_crtc_enable,
+=09.crtc_disable =3D ilk_crtc_disable,
+=09.commit_modeset_enables =3D intel_commit_modeset_enables,
+=09.get_initial_plane_config =3D i9xx_get_initial_plane_config,
+};
+
+static const struct drm_i915_display_funcs vlv_display_funcs =3D {
+=09.get_pipe_config =3D i9xx_get_pipe_config,
+=09.crtc_enable =3D valleyview_crtc_enable,
+=09.crtc_disable =3D i9xx_crtc_disable,
+=09.commit_modeset_enables =3D intel_commit_modeset_enables,
+=09.get_initial_plane_config =3D i9xx_get_initial_plane_config,
+};
+
+static const struct drm_i915_display_funcs i9xx_display_funcs =3D {
+=09.get_pipe_config =3D i9xx_get_pipe_config,
+=09.crtc_enable =3D i9xx_crtc_enable,
+=09.crtc_disable =3D i9xx_crtc_disable,
+=09.commit_modeset_enables =3D intel_commit_modeset_enables,
+=09.get_initial_plane_config =3D i9xx_get_initial_plane_config,
+};
+
 /**
  * intel_init_display_hooks - initialize the display modesetting hooks
  * @dev_priv: device private
@@ -11287,38 +11327,19 @@ void intel_init_display_hooks(struct drm_i915_pri=
vate *dev_priv)
 =09intel_dpll_init_clock_hook(dev_priv);
=20
 =09if (DISPLAY_VER(dev_priv) >=3D 9) {
-=09=09dev_priv->display.get_pipe_config =3D hsw_get_pipe_config;
-=09=09dev_priv->display.crtc_enable =3D hsw_crtc_enable;
-=09=09dev_priv->display.crtc_disable =3D hsw_crtc_disable;
+=09=09dev_priv->display =3D &skl_display_funcs;
 =09} else if (HAS_DDI(dev_priv)) {
-=09=09dev_priv->display.get_pipe_config =3D hsw_get_pipe_config;
-=09=09dev_priv->display.crtc_enable =3D hsw_crtc_enable;
-=09=09dev_priv->display.crtc_disable =3D hsw_crtc_disable;
+=09=09dev_priv->display =3D &ddi_display_funcs;
 =09} else if (HAS_PCH_SPLIT(dev_priv)) {
-=09=09dev_priv->display.get_pipe_config =3D ilk_get_pipe_config;
-=09=09dev_priv->display.crtc_enable =3D ilk_crtc_enable;
-=09=09dev_priv->display.crtc_disable =3D ilk_crtc_disable;
+=09=09dev_priv->display =3D &pch_split_display_funcs;
 =09} else if (IS_CHERRYVIEW(dev_priv) ||
 =09=09   IS_VALLEYVIEW(dev_priv)) {
-=09=09dev_priv->display.get_pipe_config =3D i9xx_get_pipe_config;
-=09=09dev_priv->display.crtc_enable =3D valleyview_crtc_enable;
-=09=09dev_priv->display.crtc_disable =3D i9xx_crtc_disable;
+=09=09dev_priv->display =3D &vlv_display_funcs;
 =09} else {
-=09=09dev_priv->display.get_pipe_config =3D i9xx_get_pipe_config;
-=09=09dev_priv->display.crtc_enable =3D i9xx_crtc_enable;
-=09=09dev_priv->display.crtc_disable =3D i9xx_crtc_disable;
+=09=09dev_priv->display =3D &i9xx_display_funcs;
 =09}
=20
 =09intel_fdi_init_hook(dev_priv);
-
-=09if (DISPLAY_VER(dev_priv) >=3D 9) {
-=09=09dev_priv->display.commit_modeset_enables =3D skl_commit_modeset_enab=
les;
-=09=09dev_priv->display.get_initial_plane_config =3D skl_get_initial_plane=
_config;
-=09} else {
-=09=09dev_priv->display.commit_modeset_enables =3D intel_commit_modeset_en=
ables;
-=09=09dev_priv->display.get_initial_plane_config =3D i9xx_get_initial_plan=
e_config;
-=09}
-
 }
=20
 void intel_modeset_init_hw(struct drm_i915_private *i915)
@@ -11745,7 +11766,7 @@ int intel_modeset_init_nogem(struct drm_i915_privat=
e *i915)
 =09=09 * can even allow for smooth boot transitions if the BIOS
 =09=09 * fb is large enough for the active pipe configuration.
 =09=09 */
-=09=09i915->display.get_initial_plane_config(crtc, &plane_config);
+=09=09i915->display->get_initial_plane_config(crtc, &plane_config);
=20
 =09=09/*
 =09=09 * If the fb is shared between multiple heads, we'll
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 2e8e4db627e3..5bbdd3b06e6d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -990,7 +990,7 @@ struct drm_i915_private {
 =09const struct intel_dpll_funcs *dpll_funcs;
=20
 =09/* Display functions */
-=09struct drm_i915_display_funcs display;
+=09const struct drm_i915_display_funcs *display;
=20
 =09/* Display internal color functions */
 =09const struct intel_color_funcs *color_funcs;
--=20
2.31.1

