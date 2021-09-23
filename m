Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0294F415D2D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F11C6ED1B;
	Thu, 23 Sep 2021 11:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E666E0F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:16 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id d6so14430528wrc.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=X8SZ7tNe8IP8r7Mir/lLzEK5PEM5eFrGSfF2xAfw+1U=;
 b=oK12GkunoO2OY5mmXamQmQ0ryHu4kqxXgruyPLqu8NdqabBqUT5uF4rvRMiQE4Xm5Q
 3wqGJmvJd0fUuHq8aQZbDaY4c/16hkYDj2JO+YZNmI4B23MzMsoI6fEFvRdIbkjK3Tqk
 bMvBtzfUDd9YWZ03iJoAMaQX26BMgeiXwR5k86sKuez4w0U0BNj7Rikfc9vYcxOL4G/5
 qo2ig5jbs1TuVQifxp0X0QZs9f2J96pHrvr21ajP8zl5MIs09VgpIDldCNtxR6LLDmTi
 K5Q3ffu56flQ3IYxhgeCT7gqnK8KfzFiwZvmeOjAkp1QhqvjCkDcDrdSEEs/f4ZgKyn6
 AeUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X8SZ7tNe8IP8r7Mir/lLzEK5PEM5eFrGSfF2xAfw+1U=;
 b=FwOUT5AzgnZ1Jcjx+2AzTJ89QFjDltFmL2XBuiZq3U8ycocmlL4E3QlUdz6cR/M8Wg
 tRO7N+Azqv7RA6ILaEKzo45kgV2q+s+pqIR1TjQWjVz4wc6ow3HoX/Ozwah3ybaehZmg
 CsjY4Xr+b5bumaARv6jg7TbvSkmxUrL+REPK36FYuGMxh6z9RPAj2VlX2sqBisQ7aBcB
 u6d+8GbfBMlmbcaQUbaQu+23WfwUAOMHafX6taP4rmTQuQJ6+tK0Rno42bskYLkZh6QP
 TtLo49PYkkzH1IJzNt4ugvhLJNi/E6F0KaCh+eRp6pdi0dp112R9bu62NI+Tv4V1QDge
 +I5w==
X-Gm-Message-State: AOAM531qIsuOAiIVp+vHvi8iCdZ9IOIa56+Opw927IzH7KSeA7xtSlRS
 CxAQ3c5OF7t7eFHoR14ovf79rmtPo+E=
X-Google-Smtp-Source: ABdhPJzvdLcA26+ELSw0l/hOtn8JBBhkS7WHSBk9z2Oi1dK4yWuFr9REXeCeKx94A69fUhClcevBPA==
X-Received: by 2002:adf:b348:: with SMTP id k8mr3422789wrd.123.1632383774987; 
 Thu, 23 Sep 2021 00:56:14 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.13
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:14 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:55:49 +0200
Message-Id: <20210923075608.2873-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 06/25] dma-buf: use new iterator in
 dma_resv_test_signaled
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

This makes the function much simpler since the complex
retry logic is now handled elsewhere.

Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/dma-buf/dma-resv.c | 57 +++++---------------------------------
 1 file changed, 7 insertions(+), 50 deletions(-)

diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index 2b86444034d4..266ec9e3caef 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -625,22 +625,6 @@ long dma_resv_wait_timeout(struct dma_resv *obj, bool wait_all, bool intr,
 EXPORT_SYMBOL_GPL(dma_resv_wait_timeout);
 
 
-static inline int dma_resv_test_signaled_single(struct dma_fence *passed_fence)
-{
-	struct dma_fence *fence, *lfence = passed_fence;
-	int ret = 1;
-
-	if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &lfence->flags)) {
-		fence = dma_fence_get_rcu(lfence);
-		if (!fence)
-			return -1;
-
-		ret = !!dma_fence_is_signaled(fence);
-		dma_fence_put(fence);
-	}
-	return ret;
-}
-
 /**
  * dma_resv_test_signaled - Test if a reservation object's fences have been
  * signaled.
@@ -657,43 +641,16 @@ static inline int dma_resv_test_signaled_single(struct dma_fence *passed_fence)
  */
 bool dma_resv_test_signaled(struct dma_resv *obj, bool test_all)
 {
+	struct dma_resv_iter cursor;
 	struct dma_fence *fence;
-	unsigned int seq;
-	int ret;
-
-	rcu_read_lock();
-retry:
-	ret = true;
-	seq = read_seqcount_begin(&obj->seq);
-
-	if (test_all) {
-		struct dma_resv_list *fobj = dma_resv_shared_list(obj);
-		unsigned int i, shared_count;
-
-		shared_count = fobj ? fobj->shared_count : 0;
-		for (i = 0; i < shared_count; ++i) {
-			fence = rcu_dereference(fobj->shared[i]);
-			ret = dma_resv_test_signaled_single(fence);
-			if (ret < 0)
-				goto retry;
-			else if (!ret)
-				break;
-		}
-	}
-
-	fence = dma_resv_excl_fence(obj);
-	if (ret && fence) {
-		ret = dma_resv_test_signaled_single(fence);
-		if (ret < 0)
-			goto retry;
 
+	dma_resv_iter_begin(&cursor, obj, test_all);
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		dma_resv_iter_end(&cursor);
+		return false;
 	}
-
-	if (read_seqcount_retry(&obj->seq, seq))
-		goto retry;
-
-	rcu_read_unlock();
-	return ret;
+	dma_resv_iter_end(&cursor);
+	return true;
 }
 EXPORT_SYMBOL_GPL(dma_resv_test_signaled);
 
-- 
2.25.1

