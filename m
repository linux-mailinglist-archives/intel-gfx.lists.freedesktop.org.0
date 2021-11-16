Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0214533A5
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 15:05:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1D806EABA;
	Tue, 16 Nov 2021 14:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7866E1B5;
 Tue, 16 Nov 2021 10:24:38 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id d27so36574802wrb.6;
 Tue, 16 Nov 2021 02:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=E1mLau2z1VIOncH+lY3sIrl5+7OvgX/wzzV/iwEt37Y=;
 b=Jq/9mDt5YvEnnX4kt3FoZbm7R0vW3Q5zVKCegHUFhlZUdR4G6j18YG3/ogXuFMTS/U
 Xte8fGB7tGXMN6/heURAAB1KEJwwnjuOzR4cHn8Mfx/RSHVBYZi1PdmynJ5/2d3YHYJh
 82u0QkL1DUaHI7bUzNQvW0FLW0bbmXbFRiBYatyJw1lkb/GfmidoVNR//Z0lDgs1aM/Y
 voc4mlJVZpV6igU/vxWaAPVWQ0BegHb19YTWmarViE+QJ21XbiT/AqaRvBisFIMnBfX3
 i7Wb2r92ByKo6PX80GEotN5JUIoJcUpRMwYT/nT6yLmvMklzsNIxBHrk4xyvP5fIiRtp
 RvoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E1mLau2z1VIOncH+lY3sIrl5+7OvgX/wzzV/iwEt37Y=;
 b=0SiYg2yO/RfbbGHcAKxUacrLVFaUQaXWcA/UWDlwn3Smk3JT7ELtJMjDcD1Exww3+h
 QI1v9En63sRxs4wp77NE38TCVqzBbpWzSFvnpvT4Mb1Vb3ZRyuE18k4TRHKsamZR/U9R
 cNHj0PNxjEwYiz35QUM+y7P3TDsXnskKKqN1X9m0VTG4kcMoyz2YCVjH7Vtw1+WOpfAM
 IhrhiGB7DvLESEOJwbq3c9NbrBGBB4mSAk2hW9wQCEKJDCzoqkJBQSSYEfbY+rGsm+2E
 8MiN15P7F8xib0m183SP7LqflcAx7t7ZRNpfEuWKdXIZVTrCjq2xamEJAHjBIwYidd4K
 wDeA==
X-Gm-Message-State: AOAM533Ovi5uEK26KYAFRqsnFltidKK3ao6VDiKjk1xMoYndfwyWi/LE
 YwJZNLgt2wXomeDC+TMInMjo0tiLIwghCA==
X-Google-Smtp-Source: ABdhPJwLWyRpIQXYjMIYKD9V+cuyLA4cYUFhfRZluE1j0YdkGhqOdezWTOQiCY8w86fAGItzyxJu5g==
X-Received: by 2002:adf:cd06:: with SMTP id w6mr7653944wrm.431.1637058276992; 
 Tue, 16 Nov 2021 02:24:36 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id 4sm22119334wrz.90.2021.11.16.02.24.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Nov 2021 02:24:36 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 16 Nov 2021 11:24:27 +0100
Message-Id: <20211116102431.198905-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211116102431.198905-1-christian.koenig@amd.com>
References: <20211116102431.198905-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Nov 2021 14:05:08 +0000
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: use new iterator in
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
Acked-by: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_wait.c | 31 +++++-------------------
 1 file changed, 6 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index f909aaa09d9c..34e46134326b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -151,32 +151,13 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
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
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
 
-		for (i = 0; i < count; i++) {
-			i915_gem_fence_wait_priority(shared[i], attr);
-			dma_fence_put(shared[i]);
-		}
-
-		kfree(shared);
-	} else {
-		excl = dma_resv_get_excl_unlocked(obj->base.resv);
-	}
-
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

