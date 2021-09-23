Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85533415D2A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC80E6ED1E;
	Thu, 23 Sep 2021 11:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F4C46ECF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:26 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id w29so14484537wra.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=GEdsxBT2Mmt21mskNGv6r+x583M/bomSYgUaJkmfxIlaTI1zt46dDvhmxAPmqhArRU
 YXckLJ0P1gV8c5+BhMOJy+0/UfQQsFULpQfxHOExs9ILCgiF1ZwSBIG4vJd29kB7l1Jp
 FzyaviCKZL2HfizVF+xtaqtF5S6snHdfSGUArP17Xs7iE/JXlNWztWGRjFw918N+1luI
 AS+w9pqI7LwQeeOPFabLUaDO+1c8eKGUIhP0OoHQFWuHUg2F1UmiO2tJaxai//2B/EtW
 9JrHq6GLO+xT0YILNCw6KirLAlMl3ICinCZnK8l7bmvmRGiqrk4tt1lh3PmmTuXxU5jE
 0t9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=Mcwvan3y/Pmi2qNUVHdZi53XwBnlqWtaii+/StIzslBIcf3QmkS9rq9cCSkyn6ez6N
 xRvKd6UyO2YWSw4cLZX/bjSbaFCqN4EV1hqapEN4R2f5G0FCF2aETm1oUxamdVdRLf5P
 PI50NDNoPUHX0AA3QN6rrmSyHV+xNaU/HPGVZC/BLewt8DhqsqRHCjoPYLC4fS/vg4wm
 K2wX/KZ/UdjY89J8r4AqN+2Hzvjh3TJoEEMVrV/UACvkGYaxcbdAYX1x/vsQrfTNckS+
 VJLmoev0LjNhAjbzVFTyLFlYf7mY3uB7WGG+vdjsQmNiCcf6yF7yJaIgBr8uvTaAAmYl
 yZBQ==
X-Gm-Message-State: AOAM532WOdYB67M2v+JjEytbxvyKJggKGrKTnKDZrzz7rSJrSHUAODrU
 KNe1zRAvOWVP1JKWgvhiMacDyCzluyg=
X-Google-Smtp-Source: ABdhPJw+8+g1VPI3LtJr8L/0oofQIajVEq4vbsQHO5KHCeH9C+wkb8oLBw1rdWuqwLIDpXXMm5OP0A==
X-Received: by 2002:a1c:ac03:: with SMTP id v3mr14652141wme.13.1632383784714; 
 Thu, 23 Sep 2021 00:56:24 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.23
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:24 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:56:01 +0200
Message-Id: <20210923075608.2873-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 18/25] drm/i915: use new iterator in
 i915_gem_object_wait_priority
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

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_wait.c | 31 +++++-------------------
 1 file changed, 6 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index a13193db1dba..569658c7859c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -118,32 +118,13 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 			      unsigned int flags,
 			      const struct i915_sched_attr *attr)
 {
-	struct dma_fence *excl;
-
-	if (flags & I915_WAIT_ALL) {
-		struct dma_fence **shared;
-		unsigned int count, i;
-		int ret;
-
-		ret = dma_resv_get_fences(obj->base.resv, &excl, &count,
-					  &shared);
-		if (ret)
-			return ret;
-
-		for (i = 0; i < count; i++) {
-			i915_gem_fence_wait_priority(shared[i], attr);
-			dma_fence_put(shared[i]);
-		}
-
-		kfree(shared);
-	} else {
-		excl = dma_resv_get_excl_unlocked(obj->base.resv);
-	}
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
 
-	if (excl) {
-		i915_gem_fence_wait_priority(excl, attr);
-		dma_fence_put(excl);
-	}
+	dma_resv_iter_begin(&cursor, obj->base.resv, flags & I915_WAIT_ALL);
+	dma_resv_for_each_fence_unlocked(&cursor, fence)
+		i915_gem_fence_wait_priority(fence, attr);
+	dma_resv_iter_end(&cursor);
 	return 0;
 }
 
-- 
2.25.1

