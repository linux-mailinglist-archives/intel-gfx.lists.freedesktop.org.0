Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8DC1641DD
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491186EBAD;
	Wed, 19 Feb 2020 10:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8287C6EB69
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:29 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id u6so27603017wrt.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LItQjwA9mV8nuzJaVMbtJa/Mr2QhOC3mRaiFX1ZxXdY=;
 b=YxkwRj6v8sA1O8uUWpxaiC1weDjQG0/dB9BrF0omx8hP4Cfvm/u3uhChTRy6OUV9c5
 MME0yXSd2SwFPef/kLxlM8Njyy1NU6o0vGjdrZ4gljtlg7T+4hHN65kvlH8sUt0Xd1xy
 IWXKEZP2Wn4cKJOp6SCZGu0gDb8hWdX7siKqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LItQjwA9mV8nuzJaVMbtJa/Mr2QhOC3mRaiFX1ZxXdY=;
 b=qLrxOKxrZ9kHSM3fvqnQyg6MTRS0kOkUs0spFd2IlXTOrvYGrwhsxxCiCw1/N1kyFZ
 MmNVXVmtksxpzfkzIgB/Ay9k0xQEOnOAKkd7zFDLnGoLtN18iV2OUZ5faaVGSd/JySkQ
 JBTP8tYx4ps4ECHlc3b1WFSBZRJpRibDCkMXJ24YqfDvGgGuIB/IO0fgq1cz8BskCNed
 +W1Cc8gc0x7/iDy3DomTfYzXSXfgU2uHBrxLB4A1XvlfjkpvNISpyOUbPTLInZZD/IpQ
 dzDlk/k+ub15WDriZD+o9PzHNWSd6UPAmMU8I4iyoWUQktVsiWbskY8s8H7043R/YdOl
 OGWQ==
X-Gm-Message-State: APjAAAWZACMI3EdFwndhz9G4WTfZO+0PUUp4x0W2TjyyRSfCHHtQbyTZ
 MxbF6pMB5BdSWTtV47GU79auEQ==
X-Google-Smtp-Source: APXvYqy41ijA+ytu4BpqRVdObmpuN0/v9OCf6kG77+ZmHtW3b1DODLTtx1plfAc+TznLQGGvJDIdxA==
X-Received: by 2002:adf:e70d:: with SMTP id c13mr34515327wrm.248.1582107747996; 
 Wed, 19 Feb 2020 02:22:27 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:27 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:18 +0100
Message-Id: <20200219102122.1607365-49-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 48/52] drm/mipi-dbi: Move drm_mode_config_init
 into mipi library
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

7/7 drivers agree that's the right choice, let's do this.

This avoids duplicating the same old error checking code over all 7
drivers, which is the motivation here.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_mipi_dbi.c  | 4 ++++
 drivers/gpu/drm/tiny/hx8357d.c  | 2 --
 drivers/gpu/drm/tiny/ili9225.c  | 2 --
 drivers/gpu/drm/tiny/ili9341.c  | 2 --
 drivers/gpu/drm/tiny/ili9486.c  | 2 --
 drivers/gpu/drm/tiny/mi0283qt.c | 2 --
 drivers/gpu/drm/tiny/st7586.c   | 2 --
 drivers/gpu/drm/tiny/st7735r.c  | 2 --
 8 files changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_dbi.c
index a678e07508d4..9de1586659be 100644
--- a/drivers/gpu/drm/drm_mipi_dbi.c
+++ b/drivers/gpu/drm/drm_mipi_dbi.c
@@ -510,6 +510,10 @@ int mipi_dbi_dev_init_with_formats(struct mipi_dbi_dev *dbidev,
 	if (!dbidev->dbi.command)
 		return -EINVAL;
 
+	ret = drm_mode_config_init(drm);
+	if (ret)
+		return ret;
+
 	dbidev->tx_buf = devm_kmalloc(drm->dev, tx_buf_size, GFP_KERNEL);
 	if (!dbidev->tx_buf)
 		return -ENOMEM;
diff --git a/drivers/gpu/drm/tiny/hx8357d.c b/drivers/gpu/drm/tiny/hx8357d.c
index 42bc5dadcb1c..c88b84366dc5 100644
--- a/drivers/gpu/drm/tiny/hx8357d.c
+++ b/drivers/gpu/drm/tiny/hx8357d.c
@@ -239,8 +239,6 @@ static int hx8357d_probe(struct spi_device *spi)
 	}
 	drmm_add_final_kfree(drm, dbidev);
 
