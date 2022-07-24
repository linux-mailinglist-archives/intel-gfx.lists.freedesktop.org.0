Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E51A57F408
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jul 2022 10:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248EABFBFD;
	Sun, 24 Jul 2022 08:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF4BEBFBF2
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jul 2022 08:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658651123; x=1690187123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UhJYKz1RxE1LnVZOh4cxTqBK9FhBUGWp8+loCW/j2e8=;
 b=LTALbAVMIVJ0/v9WBVYY47tQbiGxnnaotsnH700mGvBNJ46huFqZPR0c
 3uoRA6YNu/8wb5oW68kT28FHexj7bCvpMn0VXg6tUGMMuad67DjLPYp3M
 4wcHD5Ek3t1Dzi4pa2APMXQXmKC4c7tE2Bq5rrkF8LAHrgmHUQgFJmazQ
 H/M3lqUptYswlBD60bnvq6BylxychLCjMor0TdDPWODLA+e2LWHwealwd
 lCubJZixo+O/DNyrnnMZdROAJM7tRpYYkAMfrFq1xPLmRRI+HOD/IUIqe
 NiWh+aEBtDiuCRLJ+bBSiETjCkFRl4fMh2zYbUxFsIlUzdMI+El2OZijm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10417"; a="313268004"
X-IronPort-AV: E=Sophos;i="5.93,190,1654585200"; d="scan'208";a="313268004"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 01:25:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,190,1654585200"; d="scan'208";a="657756375"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 01:25:20 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Sun, 24 Jul 2022 11:24:24 +0300
Message-Id: <20220724082428.218628-11-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220724082428.218628-1-tomas.winkler@intel.com>
References: <20220724082428.218628-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 10/14] mei: gsc: setup gsc extended
 operational memory
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

1. Retrieve extended operational memory physical pointers from the
   auxiliary device info.
2. Setup memory registers.
3. Notify firmware that the memory is ready by sending the memory
   ready command.
4. Disable PXP device if GSC is not in PXP mode.

CC: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/misc/mei/bus-fixup.c  | 70 ++++++++++++++++++++++++++++++++++-
 drivers/misc/mei/gsc-me.c     | 16 ++++++++
 drivers/misc/mei/hw-me-regs.h |  7 ++++
 drivers/misc/mei/hw-me.c      | 28 +++++++++++++-
 drivers/misc/mei/mei_dev.h    | 10 +++++
 include/linux/mei_aux.h       |  1 +
 6 files changed, 129 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/mei/bus-fixup.c b/drivers/misc/mei/bus-fixup.c
index 811c94ebf250..5f3dffbf8fa4 100644
--- a/drivers/misc/mei/bus-fixup.c
+++ b/drivers/misc/mei/bus-fixup.c
@@ -188,6 +188,19 @@ static int mei_fwver(struct mei_cl_device *cldev)
 	return ret;
 }
 
+static int mei_gfx_memory_ready(struct mei_cl_device *cldev)
+{
+	struct mkhi_gfx_mem_ready req = {0};
+	unsigned int mode = MEI_CL_IO_TX_INTERNAL;
+
+	req.hdr.group_id = MKHI_GROUP_ID_GFX;
+	req.hdr.command = MKHI_GFX_MEMORY_READY_CMD_REQ;
+	req.flags = MKHI_GFX_MEM_READY_PXP_ALLOWED;
+
+	dev_dbg(&cldev->dev, "Sending memory ready command\n");
+	return __mei_cl_send(cldev->cl, (u8 *)&req, sizeof(req), 0, mode);
+}
+
 static void mei_mkhi_fix(struct mei_cl_device *cldev)
 {
 	int ret;
@@ -234,6 +247,39 @@ static void mei_gsc_mkhi_ver(struct mei_cl_device *cldev)
 		dev_err(&cldev->dev, "FW version command failed %d\n", ret);
 	mei_cldev_disable(cldev);
 }
