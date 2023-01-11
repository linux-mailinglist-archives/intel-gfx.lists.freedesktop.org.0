Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C070665F68
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 16:41:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2FB810E772;
	Wed, 11 Jan 2023 15:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECB9F10E76F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 15:41:29 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id o15so11377989wmr.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 07:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=okH8AsNmtLn+Xev5OTCMqwCCcQgJeFP0KaGCnceKOFQ=;
 b=e3QgYRhA/FauY7S29GhmvTbp6mhIVjL3kUKyk/aiNJTXGHtP9m5oMyVm5h+bchf5VB
 5Ozpe8kode9PPOMtykJJWS4wCtMq4JeTqLZWhNsrNNrrwUmqJgCj6729094+1wKf7qV8
 SfwbZApVC/cUEh7SexrqejM4npd5PFpvVRP4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=okH8AsNmtLn+Xev5OTCMqwCCcQgJeFP0KaGCnceKOFQ=;
 b=PFHLq/id4F7HkHGd8fTh6H2uBB8KxLOUcr+rGWdOumOLli2qutTf+KO3PE4og6Atc4
 8EJkad/bwZ9IC53mk0DKeWcwXFGfv0YC1/LXX3rKI3wyZcdVP10/NdCFyymoKN1qHlJy
 HOw+Pua7jgzxW9rzzPhbOgCLvkfcudFatqRnT9LZ9H5GDFmCmN4zOATz7pLAljDdjIjD
 EG9aTBC7A5+tW3DJ0ARg+fnyW0tqIAFM4zH6gkmMPIffaBd36NWdkQPiw+WUIMTX16bp
 9zJ2CxL7PM8xt/gcHpIReNQ74B6QiTRcweYtmXrUg+UoIzXbH2XKFNsSY+UgCLPU0xhp
 7f1A==
X-Gm-Message-State: AFqh2kpZ2WBTEjXt70YfL9fG4niNmcv6F1SJzW0RfF9P2gjZx8c2o9xK
 YOQq2fE/A/4Lq+wXLDzwTJsEyA==
X-Google-Smtp-Source: AMrXdXv1xjpTqbp3o72Jk+q/9NKQX+TzVLexEvL4brcebjiwodaMtz9/eJQ29HVAzKVNvEUGaR8qtg==
X-Received: by 2002:a05:600c:3d05:b0:3d3:5c21:dd94 with SMTP id
 bh5-20020a05600c3d0500b003d35c21dd94mr54680019wmb.9.1673451689538; 
 Wed, 11 Jan 2023 07:41:29 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a05600c198900b003d9e74dd9b2sm15936149wmq.9.2023.01.11.07.41.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Jan 2023 07:41:28 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 11 Jan 2023 16:41:08 +0100
Message-Id: <20230111154112.90575-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
References: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] fbdev/radeon: use pci aperture helpers
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's not exactly the same since the open coded version doesn't set
primary correctly. But that's a bugfix, so shouldn't hurt really.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: linux-fbdev@vger.kernel.org
---
 drivers/video/fbdev/aty/radeon_base.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/video/fbdev/aty/radeon_base.c b/drivers/video/fbdev/aty/radeon_base.c
index 657064227de8..972c4bbedfa3 100644
--- a/drivers/video/fbdev/aty/radeon_base.c
+++ b/drivers/video/fbdev/aty/radeon_base.c
@@ -2238,14 +2238,6 @@ static const struct bin_attribute edid2_attr = {
 	.read	= radeon_show_edid2,
 };
 
-static int radeon_kick_out_firmware_fb(struct pci_dev *pdev)
-{
-	resource_size_t base = pci_resource_start(pdev, 0);
-	resource_size_t size = pci_resource_len(pdev, 0);
-
-	return aperture_remove_conflicting_devices(base, size, false, KBUILD_MODNAME);
-}
-
 static int radeonfb_pci_register(struct pci_dev *pdev,
 				 const struct pci_device_id *ent)
 {
@@ -2296,7 +2288,7 @@ static int radeonfb_pci_register(struct pci_dev *pdev,
 	rinfo->fb_base_phys = pci_resource_start (pdev, 0);
 	rinfo->mmio_base_phys = pci_resource_start (pdev, 2);
 
-	ret = radeon_kick_out_firmware_fb(pdev);
+	ret = aperture_remove_conflicting_pci_devices(pdev, KBUILD_MODNAME);
 	if (ret)
 		goto err_release_fb;
 
-- 
2.39.0

