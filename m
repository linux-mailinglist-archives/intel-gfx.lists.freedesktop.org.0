Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 597B9430CE6
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 01:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3930E6E83E;
	Sun, 17 Oct 2021 23:41:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF6DD6E838
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 23:41:19 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-55G-zsLhNNuhaXJAHeOVYA-1; Sun, 17 Oct 2021 19:41:15 -0400
X-MC-Unique: 55G-zsLhNNuhaXJAHeOVYA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 442138042C3;
 Sun, 17 Oct 2021 23:41:14 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 252F95D6D5;
 Sun, 17 Oct 2021 23:41:12 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Mon, 18 Oct 2021 09:41:04 +1000
Message-Id: <20211017234106.2412994-3-airlied@gmail.com>
In-Reply-To: <20211017234106.2412994-1-airlied@gmail.com>
References: <20211017234106.2412994-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display: move fbdev pin code into
 fb_pin
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

This moves the fbdev pin code over and moves the internal
interfaces to static.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 37 +++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_fb_pin.h | 15 ++++-----
 drivers/gpu/drm/i915/display/intel_fbdev.c  | 32 ------------------
 3 files changed, 41 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/=
i915/display/intel_fb_pin.c
index 3f77f3013584..0beb0aa33337 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -71,7 +71,7 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 =09return vma;
 }
=20
-struct i915_vma *
+static struct i915_vma *
 intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 =09=09=09   bool phys_cursor,
 =09=09=09   const struct i915_ggtt_view *view,
@@ -199,7 +199,8 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 =09return vma;
 }
=20
-void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
+static void
+intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
 {
 =09if (flags & PLANE_HAS_FENCE)
 =09=09i915_vma_unpin_fence(vma);
@@ -272,3 +273,35 @@ void intel_plane_unpin_fb(struct intel_plane_state *ol=
d_plane_state)
 =09=09=09intel_dpt_unpin(intel_fb->dpt_vm);
 =09}
 }
+
+void intel_fbdev_unpin(struct intel_fbdev *ifbdev)
+{
+=09if (ifbdev->vma)
+=09=09intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
+=09ifbdev->vma =3D NULL;
+=09ifbdev->vma_flags =3D 0;
+}
+
+int intel_fbdev_pin_and_fence(struct drm_i915_private *dev_priv,
+=09=09=09      struct intel_fbdev *ifbdev,
+=09=09=09      void **vaddr)
+{
+=09const struct i915_ggtt_view view =3D {
+=09=09.type =3D I915_GGTT_VIEW_NORMAL,
+=09};
+=09ifbdev->vma =3D intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
+=09=09=09=09=09=09 &view, false, &ifbdev->vma_flags);
+
+=09if (IS_ERR(ifbdev->vma)) {
+=09=09return PTR_ERR(ifbdev->vma);
+=09}
+
+=09*vaddr =3D i915_vma_pin_iomap(ifbdev->vma);
+=09if (IS_ERR(*vaddr)) {
+=09=09intel_fbdev_unpin(ifbdev);
+=09=09drm_err(&dev_priv->drm,
+=09=09=09"Failed to remap framebuffer into virtual memory\n");
+=09=09return PTR_ERR(vaddr);
+=09}
+=09return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/=
i915/display/intel_fb_pin.h
index e4fcd0218d9d..88d736264348 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -8,21 +8,18 @@
=20
 #include <linux/types.h>
=20
+struct drm_i915_private;
 struct drm_framebuffer;
+struct intel_fbdev;
 struct i915_vma;
 struct intel_plane_state;
 struct i915_ggtt_view;
=20
-struct i915_vma *
-intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
-=09=09=09   bool phys_cursor,
-=09=09=09   const struct i915_ggtt_view *view,
-=09=09=09   bool uses_fence,
-=09=09=09   unsigned long *out_flags);
-
-void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags);
-
 int intel_plane_pin_fb(struct intel_plane_state *plane_state);
 void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
=20
+int intel_fbdev_pin_and_fence(struct drm_i915_private *dev_priv,
+=09=09=09      struct intel_fbdev *ifbdev,
+=09=09=09      void **vaddr);
+void intel_fbdev_unpin(struct intel_fbdev *ifbdev);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i=
915/display/intel_fbdev.c
index c3ea9639a4ed..cee85fcc2085 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -171,38 +171,6 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
 =09return 0;
 }
=20
-static void intel_fbdev_unpin(struct intel_fbdev *ifbdev)
-{
-=09if (ifbdev->vma)
-=09=09intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
-=09ifbdev->vma =3D NULL;
-=09ifbdev->vma_flags =3D 0;
-}
-
-static int intel_fbdev_pin_and_fence(struct drm_i915_private *dev_priv,
-=09=09=09=09     struct intel_fbdev *ifbdev,
-=09=09=09=09     void **vaddr)
-{
-=09const struct i915_ggtt_view view =3D {
-=09=09.type =3D I915_GGTT_VIEW_NORMAL,
-=09};
-=09ifbdev->vma =3D intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
-=09=09=09=09=09=09 &view, false, &ifbdev->vma_flags);
-
-=09if (IS_ERR(ifbdev->vma)) {
-=09=09return PTR_ERR(ifbdev->vma);
-=09}
-
-=09*vaddr =3D i915_vma_pin_iomap(ifbdev->vma);
-=09if (IS_ERR(*vaddr)) {
-=09=09intel_fbdev_unpin(ifbdev);
-=09=09drm_err(&dev_priv->drm,
-=09=09=09"Failed to remap framebuffer into virtual memory\n");
-=09=09return PTR_ERR(vaddr);
-=09}
-=09return 0;
-}
-
 static int intelfb_create(struct drm_fb_helper *helper,
 =09=09=09  struct drm_fb_helper_surface_size *sizes)
 {
--=20
2.25.4

