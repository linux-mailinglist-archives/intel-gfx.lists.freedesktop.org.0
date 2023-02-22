Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA8A69F7CF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 16:31:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1FCD10EA11;
	Wed, 22 Feb 2023 15:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EB6910EA11
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 15:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677079872; x=1708615872;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ta8smGKOWjVWdtLlqON090fW0yJUlls7J0m6PFrFeY8=;
 b=aW/+6ckdiUeoykHdrwO1BeQCk6DoUSIQwxxYweGZZy5YYhnqe2ozhKP/
 tY11bDOv210xk+LP188faMU1fRq0E5099DrkgiNFUe/AaalwTmMBA5x7Z
 GQV9xdJtENXOyrHzcjqNNGBv2ArJYqikdmODaEdiw9H7gyjgmi9fhG7K0
 kldzLbziWE3w4GEngq7KlCrTi890pOeEpghazMKuzK4SRO9LaqUpm5Zn9
 VZUW55nqy5U9WwP/s2VZG53URhmD9P93OkL6r304pmaMFciuQEXbyvc43
 zoJm8vjQFtDE78xJ7Cy5QOUWDBwJe8h+xQRQ2XUIdMnctGYkAmnuyCXUE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360436256"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360436256"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 07:31:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="740857678"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="740857678"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 07:31:10 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 07:26:41 -0800
Message-Id: <20230222152641.1491307-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use correct huge page manager for MTL
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
Cc: lucas.demarchi@intel.com, thomas.hellstrom@linux.intel.com,
 jonathan.cavitt@intel.com, matthew.auld@intel.com, daniel.vetter@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL currently uses gen8_ppgtt_insert_huge when managing huge pages.  This is because
MTL reports as not supporting 64K pages, or more accurately, the system that reports
whether a platform has 64K pages reports false for MTL.  This is only half correct,
as the 64K page support reporting system only cares about 64K page support for LMEM,
which MTL doesn't have.

MTL should be using xehpsdv_ppgtt_insert_huge.  However, simply changing over to
using that manager doesn't resolve the issue because MTL is expecting the virtual
address space for the page table to be flushed after initialization, so we must also
add a flush statement there.

The changes made to the huge page manager selection indirectly impacted some of the
mock hugepage selftests.  Due to the use of pte level hints, rather than pde level
hints, we now expect 64K page sizes to be properly reported by the GTT, so we should
remove the check that asserts otherwise.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 3 ---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c            | 3 ++-
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index defece0bcb81..1659ada4ce33 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -784,9 +784,6 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
 		GEM_BUG_ON(!expected_gtt);
 		GEM_BUG_ON(size);
 
-		if (expected_gtt & I915_GTT_PAGE_SIZE_4K)
-			expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
-
 		i915_vma_unpin(vma);
 
 		if (vma->page_sizes.sg & I915_GTT_PAGE_SIZE_64K) {
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 4daaa6f55668..9c571185395f 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -570,6 +570,7 @@ xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
 			}
 		} while (rem >= page_size && index < max);
 
+		drm_clflush_virt_range(vaddr, PAGE_SIZE);
 		vma_res->page_sizes_gtt |= page_size;
 	} while (iter->sg && sg_dma_len(iter->sg));
 }
@@ -707,7 +708,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
 	struct sgt_dma iter = sgt_dma(vma_res);
 
 	if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
-		if (HAS_64K_PAGES(vm->i915))
+		if (GRAPHICS_VER_FULL(vm->i915) >= IP_VER(12, 50))
 			xehpsdv_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
 		else
 			gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
-- 
2.25.1

