Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BF44031F1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E91556E105;
	Wed,  8 Sep 2021 00:40:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 376356E105
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:40:39 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-26KXf9Z3PXeuHUn3DRuKsw-1; Tue, 07 Sep 2021 20:40:34 -0400
X-MC-Unique: 26KXf9Z3PXeuHUn3DRuKsw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F65E107ACC7;
 Wed,  8 Sep 2021 00:40:34 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CE07560CD1;
 Wed,  8 Sep 2021 00:40:32 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:43 +1000
Message-Id: <20210908003944.2972024-21-airlied@gmail.com>
In-Reply-To: <20210908003944.2972024-1-airlied@gmail.com>
References: <20210908003944.2972024-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 20/21] drm/i915: constify clock gating init
 vtable.
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

I used a macro to avoid making any really silly mistakes here.
---
 drivers/gpu/drm/i915/i915_drv.h |  2 +-
 drivers/gpu/drm/i915/intel_pm.c | 77 +++++++++++++++++++++++----------
 2 files changed, 54 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index fbcafc7cc075..44094a25a110 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -990,7 +990,7 @@ struct drm_i915_private {
 =09struct workqueue_struct *flip_wq;
=20
 =09/* pm private clock gating functions */
-=09struct drm_i915_cg_funcs cg_funcs;
+=09const struct drm_i915_cg_funcs *cg_funcs;
=20
 =09/* pm display functions */
 =09struct drm_i915_wm_disp_funcs wm_disp;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c
index 7a457646fb84..44f5582531ac 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7871,7 +7871,7 @@ static void i830_init_clock_gating(struct drm_i915_pr=
ivate *dev_priv)
=20
 void intel_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-=09dev_priv->cg_funcs.init_clock_gating(dev_priv);
+=09dev_priv->cg_funcs->init_clock_gating(dev_priv);
 }
=20
 void intel_suspend_hw(struct drm_i915_private *dev_priv)
@@ -7886,6 +7886,35 @@ static void nop_init_clock_gating(struct drm_i915_pr=
ivate *dev_priv)
 =09=09    "No clock gating settings or workarounds applied.\n");
 }
=20
+#define CG_FUNCS(platform) \
+static const struct drm_i915_cg_funcs platform##_cg_funcs =3D { \
+=09.init_clock_gating =3D platform##_init_clock_gating     \
+}
+
+CG_FUNCS(adlp);
+CG_FUNCS(dg1);
+CG_FUNCS(gen12lp);
+CG_FUNCS(icl);
+CG_FUNCS(cfl);
+CG_FUNCS(skl);
+CG_FUNCS(kbl);
+CG_FUNCS(bxt);
+CG_FUNCS(glk);
+CG_FUNCS(bdw);
+CG_FUNCS(chv);
+CG_FUNCS(hsw);
+CG_FUNCS(ivb);
+CG_FUNCS(vlv);
+CG_FUNCS(gen6);
+CG_FUNCS(ilk);
+CG_FUNCS(g4x);
+CG_FUNCS(i965gm);
+CG_FUNCS(i965g);
+CG_FUNCS(gen3);
+CG_FUNCS(i85x);
+CG_FUNCS(i830);
+CG_FUNCS(nop);
+
 /**
  * intel_init_clock_gating_hooks - setup the clock gating hooks
  * @dev_priv: device private
@@ -7898,52 +7927,52 @@ static void nop_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 {
 =09if (IS_ALDERLAKE_P(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D adlp_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &adlp_cg_funcs;
 =09else if (IS_DG1(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D dg1_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &dg1_cg_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 12)
-=09=09dev_priv->cg_funcs.init_clock_gating =3D gen12lp_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &gen12lp_cg_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 11)
-=09=09dev_priv->cg_funcs.init_clock_gating =3D icl_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &icl_cg_funcs;
 =09else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D cfl_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &cfl_cg_funcs;
 =09else if (IS_SKYLAKE(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D skl_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &skl_cg_funcs;
 =09else if (IS_KABYLAKE(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D kbl_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &kbl_cg_funcs;
 =09else if (IS_BROXTON(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D bxt_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &bxt_cg_funcs;
 =09else if (IS_GEMINILAKE(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D glk_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &glk_cg_funcs;
 =09else if (IS_BROADWELL(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D bdw_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &bdw_cg_funcs;
 =09else if (IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D chv_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &chv_cg_funcs;
 =09else if (IS_HASWELL(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D hsw_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &hsw_cg_funcs;
 =09else if (IS_IVYBRIDGE(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D ivb_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &ivb_cg_funcs;
 =09else if (IS_VALLEYVIEW(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D vlv_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &vlv_cg_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 6)
-=09=09dev_priv->cg_funcs.init_clock_gating =3D gen6_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &gen6_cg_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 5)
-=09=09dev_priv->cg_funcs.init_clock_gating =3D ilk_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &ilk_cg_funcs;
 =09else if (IS_G4X(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D g4x_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &g4x_cg_funcs;
 =09else if (IS_I965GM(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D i965gm_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &i965gm_cg_funcs;
 =09else if (IS_I965G(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D i965g_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &i965g_cg_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 3)
-=09=09dev_priv->cg_funcs.init_clock_gating =3D gen3_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &gen3_cg_funcs;
 =09else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
-=09=09dev_priv->cg_funcs.init_clock_gating =3D i85x_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &i85x_cg_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 2)
-=09=09dev_priv->cg_funcs.init_clock_gating =3D i830_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &i830_cg_funcs;
 =09else {
 =09=09MISSING_CASE(INTEL_DEVID(dev_priv));
-=09=09dev_priv->cg_funcs.init_clock_gating =3D nop_init_clock_gating;
+=09=09dev_priv->cg_funcs =3D &nop_cg_funcs;
 =09}
 }
=20
--=20
2.31.1

