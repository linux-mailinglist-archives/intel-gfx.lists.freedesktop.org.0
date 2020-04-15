Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD94C1A9476
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8FBD6E882;
	Wed, 15 Apr 2020 07:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 222286E875
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:40:45 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id y24so17671693wma.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Edar0dJgASsuiNacXP5y3gT+G+sfZKS1INHqXKgta1c=;
 b=iOlbo5IODl5oJibVyA+BMkzBoKPwtRFcNDsX+kK/R0PbP8EKrbu0pAQDJyXpvk1tBJ
 8RQRUN3ai55VeCZqB+zBxkmpXnH1ceRgtLfOgygkQ98QEVxYqWTgJG9jZu+x15oTNWPQ
 LPUgsO6Ay3LL3QRzC1Siv3jOuBkh+4pOZGVDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Edar0dJgASsuiNacXP5y3gT+G+sfZKS1INHqXKgta1c=;
 b=O4fWz1Q/dCx3hu9FT5tEmF7IkSanz2nzroBUhzpt4GMs5ORq3uOlh4x1DO8ttHsB3Q
 /auYnHIxo2z89aoEfBaWPDRDTnrnHbvcdT/D7GA/syWBMWY8MFjL4HLh8m8oK0jTM4MH
 +GV0V+S1RAON1ffMIGFKlCJxKSmz6PQMAkj20mWR3+6CB/ibbY7gfGAaLtP6FL8xdNxb
 1h4xw34B3jPFKIDhI1f2B2JjvccRMjbmQbLfRdr3vNPmtWGPqriMORrcCC1Zao9AZqD2
 3L1o2+plqkSyrbfels97tp3vv4CDglU6naER6P25jxThkARoThWzDXU8boAMBIHzenHE
 GMzQ==
X-Gm-Message-State: AGi0PuYSJNjQtXi+79vVS94xFJabkndJ3d3B3Mge8HpOgSt3/2tEZInu
 evBANFzTWthhBLN/2q4y6UqVLI9vRyo=
X-Google-Smtp-Source: APiQypJ+8USxF4F+YfbP4YCK9Z2PcrCzJP//mPnmKu6If5zMkAOYr4r9KfYP4ztfkFKbX5HIqRwiQQ==
X-Received: by 2002:a05:600c:a:: with SMTP id
 g10mr3847157wmc.153.1586936443498; 
 Wed, 15 Apr 2020 00:40:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:40:42 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:38 +0200
Message-Id: <20200415074034.175360-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/59] drm/vboxvideo: Use devm_drm_dev_alloc
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

Straightforward conversion.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/vboxvideo/vbox_drv.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
index 282348e071fe..7dd25c7a3768 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_drv.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_drv.c
@@ -46,25 +46,19 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		return ret;
 
-	vbox = kzalloc(sizeof(*vbox), GFP_KERNEL);
-	if (!vbox)
-		return -ENOMEM;
-
-	ret = drm_dev_init(&vbox->ddev, &driver, &pdev->dev);
-	if (ret) {
-		kfree(vbox);
-		return ret;
-	}
+	vbox = devm_drm_dev_alloc(&pdev->dev, &driver,
+				  struct vbox_private, ddev);
+	if (IS_ERR(vbox))
+		return PTR_ERR(vbox);
 
 	vbox->ddev.pdev = pdev;
 	vbox->ddev.dev_private = vbox;
 	pci_set_drvdata(pdev, vbox);
-	drmm_add_final_kfree(&vbox->ddev, vbox);
 	mutex_init(&vbox->hw_mutex);
 
 	ret = pci_enable_device(pdev);
 	if (ret)
-		goto err_dev_put;
+		return ret;
 
 	ret = vbox_hw_init(vbox);
 	if (ret)
@@ -100,8 +94,6 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	vbox_hw_fini(vbox);
 err_pci_disable:
 	pci_disable_device(pdev);
-err_dev_put:
-	drm_dev_put(&vbox->ddev);
 	return ret;
 }
 
@@ -114,7 +106,6 @@ static void vbox_pci_remove(struct pci_dev *pdev)
 	vbox_mode_fini(vbox);
 	vbox_mm_fini(vbox);
 	vbox_hw_fini(vbox);
-	drm_dev_put(&vbox->ddev);
 }
 
 #ifdef CONFIG_PM_SLEEP
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
