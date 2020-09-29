Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C72027BEF8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 10:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22E089829;
	Tue, 29 Sep 2020 08:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99DA9897F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 08:15:15 +0000 (UTC)
IronPort-SDR: ADZbxT1nwBrQoswYqHiJwwi6qY+y5kHRU+uEoG4SNUXoPj3Y6MH3SmB51U6xrSwGqJ6kP+lT3z
 YRq399b3HXxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="162205182"
X-IronPort-AV: E=Sophos;i="5.77,317,1596524400"; d="scan'208";a="162205182"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 01:15:11 -0700
IronPort-SDR: HdJEXw08RW2OmX8vo3ukX1Qwk5R1r9o2nTX3SKpagcWgz+VVDf6bA97Y6oSDzNrn7hKWI2yc+G
 1PYnviIZyXYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,317,1596524400"; d="scan'208";a="345187563"
Received: from cfl-host.sh.intel.com ([10.239.158.142])
 by fmsmga002.fm.intel.com with ESMTP; 29 Sep 2020 01:15:07 -0700
From: Fred Gao <fred.gao@intel.com>
To: kvm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 00:10:38 +0800
Message-Id: <20200929161038.15465-1-fred.gao@intel.com>
X-Mailer: git-send-email 2.24.1.1.gb6d4d82bd5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] vfio/pci: Refine Intel IGD OpRegion support
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
Cc: Fred Gao <fred.gao@intel.com>, Hang Yuan <hang.yuan@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bypass the IGD initialization for Intel's dgfx devices with own expansion
ROM and the host/LPC bridge config space are no longer accessed.

v2: simply test if discrete or integrated gfx device
    with root bus. (Alex Williamson)

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Xiong Zhang <xiong.y.zhang@intel.com>
Cc: Hang Yuan <hang.yuan@linux.intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Fred Gao <fred.gao@intel.com>
---
 drivers/vfio/pci/vfio_pci.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/vfio/pci/vfio_pci.c b/drivers/vfio/pci/vfio_pci.c
index f634c81998bb..9258ccfadb79 100644
--- a/drivers/vfio/pci/vfio_pci.c
+++ b/drivers/vfio/pci/vfio_pci.c
@@ -336,10 +336,11 @@ static int vfio_pci_enable(struct vfio_pci_device *vdev)
 	if (!vfio_vga_disabled() && vfio_pci_is_vga(pdev))
 		vdev->has_vga = true;
 
-
+	/* Intel's dgfx should not appear on root bus */
 	if (vfio_pci_is_vga(pdev) &&
 	    pdev->vendor == PCI_VENDOR_ID_INTEL &&
-	    IS_ENABLED(CONFIG_VFIO_PCI_IGD)) {
+	    IS_ENABLED(CONFIG_VFIO_PCI_IGD) &&
+	    pci_is_root_bus(pdev->bus)) {
 		ret = vfio_pci_igd_init(vdev);
 		if (ret) {
 			pci_warn(pdev, "Failed to setup Intel IGD regions\n");
-- 
2.24.1.1.gb6d4d82bd5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
