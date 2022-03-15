Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 188974DA221
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4782310E141;
	Tue, 15 Mar 2022 18:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B905D10E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647368105; x=1678904105;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HlxqDOjlzAfC6JqVA1gpuKjafPAZfI2kTyHNAx6ZLBc=;
 b=EU28TYpim4uwIISyeuFArkEo4N6w47qlA7HHz6uWbk/mIb1eKq2L5jjB
 PP+5uxzXBRzSuZRvejy3D3jLVFsE8PUeTEP0oLXpKgjiyXhAlsUeONSkt
 jKZGvrvgeN+Amp1eou6OmFOjU7B9/wjXTKNELUk4Rir8EwKQm/v1oPD+0
 OzlIWWwR++3HA/9IAKv9CghkH+VbHgdrMa8VeuXaLT+bPpwBrOtQuP/iO
 C1dSc166rrLrlLsOTWlJT9jX6yDTTES1WIRXzwxaS6KFWmuGc7NRW3JUT
 PA67PhRmQ2wHbClVDyFJUv8uHbFAqG6zxnitknv1ddFSgZ/yjKxWt0CC8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255221131"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="255221131"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="498133149"
Received: from sobyrne-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.31.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:03 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 18:14:19 +0000
Message-Id: <20220315181425.576828-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/7] drm/i915/lmem: don't treat small BAR as an
 error
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

Just pass along the probed io_size. The backend should be able to
utilize the entire range here, even if some of it is non-mappable.

It does leave open with what to do with stolen local-memory.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 6cecfdae07ad..783d81072c3b 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -93,6 +93,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	struct intel_memory_region *mem;
 	resource_size_t min_page_size;
 	resource_size_t io_start;
+	resource_size_t io_size;
 	resource_size_t lmem_size;
 	int err;
 
@@ -124,7 +125,8 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 
 
 	io_start = pci_resource_start(pdev, 2);
-	if (GEM_WARN_ON(lmem_size > pci_resource_len(pdev, 2)))
+	io_size = min(pci_resource_len(pdev, 2), lmem_size);
+	if (!io_size)
 		return ERR_PTR(-ENODEV);
 
 	min_page_size = HAS_64K_PAGES(i915) ? I915_GTT_PAGE_SIZE_64K :
@@ -134,7 +136,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
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

