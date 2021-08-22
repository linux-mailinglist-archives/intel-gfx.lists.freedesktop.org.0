Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A453F4074
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Aug 2021 18:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FCE289E41;
	Sun, 22 Aug 2021 16:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC93B89E32
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Aug 2021 16:30:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302567437"
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="302567437"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 09:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="596395752"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2021 09:30:20 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matthew Auld <matthew.auld@intel.com>,
 Stuart Summers <stuart.summers@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 22 Aug 2021 21:56:55 +0530
Message-Id: <20210822162706.819507-3-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 02/13] drm/i915/xehpsdv: set min page-size to 64K
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

From: Matthew Auld <matthew.auld@intel.com>

LMEM should be allocated at 64K granularity, since 4K page support will
eventually be dropped for LMEM when using the PPGTT.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c  | 4 +++-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index ddd37ccb1362..291fc3ec98de 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -780,6 +780,8 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 	struct intel_memory_region *mem;
 	resource_size_t io_start;
 	resource_size_t lmem_size;
+	resource_size_t min_page_size = HAS_64K_PAGES(i915) ?
+	   I915_GTT_PAGE_SIZE_64K : I915_GTT_PAGE_SIZE_4K;
 	u64 lmem_base;
 
 	lmem_base = intel_uncore_read64(uncore, GEN12_DSMBASE);
@@ -790,7 +792,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 	io_start = pci_resource_start(pdev, 2) + lmem_base;
 
 	mem = intel_memory_region_create(i915, lmem_base, lmem_size,
-					 I915_GTT_PAGE_SIZE_4K, io_start,
+					 min_page_size, io_start,
 					 type, instance,
 					 &i915_region_stolen_lmem_ops);
 	if (IS_ERR(mem))
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index a74b72f50cc9..4ea0ad9435df 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -195,6 +195,8 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	struct intel_memory_region *mem;
 	resource_size_t io_start;
 	resource_size_t lmem_size;
+	resource_size_t min_page_size = HAS_64K_PAGES(i915) ?
+	   I915_GTT_PAGE_SIZE_64K : I915_GTT_PAGE_SIZE_4K;
 	int err;
 
 	if (!IS_DGFX(i915))
@@ -210,7 +212,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	mem = intel_memory_region_create(i915,
 					 0,
 					 lmem_size,
-					 I915_GTT_PAGE_SIZE_4K,
+					 min_page_size,
 					 io_start,
 					 INTEL_MEMORY_LOCAL,
 					 0,
-- 
2.26.2