+
+static void mei_gsc_mkhi_fix_ver(struct mei_cl_device *cldev)
+{
+	int ret;
+
+	/* No need to enable the client if nothing is needed from it */
+	if (!cldev->bus->fw_f_fw_ver_supported &&
+	    cldev->bus->pxp_mode != MEI_DEV_PXP_INIT)
+		return;
+
+	ret = mei_cldev_enable(cldev);
+	if (ret)
+		return;
+
+	if (cldev->bus->pxp_mode == MEI_DEV_PXP_INIT) {
+		ret = mei_gfx_memory_ready(cldev);
+		if (ret < 0)
+			dev_err(&cldev->dev, "memory ready command failed %d\n", ret);
+		else
+			dev_dbg(&cldev->dev, "memory ready command sent\n");
+		/* we go to reset after that */
+		cldev->bus->pxp_mode = MEI_DEV_PXP_SETUP;
+		goto out;
+	}
+
+	ret = mei_fwver(cldev);
+	if (ret < 0)
+		dev_err(&cldev->dev, "FW version command failed %d\n",
+			ret);
+out:
+	mei_cldev_disable(cldev);
+}
+
 /**
  * mei_wd - wd client on the bus, change protocol version
  *   as the API has changed.
@@ -473,6 +519,26 @@ static void vt_support(struct mei_cl_device *cldev)
 		cldev->do_match = 1;
 }
 
+/**
+ * pxp_isready - enable bus client if pxp is ready
+ *
+ * @cldev: me clients device
+ */
+static void pxp_isready(struct mei_cl_device *cldev)
+{
+	struct mei_device *bus = cldev->bus;
+
+	switch (bus->pxp_mode) {
+	case MEI_DEV_PXP_READY:
+	case MEI_DEV_PXP_DEFAULT:
+		cldev->do_match = 1;
+	break;
+	default:
+		cldev->do_match = 0;
+	break;
+	}
+}
+
 #define MEI_FIXUP(_uuid, _hook) { _uuid, _hook }
 
 static struct mei_fixup {
@@ -486,10 +552,10 @@ static struct mei_fixup {
 	MEI_FIXUP(MEI_UUID_WD, mei_wd),
 	MEI_FIXUP(MEI_UUID_MKHIF_FIX, mei_mkhi_fix),
 	MEI_FIXUP(MEI_UUID_IGSC_MKHI, mei_gsc_mkhi_ver),
-	MEI_FIXUP(MEI_UUID_IGSC_MKHI_FIX, mei_gsc_mkhi_ver),
+	MEI_FIXUP(MEI_UUID_IGSC_MKHI_FIX, mei_gsc_mkhi_fix_ver),
 	MEI_FIXUP(MEI_UUID_HDCP, whitelist),
 	MEI_FIXUP(MEI_UUID_ANY, vt_support),
-	MEI_FIXUP(MEI_UUID_PAVP, whitelist),
+	MEI_FIXUP(MEI_UUID_PAVP, pxp_isready),
 };
 
 /**
diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
index 4f6c916282b7..c8a167b57cc9 100644
--- a/drivers/misc/mei/gsc-me.c
+++ b/drivers/misc/mei/gsc-me.c
@@ -32,6 +32,17 @@ static int mei_gsc_read_hfs(const struct mei_device *dev, int where, u32 *val)
 	return 0;
 }
 
+static void mei_gsc_set_ext_op_mem(const struct mei_me_hw *hw, struct resource *mem)
+{
+	u32 low = lower_32_bits(mem->start);
+	u32 hi  = upper_32_bits(mem->start);
+	u32 limit = (resource_size(mem) / SZ_4K) | GSC_EXT_OP_MEM_VALID;
+
+	iowrite32(low, hw->mem_addr + H_GSC_EXT_OP_MEM_BASE_ADDR_LO_REG);
+	iowrite32(hi, hw->mem_addr + H_GSC_EXT_OP_MEM_BASE_ADDR_HI_REG);
+	iowrite32(limit, hw->mem_addr + H_GSC_EXT_OP_MEM_LIMIT_REG);
+}
+
 static int mei_gsc_probe(struct auxiliary_device *aux_dev,
 			 const struct auxiliary_device_id *aux_dev_id)
 {
@@ -67,6 +78,11 @@ static int mei_gsc_probe(struct auxiliary_device *aux_dev,
 
 	dev_set_drvdata(device, dev);
 
+	if (adev->ext_op_mem.start) {
+		mei_gsc_set_ext_op_mem(hw, &adev->ext_op_mem);
+		dev->pxp_mode = MEI_DEV_PXP_INIT;
+	}
+
 	/* use polling */
 	if (mei_me_hw_use_polling(hw)) {
 		mei_disable_interrupts(dev);
diff --git a/drivers/misc/mei/hw-me-regs.h b/drivers/misc/mei/hw-me-regs.h
index 15e8e2b322b1..8049f288f74c 100644
--- a/drivers/misc/mei/hw-me-regs.h
+++ b/drivers/misc/mei/hw-me-regs.h
@@ -127,6 +127,8 @@
 #  define PCI_CFG_HFS_3_FW_SKU_SPS   0x00000060
 #define PCI_CFG_HFS_4         0x64
 #define PCI_CFG_HFS_5         0x68
+#  define GSC_CFG_HFS_5_BOOT_TYPE_MSK      0x00000003
+#  define GSC_CFG_HFS_5_BOOT_TYPE_PXP               3
 #define PCI_CFG_HFS_6         0x6C
 
 /* MEI registers */
@@ -143,6 +145,11 @@
 /* H_D0I3C - D0I3 Control  */
 #define H_D0I3C    0x800
 
+#define H_GSC_EXT_OP_MEM_BASE_ADDR_LO_REG 0x100
+#define H_GSC_EXT_OP_MEM_BASE_ADDR_HI_REG 0x104
+#define H_GSC_EXT_OP_MEM_LIMIT_REG        0x108
+#define GSC_EXT_OP_MEM_VALID              BIT(31)
+
 /* register bits of H_CSR (Host Control Status register) */
 /* Host Circular Buffer Depth - maximum number of 32-bit entries in CB */
 #define H_CBD             0xFF000000
diff --git a/drivers/misc/mei/hw-me.c b/drivers/misc/mei/hw-me.c
index 6a8e8f3cea7e..c86d6018bc20 100644
--- a/drivers/misc/mei/hw-me.c
+++ b/drivers/misc/mei/hw-me.c
@@ -433,6 +433,29 @@ static bool mei_me_hw_is_resetting(struct mei_device *dev)
 	return (mecsr & ME_RST_HRA) == ME_RST_HRA;
 }
 
+/**
+ * mei_gsc_pxp_check - check for gsc firmware entering pxp mode
+ *
+ * @dev: the device structure
+ */
+static void mei_gsc_pxp_check(struct mei_device *dev)
+{
+	struct mei_me_hw *hw = to_me_hw(dev);
+	u32 fwsts5 = 0;
+
+	if (dev->pxp_mode == MEI_DEV_PXP_DEFAULT)
+		return;
+
+	hw->read_fws(dev, PCI_CFG_HFS_5, &fwsts5);
+	trace_mei_pci_cfg_read(dev->dev, "PCI_CFG_HFS_5", PCI_CFG_HFS_5, fwsts5);
+	if ((fwsts5 & GSC_CFG_HFS_5_BOOT_TYPE_MSK) == GSC_CFG_HFS_5_BOOT_TYPE_PXP) {
+		dev_dbg(dev->dev, "pxp mode is ready 0x%08x\n", fwsts5);
+		dev->pxp_mode = MEI_DEV_PXP_READY;
+	} else {
+		dev_dbg(dev->dev, "pxp mode is not ready 0x%08x\n", fwsts5);
+	}
+}
+
 /**
  * mei_me_hw_ready_wait - wait until the me(hw) has turned ready
  *  or timeout is reached
@@ -452,6 +475,8 @@ static int mei_me_hw_ready_wait(struct mei_device *dev)
 		return -ETIME;
 	}
 
+	mei_gsc_pxp_check(dev);
+
 	mei_me_hw_reset_release(dev);
 	dev->recvd_hw_ready = false;
 	return 0;
@@ -1270,7 +1295,8 @@ irqreturn_t mei_me_irq_thread_handler(int irq, void *dev_id)
 
 	/* check if ME wants a reset */
 	if (!mei_hw_is_ready(dev) && dev->dev_state != MEI_DEV_RESETTING) {
-		dev_warn(dev->dev, "FW not ready: resetting.\n");
+		dev_warn(dev->dev, "FW not ready: resetting: dev_state = %d pxp = %d\n",
+			 dev->dev_state, dev->pxp_mode);
 		if (dev->dev_state == MEI_DEV_POWERING_DOWN ||
 		    dev->dev_state == MEI_DEV_POWER_DOWN)
 			mei_cl_all_disconnect(dev);
diff --git a/drivers/misc/mei/mei_dev.h b/drivers/misc/mei/mei_dev.h
index 16f59b3a45fc..7c508bca9a00 100644
--- a/drivers/misc/mei/mei_dev.h
+++ b/drivers/misc/mei/mei_dev.h
@@ -62,6 +62,14 @@ enum mei_dev_state {
 	MEI_DEV_POWER_UP
 };
 
+/* MEI PXP mode state */
+enum mei_dev_pxp_mode {
+	MEI_DEV_PXP_DEFAULT = 0,
+	MEI_DEV_PXP_INIT    = 1,
+	MEI_DEV_PXP_SETUP   = 2,
+	MEI_DEV_PXP_READY   = 3,
+};
+
 const char *mei_dev_state_str(int state);
 
 enum mei_file_transaction_states {
@@ -454,6 +462,7 @@ struct mei_dev_timeouts {
  * @reset_count : number of consecutive resets
  * @dev_state   : device state
  * @hbm_state   : state of host bus message protocol
+ * @pxp_mode    : PXP device mode
  * @init_clients_timer : HBM init handshake timeout
  *
  * @pg_event    : power gating event
@@ -537,6 +546,7 @@ struct mei_device {
 	unsigned long reset_count;
 	enum mei_dev_state dev_state;
 	enum mei_hbm_state hbm_state;
+	enum mei_dev_pxp_mode pxp_mode;
 	u16 init_clients_timer;
 
 	/*
diff --git a/include/linux/mei_aux.h b/include/linux/mei_aux.h
index a29f4064b9c0..c3fc137a2aba 100644
--- a/include/linux/mei_aux.h
+++ b/include/linux/mei_aux.h
@@ -11,6 +11,7 @@ struct mei_aux_device {
 	struct auxiliary_device aux_dev;
 	int irq;
 	struct resource bar;
+	struct resource ext_op_mem;
 	bool slow_fw;
 };
 
-- 
2.35.3

