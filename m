Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC177A7C525
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 22:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83AA910E337;
	Fri,  4 Apr 2025 20:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5938910E330;
 Fri,  4 Apr 2025 20:50:39 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 8/9] drm/xe: Remove pte_encode_bo callback
Date: Fri,  4 Apr 2025 22:50:27 +0200
Message-ID: <20250404205028.620300-9-dev@lankhorst.se>
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

The users inside display have been converted to use thepte_encode_flags
callback, we can now remove the pte_encode_bo cb.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/xe_ggtt.c       | 14 --------------
 drivers/gpu/drm/xe/xe_ggtt_types.h |  3 ---
 2 files changed, 17 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 5ea2f9fac85d4..36d3a0d6aa24a 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -75,11 +75,6 @@ static u64 xelp_ggtt_pte_flags(struct xe_bo *bo, u16 pat_index)
 	return pte;
 }
 
-static u64 xelp_ggtt_encode_bo(struct xe_bo *bo, u64 bo_offset, u16 pat_index)
-{
-	return xelp_ggtt_pte_flags(bo, pat_index) | xe_bo_addr(bo, bo_offset, XE_PAGE_SIZE);
-}
-
 static u64 xelpg_ggtt_pte_flags(struct xe_bo *bo, u16 pat_index)
 {
 	struct xe_device *xe = xe_bo_device(bo);
@@ -98,12 +93,6 @@ static u64 xelpg_ggtt_pte_flags(struct xe_bo *bo, u16 pat_index)
 	return pte;
 }
 
-static u64 xelpg_ggtt_encode_bo(struct xe_bo *bo, u64 bo_offset,
-				u16 pat_index)
-{
-	return xelpg_ggtt_pte_flags(bo, pat_index) | xe_bo_addr(bo, bo_offset, XE_PAGE_SIZE);
-}
-
 static unsigned int probe_gsm_size(struct pci_dev *pdev)
 {
 	u16 gmch_ctl, ggms;
@@ -218,19 +207,16 @@ static void primelockdep(struct xe_ggtt *ggtt)
 }
 
 static const struct xe_ggtt_pt_ops xelp_pt_ops = {
-	.pte_encode_bo = xelp_ggtt_encode_bo,
 	.pte_encode_flags = xelp_ggtt_pte_flags,
 	.ggtt_set_pte = xe_ggtt_set_pte,
 };
 
 static const struct xe_ggtt_pt_ops xelpg_pt_ops = {
-	.pte_encode_bo = xelpg_ggtt_encode_bo,
 	.pte_encode_flags = xelpg_ggtt_pte_flags,
 	.ggtt_set_pte = xe_ggtt_set_pte,
 };
 
 static const struct xe_ggtt_pt_ops xelpg_pt_wa_ops = {
-	.pte_encode_bo = xelpg_ggtt_encode_bo,
 	.pte_encode_flags = xelpg_ggtt_pte_flags,
 	.ggtt_set_pte = xe_ggtt_set_pte_and_flush,
 };
diff --git a/drivers/gpu/drm/xe/xe_ggtt_types.h b/drivers/gpu/drm/xe/xe_ggtt_types.h
index 06b1a602dd8d1..c5e999d58ff2a 100644
--- a/drivers/gpu/drm/xe/xe_ggtt_types.h
+++ b/drivers/gpu/drm/xe/xe_ggtt_types.h
@@ -74,9 +74,6 @@ struct xe_ggtt_node {
  * Which can vary from platform to platform.
  */
 struct xe_ggtt_pt_ops {
-	/** @pte_encode_bo: Encode PTE flags for a given BO */
-	u64 (*pte_encode_bo)(struct xe_bo *bo, u64 bo_offset, u16 pat_index);
-
 	/** @pte_encode_flags: Encode PTE flags for a given BO */
 	u64 (*pte_encode_flags)(struct xe_bo *bo, u16 pat_index);
 	/** @ggtt_set_pte: Directly write into GGTT's PTE */
-- 
2.45.2

