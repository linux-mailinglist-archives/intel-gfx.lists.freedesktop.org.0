Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E3819E119
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 00:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 361BF6ECC0;
	Fri,  3 Apr 2020 22:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D5C6ECC0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 22:31:46 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id z7so8710888wmk.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 15:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9xEJ+5fdwmKWhbWNGYV2Df4Wf3BUc+qjyALcX6vzrhI=;
 b=c3XlMHeatnG0bGKTIE5ROzMJQAisLvolsMGPoTlS2OCHb9SmkGvseEFIVetQU6uGjc
 0PTleZ7zS0GyqMpTcrfatPBiVSFZXh/068ZfeQcE44OSaPWQl/cg2YLdV1sRQ9+chPYo
 SPmmr2jgr4NzAtaLBH1XOTQBH5wvIjDkRDVUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9xEJ+5fdwmKWhbWNGYV2Df4Wf3BUc+qjyALcX6vzrhI=;
 b=j22QOlUS/GNVBKuTv2H3GguCuQffKAAEAbL90RujpLanqrCWh2/UXaBG/xLm/o5zEE
 7RAGxOWWusoz8eoDMOo+i1nwRd+OYOnscg6WytsVXxlqvf9lgzlfD/sO7YRVXK9SeYjl
 2FVXTTk1CM5Ohzkiz7ZM23qiDs7VjLt2V0emfSCC+i/A4mOgjGdTeRqmHAPxoepa0Hk2
 M81Ku79VhHPSwvU6qZ0BFYA4hHn2Zwz8XXBEHTLnZ56+BntE1S6B3hAVPI1AjwCeNJGi
 pUHIFDLTJrmX4oqX+NvMZbKD4/c7JizqpuMo91nLOoud1hsjUmUoCMNR3xTv2CkvSJFW
 ALpA==
X-Gm-Message-State: AGi0PuYUM8rszkWI9MmgZzv60vZgQfETcZEWLCDivh7CgRmq0hYr1lNL
 Lnx08AYqZUUnrP/tu3LVFvoTIA==
X-Google-Smtp-Source: APiQypII1ztrIMUEy2w1gOLwxDOYNWRj6tGzZiPo34upHdFdMlApedPwOUUSrsShcep8+GlFHeYiTg==
X-Received: by 2002:a1c:a553:: with SMTP id o80mr10474186wme.159.1585953104902; 
 Fri, 03 Apr 2020 15:31:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u6sm7930811wrm.65.2020.04.03.15.31.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 15:31:44 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Sat,  4 Apr 2020 00:31:39 +0200
Message-Id: <20200403223139.2729900-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-44-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-44-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: align more to real device
 lifetimes
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

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 .../gpu/drm/i915/selftests/mock_gem_device.c  | 33 +++++++++----------
 1 file changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 41afc357f4d0..1ab97fa55929 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -123,12 +123,6 @@ struct drm_i915_private *mock_gem_device(void)
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
@@ -139,8 +133,23 @@ struct drm_i915_private *mock_gem_device(void)
 	/* hack to disable iommu for the fake device; force identity mapping */
 	pdev->dev.archdata.iommu = (void *)-1;
 #endif
+	err = device_add(&pdev->dev);
+	if (err) {
+		kfree(pdev);
+		return NULL;
+	}
+
+	i915 = devm_drm_dev_alloc(&pdev->dev, &mock_driver,
+				  struct drm_i915_private, drm);
+	if (err) {
+		pr_err("Failed to allocate mock GEM device: err=%d\n", err);
+		put_device(&pdev->dev);
+
+		return NULL;
+	}
 
 	pci_set_drvdata(pdev, i915);
+	i915->drm.pdev = pdev;
 
 	dev_pm_domain_set(&pdev->dev, &pm_domain);
 	pm_runtime_enable(&pdev->dev);
@@ -148,16 +157,6 @@ struct drm_i915_private *mock_gem_device(void)
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
 
 	intel_runtime_pm_init_early(&i915->runtime_pm);
 
@@ -221,5 +220,5 @@ struct drm_i915_private *mock_gem_device(void)
 
 void mock_destroy_device(struct drm_i915_private *i915)
 {
-	drm_dev_put(&i915->drm);
+	device_del(i915->drm.dev);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
