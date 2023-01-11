Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5267665F53
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 16:41:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED96E10E2B2;
	Wed, 11 Jan 2023 15:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28EB10E2B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 15:41:22 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 bg13-20020a05600c3c8d00b003d9712b29d2so14681796wmb.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 07:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=OGvydfcnswB5kCTr6pgmQFxcgFjCL3fOh+5DF0n/kHQ=;
 b=MlaP4iz9T5QOEdEs7QRCj0LRht0gbuOE12jC5lqdYaja6OmWEu3x44yTN6+eBPdseA
 ZRP3gRxjIwfx/RvbvL1abOvvxn4IUBTB76ngU0gOrbj6czdukqRxbFjuguKcKlCvBiAi
 OIRDopYxEw1xY1T5KE6yRdOqY5ob94mIqBzMI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OGvydfcnswB5kCTr6pgmQFxcgFjCL3fOh+5DF0n/kHQ=;
 b=ut5am0PjWGCPlPlmeQ9tvKIqH/W/rwtyBDATDoC5lQLapzZieVfdp1DyLnZfrqXoYZ
 QG25R2YDqTEEVEkQhabrxMOh/cIP8PPoYBEZ6m5FV61djXlZzli/475wNUylmtosjBnG
 vKoB570ZkSL2JM40IYEWXD8+GsUsl69hr7Be7LAahH9TPDJMS0pcNhOcxeCZOhwjPw1+
 +roO3zVl9CpebjLht60s/UJxsplxYKe9S1+j4/oscaRth1JgFZ5KrbhO9Q4y+bBsAxPZ
 PbT5o1nbojQL8ZakkIGFxxNYlTuH3Sglklk1ZCl0fZbZgrpdKcnRLBNBkseoOeOVZreC
 IDCQ==
X-Gm-Message-State: AFqh2koeFh8PoY76A/sqHddxPKLk5K4VqGr3EhZl1875EUDu1Hx6iEGY
 WFokh0YrZ+iMoCdUD2G2u51xIQ==
X-Google-Smtp-Source: AMrXdXvZL6+Fq4x6+s6c1TzAuUbbiOvtCaS9MpQRLMdhQaJKNpbYwvT73xPCftXvxiNmLgwrl3Fc5Q==
X-Received: by 2002:a05:600c:3482:b0:3d3:4f56:62e1 with SMTP id
 a2-20020a05600c348200b003d34f5662e1mr51193693wmq.27.1673451681375; 
 Wed, 11 Jan 2023 07:41:21 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a05600c198900b003d9e74dd9b2sm15936149wmq.9.2023.01.11.07.41.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Jan 2023 07:41:20 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 11 Jan 2023 16:41:02 +0100
Message-Id: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/11] drm/ast: Use
 drm_aperture_remove_conflicting_pci_framebuffers
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
Cc: linux-fbdev@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's just open coded and matches.

Note that Thomas said that his version apparently failed for some
reason, but hey maybe we should try again.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org
---
 drivers/gpu/drm/ast/ast_drv.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/ast/ast_drv.c b/drivers/gpu/drm/ast/ast_drv.c
index 420fc75c240e..3ac24a780f50 100644
--- a/drivers/gpu/drm/ast/ast_drv.c
+++ b/drivers/gpu/drm/ast/ast_drv.c
@@ -90,27 +90,13 @@ static const struct pci_device_id ast_pciidlist[] = {
 
 MODULE_DEVICE_TABLE(pci, ast_pciidlist);
 
-static int ast_remove_conflicting_framebuffers(struct pci_dev *pdev)
-{
-	bool primary = false;
-	resource_size_t base, size;
-
-	base = pci_resource_start(pdev, 0);
-	size = pci_resource_len(pdev, 0);
-#ifdef CONFIG_X86
-	primary = pdev->resource[PCI_ROM_RESOURCE].flags & IORESOURCE_ROM_SHADOW;
-#endif
-
-	return drm_aperture_remove_conflicting_framebuffers(base, size, primary, &ast_driver);
-}
-
 static int ast_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
 	struct ast_private *ast;
 	struct drm_device *dev;
 	int ret;
 
-	ret = ast_remove_conflicting_framebuffers(pdev);
+	ret = drm_aperture_remove_conflicting_pci_framebuffers(pdev, &ast_driver);
 	if (ret)
 		return ret;
 
-- 
2.39.0

