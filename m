Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EE63C8BC8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 21:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 667336E4E8;
	Wed, 14 Jul 2021 19:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FA66E4E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 19:34:35 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id k20so3556610pgg.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 12:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LZpq7f5pIJW2dDuLII86TMWxTbEjjl9Ioc6Cn93MUc8=;
 b=w8YZPuh7S9TVbLNxwc2NO+izQBE6O8DlmY5cOOm8k27HMoIa5GY/QLy2EbKEu3fA+M
 bXPi3tECWjahQNfvYBDAk8vdEpRyynez6sKCU7xiM4313cw4kGYYOeFiY0WR97Vh4xZi
 0yP+REhgB1A7uIP82b58AVnZNi/deuiOkwohLR3zcFWFcfrAwshDUduPtzaW9lbSXWSq
 ji0xrZGg+fCN9Xf/KcDD8uPsSj0UvAGQKJl3gCslpPFru69+RXd8pAYLP2Gbp3O2Ib1y
 cNN2gY+OjhgqOd1DcD01fAjw42jxAhLBgAbmQg0iAV8wWgmjYsMD5M1dL9dsAMqYwbWQ
 M9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LZpq7f5pIJW2dDuLII86TMWxTbEjjl9Ioc6Cn93MUc8=;
 b=uaK2LYJnLc1aIQBp21Mn/kyyYYy3FyFkkkSFRS9VQrjV4Ln1KwKkY3abVEJ7SWuv6u
 SbWfiypfth2kTz4kfy2BIzF3VgX4OVQmtbmkkJleGigxMgnzHKs3wTjKQCPvEJdQmm20
 8j/crAqf+TG3pYeN3Hw9hyxgajOc0a5q1fhD/gnY8AzLxN9U5qye+u8519+AmLFPOhx4
 K3cE4LvI6YbjadtGa/yO6mrkAgLZLZKAQunx95DzHe4VZEPsJxWJGYXea6zg6r6Lpo/s
 bjO0VnE/m2rM2qo2xKf8hCslvQe5QKLcSC+ZoVR+gqkS7Zcl6U74gFKNZELrqYwKb5/t
 1pYg==
X-Gm-Message-State: AOAM531YkTNEcHTIkYAwjLKDRtDagBjcic/Ct8mTKS46PSPg5Sq696wn
 tkdEgPriEvwOjlVWpPUCtCZfjq4Cn0HR0w==
X-Google-Smtp-Source: ABdhPJysyhnL3fYVRgercJqJ73t2gaymGr5FvicIcps9O0xIGvBq0LW1ljxM8eRy7rYCS0KqYQNypQ==
X-Received: by 2002:a63:f516:: with SMTP id w22mr11230436pgh.188.1626291274624; 
 Wed, 14 Jul 2021 12:34:34 -0700 (PDT)
Received: from omlet.com ([134.134.139.71])
 by smtp.gmail.com with ESMTPSA id i1sm3679740pfo.37.2021.07.14.12.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 12:34:33 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 14 Jul 2021 14:34:18 -0500
Message-Id: <20210714193419.1459723-5-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210714193419.1459723-1-jason@jlekstrand.net>
References: <20210714193419.1459723-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Drop error handling from
 dma_fence_work
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Asynchronous command parsing was the only thing which ever returned a
non-zero error.  With that gone, we can drop the error handling from
dma_fence_work.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c | 4 +---
 drivers/gpu/drm/i915/i915_sw_fence_work.c   | 5 +----
 drivers/gpu/drm/i915/i915_sw_fence_work.h   | 2 +-
 drivers/gpu/drm/i915/i915_vma.c             | 3 +--
 4 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index daf9284ef1f54..f0435c6feb68b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -24,13 +24,11 @@ static void __do_clflush(struct drm_i915_gem_object *obj)
 	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
 }
 
-static int clflush_work(struct dma_fence_work *base)
+static void clflush_work(struct dma_fence_work *base)
 {
 	struct clflush *clflush = container_of(base, typeof(*clflush), base);
 
 	__do_clflush(clflush->obj);
-
-	return 0;
 }
 
 static void clflush_release(struct dma_fence_work *base)
diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
index a3a81bb8f2c36..5b33ef23d54c9 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
@@ -16,11 +16,8 @@ static void fence_complete(struct dma_fence_work *f)
 static void fence_work(struct work_struct *work)
 {
 	struct dma_fence_work *f = container_of(work, typeof(*f), work);
-	int err;
 
-	err = f->ops->work(f);
-	if (err)
-		dma_fence_set_error(&f->dma, err);
+	f->ops->work(f);
 
 	fence_complete(f);
 	dma_fence_put(&f->dma);
diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.h b/drivers/gpu/drm/i915/i915_sw_fence_work.h
index 2c409f11c5c59..d56806918d131 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence_work.h
+++ b/drivers/gpu/drm/i915/i915_sw_fence_work.h
@@ -17,7 +17,7 @@ struct dma_fence_work;
 
 struct dma_fence_work_ops {
 	const char *name;
-	int (*work)(struct dma_fence_work *f);
+	void (*work)(struct dma_fence_work *f);
 	void (*release)(struct dma_fence_work *f);
 };
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 0f227f28b2802..5b9dce0f443b0 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -300,14 +300,13 @@ struct i915_vma_work {
 	unsigned int flags;
 };
 
-static int __vma_bind(struct dma_fence_work *work)
+static void __vma_bind(struct dma_fence_work *work)
 {
 	struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
 	struct i915_vma *vma = vw->vma;
 
 	vma->ops->bind_vma(vw->vm, &vw->stash,
 			   vma, vw->cache_level, vw->flags);
-	return 0;
 }
 
 static void __vma_release(struct dma_fence_work *work)
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
