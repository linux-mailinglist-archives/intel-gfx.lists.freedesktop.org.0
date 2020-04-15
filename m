Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480B1A9472
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3B86E873;
	Wed, 15 Apr 2020 07:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717176E876
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:40:47 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id k11so17249943wrp.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ejJhDqFg6YHQyosh1BjnOkzQcytd8MwBo8cRG7rrBmc=;
 b=SW2g5wlDJBHwK30GY9PKnnTP4vhHghaKXbEofA4X5TEjSc/WPgT0pS5CvCOzrtzSXL
 maxF0KwWgltEQCIjRBXFZ0cMibsQUntKnQ71dedd/1uTgacNj9MOj7Sml0aaDjAQhNPx
 3hJyS+7xxZVMI+J8WLEAo8Ju9bBboY2yx7fiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ejJhDqFg6YHQyosh1BjnOkzQcytd8MwBo8cRG7rrBmc=;
 b=Z8WAhUliCp+yTWOOBaYlmm/NIT//H0Sby8+1jygKs3599iOU/sT/KUwCAjzVwW8vya
 0Ti9WZiERR/Z2Wui0wIu+/jXg8rkVpGrZQnzl39NuvNzWTKRbhibaJrX7D/XPn2X1qWm
 GJP6M5VOzFiGewm0tG2fO0SWJph4GKWMkReOZQwmIsVs51Savj1QwCzvQa6IevmweZ65
 RG3YR88BzSN21SoXjL9dBHEa6T3jdjHHC2fWVCjWnCchcwR1GDyyg81hFG8Jor3xmqfd
 CsDXyIlcpIcDrymU8dv7MbXCx+aeegsatYuQIyOslWVqzRyos50G1klg7EWSR0VAe+9U
 Qa9Q==
X-Gm-Message-State: AGi0PuZzaSBs19iBiqXH759uh1nrNU5szMEobEXIjsn/fScG1LwJGEuC
 lTE1Moz/WCLPOOqnN/tR5772kn2G6QQ=
X-Google-Smtp-Source: APiQypL24yGVe3WceaEB3Y/nQ353jmS7PJAKTFPQBZUfJt/9FJhFHG3LPTMXIqWv5EXzFet3Sv6y/A==
X-Received: by 2002:a5d:45cf:: with SMTP id b15mr38313wrs.78.1586936445817;
 Wed, 15 Apr 2020 00:40:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:40:44 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:40 +0200
Message-Id: <20200415074034.175360-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/59] drm/vboxvidoe: use managed pci functions
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allows us to drop the cleanup code on the floor.

Sam noticed in his review:
> With this change we avoid calling pci_disable_device()
> twise in case vbox_mm_init() fails.
> Once in vbox_hw_fini() and once in the error path.

v2: Include Sam's review remarks

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/vboxvideo/vbox_drv.c  | 6 ++----
 drivers/gpu/drm/vboxvideo/vbox_main.c | 7 +------
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
index cfa4639c5142..cf2e3e6a2388 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_drv.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_drv.c
@@ -55,13 +55,13 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	pci_set_drvdata(pdev, vbox);
 	mutex_init(&vbox->hw_mutex);
 
-	ret = pci_enable_device(pdev);
+	ret = pcim_enable_device(pdev);
 	if (ret)
 		return ret;
 
 	ret = vbox_hw_init(vbox);
 	if (ret)
-		goto err_pci_disable;
+		return ret;
 
 	ret = vbox_mm_init(vbox);
 	if (ret)
@@ -91,8 +91,6 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	vbox_mm_fini(vbox);
 err_hw_fini:
 	vbox_hw_fini(vbox);
-err_pci_disable:
-	pci_disable_device(pdev);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/vboxvideo/vbox_main.c b/drivers/gpu/drm/vboxvideo/vbox_main.c
index 9dcab115a261..1336ab9795fc 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_main.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_main.c
@@ -71,8 +71,6 @@ static void vbox_accel_fini(struct vbox_private *vbox)
 
 	for (i = 0; i < vbox->num_crtcs; ++i)
 		vbva_disable(&vbox->vbva_info[i], vbox->guest_pool, i);
-
-	pci_iounmap(vbox->ddev.pdev, vbox->vbva_buffers);
 }
 
 /* Do we support the 4.3 plus mode hint reporting interface? */
@@ -125,7 +123,7 @@ int vbox_hw_init(struct vbox_private *vbox)
 	/* Create guest-heap mem-pool use 2^4 = 16 byte chunks */
 	vbox->guest_pool = gen_pool_create(4, -1);
 	if (!vbox->guest_pool)
-		goto err_unmap_guest_heap;
+		return -ENOMEM;
 
 	ret = gen_pool_add_virt(vbox->guest_pool,
 				(unsigned long)vbox->guest_heap,
@@ -168,8 +166,6 @@ int vbox_hw_init(struct vbox_private *vbox)
 
 err_destroy_guest_pool:
 	gen_pool_destroy(vbox->guest_pool);
-err_unmap_guest_heap:
-	pci_iounmap(vbox->ddev.pdev, vbox->guest_heap);
 	return ret;
 }
 
@@ -177,5 +173,4 @@ void vbox_hw_fini(struct vbox_private *vbox)
 {
 	vbox_accel_fini(vbox);
 	gen_pool_destroy(vbox->guest_pool);
-	pci_iounmap(vbox->ddev.pdev, vbox->guest_heap);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
