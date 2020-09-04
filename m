Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7209925DBF0
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E026EBFE;
	Fri,  4 Sep 2020 14:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC5896EBED
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:39:58 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id e16so7015524wrm.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NqrDMWKPVBEXKxMkEUSZRSbvqc8CLg+CwI6i4dEMZeg=;
 b=SifpAuEmHbqeHebuJLfbshEF0Iu4B2BZVBntxOws9U08eLFFyAe2mBfvc/nb3Gy5ad
 7hs3LiSmWIJF/NHjPuc8DNTDP437uOTjEGxnlf+JsJs7cyQ4aYVhkPfquwXxSqbnzwXZ
 tu4v7bze3q8hgkUxqysmO54qHEupegU/yV/XU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NqrDMWKPVBEXKxMkEUSZRSbvqc8CLg+CwI6i4dEMZeg=;
 b=RI2LGSc5JM9OH1amYE6ldVTVAhTz6Ren8sDHjIPtC2NU7xP+aDHiFPff3VycEe2NAI
 3FazQzj8MES83SgdQ8Ggcwmk+w72s/44QKX1uSKvUGIcG+dzHQlRX3Y6nFrxFZp4Tcos
 DZeO45938Z/lbOHbf9dHeheiwJbi0GV+P3RLy32UVorJbMFoTccs7jlRUFMma4O1nSZC
 We2NYLbOzupCAqHaOocorHRvHbubCWsANbMMzhQ8e3dqd6GqizW8TQtNuT2DsZ1cFKnt
 QE790RO305eBnvOGf2buSCXSxFzf8gvnGz6onnSpbLM6o7gby8ERr2sBjSSvhxT1/x4P
 LC2A==
X-Gm-Message-State: AOAM531XrmR6sRTgYi5KCJuDvEzyr8orZEzrwjdyYnpPF2DlrmpBQ2Ja
 taC0WldRvyZmVqSskXoLgFb5Ng==
X-Google-Smtp-Source: ABdhPJwPEJ3BZ3mdyweBni7RP9oc5oU9d4IzFmeXdtvgSBcZxg7k2MoWvJwtXfV3YCbHBT4uIjNA0g==
X-Received: by 2002:adf:f8d0:: with SMTP id f16mr8587525wrq.66.1599230397711; 
 Fri, 04 Sep 2020 07:39:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.39.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:39:57 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:23 +0200
Message-Id: <20200904143941.110665-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/24] drm/xlnx: Use devm_drm_dev_alloc
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
Cc: Hyun Kwon <hyun.kwon@xilinx.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gets rid of drmm_add_final_kfree, which I want to unexport so that it
stops confusion people about this transitional state of rolling drm
managed memory out.

This also fixes the missing drm_dev_put in the error path of the probe
code.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Hyun Kwon <hyun.kwon@xilinx.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/xlnx/zynqmp_dpsub.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/xlnx/zynqmp_dpsub.c b/drivers/gpu/drm/xlnx/zynqmp_dpsub.c
index 26328c76305b..80b8edd20442 100644
--- a/drivers/gpu/drm/xlnx/zynqmp_dpsub.c
+++ b/drivers/gpu/drm/xlnx/zynqmp_dpsub.c
@@ -208,27 +208,16 @@ static int zynqmp_dpsub_probe(struct platform_device *pdev)
 	int ret;
 
 	/* Allocate private data. */
-	dpsub = kzalloc(sizeof(*dpsub), GFP_KERNEL);
-	if (!dpsub)
-		return -ENOMEM;
+	dpsub = devm_drm_dev_alloc(&pdev->dev, &zynqmp_dpsub_drm_driver,
+				   struct zynqmp_dpsub, drm);
+	if (IS_ERR(dpsub))
+		return PTR_ERR(dpsub);
 
 	dpsub->dev = &pdev->dev;
 	platform_set_drvdata(pdev, dpsub);
 
 	dma_set_mask(dpsub->dev, DMA_BIT_MASK(ZYNQMP_DISP_MAX_DMA_BIT));
 
-	/*
-	 * Initialize the DRM device early, as the DRM core mandates usage of
-	 * the managed memory helpers tied to the DRM device.
-	 */
-	ret = drm_dev_init(&dpsub->drm, &zynqmp_dpsub_drm_driver, &pdev->dev);
-	if (ret < 0) {
-		kfree(dpsub);
-		return ret;
-	}
-
-	drmm_add_final_kfree(&dpsub->drm, dpsub);
-
 	/* Try the reserved memory. Proceed if there's none. */
 	of_reserved_mem_device_init(&pdev->dev);
 
@@ -286,8 +275,6 @@ static int zynqmp_dpsub_remove(struct platform_device *pdev)
 	clk_disable_unprepare(dpsub->apb_clk);
 	of_reserved_mem_device_release(&pdev->dev);
 
-	drm_dev_put(drm);
-
 	return 0;
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
