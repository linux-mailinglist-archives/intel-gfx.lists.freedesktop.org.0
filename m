Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FE5415D31
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D006ED1A;
	Thu, 23 Sep 2021 11:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B246ECF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:14 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id w29so14483116wra.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=6B5OIuGtvz8jdHWI8J86g4Kqk/a3jGDdYaqhZl1SdTU=;
 b=Be/Ps0XFuPwRhTnEjiq77ZMbltsG7CGWfqwGYiDg22svDt9PljDIvKlyg7/J18hkoZ
 PK2jyYqM63QjgFCzF7PwFpGSA1zFV5xxwAuKwNFLGO/kS7fK1aVkhCA1ywHZvNvmEQs1
 210kYr3nqB3VgVwme2iwUHxHkBQUNpOia0i6io6S1IdqLE8JBcHNfBVkOnv0ZtmnoUN3
 M4x0fpzHsbftcZckUOUBZaFueWh2tO9wLgUzZDMRHvFLmoe2Uc6Y56VihI4647Gj+8YM
 OTnw4jWcUgMTkqh3Ecw6k8iXQ13JZmUDZp3Wpa7INlMB4vyT3XY6cVU/PsfGR9qPp7za
 8ZBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6B5OIuGtvz8jdHWI8J86g4Kqk/a3jGDdYaqhZl1SdTU=;
 b=je29Xj864yjDkQLD1UTOhi44VkHDyNKrVK2jyacqRg/MjcmE+5LGioBkfvT5C2qDsq
 NkogCsCgkcNwHvXZsNR9QEC+x8ozadpewKkfVIJXiqiLTi4Ds2scFHzYuFFa3f+O+d05
 XLVuT9QAiOc9ylbk+Z5tin2Q2wTzm5p+rTcyyqhNG0iHpToICygj3ELB3fCm/fytIBem
 0O91hBjb/XnCdAFw3e2qoQ+omgEhMhCdCcvuo54N8NtZMWNKfY9F2Vba11Mh+aSRAGp5
 zJbnx+mA7jYzQprv2yyp9OwgSxmQvJnsvBf4JMgtB+JglctgMP+E14NYKMJ3vSFokKG3
 legw==
X-Gm-Message-State: AOAM530ETTriDgqKvrtziWyv9XTv2an3qPZ+6lkdRLxUq+4KvEAYjVxD
 dnJsE5U9aCywb0gpkVI2Lm+W5Q13Zsw=
X-Google-Smtp-Source: ABdhPJxcmb42en46FCXNHXi3YHyPEhwg/3RzjgE+Dhqj0gjga9xHpab44oX8bEV35PUpAaDHFv4muQ==
X-Received: by 2002:a5d:4488:: with SMTP id j8mr3518163wrq.260.1632383773025; 
 Thu, 23 Sep 2021 00:56:13 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.12
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:12 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:55:47 +0200
Message-Id: <20210923075608.2873-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 04/25] dma-buf: use new iterator in
 dma_resv_get_fences v3
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

v2: use sizeof(void*) instead
v3: fix rebase bug

Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/dma-buf/dma-resv.c | 108 ++++++++++++-------------------------
 1 file changed, 35 insertions(+), 73 deletions(-)

diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index fdaae9bb5d3e..b7e7ec270fe6 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -530,99 +530,61 @@ EXPORT_SYMBOL(dma_resv_copy_fences);
  * dma_resv_get_fences - Get an object's shared and exclusive
  * fences without update side lock held
  * @obj: the reservation object
