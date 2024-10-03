Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E445098F2ED
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 17:44:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E700510E89C;
	Thu,  3 Oct 2024 15:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E877810E89C;
 Thu,  3 Oct 2024 15:44:24 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v3 09/12] drm/xe: Abstract read/write functions for GGTT PTEs
Date: Thu,  3 Oct 2024 17:44:18 +0200
Message-ID: <20241003154421.33805-10-maarten.lankhorst@linux.intel.com>
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

Instead of writing directly, use GGTT functions. This allows us to
hide away more GGTT details.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  4 +--
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  6 +----
 drivers/gpu/drm/xe/xe_ggtt.c                  | 25 +++++++++++++++++++
 drivers/gpu/drm/xe/xe_ggtt.h                  |  3 +++
 4 files changed, 31 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 79dbbbe03c7f6..bddd526b33297 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -172,7 +172,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
 			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
 							      xe->pat.idx[XE_CACHE_NONE]);
 
-			ggtt->pt_ops->ggtt_set_pte(ggtt, *ggtt_ofs, pte);
+			xe_ggtt_write_pte(ggtt, *ggtt_ofs, pte);
 			*ggtt_ofs += XE_PAGE_SIZE;
 			src_idx -= src_stride;
 		}
@@ -226,7 +226,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x,
 							      xe->pat.idx[XE_CACHE_NONE]);
 
-			ggtt->pt_ops->ggtt_set_pte(ggtt, vma->node->base.start + x, pte);
+			xe_ggtt_write_pte(ggtt, vma->node->base.start + x, pte);
 		}
 	} else {
 		u32 i, ggtt_ofs;
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index ddbd964dc20f5..7cbe7fcf8b600 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -70,12 +70,8 @@ initial_plane_bo(struct xe_device *xe,
 
 	base = round_down(plane_config->base, page_size);
 	if (IS_DGFX(xe) || GRAPHICS_VERx100(xe) >= 1270) {
-		u64 __iomem *gte = tile0->mem.ggtt->gsm;
-		u64 pte;
+		u64 pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
 
-		gte += base / XE_PAGE_SIZE;
-
-		pte = ioread64(gte);
 		if (!(pte & XE_GGTT_PTE_DM)) {
 			drm_err(&xe->drm,
 				"Initial plane programming missing DM bit\n");
diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 4866e9b252ad9..6945fbfc555ce 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -855,3 +855,28 @@ u64 xe_ggtt_print_holes(struct xe_ggtt *ggtt, u64 alignment, struct drm_printer
 
 	return total;
 }
+
+/**
+ * xe_ggtt_read_pte - Read a PTE from the GGTT
+ * @ggtt: &xe_ggtt
+ * @offset: the offset for which the mapping should be read.
+ *
+ * Used by display for inheriting a bios set FB.
+ */
+u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset)
+{
+	return ioread64(ggtt->gsm + (offset / XE_PAGE_SIZE));
+}
+
+/**
+ * xe_ggtt_write_pte - Write a PTE to the GGTT
+ * @ggtt: &xe_ggtt
+ * @offset: the offset for which the mapping should be written.
+ * @pte: The page table entry to write
+ *
+ * Used by display for writing normal and rotated GGTT entries for temporary pinned FB's.
+ */
+void xe_ggtt_write_pte(struct xe_ggtt *ggtt, u64 offset, u64 pte)
+{
+	return ggtt->pt_ops->ggtt_set_pte(ggtt, offset, pte);
+}
diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
index 0bab1fd7cc817..f83e5af0400e9 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.h
+++ b/drivers/gpu/drm/xe/xe_ggtt.h
@@ -47,4 +47,7 @@ static inline void xe_ggtt_might_lock(struct xe_ggtt *ggtt)
 void xe_ggtt_might_lock(struct xe_ggtt *ggtt);
 #endif
 
+u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset);
+void xe_ggtt_write_pte(struct xe_ggtt *ggtt, u64 offset, u64 pte);
+
 #endif
-- 
2.45.2

