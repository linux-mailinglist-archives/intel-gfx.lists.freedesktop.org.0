Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B15CA560A08
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 21:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00FE10E555;
	Wed, 29 Jun 2022 19:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEEF710E102;
 Wed, 29 Jun 2022 19:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656529867; x=1688065867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4R9kNwJRT6503etWl+DK0lW99iyOfJqEud2bG68agnc=;
 b=Gu+A+nmpLUeJ4S5FffGQbiBwPdW3DT03CZGd1MhddFFbouJP8QM7Cpc0
 PWdmGjDSD+bTkxqXG8aMiQGBNfzzmSfUH01xjAYtnQf8x1HGEsqxKrvGu
 mNHr/GMvA409nbYjQ0L3rKm+b7tSNd9UotrjU30THl1pL8d1D/RUBLkuE
 sVJhIKNOS7DoLuQ7JDGlNydzLZV3/sFDGcz6eljVTc79eFNpynGWChPOb
 87lOqk8Z0v4hbBHrG5sj/FUoz8Vf61lJ5mRwHosepZBlTmsyhFtXf3sty
 IuXug/JLxIr1cj1F81jsIPgrOREfQDZbZ/25ZGEKgwE45KpQeMbdpvVTc w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368439064"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="368439064"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:12 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="733297106"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:11 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 29 Jun 2022 20:06:51 +0100
Message-Id: <20220629190658.395463-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629190658.395463-1-matthew.auld@intel.com>
References: <20220629190658.395463-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/9] lib/i915: wire up optional flags for
 gem_create_ext
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For now limit to direct callers.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 lib/i915/gem_create.c          |  9 ++++++---
 lib/i915/gem_create.h          |  5 +++--
 lib/i915/intel_memory_region.c |  2 +-
 tests/i915/gem_create.c        | 24 ++++++++++++------------
 tests/i915/gem_pxp.c           |  2 +-
 5 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/lib/i915/gem_create.c b/lib/i915/gem_create.c
index 605c4513..1f9b7fcc 100644
--- a/lib/i915/gem_create.c
+++ b/lib/i915/gem_create.c
@@ -61,11 +61,12 @@ uint32_t gem_create(int fd, uint64_t size)
 	return handle;
 }
 
-int __gem_create_ext(int fd, uint64_t *size, uint32_t *handle,
+int __gem_create_ext(int fd, uint64_t *size, uint32_t flags, uint32_t *handle,
 		     struct i915_user_extension *ext)
 {
 	struct drm_i915_gem_create_ext create = {
 		.size = *size,
+		.flags = flags,
 		.extensions = to_user_pointer(ext),
 	};
 	int err = 0;
@@ -86,6 +87,7 @@ int __gem_create_ext(int fd, uint64_t *size, uint32_t *handle,
  * gem_create_ext:
  * @fd: open i915 drm file descriptor
  * @size: desired size of the buffer
+ * @flags: optional flags
  * @ext: optional extensions chain
  *
  * This wraps the GEM_CREATE_EXT ioctl, which allocates a new gem buffer object
@@ -93,11 +95,12 @@ int __gem_create_ext(int fd, uint64_t *size, uint32_t *handle,
  *
  * Returns: The file-private handle of the created buffer object
  */
-uint32_t gem_create_ext(int fd, uint64_t size, struct i915_user_extension *ext)
+uint32_t gem_create_ext(int fd, uint64_t size, uint32_t flags,
+			struct i915_user_extension *ext)
 {
 	uint32_t handle;
 
-	igt_assert_eq(__gem_create_ext(fd, &size, &handle, ext), 0);
+	igt_assert_eq(__gem_create_ext(fd, &size, flags, &handle, ext), 0);
 
 	return handle;
 }
diff --git a/lib/i915/gem_create.h b/lib/i915/gem_create.h
index c32a815d..47a9a16d 100644
--- a/lib/i915/gem_create.h
+++ b/lib/i915/gem_create.h
@@ -12,9 +12,10 @@
 
 int __gem_create(int fd, uint64_t *size, uint32_t *handle);
 uint32_t gem_create(int fd, uint64_t size);
-int __gem_create_ext(int fd, uint64_t *size, uint32_t *handle,
+int __gem_create_ext(int fd, uint64_t *size, uint32_t flags, uint32_t *handle,
                      struct i915_user_extension *ext);
-uint32_t gem_create_ext(int fd, uint64_t size, struct i915_user_extension *ext);
+uint32_t gem_create_ext(int fd, uint64_t size, uint32_t flags,
+			struct i915_user_extension *ext);
 
 void gem_pool_init(void);
 void gem_pool_dump(void);
diff --git a/lib/i915/intel_memory_region.c b/lib/i915/intel_memory_region.c
index 8c5c2df8..ce04c6a3 100644
--- a/lib/i915/intel_memory_region.c
+++ b/lib/i915/intel_memory_region.c
@@ -208,7 +208,7 @@ int __gem_create_in_memory_region_list(int fd, uint32_t *handle, uint64_t *size,
 	};
 	int ret;
 
-	ret = __gem_create_ext(fd, size, handle, &ext_regions.base);
+	ret = __gem_create_ext(fd, size, 0, handle, &ext_regions.base);
 
 	/*
 	 * Provide fallback for stable kernels if region passed in the array
diff --git a/tests/i915/gem_create.c b/tests/i915/gem_create.c
index b61c594b..7198c6ed 100644
--- a/tests/i915/gem_create.c
+++ b/tests/i915/gem_create.c
@@ -330,38 +330,38 @@ static void create_ext_placement_sanity_check(int fd)
 	 * behaviour.
 	 */
 	size = PAGE_SIZE;
-	igt_assert_eq(__gem_create_ext(fd, &size, &handle, 0), 0);
+	igt_assert_eq(__gem_create_ext(fd, &size, 0, &handle, 0), 0);
 	gem_close(fd, handle);
 
 	/* Try some uncreative invalid combinations */
 	setparam_region.regions = to_user_pointer(&region_smem);
 	setparam_region.num_regions = 0;
 	size = PAGE_SIZE;
-	igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 					&setparam_region.base), 0);
 
 	setparam_region.regions = to_user_pointer(&region_smem);
 	setparam_region.num_regions = regions->num_regions + 1;
 	size = PAGE_SIZE;
-	igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 					&setparam_region.base), 0);
 
 	setparam_region.regions = to_user_pointer(&region_smem);
 	setparam_region.num_regions = -1;
 	size = PAGE_SIZE;
-	igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 					&setparam_region.base), 0);
 
 	setparam_region.regions = to_user_pointer(&region_invalid);
 	setparam_region.num_regions = 1;
 	size = PAGE_SIZE;
