Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC9F4EED51
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 14:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC0010E2EA;
	Fri,  1 Apr 2022 12:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C995210E2C2;
 Fri,  1 Apr 2022 12:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648816640; x=1680352640;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Z8cL7sSXIWoLnYTQXrRog7pSrLmf0C6XHEdiF6j31ZU=;
 b=PuoEGSJ4Gksrpgil4OEla7BOrzrysAbwIJ8NYdqz/uBsLc+ZwZbnvfIR
 Zs7XH38UrFQDc+baZP2xMFz1IdVaA5cUipQ9PcFKWrSpSbnxGYrCqOjUs
 Ddn/U1+nEKYcRdhlOPlGbybwBHpEZNBZPuNiCnn3THsB4qtRNIL80xxp2
 ODk6PECxE2j3uCuQ7nCtd00kBUUyHA7KJbcbgCMJgoxUELn32J0pyDhpr
 uo3ey+2euHO5h/wbdAqJ9Dvtn6848NPwu90CzxMKMpTzGN9snmBJepqJ9
 3m62su3k5GtU49Ij7xi26wph8g8ciBmx8cLY4XQZFdCCQwbOwl01dWvoz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="257708075"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="257708075"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:37:20 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="606725234"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:37:19 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Fri,  1 Apr 2022 18:07:50 +0530
Message-Id: <20220401123751.27771-9-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220401123751.27771-1-ramalingam.c@intel.com>
References: <20220401123751.27771-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 8/9] drm/i915/gem: Add extra pages in ttm_tt
 for ccs data
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

On Xe-HP and later devices, dedicated compression control state (CCS)
stored in local memory is used for each surface, to support the
3D and media compression formats.

The memory required for the CCS of the entire local memory is 1/256 of
the local memory size. So before the kernel boot, the required memory
is reserved for the CCS data and a secure register will be programmed
with the CCS base address

So when an object is allocated in local memory, dont need to explicitly
allocate the space for ccs data. But when the obj is evicted into the
smem, to hold the compression related data along with the obj extra space
is needed in smem. i.e obj_size + (obj_size/256).

Hence when a smem pages are allocated for an obj with lmem placement
possibility we create with the extra pages required for the ccs data for
the obj size.

v2:
  Used imperative wording [Thomas]
v3:
  Inflate the pages only when obj's placement is lmem only
v4:
  GEM_BUG_ON if the ttm->num_pages > obj page size [Thomas]

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
cc: Christian Koenig <christian.koenig@amd.com>
cc: Hellstrom Thomas <thomas.hellstrom@intel.com>
Reviewed-by: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 30 ++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index a878910a563c..4c25d9b2f138 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -20,6 +20,7 @@
 #include "gem/i915_gem_ttm.h"
 #include "gem/i915_gem_ttm_move.h"
 #include "gem/i915_gem_ttm_pm.h"
+#include "gt/intel_gpu_commands.h"
 
 #define I915_TTM_PRIO_PURGE     0
 #define I915_TTM_PRIO_NO_PAGES  1
@@ -265,12 +266,33 @@ static const struct i915_refct_sgt_ops tt_rsgt_ops = {
 	.release = i915_ttm_tt_release
 };
 
+static inline bool
+i915_gem_object_needs_ccs_pages(struct drm_i915_gem_object *obj)
+{
+	bool lmem_placement = false;
+	int i;
+
+	for (i = 0; i < obj->mm.n_placements; i++) {
+		/* Compression is not allowed for the objects with smem placement */
+		if (obj->mm.placements[i]->type == INTEL_MEMORY_SYSTEM)
+			return false;
+		if (!lmem_placement &&
+		    obj->mm.placements[i]->type == INTEL_MEMORY_LOCAL)
+			lmem_placement = true;
+	}
+
+	return lmem_placement;
+}
+
 static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
 					 uint32_t page_flags)
 {
+	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
+						     bdev);
 	struct ttm_resource_manager *man =
 		ttm_manager_type(bo->bdev, bo->resource->mem_type);
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	unsigned long ccs_pages = 0;
 	enum ttm_caching caching;
 	struct i915_ttm_tt *i915_tt;
 	int ret;
@@ -293,7 +315,12 @@ static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
 		i915_tt->is_shmem = true;
 	}
 
-	ret = ttm_tt_init(&i915_tt->ttm, bo, page_flags, caching, 0);
+	if (HAS_FLAT_CCS(i915) && i915_gem_object_needs_ccs_pages(obj))
+		ccs_pages = DIV_ROUND_UP(DIV_ROUND_UP(bo->base.size,
+						      NUM_BYTES_PER_CCS_BYTE),
+					 PAGE_SIZE);
+
+	ret = ttm_tt_init(&i915_tt->ttm, bo, page_flags, caching, ccs_pages);
 	if (ret)
 		goto err_free;
 
@@ -773,6 +800,7 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 					    i915_sg_dma_sizes(rsgt->table.sgl));
 	}
 
+	GEM_BUG_ON(bo->ttm && ((obj->base.size >> PAGE_SHIFT) < bo->ttm->num_pages));
 	i915_ttm_adjust_lru(obj);
 	return ret;
 }
-- 
2.20.1