- * @pfence_excl: the returned exclusive fence (or NULL)
- * @pshared_count: the number of shared fences returned
- * @pshared: the array of shared fence ptrs returned (array is krealloc'd to
+ * @fence_excl: the returned exclusive fence (or NULL)
+ * @shared_count: the number of shared fences returned
+ * @shared: the array of shared fence ptrs returned (array is krealloc'd to
  * the required size, and must be freed by caller)
  *
  * Retrieve all fences from the reservation object. If the pointer for the
  * exclusive fence is not specified the fence is put into the array of the
  * shared fences as well. Returns either zero or -ENOMEM.
  */
-int dma_resv_get_fences(struct dma_resv *obj, struct dma_fence **pfence_excl,
-			unsigned int *pshared_count,
-			struct dma_fence ***pshared)
+int dma_resv_get_fences(struct dma_resv *obj, struct dma_fence **fence_excl,
+			unsigned int *shared_count, struct dma_fence ***shared)
 {
-	struct dma_fence **shared = NULL;
-	struct dma_fence *fence_excl;
-	unsigned int shared_count;
-	int ret = 1;
-
-	do {
-		struct dma_resv_list *fobj;
-		unsigned int i, seq;
-		size_t sz = 0;
-
-		shared_count = i = 0;
-
-		rcu_read_lock();
-		seq = read_seqcount_begin(&obj->seq);
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
 
-		fence_excl = dma_resv_excl_fence(obj);
-		if (fence_excl && !dma_fence_get_rcu(fence_excl))
-			goto unlock;
+	*shared_count = 0;
+	*shared = NULL;
 
-		fobj = dma_resv_shared_list(obj);
-		if (fobj)
-			sz += sizeof(*shared) * fobj->shared_max;
+	if (fence_excl)
+		*fence_excl = NULL;
 
-		if (!pfence_excl && fence_excl)
-			sz += sizeof(*shared);
+	dma_resv_iter_begin(&cursor, obj, true);
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
 
-		if (sz) {
-			struct dma_fence **nshared;
+		if (dma_resv_iter_is_restarted(&cursor)) {
+			unsigned int count;
 
-			nshared = krealloc(shared, sz,
-					   GFP_NOWAIT | __GFP_NOWARN);
-			if (!nshared) {
-				rcu_read_unlock();
+			while (*shared_count)
+				dma_fence_put((*shared)[--(*shared_count)]);
 
-				dma_fence_put(fence_excl);
-				fence_excl = NULL;
+			if (fence_excl)
+				dma_fence_put(*fence_excl);
 
-				nshared = krealloc(shared, sz, GFP_KERNEL);
-				if (nshared) {
-					shared = nshared;
-					continue;
-				}
+			count = cursor.fences ? cursor.fences->shared_count : 0;
+			count += fence_excl ? 0 : 1;
 
-				ret = -ENOMEM;
-				break;
+			/* Eventually re-allocate the array */
+			*shared = krealloc_array(*shared, count,
+						 sizeof(void *),
+						 GFP_KERNEL);
+			if (count && !*shared) {
+				dma_resv_iter_end(&cursor);
+				return -ENOMEM;
 			}
-			shared = nshared;
-			shared_count = fobj ? fobj->shared_count : 0;
-			for (i = 0; i < shared_count; ++i) {
-				shared[i] = rcu_dereference(fobj->shared[i]);
-				if (!dma_fence_get_rcu(shared[i]))
-					break;
-			}
-		}
-
-		if (i != shared_count || read_seqcount_retry(&obj->seq, seq)) {
-			while (i--)
-				dma_fence_put(shared[i]);
-			dma_fence_put(fence_excl);
-			goto unlock;
 		}
 
-		ret = 0;
-unlock:
-		rcu_read_unlock();
-	} while (ret);
-
-	if (pfence_excl)
-		*pfence_excl = fence_excl;
-	else if (fence_excl)
-		shared[shared_count++] = fence_excl;
-
-	if (!shared_count) {
-		kfree(shared);
-		shared = NULL;
+		dma_fence_get(fence);
+		if (dma_resv_iter_is_exclusive(&cursor) && fence_excl)
+			*fence_excl = fence;
+		else
+			(*shared)[(*shared_count)++] = fence;
 	}
+	dma_resv_iter_end(&cursor);
 
-	*pshared_count = shared_count;
-	*pshared = shared;
-	return ret;
+	return 0;
 }
 EXPORT_SYMBOL_GPL(dma_resv_get_fences);
 
-- 
2.25.1

