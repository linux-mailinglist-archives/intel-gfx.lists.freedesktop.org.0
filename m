Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217C86A2098
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 18:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2BAC10E233;
	Fri, 24 Feb 2023 17:44:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBFAF10E23E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 17:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677260686; x=1708796686;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FLqCKKmMtEEC8e6cHxhxa3Oj1LKENGbqI5pRh/iobnc=;
 b=IvZT/SJJ+1AWL/KSvaSchHxg4+IbeZob5INvqp13PhWxbPwykPC0s5AC
 UicAMbFxRyCWVbF4VxNRta78YVS7svHycCw4rm4fdOUY9u5eGSIl+tLft
 HdySz0dqf7xHNw50g8o+XM/NP6dsT2H5UgyY18WZo0b6iw4/hlGpAzYzM
 E3DmtIuUm1/beTlrpkGP9pQelt87PD+HIWJWSHeXTvUOQI8LAtxM1N3sA
 5AnEUz5vwyWRHjArbArHaRZG/k4sdP64/bgOMIlkVS/4sLf98SnIDvdPn
 dhpNWPynpR/XgK2lpUuu4C1D+RjwbcOIcyHNfoJtXEks+HkU2qT26+ZYR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="317294450"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="317294450"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 09:44:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="918502315"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="918502315"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 09:44:45 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 09:40:16 -0800
Message-Id: <20230224174016.2081135-1-jonathan.cavitt@intel.com>
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
correct the expected test results to reflect this change.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 11 ++++-------
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c            |  3 ++-
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index defece0bcb81..06554717495f 100644
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
@@ -849,7 +846,7 @@ static int igt_mock_ppgtt_64K(void *arg)
 		},
 		{
 			.size = SZ_64K + SZ_4K,
-			.gtt = I915_GTT_PAGE_SIZE_4K,
+			.gtt = I915_GTT_PAGE_SIZE_64K | I915_GTT_PAGE_SIZE_4K,
 			.offset = 0,
 		},
 		{
@@ -864,7 +861,7 @@ static int igt_mock_ppgtt_64K(void *arg)
 		},
 		{
 			.size = SZ_2M - SZ_4K,
-			.gtt = I915_GTT_PAGE_SIZE_4K,
+			.gtt = I915_GTT_PAGE_SIZE_64K | I915_GTT_PAGE_SIZE_4K,
 			.offset = 0,
 		},
 		{
@@ -886,12 +883,12 @@ static int igt_mock_ppgtt_64K(void *arg)
 		{
 			.size = SZ_64K,
 			.offset = SZ_2M,
-			.gtt = I915_GTT_PAGE_SIZE_4K,
+			.gtt = I915_GTT_PAGE_SIZE_64K,
 		},
 		{
 			.size = SZ_128K,
 			.offset = SZ_2M - SZ_64K,
-			.gtt = I915_GTT_PAGE_SIZE_4K,
+			.gtt = I915_GTT_PAGE_SIZE_64K,
 		},
 	};
 	struct i915_vma *vma;
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

