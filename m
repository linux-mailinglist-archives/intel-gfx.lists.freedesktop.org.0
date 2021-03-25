Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5219B348C8A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 10:16:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEE596ECDF;
	Thu, 25 Mar 2021 09:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54CEB6ECDF
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 09:16:34 +0000 (UTC)
IronPort-SDR: 2iNN/Kv3bMONCidmOm7KaXcLJt2009Qn6NnsE5P/QNCbgifEcDaqb1TqnQPtDElfiAOEonPYGi
 RSCGHovPcuZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="252244271"
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="252244271"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 02:16:33 -0700
IronPort-SDR: NTFIndnYFO+inBmHE2s+rW7KAAK4EHsWZKzk6en68eLnL58eOfu8v5vDvHmWnWdYqfJxzoLUtl
 JWfipT+1Bvow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="514538517"
Received: from cfl-host.sh.intel.com ([10.239.158.118])
 by fmsmga001.fm.intel.com with ESMTP; 25 Mar 2021 02:16:31 -0700
From: Fred Gao <fred.gao@intel.com>
To: kvm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 26 Mar 2021 01:09:53 +0800
Message-Id: <20210325170953.24549-1-fred.gao@intel.com>
X-Mailer: git-send-email 2.24.1.1.gb6d4d82bd5
In-Reply-To: <20210302130220.9349-1-fred.gao@intel.com>
References: <20210302130220.9349-1-fred.gao@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5] vfio/pci: Add support for opregion v2.1+
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
but when VBT data exceeds 6KB size and cannot be within mailbox #4
then from opregion v2.0+, Extended VBT region, next to opregion is
used to hold the VBT data, so the total size will be opregion size plus
extended VBT region size.

Since opregion v2.0 with physical host VBT address would not be
practically available for end user and guest can not directly access
host physical address, so it is not supported.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Signed-off-by: Swee Yee Fonn <swee.yee.fonn@intel.com>
Signed-off-by: Fred Gao <fred.gao@intel.com>
---
 drivers/vfio/pci/vfio_pci_igd.c | 53 +++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/vfio/pci/vfio_pci_igd.c b/drivers/vfio/pci/vfio_pci_igd.c
index e66dfb0178ed..228df565e9bc 100644
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
@@ -83,6 +88,54 @@ static int vfio_pci_igd_opregion_init(struct vfio_pci_device *vdev)
 
 	size *= 1024; /* In KB */
 
+	/*
+	 * Support opregion v2.1+
+	 * When VBT data exceeds 6KB size and cannot be within mailbox #4, then
+	 * the Extended VBT region next to opregion is used to hold the VBT data.
+	 * RVDA (Relative Address of VBT Data from Opregion Base) and RVDS
+	 * (Raw VBT Data Size) from opregion structure member are used to hold the
+	 * address from region base and size of VBT data. RVDA/RVDS are not
+	 * defined before opregion 2.0.
+	 *
+	 * opregion 2.1+: RVDA is unsigned, relative offset from
+	 * opregion base, and should point to the end of opregion.
+	 * otherwise, exposing to userspace to allow read access to everything between
+	 * the OpRegion and VBT is not safe.
+	 * RVDS is defined as size in bytes.
+	 *
+	 * opregion 2.0: rvda is the physical VBT address.
+	 * Since rvda is HPA it cannot be directly used in guest.
+	 * And it should not be practically available for end user,so it is not supported.
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
+					"IGD assignment does not support opregion v2.0 with an extended VBT region\n");
+				return -EINVAL;
+			}
+
+			if (rvda != size) {
+				memunmap(base);
+				pci_err(vdev->pdev,
+					"Extended VBT does not follow opregion on version 0x%04x\n",
+					version);
+				return -EINVAL;
+			}
+
+			/* region size for opregion v2.0+: opregion and VBT size. */
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
