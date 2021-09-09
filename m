Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E173A4042A1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A3D6E41B;
	Thu,  9 Sep 2021 01:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39ECA6E41A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:11:34 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-604-FJFlBlVCM4m19ACWSVJiQA-1; Wed, 08 Sep 2021 21:11:31 -0400
X-MC-Unique: FJFlBlVCM4m19ACWSVJiQA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0367118414A0;
 Thu,  9 Sep 2021 01:11:31 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 72B9D1972E;
 Thu,  9 Sep 2021 01:11:29 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:10:50 +1000
Message-Id: <20210909011100.2987971-14-airlied@gmail.com>
In-Reply-To: <20210909011100.2987971-1-airlied@gmail.com>
References: <20210909011100.2987971-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 13/23] drm/i915: split the dpll clock compute
 out from display vtable.
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

this single function might be possible to merge later, but
for now it's simple to just split it out.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  6 +++---
 drivers/gpu/drm/i915/display/intel_dpll.c    | 16 ++++++++--------
 drivers/gpu/drm/i915/i915_drv.h              |  8 +++++++-
 3 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 413bc4667e47..02a9e684c86b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6821,10 +6821,10 @@ static int intel_crtc_atomic_check(struct intel_ato=
mic_state *state,
 =09=09crtc_state->update_wm_post =3D true;
=20
 =09if (mode_changed && crtc_state->hw.enable &&
-=09    dev_priv->display.crtc_compute_clock &&
+=09    dev_priv->dpll_funcs.crtc_compute_clock &&
 =09    !crtc_state->bigjoiner_slave &&
 =09    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
-=09=09ret =3D dev_priv->display.crtc_compute_clock(crtc_state);
+=09=09ret =3D dev_priv->dpll_funcs.crtc_compute_clock(crtc_state);
 =09=09if (ret)
 =09=09=09return ret;
 =09}
@@ -8851,7 +8851,7 @@ static void intel_modeset_clear_plls(struct intel_ato=
mic_state *state)
 =09struct intel_crtc *crtc;
 =09int i;
=20
-=09if (!dev_priv->display.crtc_compute_clock)
+=09if (!dev_priv->dpll_funcs.crtc_compute_clock)
 =09=09return;
=20
 =09for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i9=
15/display/intel_dpll.c
index 210f91f4a576..9326c7cbb05c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1367,21 +1367,21 @@ void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
 =09if (DISPLAY_VER(dev_priv) >=3D 9 || HAS_DDI(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D hsw_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D hsw_crtc_compute_clock;
 =09else if (HAS_PCH_SPLIT(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D ilk_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D ilk_crtc_compute_clock;
 =09else if (IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D chv_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D chv_crtc_compute_clock;
 =09else if (IS_VALLEYVIEW(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D vlv_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D vlv_crtc_compute_clock;
 =09else if (IS_G4X(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D g4x_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D g4x_crtc_compute_clock;
 =09else if (IS_PINEVIEW(dev_priv))
-=09=09dev_priv->display.crtc_compute_clock =3D pnv_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D pnv_crtc_compute_clock;
 =09else if (DISPLAY_VER(dev_priv) !=3D 2)
-=09=09dev_priv->display.crtc_compute_clock =3D i9xx_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D i9xx_crtc_compute_clock;
 =09else
-=09=09dev_priv->display.crtc_compute_clock =3D i8xx_crtc_compute_clock;
+=09=09dev_priv->dpll_funcs.crtc_compute_clock =3D i8xx_crtc_compute_clock;
 }
=20
 static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 680301bce3ab..575c46df5336 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -393,6 +393,10 @@ struct intel_fdi_funcs {
 =09=09=09       const struct intel_crtc_state *crtc_state);
 };
=20
+struct intel_dpll_funcs {
+=09int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
+};
+
 struct drm_i915_display_funcs {
 =09/* Returns the active state of the crtc, and if the crtc is active,
 =09 * fills out the pipe-config with the hw state. */
@@ -400,7 +404,6 @@ struct drm_i915_display_funcs {
 =09=09=09=09struct intel_crtc_state *);
 =09void (*get_initial_plane_config)(struct intel_crtc *,
 =09=09=09=09=09 struct intel_initial_plane_config *);
-=09int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
 =09void (*crtc_enable)(struct intel_atomic_state *state,
 =09=09=09    struct intel_crtc *crtc);
 =09void (*crtc_disable)(struct intel_atomic_state *state,
@@ -990,6 +993,9 @@ struct drm_i915_private {
 =09/* fdi display functions */
 =09struct intel_fdi_funcs fdi_funcs;
=20
+=09/* display pll funcs */
+=09struct intel_dpll_funcs dpll_funcs;
+
 =09/* Display functions */
 =09struct drm_i915_display_funcs display;
=20
--=20
2.31.1

