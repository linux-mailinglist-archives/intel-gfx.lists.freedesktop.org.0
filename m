Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECCA4F7FAE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 14:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6567F10EA95;
	Thu,  7 Apr 2022 12:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A0B10EA95
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 12:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649336374; x=1680872374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WovsgYiVLZg/i7UC+9r4MQsqX4gv9lKhRB/u0hmFKfI=;
 b=GKQ8b/kpuavsOokcR4+ahZPVRBAfinvttCTRpd4o/rmGqDaVHNqVjIoQ
 ho8O6Y3kNV3UZRdUCvkfG3M8pKiiTHoRBr2nllJCkDlINwwm+Cugerq6F
 9Emo4llhBYriAhl/mCOCJ8BAr6aEy8DOfpcsvbPKegHVWa5mvO4ZFpzqU
 +opLtcM2SRKg9zESGLf2JYtaKwHGfPBgwRthEsMg+ph0qfwO4xEQAo2tc
 wxsWsObKtVK4kaZhhpY99xomd1U/SrHXoPX2KyGgJ0aHyiGhzQ/+1k905
 eqyZNn2UxPoh7sVSjbuecU5eTjpOYwjg94++i4XIQ8hcNXpFLFlhL3Moa w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="248841907"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="248841907"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:59:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571040806"
Received: from sannilnx.jer.intel.com ([10.12.231.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:59:30 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu,  7 Apr 2022 15:58:23 +0300
Message-Id: <20220407125839.1479249-5-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407125839.1479249-1-alexander.usyskin@intel.com>
References: <20220407125839.1479249-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/20] mei: gsc: add runtime pm handlers
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
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
index 58e39c00f150..32ea75f5e7aa 100644
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
2.32.0

