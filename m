Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3B738F4A2
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 23:00:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C3C76E958;
	Mon, 24 May 2021 21:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D68CC6E95E
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 21:00:12 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 g6-20020a17090adac6b029015d1a9a6f1aso592219pjx.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 14:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4mhS0+lhmvXvAuvJDr/EmJj0xnyZWw14JKV5Ea3MaMg=;
 b=E9GuiUJAeIIYxL4v2uA3309CcVwiSbWlRgKekFTocBRpxqLT7YPglWZrbjXiljhK4y
 oKUCAWMvawmMLzdLzNwHfXAacir2oCJzJzc5Fu6j5jpEV433D+/wopJP1vXAJY+r28G9
 fZ5kmENC9JJPTDJzZLNHGsUepMwKnt+xdYbude9xjVrM868zLhJ5sE8ljOWoj89eZXv7
 KOzJo2I1+OwRF/wpduDDD18+MLDdm2e1HskEK47jWQIMlX0OcG6bpqeA06wa8de4ZY3t
 n0rte/P/z83XxSQry2xb+FDsICrLYoR2mZv24qZh4IuEiu1wGLvvFxE0UP3EYxklLEWq
 8SSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4mhS0+lhmvXvAuvJDr/EmJj0xnyZWw14JKV5Ea3MaMg=;
 b=mSote7zhDu6Z4ZsUfaaGu6mtfIuFnZkHkiSqGas7TCGF/4LtGGGZpZ0L+U7EwC/FbZ
 3hehYftgI1Mnblr8g4O/LUdkvQLG+FIgijV9DooWOPMHAzBWlNOYHYromtu+Bxv/czeh
 UByzBIlNp4nR2G4/Mh2RC6rAfbFHppcYdfypGQPAt56hiEuLlAQB2U0edeqbJZV6AUUg
 sR1cHGgktrEHbWQNemIAf2AwZvsOHfs5fQ1etHz/ud3XS8DaUsfjZJgNZ34+jG5ipZVh
 R2dhALNit2NxvR65ZITCyd8yQHnc0xJYRtJUsiCbQNjnnv7aIFMC9+Qj1PiCo02IRxe9
 Fx1w==
X-Gm-Message-State: AOAM5311M79RuS0zHRqR66UUODeVmf191y52g8rSYzjJ+Y6DDCRDDf+a
 WL9h0R4avVzOllfG4/taoVwW2w==
X-Google-Smtp-Source: ABdhPJxZMntsMnL82uE0D2C9i8D8TR5SBPt5GG9hirK87vhbx2VY0kAbHpRYzc6rmXem/A/s2jmkTQ==
X-Received: by 2002:a17:902:b687:b029:eb:6491:b3f7 with SMTP id
 c7-20020a170902b687b02900eb6491b3f7mr27266865pls.38.1621890012342; 
 Mon, 24 May 2021 14:00:12 -0700 (PDT)
Received: from omlet.com ([134.134.139.76])
 by smtp.gmail.com with ESMTPSA id c195sm12354958pfb.144.2021.05.24.14.00.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 14:00:11 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 15:59:53 -0500
Message-Id: <20210524205954.872814-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210524205954.872814-1-jason@jlekstrand.net>
References: <20210524205954.872814-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] RFC: dma-buf: Add an extra fence to
 dma_resv_get_singleton_unlocked
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For dma-buf sync_file import, we want to get all the fences on a
dma_resv plus one more.  We could wrap the fence we get back in an array
fence or we could make dma_resv_get_singleton_unlocked take "one more"
to make this case easier.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/dma-buf/dma-buf.c  |  2 +-
 drivers/dma-buf/dma-resv.c | 23 +++++++++++++++++++++--
 include/linux/dma-resv.h   |  3 ++-
 3 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 86efe71c0db96..f23d939e0e833 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -386,7 +386,7 @@ static long dma_buf_export_sync_file(struct dma_buf *dmabuf,
 		return fd;
 
 	if (arg.flags & DMA_BUF_SYNC_WRITE) {
-		fence = dma_resv_get_singleton_unlocked(dmabuf->resv);
+		fence = dma_resv_get_singleton_unlocked(dmabuf->resv, NULL);
 		if (IS_ERR(fence)) {
 			ret = PTR_ERR(fence);
 			goto err_put_fd;
diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index 312a3a59dac6a..3c0ef8d0f599b 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -527,6 +527,7 @@ EXPORT_SYMBOL_GPL(dma_resv_get_fences_unlocked);
 /**
  * dma_resv_get_singleton_unlocked - get a single fence for the dma_resv object
  * @obj: the reservation object
+ * @extra: extra fence to add to the resulting array
  * @result: resulting dma_fence
  *
  * Get a single fence representing all unsignaled fences in the dma_resv object
@@ -536,7 +537,8 @@ EXPORT_SYMBOL_GPL(dma_resv_get_fences_unlocked);
  * RETURNS
  * Returns -NOMEM if allocations fail, zero otherwise.
  */
-struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj)
+struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj,
+						  struct dma_fence *extra)
 {
 	struct dma_fence *result, **resv_fences, *fence, *chain, **fences;
 	struct dma_fence_array *array;
@@ -547,7 +549,7 @@ struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj)
 	if (err)
 		return ERR_PTR(err);
 
-	if (num_resv_fences == 0)
+	if (num_resv_fences == 0 && !extra)
 		return NULL;
 
 	num_fences = 0;
@@ -563,6 +565,16 @@ struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj)
 		}
 	}
 
+	if (extra) {
+		dma_fence_deep_dive_for_each(fence, chain, j, extra) {
+			if (dma_fence_is_signaled(fence))
+				continue;
+
+			result = fence;
+			++num_fences;
+		}
+	}
+
 	if (num_fences <= 1) {
 		result = dma_fence_get(result);
 		goto put_resv_fences;
@@ -583,6 +595,13 @@ struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj)
 		}
 	}
 
+	if (extra) {
+		dma_fence_deep_dive_for_each(fence, chain, j, extra) {
+			if (dma_fence_is_signaled(fence))
+				fences[num_fences++] = dma_fence_get(fence);
+		}
+	}
+
 	if (num_fences <= 1) {
 		result = num_fences ? fences[0] : NULL;
 		kfree(fences);
diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
index c529ccee94bc5..156d989e95ab4 100644
--- a/include/linux/dma-resv.h
+++ b/include/linux/dma-resv.h
@@ -285,7 +285,8 @@ int dma_resv_get_fences_unlocked(struct dma_resv *obj,
 
 int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src);
 
-struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj);
+struct dma_fence *dma_resv_get_singleton_unlocked(struct dma_resv *obj,
+						  struct dma_fence *extra);
 
 long dma_resv_wait_timeout_unlocked(struct dma_resv *obj, bool wait_all, bool intr,
 				    unsigned long timeout);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
