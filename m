Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9181415D39
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775F26ED42;
	Thu, 23 Sep 2021 11:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 322E66ECF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:17 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id t18so14651031wrb.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=12q+kmLcqrOLQ+PRaX5+iil+oP7YjLgyfMuSdQvd75Y=;
 b=HW6VwC943W2AU17gOqldF5xl6ofOKV8AGSeLyP9BNaxAXZjM+7rk6Z9sNPJZInXKHp
 Tv1NiANRq+r08zHwPo+BM7iGi0uT5LRn4ZvqE26VQgL4hMl7fqv653r4vHf4S/7DRYCV
 E72+2eiCje8VsALZXSpPsjy4866xmH61ro5ya6YF2CrPFQ+PMJy2iN7ILbJ9GLd/gVX1
 kmwzrirPGypWTXcZ/oWnbMllUxK/N9Tn0nm+Rsg35TrOJPUVnH8j4Fbrs3EoTmRqR32Y
 mouXUKoHk/RKAE7JSVsMxzLeWayqN3bC04s2Ua8ZpMtuzKtWKkMAvojqdqcniMo3/mir
 nPWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=12q+kmLcqrOLQ+PRaX5+iil+oP7YjLgyfMuSdQvd75Y=;
 b=GVAo6L7M22UoezjFVbl4JOizGR1mUqcnKe8aBu7d6SP6fbRM0/zlIBsATwNbXqa+6w
 w9gAUHcDOXb72bOsV8CJ9BFqv+Ma00CquU1JhwjnUwJNDBz9YLqXASiYy2UMofG2pBh+
 bnZhFcdTVLF4w/bgGwuhA7EvBh33TewQzvMWa/fH8CTWQPw7P9BwxpHmSpkzD88YWxq0
 Qbw+mIsLYnGuizAXVbwHbrRB5D72iiQqduXUpdqStyNmQWOPovLkvXuq1ah+tPtPgZfs
 VTS5XB/blWXTBJO/vkUDzQvjdyBjCCBj+WsmE/+KoWUC0lGF4R6DoutUhRQz92PNJTcS
 fDlQ==
X-Gm-Message-State: AOAM531SxL0rZb7JexJF2FRMAdv2HiKZpzCzDD+YPx8MZFE7Ql4+Hc2Z
 0GmXL1ZPW+aM8XotQ3I6LkvYQ063c1o=
X-Google-Smtp-Source: ABdhPJxxl4C0Dwty4B7o/jMMhwqiClAVufLuXA4QEi6Ga1wHJzLdloLVfoPnqtUGism2BdVqYhgz5A==
X-Received: by 2002:adf:ef02:: with SMTP id e2mr3282088wro.401.1632383775807; 
 Thu, 23 Sep 2021 00:56:15 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.15
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:15 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:55:50 +0200
Message-Id: <20210923075608.2873-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 07/25] drm/ttm: use the new iterator in
 ttm_bo_flush_all_fences
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

This is probably a fix since we didn't even grabed a reference to the
fences.

Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/ttm/ttm_bo.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 3b22c0013dbf..301b0b4b082e 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -269,23 +269,15 @@ static int ttm_bo_individualize_resv(struct ttm_buffer_object *bo)
 static void ttm_bo_flush_all_fences(struct ttm_buffer_object *bo)
 {
 	struct dma_resv *resv = &bo->base._resv;
-	struct dma_resv_list *fobj;
+	struct dma_resv_iter cursor;
 	struct dma_fence *fence;
-	int i;
-
-	rcu_read_lock();
-	fobj = dma_resv_shared_list(resv);
-	fence = dma_resv_excl_fence(resv);
-	if (fence && !fence->ops->signaled)
-		dma_fence_enable_sw_signaling(fence);
-
-	for (i = 0; fobj && i < fobj->shared_count; ++i) {
-		fence = rcu_dereference(fobj->shared[i]);
 
+	dma_resv_iter_begin(&cursor, resv, true);
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
 		if (!fence->ops->signaled)
 			dma_fence_enable_sw_signaling(fence);
 	}
-	rcu_read_unlock();
+	dma_resv_iter_end(&cursor);
 }
 
 /**
-- 
2.25.1

