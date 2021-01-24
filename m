Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65961301C5C
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jan 2021 14:57:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFBE489DA9;
	Sun, 24 Jan 2021 13:57:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8570489DA9
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jan 2021 13:57:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23686229-1500050 
 for multiple; Sun, 24 Jan 2021 13:57:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 24 Jan 2021 13:57:26 +0000
Message-Id: <20210124135726.1795-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210124135406.28756-1-chris@chris-wilson.co.uk>
References: <20210124135406.28756-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove guard page insertion around
 unevictable nodes
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

Assume that unevictable nodes are not in the GTT and so we can ignore
page boundary concerns, and so allow regular nodes to abutt against
irregular unevictable nodes.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drv.h       |  2 --
 drivers/gpu/drm/i915/i915_gem_evict.c |  6 ++++--
 drivers/gpu/drm/i915/i915_vma.h       | 10 +++++++++-
 drivers/gpu/drm/i915/i915_vma_types.h |  2 ++
 4 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 99cf861df92d..69c5a185ecff 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -357,8 +357,6 @@ enum i915_cache_level {
 	I915_CACHE_WT, /* hsw:gt3e WriteThrough for scanouts */
 };
 
-#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
-
 struct intel_fbc {
 	/* This is always the inner lock when overlapping with struct_mutex and
 	 * it's the outer lock when overlapping with stolen_lock. */
diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 4d2d59a9942b..aef88fdb9f66 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -313,11 +313,13 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 		 */
 		if (i915_vm_has_cache_coloring(vm)) {
 			if (node->start + node->size == target->start) {
-				if (node->color == target->color)
+				if (i915_node_color_matches(node,
+							    target->color))
 					continue;
 			}
 			if (node->start == target->start + target->size) {
-				if (node->color == target->color)
+				if (i915_node_color_matches(node,
+							    target->color))
 					continue;
 			}
 		}
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index a64adc8c883b..dac953815118 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -283,10 +283,18 @@ static inline bool i915_vma_is_bound(const struct i915_vma *vma,
 	return atomic_read(&vma->flags) & where;
 }
 
+static inline bool i915_node_color_matches(const struct drm_mm_node *node,
+					   unsigned long color)
+{
+	return (node->color | color) == I915_COLOR_UNEVICTABLE ||
+	       	node->color == color;
+}
+
 static inline bool i915_node_color_differs(const struct drm_mm_node *node,
 					   unsigned long color)
 {
-	return drm_mm_node_allocated(node) && node->color != color;
+	return drm_mm_node_allocated(node) &&
+		!i915_node_color_matches(node, color);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index f5cb848b7a7e..e72a07692a64 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -95,6 +95,8 @@ enum i915_cache_level;
  *
  */
 
+#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
+
 struct intel_remapped_plane_info {
 	/* in gtt pages */
 	unsigned int width, height, stride, offset;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
