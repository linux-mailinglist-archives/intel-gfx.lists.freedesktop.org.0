Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 297EE1A947E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1CB66E884;
	Wed, 15 Apr 2020 07:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B10F36E87B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:40:52 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a81so17654253wmf.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GtmxL7qc8a1vmPToR9Cz5QuHUTxC8ucQQ8X5mkEDcaM=;
 b=RAYTPw2iNUrH1732FC+9pVjzC8dabGPMccKCOUoU4cr0dn2Ap4DIfehN4efmYosNIL
 uD+KdW1N1RcMG0oa4vDN7QxbBcOtlD21BYe9SGrLCxFTLgEZlu2vD8o5mPqs9U6qpkb4
 if45FTyDBUjcoxxzYqppc4mySgULCW7ixuRr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GtmxL7qc8a1vmPToR9Cz5QuHUTxC8ucQQ8X5mkEDcaM=;
 b=EN0+lOu3r8/aypGosGWsNZe9ASCt/Mu7DnhhlINTZVLtKHrwEQPq58lq6+07VjYtLj
 ua4n0MChtA2Xt2PzhEIfGGZlKF8OUpKERm/wpdcwB/5mqCd+EJFqTGkrFblvBQmPqgOg
 bwfYjBwxAZTU4KPcSDa7Z3VrP0b1X6WMJgUE4F03gJyzUI9F/Q270xKcBF7Ju3U/R9kE
 V+xLC1Xiz+v4DXiPruJ13dsbov/vEW3tVRg3ZrTiMP7hy9feWNgYqeK86DV9pJLZf8WR
 eFDS41z9Igdi6yCCIG9kK7b5AYz0J/Obd79G4EkqVfKicNTF32aMdGAbr3jl1ieg149L
 Ddyg==
X-Gm-Message-State: AGi0PuY8KDGCSwpA1iJyL72L3ICXuo8JDs5ZJ7gzDD+0S9L+vLTVgRbJ
 B2ATIp7d4GFkqqwJ6V8qfl061hq5Qyg=
X-Google-Smtp-Source: APiQypIureHHxod16Nx5HpZu4/M+WobsM3W2eQv+8eJLbmOsd85BOyw+3bfbqoEnfS3ZA3TjKi+jbA==
X-Received: by 2002:a7b:c404:: with SMTP id k4mr3572436wmi.37.1586936450901;
 Wed, 15 Apr 2020 00:40:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:40:50 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:45 +0200
Message-Id: <20200415074034.175360-11-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/59] drm/v3d: Delete v3d_dev->pdev
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Eric Anholt <eric@anholt.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We already have it in v3d_dev->drm.dev with zero additional pointer
chasing. Personally I don't like duplicated pointers like this
because:
- reviewers need to check whether the pointer is for the same or
different objects if there's multiple
- compilers have an easier time too

To avoid having to pull in some big headers I implemented the casting
function as a macro instead of a static inline. Typechecking thanks to
container_of still assured.

But also a bit a bikeshed, so feel free to ignore.

v2: More parens for v3d_to_pdev macro (checkpatch)

Acked-by: Eric Anholt <eric@anholt.net>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Eric Anholt <eric@anholt.net>
---
 drivers/gpu/drm/v3d/v3d_drv.c | 3 +--
 drivers/gpu/drm/v3d/v3d_drv.h | 3 ++-
 drivers/gpu/drm/v3d/v3d_irq.c | 8 +++++---
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/v3d_drv.c
index 37cb880f2826..82a7dfdd14c2 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.c
+++ b/drivers/gpu/drm/v3d/v3d_drv.c
@@ -235,7 +235,7 @@ static int
 map_regs(struct v3d_dev *v3d, void __iomem **regs, const char *name)
 {
 	struct resource *res =
-		platform_get_resource_byname(v3d->pdev, IORESOURCE_MEM, name);
+		platform_get_resource_byname(v3d_to_pdev(v3d), IORESOURCE_MEM, name);
 
 	*regs = devm_ioremap_resource(v3d->drm.dev, res);
 	return PTR_ERR_OR_ZERO(*regs);
@@ -255,7 +255,6 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 	if (IS_ERR(v3d))
 		return PTR_ERR(v3d);
 
-	v3d->pdev = pdev;
 	drm = &v3d->drm;
 
 	platform_set_drvdata(pdev, drm);
diff --git a/drivers/gpu/drm/v3d/v3d_drv.h b/drivers/gpu/drm/v3d/v3d_drv.h
index 4d2d1f2fe1af..8a390738d65b 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.h
+++ b/drivers/gpu/drm/v3d/v3d_drv.h
@@ -46,7 +46,6 @@ struct v3d_dev {
 	int ver;
 	bool single_irq_line;
 
-	struct platform_device *pdev;
 	void __iomem *hub_regs;
 	void __iomem *core_regs[3];
 	void __iomem *bridge_regs;
@@ -128,6 +127,8 @@ v3d_has_csd(struct v3d_dev *v3d)
 	return v3d->ver >= 41;
 }
 
+#define v3d_to_pdev(v3d) to_platform_device((v3d)->drm.dev)
+
 /* The per-fd struct, which tracks the MMU mappings. */
 struct v3d_file_priv {
 	struct v3d_dev *v3d;
diff --git a/drivers/gpu/drm/v3d/v3d_irq.c b/drivers/gpu/drm/v3d/v3d_irq.c
index f4ce6d057c90..51b65263c657 100644
--- a/drivers/gpu/drm/v3d/v3d_irq.c
+++ b/drivers/gpu/drm/v3d/v3d_irq.c
@@ -217,7 +217,7 @@ v3d_irq_init(struct v3d_dev *v3d)
 		V3D_CORE_WRITE(core, V3D_CTL_INT_CLR, V3D_CORE_IRQS);
 	V3D_WRITE(V3D_HUB_INT_CLR, V3D_HUB_IRQS);
 
-	irq1 = platform_get_irq(v3d->pdev, 1);
+	irq1 = platform_get_irq(v3d_to_pdev(v3d), 1);
 	if (irq1 == -EPROBE_DEFER)
 		return irq1;
 	if (irq1 > 0) {
@@ -226,7 +226,8 @@ v3d_irq_init(struct v3d_dev *v3d)
 				       "v3d_core0", v3d);
 		if (ret)
 			goto fail;
-		ret = devm_request_irq(v3d->drm.dev, platform_get_irq(v3d->pdev, 0),
+		ret = devm_request_irq(v3d->drm.dev,
+				       platform_get_irq(v3d_to_pdev(v3d), 0),
 				       v3d_hub_irq, IRQF_SHARED,
 				       "v3d_hub", v3d);
 		if (ret)
@@ -234,7 +235,8 @@ v3d_irq_init(struct v3d_dev *v3d)
 	} else {
 		v3d->single_irq_line = true;
 
-		ret = devm_request_irq(v3d->drm.dev, platform_get_irq(v3d->pdev, 0),
+		ret = devm_request_irq(v3d->drm.dev,
+				       platform_get_irq(v3d_to_pdev(v3d), 0),
 				       v3d_irq, IRQF_SHARED,
 				       "v3d", v3d);
 		if (ret)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
