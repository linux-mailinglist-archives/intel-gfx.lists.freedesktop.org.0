Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD43640660A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 05:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8296F6E972;
	Fri, 10 Sep 2021 03:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDD3E6E970
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 03:18:54 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-454-ehqK4D25MaidM0sWq94FDw-1; Thu, 09 Sep 2021 23:18:52 -0400
X-MC-Unique: ehqK4D25MaidM0sWq94FDw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF9BE180830B;
 Fri, 10 Sep 2021 03:18:51 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5C3C5100EBC1;
 Fri, 10 Sep 2021 03:18:50 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Fri, 10 Sep 2021 13:17:40 +1000
Message-Id: <20210910031741.3292388-25-airlied@gmail.com>
In-Reply-To: <20210910031741.3292388-1-airlied@gmail.com>
References: <20210910031741.3292388-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 24/25] drm/i915: constify clock gating init
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/i915_drv.h |  2 +-
 drivers/gpu/drm/i915/intel_pm.c | 78 +++++++++++++++++++++++----------
 2 files changed, 55 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 5bbdd3b06e6d..fc7466bbc445 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -975,7 +975,7 @@ struct drm_i915_private {
 =09struct workqueue_struct *flip_wq;
=20
 =09/* pm private clock gating functions */
-=09struct drm_i915_clock_gating_funcs clock_gating_funcs;
+=09const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
=20
 =09/* pm display functions */
 =09struct drm_i915_wm_disp_funcs wm_disp;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c
index 826216a115fd..0a5c1e3c798b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7871,7 +7871,7 @@ static void i830_init_clock_gating(struct drm_i915_pr=
ivate *dev_priv)
=20
 void intel_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-=09dev_priv->clock_gating_funcs.init_clock_gating(dev_priv);
+=09dev_priv->clock_gating_funcs->init_clock_gating(dev_priv);
 }
=20
 void intel_suspend_hw(struct drm_i915_private *dev_priv)
@@ -7886,6 +7886,36 @@ static void nop_init_clock_gating(struct drm_i915_pr=
ivate *dev_priv)
 =09=09    "No clock gating settings or workarounds applied.\n");
 }
=20
+#define CG_FUNCS(platform)=09=09=09=09=09=09\
+static const struct drm_i915_clock_gating_funcs platform##_clock_gating_fu=
ncs =3D { \
+=09.init_clock_gating =3D platform##_init_clock_gating,=09=09\
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
+#undef CG_FUNCS
+
 /**
  * intel_init_clock_gating_hooks - setup the clock gating hooks
  * @dev_priv: device private
@@ -7898,52 +7928,52 @@ static void nop_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 {
 =09if (IS_ALDERLAKE_P(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D adlp_init_clock_g=
ating;
+=09=09dev_priv->clock_gating_funcs =3D &adlp_clock_gating_funcs;
 =09else if (IS_DG1(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D dg1_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &dg1_clock_gating_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 12)
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D gen12lp_init_cloc=
k_gating;
+=09=09dev_priv->clock_gating_funcs =3D &gen12lp_clock_gating_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 11)
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D icl_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &icl_clock_gating_funcs;
 =09else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D cfl_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &cfl_clock_gating_funcs;
 =09else if (IS_SKYLAKE(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D skl_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &skl_clock_gating_funcs;
 =09else if (IS_KABYLAKE(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D kbl_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &kbl_clock_gating_funcs;
 =09else if (IS_BROXTON(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D bxt_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &bxt_clock_gating_funcs;
 =09else if (IS_GEMINILAKE(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D glk_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &glk_clock_gating_funcs;
 =09else if (IS_BROADWELL(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D bdw_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &bdw_clock_gating_funcs;
 =09else if (IS_CHERRYVIEW(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D chv_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &chv_clock_gating_funcs;
 =09else if (IS_HASWELL(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D hsw_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &hsw_clock_gating_funcs;
 =09else if (IS_IVYBRIDGE(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D ivb_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &ivb_clock_gating_funcs;
 =09else if (IS_VALLEYVIEW(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D vlv_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &vlv_clock_gating_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 6)
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D gen6_init_clock_g=
ating;
+=09=09dev_priv->clock_gating_funcs =3D &gen6_clock_gating_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 5)
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D ilk_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &ilk_clock_gating_funcs;
 =09else if (IS_G4X(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D g4x_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &g4x_clock_gating_funcs;
 =09else if (IS_I965GM(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D i965gm_init_clock=
_gating;
+=09=09dev_priv->clock_gating_funcs =3D &i965gm_clock_gating_funcs;
 =09else if (IS_I965G(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D i965g_init_clock_=
gating;
+=09=09dev_priv->clock_gating_funcs =3D &i965g_clock_gating_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 3)
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D gen3_init_clock_g=
ating;
+=09=09dev_priv->clock_gating_funcs =3D &gen3_clock_gating_funcs;
 =09else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D i85x_init_clock_g=
ating;
+=09=09dev_priv->clock_gating_funcs =3D &i85x_clock_gating_funcs;
 =09else if (GRAPHICS_VER(dev_priv) =3D=3D 2)
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D i830_init_clock_g=
ating;
+=09=09dev_priv->clock_gating_funcs =3D &i830_clock_gating_funcs;
 =09else {
 =09=09MISSING_CASE(INTEL_DEVID(dev_priv));
-=09=09dev_priv->clock_gating_funcs.init_clock_gating =3D nop_init_clock_ga=
ting;
+=09=09dev_priv->clock_gating_funcs =3D &nop_clock_gating_funcs;
 =09}
 }
=20
--=20
2.31.1

