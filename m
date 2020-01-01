Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7937712DEDE
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 13:17:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A29A89686;
	Wed,  1 Jan 2020 12:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A41FC89686
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jan 2020 12:17:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19741476-1500050 
 for multiple; Wed, 01 Jan 2020 12:17:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jan 2020 12:17:17 +0000
Message-Id: <20200101121717.662220-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20200101121717.662220-1-chris@chris-wilson.co.uk>
References: <20200101121717.662220-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Drop local vma->vm_file
 reference
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We use the global device inode, shared amongst all files, and not the
user's device filp to provide the backing storage for the mmap. The
vma->vm_file provides a redundant reference that breaks existing
expected behaviour that closing the user's device fd will release the
resources bound to it, if a mmap persists. (Even without the
vma->vm_file, the mmap will persist past the user's fd as the storage is
bound to the device, i.e. our reference is on the object not file.)

Fixes: cc662126b413 ("drm/i915: Introduce DRM_I915_GEM_MMAP_OFFSET")
Closes: https://gitlab.freedesktop.org/drm/intel/issues/919
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 905527ce2999..6486ecf5642c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -699,6 +699,7 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
 	struct drm_device *dev = priv->minor->dev;
 	struct i915_mmap_offset *mmo = NULL;
 	struct drm_gem_object *obj = NULL;
+	struct file *anon;
 
 	if (drm_dev_is_unplugged(dev))
 		return -ENODEV;
@@ -747,9 +748,22 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
 		vma->vm_flags &= ~VM_MAYWRITE;
 	}
 
+	anon = drm_file_create_anon(dev->primary, vma->vm_file->f_flags);
+	if (IS_ERR(anon)) {
+		drm_gem_object_put_unlocked(obj);
+		return PTR_ERR(anon);
+	}
+
 	vma->vm_flags |= VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;
 	vma->vm_private_data = mmo;
 
+	/*
+	 * We keep the ref on mmo->obj, not vm_file, but we require
+	 * vma->vm_file->f_mapping, see vma_link(), for later revocation.
+	 */
+	fput(vma->vm_file);
+	vma->vm_file = anon;
+
 	switch (mmo->mmap_type) {
 	case I915_MMAP_TYPE_WC:
 		vma->vm_page_prot =
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
