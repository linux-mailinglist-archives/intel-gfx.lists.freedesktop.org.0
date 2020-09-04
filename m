Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9147B25DBFE
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C808D6EC10;
	Fri,  4 Sep 2020 14:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11FAB6EC05
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:40:03 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id e16so7015736wrm.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eOCRFsY1vb5jaEMem8o2Yaii6vx9plUiAh9tAq5PM+g=;
 b=QT91j46EzPek7Va8Z5+WHBFgNs0hl8yiH6+MSqvPh0nWwIaqQSDKBE3dJlSnwewPom
 I+kd/QT77oOsVdbv0wpeaBj5Mo4QJUQUn7725z1a5DGTrWuwpgO52n3E79rktnlGyZRb
 WhedPj9L2v71VDXMm/sTKmcY5VxyVjLL9y+fk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eOCRFsY1vb5jaEMem8o2Yaii6vx9plUiAh9tAq5PM+g=;
 b=MPZSCtW0N674TQuDt/lWix/gZX0/x5uMxo2D6fyhkz5jp3SCq1NGcFAGSMxclanj+Q
 2luGiOrIorr2hYFOPeEbr/008H8iqjR6YXds0zAsH0yE2bOl0tFftWf1zpKVwx+JsJvb
 t2/XD2y7zgNpCjtwiOAqAjYE/aqs2xS4CgkhEGzKI9FigelivfPQHvtVnjlWynd6qpKD
 zdxPuI7vHkDlPr0VSvDpgGFk+b56G4o/bPkuiVdLbh5cMxzIazuHEJN5+J3uOqbm8LKR
 qzf58sHlzHLo1bhvWY8v+z55kEfAvfkhAXLsJP6xy4SrmYJhOY0oFpNqUtItE7N/xduq
 SJdQ==
X-Gm-Message-State: AOAM532nl8qHrQ+0QdMgpYV5HA8jxFI8UZoAiQlE4ctWUswRZIo8pe6V
 qZqZtXz8ZPqVhnf8XQOA/HAFBg==
X-Google-Smtp-Source: ABdhPJxYz8O/5F3NsAmU5LSFZeS+8bk1fsXVDTH1ZEAHm1JOZakM7RKf68y++gW/qVbhAmuUGHryiw==
X-Received: by 2002:a5d:67d0:: with SMTP id n16mr8594414wrw.198.1599230401607; 
 Fri, 04 Sep 2020 07:40:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.40.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:40:00 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:27 +0200
Message-Id: <20200904143941.110665-11-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/24] drm/arc: Switch to devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

- Need to embedded the drm_device, but for now we keep the usual
  pointer chasing.
- No more devm_kzalloc, which fixes a lifetime issues on driver
  remove.
- No more drm_dev_put, that's done by devm_ now.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 drivers/gpu/drm/arc/arcpgu.h     |  1 +
 drivers/gpu/drm/arc/arcpgu_drv.c | 33 +++++++++++++-------------------
 2 files changed, 14 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
index 6aac44b953ad..cd9e932f501e 100644
--- a/drivers/gpu/drm/arc/arcpgu.h
+++ b/drivers/gpu/drm/arc/arcpgu.h
@@ -9,6 +9,7 @@
 #define _ARCPGU_H_
 
 struct arcpgu_drm_private {
+	struct drm_device	drm;
 	void __iomem		*regs;
 	struct clk		*clk;
 	struct drm_framebuffer	*fb;
diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
index f164818ec477..68eb4a31c54b 100644
--- a/drivers/gpu/drm/arc/arcpgu_drv.c
+++ b/drivers/gpu/drm/arc/arcpgu_drv.c
@@ -42,18 +42,14 @@ static void arcpgu_setup_mode_config(struct drm_device *drm)
 
 DEFINE_DRM_GEM_CMA_FOPS(arcpgu_drm_ops);
 
-static int arcpgu_load(struct drm_device *drm)
+static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
 {
-	struct platform_device *pdev = to_platform_device(drm->dev);
-	struct arcpgu_drm_private *arcpgu;
+	struct platform_device *pdev = to_platform_device(arcpgu->drm.dev);
 	struct device_node *encoder_node = NULL, *endpoint_node = NULL;
+	struct drm_device *drm = &arcpgu->drm;
 	struct resource *res;
 	int ret;
 
-	arcpgu = devm_kzalloc(&pdev->dev, sizeof(*arcpgu), GFP_KERNEL);
-	if (arcpgu == NULL)
-		return -ENOMEM;
-
 	drm->dev_private = arcpgu;
 
 	arcpgu->clk = devm_clk_get(drm->dev, "pxlclk");
@@ -162,30 +158,28 @@ static struct drm_driver arcpgu_drm_driver = {
 
 static int arcpgu_probe(struct platform_device *pdev)
 {
-	struct drm_device *drm;
+	struct arcpgu_drm_private *arcpgu;
 	int ret;
 
-	drm = drm_dev_alloc(&arcpgu_drm_driver, &pdev->dev);
-	if (IS_ERR(drm))
-		return PTR_ERR(drm);
+	arcpgu = devm_drm_dev_alloc(&pdev->dev, &arcpgu_drm_driver,
+				    struct arcpgu_drm_private, drm);
+	if (IS_ERR(arcpgu))
+		return PTR_ERR(arcpgu);
 
-	ret = arcpgu_load(drm);
+	ret = arcpgu_load(arcpgu);
 	if (ret)
-		goto err_unref;
+		return ret;
 
-	ret = drm_dev_register(drm, 0);
+	ret = drm_dev_register(&arcpgu->drm, 0);
 	if (ret)
 		goto err_unload;
 
-	drm_fbdev_generic_setup(drm, 16);
+	drm_fbdev_generic_setup(&arcpgu->drm, 16);
 
 	return 0;
 
 err_unload:
-	arcpgu_unload(drm);
-
-err_unref:
-	drm_dev_put(drm);
+	arcpgu_unload(&arcpgu->drm);
 
 	return ret;
 }
@@ -196,7 +190,6 @@ static int arcpgu_remove(struct platform_device *pdev)
 
 	drm_dev_unregister(drm);
 	arcpgu_unload(drm);
-	drm_dev_put(drm);
 
 	return 0;
 }
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
