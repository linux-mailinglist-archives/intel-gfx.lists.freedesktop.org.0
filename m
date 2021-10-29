Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D109543F8EF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 10:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D54FF6EA27;
	Fri, 29 Oct 2021 08:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A3706EA2C;
 Fri, 29 Oct 2021 08:32:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="210671291"
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="210671291"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 01:32:36 -0700
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="448302265"
Received: from hohiggin-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.197.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 01:32:34 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Fri, 29 Oct 2021 09:31:16 +0100
Message-Id: <20211029083118.3386312-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20211029083118.3386312-1-matthew.auld@intel.com>
References: <20211029083118.3386312-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/10] drm/i915: Rework context handling in
 hugepages selftests
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

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

In the next commit, we don't evict when refcount = 0, so we need to
call drain freed objects, because we want to pin new bo's in the same
place, causing a test failure.

Furthermore, since each subtest is separated, it's a lot better to use
i915_live_selftests, so each subtest starts with a clean slate, and a
clean address space.

v2:
  - Make hugepage_ctx static. Reported-by: kernel test robot <lkp@intel.com>

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 128 +++++++++++-------
 1 file changed, 80 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index b2003133deaf..257588b68adc 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -22,6 +22,22 @@
 #include "selftests/mock_region.h"
 #include "selftests/i915_random.h"
 
+static struct i915_gem_context *hugepage_ctx(struct drm_i915_private *i915,
+					     struct file *file)
+{
+	struct i915_gem_context *ctx = live_context(i915, file);
+	struct i915_address_space *vm;
+
+	if (IS_ERR(ctx))
+		return ctx;
+
+	vm = ctx->vm;
+	if (vm)
+		WRITE_ONCE(vm->scrub_64K, true);
+
+	return ctx;
+}
+
 static const unsigned int page_sizes[] = {
 	I915_GTT_PAGE_SIZE_2M,
 	I915_GTT_PAGE_SIZE_64K,
@@ -959,6 +975,8 @@ static int igt_mock_ppgtt_64K(void *arg)
 			__i915_gem_object_put_pages(obj);
 			i915_gem_object_unlock(obj);
 			i915_gem_object_put(obj);
+
+			i915_gem_drain_freed_objects(i915);
 		}
 	}
 
