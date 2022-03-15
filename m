Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA07C4DA227
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:15:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB78910E48B;
	Tue, 15 Mar 2022 18:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2275110E447
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647368109; x=1678904109;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BUatimKTEh7uqS5V8AjB0V5ZneCPIu5gGAXWUBggXDs=;
 b=fIiEsIk90KlEeTX/Zs2pRw6HsdsijiaZyRk4Y+y1qeXQ/caPyqprwU/J
 ZJE909CcALDgkiuo0q4AydWRopLQT4WcWC45pim8zQbs3hGDjtC4EddXB
 GjHLt93NDTt9BC/HA4QKKQ3JLnurPwTm2saHzN5z0cPOyKEqjzgzFG8+A
 6BEkEJ9e1F+/VuqPOVa9GES7ATL7xGiHD6ZB2/FEk/Ji9TEbnPU1IeVrY
 VQU4letDaX7pfrFAkjA1RM8g7oYl6gJK0TTXPLESvZDZPZ+PE6Ubw4GHJ
 5LV1mZSEygbfnxlzBhfqtfZzqxnsAZ2EoDoEU9gHHQfkkH1XJWzeIGUqg A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255221155"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="255221155"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:08 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="498133176"
Received: from sobyrne-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.31.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:08 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 18:14:23 +0000
Message-Id: <20220315181425.576828-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315181425.576828-1-matthew.auld@intel.com>
References: <20220315181425.576828-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 5/7] drm/i915/ttm: wire up the object offset
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

