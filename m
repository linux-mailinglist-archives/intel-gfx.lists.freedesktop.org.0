Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31E43D9271
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 17:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C323D6E0F3;
	Wed, 28 Jul 2021 15:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB24A6E0CA;
 Wed, 28 Jul 2021 15:57:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="199912533"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="199912533"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 08:57:23 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="475893676"
Received: from sdrogers-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.245.248])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 08:57:21 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 16:57:11 +0100
Message-Id: <20210728155711.1744601-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: prefer the create_user
 helper
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No need to hand roll the set_placements stuff, now that that we have a
helper for this. Also no need to handle the -ENODEV case here, since
NULL mr implies missing device support, where the for_each_memory_region
helper will always skip over such regions.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
---
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 46 ++-----------------
 1 file changed, 4 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 0b2b73d8a364..eed1c2c64e75 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -860,24 +860,6 @@ static bool can_mmap(struct drm_i915_gem_object *obj, enum i915_mmap_type type)
 	return !no_map;
 }
 
-static void object_set_placements(struct drm_i915_gem_object *obj,
-				  struct intel_memory_region **placements,
-				  unsigned int n_placements)
-{
-	GEM_BUG_ON(!n_placements);
-
-	if (n_placements == 1) {
-		struct drm_i915_private *i915 = to_i915(obj->base.dev);
-		struct intel_memory_region *mr = placements[0];
-
-		obj->mm.placements = &i915->mm.regions[mr->id];
-		obj->mm.n_placements = 1;
-	} else {
-		obj->mm.placements = placements;
-		obj->mm.n_placements = n_placements;
-	}
-}
-
 #define expand32(x) (((x) << 0) | ((x) << 8) | ((x) << 16) | ((x) << 24))
 static int __igt_mmap(struct drm_i915_private *i915,
 		      struct drm_i915_gem_object *obj,
@@ -972,15 +954,10 @@ static int igt_mmap(void *arg)
 			struct drm_i915_gem_object *obj;
 			int err;
 
-			obj = i915_gem_object_create_region(mr, sizes[i], 0, I915_BO_ALLOC_USER);
-			if (obj == ERR_PTR(-ENODEV))
-				continue;
-
+			obj = __i915_gem_object_create_user(i915, sizes[i], &mr, 1);
 			if (IS_ERR(obj))
 				return PTR_ERR(obj);
 
-			object_set_placements(obj, &mr, 1);
-
 			err = __igt_mmap(i915, obj, I915_MMAP_TYPE_GTT);
 			if (err == 0)
 				err = __igt_mmap(i915, obj, I915_MMAP_TYPE_WC);
@@ -1101,15 +1078,10 @@ static int igt_mmap_access(void *arg)
 		struct drm_i915_gem_object *obj;
 		int err;
 
-		obj = i915_gem_object_create_region(mr, PAGE_SIZE, 0, I915_BO_ALLOC_USER);
-		if (obj == ERR_PTR(-ENODEV))
-			continue;
-
+		obj = __i915_gem_object_create_user(i915, PAGE_SIZE, &mr, 1);
 		if (IS_ERR(obj))
 			return PTR_ERR(obj);
 
-		object_set_placements(obj, &mr, 1);
-
 		err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_GTT);
 		if (err == 0)
 			err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_WB);
@@ -1248,15 +1220,10 @@ static int igt_mmap_gpu(void *arg)
 		struct drm_i915_gem_object *obj;
 		int err;
 
-		obj = i915_gem_object_create_region(mr, PAGE_SIZE, 0, I915_BO_ALLOC_USER);
-		if (obj == ERR_PTR(-ENODEV))
-			continue;
-
+		obj = __i915_gem_object_create_user(i915, PAGE_SIZE, &mr, 1);
 		if (IS_ERR(obj))
 			return PTR_ERR(obj);
 
-		object_set_placements(obj, &mr, 1);
-
 		err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_GTT);
 		if (err == 0)
 			err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_WC);
@@ -1405,15 +1372,10 @@ static int igt_mmap_revoke(void *arg)
 		struct drm_i915_gem_object *obj;
 		int err;
 
-		obj = i915_gem_object_create_region(mr, PAGE_SIZE, 0, I915_BO_ALLOC_USER);
-		if (obj == ERR_PTR(-ENODEV))
-			continue;
-
+		obj = __i915_gem_object_create_user(i915, PAGE_SIZE, &mr, 1);
 		if (IS_ERR(obj))
 			return PTR_ERR(obj);
 
-		object_set_placements(obj, &mr, 1);
-
 		err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_GTT);
 		if (err == 0)
 			err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_WC);
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
