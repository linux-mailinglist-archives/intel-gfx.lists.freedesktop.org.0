Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF52A1A946D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:40:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D99F66E874;
	Wed, 15 Apr 2020 07:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C92E66E874
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:40:43 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id a201so17305225wme.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i/6OJckg0FYtxGo8Frv5fio5z4VslBD7hEowA01at0E=;
 b=gJcQMs+HXh33ciPIiREiLc4c2GiJdwJhYgv3DmecZo+60AK1eIyFdKWGhhlY34cErl
 Pf1oYs1E6guvvhBabs2KJULHUmSBNkgrFRHDdJevjb98kbOfYXs8eZp+BkYz4Kf3yyrn
 AOWZwxBmICrjccmAgTM7wLaOyDHEsHo8boF/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i/6OJckg0FYtxGo8Frv5fio5z4VslBD7hEowA01at0E=;
 b=qb6Cif3NxvXlOqmQRDv6LXDEA81IgRrPvBYsjchIqGTpHDu0W7WiTSYd9Xz5SyFlx7
 kQWBws0vmXzf/+LrhY1cbFFO81TsB2GzCJLBW+oU0L2X2xL5oFNNF1PA7Vc04fD8B8vH
 +bf6VjB20pROKJ/HvWWPr5yJBeDbLLFQ4ciVHOgEUu6ft4gQFNCZHiRIKgi+1wAQ39nc
 fVIt27RkKGK7ruSt3yd9minchD6zQOInsqLGTAH6EBjCLt7Dywfdr47928YmmkmROnah
 UWP6kQiffYJakE6BtR4wG6Cj9UjayAUh6xOzyjHG7lkG9ZyB24BJOwW5dMOQIMHrQ2AG
 zcKA==
X-Gm-Message-State: AGi0Pua/HCdS1y0t/NiWGraST1IXVasv0behJJEF9CZKqApKVG5k5WoB
 dMGwJf9/DRGIdku68UgrKBPJsx1l2us=
X-Google-Smtp-Source: APiQypLN5ahm7RORRP3/C29Nq7g1nINWPZ3tqBsoiG6EcAVPdODfwy5kBwtHbJlwaiQ0+IIuHOJ/5w==
X-Received: by 2002:a7b:c1d4:: with SMTP id a20mr3929735wmj.111.1586936442238; 
 Wed, 15 Apr 2020 00:40:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:40:41 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:37 +0200
Message-Id: <20200415074034.175360-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/59] drm/vboxvideo: drop DRM_MTRR_WC #define
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

Doesn't apply to upstream kernels since a rather long time.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/vboxvideo/vbox_ttm.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/vboxvideo/vbox_ttm.c b/drivers/gpu/drm/vboxvideo/vbox_ttm.c
index 976423d0c3cc..f5a06675da43 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_ttm.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_ttm.c
@@ -24,25 +24,13 @@ int vbox_mm_init(struct vbox_private *vbox)
 		return ret;
 	}
 
-#ifdef DRM_MTRR_WC
-	vbox->fb_mtrr = drm_mtrr_add(pci_resource_start(dev->pdev, 0),
-				     pci_resource_len(dev->pdev, 0),
-				     DRM_MTRR_WC);
-#else
 	vbox->fb_mtrr = arch_phys_wc_add(pci_resource_start(dev->pdev, 0),
 					 pci_resource_len(dev->pdev, 0));
-#endif
 	return 0;
 }
 
 void vbox_mm_fini(struct vbox_private *vbox)
 {
-#ifdef DRM_MTRR_WC
-	drm_mtrr_del(vbox->fb_mtrr,
-		     pci_resource_start(vbox->ddev.pdev, 0),
-		     pci_resource_len(vbox->ddev.pdev, 0), DRM_MTRR_WC);
-#else
 	arch_phys_wc_del(vbox->fb_mtrr);
-#endif
 	drm_vram_helper_release_mm(&vbox->ddev);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
