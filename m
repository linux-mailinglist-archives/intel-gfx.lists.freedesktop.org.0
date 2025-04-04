Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 026CBA7C526
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 22:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFDC610E33A;
	Fri,  4 Apr 2025 20:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3412E10E32A;
 Fri,  4 Apr 2025 20:50:39 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 5/9] drm/xe/ggtt: Seperate flags and address in PTE encoding
Date: Fri,  4 Apr 2025 22:50:24 +0200
Message-ID: <20250404205028.620300-6-dev@lankhorst.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250404205028.620300-1-dev@lankhorst.se>
References: <20250404205028.620300-1-dev@lankhorst.se>
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

Pinning large linear display framebuffers is becoming a bottleneck.
My plan of attack is doing a custom walk over the BO, this allows for
easier optimization of consecutive entries.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/xe_ggtt.c       | 92 +++++++++++++++++++++---------
 drivers/gpu/drm/xe/xe_ggtt.h       |  2 +
 drivers/gpu/drm/xe/xe_ggtt_types.h |  5 +-
 3 files changed, 72 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index b197b835ed442..8e1976bceb44f 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -27,6 +27,7 @@
 #include "xe_map.h"
 #include "xe_mmio.h"
 #include "xe_pm.h"
+#include "xe_res_cursor.h"
 #include "xe_sriov.h"
 #include "xe_wa.h"
 #include "xe_wopcm.h"
@@ -64,13 +65,9 @@
  * give us the correct placement for free.
  */
 
