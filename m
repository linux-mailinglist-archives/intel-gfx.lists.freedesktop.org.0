Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3B9566B53
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 14:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1D2113AF7;
	Tue,  5 Jul 2022 12:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E302113798
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 12:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657022750; x=1688558750;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pmvG9A5RRz2VJHbGtjoRhJoZ99uDDXZSjOjX9Mh4ZG0=;
 b=S2ftPtC9RUtybrBW3MCCHeg7YyuI1IbhYfikfFvTuwCBeHtsBVAqxqSR
 bzSAsFcFJ9tUFjWHFBNN2kEAe6wXMkslHY9GZGa3XWnwUcstucpOypZJp
 SSYn1VebF8kZC+zhUQcrcmDM+ubZlUsDImJi+QFRZBJKEgcLADbZ0Okf/
 AWcRq1njEOc8nxq+rvCOBbaTokVqJYK67PlNP42byiEFaFvCw7DbeU71D
 hWNY/CEGuR2rL2zISbs2T4yyZj4FZtFn9Mvaz/ZZ8gniWQFBv95fe5WmK
 CcJgxI79LcTrBF1S6ieAU0C1vr7Q8Z4p07+50r8Ch3YLC8x1D/M0zU2Kz g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="369658302"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="369658302"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 05:05:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="590377805"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by orsmga007.jf.intel.com with ESMTP; 05 Jul 2022 05:05:48 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com, nirmoy.das@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jul 2022 17:24:50 +0530
Message-Id: <20220705115451.2438928-2-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220705115451.2438928-1-priyanka.dandamudi@intel.com>
References: <20220705115451.2438928-1-priyanka.dandamudi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915: Add support for LMEM PCIe
 resizable bar
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

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

Add support for the local memory PICe resizable bar, so that
local memory can be resized to the maximum size supported by the device,
and mapped correctly to the PCIe memory bar. It is usual that GPU
devices expose only 256MB BARs primarily to be compatible with 32-bit
systems. So, those devices cannot claim larger memory BAR windows size due
to the system BIOS limitation. With this change, it would be possible to
reprogram the windows of the bridge directly above the requesting device
on the same BAR type.

v2:Moved code to gt/intel_region_lmem.c and used only
single underscore for function names.(Jani)

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Cc: Michael J Ruhl <michael.j.ruhl@intel.com>
Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 91 +++++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index fa7b86f83e7b..3e9ed395f408 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -15,6 +15,95 @@
 #include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_regs.h"
 
+static void _release_bars(struct pci_dev *pdev)
+{
+	int resno;
+
+	for (resno = PCI_STD_RESOURCES; resno < PCI_STD_RESOURCE_END; resno++) {
+		if (pci_resource_len(pdev, resno))
+			pci_release_resource(pdev, resno);
+	}
+}
+
+static void
+_resize_bar(struct drm_i915_private *i915, int resno, resource_size_t size)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	int bar_size = pci_rebar_bytes_to_size(size);
+	int ret;
+
+	_release_bars(pdev);
+
+	ret = pci_resize_resource(pdev, resno, bar_size);
+	if (ret) {
+		drm_info(&i915->drm, "Failed to resize BAR%d to %dM (%pe)\n",
+			 resno, 1 << bar_size, ERR_PTR(ret));
+		return;
+	}
+
+	drm_info(&i915->drm, "BAR%d resized to %dM\n", resno, 1 << bar_size);
+}
+
+/* BAR size starts from 1MB - 2^20 */
+#define BAR_SIZE_SHIFT 20
+static resource_size_t
+_lmem_rebar_size(struct drm_i915_private *i915, int resno)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	u32 rebar = pci_rebar_get_possible_sizes(pdev, resno);
+	resource_size_t size;
+
+	if (!rebar)
+		return 0;
+
+	size = 1ULL << (__fls(rebar) + BAR_SIZE_SHIFT);
+
+	if (size <= pci_resource_len(pdev, resno))
+		return 0;
+
+	return size;
+}
+
+#define LMEM_BAR_NUM 2
+static void i915_resize_lmem_bar(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct pci_bus *root = pdev->bus;
+	struct resource *root_res;
+	resource_size_t rebar_size = _lmem_rebar_size(i915, LMEM_BAR_NUM);
+	u32 pci_cmd;
+	int i;
+
+	if (!rebar_size)
+		return;
+
+	/* Find out if root bus contains 64bit memory addressing */
+	while (root->parent)
+		root = root->parent;
+
+	pci_bus_for_each_resource(root, root_res, i) {
+		if (root_res && root_res->flags & (IORESOURCE_MEM |
+					IORESOURCE_MEM_64) && root_res->start > 0x100000000ull)
+			break;
+	}
+
+	/* pci_resize_resource will fail anyways */
+	if (!root_res) {
+		drm_info(&i915->drm, "Can't resize LMEM BAR - platform support is missing\n");
+		return;
+	}
+
+	/* First disable PCI memory decoding references */
+	pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
+	pci_write_config_dword(pdev, PCI_COMMAND,
+			       pci_cmd & ~PCI_COMMAND_MEMORY);
+
+	_resize_bar(i915, LMEM_BAR_NUM, rebar_size);
+
+	pci_assign_unassigned_bus_resources(pdev->bus);
+	pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
+}
+
 static int
 region_lmem_release(struct intel_memory_region *mem)
 {
@@ -128,6 +217,8 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		lmem_size = intel_uncore_read64(&i915->uncore, GEN12_GSMBASE);
 	}
 
+	i915_resize_lmem_bar(i915);
+
 	if (i915->params.lmem_size > 0) {
 		lmem_size = min_t(resource_size_t, lmem_size,
 				  mul_u32_u32(i915->params.lmem_size, SZ_1M));
-- 
2.27.0

