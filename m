Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BDD53C77D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 11:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C443112302;
	Fri,  3 Jun 2022 09:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4C6A112258
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 09:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654248368; x=1685784368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t5QRcVfp55W80fWNslwT7XcwkaYr62prOvRbMy4EZWY=;
 b=ViSmltSBiBnKrB9/DFWpMLSf4gpN9cOb6/y0c+jCjREm08QzPFaAPyom
 G3KJFB6KaFRqCNfSfyp7ga698uEc7seXvKBKJwbq4O1txi0vKLhk+AtpV
 oEjPnLaucuLRJkbRXDb8s3dyIMsUKGAhSStOPNdZ7LDjTePL8FzyoDZNv
 bFlnqCPx15uGpbEWu+99JT53ICd2WAaCicvTppbJymciCIcGuei+QVIEW
 CbCrRZ6LFsrojCLlFDEDnU06NWyN3Dfwz3bHKrG4DsnO4P44ebMEsVba+
 cCN4ZzJ9yLRyPRwKbbP/qZb8a/1AAVGU+fXjYGqCcd5Si0Inw9CW9cArW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="276227446"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="276227446"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 02:26:06 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="563712705"
Received: from swoon-mobl1.gar.corp.intel.com (HELO hades.gar.corp.intel.com)
 ([10.213.34.85])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 02:26:03 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 18:24:38 +0900
Message-Id: <20220603092441.1526151-4-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220603092441.1526151-1-gwan-gyeong.mun@intel.com>
References: <20220603092441.1526151-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Check for integer truncation on
 the configuration of ttm place
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
Cc: thomas.hellstrom@linux.intel.com, matthew.auld@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is an impedance mismatch between the first/last valid page
frame number of ttm place in unsigned and our memory/page accounting in
unsigned long.
As the object size is under the control of userspace, we have to be prudent
and catch the conversion errors.
To catch the implicit truncation as we switch from unsigned long to
unsigned, we use our overflows_type check and report E2BIG or overflow_type
prior to the operation.

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 12 +++++++++---
 drivers/gpu/drm/i915/intel_region_ttm.c | 16 +++++++++++++---
 2 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 52f8c3f4d8a8..8231a6fc5437 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -137,19 +137,25 @@ i915_ttm_place_from_region(const struct intel_memory_region *mr,
 	if (mr->type == INTEL_MEMORY_SYSTEM)
 		return;
 
+#define SAFE_CONVERSION(ptr, value) ({ \
+	if (!safe_conversion(ptr, value)) { \
+		GEM_BUG_ON(overflows_type(value, *ptr)); \
+	} \
+})
 	if (flags & I915_BO_ALLOC_CONTIGUOUS)
 		place->flags |= TTM_PL_FLAG_CONTIGUOUS;
 	if (offset != I915_BO_INVALID_OFFSET) {
-		place->fpfn = offset >> PAGE_SHIFT;
-		place->lpfn = place->fpfn + (size >> PAGE_SHIFT);
+		SAFE_CONVERSION(&place->fpfn, offset >> PAGE_SHIFT);
+		SAFE_CONVERSION(&place->lpfn, place->fpfn + (size >> PAGE_SHIFT));
 	} else if (mr->io_size && mr->io_size < mr->total) {
 		if (flags & I915_BO_ALLOC_GPU_ONLY) {
 			place->flags |= TTM_PL_FLAG_TOPDOWN;
 		} else {
 			place->fpfn = 0;
-			place->lpfn = mr->io_size >> PAGE_SHIFT;
+			SAFE_CONVERSION(&place->lpfn, mr->io_size >> PAGE_SHIFT);
 		}
 	}
+#undef SAFE_CONVERSION
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
index 62ff77445b01..8fcb8654b978 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -202,24 +202,34 @@ intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
 	struct ttm_resource *res;
 	int ret;
 
+#define SAFE_CONVERSION(ptr, value) ({ \
+	if (!safe_conversion(ptr, value)) { \
+		GEM_BUG_ON(overflows_type(value, *ptr)); \
+		ret = -E2BIG; \
+		goto out; \
+	} \
+})
 	if (flags & I915_BO_ALLOC_CONTIGUOUS)
 		place.flags |= TTM_PL_FLAG_CONTIGUOUS;
 	if (offset != I915_BO_INVALID_OFFSET) {
-		place.fpfn = offset >> PAGE_SHIFT;
-		place.lpfn = place.fpfn + (size >> PAGE_SHIFT);
+		SAFE_CONVERSION(&place.fpfn, offset >> PAGE_SHIFT);
+		SAFE_CONVERSION(&place.lpfn, place.fpfn + (size >> PAGE_SHIFT));
 	} else if (mem->io_size && mem->io_size < mem->total) {
 		if (flags & I915_BO_ALLOC_GPU_ONLY) {
 			place.flags |= TTM_PL_FLAG_TOPDOWN;
 		} else {
 			place.fpfn = 0;
-			place.lpfn = mem->io_size >> PAGE_SHIFT;
+			SAFE_CONVERSION(&place.lpfn, mem->io_size >> PAGE_SHIFT);
 		}
 	}
+#undef SAFE_CONVERSION
 
 	mock_bo.base.size = size;
 	mock_bo.bdev = &mem->i915->bdev;
 
 	ret = man->func->alloc(man, &mock_bo, &place, &res);
+
+out:
 	if (ret == -ENOSPC)
 		ret = -ENXIO;
 	if (!ret)
-- 
2.34.1

