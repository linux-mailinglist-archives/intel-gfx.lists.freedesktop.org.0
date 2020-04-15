Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD73E1A94BA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8167F6E8C4;
	Wed, 15 Apr 2020 07:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB3B89622
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:22 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id b11so6485168wrs.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qNncsUXlzsPXlZto5mxj4G9qCB9ihW7GhOP14Dzx+88=;
 b=kKDYv0zBj63u0YKpPv7lsnH5tPY+K4nLY5xgL7IxJVbhDTaGek5voYsqsoL5gYSME+
 yO3JWYG75Vrg/fvfbqU1uBt2shGuktV5TFeMrE14ovjgeYMT5DsooR855KHMaPFOfofK
 fSqgREVhI8k8S+VmdB9LhPmkEQHJUQMVqEDXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qNncsUXlzsPXlZto5mxj4G9qCB9ihW7GhOP14Dzx+88=;
 b=BGXIIPYlFBi9ipsR22fCOi6WuiZHqlVx0efEpH/SefF7hn2Wuwp2AbX3x/cF3ohT5h
 CG90GLDnN79CtCfm7pi55Slunqp2UF/qeDCApvj9p1I/dMJIc5PySRiy9JucWbfTfIn5
 ds3C26Me4uZf1iP2pDwtONt/voAJ7Nf5Ddj6h0PTZPh4BpmHXDO54pXtYQWB3u+R4kfx
 WVQ8WbLu3ChVDYN1dqCu7li1/OpsAtO3aGNmwAORSJN/r+EvBy2GGtwA4PopktHpufxq
 ibOzn2RJCs13YTW14eQCKqLa1zpvVcgrtqjPNRhzuVbTQORD+jh/5CxRvZ1pk416ZCFD
 lSHw==
X-Gm-Message-State: AGi0PuYbtwf77NSF1qyEMJsXnIOjjAg5ku2MmpaCKhk7m8Eplr2KMAcW
 IzzGzFqf4XepstjA/mKHYLFGNpxjPSg=
X-Google-Smtp-Source: APiQypJKnQy1o+OQi/gK/YB7zTVyphWXyt5KDuCdGcSFUCktHK0msc87FZbs5xoZpxHJ6nS6K1btLQ==
X-Received: by 2002:adf:feca:: with SMTP id q10mr27383217wrs.199.1586936480652; 
 Wed, 15 Apr 2020 00:41:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:20 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:13 +0200
Message-Id: <20200415074034.175360-39-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 38/59] drm/i915: Use devm_drm_dev_alloc
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Luckily we're already well set up in the main driver, with
drm_dev_put() being the last thing in both the unload error case and
the pci remove function.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 17 ++++-------------
 drivers/gpu/drm/i915/i915_pci.c |  2 --
 2 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 641f5e03b661..ff9a5b1b4c6d 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -877,19 +877,11 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 		(struct intel_device_info *)ent->driver_data;
 	struct intel_device_info *device_info;
 	struct drm_i915_private *i915;
-	int err;
 
-	i915 = kzalloc(sizeof(*i915), GFP_KERNEL);
-	if (!i915)
-		return ERR_PTR(-ENOMEM);
-
-	err = drm_dev_init(&i915->drm, &driver, &pdev->dev);
-	if (err) {
-		kfree(i915);
-		return ERR_PTR(err);
-	}
-
-	drmm_add_final_kfree(&i915->drm, i915);
+	i915 = devm_drm_dev_alloc(&pdev->dev, &driver,
+				  struct drm_i915_private, drm);
+	if (IS_ERR(i915))
+		return i915;
 
 	i915->drm.pdev = pdev;
 	pci_set_drvdata(pdev, i915);
@@ -1006,7 +998,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	pci_disable_device(pdev);
 out_fini:
 	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
-	drm_dev_put(&i915->drm);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 66738f2c4f28..2741fb3e30cb 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -941,8 +941,6 @@ static void i915_pci_remove(struct pci_dev *pdev)
 
 	i915_driver_remove(i915);
 	pci_set_drvdata(pdev, NULL);
-
-	drm_dev_put(&i915->drm);
 }
 
 /* is device_id present in comma separated list of ids */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
