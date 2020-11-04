Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7232A6C5E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 19:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6E7A6E175;
	Wed,  4 Nov 2020 18:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633466E175
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 18:03:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22894368-1500050 
 for multiple; Wed, 04 Nov 2020 18:03:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Nov 2020 18:03:47 +0000
Message-Id: <20201104180347.16065-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201104180347.16065-1-chris@chris-wilson.co.uk>
References: <20201104180347.16065-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Pull phys pread/pwrite
 implementations to the backend
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

More the specialised interation with the physical GEM object from the
pread/pwrite ioctl handler into the phys backend.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_phys.c | 55 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_gem.c          | 26 -----------
 2 files changed, 55 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 28147aab47b9..3a4dfe2ef1da 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -134,6 +134,58 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 			  vaddr, dma);
 }
 
+static int
+phys_pwrite(struct drm_i915_gem_object *obj,
+	    const struct drm_i915_gem_pwrite *args)
+{
+	void *vaddr = sg_page(obj->mm.pages->sgl) + args->offset;
+	char __user *user_data = u64_to_user_ptr(args->data_ptr);
+	int err;
+
+	err = i915_gem_object_wait(obj,
+				   I915_WAIT_INTERRUPTIBLE |
+				   I915_WAIT_ALL,
+				   MAX_SCHEDULE_TIMEOUT);
+	if (err)
+		return err;
+
+	/*
+	 * We manually control the domain here and pretend that it
+	 * remains coherent i.e. in the GTT domain, like shmem_pwrite.
+	 */
+	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
+
+	if (copy_from_user(vaddr, user_data, args->size))
+		return -EFAULT;
+
+	drm_clflush_virt_range(vaddr, args->size);
+	intel_gt_chipset_flush(&to_i915(obj->base.dev)->gt);
+
+	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
+	return 0;
+}
+
+static int
+phys_pread(struct drm_i915_gem_object *obj,
+	   const struct drm_i915_gem_pread *args)
+{
+	void *vaddr = sg_page(obj->mm.pages->sgl) + args->offset;
+	char __user *user_data = u64_to_user_ptr(args->data_ptr);
+	int err;
+
+	err = i915_gem_object_wait(obj,
+				   I915_WAIT_INTERRUPTIBLE,
+				   MAX_SCHEDULE_TIMEOUT);
+	if (err)
+		return err;
+
+	drm_clflush_virt_range(vaddr, args->size);
+	if (copy_to_user(user_data, vaddr, args->size))
+		return -EFAULT;
+
+	return 0;
+}
+
 static void phys_release(struct drm_i915_gem_object *obj)
 {
 	fput(obj->base.filp);
@@ -144,6 +196,9 @@ static const struct drm_i915_gem_object_ops i915_gem_phys_ops = {
 	.get_pages = i915_gem_object_get_pages_phys,
 	.put_pages = i915_gem_object_put_pages_phys,
 
+	.pread  = phys_pread,
+	.pwrite = phys_pwrite,
+
 	.release = phys_release,
 };
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index d58fe1ddc3e1..58276694c848 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -179,30 +179,6 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 	return ret;
 }
 
-static int
-i915_gem_phys_pwrite(struct drm_i915_gem_object *obj,
-		     struct drm_i915_gem_pwrite *args,
-		     struct drm_file *file)
-{
-	void *vaddr = sg_page(obj->mm.pages->sgl) + args->offset;
-	char __user *user_data = u64_to_user_ptr(args->data_ptr);
-
-	/*
-	 * We manually control the domain here and pretend that it
-	 * remains coherent i.e. in the GTT domain, like shmem_pwrite.
-	 */
-	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
-
-	if (copy_from_user(vaddr, user_data, args->size))
-		return -EFAULT;
-
-	drm_clflush_virt_range(vaddr, args->size);
-	intel_gt_chipset_flush(&to_i915(obj->base.dev)->gt);
-
-	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
-	return 0;
-}
-
 static int
 i915_gem_create(struct drm_file *file,
 		struct intel_memory_region *mr,
@@ -872,8 +848,6 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 	if (ret == -EFAULT || ret == -ENOSPC) {
 		if (i915_gem_object_has_struct_page(obj))
 			ret = i915_gem_shmem_pwrite(obj, args);
-		else
-			ret = i915_gem_phys_pwrite(obj, args, file);
 	}
 
 	i915_gem_object_unpin_pages(obj);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
