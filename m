Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A8140F8C2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 15:03:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C08B6EC7C;
	Fri, 17 Sep 2021 13:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44766EC42;
 Fri, 17 Sep 2021 12:35:27 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 l18-20020a05600c4f1200b002f8cf606262so9840082wmq.1; 
 Fri, 17 Sep 2021 05:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a24rUD+lvDbozllBrOmPRNBHQxSSbhyfXU0oYcihzyg=;
 b=nIdwXfLabzXcW1XiceUdnmzctWEURDQizwpJU2OUqH6G1ZuU2YX9NskikFXUwzC392
 C5rT93WnEzI1d4Ke7nxW2BlJsrJbVJK2iydZlt5YaIzbEqGtKMBUGj2I3IPDHW18JhRw
 uYr3RCuz1bJLcMzHogMCrhy7GS4HCNI79lUSSd7Q2iKhSNYeQZ896b2jE6LSGgUP50LX
 IJfUfcPPVKBVQekWxSWFIVSQkiGPlHcbN/HB9LuOH9NvXIYHPkxN/KocH83NGwHhXRzR
 RJZoBw7DJdr7lDQlEeZA3IZMHAnq9h4cj5h2pcyZzDIgyQdWDJXJTMlLjCtgn4KohfgW
 enZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a24rUD+lvDbozllBrOmPRNBHQxSSbhyfXU0oYcihzyg=;
 b=ovaMoYsWXmlxH0dex9XlymEBOWWUOnou3GRfpIt+IoAkA6NPdBP85B1KMCBOtcrf/3
 LDBfmr1R0t5cilCr48PcWAhZxoWOjGVBNvHGfg7j8jJWg+fq0PlD5jokVax3YsN2Jvqd
 axDh8qLVi6d9jbxBB1JONXtP+IPbUmdq/J7uTzX6c32aTtdXxibJv9AfXYa7d1zPABU6
 VUmhsYrcSc5h86mxsATbGOtjHP+ImuHxLexE2kGjsllE0hHk6SP0NUNnu23cf/8m6xHv
 b1KC1Lcl35NJffylFOabzqlYFgFwEDpPWz9zfE3K2GUsZl8Rl5u8AvYRSE3Ds86mqaeJ
 HWCg==
X-Gm-Message-State: AOAM530RGV3TqYKZu/DS56L7uqLqYTMiMy7nhQpDsdDPTc6gDj5u2FE0
 cJAAxWQY0kvXyDPlUhZDLP4=
X-Google-Smtp-Source: ABdhPJxh2B8tbcdyMHyLlJwdm9twJffSI2woQBoj+J90WpQgS6tgdN39QXiHuGZvFewkLx3TxfV2Kw==
X-Received: by 2002:a7b:c4c2:: with SMTP id g2mr10105760wmk.134.1631882126494; 
 Fri, 17 Sep 2021 05:35:26 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:26 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Cc: daniel@ffwll.ch
Date: Fri, 17 Sep 2021 14:34:59 +0200
Message-Id: <20210917123513.1106-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 17 Sep 2021 13:02:50 +0000
Subject: [Intel-gfx] [PATCH 12/26] drm/scheduler: use new iterator in
 drm_sched_job_add_implicit_dependencies v2
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

Simplifying the code a bit.

v2: use dma_resv_for_each_fence

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/scheduler/sched_main.c | 26 ++++++--------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index 042c16b5d54a..5bc5f775abe1 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -699,30 +699,16 @@ int drm_sched_job_add_implicit_dependencies(struct drm_sched_job *job,
 					    struct drm_gem_object *obj,
 					    bool write)
 {
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
 	int ret;
-	struct dma_fence **fences;
-	unsigned int i, fence_count;
-
-	if (!write) {
-		struct dma_fence *fence = dma_resv_get_excl_unlocked(obj->resv);
-
-		return drm_sched_job_add_dependency(job, fence);
-	}
-
-	ret = dma_resv_get_fences(obj->resv, NULL, &fence_count, &fences);
-	if (ret || !fence_count)
-		return ret;
 
-	for (i = 0; i < fence_count; i++) {
-		ret = drm_sched_job_add_dependency(job, fences[i]);
+	dma_resv_for_each_fence(&cursor, obj->resv, write, fence) {
+		ret = drm_sched_job_add_dependency(job, fence);
 		if (ret)
-			break;
+			return ret;
 	}
-
-	for (; i < fence_count; i++)
-		dma_fence_put(fences[i]);
-	kfree(fences);
-	return ret;
+	return 0;
 }
 EXPORT_SYMBOL(drm_sched_job_add_implicit_dependencies);
 
-- 
2.25.1

