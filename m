Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE7A6D6DDB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 22:19:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20B4910E7AB;
	Tue,  4 Apr 2023 20:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6732610E7AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 20:18:49 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id t10so135337133edd.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 13:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680639525;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=v8jR+JhVCEnNPPxxCLey69HJ6bOpFLkEFDu5RIj5lCQ=;
 b=CF3IsDvY6dbEEipZWbZecaB37m03mDmQee26T2SFkUKX7uUiS6WgmAfFWdfr/xo9pg
 Df+9rE/8viBPRfR1w+7r9v3aj7BfD3mNTeOavSozjciQzIW/xKxSnHxT3HwL8pACaTdn
 +UChul2klVrq4mbeJHYKxGH7AajhXYHoTO93A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680639525;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=v8jR+JhVCEnNPPxxCLey69HJ6bOpFLkEFDu5RIj5lCQ=;
 b=RUnurQDBIoeaQLoMwU+rR2ugXj/ZZAaMuA34Ym2L5rRXMTFRBHl/5XbitJaMWU1dOM
 KW8w3E2vIPAXbWO3PqroGPC2yBgyGruHpmHFlji2bBnMFND7f+27aha9RxdrDUodLq4n
 /F84Ma/IJorbWZJ8GcW97kRZh2SdQefyhnDnWYjdgJ7UEFBElsQvE5z4lVED0CdCXqrX
 hQYD8TYlWiqtTcdDQEToKvXBi+EpK5M6GQJY0enZoWRWZ+H3BkLf0sjpTWJ35gX7i3Fo
 Z8OT2p6YgJsUrijiLl3uUzLT2el4V5CAKf2TaKZRTw2+ZK2W71qRznkVpOt9/hrCVmUv
 cabw==
X-Gm-Message-State: AAQBX9cyXu6sPGPMzXhN+qagCUG3YZUILda16JVp2IhK8aNNuktzTCBZ
 qlonVsH7+URbcw0aaqSkUJBXTw==
X-Google-Smtp-Source: AKy350bsqIb6bhwWYVrLpFa0mQtIxSkLSapSGL/+ogxl2OMRYOXLKUNNTNqVQMeVfYdPtm9a3hx8Sg==
X-Received: by 2002:a05:6402:35cb:b0:502:c397:adc8 with SMTP id
 z11-20020a05640235cb00b00502c397adc8mr1534431edc.1.1680639525501; 
 Tue, 04 Apr 2023 13:18:45 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 u12-20020a50c04c000000b004d8d2735251sm6367986edd.43.2023.04.04.13.18.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 13:18:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  4 Apr 2023 22:18:35 +0200
Message-Id: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/gma500: Use
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This one nukes all framebuffers, which is a bit much. In reality
gma500 is igpu and never shipped with anything discrete, so there should
not be any difference.

v2: Unfortunately the framebuffer sits outside of the pci bars for
gma500, and so only using the pci helpers won't be enough. Otoh if we
only use non-pci helper, then we don't get the vga handling, and
subsequent refactoring to untangle these special cases won't work.

It's not pretty, but the simplest fix (since gma500 really is the only
quirky pci driver like this we have) is to just have both calls.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Javier Martinez Canillas <javierm@redhat.com>
---
 drivers/gpu/drm/gma500/psb_drv.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/gma500/psb_drv.c b/drivers/gpu/drm/gma500/psb_drv.c
index 2ce96b1b9c74..f1e0eed8fea4 100644
--- a/drivers/gpu/drm/gma500/psb_drv.c
+++ b/drivers/gpu/drm/gma500/psb_drv.c
@@ -422,12 +422,17 @@ static int psb_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	/*
 	 * We cannot yet easily find the framebuffer's location in memory. So
-	 * remove all framebuffers here.
+	 * remove all framebuffers here. Note that we still want the pci special
+	 * handling to kick out vgacon.
 	 *
 	 * TODO: Refactor psb_driver_load() to map vdc_reg earlier. Then we
 	 *       might be able to read the framebuffer range from the device.
 	 */
-	ret = drm_aperture_remove_framebuffers(true, &driver);
+	ret = drm_aperture_remove_framebuffers(false, &driver);
+	if (ret)
+		return ret;
+
+	ret = drm_aperture_remove_conflicting_pci_framebuffers(pdev, &driver);
 	if (ret)
 		return ret;
 
-- 
2.40.0

