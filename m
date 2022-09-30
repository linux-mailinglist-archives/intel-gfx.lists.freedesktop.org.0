Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BC25F0EC0
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 17:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D72F10ED55;
	Fri, 30 Sep 2022 15:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1245810ED4B
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 15:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664551532; x=1696087532;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e2Hg1+hq2lNIgAarGMNNu9WFc/Gy4vwcFTGIuMTvsxg=;
 b=CDXz/sGEMeP5kNMicsC8Bp8OXggsdx7kmUcNnwyf0kJ8RoOKPO66oOVU
 rDBKwnNLR4P9OMahsXGJIEX4QFl/gLmT22N9ckbjg+naw1qQGjTWJrC55
 XkmhZF0gUmDr8ELjItfe3LQen5ufR5IUaeFrvSEfnDgSn35PddvEpMHYL
 nwonLTzNumHjClBbgLwu1E/o5uLMj9dUNXsWeLw72SbHTH9DAk1iVg7rp
 jj0Bvd56oIrvBZEnjSNAMrzzQP80V9YkcGDPfQWojY4YtP58npCnJswqe
 SWDF3XQbRXgEUSTDL4dVlU2eqUQtLcdmP1vOrfXheKYYGyTkhA51Uwrjy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="366265000"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="366265000"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 08:25:31 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="685319441"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="685319441"
Received: from dtrawins-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.39])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 08:25:30 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 16:25:12 +0100
Message-Id: <20220930152512.410111-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/ttm: implement access_memory
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It looks like we need this for local-memory, if we want to use ptrace.
Something more is still needed if we want to handle non-mappable memory,
which looks quite annoying.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6989
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 43 +++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 3dc6acfcf4ec..4f533e0c92b4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -699,6 +699,48 @@ static unsigned long i915_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
 	return ((base + sg_dma_address(sg)) >> PAGE_SHIFT) + ofs;
 }
 
+static int i915_ttm_access_memory(struct ttm_buffer_object *bo,
+				  unsigned long offset, void *buf,
+				  int len, int write)
+{
+	unsigned long page = offset >> PAGE_SHIFT;
+	unsigned long bytes_left = len;
+	int ret;
+
+	/*
+	 * TODO: For now just let it fail if the resource is non-mappable,
+	 * otherwise we need to perform the memcpy from the gpu here, without
+	 * interfering with the object (like moving the entire thing).
+	 */
+
+	offset -= page << PAGE_SHIFT;
+	do {
+		unsigned long bytes = min(bytes_left, PAGE_SIZE - offset);
+		struct ttm_bo_kmap_obj map;
+		void __iomem *ptr;
+		bool is_iomem;
+
+		ret = ttm_bo_kmap(bo, page, 1, &map);
+		if (ret)
+			return ret;
+
+		ptr = ttm_kmap_obj_virtual(&map, &is_iomem) + offset;
+		WARN_ON_ONCE(!is_iomem);
+		if (write)
+			memcpy_toio(ptr, buf, bytes);
+		else
+			memcpy_fromio(buf, ptr, bytes);
+		ttm_bo_kunmap(&map);
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
@@ -715,6 +757,7 @@ static struct ttm_device_funcs i915_ttm_bo_driver = {
 	.delete_mem_notify = i915_ttm_delete_mem_notify,
 	.io_mem_reserve = i915_ttm_io_mem_reserve,
 	.io_mem_pfn = i915_ttm_io_mem_pfn,
+	.access_memory = i915_ttm_access_memory,
 };
 
 /**
-- 
2.37.3

