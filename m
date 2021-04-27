Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D26A36C19B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 11:20:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF486E932;
	Tue, 27 Apr 2021 09:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C5B6E92C
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 09:20:29 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id n84so4196818wma.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 02:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m56BVCqfwfl5q0jPz4hzEYoV7UdZ/KST4hTQZTeuJdk=;
 b=Z16j2RO/tMcGi97O2Wslzw0bl7bocm0CdNceuYd7FR8sWpRYd7HG8Ip8qfiUZDTvlT
 HTaHagRZcPEwezykSoz1I9uWSEHmisn2dZaORuS6cS6VxZGe3iTz3jK4Q4TLwFAEhfb/
 jtCm3FT1ZJ50M7FTWm5j9OQPvDmXnxLTCcXaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m56BVCqfwfl5q0jPz4hzEYoV7UdZ/KST4hTQZTeuJdk=;
 b=IoaQAx03jWxJF/xTAvPqu4P2cax44GZlWGIxyoRkYBDSfTbg0RdD6CX0d735Bl5Q6m
 yYXQcsd2cmxv59RZ7J6n4ph6SqREzSDnU0b0zHTQ/8Dq44yQRhNKpfGDQPVuGh8qHR9Y
 fbak+r1rbHqfk4qlPfLFnaqlN4cw8f2Fvp0+pEOrTPbjgGvhonRfjjOKm6mR04yfM9oP
 9BGDk3rBEGS1PQT0trE7TDn2WiP3gy3/+NThpdj+K23MXm+nsuEIyQ+9KraYbxg6WF2a
 BbJna2N2/nDqO0tSIUpqSDFujOHZRvJYviw2q1BgKwegETUxhmriTOO2X7QTY63GdBtV
 MKnw==
X-Gm-Message-State: AOAM530mGg4N1XFfyComSEb/g9QzRIOTZGoa0jKgvHLercZx//oGJaxp
 1jnJhZN3q/fn813RIy2CdQfjQg==
X-Google-Smtp-Source: ABdhPJzbPrCtq40L5ZJcK4JYJvh90uc/ZVxSStrcaxlXHngaxKYQB0bYS5ro9fj1IS+08On3AC6WBg==
X-Received: by 2002:a7b:c017:: with SMTP id c23mr3191439wmb.175.1619515228054; 
 Tue, 27 Apr 2021 02:20:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r24sm1939816wmh.8.2021.04.27.02.20.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 02:20:27 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 27 Apr 2021 11:20:15 +0200
Message-Id: <20210427092018.832258-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
References: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/msm/mdp4: Fix modifier support enabling
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