For the ttm backend we can use existing placements fpfn and lpfn to
force the allocator to place the object at the requested offset,
potentially evicting stuff if the spot is currently occupied.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_object_types.h   |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c        | 18 ++++++++++++++----
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c  |  3 ++-
 drivers/gpu/drm/i915/intel_region_ttm.c        |  7 ++++++-
 drivers/gpu/drm/i915/intel_region_ttm.h        |  1 +
 drivers/gpu/drm/i915/selftests/mock_region.c   |  3 +++
 6 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index fd54eb8f4826..2c88bdb8ff7c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -631,6 +631,8 @@ struct drm_i915_gem_object {
 
 		struct drm_mm_node *stolen;
 
+		resource_size_t bo_offset;
+
 		unsigned long scratch;
 		u64 encode;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 5e543ed867a2..e4a06fcf741a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -126,6 +126,8 @@ i915_ttm_select_tt_caching(const struct drm_i915_gem_object *obj)
 static void
 i915_ttm_place_from_region(const struct intel_memory_region *mr,
 			   struct ttm_place *place,
+			   resource_size_t offset,
+			   resource_size_t size,
 			   unsigned int flags)
 {
 	memset(place, 0, sizeof(*place));
@@ -133,7 +135,10 @@ i915_ttm_place_from_region(const struct intel_memory_region *mr,
 
 	if (flags & I915_BO_ALLOC_CONTIGUOUS)
 		place->flags |= TTM_PL_FLAG_CONTIGUOUS;
-	if (mr->io_size && mr->io_size < mr->total) {
+	if (offset != I915_BO_INVALID_OFFSET) {
+		place->fpfn = offset >> PAGE_SHIFT;
+		place->lpfn = place->fpfn + (size >> PAGE_SHIFT);
+	} else if (mr->io_size && mr->io_size < mr->total) {
 		if (flags & I915_BO_ALLOC_GPU_ONLY) {
 			place->flags |= TTM_PL_FLAG_TOPDOWN;
 		} else {
@@ -155,12 +160,14 @@ i915_ttm_placement_from_obj(const struct drm_i915_gem_object *obj,
 
 	placement->num_placement = 1;
 	i915_ttm_place_from_region(num_allowed ? obj->mm.placements[0] :
-				   obj->mm.region, requested, flags);
+				   obj->mm.region, requested, obj->bo_offset,
+				   obj->base.size, flags);
 
 	/* Cache this on object? */
 	placement->num_busy_placement = num_allowed;
 	for (i = 0; i < placement->num_busy_placement; ++i)
-		i915_ttm_place_from_region(obj->mm.placements[i], busy + i, flags);
+		i915_ttm_place_from_region(obj->mm.placements[i], busy + i,
+					   obj->bo_offset, obj->base.size, flags);
 
 	if (num_allowed == 0) {
 		*busy = *requested;
@@ -802,7 +809,8 @@ static int __i915_ttm_migrate(struct drm_i915_gem_object *obj,
 	struct ttm_placement placement;
 	int ret;
 
-	i915_ttm_place_from_region(mr, &requested, flags);
+	i915_ttm_place_from_region(mr, &requested, obj->bo_offset,
+				   obj->base.size, flags);
 	placement.num_placement = 1;
 	placement.num_busy_placement = 1;
 	placement.placement = &requested;
@@ -1159,6 +1167,8 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
 	i915_gem_object_init(obj, &i915_gem_ttm_obj_ops, &lock_class, flags);
 
+	obj->bo_offset = offset;
+
 	/* Don't put on a region list until we're either locked or fully initialized. */
 	obj->mm.region = mem;
 	INIT_LIST_HEAD(&obj->mm.region_link);
diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index 129f668f21ff..8e4e3f72c1ef 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -71,7 +71,8 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 
 	GEM_BUG_ON(min_page_size < mm->chunk_size);
 
-	if (place->flags & TTM_PL_FLAG_CONTIGUOUS) {
+	if (place->fpfn + bman_res->base.num_pages != place->lpfn &&
+	    place->flags & TTM_PL_FLAG_CONTIGUOUS) {
 		unsigned long pages;
 
 		size = roundup_pow_of_two(size);
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
index 737ef3f4ab54..62ff77445b01 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -12,6 +12,7 @@
 
 #include "intel_region_ttm.h"
 
+#include "gem/i915_gem_region.h"
 #include "gem/i915_gem_ttm.h" /* For the funcs/ops export only */
 /**
  * DOC: TTM support structure
@@ -191,6 +192,7 @@ intel_region_ttm_resource_to_rsgt(struct intel_memory_region *mem,
  */
 struct ttm_resource *
 intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
+				resource_size_t offset,
 				resource_size_t size,
 				unsigned int flags)
 {
@@ -202,7 +204,10 @@ intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
 
 	if (flags & I915_BO_ALLOC_CONTIGUOUS)
 		place.flags |= TTM_PL_FLAG_CONTIGUOUS;
-	if (mem->io_size && mem->io_size < mem->total) {
+	if (offset != I915_BO_INVALID_OFFSET) {
+		place.fpfn = offset >> PAGE_SHIFT;
+		place.lpfn = place.fpfn + (size >> PAGE_SHIFT);
+	} else if (mem->io_size && mem->io_size < mem->total) {
 		if (flags & I915_BO_ALLOC_GPU_ONLY) {
 			place.flags |= TTM_PL_FLAG_TOPDOWN;
 		} else {
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.h b/drivers/gpu/drm/i915/intel_region_ttm.h
index fdee5e7bd46c..cf9d86dcf409 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.h
+++ b/drivers/gpu/drm/i915/intel_region_ttm.h
@@ -36,6 +36,7 @@ struct ttm_device_funcs *i915_ttm_driver(void);
 #ifdef CONFIG_DRM_I915_SELFTEST
 struct ttm_resource *
 intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
+				resource_size_t offset,
 				resource_size_t size,
 				unsigned int flags);
 #endif
diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c
index f16c0b7198c7..670557ce1024 100644
--- a/drivers/gpu/drm/i915/selftests/mock_region.c
+++ b/drivers/gpu/drm/i915/selftests/mock_region.c
@@ -26,6 +26,7 @@ static int mock_region_get_pages(struct drm_i915_gem_object *obj)
 	int err;
 
 	obj->mm.res = intel_region_ttm_resource_alloc(obj->mm.region,
+						      obj->bo_offset,
 						      obj->base.size,
 						      obj->flags);
 	if (IS_ERR(obj->mm.res))
@@ -71,6 +72,8 @@ static int mock_object_init(struct intel_memory_region *mem,
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
 	i915_gem_object_init(obj, &mock_region_obj_ops, &lock_class, flags);
 
+	obj->bo_offset = offset;
+
 	obj->read_domains = I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;
 
 	i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
-- 
2.34.1

