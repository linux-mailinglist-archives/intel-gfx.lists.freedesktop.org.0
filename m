Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4BE5F3261
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 17:20:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8424010E210;
	Mon,  3 Oct 2022 15:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE6310E210
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 15:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664810389; x=1696346389;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=myl6/pFC8cEPDZJOAW1RWivm6kJDHOvb9qd72x92hks=;
 b=KsEsyA0fehTvO9fudiV58VaJUxw8vkveCjpbKE82XVGLB/KWzFC6/B6u
 V9XdF9uiNsI02PnRcO2tQUKzLbq81F8AeNsX1nEJb8R8/w6ezkr0Dr/RS
 jhSFw//TkdCmmxerRo2N4ZNjxIybbXichiZthSsms3/mS8hQXwia/TpSg
 3nsR82Jm133gsTtph+ODs2rCj5fBCgimNFT1Hkx1qb+OnBR1QebUyJrJ8
 F4zn67Zv/GzoVi7k34PtSg7dnh5g1HhSDDWczUfef0Th1GefixC6vsvPm
 cuPRo/YQ/BdMc7YBs+colXjfE6aaBQTwktGQvLoq8vD6x6hK/MWhsmvZJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="289849925"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="289849925"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 08:19:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692102208"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="692102208"
Received: from adejeanb-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.6.198])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 08:19:47 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 16:19:36 +0100
Message-Id: <20221003151936.74462-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/ttm: implement access_memory
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It looks like we need this for local-memory, if we want to use ptrace.
Something more is still needed if we want to handle non-mappable memory,
which looks quite annoying.

v2: ttm_bo_kmap doesn't seem to work well here, and seems to expect
contiguous resource

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6989
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 45 +++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 3dc6acfcf4ec..5c0ccbe24449 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -699,6 +699,50 @@ static unsigned long i915_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
 	return ((base + sg_dma_address(sg)) >> PAGE_SHIFT) + ofs;
 }
 
+static int i915_ttm_access_memory(struct ttm_buffer_object *bo,
+				  unsigned long offset, void *buf,
+				  int len, int write)
+{
+	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	resource_size_t iomap = obj->mm.region->iomap.base -
+		obj->mm.region->region.start;
+	unsigned long page = offset >> PAGE_SHIFT;
+	unsigned long bytes_left = len;
+
+	/*
+	 * TODO: For now just let it fail if the resource is non-mappable,
+	 * otherwise we need to perform the memcpy from the gpu here, without
+	 * interfering with the object (like moving the entire thing).
+	 */
+	if (!i915_ttm_resource_mappable(bo->resource))
+		return -EIO;
+
+	offset -= page << PAGE_SHIFT;
+	do {
+		unsigned long bytes = min(bytes_left, PAGE_SIZE - offset);
+		void __iomem *ptr;
+		dma_addr_t daddr;
+
+		daddr = i915_gem_object_get_dma_address(obj, page);
+		ptr = ioremap_wc(iomap + daddr + offset, PAGE_SIZE);
+		if (!ptr)
+			return -EIO;
+
+		if (write)
+			memcpy_toio(ptr, buf, bytes);
+		else
+			memcpy_fromio(buf, ptr, bytes);
+		iounmap(ptr);
+
+		page++;
+		buf += bytes;
+		bytes_left -= bytes;
+		offset = 0;
+	} while (bytes_left);
+
+	return len;
+}
+
 /*
  * All callbacks need to take care not to downcast a struct ttm_buffer_object
  * without checking its subclass, since it might be a TTM ghost object.
@@ -715,6 +759,7 @@ static struct ttm_device_funcs i915_ttm_bo_driver = {
 	.delete_mem_notify = i915_ttm_delete_mem_notify,
 	.io_mem_reserve = i915_ttm_io_mem_reserve,
 	.io_mem_pfn = i915_ttm_io_mem_pfn,
+	.access_memory = i915_ttm_access_memory,
 };
 
 /**
-- 
2.37.3

