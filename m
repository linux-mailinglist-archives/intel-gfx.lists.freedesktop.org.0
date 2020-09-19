Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E12270E29
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Sep 2020 15:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAAAC6E442;
	Sat, 19 Sep 2020 13:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18856E428
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Sep 2020 13:38:11 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id d4so7828731wmd.5
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Sep 2020 06:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=65G2mMcXBuTW/HfXyf9Gk3ibJxUd1Ob33HKjuN8VVfY=;
 b=Eb1FzPIde+TlyZFleT4lMNkqn2CcOox+WEXYVnJ2Q/lhhx0ziMAcFweB/7Jx/kbsxi
 XoA4GbJSdJqRJUswORCQcYBN69fcDN3Np80w/7Gn9Cki7u3Xy0vIml63B6DTgfOPtlHI
 rrox3IkwhJS6zVxzU74Z0K49Oi5y3S470FC+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=65G2mMcXBuTW/HfXyf9Gk3ibJxUd1Ob33HKjuN8VVfY=;
 b=WgnT/dej3MCSoxU6LHDGWewU6ofqK8FRsULTiRIaN9dni1HY4KZ+Z/K8uIt9OYB0WU
 +gbl037oBiXM3NyTmZRncUInVU7Epx8FDsTVkr9lrrhjIQKYvga6JtzRxMWitb0GhIFy
 YpfT7uVhSKCeZFyjCXooeqvfE1bARKnrgNLX1hDpOZ+OGvLELmAbSj2F2xAnlEW95xzc
 Uc7dcpJFPI3mWS14n7X8+Xo6EReaKzoB98EH4Iq0UjYBeArmpA8ZrUeZEH8jrYwPyzbw
 yKyQ0RKP82GHLiCW1wVwYS1sdicYPoPGkqHzowLL//s+nHTr2wGeAqU6XMFQkEqzy52l
 ruOA==
X-Gm-Message-State: AOAM532wd6xvjEs2600M/8HHrGZNwx6Dg/adk1zJrLQpyYobGb9pbLP3
 Wwl739wcuhEKHQm4WjKEJDr7Ng==
X-Google-Smtp-Source: ABdhPJwS0Tb9d3fIuOrqAj+f1yiOHTZLRe/+pqrXNJfNhtHR9opwMZms/5XqSSE3HKW9165bfuEJcQ==
X-Received: by 2002:a05:600c:20b:: with SMTP id
 11mr21354070wmi.147.1600522690048; 
 Sat, 19 Sep 2020 06:38:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i6sm12526069wra.1.2020.09.19.06.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Sep 2020 06:38:08 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Sat, 19 Sep 2020 15:38:03 +0200
Message-Id: <20200919133803.2463492-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918132505.2316382-3-daniel.vetter@ffwll.ch>
References: <20200918132505.2316382-3-daniel.vetter@ffwll.ch>
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
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To avoid having to create all the device and driver scaffolding we
just manually create and destroy a devres_group.

v2: Rebased

v3: use devres_open/release_group so we can use devm without real
hacks in the driver core or having to create an entire fake bus for
testing drivers. Might want to extract this into helpers eventually,
maybe as a mock_drm_dev_alloc or test_drm_dev_alloc.

v4:
- Fix IS_ERR handling (Matt)
- Delete surplus put_device() in mock_device_release (intel-gfx-ci)

v5:
- do not switch to device_add - it breaks runtime pm in the tests and
  with the devres_group_add/release no longer needed for automatic
  cleanup (CI). Update commit message to match.
- print correct error in pr_err (Matt)

v6: Remove now unused err variable (CI).

Cc: Matthew Auld <matthew.william.auld@gmail.com>
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com> (v3)
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.william.auld@gmail.com> (v4)
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 .../gpu/drm/i915/selftests/mock_gem_device.c  | 39 +++++++++----------
 1 file changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index ac600d395c8f..b7db3ec346ba 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -79,8 +79,6 @@ static void mock_device_release(struct drm_device *dev)
 
 out:
 	i915_params_free(&i915->params);
-	put_device(&i915->drm.pdev->dev);
-	i915->drm.pdev = NULL;
 }
 
 static struct drm_driver mock_driver = {
@@ -123,17 +121,10 @@ struct drm_i915_private *mock_gem_device(void)
 #endif
 	struct drm_i915_private *i915;
 	struct pci_dev *pdev;
-	int err;
 
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
@@ -144,8 +135,23 @@ struct drm_i915_private *mock_gem_device(void)
 	/* HACK to disable iommu for the fake device; force identity mapping */
 	pdev->dev.iommu = &fake_iommu;
 #endif
+	if (!devres_open_group(&pdev->dev, NULL, GFP_KERNEL)) {
+		put_device(&pdev->dev);
+		return NULL;
+	}
+
+	i915 = devm_drm_dev_alloc(&pdev->dev, &mock_driver,
+				  struct drm_i915_private, drm);
+	if (IS_ERR(i915)) {
+		pr_err("Failed to allocate mock GEM device: err=%d\n", PTR_ERR(i915));
+		devres_release_group(&pdev->dev, NULL);
+		put_device(&pdev->dev);
+
+		return NULL;
+	}
 
 	pci_set_drvdata(pdev, i915);
+	i915->drm.pdev = pdev;
 
 	dev_pm_domain_set(&pdev->dev, &pm_domain);
 	pm_runtime_enable(&pdev->dev);
@@ -153,16 +159,6 @@ struct drm_i915_private *mock_gem_device(void)
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
 
@@ -229,5 +225,8 @@ struct drm_i915_private *mock_gem_device(void)
 
 void mock_destroy_device(struct drm_i915_private *i915)
 {
-	drm_dev_put(&i915->drm);
+	struct device *dev = i915->drm.dev;
+
+	devres_release_group(dev, NULL);
+	put_device(dev);
 }
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
