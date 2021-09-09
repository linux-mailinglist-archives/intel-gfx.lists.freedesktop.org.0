Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA7140429E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:11:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E4C6E417;
	Thu,  9 Sep 2021 01:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 082F06E417
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 01:11:31 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-498-fGSWcQseOZW-hBjMRbsFEw-1; Wed, 08 Sep 2021 21:11:27 -0400
X-MC-Unique: fGSWcQseOZW-hBjMRbsFEw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D3A4D362F9;
 Thu,  9 Sep 2021 01:11:26 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4F9FF1972E;
 Thu,  9 Sep 2021 01:11:25 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 11:10:48 +1000
Message-Id: <20210909011100.2987971-12-airlied@gmail.com>
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
Subject: [Intel-gfx] [PATCH 11/23] drm/i915: split irq hotplug function from
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

This provide a service from irq to display, so make it separate

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c |  4 ++--
 drivers/gpu/drm/i915/i915_drv.h              |  9 ++++++++-
 drivers/gpu/drm/i915/i915_irq.c              | 14 +++++++-------
 3 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm=
/i915/display/intel_hotplug.c
index 47c85ac97c87..05f76aba4f8a 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -215,8 +215,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_p=
rivate *dev_priv)
=20
 static void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
-=09if (i915->display_irqs_enabled && i915->display.hpd_irq_setup)
-=09=09i915->display.hpd_irq_setup(i915);
+=09if (i915->display_irqs_enabled && i915->hotplug_funcs.hpd_irq_setup)
+=09=09i915->hotplug_funcs.hpd_irq_setup(i915);
 }
=20
 static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 11298f583cc0..caf854d251a6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -384,6 +384,10 @@ struct intel_cdclk_funcs {
 =09u8 (*calc_voltage_level)(int cdclk);
 };
=20
+struct intel_hotplug_funcs {
+=09void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
+};
+
 struct drm_i915_display_funcs {
 =09/* Returns the active state of the crtc, and if the crtc is active,
 =09 * fills out the pipe-config with the hw state. */
@@ -401,7 +405,7 @@ struct drm_i915_display_funcs {
=20
 =09void (*fdi_link_train)(struct intel_crtc *crtc,
 =09=09=09       const struct intel_crtc_state *crtc_state);
-=09void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
+
 =09/* clock updates for mode set */
 =09/* cursor updates */
 =09/* render clock increase/decrease */
@@ -978,6 +982,9 @@ struct drm_i915_private {
 =09/* pm display functions */
 =09struct drm_i915_wm_disp_funcs wm_disp;
=20
+=09/* irq display functions */
+=09struct intel_hotplug_funcs hotplug_funcs;
+
 =09/* Display functions */
 =09struct drm_i915_display_funcs display;
=20
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_ir=
q.c
index 0a1681384c84..c35065f8f429 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4395,20 +4395,20 @@ void intel_irq_init(struct drm_i915_private *dev_pr=
iv)
=20
 =09if (HAS_GMCH(dev_priv)) {
 =09=09if (I915_HAS_HOTPLUG(dev_priv))
-=09=09=09dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D i915_hpd_irq_setup;
 =09} else {
 =09=09if (HAS_PCH_DG1(dev_priv))
-=09=09=09dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D dg1_hpd_irq_setup;
 =09=09else if (DISPLAY_VER(dev_priv) >=3D 11)
-=09=09=09dev_priv->display.hpd_irq_setup =3D gen11_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D gen11_hpd_irq_setup;
 =09=09else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-=09=09=09dev_priv->display.hpd_irq_setup =3D bxt_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D bxt_hpd_irq_setup;
 =09=09else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
-=09=09=09dev_priv->display.hpd_irq_setup =3D icp_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D icp_hpd_irq_setup;
 =09=09else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
-=09=09=09dev_priv->display.hpd_irq_setup =3D spt_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D spt_hpd_irq_setup;
 =09=09else
-=09=09=09dev_priv->display.hpd_irq_setup =3D ilk_hpd_irq_setup;
+=09=09=09dev_priv->hotplug_funcs.hpd_irq_setup =3D ilk_hpd_irq_setup;
 =09}
 }
=20
--=20
2.31.1

