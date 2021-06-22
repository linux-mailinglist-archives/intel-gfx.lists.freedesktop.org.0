Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBAB3B0ACF
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 18:55:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C86CF6E7D5;
	Tue, 22 Jun 2021 16:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E51576E7D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 16:55:22 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 p8-20020a7bcc880000b02901dbb595a9f1so2713907wma.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 09:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OXrHD46fP9K29x4w61hf4id+nsmWIFVqtCbldJLJdpU=;
 b=FJVvddinjdql031++AM/hwkThjKVlpFdW4VuJVSGZYiF1nPj0yjLN3bxyVOb7GpuKA
 pyaJEsQLlnX8IKTKZa8RbnBDW8M9oxH83krLSASRYLX/e2teihLRtkWYN4AdERd78hI3
 Ht6LAEmguqCFuWZFcBQklyS3iQCgWk/F3Iw0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OXrHD46fP9K29x4w61hf4id+nsmWIFVqtCbldJLJdpU=;
 b=NRKAApb0odpykWsBSUgVZH4r67o5GWn0cxe79iqWCPHA+IHPTyz6FBeEWmMI66V+pR
 92uVUtkNB/aSMrS7vhO35KkeXe4o0tTzcRC8rXez6CU7/9TBUK7I+NwebzAd6R3CiJAc
 bDJTgC1pJ2s2+nfJ1RbXg++MJKlxj0mQHJgt2Ncy1UROnPGbelTpQeLgjZhS9WH/+yYg
 ZwtaFImv1dtz+KwNuTs5W2IZ2zx4B9LPeZQLdFoF6bHDlNjlsNNwqCqSo5xb4hqRnT0g
 nq1d7WS3k4N03DWbPF2Z5NXJIi7tik8Q9l2IqJ9Sfeqo2f/qaW7AeAb02D83DVCXKrO/
 o32A==
X-Gm-Message-State: AOAM530JdR8DpI5lHkOBMh5s21gbolWzH0F/xb49u4tbmpHn6osCxOyI
 Of7c6lwWcslkWooWz8YyxHY3Fg==
X-Google-Smtp-Source: ABdhPJzKFM1NWgZNzb/wcBVDpma/Yg9VhoClAJ8pyhPdsO3YtV9OUScGDWMvrawPYJLx/A+POoTgpQ==
X-Received: by 2002:a7b:cb92:: with SMTP id m18mr5838495wmi.146.1624380921583; 
 Tue, 22 Jun 2021 09:55:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l23sm3632342wmc.5.2021.06.22.09.55.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:55:21 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Jun 2021 18:55:00 +0200
Message-Id: <20210622165511.3169559-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/15] drm/panfrost: Shrink sched_lock
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
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm/scheduler requires a lock between _init and _push_job, but the
reservation lock dance doesn't. So shrink the critical section a
notch.

v2: Lucas pointed out how this should really work, I got it all wrong
in v1.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc: Steven Price <steven.price@arm.com>
Cc: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
---
 drivers/gpu/drm/panfrost/panfrost_job.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_job.c b/drivers/gpu/drm/panfrost/panfrost_job.c
index 2df3e999a38d..38f8580c19f1 100644
--- a/drivers/gpu/drm/panfrost/panfrost_job.c
+++ b/drivers/gpu/drm/panfrost/panfrost_job.c
@@ -224,14 +224,13 @@ int panfrost_job_push(struct panfrost_job *job)
 	struct ww_acquire_ctx acquire_ctx;
 	int ret = 0;
 
-	mutex_lock(&pfdev->sched_lock);
 
 	ret = drm_gem_lock_reservations(job->bos, job->bo_count,
 					    &acquire_ctx);
-	if (ret) {
-		mutex_unlock(&pfdev->sched_lock);
+	if (ret)
 		return ret;
-	}
+
+	mutex_lock(&pfdev->sched_lock);
 
 	ret = drm_sched_job_init(&job->base, entity, NULL);
 	if (ret) {
-- 
2.32.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
