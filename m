Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8C726FE3B
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 15:25:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BED16ECFF;
	Fri, 18 Sep 2020 13:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B93586ECFA
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 13:25:15 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id y15so5577029wmi.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 06:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bqA8wRk5Nq48ozg18p/JKqMGUJq+nJzeTZVZ0hWoQos=;
 b=C4Hm1mXrEZIpzJLmmnj9SW/UFx7zjK6EuR3i3MW4mFiIYbSwKMcxIG3IWt4gnhRZJu
 KnWAekST9k368aQae2zhwPEa37MUPkHUZYjhqmqep26crrRIO13HXIv8JAt6FN4C22sN
 M+WKIFcCZAwvM/gH7X5UD8r/GHOuKqIgjibjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bqA8wRk5Nq48ozg18p/JKqMGUJq+nJzeTZVZ0hWoQos=;
 b=gl2zuz8yhHz4yN6cDpHB40wTE3xq2NOsolZ4PgLIiCBZx+ol+qawePmMhiKkOkcXEV
 CZeYrRHxOuwh/cyWEwzGYEqm5pPYL6xI4WM0g4Ou+tFrqrh48vofVuGThLMOmYWg4B5d
 YXV3wGvJ8olkWUw/hw+8dQL8VznCZwmPSsMQauv1L0v/MKkGBld4aVVTYanDq20ZlZiZ
 fIqxO6OpLAVTFaKTkSt/op1mRAZyNTl3fWUb/t+8dXI7yP7cqUIN9Aa/2DFpgnQwfEoW
 6tJMH5qj52BK7jwY/tGbbelamXlHjSkwX+Hx41fFUS7FNt4ascCie/bFtIgd9cBQvUCx
 cfZA==
X-Gm-Message-State: AOAM533fngEcSfkETl3YGjEKqSTeqq7jHMRZsoJkeKBdPISptDcFkiim
 362QKq5QNZfs6k//lDsLj0B01QIWKcNWtus+
X-Google-Smtp-Source: ABdhPJwVtnqw7M6swccNbGpHxkdHeMxmPX5dearv/JGiLGTZ/LiJWe4vzfqEie1ExiM+YfwlbAWt3A==
X-Received: by 2002:a1c:bbd7:: with SMTP id
 l206mr16570930wmf.185.1600435514370; 
 Fri, 18 Sep 2020 06:25:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k6sm4872693wmi.1.2020.09.18.06.25.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Sep 2020 06:25:13 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 18 Sep 2020 15:25:04 +0200
Message-Id: <20200918132505.2316382-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918132505.2316382-1-daniel.vetter@ffwll.ch>
References: <20200918132505.2316382-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/amdgpu: Convert to using
 devm_drm_dev_alloc() (v2)
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
Cc: Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Luben Tuikov <luben.tuikov@amd.com>, amd-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Luben Tuikov <luben.tuikov@amd.com>

Convert to using devm_drm_dev_alloc(),
as drm_dev_init() is going away.

v2: Remove drm_dev_put() since
    a) devres doesn't do refcounting, see
    Documentation/driver-api/driver-model/devres.rst,
    Section 4, paragraph 1; and since
    b) devres acts as garbage collector when
    the DRM device's parent's devres "action" callback
    is called to free the container device (amdgpu_device),
    which embeds the DRM dev.

Signed-off-by: Luben Tuikov <luben.tuikov@amd.com>
Reviewed-by: Alex Deucher <alexander.deucher@amd.com>
Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index 6edde2b9e402..3ded6f43f982 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -1142,25 +1142,20 @@ static int amdgpu_pci_probe(struct pci_dev *pdev,
 	if (ret)
 		return ret;
 
-	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
-	if (!adev)
-		return -ENOMEM;
+	adev = devm_drm_dev_alloc(&pdev->dev, &kms_driver, typeof(*adev), ddev);
+	if (IS_ERR(adev))
+		return PTR_ERR(adev);
 
 	adev->dev  = &pdev->dev;
 	adev->pdev = pdev;
 	ddev = adev_to_drm(adev);
-	ret = drm_dev_init(ddev, &kms_driver, &pdev->dev);
-	if (ret)
-		goto err_free;
-
-	drmm_add_final_kfree(ddev, adev);
 
 	if (!supports_atomic)
 		ddev->driver_features &= ~DRIVER_ATOMIC;
 
 	ret = pci_enable_device(pdev);
 	if (ret)
-		goto err_free;
+		return ret;
 
 	ddev->pdev = pdev;
 	pci_set_drvdata(pdev, ddev);
@@ -1188,8 +1183,6 @@ static int amdgpu_pci_probe(struct pci_dev *pdev,
 
 err_pci:
 	pci_disable_device(pdev);
-err_free:
-	drm_dev_put(ddev);
 	return ret;
 }
 
@@ -1206,7 +1199,6 @@ amdgpu_pci_remove(struct pci_dev *pdev)
 	amdgpu_driver_unload_kms(dev);
 	pci_disable_device(pdev);
 	pci_set_drvdata(pdev, NULL);
-	drm_dev_put(dev);
 }
 
 static void
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
