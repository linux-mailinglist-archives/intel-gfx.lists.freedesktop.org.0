Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 592A63E12FF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919ED6E7E6;
	Thu,  5 Aug 2021 10:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1988289C96
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:47:14 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id hw6so8786472ejc.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fC/EAmoj6YexJw+zPVjashZb7GDaw/COXBU45GjF9Ac=;
 b=MN7pbspksKz10+81FOE3trN/U5sKbSIBPH7em0ZCBOj/Y1FzkXL1oYP/m8hSgC/132
 stq2YNlrRF41DaZysPl4dRPUjIH16W2Kl3Uyc6cwU3DrqbIjIVP7HlacdsCVVWN1XWLw
 YgbImO5uWh3ZFshuZvS6R/f3wVt87ST5bsQpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fC/EAmoj6YexJw+zPVjashZb7GDaw/COXBU45GjF9Ac=;
 b=KVEDJx5Yv0PFq+23I8ZkIkXMGlLnJ1pJ+R9Q5rw/XJSlO4t5SEbVz+TAS4tFMA5yf6
 L8K+l3xIKNI0Pkqxqt0+Mefe1ww36Zbv/GRnZ88xIMAq0BouYoRtOJFfHOgL8HQKMJx/
 wuHAXchOuriFG/oDYCXWG8nUfsKvmepKTKSGGF8G7bf6vn26td5R1ItLoTm8sKmtAfhz
 +esOyF7uYzX8jy6EvqHJsHE9g/q8RbNvIHlm2uO/h1RcmRHFeOn6FmMNw+zhbtMv7Iey
 UTxkQocCDI/hwm+pjYojlx7BOtsozMh2cq+A+01G1QUvKCmQymqFouAwIyUdwpsCPj6l
 TLhw==
X-Gm-Message-State: AOAM533PB7KwaDCJTMyeN1f0JGj/gT3OLPsqAfCN3DpzhDzkBWM5qaWI
 ot+A7vEyjan/lhjdfJFQzlAaBw==
X-Google-Smtp-Source: ABdhPJz9+W0Fd6alFYJWyAtXBHgsmGsOmeCTZqJWknvhpiCuNjZkNlKXpji5qpwaK4jjI6WcoH07RA==
X-Received: by 2002:a17:906:e24d:: with SMTP id
 gq13mr4168565ejb.466.1628160432643; 
 Thu, 05 Aug 2021 03:47:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:12 -0700 (PDT)
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
Date: Thu,  5 Aug 2021 12:46:47 +0200
Message-Id: <20210805104705.862416-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 02/20] drm/msm: Fix drm/sched point of no
 return rules
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
drivers must submit a job. I've split that up, which allows us to fix
this issue pretty easily.

Only thing we have to take care of is to not skip to error paths after
that. Other drivers do this the same for out-fence and similar things.

Fixes: 1d8a5ca436ee ("drm/msm: Conversion to drm scheduler")
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
 drivers/gpu/drm/msm/msm_gem_submit.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
index 6d6c44f0e1f3..d0ed4ddc509e 100644
--- a/drivers/gpu/drm/msm/msm_gem_submit.c
+++ b/drivers/gpu/drm/msm/msm_gem_submit.c
@@ -52,9 +52,6 @@ static struct msm_gem_submit *submit_create(struct drm_device *dev,
 		return ERR_PTR(ret);
 	}
 
-	/* FIXME: this is way too early */
-	drm_sched_job_arm(&job->base);
-
 	xa_init_flags(&submit->deps, XA_FLAGS_ALLOC);
 
 	kref_init(&submit->ref);
@@ -883,6 +880,9 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
 
 	submit->user_fence = dma_fence_get(&submit->base.s_fence->finished);
 
+	/* point of no return, we _have_ to submit no matter what */
+	drm_sched_job_arm(&submit->base);
+
 	/*
 	 * Allocate an id which can be used by WAIT_FENCE ioctl to map back
 	 * to the underlying fence.
@@ -892,17 +892,16 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
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

