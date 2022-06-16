Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C90C054E5ED
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 17:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241B810F006;
	Thu, 16 Jun 2022 15:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6596210E2DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 15:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655392986; x=1686928986;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cL/wjsAPqeqkGUL0G1pRSal339HEruSd0uUvTgal0mA=;
 b=bb1pcAF74xaVK83mmy5VXY3T8jrI2KFIOhJANxh1GdFyOogE4tTO945U
 m3LovSlCOLMOihiGtTk+O7LbIA+Zec7W7ah7swPSG8SfVn7VZvMhfWPAq
 a8cYPrpe9HomDvqWEfVQzybuTPotuq7rpgNWpXhpM891P3cAwwgDOKNvj
 tufNnRBXI2xwTsws+jof99IJ7xLgvODiO+3w6dItu3vUkUBNeQfleACLw
 H9kG1g1F9BP1SOp7aPNYGWYeZyGGth482FYEyYOLGBVJ9BKRIi4JLwYkT
 X8T6JE2Gk+bGA+G50norYYoIgMPZdhR7PiUFpFUbvskNkyJ3jBeW5H6pf w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="259734230"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="259734230"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 08:23:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="687862210"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jun 2022 08:23:04 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 20:42:46 +0530
Message-Id: <20220616151247.1192063-2-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220616151247.1192063-1-priyanka.dandamudi@intel.com>
References: <20220616151247.1192063-1-priyanka.dandamudi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add support for LMEM PCIe
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

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Cc: Michael J Ruhl <michael.j.ruhl@intel.com>
Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 92 ++++++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d26dcca7e654..4bdb471cb2e2 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -303,6 +303,95 @@ static void sanitize_gpu(struct drm_i915_private *i915)
 		__intel_gt_reset(to_gt(i915), ALL_ENGINES);
 }
 
+static void __release_bars(struct pci_dev *pdev)
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
+__resize_bar(struct drm_i915_private *i915, int resno, resource_size_t size)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	int bar_size = pci_rebar_bytes_to_size(size);
+	int ret;
+
+	__release_bars(pdev);
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
+__lmem_rebar_size(struct drm_i915_private *i915, int resno)
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
+	resource_size_t rebar_size = __lmem_rebar_size(i915, LMEM_BAR_NUM);
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
+	__resize_bar(i915, LMEM_BAR_NUM, rebar_size);
+
+	pci_assign_unassigned_bus_resources(pdev->bus);
+	pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
+}
+
 /**
  * i915_driver_early_probe - setup state not requiring device access
  * @dev_priv: device private
@@ -852,6 +941,9 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 
+	if (HAS_LMEM(i915))
+		i915_resize_lmem_bar(i915);
+
 	intel_vgpu_detect(i915);
 
 	ret = intel_gt_probe_all(i915);
-- 
2.25.1

