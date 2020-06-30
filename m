Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7702A20FF2D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C986E4B7;
	Tue, 30 Jun 2020 21:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D55306E317;
 Tue, 30 Jun 2020 21:28:44 +0000 (UTC)
IronPort-SDR: pslDrjA+G8uxW4G09LbIKvJj7Zudcou0+mQub+x2oBDC1dMu7jYTUIEc0W4TImdW6NqlYsBVro
 biDK3/NXBRWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="144554762"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="144554762"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:44 -0700
IronPort-SDR: vzbQ6BGh2HhcSHaBmiv+oIJgc3ZiX9Jl6YieVb/hYUGcQYqEczTiepHPJCzN8qlkd8ba2N/X47
 kqCwHvTCBWZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066711"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:44 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:37 -0700
Message-Id: <1593552491-23698-26-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 25/59] drm/kmb: Display clock enable/disable
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Get clock info from DT and enable it during initialization.
Also changed name of the driver to "kmb,display" to match other
entries in the DT.

v2: fixed error in clk_disable

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_drv.c | 42 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_drv.c b/drivers/gpu/drm/kmb/kmb_drv.c
index 0aa910b..b0ab40b 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.c
+++ b/drivers/gpu/drm/kmb/kmb_drv.c
@@ -32,6 +32,7 @@
 #include <linux/of_graph.h>
 #include <linux/of_reserved_mem.h>
 #include <linux/pm_runtime.h>
+#include <linux/clk.h>
 #include <drm/drm.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
@@ -51,6 +52,25 @@
 /*IRQ handler*/
 static irqreturn_t kmb_isr(int irq, void *arg);
 
+static struct clk *clk_lcd;
+static struct clk *clk_mipi;
+
+static int kmb_display_clk_enable(void)
+{
+	clk_prepare_enable(clk_lcd);
+	clk_prepare_enable(clk_mipi);
+	return 0;
+}
+
+static int kmb_display_clk_disable(void)
+{
+	if (clk_lcd)
+		clk_disable_unprepare(clk_lcd);
+	if (clk_mipi)
+		clk_disable_unprepare(clk_mipi);
+	return 0;
+}
+
 static int kmb_load(struct drm_device *drm, unsigned long flags)
 {
 	struct kmb_drm_private *dev_p = drm->dev_private;
@@ -172,6 +192,19 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		goto setup_fail;
 	}
 
+	/* enable display clocks*/
+	clk_lcd = clk_get(&pdev->dev, "clk_lcd");
+	if (!clk_lcd) {
+		DRM_ERROR("clk_get() failed clk_lcd\n");
+		goto setup_fail;
+	}
+	clk_mipi = clk_get(&pdev->dev, "clk_mipi");
+	if (!clk_mipi) {
+		DRM_ERROR("clk_get() failed clk_mipi\n");
+		goto setup_fail;
+	}
+	kmb_display_clk_enable();
+
 	ret = drm_irq_install(drm, platform_get_irq(pdev, 0));
 	if (ret < 0) {
 		DRM_ERROR("failed to install IRQ handler\n");
@@ -397,6 +430,11 @@ static void kmb_drm_unbind(struct device *dev)
 	of_reserved_mem_device_release(drm->dev);
 	drm_mode_config_cleanup(drm);
 
+	/*release clks */
+	kmb_display_clk_disable();
+	clk_put(clk_lcd);
+	clk_put(clk_mipi);
+
 	drm_dev_put(drm);
 	drm->dev_private = NULL;
 	dev_set_drvdata(dev, NULL);
@@ -435,8 +473,8 @@ static int kmb_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct of_device_id kmb_of_match[] = {
-	{.compatible = "lcd"},
+static const struct of_device_id  kmb_of_match[] = {
+	{.compatible = "kmb,display"},
 	{},
 };
 
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