@@ -1080,10 +1098,6 @@ static int __igt_write_huge(struct intel_context *ce,
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	err = i915_vma_unbind(vma);
-	if (err)
-		return err;
-
 	err = i915_vma_pin(vma, size, 0, flags | offset);
 	if (err) {
 		/*
@@ -1117,7 +1131,7 @@ static int __igt_write_huge(struct intel_context *ce,
 	return err;
 }
 
-static int igt_write_huge(struct i915_gem_context *ctx,
+static int igt_write_huge(struct drm_i915_private *i915,
 			  struct drm_i915_gem_object *obj)
 {
 	struct i915_gem_engines *engines;
@@ -1127,6 +1141,8 @@ static int igt_write_huge(struct i915_gem_context *ctx,
 	IGT_TIMEOUT(end_time);
 	unsigned int max_page_size;
 	unsigned int count;
+	struct i915_gem_context *ctx;
+	struct file *file;
 	u64 max;
 	u64 num;
 	u64 size;
@@ -1134,6 +1150,16 @@ static int igt_write_huge(struct i915_gem_context *ctx,
 	int i, n;
 	int err = 0;
 
+	file = mock_file(i915);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	ctx = hugepage_ctx(i915, file);
+	if (IS_ERR(ctx)) {
+		err = PTR_ERR(ctx);
+		goto out;
+	}
+
 	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
 
 	size = obj->base.size;
@@ -1153,7 +1179,7 @@ static int igt_write_huge(struct i915_gem_context *ctx,
 	}
 	i915_gem_context_unlock_engines(ctx);
 	if (!n)
-		return 0;
+		goto out;
 
 	/*
 	 * To keep things interesting when alternating between engines in our
@@ -1215,6 +1241,8 @@ static int igt_write_huge(struct i915_gem_context *ctx,
 
 	kfree(order);
 
+out:
+	fput(file);
 	return err;
 }
 
@@ -1277,8 +1305,7 @@ static u32 igt_random_size(struct rnd_state *prng,
 
 static int igt_ppgtt_smoke_huge(void *arg)
 {
-	struct i915_gem_context *ctx = arg;
-	struct drm_i915_private *i915 = ctx->i915;
+	struct drm_i915_private *i915 = arg;
 	struct drm_i915_gem_object *obj;
 	I915_RND_STATE(prng);
 	struct {
@@ -1302,6 +1329,7 @@ static int igt_ppgtt_smoke_huge(void *arg)
 		u32 min = backends[i].min;
 		u32 max = backends[i].max;
 		u32 size = max;
+
 try_again:
 		size = igt_random_size(&prng, min, rounddown_pow_of_two(size));
 
@@ -1336,7 +1364,7 @@ static int igt_ppgtt_smoke_huge(void *arg)
 			goto out_unpin;
 		}
 
-		err = igt_write_huge(ctx, obj);
+		err = igt_write_huge(i915, obj);
 		if (err) {
 			pr_err("%s write-huge failed with size=%u, i=%d\n",
 			       __func__, size, i);
@@ -1363,8 +1391,7 @@ static int igt_ppgtt_smoke_huge(void *arg)
 
 static int igt_ppgtt_sanity_check(void *arg)
 {
-	struct i915_gem_context *ctx = arg;
-	struct drm_i915_private *i915 = ctx->i915;
+	struct drm_i915_private *i915 = arg;
 	unsigned int supported = INTEL_INFO(i915)->page_sizes;
 	struct {
 		igt_create_fn fn;
@@ -1431,7 +1458,7 @@ static int igt_ppgtt_sanity_check(void *arg)
 			if (pages)
 				obj->mm.page_sizes.sg = pages;
 
-			err = igt_write_huge(ctx, obj);
+			err = igt_write_huge(i915, obj);
 
 			i915_gem_object_lock(obj, NULL);
 			i915_gem_object_unpin_pages(obj);
@@ -1458,15 +1485,27 @@ static int igt_ppgtt_sanity_check(void *arg)
 
 static int igt_tmpfs_fallback(void *arg)
 {
-	struct i915_gem_context *ctx = arg;
-	struct drm_i915_private *i915 = ctx->i915;
+	struct drm_i915_private *i915 = arg;
+	struct i915_address_space *vm;
+	struct i915_gem_context *ctx;
 	struct vfsmount *gemfs = i915->mm.gemfs;
-	struct i915_address_space *vm = i915_gem_context_get_eb_vm(ctx);
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
+	struct file *file;
 	u32 *vaddr;
 	int err = 0;
 
+	file = mock_file(i915);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	ctx = hugepage_ctx(i915, file);
+	if (IS_ERR(ctx)) {
+		err = PTR_ERR(ctx);
+		goto out;
+	}
+	vm = i915_gem_context_get_eb_vm(ctx);
+
 	/*
 	 * Make sure that we don't burst into a ball of flames upon falling back
 	 * to tmpfs, which we rely on if on the off-chance we encouter a failure
@@ -1510,33 +1549,47 @@ static int igt_tmpfs_fallback(void *arg)
 	i915->mm.gemfs = gemfs;
 
 	i915_vm_put(vm);
+out:
+	fput(file);
 	return err;
 }
 
 static int igt_shrink_thp(void *arg)
 {
-	struct i915_gem_context *ctx = arg;
-	struct drm_i915_private *i915 = ctx->i915;
-	struct i915_address_space *vm = i915_gem_context_get_eb_vm(ctx);
+	struct drm_i915_private *i915 = arg;
+	struct i915_address_space *vm;
+	struct i915_gem_context *ctx;
 	struct drm_i915_gem_object *obj;
 	struct i915_gem_engines_iter it;
 	struct intel_context *ce;
 	struct i915_vma *vma;
+	struct file *file;
 	unsigned int flags = PIN_USER;
 	unsigned int n;
 	bool should_swap;
-	int err = 0;
+	int err;
+
+	if (!igt_can_allocate_thp(i915)) {
+		pr_info("missing THP support, skipping\n");
+		return 0;
+	}
+
+	file = mock_file(i915);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	ctx = hugepage_ctx(i915, file);
+	if (IS_ERR(ctx)) {
+		err = PTR_ERR(ctx);
+		goto out;
+	}
+	vm = i915_gem_context_get_eb_vm(ctx);
 
 	/*
 	 * Sanity check shrinking huge-paged object -- make sure nothing blows
 	 * up.
 	 */
 
-	if (!igt_can_allocate_thp(i915)) {
-		pr_info("missing THP support, skipping\n");
-		goto out_vm;
-	}
-
 	obj = i915_gem_object_create_shmem(i915, SZ_2M);
 	if (IS_ERR(obj)) {
 		err = PTR_ERR(obj);
@@ -1626,7 +1679,8 @@ static int igt_shrink_thp(void *arg)
 	i915_gem_object_put(obj);
 out_vm:
 	i915_vm_put(vm);
-
+out:
+	fput(file);
 	return err;
 }
 
@@ -1687,10 +1741,6 @@ int i915_gem_huge_page_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_ppgtt_smoke_huge),
 		SUBTEST(igt_ppgtt_sanity_check),
 	};
-	struct i915_gem_context *ctx;
-	struct i915_address_space *vm;
-	struct file *file;
-	int err;
 
 	if (!HAS_PPGTT(i915)) {
 		pr_info("PPGTT not supported, skipping live-selftests\n");
@@ -1700,23 +1750,5 @@ int i915_gem_huge_page_live_selftests(struct drm_i915_private *i915)
 	if (intel_gt_is_wedged(&i915->gt))
 		return 0;
 
-	file = mock_file(i915);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
-	ctx = live_context(i915, file);
-	if (IS_ERR(ctx)) {
-		err = PTR_ERR(ctx);
-		goto out_file;
-	}
-
-	vm = ctx->vm;
-	if (vm)
-		WRITE_ONCE(vm->scrub_64K, true);
-
-	err = i915_subtests(tests, ctx);
-
-out_file:
-	fput(file);
-	return err;
+	return i915_live_subtests(tests, i915);
 }
-- 
2.26.3

