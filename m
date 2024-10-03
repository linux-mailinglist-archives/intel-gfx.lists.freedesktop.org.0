Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 629C898F2E6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 17:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4389110E895;
	Thu,  3 Oct 2024 15:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC9410E895;
 Thu,  3 Oct 2024 15:44:22 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v3 06/12] drm/xe: Use xe_ggtt_map_bo_unlocked for resume
Date: Thu,  3 Oct 2024 17:44:15 +0200
Message-ID: <20241003154421.33805-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

This is the first step to hide the details of struct xe_ggtt.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/xe/xe_bo_evict.c |  9 ++-------
 drivers/gpu/drm/xe/xe_ggtt.c     | 16 +++++++++++++++-
 drivers/gpu/drm/xe/xe_ggtt.h     |  2 +-
 3 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_bo_evict.c b/drivers/gpu/drm/xe/xe_bo_evict.c
index 541b49007d738..788c071af92e0 100644
--- a/drivers/gpu/drm/xe/xe_bo_evict.c
+++ b/drivers/gpu/drm/xe/xe_bo_evict.c
@@ -146,13 +146,8 @@ int xe_bo_restore_kernel(struct xe_device *xe)
 			return ret;
 		}
 
-		if (bo->flags & XE_BO_FLAG_GGTT) {
-			struct xe_tile *tile = bo->tile;
-
-			mutex_lock(&tile->mem.ggtt->lock);
-			xe_ggtt_map_bo(tile->mem.ggtt, bo);
-			mutex_unlock(&tile->mem.ggtt->lock);
-		}
+		if (bo->flags & XE_BO_FLAG_GGTT)
+			xe_ggtt_map_bo_unlocked(bo->tile->mem.ggtt, bo);
 
 		/*
 		 * We expect validate to trigger a move VRAM and our move code
diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index f68af56c3f865..1ffc0917e28fe 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -579,7 +579,7 @@ bool xe_ggtt_node_allocated(const struct xe_ggtt_node *node)
  * @ggtt: the &xe_ggtt where node will be mapped
  * @bo: the &xe_bo to be mapped
  */
-void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
+static void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
 {
 	u16 cache_mode = bo->flags & XE_BO_FLAG_NEEDS_UC ? XE_CACHE_NONE : XE_CACHE_WB;
 	u16 pat_index = tile_to_xe(ggtt->tile)->pat.idx[cache_mode];
@@ -597,6 +597,20 @@ void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
 	}
 }
 
+/**
+ * xe_ggtt_map_bo_unlocked - Restore a mapping of a BO into GGTT
+ * @ggtt: the &xe_ggtt where node will be mapped
+ * @bo: the &xe_bo to be mapped
+ *
+ * This is used to restore a GGTT mapping after suspend.
+ */
+void xe_ggtt_map_bo_unlocked(struct xe_ggtt *ggtt, struct xe_bo *bo)
+{
+	mutex_lock(&ggtt->lock);
+	xe_ggtt_map_bo(ggtt, bo);
+	mutex_unlock(&ggtt->lock);
+}
+
 static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
 				  u64 start, u64 end)
 {
diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
index 27e7d67de0047..bdf6d0733e2ca 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.h
+++ b/drivers/gpu/drm/xe/xe_ggtt.h
@@ -24,7 +24,7 @@ int xe_ggtt_node_insert_locked(struct xe_ggtt_node *node,
 			       u32 size, u32 align, u32 mm_flags);
 void xe_ggtt_node_remove(struct xe_ggtt_node *node, bool invalidate);
 bool xe_ggtt_node_allocated(const struct xe_ggtt_node *node);
-void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo);
+void xe_ggtt_map_bo_unlocked(struct xe_ggtt *ggtt, struct xe_bo *bo);
 int xe_ggtt_insert_bo(struct xe_ggtt *ggtt, struct xe_bo *bo);
 int xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
 			 u64 start, u64 end);
-- 
2.45.2

