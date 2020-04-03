Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1753119D821
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A0D6EBA3;
	Fri,  3 Apr 2020 13:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E4146EBA3
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:44 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id d202so7847822wmd.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hAlOMj7No1NvrsQLBdK4R7UjdMBvhy1FvedvNT5x/A4=;
 b=k+suZu4wf1eUlT1IhhP1+d3rBgnZT99NWkdFFH+e/nNKVUzrK+K5PKx/cjDKGhrHfC
 eakqPSPCYj9o6vciF2SRkbU3c9aEnCO8jNqJl1KE0h+T847tBqxvRr0n6ir3yr1lH+Nw
 M2J3DVxuaqxrMebIwcbNRNS5NFywXxqxL1qU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hAlOMj7No1NvrsQLBdK4R7UjdMBvhy1FvedvNT5x/A4=;
 b=DSeHZA+PPgPgGQXHMMimnwGCHn9g5mh/YaY5R8km+VVGYgDgR3qzFCtho3H20TIY2Z
 xdmYcVpzIZorbvE/IbW3SOy8nxPqJasoGBpDDF4xmHptjLVv5s609y1KoJ3GpwZlC6St
 Fy4oEUm26Q0S5fyepMZDAeqxEz/ntn15CckXU4eDrLA1WRXxfodRVwuFD40QI+7gYcvE
 JlUfUgHk60YLlomL/H3puqbPWOoPTsEdL2/dnq40Vjfk0MitC4ooSjQQiVng9W/XrBJ3
 R2/9Bm26p2MBlVRonHyew/pUslE7ELFSeQILAZBTiP5DtE6tENM7iAqDSsTjPBn6K38V
 PYfg==
X-Gm-Message-State: AGi0PuboFUPcuraDv7VAKScSojTgFbz8V8hZ08OYhHodt/NSWRzj6cGQ
 00q/EaTZf2BakBrm7yhhv2ZU8g==
X-Google-Smtp-Source: APiQypLwtx1Vg3FsBzGPTMzbZvqqvMNvUGhG5mQihZvzME+/e7/ib8zH4/+62LvcmWT5L3ICoWftHg==
X-Received: by 2002:a05:600c:21cc:: with SMTP id
 x12mr9270114wmj.104.1585922322700; 
 Fri, 03 Apr 2020 06:58:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:41 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:57:50 +0200
Message-Id: <20200403135828.2542770-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/44] drm/vboxvideo: drop DRM_MTRR_WC #define
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

Doesn't apply to upstream kernels since a rather long time.

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
