Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 293B5399037
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 18:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A6B86ED01;
	Wed,  2 Jun 2021 16:42:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C37196ED0B
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 16:41:58 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id 29so2690997pgu.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Jun 2021 09:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rG1KReWERmxp3mtExT1XhGw36agQyDtJQYkymifFiYM=;
 b=J07xTKnmn4Nv9oaCzdU9dWYxrR04cJgSVo8mgY1kjkBRBVNEF+ye8hH4rsxVChgU7p
 jylLMFbIAVfO3B/jbhRmk1mIbKOawZtxUv1RnSGOBJhVRS8a6F9OhABpjLVim/6kFnGg
 G1FAeXNvxbhjf+dvg7hFhyg+OfoB9O7sGBo++oYtHAdUOElWd4wbO8SPV6eCnmbyiJ9r
 SY1v8QJxBX3C9mAI6bMyixoK0s7tkAsyYfkbvFaIWMMIHYHRUWJbtDm0YYLlN2qVwmVU
 ITdddnfNsyOpMfoXMC/Ufs8vR4g/oPNX4mMB6ynqb9qjighAZKA7yuYQIT6xoLAY062b
 7zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rG1KReWERmxp3mtExT1XhGw36agQyDtJQYkymifFiYM=;
 b=g3UDn2RBheeoMTEADkZMfGC6DM0rzM6pGLCDFc2b+v45A3SF5LZjedYCIeeSA4MEuA
 /QiW2v0c2CmuI81uUScvi9mjmqBSil/3bjLRyyvc4Cpp2zX8uoZOtY1ZC60rZeLr9MUy
 J4j88fEu3+qGBIx6XBhJm7QJmBUQumPZy54UyMu9NIO/rIVNYPW1lqJUHMBbbMHzNdMU
 weqp2nl2UK4Zog0hPMTHC0WCdVi6HchRiwBqePhTDeXymfCK/zT59NOKT8xWSfuyzSx5
 o2wVfHrQTVco2PRCLtOqEoC+rgSSoEskBvpBNdwUJLEQhNIpKh4hDeSyVYt/2UwGdf9G
 1dRw==
X-Gm-Message-State: AOAM5326D78iHyioLnjz5B+ut5X6v6h2l0s5IbClEGvkNNC2BFTYHRQU
 s7ouozF/ODE6jBDmhqQYl7fWmw==
X-Google-Smtp-Source: ABdhPJwfI9z9GcWmefQV+1eVL6gbzkxJn39ZZbUAOIYU52Su3y/ZAPlNqY571FOMn+UJhYjiYiF+AA==
X-Received: by 2002:aa7:8ec8:0:b029:2ea:32b:9202 with SMTP id
 b8-20020aa78ec80000b02902ea032b9202mr8692002pfr.36.1622652118050; 
 Wed, 02 Jun 2021 09:41:58 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id h6sm75803pjs.15.2021.06.02.09.41.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 09:41:57 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  2 Jun 2021 11:41:47 -0500
Message-Id: <20210602164149.391653-4-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210602164149.391653-1-jason@jlekstrand.net>
References: <20210602164149.391653-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Drop error handling from
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
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
index a6cd0fa628477..03cdaa0f459ba 100644
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
