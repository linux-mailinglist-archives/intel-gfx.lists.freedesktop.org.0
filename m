Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D9C2A27B5
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 11:06:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0F06E463;
	Mon,  2 Nov 2020 10:06:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F526E463
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 10:06:29 +0000 (UTC)
IronPort-SDR: 3L9hZ9NPjcqHnBTPOp2Z+YnAdjBnXteCDrfJrIL5GteSu5ZvuZ/uujuAeVewJO3bOSWOOWhtHK
 Ww0LhhdQsPOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="186692422"
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="186692422"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 02:06:28 -0800
IronPort-SDR: dOcdvCG/tii0EzWUK+yCLhpjz/Z99X5uQxcVBlpB+z/PyrSQ+5MNTAlzS3z2R9arPLoXhtVH3D
 /RFj2QOzDdTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="336121710"
Received: from cfl-host.sh.intel.com ([10.239.158.142])
 by orsmga002.jf.intel.com with ESMTP; 02 Nov 2020 02:06:26 -0800
From: Fred Gao <fred.gao@intel.com>
To: kvm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  3 Nov 2020 02:01:20 +0800
Message-Id: <20201102180120.25319-1-fred.gao@intel.com>
X-Mailer: git-send-email 2.24.1.1.gb6d4d82bd5
In-Reply-To: <20200929161038.15465-1-fred.gao@intel.com>
References: <20200929161038.15465-1-fred.gao@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] vfio/pci: Bypass IGD init in case of -ENODEV
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
Cc: Fred Gao <fred.gao@intel.com>, Hang Yuan <hang.yuan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bypass the IGD initialization when -ENODEV returns,
that should be the case if opregion is not available for IGD
or within discrete graphics device's option ROM,
or host/lpc bridge is not found.

Then use of -ENODEV here means no special device resources found
which needs special care for VFIO, but we still allow other normal
device resource access.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Xiong Zhang <xiong.y.zhang@intel.com>
Cc: Hang Yuan <hang.yuan@linux.intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Fred Gao <fred.gao@intel.com>
---
 drivers/vfio/pci/vfio_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/vfio/pci/vfio_pci.c b/drivers/vfio/pci/vfio_pci.c
index f634c81998bb..c88cf9937469 100644
--- a/drivers/vfio/pci/vfio_pci.c
+++ b/drivers/vfio/pci/vfio_pci.c
@@ -341,7 +341,7 @@ static int vfio_pci_enable(struct vfio_pci_device *vdev)
 	    pdev->vendor == PCI_VENDOR_ID_INTEL &&
 	    IS_ENABLED(CONFIG_VFIO_PCI_IGD)) {
 		ret = vfio_pci_igd_init(vdev);
-		if (ret) {
+		if (ret && ret != -ENODEV) {
 			pci_warn(pdev, "Failed to setup Intel IGD regions\n");
 			goto disable_exit;
 		}
-- 
2.24.1.1.gb6d4d82bd5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
