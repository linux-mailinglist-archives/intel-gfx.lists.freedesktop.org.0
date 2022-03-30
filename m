Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4444ECE4E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 22:59:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C451610E991;
	Wed, 30 Mar 2022 20:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F3E310E95D
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 20:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648673927; x=1680209927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l/tTPmGwwLdDptWvNXTXU/TJJaBbkLdTthPVHWkA544=;
 b=K09XC3zwVmcACFdIqIu1iRPx2G2TMEeq4YAiwUMgV3HlTig6zZzrzfP0
 PB8mKeY9rsEQwSlRknZu4wKoUSNVuGs0hPGiiTwZUE+bPcX3SreoMokn4
 LANw+IWdGf2n2BzR7ozwLvBDeYwGG/79TZMHUqU4g7IVz698dud5QXcnU
 0xW7HJpjqxneKu/dYvejnqa7F2jZJe5SCyXNYzXDMZ6UWsdVmzls4g0tI
 RYRwPJSnPbAYLK7dtGp8OwaVCw5HSPVNX4bUQ8rdkmqH3R9BMIg4hFCEr
 6PVJzJfFsRpxPB+RDaSIZ2rvefVMPf2cNfd/vdZrKf1EVK27LMaF+F5n+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259829079"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="259829079"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 13:58:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="565814573"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 13:58:46 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 13:53:32 -0700
Message-Id: <20220330205334.3016587-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220330205334.3016587-1-daniele.ceraolospurio@intel.com>
References: <20220330205334.3016587-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 4/6] mei: gsc: add runtime pm handlers
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
Cc: alexander.usyskin@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

Implement runtime handlers for mei-gsc, to track
idle state of the device properly.

CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/misc/mei/gsc-me.c | 67 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 66 insertions(+), 1 deletion(-)

diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
index 58e39c00f1501..32ea75f5e7aa5 100644
--- a/drivers/misc/mei/gsc-me.c
+++ b/drivers/misc/mei/gsc-me.c
@@ -159,7 +159,72 @@ static int __maybe_unused mei_gsc_pm_resume(struct device *device)
 	return 0;
 }
 
-static SIMPLE_DEV_PM_OPS(mei_gsc_pm_ops, mei_gsc_pm_suspend, mei_gsc_pm_resume);
+static int __maybe_unused mei_gsc_pm_runtime_idle(struct device *device)
+{
+	struct mei_device *dev = dev_get_drvdata(device);
+
+	if (!dev)
+		return -ENODEV;
+	if (mei_write_is_idle(dev))
+		pm_runtime_autosuspend(device);
+
+	return -EBUSY;
+}
+
+static int  __maybe_unused mei_gsc_pm_runtime_suspend(struct device *device)
+{
+	struct mei_device *dev = dev_get_drvdata(device);
+	struct mei_me_hw *hw;
+	int ret;
+
+	if (!dev)
+		return -ENODEV;
+
+	mutex_lock(&dev->device_lock);
+
+	if (mei_write_is_idle(dev)) {
+		hw = to_me_hw(dev);
+		hw->pg_state = MEI_PG_ON;
+		ret = 0;
+	} else {
+		ret = -EAGAIN;
+	}
+
+	mutex_unlock(&dev->device_lock);
+
+	return ret;
+}
+
+static int __maybe_unused mei_gsc_pm_runtime_resume(struct device *device)
+{
+	struct mei_device *dev = dev_get_drvdata(device);
+	struct mei_me_hw *hw;
+	irqreturn_t irq_ret;
+
+	if (!dev)
+		return -ENODEV;
+
+	mutex_lock(&dev->device_lock);
+
+	hw = to_me_hw(dev);
+	hw->pg_state = MEI_PG_OFF;
+
+	mutex_unlock(&dev->device_lock);
+
+	irq_ret = mei_me_irq_thread_handler(1, dev);
+	if (irq_ret != IRQ_HANDLED)
+		dev_err(dev->dev, "thread handler fail %d\n", irq_ret);
+
+	return 0;
+}
+
+static const struct dev_pm_ops mei_gsc_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(mei_gsc_pm_suspend,
+				mei_gsc_pm_resume)
+	SET_RUNTIME_PM_OPS(mei_gsc_pm_runtime_suspend,
+			   mei_gsc_pm_runtime_resume,
+			   mei_gsc_pm_runtime_idle)
+};
 
 static const struct auxiliary_device_id mei_gsc_id_table[] = {
 	{
-- 
2.25.1

