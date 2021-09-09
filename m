Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA42404351
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:54:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62016E437;
	Thu,  9 Sep 2021 01:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56AA16E440
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:54:04 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-464-G9BOEoaFPuqji1jTx2oU8g-1; Wed, 08 Sep 2021 21:54:01 -0400
X-MC-Unique: G9BOEoaFPuqji1jTx2oU8g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0404F80196C;
 Thu,  9 Sep 2021 01:54:01 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 721701A26A;
 Thu,  9 Sep 2021 01:53:59 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:53:14 +1000
Message-Id: <20210909015322.2988500-16-airlied@gmail.com>
In-Reply-To: <20210909015322.2988500-1-airlied@gmail.com>
References: <20210909015322.2988500-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 15/23] drm/i915: constify hotplug function
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

Use a macro to avoid mistakes, this type of macro is only used
in a couple of places.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c |  4 +--
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 drivers/gpu/drm/i915/i915_irq.c              | 28 +++++++++++++++-----
 3 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm=
/i915/display/intel_hotplug.c
index 05f76aba4f8a..3c1cec953b42 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -215,8 +215,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_p=
rivate *dev_priv)
=20
 static void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
-=09if (i915->display_irqs_enabled && i915->hotplug_funcs.hpd_irq_setup)
-=09=09i915->hotplug_funcs.hpd_irq_setup(i915);
+=09if (i915->display_irqs_enabled && i915->hotplug_funcs->hpd_irq_setup)
+=09=09i915->hotplug_funcs->hpd_irq_setup(i915);
 }
=20
 static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index bb44ef4f6356..af1960856f19 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -988,7 +988,7 @@ struct drm_i915_private {
 =09struct drm_i915_wm_disp_funcs wm_disp;
=20
 =09/* irq display functions */
-=09struct intel_hotplug_funcs hotplug_funcs;
+=09const struct intel_hotplug_funcs *hotplug_funcs;
=20
 =09/* fdi display functions */
 =09const struct intel_fdi_funcs *fdi_funcs;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_ir=
q.c
index c35065f8f429..77680bca46ee 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4345,6 +4345,20 @@ static irqreturn_t i965_irq_handler(int irq, void *a=
rg)
 =09return ret;
 }
=20
+#define HPD_FUNCS(platform)=09=09=09=09=09 \
+static const struct intel_hotplug_funcs platform##_hpd_funcs =3D { \
+=09.hpd_irq_setup =3D platform##_hpd_irq_setup,=09=09 \
+}
+
+HPD_FUNCS(i915);
+HPD_FUNCS(dg1);
+HPD_FUNCS(gen11);
+HPD_FUNCS(bxt);
+HPD_FUNCS(icp);
+HPD_FUNCS(spt);
+HPD_FUNCS(ilk);
+#undef HPD_FUNCS
+
 /**
  * intel_irq_init - initializes irq support
  * @dev_priv: i915 device instance
@@ -4395,20 +4409,20 @@ void intel_irq_init(struct drm_i915_private *dev_pr=
iv)
=20
 =09if (HAS_GMCH(dev_priv)) {
 =09=09if (I915_HAS_HOTPLUG(dev_priv))
-=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D i915_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs =3D &i915_hpd_funcs;
 =09} else {
 =09=09if (HAS_PCH_DG1(dev_priv))
-=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D dg1_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs =3D &dg1_hpd_funcs;
 =09=09else if (DISPLAY_VER(dev_priv) >=3D 11)
-=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D gen11_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs =3D &gen11_hpd_funcs;
 =09=09else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D bxt_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs =3D &bxt_hpd_funcs;
 =09=09else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
-=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D icp_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs =3D &icp_hpd_funcs;
 =09=09else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
-=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D spt_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs =3D &spt_hpd_funcs;
 =09=09else
-=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D ilk_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs =3D &ilk_hpd_funcs;
 =09}
 }
=20
--=20
2.31.1

