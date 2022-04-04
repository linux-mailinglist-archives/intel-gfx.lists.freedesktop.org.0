Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E0E4F19BD
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 20:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D3010E5A4;
	Mon,  4 Apr 2022 18:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 054E610E54B
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 18:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649096554; x=1680632554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l/tTPmGwwLdDptWvNXTXU/TJJaBbkLdTthPVHWkA544=;
 b=LIAsMq22jA/eGS17h1s75j982rPLWvIXHDTKIe3881vqDbODVAxmVjg+
 bqd6myy/GxHbtQTjhYr3Fbc5SBwWSzdtR8lPtnienSOigOPZmxL+WhVCP
 N/NSbIngjo9tJdfPA7cK2h3Oh7dZWLpfGHgcpbKwMa+G4b8dREYa4btYb
 YNCZtx0GQuB6xfFdKkwlFZgALihOJtJ9f+Uf8Xoq3oxrxuJ0ESb/W6yGU
 n2iRB3ytHGEeZJI5z1Kcrmx80JJn7CqEEcHGbpK61UnRHfRkJcUuPDP5U
 4KnkyIKnzNK6o7MfGAWzOUCOFQrO193JhB+DF3ThVlAtO6/gtdvsB7xdQ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="347021191"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="347021191"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 11:22:33 -0700
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="721748080"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 11:22:33 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Apr 2022 11:17:04 -0700
Message-Id: <20220404181706.3523646-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220404181706.3523646-1-daniele.ceraolospurio@intel.com>
References: <20220404181706.3523646-1-daniele.ceraolospurio@intel.com>
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

