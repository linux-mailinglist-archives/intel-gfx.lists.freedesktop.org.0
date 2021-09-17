Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C7740F8A8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 15:02:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA04F6ED0B;
	Fri, 17 Sep 2021 13:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E556EC54;
 Fri, 17 Sep 2021 12:35:31 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id t18so15001255wrb.0;
 Fri, 17 Sep 2021 05:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fTYRDJJE+t2GlGO6++SOuXKZtEL0uOy1Wu4kUiFazeA=;
 b=do5a6C/CKoJ/t9gO3qZFk6Zo473jj7JAmKlkWbMHGOgVCNCadQiX4dj5blZ+Q02w24
 lpaJ6VbHtguxph/wY2ANf+GuHZNZs6P+bo2k86RSDsg+0kB4bqSsGMb7ldNJA2eF+M06
 HSCJDPYVsoZ9ZN8R/bdAqCDXRbpSlx79Roc8pkfNYUAYYsSZeIwaPbd2eaxG3CcDJ/g8
 xgNy6vuUEaUYZyBDd49Ka3J9+1HZd51MNUGzODtbZy5LUFAByodUCMp5sXjV3yrUXN3h
 bbz08LCoqXRkkchlZI7SStEiAPz8viCz8AyKvWDvo481lE7U5kimmC3ny5iV7246gSCR
 7AFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fTYRDJJE+t2GlGO6++SOuXKZtEL0uOy1Wu4kUiFazeA=;
 b=t9RFpH0aznueUt2g0YyJdShhtps2o+KHVqL16jH5LgNWbb/lZ9p0e0dJwJRTao4XQJ
 IXXKFG0Lfodqix4cjLb3ed0n5WZsv6Qom5SmYDvYSWYAX5q+foqFtw2Zx5LkDNOllz56
 SV8J4eIxQpEx3/AC4Ixta03pKE5wCAzby07a/T8mUx7NAqDuU7V3QlhK0PIdiE6+8VuD
 UDV8mdUG0TCWpZxp9gYglPXm6U7pCXIIPZNhRyLQ4syfmlLY40l1NaW6iWXCorcFoe8K
 D3/x22kSBrKwccqVoiqmgJ2TyNSTrxvP8exr/LRjclk5A6NEjMNnrbZog5ZDIGGDhXq9
 Xa0Q==
X-Gm-Message-State: AOAM5320tbTKmA2Pif5vyGoj8ezGz6yVEvqbL5yfDyb0kZbqRaFGSR3t
 UO5s/IX2c7re/dfLsxma+Ao=
X-Google-Smtp-Source: ABdhPJzm97Y1W1aEKpHQPWRcu76jJNrW79Rmy/gN+d5YlVYLRUfEHYXtRHvfLqrk3RsPZ9XPev0k3Q==
X-Received: by 2002:adf:ed4c:: with SMTP id u12mr3858944wro.164.1631882129858; 
 Fri, 17 Sep 2021 05:35:29 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:29 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Cc: daniel@ffwll.ch
Date: Fri, 17 Sep 2021 14:35:03 +0200
Message-Id: <20210917123513.1106-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 17 Sep 2021 13:02:50 +0000
Subject: [Intel-gfx] [PATCH 16/26] drm/i915: use new iterator in
 i915_gem_object_wait_reservation v2
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

v2: add missing rcu read unlock.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_wait.c | 57 ++++++------------------
 1 file changed, 14 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index f909aaa09d9c..e416cf528635 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -37,55 +37,26 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 				 unsigned int flags,
 				 long timeout)
 {
-	struct dma_fence *excl;
-	bool prune_fences = false;
-
-	if (flags & I915_WAIT_ALL) {
-		struct dma_fence **shared;
-		unsigned int count, i;
-		int ret;
-
-		ret = dma_resv_get_fences(resv, &excl, &count, &shared);
-		if (ret)
-			return ret;
-
-		for (i = 0; i < count; i++) {
-			timeout = i915_gem_object_wait_fence(shared[i],
-							     flags, timeout);
-			if (timeout < 0)
-				break;
-
-			dma_fence_put(shared[i]);
-		}
-
-		for (; i < count; i++)
-			dma_fence_put(shared[i]);
-		kfree(shared);
-
-		/*
-		 * If both shared fences and an exclusive fence exist,
-		 * then by construction the shared fences must be later
-		 * than the exclusive fence. If we successfully wait for
-		 * all the shared fences, we know that the exclusive fence
-		 * must all be signaled. If all the shared fences are
-		 * signaled, we can prune the array and recover the
-		 * floating references on the fences/requests.
-		 */
-		prune_fences = count && timeout >= 0;
-	} else {
-		excl = dma_resv_get_excl_unlocked(resv);
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
+
+	rcu_read_lock();
+	dma_resv_iter_begin(&cursor, resv, flags & I915_WAIT_ALL);
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		rcu_read_unlock();
+		timeout = i915_gem_object_wait_fence(fence, flags, timeout);
+		rcu_read_lock();
+		if (timeout < 0)
+			break;
 	}
-
-	if (excl && timeout >= 0)
-		timeout = i915_gem_object_wait_fence(excl, flags, timeout);
-
-	dma_fence_put(excl);
+	dma_resv_iter_end(&cursor);
+	rcu_read_unlock();
 
 	/*
 	 * Opportunistically prune the fences iff we know they have *all* been
 	 * signaled.
 	 */
-	if (prune_fences)
+	if (timeout > 0)
 		dma_resv_prune(resv);
 
 	return timeout;
-- 
2.25.1

