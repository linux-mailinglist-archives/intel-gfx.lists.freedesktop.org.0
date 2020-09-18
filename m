Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7176B26FE36
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 15:25:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA576ECF7;
	Fri, 18 Sep 2020 13:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966B46ECF8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 13:25:14 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z1so5637200wrt.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 06:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=upfAoCCr+zyOF5IeI2GyKw4EjuQfPob7+g5YHllcQOE=;
 b=e6hBEdx4txezbCdGmuS/TIio9rONeP7S4dU9FgZ4wguy/SOoxZ2UbOk1SxtbvhrIp+
 NSEBhM/p0fEE0MXGEcADdMtnq8haiS4SSFkO7hGnnAP+cAJhFnEgn6DlAGn5iGSQevNO
 Lx5EemhXTDu3StRhlljQFqya+gPxjZ4hb3W4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=upfAoCCr+zyOF5IeI2GyKw4EjuQfPob7+g5YHllcQOE=;
 b=jtAKt1PQIRF7Zb0zgYYEujbEKk5GO1+OGuq1Uoq835vHIO7vLwjy8m6jgOU5ixt7Tc
 2FG9VCNJJrgyVYrBTOzWD+lf/chiH0G0Ugu3UrcgfKTZQcqCaCfqea34KKENSobURgzv
 xk0EKb0pEVZ6yFo8TmzsghnIo0ht5ziuPgjBFnP6WwdCeDbMFjFedqOa0HwPpTJYVypf
 x7zywFt0DViqmkF9a9Ha1AQusjceiOMVpArQgWr4ppYiaM+KrAopZue0eBXWGb3ovdWg
 DcrCWEo5led/G6m8WD3K+hnP6LDQr2snpYUr/10COrvA51pIHOfifpAylRABZIx/qf0c
 Xb3g==
X-Gm-Message-State: AOAM532zsPuNIpEDaMa3lm2tHjK0wxIy7Nd7X+IyapeH9cXHq84Nxu6e
 QrkRP1YVk3CG+JtIiOgAOhBtYl4p6d6J08zi
X-Google-Smtp-Source: ABdhPJx8QgHze9aOEx4rU+dkwqfvqlospunT3Mcb+aIS03gWHVsEBZXHejyoRnqiL9kXPupY1fkosg==
X-Received: by 2002:adf:efc9:: with SMTP id i9mr39452840wrp.187.1600435513268; 
 Fri, 18 Sep 2020 06:25:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k6sm4872693wmi.1.2020.09.18.06.25.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Sep 2020 06:25:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 18 Sep 2020 15:25:03 +0200
Message-Id: <20200918132505.2316382-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918132505.2316382-1-daniel.vetter@ffwll.ch>
References: <20200918132505.2316382-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/selftests: align more to real
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
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>
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

v4:
- Fix IS_ERR handling (Matt)
- Delete surplus put_device() in mock_device_release (intel-gfx-ci)

Cc: Matthew Auld <matthew.william.auld@gmail.com>
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com> (v3)
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 .../gpu/drm/i915/selftests/mock_gem_device.c  | 44 +++++++++++--------
 1 file changed, 25 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index ac600d395c8f..816f9af15fb3 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -79,8 +79,6 @@ static void mock_device_release(struct drm_device *dev)
 
 out:
 	i915_params_free(&i915->params);
-	put_device(&i915->drm.pdev->dev);
-	i915->drm.pdev = NULL;
 }
 
 static struct drm_driver mock_driver = {
@@ -128,12 +126,6 @@ struct drm_i915_private *mock_gem_device(void)
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
@@ -144,8 +136,29 @@ struct drm_i915_private *mock_gem_device(void)
 	/* HACK to disable iommu for the fake device; force identity mapping */
 	pdev->dev.iommu = &fake_iommu;
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
+	if (IS_ERR(i915)) {
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
@@ -153,16 +166,6 @@ struct drm_i915_private *mock_gem_device(void)
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
 
@@ -229,5 +232,8 @@ struct drm_i915_private *mock_gem_device(void)
 
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
