Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 364F0665F7C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 16:42:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5907610E782;
	Wed, 11 Jan 2023 15:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E69B110E76E
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 15:41:29 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 m26-20020a05600c3b1a00b003d9811fcaafso12970647wms.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 07:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uA+tPLir+1X4c7NIGPD8fbGsyIZBKsPUjYPi9h9kAc8=;
 b=eNQu3m5MBYcJ4ir7wnU2uKSOdOlTVnwwoNbl7ndwmx7pL0oaymY4tJ+VPavmH4gWu3
 ctX/ciqpqll+Gi0G39VkzdIVV+zIy+55w4NRmQ48GvAAagPpdV92t11x9dtuCypNqs8x
 VKs1+2qNooBYEQ/WTCaaYQDd8eQZXRMv5YgkU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uA+tPLir+1X4c7NIGPD8fbGsyIZBKsPUjYPi9h9kAc8=;
 b=c4JZ5uZZIx9HsfCm104/i/PazFGmKfECO61CWWoEDt4tattBnHY1Y2MVkpN3VarlMe
 U0TbSi4fFQR40tTzkb/DK2P1RrMJ825AjwmdgagbCqhEZajZ3hHT42W/28Yi0ItYMy+q
 dXyinLC7hGhi4QxW2DPCxzeFjO2RP6w9j6WJpnEa64xfgcMnuvMVhT7ud1oFATYm4Den
 Wtgj1xitjfcgoadD7/cAy7XsAyi+UPkVF+j5nffiGVLjalYkMMgZHpbFf4bEZ8hlBFev
 aaji4zTWckW18Y4PXK693qE9QJE2rF3Z/mD8t15JzHrfoRqQsmRnk8YCCwZj014tS0YS
 NDXA==
X-Gm-Message-State: AFqh2kreWryuuh3iPn98eVAg49j7MR6DunTTRRNZdGbIw2n8dHqnG61x
 lg2i0Q5Dp3yr92ZtBfOtGjJyLA==
X-Google-Smtp-Source: AMrXdXvP0g7aBxRONWD/2hWDOWNy8uqW2LewLgFiVP8szo0yPD2T/n1jDfUyAtI8xKF52PjIaacOWg==
X-Received: by 2002:a05:600c:4f83:b0:3d2:3f55:f73f with SMTP id
 n3-20020a05600c4f8300b003d23f55f73fmr53421615wmq.8.1673451688237; 
 Wed, 11 Jan 2023 07:41:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a05600c198900b003d9e74dd9b2sm15936149wmq.9.2023.01.11.07.41.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Jan 2023 07:41:27 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 11 Jan 2023 16:41:07 +0100
Message-Id: <20230111154112.90575-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
References: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] staging/lynxfb: Use pci aperture helper
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
Cc: linux-fbdev@vger.kernel.org, Teddy Wang <teddy.wang@siliconmotion.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It exists! Note that since this is an exact copy, there shouldn't be
any functional difference here.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: Teddy Wang <teddy.wang@siliconmotion.com>
Cc: linux-fbdev@vger.kernel.org
---
 drivers/staging/sm750fb/sm750.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index effc7fcc3703..22ace3168723 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -989,20 +989,6 @@ static int sm750fb_framebuffer_alloc(struct sm750_dev *sm750_dev, int fbidx)
 	return err;
 }
 
-static int lynxfb_kick_out_firmware_fb(struct pci_dev *pdev)
-{
-	resource_size_t base = pci_resource_start(pdev, 0);
-	resource_size_t size = pci_resource_len(pdev, 0);
-	bool primary = false;
-
-#ifdef CONFIG_X86
-	primary = pdev->resource[PCI_ROM_RESOURCE].flags &
-					IORESOURCE_ROM_SHADOW;
-#endif
-
-	return aperture_remove_conflicting_devices(base, size, primary, "sm750_fb1");
-}
-
 static int lynxfb_pci_probe(struct pci_dev *pdev,
 			    const struct pci_device_id *ent)
 {
@@ -1011,7 +997,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	int fbidx;
 	int err;
 
-	err = lynxfb_kick_out_firmware_fb(pdev);
+	err = aperture_remove_conflicting_pci_devices(pdev, "sm750_fb1");
 	if (err)
 		return err;
 
-- 
2.39.0

