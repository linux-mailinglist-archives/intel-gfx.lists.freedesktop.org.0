Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B605F4B0D68
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 13:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DBBA10E865;
	Thu, 10 Feb 2022 12:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36B6F10E85E;
 Thu, 10 Feb 2022 12:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644495417; x=1676031417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tRn6WeSGt5dbrfhbjKgoqgtJP1Z7aqYafLvLNaJAnOI=;
 b=L5OS5zJ8PN97Mj/YGo4sAoamuIHHnatevNWkjkakOhiEc5iFAljSX99y
 X7LvJDNu2RiJ05ouqhomneU0v/LHPE+YEuDdixM4dUGpp7f2TvV5Z26Di
 WDSCFMh6MbYGr5bp0ufiEXzF/k16zT3xVeJFrHRCTqnJp6aLtNTiXLBm6
 0IMFtL+di22DyAbGwZphLPPvGZ7br2A51VP7s07D2slswZQIPyFRC6rEC
 0R9PdVEIi4WCZTJulElHTvvptqxStP7XIDyPbrw+iceQj8J96DBNocjox
 tmSvuDnwe5qM5g7Ub3+xXprY1yEqrLBK6EApsVdN4Y6cvbW8Ce4WwnvhZ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="247060989"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="247060989"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="485664998"
Received: from paulbarr-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.11.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:55 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:13:13 +0000
Message-Id: <20220210121313.701004-16-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210121313.701004-1-matthew.auld@intel.com>
References: <20220210121313.701004-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/15] drm/i915/lmem: don't treat small BAR
 as an error
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just pass along the probed io_size. The backend should be able to
utilize the entire range here, even if some of it is non-mappable.

It does leave open with what to do with stolen local-memory.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 01838b8ce4c7..ad3cf348b4a8 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -201,6 +201,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	struct intel_memory_region *mem;
 	resource_size_t min_page_size;
 	resource_size_t io_start;
+	resource_size_t io_size;
 	resource_size_t lmem_size;
 	int err;
 
@@ -211,7 +212,8 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	lmem_size = intel_uncore_read64(uncore, GEN12_GSMBASE);
 
 	io_start = pci_resource_start(pdev, 2);
-	if (GEM_WARN_ON(lmem_size > pci_resource_len(pdev, 2)))
+	io_size = min(pci_resource_len(pdev, 2), lmem_size);
+	if (!io_size)
 		return ERR_PTR(-ENODEV);
 
 	min_page_size = HAS_64K_PAGES(i915) ? I915_GTT_PAGE_SIZE_64K :
@@ -221,7 +223,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 					 lmem_size,
 					 min_page_size,
 					 io_start,
-					 lmem_size,
+					 io_size,
 					 INTEL_MEMORY_LOCAL,
 					 0,
 					 &intel_region_lmem_ops);
-- 
2.34.1

