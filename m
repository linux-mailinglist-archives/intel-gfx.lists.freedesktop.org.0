Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBFA40243F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C12D89C05;
	Tue,  7 Sep 2021 07:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70EC8982A
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:36 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-315-rhf_f307NAuEW8BitxyVmw-1; Tue, 07 Sep 2021 03:26:27 -0400
X-MC-Unique: rhf_f307NAuEW8BitxyVmw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 920B0107ACC7;
 Tue,  7 Sep 2021 07:26:26 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4D68F60936;
 Tue,  7 Sep 2021 07:26:24 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:40 +1000
Message-Id: <20210907072549.2962226-17-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 16/25] drm/i915/display: move overlay into
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
 drivers/gpu/drm/i915/display/intel_overlay.c | 12 ++++++------
 drivers/gpu/drm/i915/i915_drv.h              |  6 +++---
 drivers/gpu/drm/i915/i915_getparam.c         |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm=
/i915/display/intel_overlay.c
index 7e3f5c6ca484..5e8c273cf318 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -485,7 +485,7 @@ static int intel_overlay_release_old_vid(struct intel_o=
verlay *overlay)
=20
 void intel_overlay_reset(struct drm_i915_private *dev_priv)
 {
-=09struct intel_overlay *overlay =3D dev_priv->overlay;
+=09struct intel_overlay *overlay =3D dev_priv->display->overlay;
=20
 =09if (!overlay)
 =09=09return;
@@ -1106,7 +1106,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *=
dev, void *data,
 =09struct drm_i915_gem_object *new_bo;
 =09int ret;
=20
-=09overlay =3D dev_priv->overlay;
+=09overlay =3D dev_priv->display->overlay;
 =09if (!overlay) {
 =09=09drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
 =09=09return -ENODEV;
@@ -1266,7 +1266,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev,=
 void *data,
 =09struct intel_overlay *overlay;
 =09int ret;
=20
-=09overlay =3D dev_priv->overlay;
+=09overlay =3D dev_priv->display->overlay;
 =09if (!overlay) {
 =09=09drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
 =09=09return -ENODEV;
@@ -1411,7 +1411,7 @@ void intel_overlay_setup(struct drm_i915_private *dev=
_priv)
 =09update_polyphase_filter(overlay->regs);
 =09update_reg_attrs(overlay, overlay->regs);
=20
-=09dev_priv->overlay =3D overlay;
+=09dev_priv->display->overlay =3D overlay;
 =09drm_info(&dev_priv->drm, "Initialized overlay support.\n");
 =09return;
=20
@@ -1423,7 +1423,7 @@ void intel_overlay_cleanup(struct drm_i915_private *d=
ev_priv)
 {
 =09struct intel_overlay *overlay;
=20
-=09overlay =3D fetch_and_zero(&dev_priv->overlay);
+=09overlay =3D fetch_and_zero(&dev_priv->display->overlay);
 =09if (!overlay)
 =09=09return;
=20
@@ -1452,7 +1452,7 @@ struct intel_overlay_error_state {
 struct intel_overlay_error_state *
 intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
 {
-=09struct intel_overlay *overlay =3D dev_priv->overlay;
+=09struct intel_overlay *overlay =3D dev_priv->display->overlay;
 =09struct intel_overlay_error_state *error;
=20
 =09if (!overlay || !overlay->active)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 25a17808dcee..19be9b84cb19 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -901,6 +901,9 @@ struct drm_i915_display {
 =09struct mutex hdcp_comp_mutex;
=20
 =09struct i915_hotplug hotplug;
+
+=09/* overlay */
+=09struct intel_overlay *overlay;
 };
=20
 struct drm_i915_private {
@@ -979,9 +982,6 @@ struct drm_i915_private {
=20
 =09bool preserve_bios_swizzle;
=20
-=09/* overlay */
-=09struct intel_overlay *overlay;
-
 =09/* backlight registers and fields in struct intel_panel */
 =09struct mutex backlight_lock;
=20
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i9=
15_getparam.c
index 77490cb5ff9c..7ee387203a16 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -34,7 +34,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *dat=
a,
 =09=09value =3D i915->ggtt.num_fences;
 =09=09break;
 =09case I915_PARAM_HAS_OVERLAY:
-=09=09value =3D !!i915->overlay;
+=09=09value =3D !!i915->display->overlay;
 =09=09break;
 =09case I915_PARAM_HAS_BSD:
 =09=09value =3D !!intel_engine_lookup_user(i915,
--=20
2.31.1

