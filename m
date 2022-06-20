Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1085552682
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 23:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1D2510F45F;
	Mon, 20 Jun 2022 21:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C211C10F37A;
 Mon, 20 Jun 2022 21:34:17 +0000 (UTC)
Received: from hermes-devbox.fritz.box (82-71-8-225.dsl.in-addr.zen.co.uk
 [82.71.8.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: bbeckett)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 4D73F66018A7;
 Mon, 20 Jun 2022 22:34:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1655760856;
 bh=BJ87eisXj9Ppx4nwiDdWpEsHsZ0BoBn8nQEON2j1/N8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SS+IlwWyPXSGr+X0KsGYlBRuiRe822keDXX44ookPygSZPzDuWL0Cl9ndloyIA2Ip
 eIYA2iZHjjPMHiqujaXonUEIpSJMe0DAm/8rOTdS50b+8g6snDwCVvJR3q3tEzL8dp
 wqbMIvNol8LXEVKzxapozszj87KY9eie0pXrghF21DWSLXbFE7umVP3xgXdJI0cORt
 rfEhysvGC+xusbeUR7sUr2etbSrk6MTfNan0NTn3lKQBuHaZK+VCixLhBgz6c5mD95
 if4kAGd0UT9mCW3ke4c5NNiKWObUIkSh7QcuP+5QYeP+di5upPNz6G2h/at94DYNij
 c7nzjqSmpfJgg==
From: Robert Beckett <bob.beckett@collabora.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 20 Jun 2022 21:33:39 +0000
Message-Id: <20220620213340.3199605-10-bob.beckett@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220620213340.3199605-1-bob.beckett@collabora.com>
References: <20220620213340.3199605-1-bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 09/10] drm/i915/ttm: add buffer pin on alloc
 flag
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
 kernel@collabora.com, Matthew Auld <matthew.auld@intel.com>,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For situations where allocations need to fail on alloc instead of
delayed get_pages, add a new alloc flag to pin the ttm bo.
This makes sure that the resource has been allocated during buffer
creation, allowing it to fail with an error if the placement is
exhausted.
This allows existing fallback options for stolen backend allocation like
create_ring_vma to work as expected.

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
---
 .../gpu/drm/i915/gem/i915_gem_object_types.h  | 13 ++++++----
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 25 ++++++++++++++++++-
 2 files changed, 32 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 6632ed52e919..07bc11247a3e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -325,17 +325,20 @@ struct drm_i915_gem_object {
  * dealing with userspace objects the CPU fault handler is free to ignore this.
  */
 #define I915_BO_ALLOC_GPU_ONLY	  BIT(6)
+/* object should be pinned in destination region from allocation */
+#define I915_BO_ALLOC_PINNED	  BIT(7)
 #define I915_BO_ALLOC_FLAGS (I915_BO_ALLOC_CONTIGUOUS | \
 			     I915_BO_ALLOC_VOLATILE | \
 			     I915_BO_ALLOC_CPU_CLEAR | \
 			     I915_BO_ALLOC_USER | \
 			     I915_BO_ALLOC_PM_VOLATILE | \
 			     I915_BO_ALLOC_PM_EARLY | \
-			     I915_BO_ALLOC_GPU_ONLY)
-#define I915_BO_READONLY          BIT(7)
-#define I915_TILING_QUIRK_BIT     8 /* unknown swizzling; do not release! */
-#define I915_BO_PROTECTED         BIT(9)
-#define I915_BO_WAS_BOUND_BIT     10
+			     I915_BO_ALLOC_GPU_ONLY | \
+			     I915_BO_ALLOC_PINNED)
+#define I915_BO_READONLY          BIT(8)
+#define I915_TILING_QUIRK_BIT     9 /* unknown swizzling; do not release! */
+#define I915_BO_PROTECTED         BIT(10)
+#define I915_BO_WAS_BOUND_BIT     11
 	/**
 	 * @mem_flags - Mutable placement-related flags
 	 *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 27d59639177f..bb988608296d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -998,6 +998,13 @@ static void i915_ttm_delayed_free(struct drm_i915_gem_object *obj)
 {
 	GEM_BUG_ON(!obj->ttm.created);
 
+	/* stolen objects are pinned for lifetime. Unpin before putting */
+	if (obj->flags & I915_BO_ALLOC_PINNED) {
+		ttm_bo_reserve(i915_gem_to_ttm(obj), true, false, NULL);
+		ttm_bo_unpin(i915_gem_to_ttm(obj));
+		ttm_bo_unreserve(i915_gem_to_ttm(obj));
+	}
+
 	ttm_bo_put(i915_gem_to_ttm(obj));
 }
 
@@ -1193,6 +1200,9 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 		.no_wait_gpu = false,
 	};
 	enum ttm_bo_type bo_type;
+	struct ttm_place _place;
+	struct ttm_placement _placement;
+	struct ttm_placement *placement;
 	int ret;
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
@@ -1222,6 +1232,17 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 	 */
 	i915_gem_object_make_unshrinkable(obj);
 
+	if (obj->flags & I915_BO_ALLOC_PINNED) {
+		i915_ttm_place_from_region(mem, &_place, obj->bo_offset,
+					   obj->base.size, obj->flags);
+		_placement.num_placement = 1;
+		_placement.placement = &_place;
+		_placement.num_busy_placement = 0;
+		_placement.busy_placement = NULL;
+		placement = &_placement;
+	} else {
+		placement = &i915_sys_placement;
+	}
 	/*
 	 * If this function fails, it will call the destructor, but
 	 * our caller still owns the object. So no freeing in the
@@ -1230,7 +1251,7 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 	 * until successful initialization.
 	 */
 	ret = ttm_bo_init_reserved(&i915->bdev, i915_gem_to_ttm(obj), size,
-				   bo_type, &i915_sys_placement,
+				   bo_type, placement,
 				   page_size >> PAGE_SHIFT,
 				   &ctx, NULL, NULL, i915_ttm_bo_destroy);
 	if (ret)
@@ -1242,6 +1263,8 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 	i915_ttm_adjust_domains_after_move(obj);
 	i915_ttm_adjust_gem_after_move(obj);
 	obj->ttm.cache_level_override = false;
+	if (obj->flags & I915_BO_ALLOC_PINNED)
+		ttm_bo_pin(i915_gem_to_ttm(obj));
 	i915_gem_object_unlock(obj);
 
 	return 0;
-- 
2.25.1