-	drm_mode_config_init(drm);
-
 	dc = devm_gpiod_get(dev, "dc", GPIOD_OUT_LOW);
 	if (IS_ERR(dc)) {
 		DRM_DEV_ERROR(dev, "Failed to get gpio 'dc'\n");
diff --git a/drivers/gpu/drm/tiny/ili9225.c b/drivers/gpu/drm/tiny/ili9225.c
index aae88dc5b3f7..fa998a16026c 100644
--- a/drivers/gpu/drm/tiny/ili9225.c
+++ b/drivers/gpu/drm/tiny/ili9225.c
@@ -390,8 +390,6 @@ static int ili9225_probe(struct spi_device *spi)
 	}
 	drmm_add_final_kfree(drm, dbidev);
 
-	drm_mode_config_init(drm);
-
 	dbi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(dbi->reset)) {
 		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
diff --git a/drivers/gpu/drm/tiny/ili9341.c b/drivers/gpu/drm/tiny/ili9341.c
index 7d40cb4ff72b..945e15169866 100644
--- a/drivers/gpu/drm/tiny/ili9341.c
+++ b/drivers/gpu/drm/tiny/ili9341.c
@@ -197,8 +197,6 @@ static int ili9341_probe(struct spi_device *spi)
 	}
 	drmm_add_final_kfree(drm, dbidev);
 
-	drm_mode_config_init(drm);
-
 	dbi->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(dbi->reset)) {
 		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
diff --git a/drivers/gpu/drm/tiny/ili9486.c b/drivers/gpu/drm/tiny/ili9486.c
index 7d735fc67498..38d293cf5377 100644
--- a/drivers/gpu/drm/tiny/ili9486.c
+++ b/drivers/gpu/drm/tiny/ili9486.c
@@ -211,8 +211,6 @@ static int ili9486_probe(struct spi_device *spi)
 	}
 	drmm_add_final_kfree(drm, dbidev);
 
-	drm_mode_config_init(drm);
-
 	dbi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(dbi->reset)) {
 		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
diff --git a/drivers/gpu/drm/tiny/mi0283qt.c b/drivers/gpu/drm/tiny/mi0283qt.c
index 8555a56bce8c..b8c973bc2347 100644
--- a/drivers/gpu/drm/tiny/mi0283qt.c
+++ b/drivers/gpu/drm/tiny/mi0283qt.c
@@ -201,8 +201,6 @@ static int mi0283qt_probe(struct spi_device *spi)
 	}
 	drmm_add_final_kfree(drm, dbidev);
 
-	drm_mode_config_init(drm);
-
 	dbi->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(dbi->reset)) {
 		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
diff --git a/drivers/gpu/drm/tiny/st7586.c b/drivers/gpu/drm/tiny/st7586.c
index 427c2561f5f4..1f1a576be93c 100644
--- a/drivers/gpu/drm/tiny/st7586.c
+++ b/drivers/gpu/drm/tiny/st7586.c
@@ -331,8 +331,6 @@ static int st7586_probe(struct spi_device *spi)
 	}
 	drmm_add_final_kfree(drm, dbidev);
 
-	drm_mode_config_init(drm);
-
 	bufsize = (st7586_mode.vdisplay + 2) / 3 * st7586_mode.hdisplay;
 
 	dbi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
diff --git a/drivers/gpu/drm/tiny/st7735r.c b/drivers/gpu/drm/tiny/st7735r.c
index b447235c3d47..0f48a5a2d3d7 100644
--- a/drivers/gpu/drm/tiny/st7735r.c
+++ b/drivers/gpu/drm/tiny/st7735r.c
@@ -212,8 +212,6 @@ static int st7735r_probe(struct spi_device *spi)
 	}
 	drmm_add_final_kfree(drm, dbidev);
 
-	drm_mode_config_init(drm);
-
 	dbi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(dbi->reset)) {
 		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
