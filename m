Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0868E39308D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 16:14:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D176E8BC;
	Thu, 27 May 2021 14:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA2D6E970
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 14:13:48 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id v12so39866wrq.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 07:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pnUIa0sFyDkR/8t0TailNKYrmyNBbS9VS6vHPr+XJFM=;
 b=MI7QJEfekx+QOGzsIRRMyARl32XRuIdsycWLVXL35+vdS0IOKThdyvOYPOcyh3h6CS
 V6wts5tPvyS04l/g09jcS30fVsupQtgT8iyJXgm0vA1WPEJxC07wSsQ4FW+8J23U2E+o
 hOkYC03h9qs7Hfbc4GLR8qyjgq34V/N1I4GlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pnUIa0sFyDkR/8t0TailNKYrmyNBbS9VS6vHPr+XJFM=;
 b=boLm8AZRyJ39QGK9sutl8gjwVgb3AmwI6yY0WblMRZnXgBtIpaCfyIT/42Kf2L6Gy0
 6s7SN5GC1c/0cidRH6djG6FiIpgF/pip3WsINLRKSvXevflIAq1fidel9IKf2umf75sN
 C4vzX400NHpqWBxAKwtWA3ZVc66AwFLgtRa4wxfA+5gwMVg26qoxgQ1vXg/SrUfTBehE
 JVwTp25r+89/U9IjSkOfLNZGgVEBkZARIJAiAbOKfOxu4l+LVN5oxeKmpgi9cPc/ZH0W
 +/s6ciaXf+709jluXuOpNUsP3CuN6+zBMVZtlPN25uG/vw0ljF/wmns9HmhzSRPE5RyO
 Wtug==
X-Gm-Message-State: AOAM532wyEJkdbXo0c/RhTT2rCFUvsUGRNYd5zZMZudP86lU3WZkBB7D
 aTD5OLfJ0G8lW4Ghc29b6K174ziMhDWFqg==
X-Google-Smtp-Source: ABdhPJwr8pdYAXi2FwDiQGlig3DAKuKdotHAwHRhdVdm/7T5zqMiQbXrxQQ/VdnSdhmO+dMcNSy+FA==
X-Received: by 2002:a05:6000:1368:: with SMTP id
 q8mr3673941wrz.342.1622124826789; 
 Thu, 27 May 2021 07:13:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x10sm3381136wrt.65.2021.05.27.07.13.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 07:13:46 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 27 May 2021 16:13:37 +0200
Message-Id: <20210527141337.3857901-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
References: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/shmem-helper: Align to page size in
 dumb_create
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maxime Ripard <mripard@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

shmem helpers seem a bit sloppy here by automatically rounding up when
actually creating the buffer, which results in under-reporting of what
we actually have. Caught by igt/vgem_basic tests.

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 11edd54f0580..296ab1b7c07f 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -505,13 +505,13 @@ int drm_gem_shmem_dumb_create(struct drm_file *file, struct drm_device *dev,
 
 	if (!args->pitch || !args->size) {
 		args->pitch = min_pitch;
-		args->size = args->pitch * args->height;
+		args->size = PAGE_ALIGN(args->pitch * args->height);
 	} else {
 		/* ensure sane minimum values */
 		if (args->pitch < min_pitch)
 			args->pitch = min_pitch;
 		if (args->size < args->pitch * args->height)
-			args->size = args->pitch * args->height;
+			args->size = PAGE_ALIGN(args->pitch * args->height);
 	}
 
 	shmem = drm_gem_shmem_create_with_handle(file, dev, args->size, &args->handle);
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
