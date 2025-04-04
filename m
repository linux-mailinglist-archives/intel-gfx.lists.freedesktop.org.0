Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A12A7C528
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 22:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FBE10E33C;
	Fri,  4 Apr 2025 20:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3240210E327;
 Fri,  4 Apr 2025 20:50:39 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 7/9] drm/xe/display: Convert GGTT mapping to use
 pte_encode_flags
Date: Fri,  4 Apr 2025 22:50:26 +0200
Message-ID: <20250404205028.620300-8-dev@lankhorst.se>
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

Another small step in removing pte_encode_bo callback.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 5392e46a3a134..9059b56bc23c8 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -171,15 +171,15 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
 {
 	struct xe_device *xe = xe_bo_device(bo);
 	u32 column, row;
+	u64 pte = ggtt->pt_ops->pte_encode_flags(bo, xe->pat.idx[XE_CACHE_NONE]);
 
 	for (column = 0; column < width; column++) {
 		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
 
 		for (row = 0; row < height; row++) {
-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
-							      xe->pat.idx[XE_CACHE_NONE]);
+			u64 addr = xe_bo_addr(bo, src_idx * XE_PAGE_SIZE, XE_PAGE_SIZE);
 
-			ggtt->pt_ops->ggtt_set_pte(ggtt, *ggtt_ofs, pte);
+			ggtt->pt_ops->ggtt_set_pte(ggtt, *ggtt_ofs, pte | addr);
 			*ggtt_ofs += XE_PAGE_SIZE;
 			src_idx -= src_stride;
 		}
@@ -217,26 +217,19 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 	if (bo->ggtt_node[tile0->id] && view->type == I915_GTT_VIEW_NORMAL) {
 		vma->node = bo->ggtt_node[tile0->id];
 	} else if (view->type == I915_GTT_VIEW_NORMAL) {
-		u32 x, size = bo->ttm.base.size;
-
 		vma->node = xe_ggtt_node_init(ggtt);
 		if (IS_ERR(vma->node)) {
 			ret = PTR_ERR(vma->node);
 			goto out_unlock;
 		}
 
-		ret = xe_ggtt_node_insert_locked(vma->node, size, align, 0);
+		ret = xe_ggtt_node_insert_locked(vma->node, bo->size, align, 0);
 		if (ret) {
 			xe_ggtt_node_fini(vma->node);
 			goto out_unlock;
 		}
 
-		for (x = 0; x < size; x += XE_PAGE_SIZE) {
-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x,
-							      xe->pat.idx[XE_CACHE_NONE]);
-
-			ggtt->pt_ops->ggtt_set_pte(ggtt, vma->node->base.start + x, pte);
-		}
+		xe_ggtt_map_bo(ggtt, vma->node, bo, xe->pat.idx[XE_CACHE_NONE]);
 	} else {
 		u32 i, ggtt_ofs;
 		const struct intel_rotation_info *rot_info = &view->rotated;
-- 
2.45.2

