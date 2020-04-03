Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B6619D825
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7124E6EBA9;
	Fri,  3 Apr 2020 13:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89FF76EBA5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:47 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id h9so8654752wrc.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VPlpRsmw85fTY/StivObzsyoZLT+kiXiHykfsxrmGkw=;
 b=ZKGe/jBNwtfokKBDF1Yst6ZDGZdLdnh59WIUCxhS1JV+XyyobK0riWlDncpbHlyUYn
 kSz/ZMNTYcOElfr21IS5w/PcqEaKWWHgYzZtUmbLTgvyLt/exilsMpCzctXR0LY8y7a7
 tfynOXCMVNUGbEBOF4d9KnOZD03NvDd1v1IF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VPlpRsmw85fTY/StivObzsyoZLT+kiXiHykfsxrmGkw=;
 b=dL8HQEed0fDfgyK6JfYs5xKvyw8+TXrcykCf0fUKMlMw+5rmVmgP0AcsXZ2pqOUTLN
 cR6a9Hcv6hdlS13SrIgjg1PwWzabTwsjDfd7pjX7xvlEZ/VWaLt5Ex5Qi3gRJUEwbUNP
 lvr5Rtv9f9C0cK6ko0UgAtsD7ucmcD8e1r2HvgdrCzkVJeY6hi4XKJcYghm0hZHGBGbQ
 S7TeF4BfyBbZYBuZyjVaAYnDRQSZKFJcrrNN/O3YETPkjwdZuozeT5noVToheUZ4VhZh
 ojMaadCEJ6vI04f5w0b8SarntAtH7R1oq9P9nDw1qLT2qYRvR/+KnRCyQzgJGQp0KRrY
 xDDQ==
X-Gm-Message-State: AGi0PuafIm9unUTEv1gKRYYgTQ93WAjHLsGxQmxR6u0OfkmyRDYBwFMq
 YdG3URnjr3gvO8UviK5BLIKbvg==
X-Google-Smtp-Source: APiQypK5nBxHoZUceuv5hVGwzpTPMQynC9KjjDzHIaszjyvK+FnZFYgn2yIdSuyTuf6A9e21+DL4hQ==
X-Received: by 2002:a05:6000:a:: with SMTP id
 h10mr9747847wrx.226.1585922326181; 
 Fri, 03 Apr 2020 06:58:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:57:53 +0200
Message-Id: <20200403135828.2542770-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/44] drm/vboxvidoe: use managed pci functions
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

Allows us to drop the cleanup code on the floor.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/vboxvideo/vbox_drv.c  | 6 ++----
 drivers/gpu/drm/vboxvideo/vbox_main.c | 7 +------
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
index d34cddd809fd..c80695c2f6c0 100644
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
@@ -93,8 +93,6 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
