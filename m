Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9487A680A9F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 11:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAFAE10E1D4;
	Mon, 30 Jan 2023 10:17:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9264B10E220;
 Mon, 30 Jan 2023 10:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675073875; x=1706609875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pLbEbTuQ7hqEcr6TdPo2XG/N7paBnTT2xqswALTRuF4=;
 b=MgqFWrzBECbce0Dp8/rxw7jtuvvQ67abNFHyCqsDCX5QBcCAsVTsxOgn
 IoihtWW5omkC5ptIxKadYJdcX2B4o59VRatc+fY+OpeIIbHkatyygzBPE
 X4k0lRyDtgs9byFez7WIrYEdIwiiZZaSxR0EdkUkMqBgZNQWMLmIEzVPN
 8ov0sJGTRyVrajHxdPWoMPEOTHGWEzA2SUZU457gA1jEgKUN2lBOz8KSV
 2xSSJddR1mjNZlShjriL25YquhL83gQ1411crgQgOBVMxZ8fKCLqCnb88
 XHx4E/JwuCfuzvJXDYUG+L4styqZMjLLwBCW9VyoOb5Ik9o86dDRUh4ei g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="328798978"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="328798978"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 02:17:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="696348890"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="696348890"
Received: from dscheepe-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.1.159])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 02:14:22 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 10:12:30 +0000
Message-Id: <20230130101230.25347-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130101230.25347-1-matthew.auld@intel.com>
References: <20230130101230.25347-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/ttm: prevent moving of pinned BOs
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
Cc: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Christian König <christian.koenig@amd.com>

We have checks for this in the individual drivers move callback, but
it's probably better to generally forbid that on a higher level.

Also stops exporting ttm_resource_compat() since that's not necessary
any more after removing the extra checks in vmwgfx.

Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c |  4 ----
 drivers/gpu/drm/nouveau/nouveau_bo.c    |  3 ---
 drivers/gpu/drm/radeon/radeon_ttm.c     |  4 ----
 drivers/gpu/drm/ttm/ttm_bo.c            | 20 ++++++++++++--------
 drivers/gpu/drm/ttm/ttm_resource.c      |  1 -
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.c      | 19 ++-----------------
 6 files changed, 14 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index c5ef7f7bdc15..2cd081cbf706 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
@@ -466,11 +466,7 @@ static int amdgpu_bo_move(struct ttm_buffer_object *bo, bool evict,
 			return r;
 	}
 
-	/* Can't move a pinned BO */
 	abo = ttm_to_amdgpu_bo(bo);
