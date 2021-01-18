Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D622F98CF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 05:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF45889B48;
	Mon, 18 Jan 2021 04:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF2CC89B48
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 04:45:55 +0000 (UTC)
IronPort-SDR: +IYkW/WM7VCinWGCySux9tBTT9GGgZ67TW0PJDf5PVumKvyLYEc4SvTiCsol5mXo/kSUWQHiTk
 AruEZ6hHBEgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="175254182"
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="175254182"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2021 20:45:54 -0800
IronPort-SDR: 2U6qZl/cfuHUmxeg0XNanDjty97TPf77gX62Si/NIw7L3m7bXMLOlA4qi9EzeySvB5Te39cN2U
 S9r2TyMXE5jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="355056230"
Received: from cfl-host.sh.intel.com ([10.239.158.59])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jan 2021 20:45:52 -0800
From: Fred Gao <fred.gao@intel.com>
To: kvm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 20:38:34 +0800
Message-Id: <20210118123834.5991-1-fred.gao@intel.com>
X-Mailer: git-send-email 2.24.1.1.gb6d4d82bd5
In-Reply-To: <20201202171249.17083-1-fred.gao@intel.com>
References: <20201202171249.17083-1-fred.gao@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] vfio/pci: Add support for opregion v2.0+
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

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Signed-off-by: Swee Yee Fonn <swee.yee.fonn@intel.com>
Signed-off-by: Fred Gao <fred.gao@intel.com>
---
 drivers/vfio/pci/vfio_pci_igd.c | 59 +++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/vfio/pci/vfio_pci_igd.c b/drivers/vfio/pci/vfio_pci_igd.c
index 53d97f459252..fc470278a492 100644
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
@@ -83,6 +88,60 @@ static int vfio_pci_igd_opregion_init(struct vfio_pci_device *vdev)
 
 	size *= 1024; /* In KB */
 
+	/*
+	 * Support opregion v2.0+
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
+			u32 offset;
+
+			if (version == 0x0200)
+				offset = rvda - (u64)addr;
+			else
+				offset = rvda;
+
+			if (offset != size) {
+				pci_err(vdev->pdev,
+				"Extended VBT does not follow opregion !\n"
+				"opregion version 0x%x:offset 0x%x\n", version, offset);
+				return -EINVAL;
+			}
+
+			/*
+			 * the only difference between opregion 2.0 and 2.1 is
+			 * rvda addressing mode. since rvda is physical host
+			 * VBT address and cannot be directly used in guest,
+			 * faked into opregion 2.1's relative offset.
+			 */
+			if (version == 0x0200) {
+				*(__le16 *)(base + OPREGION_VERSION) =
+					cpu_to_le16(0x0201);
+				(*(__le64 *)(base + OPREGION_RVDA)) =
+					cpu_to_le64((rvda - (u64)addr));
+			}
+
+			/* region size for opregion v2.0+: opregion and VBT size */
+			size = offset + rvds;
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
