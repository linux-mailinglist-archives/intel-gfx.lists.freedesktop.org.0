Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4B54E32D1
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 23:45:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E52410E4CE;
	Mon, 21 Mar 2022 22:44:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB89810E4B7;
 Mon, 21 Mar 2022 22:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647902684; x=1679438684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=klCbtY3aktDaaVDkgnqz9fAgP5FPypSVdifsuNys2Zk=;
 b=lpMAdoVRZD86Xky2zIbw/RSpgyOxD4vg/ltcGjJH4fVSLd+eG3UVMtS/
 i0g9p9nA0hdIsf23n5VnpqbCceJ3Uu/5+7HaFN42MpQUtMYiDbTb7YFG/
 0f9NFzWKut5t6QooUw4+zNcrnb5OKfH/SFssrsk9f75OLAaI/tPG94Nov
 tSHyhCBjn8LVlBehZR6kt5sJ9Zy//v20E/8Yd/IffKtCMet0tbx9XIN4w
 Rvo4b3HlOxB2SGZZGibB/4p3J69sroOxdXKB11QzKXNRosQpy6fG4SBpm
 g8ZQuoZxrlmfjyHqSbAbFPam6y7HddaARIc61FwX4EKx5RdfkXE7f0Qxs Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="257613716"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="257613716"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 15:44:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="543414242"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 15:44:42 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Mar 2022 04:14:58 +0530
Message-Id: <20220321224459.12223-9-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220321224459.12223-1-ramalingam.c@intel.com>
References: <20220321224459.12223-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 8/9] drm/i915/gem: Add extra pages in ttm_tt
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
Cc: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Christian Koenig <christian.koenig@amd.com>, Nirmoy Das <nirmoy.das@intel.com>
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

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
cc: Christian Koenig <christian.koenig@amd.com>
cc: Hellstrom Thomas <thomas.hellstrom@intel.com>
Reviewed-by: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 29 ++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 3b9f99c765c4..0305a150b9d4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -20,6 +20,7 @@
 #include "gem/i915_gem_ttm.h"
 #include "gem/i915_gem_ttm_move.h"
 #include "gem/i915_gem_ttm_pm.h"
+#include "gt/intel_gpu_commands.h"
 
 #define I915_TTM_PRIO_PURGE     0
 #define I915_TTM_PRIO_NO_PAGES  1
@@ -262,12 +263,33 @@ static const struct i915_refct_sgt_ops tt_rsgt_ops = {
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
@@ -290,7 +312,12 @@ static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
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
 
-- 
2.20.1