-	if (WARN_ON_ONCE(abo->tbo.pin_count > 0))
-		return -EINVAL;
-
 	adev = amdgpu_ttm_adev(bo->bdev);
 
 	if (!old_mem || (old_mem->mem_type == TTM_PL_SYSTEM &&
diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouveau/nouveau_bo.c
index 288eebc70a67..c2ec91cc845d 100644
--- a/drivers/gpu/drm/nouveau/nouveau_bo.c
+++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
@@ -1015,9 +1015,6 @@ nouveau_bo_move(struct ttm_buffer_object *bo, bool evict,
 	if (ret)
 		goto out_ntfy;
 
-	if (nvbo->bo.pin_count)
-		NV_WARN(drm, "Moving pinned object %p!\n", nvbo);
-
 	if (drm->client.device.info.family < NV_DEVICE_INFO_V0_TESLA) {
 		ret = nouveau_bo_vm_bind(bo, new_reg, &new_tile);
 		if (ret)
diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeon/radeon_ttm.c
index 1e8e287e113c..67075c85f847 100644
--- a/drivers/gpu/drm/radeon/radeon_ttm.c
+++ b/drivers/gpu/drm/radeon/radeon_ttm.c
@@ -211,11 +211,7 @@ static int radeon_bo_move(struct ttm_buffer_object *bo, bool evict,
 	if (r)
 		return r;
 
-	/* Can't move a pinned BO */
 	rbo = container_of(bo, struct radeon_bo, tbo);
-	if (WARN_ON_ONCE(rbo->tbo.pin_count > 0))
-		return -EINVAL;
-
 	rdev = radeon_get_rdev(bo->bdev);
 	if (old_mem->mem_type == TTM_PL_SYSTEM && bo->ttm == NULL) {
 		ttm_bo_move_null(bo, new_mem);
diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 169818b32be2..882c2fa346f3 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -893,14 +893,18 @@ int ttm_bo_validate(struct ttm_buffer_object *bo,
 	if (!placement->num_placement && !placement->num_busy_placement)
 		return ttm_bo_pipeline_gutting(bo);
 
-	/*
-	 * Check whether we need to move buffer.
-	 */
-	if (!bo->resource || !ttm_resource_compat(bo->resource, placement)) {
-		ret = ttm_bo_move_buffer(bo, placement, ctx);
-		if (ret)
-			return ret;
-	}
+	/* Check whether we need to move buffer. */
+	if (bo->resource && ttm_resource_compat(bo->resource, placement))
+		return 0;
+
+	/* Moving of pinned BOs is forbidden */
+	if (bo->pin_count)
+		return -EINVAL;
+
+	ret = ttm_bo_move_buffer(bo, placement, ctx);
+	if (ret)
+		return ret;
+
 	/*
 	 * We might need to add a TTM.
 	 */
diff --git a/drivers/gpu/drm/ttm/ttm_resource.c b/drivers/gpu/drm/ttm/ttm_resource.c
index b8a826a24fb2..7333f7a87a2f 100644
--- a/drivers/gpu/drm/ttm/ttm_resource.c
+++ b/drivers/gpu/drm/ttm/ttm_resource.c
@@ -361,7 +361,6 @@ bool ttm_resource_compat(struct ttm_resource *res,
 
 	return false;
 }
-EXPORT_SYMBOL(ttm_resource_compat);
 
 void ttm_resource_set_bo(struct ttm_resource *res,
 			 struct ttm_buffer_object *bo)
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c b/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
index aa1cd5126a32..9bf1f9d2f9b6 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
@@ -87,12 +87,7 @@ int vmw_bo_pin_in_placement(struct vmw_private *dev_priv,
 	if (unlikely(ret != 0))
 		goto err;
 
-	if (buf->base.pin_count > 0)
-		ret = ttm_resource_compat(bo->resource, placement)
-			? 0 : -EINVAL;
-	else
-		ret = ttm_bo_validate(bo, placement, &ctx);
-
+	ret = ttm_bo_validate(bo, placement, &ctx);
 	if (!ret)
 		vmw_bo_pin_reserved(buf, true);
 
@@ -128,12 +123,6 @@ int vmw_bo_pin_in_vram_or_gmr(struct vmw_private *dev_priv,
 	if (unlikely(ret != 0))
 		goto err;
 
-	if (buf->base.pin_count > 0) {
-		ret = ttm_resource_compat(bo->resource, &vmw_vram_gmr_placement)
-			? 0 : -EINVAL;
-		goto out_unreserve;
-	}
-
 	ret = ttm_bo_validate(bo, &vmw_vram_gmr_placement, &ctx);
 	if (likely(ret == 0) || ret == -ERESTARTSYS)
 		goto out_unreserve;
@@ -218,11 +207,7 @@ int vmw_bo_pin_in_start_of_vram(struct vmw_private *dev_priv,
 		(void) ttm_bo_validate(bo, &vmw_sys_placement, &ctx);
 	}
 
-	if (buf->base.pin_count > 0)
-		ret = ttm_resource_compat(bo->resource, &placement)
-			? 0 : -EINVAL;
-	else
-		ret = ttm_bo_validate(bo, &placement, &ctx);
+	ret = ttm_bo_validate(bo, &placement, &ctx);
 
 	/* For some reason we didn't end up at the start of vram */
 	WARN_ON(ret == 0 && bo->resource->start != 0);
-- 
2.39.1

