Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 793C2219C76
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 11:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7A3E6EA30;
	Thu,  9 Jul 2020 09:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA5D56EA30
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 09:40:35 +0000 (UTC)
IronPort-SDR: 9T3kP4mGbfMZk4PsiFnkSHPBZPwDwJoiGqgsfHwZ55DFYF10Uy2CudHHiJQ57nrvMXC37rc9SF
 8aymvF0zPBvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="232839668"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="232839668"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 02:40:35 -0700
IronPort-SDR: BQZMK4+YVHFcQ3SFU++emTwOsWZRlVqRXLbj84UqiIH3Y0eiw1WJ6TBuC6RgMHZkLrrJnSsrRw
 nCR8s9KvXOQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="483735424"
Received: from cfl-host.sh.intel.com ([10.239.158.139])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jul 2020 02:40:33 -0700
From: Fred Gao <fred.gao@intel.com>
To: fred.gao@intel.com, kvm@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 01:37:07 +0800
Message-Id: <20200709173707.29808-1-fred.gao@intel.com>
X-Mailer: git-send-email 2.24.1.1.gb6d4d82bd5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1] vfio/pci: Refine Intel IGD OpRegion support
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
Cc: Hang Yuan <hang.yuan@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bypass the IGD initialization for Intel's dgfx devices with own expansion
ROM and the host/LPC bridge config space are no longer accessed.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Xiong Zhang <xiong.y.zhang@intel.com>
Cc: Hang Yuan <hang.yuan@linux.intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Fred Gao <fred.gao@intel.com>
---
 drivers/vfio/pci/vfio_pci.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/vfio/pci/vfio_pci.c b/drivers/vfio/pci/vfio_pci.c
index f634c81998bb..0f4a34849836 100644
--- a/drivers/vfio/pci/vfio_pci.c
+++ b/drivers/vfio/pci/vfio_pci.c
@@ -28,6 +28,8 @@
 #include <linux/nospec.h>
 #include <linux/sched/mm.h>
 
+#include <drm/i915_pciids.h>
+
 #include "vfio_pci_private.h"
 
 #define DRIVER_VERSION  "0.2"
@@ -60,6 +62,12 @@ module_param(enable_sriov, bool, 0644);
 MODULE_PARM_DESC(enable_sriov, "Enable support for SR-IOV configuration.  Enabling SR-IOV on a PF typically requires support of the userspace PF driver, enabling VFs without such support may result in non-functional VFs or PF.");
 #endif
 
+/* Intel's dgfx is not IGD, so don't handle them the same way */
+static const struct pci_device_id intel_dgfx_pciids[] = {
+	INTEL_DG1_IDS(0),
+	{ }
+};
+
 static inline bool vfio_vga_disabled(void)
 {
 #ifdef CONFIG_VFIO_PCI_VGA
@@ -339,7 +347,8 @@ static int vfio_pci_enable(struct vfio_pci_device *vdev)
 
 	if (vfio_pci_is_vga(pdev) &&
 	    pdev->vendor == PCI_VENDOR_ID_INTEL &&
-	    IS_ENABLED(CONFIG_VFIO_PCI_IGD)) {
+	    IS_ENABLED(CONFIG_VFIO_PCI_IGD) &&
+	    !pci_match_id(intel_dgfx_pciids, pdev)) {
 		ret = vfio_pci_igd_init(vdev);
 		if (ret) {
 			pci_warn(pdev, "Failed to setup Intel IGD regions\n");
-- 
2.24.1.1.gb6d4d82bd5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
