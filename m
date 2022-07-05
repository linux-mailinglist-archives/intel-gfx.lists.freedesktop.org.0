Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0248E566B55
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 14:05:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11489113AF0;
	Tue,  5 Jul 2022 12:05:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 882001139E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 12:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657022752; x=1688558752;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iICJhix4jWMOeAvqUdK58tzDbtYiKDxUsri+V0hfrZw=;
 b=WRqUFiMzeFLIr3jgPTe1t4JLJY2SYDg9HJAPvYXrADBZ6vxpfoeKsBlv
 0R81YTrMGRTPMmXb8WisBUqdLzbwK0ldoxahogVES4rwgUO+8LL1vRs5x
 AJOeTZl3w4PtSg+ZwY6nFqB/AUhIp3rVD438eUpGtoC/1R1GOu/rzA9VA
 ckeVbxbh8Nj8ZasVl1Fn+xXHnLdQgzBMxNzLDvH2iq/2WEzjseMuHqnKb
 XjMqBJ6xJuAnVMwSkRexf2h8R2ur2wsbejiaMSSoPIGV712Ik9KX3wk5j
 56YCpIPMtl12Fe3V05ksje2JYKcR9XH1LF4VoEJKZ/gv3V7sZ425jfYc6 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="369658311"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="369658311"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 05:05:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="590377820"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by orsmga007.jf.intel.com with ESMTP; 05 Jul 2022 05:05:50 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com, nirmoy.das@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jul 2022 17:24:51 +0530
Message-Id: <20220705115451.2438928-3-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220705115451.2438928-1-priyanka.dandamudi@intel.com>
References: <20220705115451.2438928-1-priyanka.dandamudi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915: Add lmem_bar_size modparam
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

From: Priyanka Dandamudi <priyanka.dandamudi@intel.com>

For testing purposes, support forcing the lmem_bar_size through a new
modparam. In CI we only have a limited number of configurations for DG2,
but we still need to be reasonably sure we get a usable device (also
verifying we report the correct values for things like
probed_cpu_visible_size etc) with all the potential lmem_bar sizes that
we might expect see in the wild.

v2: Update commit message and a minor modification.(Matt)

v3: Optimised lmem bar size code and modified code to resize
bar maximum upto lmem_size instead of maximum supported size.(Nirmoy)

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 51 +++++++++++----------
 drivers/gpu/drm/i915/i915_params.c          |  2 +
 drivers/gpu/drm/i915/i915_params.h          |  1 +
 3 files changed, 29 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 3e9ed395f408..2ed80c3f6064 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -14,6 +14,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_regs.h"
+#include "../../../pci/pci.h"
 
 static void _release_bars(struct pci_dev *pdev)
 {
@@ -44,38 +45,38 @@ _resize_bar(struct drm_i915_private *i915, int resno, resource_size_t size)
 	drm_info(&i915->drm, "BAR%d resized to %dM\n", resno, 1 << bar_size);
 }
 
-/* BAR size starts from 1MB - 2^20 */
-#define BAR_SIZE_SHIFT 20
-static resource_size_t
-_lmem_rebar_size(struct drm_i915_private *i915, int resno)
-{
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
-	u32 rebar = pci_rebar_get_possible_sizes(pdev, resno);
-	resource_size_t size;
-
-	if (!rebar)
-		return 0;
-
-	size = 1ULL << (__fls(rebar) + BAR_SIZE_SHIFT);
-
-	if (size <= pci_resource_len(pdev, resno))
-		return 0;
-
-	return size;
-}
-
 #define LMEM_BAR_NUM 2
-static void i915_resize_lmem_bar(struct drm_i915_private *i915)
+static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	struct pci_bus *root = pdev->bus;
 	struct resource *root_res;
-	resource_size_t rebar_size = _lmem_rebar_size(i915, LMEM_BAR_NUM);
+	resource_size_t rebar_size;
+	resource_size_t current_size;
 	u32 pci_cmd;
 	int i;
 
-	if (!rebar_size)
-		return;
+	current_size = roundup_pow_of_two(pci_resource_len(pdev, LMEM_BAR_NUM));
+
+	if (i915->params.lmem_bar_size) {
+		resource_size_t min_bar_size = pci_rebar_size_to_bytes
+			(__ffs(pci_rebar_get_possible_sizes(pdev, LMEM_BAR_NUM)));
+
+		rebar_size = pci_rebar_size_to_bytes(__fls(i915->params.lmem_bar_size));
+
+		if (rebar_size == current_size)
+			return;
+
+		if (rebar_size >= roundup_pow_of_two(lmem_size) || rebar_size < min_bar_size)
+			rebar_size = lmem_size;
+	} else {
+		rebar_size = current_size;
+
+		if (rebar_size != roundup_pow_of_two(lmem_size))
+			rebar_size = lmem_size;
+		else
+			return;
+	}
 
 	/* Find out if root bus contains 64bit memory addressing */
 	while (root->parent)
@@ -217,7 +218,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		lmem_size = intel_uncore_read64(&i915->uncore, GEN12_GSMBASE);
 	}
 
-	i915_resize_lmem_bar(i915);
+	i915_resize_lmem_bar(i915, lmem_size);
 
 	if (i915->params.lmem_size > 0) {
 		lmem_size = min_t(resource_size_t, lmem_size,
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 701fbc98afa0..6fc475a5db61 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -204,6 +204,8 @@ i915_param_named_unsafe(request_timeout_ms, uint, 0600,
 
 i915_param_named_unsafe(lmem_size, uint, 0400,
 			"Set the lmem size(in MiB) for each region. (default: 0, all memory)");
+i915_param_named_unsafe(lmem_bar_size, uint, 0400,
+			"Set the lmem bar size(in MiB).");
 
 static __always_inline void _print_param(struct drm_printer *p,
 					 const char *name,
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index b5e7ea45d191..2733cb6cfe09 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -74,6 +74,7 @@ struct drm_printer;
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
 	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
 	param(unsigned int, lmem_size, 0, 0400) \
+	param(unsigned int, lmem_bar_size, 0, 0400) \
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, load_detect_test, false, 0600) \
-- 
2.27.0

