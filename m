Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D1B25DBF9
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FCC26EBA8;
	Fri,  4 Sep 2020 14:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B836EC03
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:40:01 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id k15so6966531wrn.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NlNyDdMMbDjq/zK+az8PNR0TQ/ciDWp9jQSzYPgyh9Y=;
 b=RtVX8E3jL83v+vcg5kRAjEkbJ3Pm/85hWrji2but7oq5qjNevcW2yEoemvwvV5ldoX
 hRUTYxaJvNbMHwbdV63VbNvdYKIGPa5EVrfrLr2i2vM/dLHI4+JsCzA79l6g06lqEzfX
 1DOfN/gm1PJGKXGxJgIOkKKY7mAu8YtyWhjvs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NlNyDdMMbDjq/zK+az8PNR0TQ/ciDWp9jQSzYPgyh9Y=;
 b=b2czKTHtvE5NKXaGrAgbA9/OAx8BcHksSwaOp/nWYTleFrUrwIFk7f+cvkuqUs9GrW
 3hUGs6zg3GITQBULDwmqmP3OQo0Lbw15H3uokywW3fuVQ50H5jszLA9uRfFo205P6u/K
 OFu55pys9ZcJd16oEySNX6QczEUXrki441Zfisvf/nevplaNu3o2ap89J0uNHrTfq6Hc
 5tb3NXmnNy11awhqv+Pp1EAf4vMl1BWxZ70ZWXaMpmFdVJrebAjjFQw992hvf1DizRYU
 IgsFPi6+4QSTsLiWCVMMnDkiH9i+bw2GQuBuRLqcOMGHwMzNWvLX+ONwNYydTXUNbXLb
 xXdw==
X-Gm-Message-State: AOAM531iyINykt9IOGbFx+s+GOC0dJJoVU+25lRscVEK4S29EUAVfHcc
 cAUacMmrzbsmtpuaLxqMRwBUYLTbvVnC9Qzd
X-Google-Smtp-Source: ABdhPJw7b2D7qlSIW5akSpJPgMtE3BQZi/U0WdPcU27CW0UMBHvNEQKeV3X18bfSAsqDZdjPKG2Nvg==
X-Received: by 2002:adf:ed09:: with SMTP id a9mr7741161wro.407.1599230399706; 
 Fri, 04 Sep 2020 07:39:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.39.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:39:59 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:25 +0200
Message-Id: <20200904143941.110665-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/24] drm/i915/selftests: align more to real
 device lifetimes
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

The big change is device_add so that device_del can auto-cleanup
devres resources. This allows us to use devm_drm_dev_alloc, which
removes the last user of drm_dev_init.

v2: Rebased

v3: use devres_open/release_group so we can use devm without real
hacks in the driver core or having to create an entire fake bus for
testing drivers. Might want to extract this into helpers eventually,
maybe as a mock_drm_dev_alloc or test_drm_dev_alloc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 .../gpu/drm/i915/selftests/mock_gem_device.c  | 42 +++++++++++--------
 1 file changed, 25 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index fbb403edb7a0..164ad1746da9 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -128,12 +128,6 @@ struct drm_i915_private *mock_gem_device(void)
 	pdev = kzalloc(sizeof(*pdev), GFP_KERNEL);
 	if (!pdev)
 		return NULL;
-	i915 = kzalloc(sizeof(*i915), GFP_KERNEL);
-	if (!i915) {
-		kfree(pdev);
-		return NULL;
-	}
-
 	device_initialize(&pdev->dev);
 	pdev->class = PCI_BASE_CLASS_DISPLAY << 16;
 	pdev->dev.release = release_dev;
@@ -146,8 +140,29 @@ struct drm_i915_private *mock_gem_device(void)
 	iommu.priv = (void *)-1;
 	pdev->dev.iommu = &iommu;
 #endif
+	err = device_add(&pdev->dev);
+	if (err) {
+		kfree(pdev);
+		return NULL;
+	}
+
+	if (!devres_open_group(&pdev->dev, NULL, GFP_KERNEL)) {
+		device_del(&pdev->dev);
+		return NULL;
+	}
+
+	i915 = devm_drm_dev_alloc(&pdev->dev, &mock_driver,
+				  struct drm_i915_private, drm);
+	if (err) {
+		pr_err("Failed to allocate mock GEM device: err=%d\n", err);
+		devres_release_group(&pdev->dev, NULL);
+		device_del(&pdev->dev);
+
+		return NULL;
+	}
 
 	pci_set_drvdata(pdev, i915);
+	i915->drm.pdev = pdev;
 
 	dev_pm_domain_set(&pdev->dev, &pm_domain);
 	pm_runtime_enable(&pdev->dev);
@@ -155,16 +170,6 @@ struct drm_i915_private *mock_gem_device(void)
 	if (pm_runtime_enabled(&pdev->dev))
 		WARN_ON(pm_runtime_get_sync(&pdev->dev));
 
-	err = drm_dev_init(&i915->drm, &mock_driver, &pdev->dev);
-	if (err) {
-		pr_err("Failed to initialise mock GEM device: err=%d\n", err);
-		put_device(&pdev->dev);
-		kfree(i915);
-
-		return NULL;
-	}
-	i915->drm.pdev = pdev;
-	drmm_add_final_kfree(&i915->drm, i915);
 
 	i915_params_copy(&i915->params, &i915_modparams);
 
@@ -231,5 +236,8 @@ struct drm_i915_private *mock_gem_device(void)
 
 void mock_destroy_device(struct drm_i915_private *i915)
 {
-	drm_dev_put(&i915->drm);
+	struct device *dev = i915->drm.dev;
+
+	devres_release_group(dev, NULL);
+	device_del(dev);
 }
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
