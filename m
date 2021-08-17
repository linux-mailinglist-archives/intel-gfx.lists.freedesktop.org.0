Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D441E3EE8E7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 10:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B0616E0E6;
	Tue, 17 Aug 2021 08:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2D689D5F
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 08:53:14 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 x2-20020a1c7c02000000b002e6f1f69a1eso1291359wmc.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 01:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Foq1jfoZEIBs4n7G/bZZkaAEZKAMJ2fq58X7W55B5Cs=;
 b=ON05/OnTdpSUTAVLFueKtDr2Q2P3k1V4fLOpdhTNgRcS3Mf1AmODgDnnWxVXZD0xS5
 YnDBWCwf9ndzJhCQXUrKh+KxdR0ljJnroirmJG/jugfbsUUvzy7qhJDQpwA1QtDfsrpT
 cXU1kaWBVCQ3iSp3NTFJ9aLbiNIWvRM3CzZDQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Foq1jfoZEIBs4n7G/bZZkaAEZKAMJ2fq58X7W55B5Cs=;
 b=DYLZewMd92DoZth0R31Wwat7AEyQL+YRnkGhOZCbP8Gh+Ml5qrMvwMT9PJYo9gajOW
 2+sK36hwOem8whZ8uykL8xlMFDB/JITwFu9+8XW/YNQoAc7JlyDl+y+SrRZsMb2xXE5P
 2DM5GUva9rmxHV4B6Q4840VmUqJbGvcTzVN76e0/Q2vP2xVwkbLDDZzE5RvXfDn1EG54
 1HcpYn34cN9IZJAtfCLbd3LUpZ07rybkz9C6TSBvU8EHauMVwRD1Vanal0C3hsnZfYX0
 QxVqqEK0v/NZV6g6x0cEClVXYWGcxJKBZpIiUUQSlcROs2qqyI5j9+GB+k+OZlhvr/ZR
 nrmw==
X-Gm-Message-State: AOAM5306SzaJ6l9dyBgZVYtqCc9zfCU2mDSNYeRJ3VS6mYCdhEf6Rm9W
 ivj3bBykvFEA3vKHCU0Xa1OsLA==
X-Google-Smtp-Source: ABdhPJwpUUwXnjaRx60+hWeIp7RglqDMAgg9WKN2STzJ0qtxfyLS51dWqmDcYZYLpOCamTSqG8h5Nw==
X-Received: by 2002:a7b:cdfa:: with SMTP id p26mr2219643wmj.45.1629190392928; 
 Tue, 17 Aug 2021 01:53:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g11sm1645525wrd.97.2021.08.17.01.53.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 01:53:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Rob Clark <robdclark@chromium.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>
Date: Tue, 17 Aug 2021 10:53:08 +0200
Message-Id: <20210817085308.3557257-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-3-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-3-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/msm: Improve drm/sched point of no return
 rules
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Originally drm_sched_job_init was the point of no return, after which
drivers really should submit a job. I've split that up, which allows
us to fix this issue pretty easily.

Only thing we have to take care of is to not skip to error paths after
that. Other drivers do this the same for out-fence and similar things.

v2: It's not really a bugfix, just an improvement, since all
drm_sched_job_arm does is reserve the fence number. And gaps should be
fine, as long as the drm_sched_job doesn't escape anywhere at all.

For robustness it's still better to align with other drivers here and
not bail out after job_arm().

Cc: Rob Clark <robdclark@chromium.org>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: "Christian König" <christian.koenig@amd.com>
Cc: linux-arm-msm@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: freedreno@lists.freedesktop.org
Cc: linux-media@vger.kernel.org
Cc: linaro-mm-sig@lists.linaro.org
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/msm/msm_gem_submit.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
index 4d1c4d5f6a2a..371ed9154e58 100644
--- a/drivers/gpu/drm/msm/msm_gem_submit.c
+++ b/drivers/gpu/drm/msm/msm_gem_submit.c
@@ -52,8 +52,6 @@ static struct msm_gem_submit *submit_create(struct drm_device *dev,
 		return ERR_PTR(ret);
 	}
 
-	drm_sched_job_arm(&job->base);
-
 	xa_init_flags(&submit->deps, XA_FLAGS_ALLOC);
 
 	kref_init(&submit->ref);
@@ -882,6 +880,8 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
 
 	submit->user_fence = dma_fence_get(&submit->base.s_fence->finished);
 
+	drm_sched_job_arm(&submit->base);
+
 	/*
 	 * Allocate an id which can be used by WAIT_FENCE ioctl to map back
 	 * to the underlying fence.
@@ -891,17 +891,16 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
 	if (submit->fence_id < 0) {
 		ret = submit->fence_id = 0;
 		submit->fence_id = 0;
-		goto out;
 	}
 
-	if (args->flags & MSM_SUBMIT_FENCE_FD_OUT) {
+	if (ret == 0 && args->flags & MSM_SUBMIT_FENCE_FD_OUT) {
 		struct sync_file *sync_file = sync_file_create(submit->user_fence);
 		if (!sync_file) {
 			ret = -ENOMEM;
-			goto out;
+		} else {
+			fd_install(out_fence_fd, sync_file->file);
+			args->fence_fd = out_fence_fd;
 		}
-		fd_install(out_fence_fd, sync_file->file);
-		args->fence_fd = out_fence_fd;
 	}
 
 	submit_attach_object_fences(submit);
-- 
2.32.0

