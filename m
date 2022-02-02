Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014304A699C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 02:28:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBB110E3F8;
	Wed,  2 Feb 2022 01:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3168210E3F8
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 01:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643765312; x=1675301312;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vTM3+QJBPbh1cN6MENgsShWKhIiFIhHPXrYpl8rILPI=;
 b=WU+U0n0OZxaTONECjnXjz7tuiBVjxS8GQovLNHzUO6Q7MZE+g8oNx68K
 Ac5OaRuRt20JHVEk9GJzRiZWveOPiY2S4zXEJykGhY4FtzLXn1VaZd8ym
 7M2dU9XUoZNEbMTEwLXP4AoJDvgyTwS7SlRf6t++DASuUt2U3NiwA+NXW
 yijNkzmeXD6WHT72xwJ+RFXTLgEfUC3ARokTmv8kK9Z9MkVCVkNGn0b5P
 QqQUIQawUZ0fik0bzWMCsI9gzvN/MVazyU3qE973hh9+RXslavLzYvvmZ
 11a1muaxWycbMdZf65qfy7E7YBZf7TRyK8aRa1FLCt54Qm1XU0DvVkes1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="247781737"
X-IronPort-AV: E=Sophos;i="5.88,335,1635231600"; d="scan'208";a="247781737"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 17:28:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,335,1635231600"; d="scan'208";a="497582404"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 17:28:31 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Feb 2022 17:11:35 -0800
Message-Id: <20220202011136.1387951-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/mm: Add an iterator to optimally walk
 over holes for an allocation
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

This iterator relies on drm_mm_first_hole() and drm_mm_next_hole()
functions to identify suitable holes for an allocation of a given
size by efficently traversing the rbtree associated with the given
allocator.

It replaces the for loop in drm_mm_insert_node_in_range() and can
also be used by drm drivers to quickly identify holes of a certain
size within a given range.

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/drm_mm.c | 28 ++++++++++++----------------
 include/drm/drm_mm.h     | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/drm_mm.c b/drivers/gpu/drm/drm_mm.c
index 8257f9d4f619..416c849c10e5 100644
--- a/drivers/gpu/drm/drm_mm.c
+++ b/drivers/gpu/drm/drm_mm.c
@@ -352,10 +352,10 @@ static struct drm_mm_node *find_hole_addr(struct drm_mm *mm, u64 addr, u64 size)
 	return node;
 }
 
-static struct drm_mm_node *
-first_hole(struct drm_mm *mm,
-	   u64 start, u64 end, u64 size,
-	   enum drm_mm_insert_mode mode)
+struct drm_mm_node *
+drm_mm_first_hole(struct drm_mm *mm,
+		  u64 start, u64 end, u64 size,
+		  enum drm_mm_insert_mode mode)
 {
 	switch (mode) {
 	default:
@@ -374,6 +374,7 @@ first_hole(struct drm_mm *mm,
 						hole_stack);
 	}
 }
+EXPORT_SYMBOL(drm_mm_first_hole);
 
 /**
  * DECLARE_NEXT_HOLE_ADDR - macro to declare next hole functions
@@ -410,11 +411,11 @@ static struct drm_mm_node *name(struct drm_mm_node *entry, u64 size)	\
 DECLARE_NEXT_HOLE_ADDR(next_hole_high_addr, rb_left, rb_right)
 DECLARE_NEXT_HOLE_ADDR(next_hole_low_addr, rb_right, rb_left)
 
-static struct drm_mm_node *
-next_hole(struct drm_mm *mm,
-	  struct drm_mm_node *node,
-	  u64 size,
-	  enum drm_mm_insert_mode mode)
+struct drm_mm_node *
+drm_mm_next_hole(struct drm_mm *mm,
+		 struct drm_mm_node *node,
+		 u64 size,
+		 enum drm_mm_insert_mode mode)
 {
 	switch (mode) {
 	default:
@@ -432,6 +433,7 @@ next_hole(struct drm_mm *mm,
 		return &node->hole_stack == &mm->hole_stack ? NULL : node;
 	}
 }
+EXPORT_SYMBOL(drm_mm_next_hole);
 
 /**
  * drm_mm_reserve_node - insert an pre-initialized node
@@ -520,7 +522,6 @@ int drm_mm_insert_node_in_range(struct drm_mm * const mm,
 {
 	struct drm_mm_node *hole;
 	u64 remainder_mask;
-	bool once;
 
 	DRM_MM_BUG_ON(range_start > range_end);
 
@@ -533,13 +534,8 @@ int drm_mm_insert_node_in_range(struct drm_mm * const mm,
 	if (alignment <= 1)
 		alignment = 0;
 
-	once = mode & DRM_MM_INSERT_ONCE;
-	mode &= ~DRM_MM_INSERT_ONCE;
-
 	remainder_mask = is_power_of_2(alignment) ? alignment - 1 : 0;
-	for (hole = first_hole(mm, range_start, range_end, size, mode);
-	     hole;
-	     hole = once ? NULL : next_hole(mm, hole, size, mode)) {
+	drm_mm_for_each_best_hole(hole, mm, range_start, range_end, size, mode) {
 		u64 hole_start = __drm_mm_hole_node_start(hole);
 		u64 hole_end = hole_start + hole->hole_size;
 		u64 adj_start, adj_end;
diff --git a/include/drm/drm_mm.h b/include/drm/drm_mm.h
index ac33ba1b18bc..5055447697fa 100644
--- a/include/drm/drm_mm.h
+++ b/include/drm/drm_mm.h
@@ -322,6 +322,17 @@ static inline u64 __drm_mm_hole_node_end(const struct drm_mm_node *hole_node)
 	return list_next_entry(hole_node, node_list)->start;
 }
 
+struct drm_mm_node *
+drm_mm_first_hole(struct drm_mm *mm,
+		  u64 start, u64 end, u64 size,
+		  enum drm_mm_insert_mode mode);
+
+struct drm_mm_node *
+drm_mm_next_hole(struct drm_mm *mm,
+		 struct drm_mm_node *node,
+		 u64 size,
+		 enum drm_mm_insert_mode mode);
+
 /**
  * drm_mm_hole_node_end - computes the end of the hole following @node
  * @hole_node: drm_mm_node which implicitly tracks the following hole
@@ -400,6 +411,27 @@ static inline u64 drm_mm_hole_node_end(const struct drm_mm_node *hole_node)
 	     1 : 0; \
 	     pos = list_next_entry(pos, hole_stack))
 
+/**
+ * drm_mm_for_each_best_hole - iterator to optimally walk over all holes >= @size
+ * @pos: &drm_mm_node used internally to track progress
+ * @mm: &drm_mm allocator to walk
+ * @range_start: start of the allowed range for the allocation
+ * @range_end: end of the allowed range for the allocation
+ * @size: size of the allocation
+ * @mode: fine-tune the allocation search
+ *
+ * This iterator walks over all holes suitable for the allocation of given
+ * @size in a very efficient manner. It is implemented by calling
+ * drm_mm_first_hole() and drm_mm_next_hole() which identify the
+ * appropriate holes within the given range by efficently traversing the
+ * rbtree associated with @mm.
+ */
+#define drm_mm_for_each_best_hole(pos, mm, range_start, range_end, size, mode) \
+	for (pos = drm_mm_first_hole(mm, range_start, range_end, size, mode); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : drm_mm_next_hole(mm, hole, size, mode))
+
 /*
  * Basic range manager support (drm_mm.c)
  */
-- 
2.34.1

