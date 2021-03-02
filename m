Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6DB3295FA
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 06:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0331F6E8BE;
	Tue,  2 Mar 2021 05:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD926E8BE
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 05:08:04 +0000 (UTC)
IronPort-SDR: Q0EpoNvix3HihjIzySyq7IpXKVUGlI6QBORsMgdqGSsXiDJ3rnHUluH3fgXUeiH7rGst9P/pDX
 YQz8Gm3I0LiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="186016351"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="186016351"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 21:08:03 -0800
IronPort-SDR: 5G8LRrQbF/S0hq5IjEtug5lmbU5pmIfb0V0kI48dIkFRFUh8GaDrB+sByBPHrm4Pbxqh1uDuyn
 l/NHyzCuAq/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444591287"
Received: from cfl-host.sh.intel.com ([10.239.158.118])
 by orsmga001.jf.intel.com with ESMTP; 01 Mar 2021 21:08:01 -0800
From: Fred Gao <fred.gao@intel.com>
To: kvm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  2 Mar 2021 21:02:20 +0800
Message-Id: <20210302130220.9349-1-fred.gao@intel.com>
X-Mailer: git-send-email 2.24.1.1.gb6d4d82bd5
In-Reply-To: <20210208170253.29968-1-fred.gao@intel.com>
References: <20210208170253.29968-1-fred.gao@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] vfio/pci: Add support for opregion v2.1+
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
Cc: Fred Gao <fred.gao@intel.com>, Swee Yee Fonn <swee.yee.fonn@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Before opregion version 2.0 VBT data is stored in opregion mailbox #4,
However, When VBT data exceeds 6KB size and cannot be within mailbox #4
starting from opregion v2.0+, Extended VBT region, next to opregion, is
used to hold the VBT data, so the total size will be opregion size plus
extended VBT region size.

since opregion v2.0 with physical host VBT address should not be
practically available for end user, it is not supported.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Signed-off-by: Swee Yee Fonn <swee.yee.fonn@intel.com>
Signed-off-by: Fred Gao <fred.gao@intel.com>
---
 drivers/vfio/pci/vfio_pci_igd.c | 49 +++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/vfio/pci/vfio_pci_igd.c b/drivers/vfio/pci/vfio_pci_igd.c
index 53d97f459252..4edb8afcdbfc 100644
--- a/drivers/vfio/pci/vfio_pci_igd.c
+++ b/drivers/vfio/pci/vfio_pci_igd.c
@@ -21,6 +21,10 @@
 #define OPREGION_SIZE		(8 * 1024)
 #define OPREGION_PCI_ADDR	0xfc
 
+#define OPREGION_RVDA		0x3ba
+#define OPREGION_RVDS		0x3c2
+#define OPREGION_VERSION	0x16
+
 static size_t vfio_pci_igd_rw(struct vfio_pci_device *vdev, char __user *buf,
 			      size_t count, loff_t *ppos, bool iswrite)
 {
@@ -58,6 +62,7 @@ static int vfio_pci_igd_opregion_init(struct vfio_pci_device *vdev)
 	u32 addr, size;
 	void *base;
 	int ret;
+	u16 version;
 
 	ret = pci_read_config_dword(vdev->pdev, OPREGION_PCI_ADDR, &addr);
 	if (ret)
@@ -83,6 +88,50 @@ static int vfio_pci_igd_opregion_init(struct vfio_pci_device *vdev)
 
 	size *= 1024; /* In KB */
 
+	/*
+	 * Support opregion v2.1+
+	 * When VBT data exceeds 6KB size and cannot be within mailbox #4
+	 * Extended VBT region, next to opregion, is used to hold the VBT data.
+	 * RVDA (Relative Address of VBT Data from Opregion Base) and RVDS
+	 * (VBT Data Size) from opregion structure member are used to hold the
+	 * address from region base and size of VBT data while RVDA/RVDS
+	 * are not defined before opregion 2.0.
+	 *
+	 * opregion 2.0: rvda is the physical VBT address.
+	 *
+	 * opregion 2.1+: rvda is unsigned, relative offset from
+	 * opregion base, and should never point within opregion.
+	 */
+	version = le16_to_cpu(*(__le16 *)(base + OPREGION_VERSION));
+	if (version >= 0x0200) {
+		u64 rvda;
+		u32 rvds;
+
+		rvda = le64_to_cpu(*(__le64 *)(base + OPREGION_RVDA));
+		rvds = le32_to_cpu(*(__le32 *)(base + OPREGION_RVDS));
+		if (rvda && rvds) {
+			/* no support for opregion v2.0 with physical VBT address */
+			if (version == 0x0200) {
+				memunmap(base);
+				pci_err(vdev->pdev,
+					"IGD passthrough does not support opregion\n"
+					"version 0x%x with physical rvda 0x%llx\n", version, rvda);
+				return -EINVAL;
+			}
+
+			if ((u32)rvda != size) {
+				memunmap(base);
+				pci_err(vdev->pdev,
+					"Extended VBT does not follow opregion !\n"
+					"opregion version 0x%x:rvda 0x%llx\n", version, rvda);
+				return -EINVAL;
+			}
+
+			/* region size for opregion v2.0+: opregion and VBT size */
+			size += rvds;
+		}
+	}
+
 	if (size != OPREGION_SIZE) {
 		memunmap(base);
 		base = memremap(addr, size, MEMREMAP_WB);
-- 
2.24.1.1.gb6d4d82bd5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
