Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E61E4031EB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A9C6E0F6;
	Wed,  8 Sep 2021 00:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 145D66E0FC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:40:25 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-9KSDbitUP8Kps0NkTMRwvQ-1; Tue, 07 Sep 2021 20:40:22 -0400
X-MC-Unique: 9KSDbitUP8Kps0NkTMRwvQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A720381426F;
 Wed,  8 Sep 2021 00:40:21 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 61C5B60CD1;
 Wed,  8 Sep 2021 00:40:20 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:36 +1000
Message-Id: <20210908003944.2972024-14-airlied@gmail.com>
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
Subject: [Intel-gfx] [PATCH 13/21] drm/i915: constify irq function vtable.
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

Use a macro to avoid mistakes, this type of macro is only used
in a couple of places.
---
 drivers/gpu/drm/i915/display/intel_hotplug.c |  4 +--
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 drivers/gpu/drm/i915/i915_irq.c              | 27 +++++++++++++++-----
 3 files changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm=
/i915/display/intel_hotplug.c
index a06e1e1b33e1..97df40107213 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -215,8 +215,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_p=
rivate *dev_priv)
=20
 static void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
-=09if (i915->display_irqs_enabled && i915->irq_funcs.hpd_irq_setup)
-=09=09i915->irq_funcs.hpd_irq_setup(i915);
+=09if (i915->display_irqs_enabled && i915->irq_funcs)
+=09=09i915->irq_funcs->hpd_irq_setup(i915);
 }
=20
 static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index b3765222e717..6050bb519b18 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1003,7 +1003,7 @@ struct drm_i915_private {
 =09struct drm_i915_wm_disp_funcs wm_disp;
=20
 =09/* irq display functions */
-=09struct drm_i915_irq_funcs irq_funcs;
+=09const struct drm_i915_irq_funcs *irq_funcs;
=20
 =09/* fdi display functions */
 =09const struct drm_i915_fdi_link_train_funcs *fdi_funcs;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_ir=
q.c
index f515a3a76a8e..29231daf6057 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4345,6 +4345,19 @@ static irqreturn_t i965_irq_handler(int irq, void *a=
rg)
 =09return ret;
 }
=20
+#define HPD_FUNCS(platform)=09=09=09=09=09\
+static const struct drm_i915_irq_funcs platform##_hpd_funcs =3D { \
+=09.hpd_irq_setup =3D platform##_hpd_irq_setup=09=09\
+}
+
+HPD_FUNCS(i915);
+HPD_FUNCS(dg1);
+HPD_FUNCS(gen11);
+HPD_FUNCS(bxt);
+HPD_FUNCS(icp);
+HPD_FUNCS(spt);
+HPD_FUNCS(ilk);
+
 /**
  * intel_irq_init - initializes irq support
  * @dev_priv: i915 device instance
@@ -4395,20 +4408,20 @@ void intel_irq_init(struct drm_i915_private *dev_pr=
iv)
=20
 =09if (HAS_GMCH(dev_priv)) {
 =09=09if (I915_HAS_HOTPLUG(dev_priv))
-=09=09=09dev_priv->irq_funcs.hpd_irq_setup =3D i915_hpd_irq_setup;
+=09=09=09dev_priv->irq_funcs =3D &i915_hpd_funcs;
 =09} else {
 =09=09if (HAS_PCH_DG1(dev_priv))
-=09=09=09dev_priv->irq_funcs.hpd_irq_setup =3D dg1_hpd_irq_setup;
+=09=09=09dev_priv->irq_funcs =3D &dg1_hpd_funcs;
 =09=09else if (DISPLAY_VER(dev_priv) >=3D 11)
-=09=09=09dev_priv->irq_funcs.hpd_irq_setup =3D gen11_hpd_irq_setup;
+=09=09=09dev_priv->irq_funcs =3D &gen11_hpd_funcs;
 =09=09else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-=09=09=09dev_priv->irq_funcs.hpd_irq_setup =3D bxt_hpd_irq_setup;
+=09=09=09dev_priv->irq_funcs =3D &bxt_hpd_funcs;
 =09=09else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
-=09=09=09dev_priv->irq_funcs.hpd_irq_setup =3D icp_hpd_irq_setup;
+=09=09=09dev_priv->irq_funcs =3D &icp_hpd_funcs;
 =09=09else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
-=09=09=09dev_priv->irq_funcs.hpd_irq_setup =3D spt_hpd_irq_setup;
+=09=09=09dev_priv->irq_funcs =3D &spt_hpd_funcs;
 =09=09else
-=09=09=09dev_priv->irq_funcs.hpd_irq_setup =3D ilk_hpd_irq_setup;
+=09=09=09dev_priv->irq_funcs =3D &ilk_hpd_funcs;
 =09}
 }
=20
--=20
2.31.1

