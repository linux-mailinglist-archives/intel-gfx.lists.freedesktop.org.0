Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 463B24031ED
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0615E6E0FC;
	Wed,  8 Sep 2021 00:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E53C6E0FC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:40:30 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-602--8zA4sshPyWZ-YSvqjEz0w-1; Tue, 07 Sep 2021 20:40:27 -0400
X-MC-Unique: -8zA4sshPyWZ-YSvqjEz0w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0376F1006C85;
 Wed,  8 Sep 2021 00:40:27 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B29CC60C7F;
 Wed,  8 Sep 2021 00:40:25 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:39 +1000
Message-Id: <20210908003944.2972024-17-airlied@gmail.com>
In-Reply-To: <20210908003944.2972024-1-airlied@gmail.com>
References: <20210908003944.2972024-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 16/21] drm/i915: constify the dpll clock vtable
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

---
 drivers/gpu/drm/i915/display/intel_display.c |  6 +--
 drivers/gpu/drm/i915/display/intel_dpll.c    | 49 ++++++++++++++++----
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 3 files changed, 45 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 0ad577aceb9d..d8a576d1435e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6768,10 +6768,10 @@ static int intel_crtc_atomic_check(struct intel_ato=
mic_state *state,
 =09=09crtc_state->update_wm_post =3D true;
=20
 =09if (mode_changed && crtc_state->hw.enable &&
-=09    dev_priv->dpll_funcs.crtc_compute_clock &&
+=09    dev_priv->dpll_funcs &&
 =09    !crtc_state->bigjoiner_slave &&
 =09    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
-=09=09ret =3D dev_priv->dpll_funcs.crtc_compute_clock(crtc_state);
+=09=09ret =3D dev_priv->dpll_funcs->crtc_compute_clock(crtc_state);
 =09=09if (ret)
 =09=09=09return ret;
 =09}
@@ -8807,7 +8807,7 @@ static void intel_modeset_clear_plls(struct intel_ato=
mic_state *state)
 =09struct intel_crtc *crtc;
 =09int i;
=20
-=09if (!dev_priv->dpll_funcs.crtc_compute_clock)
+=09if (!dev_priv->dpll_funcs)
 =09=09return;
=20
 =09for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i9=
15/display/intel_dpll.c
index 9326c7cbb05c..3df10b88e69f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1363,25 +1363,58 @@ static int i8xx_crtc_compute_clock(struct intel_crt=
c_state *crtc_state)
 =09return 0;
 }
=20
+static const struct drm_i915_dpll_funcs hsw_dpll_funcs =3D {
+=09.crtc_compute_clock =3D hsw_crtc_compute_clock
+};
+
+static const struct drm_i915_dpll_funcs ilk_dpll_funcs =3D {
+=09.crtc_compute_clock =3D ilk_crtc_compute_clock
+};
+
+static const struct drm_i915_dpll_funcs chv_dpll_funcs =3D {
+=09.crtc_compute_clock =3D chv_crtc_compute_clock
+};
+
+static const struct drm_i915_dpll_funcs vlv_dpll_funcs =3D {
+=09.crtc_compute_clock =3D vlv_crtc_compute_clock
+};
+
+static const struct drm_i915_dpll_funcs g4x_dpll_funcs =3D {
+=09.crtc_compute_clock =3D g4x_crtc_compute_clock
+};
+
+static const struct drm_i915_dpll_funcs pnv_dpll_funcs =3D {
+=09.crtc_compute_clock =3D pnv_crtc_compute_clock
+};
+
+static const struct drm_i915_dpll_funcs i9xx_dpll_funcs =3D {
+=09.crtc_compute_clock =3D i9xx_crtc_compute_clock
+};
+
+static const struct drm_i915_dpll_funcs i8xx_dpll_funcs =3D {
+=09.crtc_compute_clock =3D i8xx_crtc_compute_clock
+};
+
+
 void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
 =09if (DISPLAY_VER(dev_priv) >=3D 9 || HAS_DDI(dev_priv))
-=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D hsw_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs =3D &hsw_dpll_funcs;
 =09else if (HAS_PCH_SPLIT(dev_priv))
-=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D ilk_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs =3D &ilk_dpll_funcs;
 =09else if (IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D chv_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs =3D &chv_dpll_funcs;
 =09else if (IS_VALLEYVIEW(dev_priv))
-=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D vlv_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs =3D &vlv_dpll_funcs;
 =09else if (IS_G4X(dev_priv))
-=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D g4x_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs =3D &g4x_dpll_funcs;
 =09else if (IS_PINEVIEW(dev_priv))
-=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D pnv_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs =3D &pnv_dpll_funcs;
 =09else if (DISPLAY_VER(dev_priv) !=3D 2)
-=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D i9xx_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs =3D &i9xx_dpll_funcs;
 =09else
-=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D i8xx_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs =3D &i8xx_dpll_funcs;
 }
=20
 static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 8d14318c5708..a9563730aad5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1009,7 +1009,7 @@ struct drm_i915_private {
 =09const struct drm_i915_fdi_link_train_funcs *fdi_funcs;
=20
 =09/* display pll funcs */
-=09struct drm_i915_dpll_funcs dpll_funcs;
+=09const struct drm_i915_dpll_funcs *dpll_funcs;
=20
 =09/* Display functions */
 =09struct drm_i915_display_funcs display;
--=20
2.31.1

