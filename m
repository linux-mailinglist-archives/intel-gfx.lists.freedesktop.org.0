Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6865019D873
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 16:00:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70026EC00;
	Fri,  3 Apr 2020 13:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A46226EBFA
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:24 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id i19so7849362wmb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DDjYN5F4pqljQeTjrzaM9vKPOIexc9jxnHCDJfkzYeg=;
 b=bUWIlnw4Zdbs4HeUiyORh8sSzWY7FLeX1iZYYjw3xl3T0mQ/t0+pyQTHWRJxbeQ9cQ
 OcdJMPUFQ4sH5mTNA3MTwaJGyLS+iA+hjirfA6AevWJA5YvIPRW4g9oAQ2gvepwgry8X
 k6CkGmOkIHXeSNWMGhOP7JaIpB2A3b12Btrro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DDjYN5F4pqljQeTjrzaM9vKPOIexc9jxnHCDJfkzYeg=;
 b=UH6yBnVkgvRkDb/PX88QcJkwgux/RJ9XMwPdxEFE7/5lVQmhJJHuQ6K4QWRfOQMfZJ
 9YO+Y1ZOj7sRJjqmljybYbTNQrKBmrJBXogsQMmqcp+oCYqB4GQjBBJLTrgHFQwxkBH/
 uHGioEAXbfWBc6QWPxduumf0zhQBoAOADJXmx9TYHbic3nswdBALuiAEmxZCEyY7RgSx
 AD3ymW8L15JPZoLOWVtiKTGyCB6PdmmyED506FPjyra4XvD0WDKrMzYNmg8ws7h8Yv1M
 ooR8it2ECHFpUmFCuu7ScP4AhdHH5zcrg9S8u1+8Tepet7TMr/MC85s5357SSnYNxw61
 ud9Q==
X-Gm-Message-State: AGi0PuZmOnufIUvOHNZKcQksC8aeQhac5mWr9eNkE9y8CTyWCk61hwi7
 u4vRUF8HrAOj6UwuXebsmwpt4T5xR+bl+A==
X-Google-Smtp-Source: APiQypIX3Fz8QBGCHucX1RVHc6MjTaN3ByRB0MlduLVSd27+W4Q7xON+Lhjwwc9Axgv6Q60q1UpiRg==
X-Received: by 2002:a1c:7e11:: with SMTP id z17mr9258744wmc.151.1585922363363; 
 Fri, 03 Apr 2020 06:59:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:22 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:27 +0200
Message-Id: <20200403135828.2542770-44-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 43/44] drm/i915/selftests: align more to real
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

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 .../gpu/drm/i915/selftests/mock_gem_device.c  | 31 +++++++++----------
 .../gpu/drm/i915/selftests/mock_gem_device.h  |  2 +-
 2 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 03607647cdeb..ea73d1f7cf12 100644
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
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.h b/drivers/gpu/drm/i915/selftests/mock_gem_device.h
index 2e3c7585a7bb..4f309a05c85a 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.h
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.h
@@ -9,7 +9,7 @@ void mock_device_flush(struct drm_i915_private *i915);
 
 static inline void mock_destroy_device(struct drm_i915_private *i915)
 {
-	drm_dev_put(&i915->drm);
+	device_del(i915->drm.dev);
 }
 
 #endif /* !__MOCK_GEM_DEVICE_H__ */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
