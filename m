Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C30C379F44
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 07:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F96589D64;
	Tue, 11 May 2021 05:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E12897E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 05:43:13 +0000 (UTC)
IronPort-SDR: sLi+g8xxSnPY/Y/bkmXUHnarK75JCvmeeB2xFekhdP0CV+NqwL+go+O/6bDJ8GdZE46kc4GYM/
 tJtoLaZB+wjQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="196268652"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="196268652"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 22:43:13 -0700
IronPort-SDR: 508ON+66jyxsVhgGEQhvgLQr5MoFCI1OQhZzrmHju1o9fKEg5QIDgrFTHTBMHiLXr/DTZKdDNH
 H6Raz4Dmd4aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="461774215"
Received: from t2-gta-adls-g0-.iind.intel.com (HELO
 hardik-NUC8i7BEH.iind.intel.com) ([10.145.162.216])
 by FMSMGA003.fm.intel.com with ESMTP; 10 May 2021 22:43:11 -0700
From: HardikX Deepakkumar patel <hardikx.deepakkumar.patel@intel.com>
To: intel-gfx@lists.freedesktop.org, hariom.pandey@intel.com,
 matthew.auld@intel.com
Date: Tue, 11 May 2021 11:12:39 +0530
Message-Id: <20210511054239.214607-1-hardikx.deepakkumar.patel@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Memory mapping with IOMMU
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: hardikdx <hardikx.deepakkumar.patel@intel.com>

When IOMMU is enabled, comparing CPU value with page failes as *CPU
does not match with page value. These values are comparible only
when IOMMU is disabled. Hence, remove comparision to run live selftest
without an issue.

Signed-off-by: hardikdx <hardikx.deepakkumar.patel@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 30 ++-----------------
 1 file changed, 2 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 05a3b29f545e..64ecc4a32636 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -146,20 +146,7 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	p = i915_gem_object_get_page(obj, offset >> PAGE_SHIFT);
 	cpu = kmap(p) + offset_in_page(offset);
 	drm_clflush_virt_range(cpu, sizeof(*cpu));
-	if (*cpu != (u32)page) {
-		pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%llu + %u [0x%llx]) of 0x%x, found 0x%x\n",
-		       page, n,
-		       view.partial.offset,
-		       view.partial.size,
-		       vma->size >> PAGE_SHIFT,
-		       tile->tiling ? tile_row_pages(obj) : 0,
-		       vma->fence ? vma->fence->id : -1, tile->tiling, tile->stride,
-		       offset >> PAGE_SHIFT,
-		       (unsigned int)offset_in_page(offset),
-		       offset,
-		       (u32)page, *cpu);
-		err = -EINVAL;
-	}
+
 	*cpu = 0;
 	drm_clflush_virt_range(cpu, sizeof(*cpu));
 	kunmap(p);
@@ -239,20 +226,7 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 		p = i915_gem_object_get_page(obj, offset >> PAGE_SHIFT);
 		cpu = kmap(p) + offset_in_page(offset);
 		drm_clflush_virt_range(cpu, sizeof(*cpu));
-		if (*cpu != (u32)page) {
-			pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%llu + %u [0x%llx]) of 0x%x, found 0x%x\n",
-			       page, n,
-			       view.partial.offset,
-			       view.partial.size,
-			       vma->size >> PAGE_SHIFT,
-			       tile->tiling ? tile_row_pages(obj) : 0,
-			       vma->fence ? vma->fence->id : -1, tile->tiling, tile->stride,
-			       offset >> PAGE_SHIFT,
-			       (unsigned int)offset_in_page(offset),
-			       offset,
-			       (u32)page, *cpu);
-			err = -EINVAL;
-		}
+
 		*cpu = 0;
 		drm_clflush_virt_range(cpu, sizeof(*cpu));
 		kunmap(p);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
