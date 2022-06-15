Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 438DD54C154
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 07:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4803110E8B2;
	Wed, 15 Jun 2022 05:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A7110E8B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 05:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655272404; x=1686808404;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DR8hizpOjxxjHl3b3YE1mxRN3FQNjJOm8unDiW4eapk=;
 b=OXZbOCRkeBdwAUtxA5q4NsMSSzL+fsV9DCxjzuS9Cu6A8+zC+jm8gu/p
 wsoJ3bu4HcsbJXZPcUx+Omnkg8ve2KDYHoRlcdv1DSKMOjYzZaCcyLylY
 l4+bVl5HR6KNta5L4Yq5vxu2LWuxMUIBa997RSnLVrdcU2hkU/Ow/1Stg
 /JCrnWGwothn1qABzkEkB80GyuIQyFtfNiFfQ9FHA2jfd5+67eWtQ3bi5
 W5ntWVlemLVzgk7w2sznsL3pGV2lokO11+xa127+lf0/706yuS1IFZmZj
 Ex8fmHQ0QeipSW8L5dti2lLqMkFZUZM0z5Rh7rAI8D7ZCY/pFAffuuP4e Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="258697501"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="258697501"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 22:53:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="727212193"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2022 22:53:20 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 11:13:05 +0530
Message-Id: <20220615054306.1175736-2-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220615054306.1175736-1-priyanka.dandamudi@intel.com>
References: <20220615054306.1175736-1-priyanka.dandamudi@intel.com>
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

This patch adds support for the local memory PICe resizable bar, so that
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
---
 drivers/gpu/drm/i915/i915_driver.c | 103 +++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b47746152d97..8d33a6a31675 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -303,6 +303,106 @@ static void sanitize_gpu(struct drm_i915_private *i915)
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
+/**
+ * i915_resize_lmem_bar - resize local memory BAR
+ * @i915: device private
+ *
+ * This function will attempt to resize LMEM bar to make all memory accessible.
+ * Whether it will be successful depends on both device and platform
+ * capabilities. Any errors are non-critical, even if resize fails, we go back
+ * to the previous configuration.
+ */
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
+		if (root_res &&
+				root_res->flags & (IORESOURCE_MEM | IORESOURCE_MEM_64) &&
+				root_res->start > 0x100000000ull)
+			break;
+	}
+
+	/* pci_resize_resource will fail anyways */
+	if (!root_res) {
+		drm_info(&i915->drm,
+				"Can't resize LMEM BAR - platform support is missing\n");
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
@@ -836,6 +936,9 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 
+	if (HAS_LMEM(i915))
+		i915_resize_lmem_bar(i915);
+
 	intel_vgpu_detect(i915);
 
 	ret = intel_gt_probe_all(i915);
-- 
2.27.0

