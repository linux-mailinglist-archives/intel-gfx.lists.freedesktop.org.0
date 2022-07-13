Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A685736FD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 15:13:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01C3113943;
	Wed, 13 Jul 2022 13:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E8B112F39
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jul 2022 13:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657718005; x=1689254005;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3KnVSqBnG3QyC5xoovM5MOfKj1eaQRznI0cQTzQt33M=;
 b=IhNIUb5YnzKi1DJczQsGhbet851qGv6LSOL/dOAmzFH/SLNsI5Eu5RYh
 r2khK9rZiFWXa0R63o9U6KYMiRS6Q5J69YJ3ARwX4fvMdFHnourXVCRo9
 L1Ct5l9z1qIbIsl1Kz4CYVfz9tzFwp2Q8sRTQygvQGzH+UIgOdQGICRKW
 EbBiyjmLfEb4m0TuSSx1tY+AYOHQn+llQf6c5U8NZpP1ax6cho2JjYcgQ
 g79vQswtpDlDlRw4Pa5kzQ1ehzYL6fMBaBy3rG7sa37R5V0fnNojhv6Lh
 Lk/rsbVMtz3AF0db8hNb7txViNDBlKywrUMuu2dtDvZD5Bt5tutg9qjud Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="285950418"
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="285950418"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 06:13:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="622934951"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by orsmga008.jf.intel.com with ESMTP; 13 Jul 2022 06:13:23 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jul 2022 18:32:08 +0530
Message-Id: <20220713130209.2573233-2-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220713130209.2573233-1-priyanka.dandamudi@intel.com>
References: <20220713130209.2573233-1-priyanka.dandamudi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915: Add support for LMEM PCIe
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

v3: Optimised code.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Cc: Michael J Ruhl <michael.j.ruhl@intel.com>
Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 75 +++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index fa7b86f83e7b..72491ba9e72f 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -15,6 +15,79 @@
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
+#define LMEM_BAR_NUM 2
+static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct pci_bus *root = pdev->bus;
+	struct resource *root_res;
+	resource_size_t rebar_size;
+	u32 pci_cmd;
+	int i;
+
+	rebar_size = roundup_pow_of_two(pci_resource_len(pdev, LMEM_BAR_NUM));
+
+	if (rebar_size != roundup_pow_of_two(lmem_size))
+		rebar_size = lmem_size;
+	else
+		return;
+
+	/* Find out if root bus contains 64bit memory addressing */
+	while (root->parent)
+		root = root->parent;
+
+	pci_bus_for_each_resource(root, root_res, i) {
+		if (root_res && root_res->flags & (IORESOURCE_MEM |
+					IORESOURCE_MEM_64) && upper_32_bits(root_res->start) != 0)
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
@@ -128,6 +201,8 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		lmem_size = intel_uncore_read64(&i915->uncore, GEN12_GSMBASE);
 	}
 
+	i915_resize_lmem_bar(i915, lmem_size);
+
 	if (i915->params.lmem_size > 0) {
 		lmem_size = min_t(resource_size_t, lmem_size,
 				  mul_u32_u32(i915->params.lmem_size, SZ_1M));
-- 
2.27.0