-static u64 xelp_ggtt_pte_encode_bo(struct xe_bo *bo, u64 bo_offset,
-				   u16 pat_index)
+static u64 xelp_ggtt_pte_flags(struct xe_bo *bo, u16 pat_index)
 {
-	u64 pte;
-
-	pte = xe_bo_addr(bo, bo_offset, XE_PAGE_SIZE);
-	pte |= XE_PAGE_PRESENT;
+	u64 pte = XE_PAGE_PRESENT;
 
 	if (xe_bo_is_vram(bo) || xe_bo_is_stolen_devmem(bo))
 		pte |= XE_GGTT_PTE_DM;
@@ -78,13 +75,17 @@ static u64 xelp_ggtt_pte_encode_bo(struct xe_bo *bo, u64 bo_offset,
 	return pte;
 }
 
-static u64 xelpg_ggtt_pte_encode_bo(struct xe_bo *bo, u64 bo_offset,
-				    u16 pat_index)
+static u64 xelp_ggtt_encode_bo(struct xe_bo *bo, u64 bo_offset, u16 pat_index)
+{
+	return xelp_ggtt_pte_flags(bo, pat_index) | xe_bo_addr(bo, bo_offset, XE_PAGE_SIZE);
+}
+
+static u64 xelpg_ggtt_pte_flags(struct xe_bo *bo, u16 pat_index)
 {
 	struct xe_device *xe = xe_bo_device(bo);
 	u64 pte;
 
-	pte = xelp_ggtt_pte_encode_bo(bo, bo_offset, pat_index);
+	pte = xelp_ggtt_pte_flags(bo, pat_index);
 
 	xe_assert(xe, pat_index <= 3);
 
@@ -97,6 +98,12 @@ static u64 xelpg_ggtt_pte_encode_bo(struct xe_bo *bo, u64 bo_offset,
 	return pte;
 }
 
+static u64 xelpg_ggtt_encode_bo(struct xe_bo *bo, u64 bo_offset,
+				u16 pat_index)
+{
+	return xelpg_ggtt_pte_flags(bo, pat_index) | xe_bo_addr(bo, bo_offset, XE_PAGE_SIZE);
+}
+
 static unsigned int probe_gsm_size(struct pci_dev *pdev)
 {
 	u16 gmch_ctl, ggms;
@@ -149,8 +156,9 @@ static void xe_ggtt_clear(struct xe_ggtt *ggtt, u64 start, u64 size)
 	xe_tile_assert(ggtt->tile, start < end);
 
 	if (ggtt->scratch)
-		scratch_pte = ggtt->pt_ops->pte_encode_bo(ggtt->scratch, 0,
-							  pat_index);
+		scratch_pte = xe_bo_addr(ggtt->scratch, 0, XE_PAGE_SIZE) |
+			      ggtt->pt_ops->pte_encode_flags(ggtt->scratch,
+							     pat_index);
 	else
 		scratch_pte = 0;
 
@@ -210,17 +218,20 @@ static void primelockdep(struct xe_ggtt *ggtt)
 }
 
 static const struct xe_ggtt_pt_ops xelp_pt_ops = {
-	.pte_encode_bo = xelp_ggtt_pte_encode_bo,
+	.pte_encode_bo = xelp_ggtt_encode_bo,
+	.pte_encode_flags = xelp_ggtt_pte_flags,
 	.ggtt_set_pte = xe_ggtt_set_pte,
 };
 
 static const struct xe_ggtt_pt_ops xelpg_pt_ops = {
-	.pte_encode_bo = xelpg_ggtt_pte_encode_bo,
+	.pte_encode_bo = xelpg_ggtt_encode_bo,
+	.pte_encode_flags = xelpg_ggtt_pte_flags,
 	.ggtt_set_pte = xe_ggtt_set_pte,
 };
 
 static const struct xe_ggtt_pt_ops xelpg_pt_wa_ops = {
-	.pte_encode_bo = xelpg_ggtt_pte_encode_bo,
+	.pte_encode_bo = xelpg_ggtt_encode_bo,
+	.pte_encode_flags = xelpg_ggtt_pte_flags,
 	.ggtt_set_pte = xe_ggtt_set_pte_and_flush,
 };
 
@@ -612,23 +623,46 @@ bool xe_ggtt_node_allocated(const struct xe_ggtt_node *node)
 /**
  * xe_ggtt_map_bo - Map the BO into GGTT
  * @ggtt: the &xe_ggtt where node will be mapped
+ * @node: the &xe_ggtt_node where this BO is mapped
  * @bo: the &xe_bo to be mapped
+ * @pat_index: Which pat_index to use.
  */
-static void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
+void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_ggtt_node *node,
+		    struct xe_bo *bo, u16 pat_index)
 {
-	u16 cache_mode = bo->flags & XE_BO_FLAG_NEEDS_UC ? XE_CACHE_NONE : XE_CACHE_WB;
-	u16 pat_index = tile_to_xe(ggtt->tile)->pat.idx[cache_mode];
-	u64 start;
-	u64 offset, pte;
 
-	if (XE_WARN_ON(!bo->ggtt_node[ggtt->tile->id]))
+	u64 start, pte;
+	struct xe_res_cursor cur;
+
+	if (XE_WARN_ON(!node))
 		return;
 
-	start = bo->ggtt_node[ggtt->tile->id]->base.start;
+	start = node->base.start;
 
-	for (offset = 0; offset < bo->size; offset += XE_PAGE_SIZE) {
-		pte = ggtt->pt_ops->pte_encode_bo(bo, offset, pat_index);
-		ggtt->pt_ops->ggtt_set_pte(ggtt, start + offset, pte);
+	pte = ggtt->pt_ops->pte_encode_flags(bo, pat_index);
+	if (!xe_bo_is_vram(bo) && !xe_bo_is_stolen(bo)) {
+		xe_assert(xe_bo_device(bo), bo->ttm.ttm);
+
+		for (xe_res_first_sg(xe_bo_sg(bo), 0, bo->size, &cur);
+		     cur.remaining;
+		     xe_res_next(&cur, XE_PAGE_SIZE)) {
+			u64 addr = xe_res_dma(&cur);
+
+			ggtt->pt_ops->ggtt_set_pte(ggtt, start + cur.start, addr | pte);
+		}
+	} else {
+		u64 end = start + bo->size;
+
+		/* Prepend GPU offset */
+		pte |= vram_region_gpu_offset(bo->ttm.resource);
+
+		for (xe_res_first(bo->ttm.resource, 0, bo->size, &cur);
+		     cur.remaining;
+		     xe_res_next(&cur, XE_PAGE_SIZE)) {
+
+			ggtt->pt_ops->ggtt_set_pte(ggtt, end - cur.remaining,
+						   pte + cur.start);
+		}
 	}
 }
 
@@ -641,8 +675,11 @@ static void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
  */
 void xe_ggtt_map_bo_unlocked(struct xe_ggtt *ggtt, struct xe_bo *bo)
 {
+	u16 cache_mode = bo->flags & XE_BO_FLAG_NEEDS_UC ? XE_CACHE_NONE : XE_CACHE_WB;
+	u16 pat_index = tile_to_xe(ggtt->tile)->pat.idx[cache_mode];
+
 	mutex_lock(&ggtt->lock);
-	xe_ggtt_map_bo(ggtt, bo);
+	xe_ggtt_map_bo(ggtt, bo->ggtt_node[ggtt->tile->id], bo, pat_index);
 	mutex_unlock(&ggtt->lock);
 }
 
@@ -682,7 +719,10 @@ static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
 		xe_ggtt_node_fini(bo->ggtt_node[tile_id]);
 		bo->ggtt_node[tile_id] = NULL;
 	} else {
-		xe_ggtt_map_bo(ggtt, bo);
+		u16 cache_mode = bo->flags & XE_BO_FLAG_NEEDS_UC ? XE_CACHE_NONE : XE_CACHE_WB;
+		u16 pat_index = tile_to_xe(ggtt->tile)->pat.idx[cache_mode];
+
+		xe_ggtt_map_bo(ggtt, bo->ggtt_node[tile_id], bo, pat_index);
 	}
 	mutex_unlock(&ggtt->lock);
 
diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
index 0bab1fd7cc817..c48da99908848 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.h
+++ b/drivers/gpu/drm/xe/xe_ggtt.h
@@ -26,6 +26,8 @@ int xe_ggtt_node_insert_locked(struct xe_ggtt_node *node,
 			       u32 size, u32 align, u32 mm_flags);
 void xe_ggtt_node_remove(struct xe_ggtt_node *node, bool invalidate);
 bool xe_ggtt_node_allocated(const struct xe_ggtt_node *node);
+void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_ggtt_node *node,
+		    struct xe_bo *bo, u16 pat_index);
 void xe_ggtt_map_bo_unlocked(struct xe_ggtt *ggtt, struct xe_bo *bo);
 int xe_ggtt_insert_bo(struct xe_ggtt *ggtt, struct xe_bo *bo);
 int xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
diff --git a/drivers/gpu/drm/xe/xe_ggtt_types.h b/drivers/gpu/drm/xe/xe_ggtt_types.h
index cb02b7994a9ac..06b1a602dd8d1 100644
--- a/drivers/gpu/drm/xe/xe_ggtt_types.h
+++ b/drivers/gpu/drm/xe/xe_ggtt_types.h
@@ -74,8 +74,11 @@ struct xe_ggtt_node {
  * Which can vary from platform to platform.
  */
 struct xe_ggtt_pt_ops {
-	/** @pte_encode_bo: Encode PTE address for a given BO */
+	/** @pte_encode_bo: Encode PTE flags for a given BO */
 	u64 (*pte_encode_bo)(struct xe_bo *bo, u64 bo_offset, u16 pat_index);
+
+	/** @pte_encode_flags: Encode PTE flags for a given BO */
+	u64 (*pte_encode_flags)(struct xe_bo *bo, u16 pat_index);
 	/** @ggtt_set_pte: Directly write into GGTT's PTE */
 	void (*ggtt_set_pte)(struct xe_ggtt *ggtt, u64 addr, u64 pte);
 };
-- 
2.45.2

