Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 203892FA6CC
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 17:56:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1686E3F7;
	Mon, 18 Jan 2021 16:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119656E425
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 16:56:34 +0000 (UTC)
IronPort-SDR: +jIpL9suGDVCJ3048X+ssHyi56N1E5F7e8y1323HH/KoStoX6W5AI9DxdKkwHmyL8Sej632tgK
 ydTQFNhWSh2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="166492730"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="166492730"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 08:56:32 -0800
IronPort-SDR: HRkVNIVO0K61r6fJouo/o8DhTp8MIkEreg0QpaR+2bdjAV15F8B3c850EDHaxTz9sChSUofq+o
 rOOFPSaBJDIA==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="355250024"
Received: from juimonen-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.9.5])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 08:56:31 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 16:55:53 +0000
Message-Id: <20210118165553.118901-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210118165553.118901-1-matthew.auld@intel.com>
References: <20210118165553.118901-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/pool: constrain pool objects by
 mapping type
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

In a few places we always end up mapping the pool object with the FORCE
constraint(to prevent hitting -EBUSY) which will destroy the cached
mapping if it has a different type. As a simple first step, make the
mapping type part of the pool interface, where the behaviour is to only
give out pool objects which match the requested mapping type.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     | 14 ++++++++------
 drivers/gpu/drm/i915/gem/i915_gem_object_blt.c     |  8 ++++----
 drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c     | 12 +++++++++---
 drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h     |  3 ++-
 .../gpu/drm/i915/gt/intel_gt_buffer_pool_types.h   |  4 ++--
 drivers/gpu/drm/i915/i915_cmd_parser.c             |  2 +-
 6 files changed, 26 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b91b32195dcf..5322b956c828 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1275,8 +1275,12 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	u32 *cmd;
 	int err;
 
+
 	if (!pool) {
-		pool = intel_gt_get_buffer_pool(engine->gt, PAGE_SIZE);
+		pool = intel_gt_get_buffer_pool(engine->gt, PAGE_SIZE,
+						cache->has_llc ?
+						I915_MAP_WB :
+						I915_MAP_WC);
 		if (IS_ERR(pool))
 			return PTR_ERR(pool);
 	}
@@ -1286,10 +1290,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_pool;
 
-	cmd = i915_gem_object_pin_map(pool->obj,
-				      cache->has_llc ?
-				      I915_MAP_FORCE_WB :
-				      I915_MAP_FORCE_WC);
+	cmd = i915_gem_object_pin_map(pool->obj, pool->type);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto err_pool;
@@ -2458,7 +2459,8 @@ static int eb_parse(struct i915_execbuffer *eb)
 		return -EINVAL;
 
 	if (!pool) {
-		pool = intel_gt_get_buffer_pool(eb->engine->gt, len);
+		pool = intel_gt_get_buffer_pool(eb->engine->gt, len,
+						I915_MAP_WB);
 		if (IS_ERR(pool))
 			return PTR_ERR(pool);
 		eb->batch_pool = pool;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index 10cac9fac79b..d6dac21fce0b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -35,7 +35,7 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 	count = div_u64(round_up(vma->size, block_size), block_size);
 	size = (1 + 8 * count) * sizeof(u32);
 	size = round_up(size, PAGE_SIZE);
-	pool = intel_gt_get_buffer_pool(ce->engine->gt, size);
+	pool = intel_gt_get_buffer_pool(ce->engine->gt, size, I915_MAP_WC);
 	if (IS_ERR(pool)) {
 		err = PTR_ERR(pool);
 		goto out_pm;
@@ -55,7 +55,7 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 	if (unlikely(err))
 		goto out_put;
 
-	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
+	cmd = i915_gem_object_pin_map(pool->obj, pool->type);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto out_unpin;
@@ -257,7 +257,7 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 	count = div_u64(round_up(dst->size, block_size), block_size);
 	size = (1 + 11 * count) * sizeof(u32);
 	size = round_up(size, PAGE_SIZE);
-	pool = intel_gt_get_buffer_pool(ce->engine->gt, size);
+	pool = intel_gt_get_buffer_pool(ce->engine->gt, size, I915_MAP_WC);
 	if (IS_ERR(pool)) {
 		err = PTR_ERR(pool);
 		goto out_pm;
@@ -277,7 +277,7 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 	if (unlikely(err))
 		goto out_put;
 
-	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
+	cmd = i915_gem_object_pin_map(pool->obj, pool->type);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto out_unpin;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index 104cb30e8c13..06d84cf09570 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -145,7 +145,8 @@ static void pool_retire(struct i915_active *ref)
 }
 
 static struct intel_gt_buffer_pool_node *
-node_create(struct intel_gt_buffer_pool *pool, size_t sz)
+node_create(struct intel_gt_buffer_pool *pool, size_t sz,
+	    enum i915_map_type type)
 {
 	struct intel_gt *gt = to_gt(pool);
 	struct intel_gt_buffer_pool_node *node;
@@ -169,12 +170,14 @@ node_create(struct intel_gt_buffer_pool *pool, size_t sz)
 
 	i915_gem_object_set_readonly(obj);
 
+	node->type = type;
 	node->obj = obj;
 	return node;
 }
 
 struct intel_gt_buffer_pool_node *
-intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size)
+intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size,
+			 enum i915_map_type type)
 {
 	struct intel_gt_buffer_pool *pool = &gt->buffer_pool;
 	struct intel_gt_buffer_pool_node *node;
@@ -191,6 +194,9 @@ intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size)
 		if (node->obj->base.size < size)
 			continue;
 
+		if (node->type != type)
+			continue;
+
 		age = READ_ONCE(node->age);
 		if (!age)
 			continue;
@@ -205,7 +211,7 @@ intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size)
 	rcu_read_unlock();
 
 	if (&node->link == list) {
-		node = node_create(pool, size);
+		node = node_create(pool, size, type);
 		if (IS_ERR(node))
 			return node;
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h
index 42cbac003e8a..6068f8f1762e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h
@@ -15,7 +15,8 @@ struct intel_gt;
 struct i915_request;
 
 struct intel_gt_buffer_pool_node *
-intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size);
+intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size,
+			 enum i915_map_type type);
 
 static inline int
 intel_gt_buffer_pool_mark_active(struct intel_gt_buffer_pool_node *node,
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
index bcf1658c9633..30f36f3610ae 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
@@ -11,10 +11,9 @@
 #include <linux/spinlock.h>
 #include <linux/workqueue.h>
 
+#include "gem/i915_gem_object.h"
 #include "i915_active_types.h"
 
-struct drm_i915_gem_object;
-
 struct intel_gt_buffer_pool {
 	spinlock_t lock;
 	struct list_head cache_list[4];
@@ -31,6 +30,7 @@ struct intel_gt_buffer_pool_node {
 		struct rcu_head rcu;
 	};
 	unsigned long age;
+	enum i915_map_type type;
 };
 
 #endif /* INTEL_GT_BUFFER_POOL_TYPES_H */
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 82d0f19e86df..ced9a96d7c34 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1143,7 +1143,7 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 	void *dst, *src;
 	int ret;
 
-	dst = i915_gem_object_pin_map(dst_obj, I915_MAP_FORCE_WB);
+	dst = i915_gem_object_pin_map(dst_obj, I915_MAP_WB);
 	if (IS_ERR(dst))
 		return dst;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
