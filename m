Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B54340243B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E13989780;
	Tue,  7 Sep 2021 07:26:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01F58979F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:31 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-6FK5FvhZNXCwcjSy5azyAA-1; Tue, 07 Sep 2021 03:26:29 -0400
X-MC-Unique: 6FK5FvhZNXCwcjSy5azyAA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B32C10054F6;
 Tue,  7 Sep 2021 07:26:28 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 16A4F60936;
 Tue,  7 Sep 2021 07:26:26 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:41 +1000
Message-Id: <20210907072549.2962226-18-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 17/25] drm/i915/display: move fbdev info to
 display struct
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

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  4 +--
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 26 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               |  8 +++---
 3 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers=
/gpu/drm/i915/display/intel_display_debugfs.c
index 4504f5730712..1d38007106d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -201,8 +201,8 @@ static int i915_gem_framebuffer_info(struct seq_file *m=
, void *data)
 =09struct drm_framebuffer *drm_fb;
=20
 #ifdef CONFIG_DRM_FBDEV_EMULATION
-=09if (dev_priv->fbdev && dev_priv->fbdev->helper.fb) {
-=09=09fbdev_fb =3D to_intel_framebuffer(dev_priv->fbdev->helper.fb);
+=09if (dev_priv->display->fbdev && dev_priv->display->fbdev->helper.fb) {
+=09=09fbdev_fb =3D to_intel_framebuffer(dev_priv->display->fbdev->helper.f=
b);
=20
 =09=09seq_printf(m, "fbcon size: %d x %d, depth %d, %d bpp, modifier 0x%ll=
x, refcount %d, obj ",
 =09=09=09   fbdev_fb->base.width,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i=
915/display/intel_fbdev.c
index 60d3ded27047..8af2b3088af4 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -484,7 +484,7 @@ static void intel_fbdev_suspend_worker(struct work_stru=
ct *work)
 {
 =09intel_fbdev_set_suspend(&container_of(work,
 =09=09=09=09=09      struct drm_i915_private,
-=09=09=09=09=09      fbdev_suspend_work)->drm,
+=09=09=09=09=09      _display.fbdev_suspend_work)->drm,
 =09=09=09=09FBINFO_STATE_RUNNING,
 =09=09=09=09true);
 }
@@ -514,8 +514,8 @@ int intel_fbdev_init(struct drm_device *dev)
 =09=09return ret;
 =09}
=20
-=09dev_priv->fbdev =3D ifbdev;
-=09INIT_WORK(&dev_priv->fbdev_suspend_work, intel_fbdev_suspend_worker);
+=09dev_priv->display->fbdev =3D ifbdev;
+=09INIT_WORK(&dev_priv->display->fbdev_suspend_work, intel_fbdev_suspend_w=
orker);
=20
 =09return 0;
 }
