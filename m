Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1764B680CF0
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 13:07:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6BB10E222;
	Mon, 30 Jan 2023 12:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E8F389E59;
 Mon, 30 Jan 2023 12:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675080430; x=1706616430;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZaT4EbQIZs0rcQzQfGUV9BXhBKPnUIQhy1h9051DvC0=;
 b=WslJwogl0HrUpxvrXFtP/PKP98EPZYtTWCcDLLQzOlRG6ePPs4QndErq
 jgUyo0MFrSzMH3KI78gwHxewK/KDR0EPuyHTHI/tE/ZhkkfHeXLquhBRU
 QhSnowMWVLhqB4dNVbZk3ZN9+/NXaZgbx1HqoCrqcm6KshMtVG8NeUXz0
 akbU9jwEfqC4rSVij/wMST/wFIJtSul/7kv4O1rrvab8pZD+APtNRNALY
 KhK9sJV4Ld0M+9ZB157DOKV0rW3sFPfFRUQ7xlGrxXwgBwPNoa7EwG8IR
 zm/+6WqaxUGvsfPDaUnCd9vao2BluFAzsdR5RwLxBpSZiJaV/UUR4EHsd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="328816298"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="328816298"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 04:07:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="641521132"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="641521132"
Received: from dscheepe-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.1.159])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 04:07:08 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 12:06:34 +0000
Message-Id: <20230130120636.63765-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130120636.63765-1-matthew.auld@intel.com>
References: <20230130120636.63765-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/ttm: stop allocating dummy resources
 during BO creation
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

That should not be necessary any more when drivers should at least be
able to handle the move without a resource.

Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/ttm/ttm_bo.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 773080f48864..169818b32be2 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -952,7 +952,6 @@ int ttm_bo_init_reserved(struct ttm_device *bdev, struct ttm_buffer_object *bo,
 			 struct sg_table *sg, struct dma_resv *resv,
 			 void (*destroy) (struct ttm_buffer_object *))
 {
-	static const struct ttm_place sys_mem = { .mem_type = TTM_PL_SYSTEM };
 	int ret;
 
 	kref_init(&bo->kref);
@@ -969,12 +968,6 @@ int ttm_bo_init_reserved(struct ttm_device *bdev, struct ttm_buffer_object *bo,
 		bo->base.resv = &bo->base._resv;
 	atomic_inc(&ttm_glob.bo_count);
 
-	ret = ttm_resource_alloc(bo, &sys_mem, &bo->resource);
-	if (unlikely(ret)) {
-		ttm_bo_put(bo);
-		return ret;
-	}
-
 	/*
 	 * For ttm_bo_type_device buffers, allocate
 	 * address space from the device.
-- 
2.39.1

