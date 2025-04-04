Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08527A7C527
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 22:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF5210E33B;
	Fri,  4 Apr 2025 20:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B7E210E32A;
 Fri,  4 Apr 2025 20:50:40 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 9/9] drm/xe: Implement a helper for reading out a GGTT PTE at
 a specified offset
Date: Fri,  4 Apr 2025 22:50:28 +0200
Message-ID: <20250404205028.620300-10-dev@lankhorst.se>
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

Split the GGTT PTE readout to a separate function, this is useful for
adding testcases in the next commit, and also cleaner than manually
reading out GGTT.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  6 +-----
 drivers/gpu/drm/xe/xe_ggtt.c                  | 12 ++++++++++++
 drivers/gpu/drm/xe/xe_ggtt.h                  |  1 +
 3 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 4ca0cb5711941..67f712472ca26 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -87,12 +87,8 @@ initial_plane_bo(struct xe_device *xe,
 
 	base = round_down(plane_config->base, page_size);
 	if (IS_DGFX(xe)) {
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
index 36d3a0d6aa24a..54d54ee25e9c3 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -919,3 +919,15 @@ u64 xe_ggtt_encode_pte_flags(struct xe_ggtt *ggtt,
 {
 	return ggtt->pt_ops->pte_encode_flags(bo, pat_index);
 }
+
+/**
+ * xe_ggtt_read_pte - Read a PTE from the GGTT
+ * @ggtt: &xe_ggtt
+ * @offset: the offset for which the mapping should be read.
+ *
+ * Used by testcases, and by display reading out an inherited bios FB.
+ */
+u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset)
+{
+	return ioread64(ggtt->gsm + (offset / XE_PAGE_SIZE));
+}
diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
index 437ba65f33860..600a76526cf34 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.h
+++ b/drivers/gpu/drm/xe/xe_ggtt.h
@@ -50,5 +50,6 @@ void xe_ggtt_might_lock(struct xe_ggtt *ggtt);
 #endif
 
 u64 xe_ggtt_encode_pte_flags(struct xe_ggtt *ggtt, struct xe_bo *bo, u16 pat_index);
+u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset);
 
 #endif
-- 
2.45.2

