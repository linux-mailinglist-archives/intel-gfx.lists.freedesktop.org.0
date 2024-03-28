Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A5288F876
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 08:18:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CEBE10F8F5;
	Thu, 28 Mar 2024 07:18:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jA0ClUfB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A89BA10E8EC;
 Thu, 28 Mar 2024 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711610333; x=1743146333;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X2LOfbdANTy/cQynHPcPFwpolUJuL64cjLqo9JNp+4I=;
 b=jA0ClUfB65NDr54gBJa7H1XwPQxqhuAu/RT4KhGEiwYOVx5ya26PguFG
 ULrs6Ci0Od2CP6nvcPmELRrZQC4FIlCU40iiapDBFHwKf8fHz5xWaZJTL
 3Do6oOlhOoE2F0NUW9WQ5N0ll1A4rsN1xA5BhPtgdU9hOombsh/SgnmrF
 iCUJHcBsA1BwV7ecBWUqDrKNjD34aJnQU7OeCDM5SQ1EWqea47fFjr5DH
 h7IvwbmAMbwH4MddtFFgQIpLOcgBSKrO8F6VZ3eRP0eLZartXk8VIBYOa
 E/MKcRjekjBlenuE/9hGUjrpqF8y6DFdaD+s7sXMYUTeeQNOffZL2uaSz w==;
X-CSE-ConnectionGUID: odn5HFHcRwusjlzUTGaipQ==
X-CSE-MsgGUID: R9+BGqVjQqub7esFfKfIhg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6609817"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6609817"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 00:18:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="39680377"
Received: from unknown (HELO intel.com) ([10.247.118.221])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 00:18:48 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH] drm/i915/gem: Replace dev_priv with i915
Date: Thu, 28 Mar 2024 08:18:33 +0100
Message-ID: <20240328071833.664001-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Anyone using 'dev_priv' instead of 'i915' in a cleaned-up area
should be fined and required to do community service for a few
days.

I thought I had cleaned up the 'gem/' directory in the past, but
still, old aficionados of the 'dev_priv' name keep sneaking it
in.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c      |  6 +++---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h     |  8 ++++----
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c     | 18 +++++++++---------
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c    |  6 +++---
 .../gpu/drm/i915/gem/selftests/huge_pages.c    | 14 +++++++-------
 6 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 3f20fe381199..42619fc05de4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2456,7 +2456,7 @@ static int eb_submit(struct i915_execbuffer *eb)
  * The engine index is returned.
  */
 static unsigned int
