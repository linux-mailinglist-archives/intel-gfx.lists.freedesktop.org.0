Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F0D89E851
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 04:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8853510E2C9;
	Wed, 10 Apr 2024 02:58:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gTHHnIQc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7CF410E2C9;
 Wed, 10 Apr 2024 02:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712717896; x=1744253896;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vkLQiLJXNBDlWLtYwLKrYBvyI0JlenoHAN5YL+scUqA=;
 b=gTHHnIQcAT3yRNJU8u2sGNOFotziArotcGWaoENkKg5W3XDJl8PzdtMi
 P8L7Fz6HQjkfBnyHnQwNaemYqxg6BMHQRlUYKNmxIeCi+MzGJP//8RPiX
 hr69Xxlkjz0oSChWH8CPcMJKk2yE1wbbwvPMc9sBbq7C9ZIoXZGtC8Wr7
 LPUd6RfjWxwxsjzz2+pc7PlywqE1316cZ5eKO8uv9mXLhKcjCGRnbZOeY
 0M5srY25AoETr1jiA1Ewe402aUastnXJtSw+wIROtB8wr1Oq2f/mVIeWf
 bOoIyJ53v/qMGpkXZ03BNiy4u7/3eyIH1/HexQTRy6y5GswZiDJTC9pIB Q==;
X-CSE-ConnectionGUID: FQM9aRAtQJ6Tp4rXrwyJwA==
X-CSE-MsgGUID: bUF1TPo3SsOFdBQIpoxNVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7917617"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7917617"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 19:58:15 -0700
X-CSE-ConnectionGUID: BWx5xe7bQnSv2SO3lkkinQ==
X-CSE-MsgGUID: 4h22Xz98Q52Q0sbrCR1XUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20299797"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 09 Apr 2024 19:58:14 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@intel.com, rodrigo.vivi@intel.com
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv3] drm/xe/display: use mul_u32_u32 for multiplying operands
Date: Wed, 10 Apr 2024 08:18:10 +0530
Message-Id: <20240410024810.1707500-1-arun.r.murthy@intel.com>
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

Use mul_u32_u32 to avoid potential overflow in multiplying two u32 and
store the u64 result.

v2: remove u64 typecast and use mul_u32_u32 (Ville)
v3: Reframe the commit message <Rodrigo>

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 3a584bc3a0a3..c73054c09ae9 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -29,7 +29,7 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_
 		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
 
 		for (row = 0; row < height; row++) {
-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
+			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),
 							      xe->pat.idx[XE_CACHE_NONE]);
 
 			iosys_map_wr(map, *dpt_ofs, u64, pte);
@@ -61,8 +61,8 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
 
 		for (column = 0; column < width; column++) {
 			iosys_map_wr(map, *dpt_ofs, u64,
-				     pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
-				     xe->pat.idx[XE_CACHE_NONE]));
+				     pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),
+						   xe->pat.idx[XE_CACHE_NONE]));
 
 			*dpt_ofs += 8;
 			src_idx++;
@@ -121,7 +121,7 @@ static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
 		u32 x;
 
 		for (x = 0; x < size / XE_PAGE_SIZE; x++) {
-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x * XE_PAGE_SIZE,
+			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(x, XE_PAGE_SIZE),
 							      xe->pat.idx[XE_CACHE_NONE]);
 
 			iosys_map_wr(&dpt->vmap, x * 8, u64, pte);
@@ -167,7 +167,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
 		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
 
 		for (row = 0; row < height; row++) {
-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
+			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),
 							      xe->pat.idx[XE_CACHE_NONE]);
 
 			xe_ggtt_set_pte(ggtt, *ggtt_ofs, pte);
-- 
2.25.1

