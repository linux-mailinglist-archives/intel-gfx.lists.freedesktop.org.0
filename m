Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E43FC4BDA22
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 15:16:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C36710E3E1;
	Mon, 21 Feb 2022 14:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 742F710E344;
 Mon, 21 Feb 2022 14:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645453002; x=1676989002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/kUxtqSV6eXcLq4eBa+uvvhhj1iTVCQfP0MVCJHXUsw=;
 b=X+iIZ/9Fe6Glu7it4dGDc+3+mJdts7djfxIW/URTc0UWM9b8Mz12D5I+
 qKw3brSMfppCIxWPpAtaJFMYRTOFKJm+EqThgSdLVY9OuLywzWWLrdJ0B
 UXSkcGxTCkNzRAyCpLplp6QRBuSNPrwtSchjJgP93zxMyYweLNBf7QU2d
 +iHAoeBSSGJEo+oJK2nY1JRgvbmxa/SeU24/pK/zkmqvb/vT3jT/7d7ve
 3VvIVGQW1V5QE0I6hVN9lRgmW/VR1+7dhZehxKLzbqlV++oyFn3bgJJMD
 LhWBvnreaVMldZReSGCljXU2jDBesfA9yPe0ajSiiTKDMWuOEXM9AeXm2 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="251467136"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="251467136"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:16:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="606400531"
Received: from joeyegax-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.97])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:16:37 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 21 Feb 2022 14:16:16 +0000
Message-Id: <20220221141620.2490914-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220221141620.2490914-1-matthew.auld@intel.com>
References: <20220221141620.2490914-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 2/6] lib/i915: wire up optional flags
 for gem_create_ext
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For now limit to direct callers.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 lib/i915/gem_create.c          |  9 ++++++---
 lib/i915/gem_create.h          |  5 +++--
 lib/i915/intel_memory_region.c |  2 +-
 tests/i915/gem_create.c        | 24 ++++++++++++------------
 tests/i915/gem_pxp.c           |  2 +-
 5 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/lib/i915/gem_create.c b/lib/i915/gem_create.c
index b2e8d559..d245a32e 100644
--- a/lib/i915/gem_create.c
+++ b/lib/i915/gem_create.c
@@ -48,11 +48,12 @@ uint32_t gem_create(int fd, uint64_t size)
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
@@ -73,6 +74,7 @@ int __gem_create_ext(int fd, uint64_t *size, uint32_t *handle,
  * gem_create_ext:
  * @fd: open i915 drm file descriptor
  * @size: desired size of the buffer
+ * @flags: optional flags
  * @ext: optional extensions chain
  *
  * This wraps the GEM_CREATE_EXT ioctl, which allocates a new gem buffer object
@@ -80,11 +82,12 @@ int __gem_create_ext(int fd, uint64_t *size, uint32_t *handle,
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
index c2b531b4..02232693 100644
--- a/lib/i915/gem_create.h
+++ b/lib/i915/gem_create.h
@@ -12,8 +12,9 @@
 
 int __gem_create(int fd, uint64_t *size, uint32_t *handle);
 uint32_t gem_create(int fd, uint64_t size);
-int __gem_create_ext(int fd, uint64_t *size, uint32_t *handle,
+int __gem_create_ext(int fd, uint64_t *size, uint32_t flags, uint32_t *handle,
                      struct i915_user_extension *ext);
-uint32_t gem_create_ext(int fd, uint64_t size, struct i915_user_extension *ext);
+uint32_t gem_create_ext(int fd, uint64_t size, uint32_t flags,
+			struct i915_user_extension *ext);
 
 #endif /* GEM_CREATE_H */
diff --git a/lib/i915/intel_memory_region.c b/lib/i915/intel_memory_region.c
index a8759e06..f0c8bc7c 100644
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
index 45804cde..a6c3c9d9 100644
--- a/tests/i915/gem_create.c
+++ b/tests/i915/gem_create.c
@@ -331,38 +331,38 @@ static void create_ext_placement_sanity_check(int fd)
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
@@ -373,7 +373,7 @@ static void create_ext_placement_sanity_check(int fd)
 	setparam_region.regions = to_user_pointer(uregions);
 	setparam_region.num_regions = regions->num_regions + 1;
 	size = PAGE_SIZE;
-	igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 					&setparam_region.base), 0);
 
 	if (regions->num_regions > 1)  {
@@ -386,7 +386,7 @@ static void create_ext_placement_sanity_check(int fd)
 			setparam_region.regions = to_user_pointer(dups);
 			setparam_region.num_regions = 2;
 			size = PAGE_SIZE;
-			igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+			igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 							&setparam_region.base), 0);
 		}
 	}
@@ -396,7 +396,7 @@ static void create_ext_placement_sanity_check(int fd)
 	setparam_region.regions = to_user_pointer(uregions);
 	setparam_region.num_regions = regions->num_regions;
 	size = PAGE_SIZE;
-	igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 					&setparam_region.base), 0);
 
 	free(uregions);
@@ -412,7 +412,7 @@ static void create_ext_placement_sanity_check(int fd)
 				to_user_pointer(&setparam_region_next);
 
 		size = PAGE_SIZE;
-		igt_assert_neq(__gem_create_ext(fd, &size, &handle,
+		igt_assert_neq(__gem_create_ext(fd, &size, 0, &handle,
 						&setparam_region.base), 0);
 		setparam_region.base.next_extension = 0;
 	}
@@ -444,7 +444,7 @@ static void create_ext_placement_all(int fd)
 	setparam_region.num_regions = regions->num_regions;
 
 	size = PAGE_SIZE;
-	igt_assert_eq(__gem_create_ext(fd, &size, &handle,
+	igt_assert_eq(__gem_create_ext(fd, &size, 0, &handle,
 				       &setparam_region.base), 0);
 	gem_close(fd, handle);
 	free(uregions);
@@ -473,7 +473,7 @@ static void create_ext_placement_each(int fd)
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
2.34.1