-gen8_dispatch_bsd_engine(struct drm_i915_private *dev_priv,
+gen8_dispatch_bsd_engine(struct drm_i915_private *i915,
 			 struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
@@ -2464,7 +2464,7 @@ gen8_dispatch_bsd_engine(struct drm_i915_private *dev_priv,
 	/* Check whether the file_priv has already selected one ring. */
 	if ((int)file_priv->bsd_engine < 0)
 		file_priv->bsd_engine =
-			get_random_u32_below(dev_priv->engine_uabi_class_count[I915_ENGINE_CLASS_VIDEO]);
+			get_random_u32_below(i915->engine_uabi_class_count[I915_ENGINE_CLASS_VIDEO]);
 
 	return file_priv->bsd_engine;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 38b72d86560f..c5e1c718a6d2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -654,7 +654,7 @@ i915_gem_object_create_shmem(struct drm_i915_private *i915,
 
 /* Allocate a new GEM object and fill it with the supplied data */
 struct drm_i915_gem_object *
-i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
+i915_gem_object_create_shmem_from_data(struct drm_i915_private *i915,
 				       const void *data, resource_size_t size)
 {
 	struct drm_i915_gem_object *obj;
@@ -663,8 +663,8 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
 	resource_size_t offset;
 	int err;
 
-	GEM_WARN_ON(IS_DGFX(dev_priv));
-	obj = i915_gem_object_create_shmem(dev_priv, round_up(size, PAGE_SIZE));
+	GEM_WARN_ON(IS_DGFX(i915));
+	obj = i915_gem_object_create_shmem(i915, round_up(size, PAGE_SIZE));
 	if (IS_ERR(obj))
 		return obj;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index 258381d1c054..dfe0db8bb1b9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -14,14 +14,14 @@ struct drm_i915_gem_object;
 
 #define i915_stolen_fb drm_mm_node
 
-int i915_gem_stolen_insert_node(struct drm_i915_private *dev_priv,
+int i915_gem_stolen_insert_node(struct drm_i915_private *i915,
 				struct drm_mm_node *node, u64 size,
 				unsigned alignment);
-int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *dev_priv,
+int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
 					 struct drm_mm_node *node, u64 size,
 					 unsigned alignment, u64 start,
 					 u64 end);
-void i915_gem_stolen_remove_node(struct drm_i915_private *dev_priv,
+void i915_gem_stolen_remove_node(struct drm_i915_private *i915,
 				 struct drm_mm_node *node);
 struct intel_memory_region *
 i915_gem_stolen_smem_setup(struct drm_i915_private *i915, u16 type,
@@ -31,7 +31,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 			   u16 instance);
 
 struct drm_i915_gem_object *
-i915_gem_object_create_stolen(struct drm_i915_private *dev_priv,
+i915_gem_object_create_stolen(struct drm_i915_private *i915,
 			      resource_size_t size);
 
 bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index a049ca0b7980..d9eb84c1d2f1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -343,12 +343,12 @@ int
 i915_gem_set_tiling_ioctl(struct drm_device *dev, void *data,
 			  struct drm_file *file)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_set_tiling *args = data;
 	struct drm_i915_gem_object *obj;
 	int err;
 
-	if (!to_gt(dev_priv)->ggtt->num_fences)
+	if (!to_gt(i915)->ggtt->num_fences)
 		return -EOPNOTSUPP;
 
 	obj = i915_gem_object_lookup(file, args->handle);
@@ -374,9 +374,9 @@ i915_gem_set_tiling_ioctl(struct drm_device *dev, void *data,
 		args->stride = 0;
 	} else {
 		if (args->tiling_mode == I915_TILING_X)
-			args->swizzle_mode = to_gt(dev_priv)->ggtt->bit_6_swizzle_x;
+			args->swizzle_mode = to_gt(i915)->ggtt->bit_6_swizzle_x;
 		else
-			args->swizzle_mode = to_gt(dev_priv)->ggtt->bit_6_swizzle_y;
+			args->swizzle_mode = to_gt(i915)->ggtt->bit_6_swizzle_y;
 
 		/* Hide bit 17 swizzling from the user.  This prevents old Mesa
 		 * from aborting the application on sw fallbacks to bit 17,
@@ -427,11 +427,11 @@ i915_gem_get_tiling_ioctl(struct drm_device *dev, void *data,
 			  struct drm_file *file)
 {
 	struct drm_i915_gem_get_tiling *args = data;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_object *obj;
 	int err = -ENOENT;
 
-	if (!to_gt(dev_priv)->ggtt->num_fences)
+	if (!to_gt(i915)->ggtt->num_fences)
 		return -EOPNOTSUPP;
 
 	rcu_read_lock();
@@ -447,10 +447,10 @@ i915_gem_get_tiling_ioctl(struct drm_device *dev, void *data,
 
 	switch (args->tiling_mode) {
 	case I915_TILING_X:
-		args->swizzle_mode = to_gt(dev_priv)->ggtt->bit_6_swizzle_x;
+		args->swizzle_mode = to_gt(i915)->ggtt->bit_6_swizzle_x;
 		break;
 	case I915_TILING_Y:
-		args->swizzle_mode = to_gt(dev_priv)->ggtt->bit_6_swizzle_y;
+		args->swizzle_mode = to_gt(i915)->ggtt->bit_6_swizzle_y;
 		break;
 	default:
 	case I915_TILING_NONE:
@@ -459,7 +459,7 @@ i915_gem_get_tiling_ioctl(struct drm_device *dev, void *data,
 	}
 
 	/* Hide bit 17 from the user -- see comment in i915_gem_set_tiling */
-	if (dev_priv->gem_quirks & GEM_QUIRK_PIN_SWIZZLED_PAGES)
+	if (i915->gem_quirks & GEM_QUIRK_PIN_SWIZZLED_PAGES)
 		args->phys_swizzle_mode = I915_BIT_6_SWIZZLE_UNKNOWN;
 	else
 		args->phys_swizzle_mode = args->swizzle_mode;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 61abfb505766..09b68713ab32 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -463,13 +463,13 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 		       struct drm_file *file)
 {
 	static struct lock_class_key __maybe_unused lock_class;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_userptr *args = data;
 	struct drm_i915_gem_object __maybe_unused *obj;
 	int __maybe_unused ret;
 	u32 __maybe_unused handle;
 
-	if (!HAS_LLC(dev_priv) && !HAS_SNOOP(dev_priv)) {
+	if (!HAS_LLC(i915) && !HAS_SNOOP(i915)) {
 		/* We cannot support coherent userptr objects on hw without
 		 * LLC and broken snooping.
 		 */
@@ -501,7 +501,7 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 		 * On almost all of the older hw, we cannot tell the GPU that
 		 * a page is readonly.
 		 */
-		if (!to_gt(dev_priv)->vm->has_read_only)
+		if (!to_gt(i915)->vm->has_read_only)
 			return -ENODEV;
 	}
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index edb54903be0a..84d41e6ccf05 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1969,19 +1969,19 @@ int i915_gem_huge_page_mock_selftests(void)
 		SUBTEST(igt_mock_memory_region_huge_pages),
 		SUBTEST(igt_mock_ppgtt_misaligned_dma),
 	};
-	struct drm_i915_private *dev_priv;
+	struct drm_i915_private *i915;
 	struct i915_ppgtt *ppgtt;
 	int err;
 
-	dev_priv = mock_gem_device();
-	if (!dev_priv)
+	i915 = mock_gem_device();
+	if (!i915)
 		return -ENOMEM;
 
 	/* Pretend to be a device which supports the 48b PPGTT */
-	RUNTIME_INFO(dev_priv)->ppgtt_type = INTEL_PPGTT_FULL;
-	RUNTIME_INFO(dev_priv)->ppgtt_size = 48;
+	RUNTIME_INFO(i915)->ppgtt_type = INTEL_PPGTT_FULL;
+	RUNTIME_INFO(i915)->ppgtt_size = 48;
 
-	ppgtt = i915_ppgtt_create(to_gt(dev_priv), 0);
+	ppgtt = i915_ppgtt_create(to_gt(i915), 0);
 	if (IS_ERR(ppgtt)) {
 		err = PTR_ERR(ppgtt);
 		goto out_unlock;
@@ -2005,7 +2005,7 @@ int i915_gem_huge_page_mock_selftests(void)
 out_put:
 	i915_vm_put(&ppgtt->vm);
 out_unlock:
-	mock_destroy_device(dev_priv);
+	mock_destroy_device(i915);
 	return err;
 }
 
-- 
2.43.0

