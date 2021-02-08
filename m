Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77873312CBF
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 10:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E306E440;
	Mon,  8 Feb 2021 09:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5DCB6E440
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 09:07:49 +0000 (UTC)
IronPort-SDR: nKWkjAr4kwA8sfqffcfC80jMGifY9kjXvJbE1XN50tVEDTNgqYuyPshLzvIyICHu7uIG4LXleh
 38ZBKt7ai+Ow==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="161433815"
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="161433815"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 01:07:49 -0800
IronPort-SDR: 59sSfZShLRivi3I6v7lffwC0oPbnHYRA9rwSCZKSJMXaPNTLGO5KxQnPI8NDPJIXKR/EIpd3Ew
 wStPteCVH3RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="435564128"
Received: from cfl-host.sh.intel.com ([10.239.158.118])
 by orsmga001.jf.intel.com with ESMTP; 08 Feb 2021 01:07:47 -0800
From: Fred Gao <fred.gao@intel.com>
To: kvm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 01:02:53 +0800
Message-Id: <20210208170253.29968-1-fred.gao@intel.com>
X-Mailer: git-send-email 2.24.1.1.gb6d4d82bd5
In-Reply-To: <20210118123834.5991-1-fred.gao@intel.com>
References: <20210118123834.5991-1-fred.gao@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] vfio/pci: Add support for opregion v2.1+
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
index 53d97f459252..d93a855227e7 100644
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
+				"IGD passthrough does not support\n"
+				"opregion version 0x%x with physical rvda 0x%llx\n", version, rvda);
+				return -EINVAL;
+			}
+
+			if ((u32)rvda != size) {
+				memunmap(base);
+				pci_err(vdev->pdev,
+				"Extended VBT does not follow opregion !\n"
+				"opregion version 0x%x:rvda 0x%llx\n", version, rvda);
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
