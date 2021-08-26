Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C43543F830F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 09:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8715E6E52D;
	Thu, 26 Aug 2021 07:24:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6243D6E52D;
 Thu, 26 Aug 2021 07:24:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="281404310"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="281404310"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 00:24:32 -0700
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="465029659"
Received: from lapeders-mobl.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.132])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 00:24:31 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Thu, 26 Aug 2021 09:24:14 +0200
Message-Id: <20210826072414.384945-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Fix the mman selftest
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

Using the I915_MMAP_TYPE_FIXED mmap type requires the TTM backend, so
for that mmap type, use __i915_gem_object_create_user() instead of
i915_gem_object_create_internal(), as we really want to tests objects
mmap-able by user-space.

This also means that the out-of-space error happens at object creation
and returns -ENXIO rather than -ENOSPC, so fix the code up to expect
that on out-of-offset-space errors.

Finally only use I915_MMAP_TYPE_FIXED for LMEM and SMEM for now if
testing on LMEM-capable devices. For stolen LMEM, we still take the
same path as for integrated, as that haven't been moved over to TTM yet,
and user-space should not be able to create out of stolen LMEM anyway.

Fixes: 7961c5b60f23 ("drm/i915: Add TTM offset argument to mmap.")
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 26 +++++++++++++++----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index b20f5621f62b..68da25e66b69 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -581,6 +581,20 @@ static enum i915_mmap_type default_mapping(struct drm_i915_private *i915)
 	return I915_MMAP_TYPE_GTT;
 }
 
+static struct drm_i915_gem_object *
+create_sys_or_internal(struct drm_i915_private *i915,
+		       unsigned long size)
+{
+	if (HAS_LMEM(i915)) {
+		struct intel_memory_region *sys_region =
+			i915->mm.regions[INTEL_REGION_SMEM];
+
+		return __i915_gem_object_create_user(i915, size, &sys_region, 1);
+	}
+
+	return i915_gem_object_create_internal(i915, size);
+}
+
 static bool assert_mmap_offset(struct drm_i915_private *i915,
 			       unsigned long size,
 			       int expected)
@@ -589,7 +603,7 @@ static bool assert_mmap_offset(struct drm_i915_private *i915,
 	u64 offset;
 	int ret;
 
-	obj = i915_gem_object_create_internal(i915, size);
+	obj = create_sys_or_internal(i915, size);
 	if (IS_ERR(obj))
 		return expected && expected == PTR_ERR(obj);
 
@@ -633,6 +647,7 @@ static int igt_mmap_offset_exhaustion(void *arg)
 	struct drm_mm_node *hole, *next;
 	int loop, err = 0;
 	u64 offset;
+	int enospc = HAS_LMEM(i915) ? -ENXIO : -ENOSPC;
 
 	/* Disable background reaper */
 	disable_retire_worker(i915);
@@ -683,14 +698,14 @@ static int igt_mmap_offset_exhaustion(void *arg)
 	}
 
 	/* Too large */
-	if (!assert_mmap_offset(i915, 2 * PAGE_SIZE, -ENOSPC)) {
+	if (!assert_mmap_offset(i915, 2 * PAGE_SIZE, enospc)) {
 		pr_err("Unexpectedly succeeded in inserting too large object into single page hole\n");
 		err = -EINVAL;
 		goto out;
 	}
 
 	/* Fill the hole, further allocation attempts should then fail */
-	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	obj = create_sys_or_internal(i915, PAGE_SIZE);
 	if (IS_ERR(obj)) {
 		err = PTR_ERR(obj);
 		pr_err("Unable to create object for reclaimed hole\n");
@@ -703,7 +718,7 @@ static int igt_mmap_offset_exhaustion(void *arg)
 		goto err_obj;
 	}
 
-	if (!assert_mmap_offset(i915, PAGE_SIZE, -ENOSPC)) {
+	if (!assert_mmap_offset(i915, PAGE_SIZE, enospc)) {
 		pr_err("Unexpectedly succeeded in inserting object into no holes!\n");
 		err = -EINVAL;
 		goto err_obj;
@@ -842,7 +857,8 @@ static bool can_mmap(struct drm_i915_gem_object *obj, enum i915_mmap_type type)
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	bool no_map;
 
-	if (HAS_LMEM(i915))
+	if (HAS_LMEM(i915) && (obj->mm.region->id == INTEL_REGION_SMEM ||
+			       obj->mm.region->id == INTEL_REGION_LMEM))
 		return type == I915_MMAP_TYPE_FIXED;
 	else if (type == I915_MMAP_TYPE_FIXED)
 		return false;
-- 
2.31.1