-	igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 					&setparam_region.base), 0);
 
 	setparam_region.regions = to_user_pointer(&region_invalid);
 	setparam_region.num_regions = 0;
 	size = PAGE_SIZE;
-	igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 					&setparam_region.base), 0);
 
 	uregions = calloc(regions->num_regions + 1, sizeof(uint32_t));
@@ -372,7 +372,7 @@ static void create_ext_placement_sanity_check(int fd)
 	setparam_region.regions = to_user_pointer(uregions);
 	setparam_region.num_regions = regions->num_regions + 1;
 	size = PAGE_SIZE;
-	igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 					&setparam_region.base), 0);
 
 	if (regions->num_regions > 1)  {
@@ -385,7 +385,7 @@ static void create_ext_placement_sanity_check(int fd)
 			setparam_region.regions = to_user_pointer(dups);
 			setparam_region.num_regions = 2;
 			size = PAGE_SIZE;
-			igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+			igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 							&setparam_region.base), 0);
 		}
 	}
@@ -395,7 +395,7 @@ static void create_ext_placement_sanity_check(int fd)
 	setparam_region.regions = to_user_pointer(uregions);
 	setparam_region.num_regions = regions->num_regions;
 	size = PAGE_SIZE;
-	igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 					&setparam_region.base), 0);
 
 	free(uregions);
@@ -411,7 +411,7 @@ static void create_ext_placement_sanity_check(int fd)
 				to_user_pointer(&setparam_region_next);
 
 		size = PAGE_SIZE;
-		igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+		igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 						&setparam_region.base), 0);
 		setparam_region.base.next_extension = 0;
 	}
@@ -443,7 +443,7 @@ static void create_ext_placement_all(int fd)
 	setparam_region.num_regions = regions->num_regions;
 
 	size = PAGE_SIZE;
-	igt_assert_eq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_eq(__gem_create_ext(fd, &size, 0, &handle,
 				       &setparam_region.base), 0);
 	gem_close(fd, handle);
 	free(uregions);
@@ -472,7 +472,7 @@ static void create_ext_placement_each(int fd)
 		setparam_region.num_regions = 1;
 
 		size = PAGE_SIZE;
-		igt_assert_eq(__gem_create_ext(fd, &size, &handle,
+		igt_assert_eq(__gem_create_ext(fd, &size, 0, &handle,
 					       &setparam_region.base), 0);
 		gem_close(fd, handle);
 	}
diff --git a/tests/i915/gem_pxp.c b/tests/i915/gem_pxp.c
index 5f269bab..65618556 100644
--- a/tests/i915/gem_pxp.c
+++ b/tests/i915/gem_pxp.c
@@ -40,7 +40,7 @@ static int create_bo_ext(int i915, uint32_t size, bool protected_is_true, uint32
 		ext = &protected_ext.base;
 
 	*bo_out = 0;
-	ret = __gem_create_ext(i915, &size64, bo_out, ext);
+	ret = __gem_create_ext(i915, &size64, 0, bo_out, ext);
 
 	return ret;
 }
-- 
2.36.1

