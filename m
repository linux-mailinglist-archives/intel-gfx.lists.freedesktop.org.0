Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C6640429A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B176E40C;
	Thu,  9 Sep 2021 01:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3FBF6E40D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:11:22 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-R8esle06M4eIH-2MCdyJvg-1; Wed, 08 Sep 2021 21:11:18 -0400
X-MC-Unique: R8esle06M4eIH-2MCdyJvg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1FF818414A2;
 Thu,  9 Sep 2021 01:11:16 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4D83F19736;
 Thu,  9 Sep 2021 01:11:15 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:10:43 +1000
Message-Id: <20210909011100.2987971-7-airlied@gmail.com>
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
Subject: [Intel-gfx] [PATCH 06/23] drm/i915: split clock gating init from
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

This function is only used inside intel_pm.c

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/i915_drv.h |  9 ++++++-
 drivers/gpu/drm/i915/intel_pm.c | 48 ++++++++++++++++-----------------
 2 files changed, 32 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 894c883044ee..48d30b967def 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -323,6 +323,11 @@ struct intel_crtc;
 struct intel_limit;
 struct dpll;
=20
+/* functions used internal in intel_pm.c */
+struct drm_i915_clock_gating_funcs {
+=09void (*init_clock_gating)(struct drm_i915_private *dev_priv);
+};
+
 struct drm_i915_display_funcs {
 =09void (*get_cdclk)(struct drm_i915_private *dev_priv,
 =09=09=09  struct intel_cdclk_config *cdclk_config);
@@ -365,7 +370,6 @@ struct drm_i915_display_funcs {
 =09=09=09=09    const struct drm_connector_state *old_conn_state);
 =09void (*fdi_link_train)(struct intel_crtc *crtc,
 =09=09=09       const struct intel_crtc_state *crtc_state);
-=09void (*init_clock_gating)(struct drm_i915_private *dev_priv);
 =09void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
 =09/* clock updates for mode set */
 =09/* cursor updates */
@@ -954,6 +958,9 @@ struct drm_i915_private {
 =09/* unbound hipri wq for page flips/plane updates */
 =09struct workqueue_struct *flip_wq;
=20
+=09/* pm private clock gating functions */
+=09struct drm_i915_clock_gating_funcs clock_gating_funcs;
+
 =09/* Display functions */
 =09struct drm_i915_display_funcs display;
=20
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c
index 4054c6f7a2f9..add50ff01d7c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7871,7 +7871,7 @@ static void i830_init_clock_gating(struct drm_i915_pr=
ivate *dev_priv)
=20
 void intel_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-=09dev_priv->display.init_clock_gating(dev_priv);
+=09dev_priv->clock_gating_funcs.init_clock_gating(dev_priv);
 }
=20
 void intel_suspend_hw(struct drm_i915_private *dev_priv)
@@ -7898,52 +7898,52 @@ static void nop_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 {
 =09if (IS_ALDERLAKE_P(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D adlp_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D adlp_init_clock_g=
ating;
 =09else if (IS_DG1(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D dg1_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D dg1_init_clock_ga=
ting;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 12)
-=09=09dev_priv->display.init_clock_gating =3D gen12lp_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D gen12lp_init_cloc=
k_gating;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 11)
-=09=09dev_priv->display.init_clock_gating =3D icl_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D icl_init_clock_ga=
ting;
 =09else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D cfl_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D cfl_init_clock_ga=
ting;
 =09else if (IS_SKYLAKE(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D skl_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D skl_init_clock_ga=
ting;
 =09else if (IS_KABYLAKE(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D kbl_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D kbl_init_clock_ga=
ting;
 =09else if (IS_BROXTON(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D bxt_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D bxt_init_clock_ga=
ting;
 =09else if (IS_GEMINILAKE(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D glk_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D glk_init_clock_ga=
ting;
 =09else if (IS_BROADWELL(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D bdw_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D bdw_init_clock_ga=
ting;
 =09else if (IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D chv_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D chv_init_clock_ga=
ting;
 =09else if (IS_HASWELL(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D hsw_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D hsw_init_clock_ga=
ting;
 =09else if (IS_IVYBRIDGE(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D ivb_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D ivb_init_clock_ga=
ting;
 =09else if (IS_VALLEYVIEW(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D vlv_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D vlv_init_clock_ga=
ting;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 6)
-=09=09dev_priv->display.init_clock_gating =3D gen6_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D gen6_init_clock_g=
ating;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 5)
-=09=09dev_priv->display.init_clock_gating =3D ilk_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D ilk_init_clock_ga=
ting;
 =09else if (IS_G4X(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D g4x_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D g4x_init_clock_ga=
ting;
 =09else if (IS_I965GM(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D i965gm_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D i965gm_init_clock=
_gating;
 =09else if (IS_I965G(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D i965g_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D i965g_init_clock_=
gating;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 3)
-=09=09dev_priv->display.init_clock_gating =3D gen3_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D gen3_init_clock_g=
ating;
 =09else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
-=09=09dev_priv->display.init_clock_gating =3D i85x_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D i85x_init_clock_g=
ating;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 2)
-=09=09dev_priv->display.init_clock_gating =3D i830_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D i830_init_clock_g=
ating;
 =09else {
 =09=09MISSING_CASE(INTEL_DEVID(dev_priv));
-=09=09dev_priv->display.init_clock_gating =3D nop_init_clock_gating;
+=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D nop_init_clock_ga=
ting;
 =09}
 }
=20
--=20
2.31.1

