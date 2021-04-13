Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4D435DBA7
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C0E6E2E3;
	Tue, 13 Apr 2021 09:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEB646E311
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:49:17 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id x7so15751479wrw.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 02:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m56BVCqfwfl5q0jPz4hzEYoV7UdZ/KST4hTQZTeuJdk=;
 b=DlN1qLsRkwspcoQjZHLlkmJmsRzvKA8b3BZx7Ij6a/J7hK2lxohgdq1Lz5WwmRyTiE
 y6Ijp9eFpL0gR/XBxFlrkxHCmsQwwjvuCMxIOp8ENOpy+NzljtuXoYaxd7OhmAbgFpO+
 sQ+G3DQE4yzJhVm18ZYYkeig9SX6t1+hOv+3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m56BVCqfwfl5q0jPz4hzEYoV7UdZ/KST4hTQZTeuJdk=;
 b=jr71Fbj/yIqUD5G0IGP4WQcoNEUIHvKbRFjMdCdQiH1WaD3s5zOL7hdXWxPIdR1NwS
 UEJZFsbXI4aMIeCdNbZJic3pDHxC7OQuBuCuuiXWuUrpy8XEIa5q1Yi1JOGrFE9R/PoR
 ld+AcC8h81lSkzHa4/2W2ST/GnavgEOKFlGUh8JSfNXqGim+vBeci1yLcOgm8+GDEwKX
 7fyDdaRkF9OTksiDgtRaKUoFunMsvkfPkHjkIve/TG8zQ+PqNXEuAs7z9Ls2Q2LGv5ew
 PWlrttL0P7XvjpWEAaRs2g9W7ZN5eHFwqzsxHWUDI+0AF9WTfGzICDKJIgRwbMr379e+
 +Jsg==
X-Gm-Message-State: AOAM531h3MTHc6ZNty/n5pq3N8+st8Lc5sVN5X9koUtBgvRZI412PdpF
 8jPbplRtx9Fc8D/wgRagxhz1rg==
X-Google-Smtp-Source: ABdhPJxba/UokgDDBGd45GnkdAsegWSdlxRgWh5ae6CT+UZ1J8D7VSV+2k5yG+VDZ5PL+WaH+ETJ/Q==
X-Received: by 2002:a5d:6684:: with SMTP id l4mr35724697wru.381.1618307356600; 
 Tue, 13 Apr 2021 02:49:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 64sm1956458wmz.7.2021.04.13.02.49.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:49:16 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Apr 2021 11:48:58 +0200
Message-Id: <20210413094904.3736372-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/12] drm/msm/mdp4: Fix modifier support
 enabling
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
Cc: Rob Clark <robdclark@chromium.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable@vger.kernel.org, Jordan Crouse <jordan@cosmicpenguin.net>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Setting the cap without the modifier list is very confusing to
userspace. Fix that by listing the ones we support explicitly.

Stable backport so that userspace can rely on this working in a
reasonable way, i.e. that the cap set implies IN_FORMATS is available.

Cc: stable@vger.kernel.org
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
Cc: Rob Clark <robdclark@chromium.org>
Cc: Jordan Crouse <jordan@cosmicpenguin.net>
Cc: Emil Velikov <emil.velikov@collabora.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c   | 2 --
 drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c | 8 +++++++-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c
index 3d729270bde1..4a5b518288b0 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c
@@ -88,8 +88,6 @@ static int mdp4_hw_init(struct msm_kms *kms)
 	if (mdp4_kms->rev > 1)
 		mdp4_write(mdp4_kms, REG_MDP4_RESET_STATUS, 1);
 
-	dev->mode_config.allow_fb_modifiers = true;
-
 out:
 	pm_runtime_put_sync(dev->dev);
 
diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c
index 9aecca919f24..49bdabea8ed5 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c
@@ -349,6 +349,12 @@ enum mdp4_pipe mdp4_plane_pipe(struct drm_plane *plane)
 	return mdp4_plane->pipe;
 }
 
+static const uint64_t supported_format_modifiers[] = {
+	DRM_FORMAT_MOD_SAMSUNG_64_32_TILE,
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID
+};
+
 /* initialize plane */
 struct drm_plane *mdp4_plane_init(struct drm_device *dev,
 		enum mdp4_pipe pipe_id, bool private_plane)
@@ -377,7 +383,7 @@ struct drm_plane *mdp4_plane_init(struct drm_device *dev,
 	type = private_plane ? DRM_PLANE_TYPE_PRIMARY : DRM_PLANE_TYPE_OVERLAY;
 	ret = drm_universal_plane_init(dev, plane, 0xff, &mdp4_plane_funcs,
 				 mdp4_plane->formats, mdp4_plane->nformats,
-				 NULL, type, NULL);
+				 supported_format_modifiers, type, NULL);
 	if (ret)
 		goto fail;
 
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
