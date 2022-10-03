Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C9D5F3484
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:29:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8E110E444;
	Mon,  3 Oct 2022 17:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A0AF10E444
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 17:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664818181; x=1696354181;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=myIzLuWgVJdiPDr5hx/EXFzM92MvKQieARje5kX5riU=;
 b=YnUUPwhusn0wvRvnSnY21OGGkYF15lzlhNp3wYxYgLsDYujQaqOdGfzR
 P5p2xE177z5wWSQ93cGpfOs6nasIZKrfVan+yiE2L5raA7dIY+vYWzWu5
 rJQAGGnGgpYb6rkRhqZQpTlYBDXdRAaPfBKWGF6U0o1ZFpP1+vQIbeYDo
 svuDFUFPAeWWmkGZUlD8q7mNLaiqKctNd3HoBcKuZUqMJJZA0lwtbEJJX
 SAEYEhN1//bW+6YVKG3NCKAhxWlD9cpFjyMyRV9KiC2QUZBU4IF/7D3qZ
 NFsTAk+yndHka3kqGgGArWo8kDFLluDSoJrHhIYglh2d3XpR3pexJUcng w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="282416606"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="282416606"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:28:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="712684391"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="712684391"
Received: from adejeanb-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.6.198])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:28:52 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 18:28:19 +0100
Message-Id: <20221003172819.99245-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/ttm: implement access_memory
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

v2:
  - ttm_bo_kmap doesn't seem to work well here, and seems to expect
    contiguous resource.
v3(Andi):
  - s/PAGE_SIZE/bytes/ when passing in the size of the mapping.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6989
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 45 +++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 3dc6acfcf4ec..d11cd9c57247 100644
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
+		ptr = ioremap_wc(iomap + daddr + offset, bytes);
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