@@ -532,7 +532,7 @@ static void intel_fbdev_initial_config(void *data, asyn=
c_cookie_t cookie)
=20
 void intel_fbdev_initial_config_async(struct drm_device *dev)
 {
-=09struct intel_fbdev *ifbdev =3D to_i915(dev)->fbdev;
+=09struct intel_fbdev *ifbdev =3D to_i915(dev)->display->fbdev;
=20
 =09if (!ifbdev)
 =09=09return;
@@ -552,12 +552,12 @@ static void intel_fbdev_sync(struct intel_fbdev *ifbd=
ev)
=20
 void intel_fbdev_unregister(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbdev *ifbdev =3D dev_priv->fbdev;
+=09struct intel_fbdev *ifbdev =3D dev_priv->display->fbdev;
=20
 =09if (!ifbdev)
 =09=09return;
=20
-=09cancel_work_sync(&dev_priv->fbdev_suspend_work);
+=09cancel_work_sync(&dev_priv->display->fbdev_suspend_work);
 =09if (!current_is_async())
 =09=09intel_fbdev_sync(ifbdev);
=20
@@ -566,7 +566,7 @@ void intel_fbdev_unregister(struct drm_i915_private *de=
v_priv)
=20
 void intel_fbdev_fini(struct drm_i915_private *dev_priv)
 {
-=09struct intel_fbdev *ifbdev =3D fetch_and_zero(&dev_priv->fbdev);
+=09struct intel_fbdev *ifbdev =3D fetch_and_zero(&dev_priv->display->fbdev=
);
=20
 =09if (!ifbdev)
 =09=09return;
@@ -580,7 +580,7 @@ void intel_fbdev_fini(struct drm_i915_private *dev_priv=
)
  */
 static void intel_fbdev_hpd_set_suspend(struct drm_i915_private *i915, int=
 state)
 {
-=09struct intel_fbdev *ifbdev =3D i915->fbdev;
+=09struct intel_fbdev *ifbdev =3D i915->display->fbdev;
 =09bool send_hpd =3D false;
=20
 =09mutex_lock(&ifbdev->hpd_lock);
@@ -598,7 +598,7 @@ static void intel_fbdev_hpd_set_suspend(struct drm_i915=
_private *i915, int state
 void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synch=
ronous)
 {
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
-=09struct intel_fbdev *ifbdev =3D dev_priv->fbdev;
+=09struct intel_fbdev *ifbdev =3D dev_priv->display->fbdev;
 =09struct fb_info *info;
=20
 =09if (!ifbdev || !ifbdev->vma)
@@ -615,7 +615,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, in=
t state, bool synchronous
 =09=09 * ourselves, so only flush outstanding work upon suspend!
 =09=09 */
 =09=09if (state !=3D FBINFO_STATE_RUNNING)
-=09=09=09flush_work(&dev_priv->fbdev_suspend_work);
+=09=09=09flush_work(&dev_priv->display->fbdev_suspend_work);
=20
 =09=09console_lock();
 =09} else {
@@ -629,7 +629,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, in=
t state, bool synchronous
 =09=09=09/* Don't block our own workqueue as this can
 =09=09=09 * be run in parallel with other i915.ko tasks.
 =09=09=09 */
-=09=09=09schedule_work(&dev_priv->fbdev_suspend_work);
+=09=09=09schedule_work(&dev_priv->display->fbdev_suspend_work);
 =09=09=09return;
 =09=09}
 =09}
@@ -650,7 +650,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, in=
t state, bool synchronous
=20
 void intel_fbdev_output_poll_changed(struct drm_device *dev)
 {
-=09struct intel_fbdev *ifbdev =3D to_i915(dev)->fbdev;
+=09struct intel_fbdev *ifbdev =3D to_i915(dev)->display->fbdev;
 =09bool send_hpd;
=20
 =09if (!ifbdev)
@@ -669,7 +669,7 @@ void intel_fbdev_output_poll_changed(struct drm_device =
*dev)
=20
 void intel_fbdev_restore_mode(struct drm_device *dev)
 {
-=09struct intel_fbdev *ifbdev =3D to_i915(dev)->fbdev;
+=09struct intel_fbdev *ifbdev =3D to_i915(dev)->display->fbdev;
=20
 =09if (!ifbdev)
 =09=09return;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 19be9b84cb19..5eaa06c98244 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -904,6 +904,10 @@ struct drm_i915_display {
=20
 =09/* overlay */
 =09struct intel_overlay *overlay;
+
+=09/* list of fbdev register on this device */
+=09struct intel_fbdev *fbdev;
+=09struct work_struct fbdev_suspend_work;
 };
=20
 struct drm_i915_private {
@@ -1080,10 +1084,6 @@ struct drm_i915_private {
=20
 =09struct drm_i915_gem_object *vlv_pctx;
=20
-=09/* list of fbdev register on this device */
-=09struct intel_fbdev *fbdev;
-=09struct work_struct fbdev_suspend_work;
-
 =09u32 fdi_rx_config;
=20
 =09/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
--=20
2.31.1

