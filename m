Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 880613FB5A9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:10:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A199D89CE2;
	Mon, 30 Aug 2021 12:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E0A89CDD
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:54 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:09:53 +0200
Message-Id: <20210830121006.2978297-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/19] drm/i915: Create a full object for
 mock_ring
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

This allows us to finally get rid of all the assumptions that vma->obj is NULL.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/mock_engine.c | 35 ++++++++++++++++++++-------
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 2c1af030310c..67c17188e17a 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -35,9 +35,31 @@ static void mock_timeline_unpin(struct intel_timeline *tl)
 	atomic_dec(&tl->pin_count);
 }
 
+static struct i915_vma *create_ring_vma(struct i915_ggtt *ggtt, int size)
+{
+	struct i915_address_space *vm = &ggtt->vm;
+	struct drm_i915_private *i915 = vm->i915;
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+
+	obj = i915_gem_object_create_internal(i915, size);
+	if (IS_ERR(obj))
+		return ERR_CAST(obj);
+
+	vma = i915_vma_instance(obj, vm, NULL);
+	if (IS_ERR(vma))
+		goto err;
+
+	return vma;
+
+err:
+	i915_gem_object_put(obj);
+	return vma;
+}
+
 static struct intel_ring *mock_ring(struct intel_engine_cs *engine)
 {
-	const unsigned long sz = PAGE_SIZE / 2;
+	const unsigned long sz = PAGE_SIZE;
 	struct intel_ring *ring;
 
 	ring = kzalloc(sizeof(*ring) + sz, GFP_KERNEL);
@@ -50,15 +72,11 @@ static struct intel_ring *mock_ring(struct intel_engine_cs *engine)
 	ring->vaddr = (void *)(ring + 1);
 	atomic_set(&ring->pin_count, 1);
 
-	ring->vma = i915_vma_alloc();
-	if (!ring->vma) {
+	ring->vma = create_ring_vma(engine->gt->ggtt, PAGE_SIZE);
+	if (IS_ERR(ring->vma)) {
 		kfree(ring);
 		return NULL;
 	}
-	i915_active_init(&ring->vma->active, NULL, NULL, 0);
-	__set_bit(I915_VMA_GGTT_BIT, __i915_vma_flags(ring->vma));
-	__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &ring->vma->node.flags);
-	ring->vma->node.size = sz;
 
 	intel_ring_update_space(ring);
 
@@ -67,8 +85,7 @@ static struct intel_ring *mock_ring(struct intel_engine_cs *engine)
 
 static void mock_ring_free(struct intel_ring *ring)
 {
-	i915_active_fini(&ring->vma->active);
-	i915_vma_free(ring->vma);
+	i915_vma_put(ring->vma);
 
 	kfree(ring);
 }
-- 
2.32.0

