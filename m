Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A396D6D4C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 21:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 751F310E051;
	Tue,  4 Apr 2023 19:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4025710E78D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 19:40:50 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id i5so135302686eda.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 12:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680637248; x=1683229248;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HaT5ndE8pysE8xXupUICEr52//Ceqqz0gTn56+JWqvc=;
 b=b2ik949ITDajIlctCc1vBc0ULiEY5E6yotv8r9ogUFfQH9nI5bG+rwxpTx37Z952x4
 zNutqTfFsNpWeO3YoU16PklObobaS2RI1pG2gSpPXCCKx3xI0VKOOad7gLs1nDcPe3oB
 NBYo1XxcqKBQC66r+PVksCdhRwklF5N2/lj9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680637248; x=1683229248;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HaT5ndE8pysE8xXupUICEr52//Ceqqz0gTn56+JWqvc=;
 b=1z0t1/rtpHQAAoP1mCLzyQII1eZu6CgPnYND614mDjyK1clEXAwW2oc/yQ8Ffj0pMv
 cj1hsnRSPPleyM9WlijGmLBp0cappp7wgTEfDEVyRQvYRX8U8Pj3aNyiypTL2D7+N8Ty
 YPMEldYmIKWHdiMYE+Nu+sCr9FqVD6g8P6nSw/zNEpTZVPlqM3H8k6zXPiU2Qqp5k4Q7
 dAgHg7JkKNtURKvOkJ5jHHMhgviVX1/JBIoPCvJfCT4Vh9oY9vdkQ35ntdSjuLq1nfti
 w4zVY21MtRzJUxVEcW85zZtsxb5sQ6dhoSSPqKl/eB7aQIt4lgI8RyH+SHn3y7PuHYll
 HLAw==
X-Gm-Message-State: AAQBX9c+AH6yntqIfNGAJ/dgzzHcLPLGYYzlqLGiVQg6PXV9trBCwY8a
 hOc+4Jb2w9NOlJKhfl2EPaG3CA==
X-Google-Smtp-Source: AKy350acmCVMfSzMccJ+1LVre1XMFOyzteJhbrKeoHuS69A5jCdZ5Puqr2wnGYHjcJlqYPjAcNQgSg==
X-Received: by 2002:a17:906:518e:b0:931:5145:c51f with SMTP id
 y14-20020a170906518e00b009315145c51fmr777602ejk.4.1680637248617; 
 Tue, 04 Apr 2023 12:40:48 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 xb7-20020a170907070700b00948c2f245a9sm2472802ejb.110.2023.04.04.12.40.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 12:40:48 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  4 Apr 2023 21:40:37 +0200
Message-Id: <20230404194038.472803-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
References: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/fb-helper: drop redundant pixclock
 check from drm_fb_helper_set_par()
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
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The fb_check_var hook is supposed to validate all this stuff. Any
errors from fb_set_par are considered driver/hw issues and resulting
in dmesg warnings.

Luckily we do fix up the pixclock already, so this is all fine.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/drm_fb_helper.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index eb4ece3e0027..b9696d13a741 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -1647,11 +1647,6 @@ int drm_fb_helper_set_par(struct fb_info *info)
 	if (oops_in_progress)
 		return -EBUSY;
 
-	if (var->pixclock != 0) {
-		drm_err(fb_helper->dev, "PIXEL CLOCK SET\n");
-		return -EINVAL;
-	}
-
 	/*
 	 * Normally we want to make sure that a kms master takes precedence over
 	 * fbdev, to avoid fbdev flickering and occasionally stealing the
-- 
2.40.0

