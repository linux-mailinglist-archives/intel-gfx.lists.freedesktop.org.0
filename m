Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4CA429C76
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 06:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DD56E4FE;
	Tue, 12 Oct 2021 04:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B6689FD3
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 04:35:33 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-1rECYxJsNnSQahB-leB8Dw-1; Tue, 12 Oct 2021 00:35:29 -0400
X-MC-Unique: 1rECYxJsNnSQahB-leB8Dw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 50F6D91277;
 Tue, 12 Oct 2021 04:35:28 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3049760C4A;
 Tue, 12 Oct 2021 04:35:27 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Tue, 12 Oct 2021 14:35:00 +1000
Message-Id: <20211012043502.1377715-7-airlied@gmail.com>
In-Reply-To: <20211012043502.1377715-1-airlied@gmail.com>
References: <20211012043502.1377715-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/display: refactor fbdev pin/unpin
 out into functions.
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

This just cleans up the calls a bit.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 64 +++++++++++++---------
 1 file changed, 38 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i=
915/display/intel_fbdev.c
index adc3a81be9f7..7ac9348d20c5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -171,6 +171,35 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
 =09return 0;
 }
=20
+static int intel_fbdev_pin_and_fence(struct drm_i915_private *dev_priv,
+=09=09=09=09     struct intel_fbdev *ifbdev,
+=09=09=09=09     void **vaddr)
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
+=09=09drm_err(&dev_priv->drm,
+=09=09=09"Failed to remap framebuffer into virtual memory\n");
+=09=09return PTR_ERR(vaddr);
+=09}
+=09return 0;
+}
+
+static void intel_fbdev_unpin(struct intel_fbdev *ifbdev)
+{
+=09if (ifbdev->vma)
+=09=09intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
+}
+
 static int intelfb_create(struct drm_fb_helper *helper,
 =09=09=09  struct drm_fb_helper_surface_size *sizes)
 {
@@ -181,13 +210,8 @@ static int intelfb_create(struct drm_fb_helper *helper=
,
 =09struct drm_i915_private *dev_priv =3D to_i915(dev);
 =09struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
 =09struct i915_ggtt *ggtt =3D &dev_priv->ggtt;
-=09const struct i915_ggtt_view view =3D {
-=09=09.type =3D I915_GGTT_VIEW_NORMAL,
-=09};
 =09intel_wakeref_t wakeref;
 =09struct fb_info *info;
-=09struct i915_vma *vma;
-=09unsigned long flags =3D 0;
 =09bool prealloc =3D false;
 =09void __iomem *vaddr;
 =09struct drm_i915_gem_object *obj;
@@ -224,10 +248,8 @@ static int intelfb_create(struct drm_fb_helper *helper=
,
 =09 * This also validates that any existing fb inherited from the
 =09 * BIOS is suitable for own access.
 =09 */
-=09vma =3D intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
-=09=09=09=09=09 &view, false, &flags);
-=09if (IS_ERR(vma)) {
-=09=09ret =3D PTR_ERR(vma);
+=09ret =3D intel_fbdev_pin_and_fence(dev_priv, ifbdev, &vaddr);
+=09if (ret) {
 =09=09goto out_unlock;
 =09}
=20
@@ -261,19 +283,12 @@ static int intelfb_create(struct drm_fb_helper *helpe=
r,
=20
 =09=09/* Our framebuffer is the entirety of fbdev's system memory */
 =09=09info->fix.smem_start =3D
-=09=09=09(unsigned long)(ggtt->gmadr.start + vma->node.start);
-=09=09info->fix.smem_len =3D vma->node.size;
+=09=09=09(unsigned long)(ggtt->gmadr.start + ifbdev->vma->node.start);
+=09=09info->fix.smem_len =3D ifbdev->vma->node.size;
 =09}
=20
-=09vaddr =3D i915_vma_pin_iomap(vma);
-=09if (IS_ERR(vaddr)) {
-=09=09drm_err(&dev_priv->drm,
-=09=09=09"Failed to remap framebuffer into virtual memory\n");
-=09=09ret =3D PTR_ERR(vaddr);
-=09=09goto out_unpin;
-=09}
 =09info->screen_base =3D vaddr;
-=09info->screen_size =3D vma->node.size;
+=09info->screen_size =3D ifbdev->vma->node.size;
=20
 =09drm_fb_helper_fill_info(info, &ifbdev->helper, sizes);
=20
@@ -281,23 +296,21 @@ static int intelfb_create(struct drm_fb_helper *helpe=
r,
 =09 * If the object is stolen however, it will be full of whatever
 =09 * garbage was left in there.
 =09 */
-=09if (!i915_gem_object_is_shmem(vma->obj) && !prealloc)
+=09if (!i915_gem_object_is_shmem(ifbdev->vma->obj) && !prealloc)
 =09=09memset_io(info->screen_base, 0, info->screen_size);
=20
 =09/* Use default scratch pixmap (info->pixmap.flags =3D FB_PIXMAP_SYSTEM)=
 */
=20
 =09drm_dbg_kms(&dev_priv->drm, "allocated %dx%d fb: 0x%08x\n",
 =09=09    ifbdev->fb->base.width, ifbdev->fb->base.height,
-=09=09    i915_ggtt_offset(vma));
-=09ifbdev->vma =3D vma;
-=09ifbdev->vma_flags =3D flags;
+=09=09    i915_ggtt_offset(ifbdev->vma));
=20
 =09intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 =09vga_switcheroo_client_fb_set(pdev, info);
 =09return 0;
=20
 out_unpin:
-=09intel_unpin_fb_vma(vma, flags);
+=09intel_fbdev_unpin(ifbdev);
 out_unlock:
 =09intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 =09return ret;
@@ -316,8 +329,7 @@ static void intel_fbdev_destroy(struct intel_fbdev *ifb=
dev)
=20
 =09drm_fb_helper_fini(&ifbdev->helper);
=20
-=09if (ifbdev->vma)
-=09=09intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
+=09intel_fbdev_unpin(ifbdev);
=20
 =09if (ifbdev->fb)
 =09=09drm_framebuffer_remove(&ifbdev->fb->base);
--=20
2.25.4

