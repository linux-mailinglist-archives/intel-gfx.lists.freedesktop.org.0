Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B3313F851
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 20:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BEF6E23D;
	Thu, 16 Jan 2020 19:18:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4614D6E23D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 19:18:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 11:18:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="214199894"
Received: from nperf12.hd.intel.com ([10.127.88.161])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2020 11:18:09 -0800
From: Brian Welty <brian.welty@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jan 2020 14:20:47 -0500
Message-Id: <20200116192047.22303-1-brian.welty@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Make use of drm_gem_object_release
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

As i915 is using drm_gem_private_object_init, it is best to
use the inverse function for cleanup: drm_gem_object_release.
This removes need for a shmem_release and phys_release.

Signed-off-by: Brian Welty <brian.welty@intel.com>
---
Chris, the cleanup sequence in drm_gem_object_release() vs the replaced
i915 code is different, but should be okay?  Light testing didn't find
any issues.
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 4 +---
 drivers/gpu/drm/i915/gem/i915_gem_phys.c   | 7 -------
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c  | 9 +--------
 3 files changed, 2 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 46bacc82ddc4..d51838d7d2ec 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -159,7 +159,6 @@ static void __i915_gem_free_object_rcu(struct rcu_head *head)
 		container_of(head, typeof(*obj), rcu);
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
-	dma_resv_fini(&obj->base._resv);
 	i915_gem_object_free(obj);
 
 	GEM_BUG_ON(!atomic_read(&i915->mm.free_count));
@@ -222,8 +221,7 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
 		if (obj->base.import_attach)
 			drm_prime_gem_destroy(&obj->base, NULL);
 
-		drm_gem_free_mmap_offset(&obj->base);
-
+		drm_gem_object_release(&obj->base);
 		if (obj->ops->release)
 			obj->ops->release(obj);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index b1b7c1b3038a..7c19f92f256b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -134,16 +134,9 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 	drm_pci_free(obj->base.dev, obj->phys_handle);
 }
 
-static void phys_release(struct drm_i915_gem_object *obj)
-{
-	fput(obj->base.filp);
-}
-
 static const struct drm_i915_gem_object_ops i915_gem_phys_ops = {
 	.get_pages = i915_gem_object_get_pages_phys,
 	.put_pages = i915_gem_object_put_pages_phys,
-
-	.release = phys_release,
 };
 
 int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index a2a980d9d241..4004cfe1e28a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -418,13 +418,6 @@ shmem_pwrite(struct drm_i915_gem_object *obj,
 	return 0;
 }
 
-static void shmem_release(struct drm_i915_gem_object *obj)
-{
-	i915_gem_object_release_memory_region(obj);
-
-	fput(obj->base.filp);
-}
-
 const struct drm_i915_gem_object_ops i915_gem_shmem_ops = {
 	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
 		 I915_GEM_OBJECT_IS_SHRINKABLE,
@@ -436,7 +429,7 @@ const struct drm_i915_gem_object_ops i915_gem_shmem_ops = {
 
 	.pwrite = shmem_pwrite,
 
-	.release = shmem_release,
+	.release = i915_gem_object_release_memory_region,
 };
 
 static int __create_shmem(struct drm_i915_private *i915,
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
