Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3605587E841
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 12:11:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5160810EDDA;
	Mon, 18 Mar 2024 11:11:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P/bDbIos";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B5310EDDA;
 Mon, 18 Mar 2024 11:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710760269; x=1742296269;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8AvsA15UgAI0L9njipCoxWiKDQpPhGRkapasjgHJhCc=;
 b=P/bDbIosr5iiNp9sfbDWQUmSB9MhTGeM3D+SSNw8dDXuR1S8A+De1HEi
 JqgBssJpCgUnFyTc54s/QjaCtwk8h/NVzqfsLl91BNq6M9feieJtVEikl
 2mud+v6bEXLmZLXhGU5TGCLRJ7Fjx7Wr3x3l595YxVYOyUZeFSYTQJE9J
 abFE0/dkrrtdUM4NUhewOaZ/MQv0AZ/0x/FImyDAQCJYRR4mxHGLYdug+
 cimSzHk8Nsuoj6Hf2hNO7OeSUnyfh31RDQTDwTCMw+HwveVwiV2oWLyBs
 i6MiAC/soOtUH3r3J2Hy2t8PVSEWW59w+ly3PevL3fmJOQU8jgckIZzP9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="31002312"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="31002312"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 04:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="13337215"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 18 Mar 2024 04:11:08 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/xe/display: fix potential overflow when multiplying 2 u32
Date: Mon, 18 Mar 2024 16:31:03 +0530
Message-Id: <20240318110103.3872169-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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

Multiplying XE_PAGE_SIZE with another u32 and the product stored in
u64 can potentially lead to overflow, use mul_u32_u32 instead.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 722c84a56607..e0b511ff7eab 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -29,7 +29,7 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_
 		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
 
 		for (row = 0; row < height; row++) {
-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
+			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),
 							      xe->pat.idx[XE_CACHE_WB]);
 
 			iosys_map_wr(map, *dpt_ofs, u64, pte);
@@ -61,7 +61,7 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
 
 		for (column = 0; column < width; column++) {
 			iosys_map_wr(map, *dpt_ofs, u64,
-				     pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
+				     pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),
 				     xe->pat.idx[XE_CACHE_WB]));
 
 			*dpt_ofs += 8;
@@ -118,7 +118,7 @@ static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
 		u32 x;
 
 		for (x = 0; x < size / XE_PAGE_SIZE; x++) {
-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x * XE_PAGE_SIZE,
+			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(x, XE_PAGE_SIZE),
 							      xe->pat.idx[XE_CACHE_WB]);
 
 			iosys_map_wr(&dpt->vmap, x * 8, u64, pte);
@@ -164,7 +164,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
 		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
 
 		for (row = 0; row < height; row++) {
-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
+			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),
 							      xe->pat.idx[XE_CACHE_WB]);
 
 			xe_ggtt_set_pte(ggtt, *ggtt_ofs, pte);
@@ -381,4 +381,4 @@ struct i915_address_space *intel_dpt_create(struct intel_framebuffer *fb)
 void intel_dpt_destroy(struct i915_address_space *vm)
 {
 	return;
-}
\ No newline at end of file
+}
-- 
2.25.1

