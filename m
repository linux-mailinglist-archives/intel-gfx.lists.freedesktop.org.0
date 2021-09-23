Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1736415D3F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:58:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71EAF6ED0D;
	Thu, 23 Sep 2021 11:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4E7C6ECF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:23 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id w29so14484238wra.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=s+B96AdxRkADIO5Sz7pGY2LZZPwHDe6rOqsFSHpv8M0=;
 b=ID7zk2ljNoV/wxX7aKuzEWSHvPd/v+Cr/kHkuLyO+yI4ahaoxvyMetsxjVKCtl5d8Z
 LEF/UjoR+QOcsaiQeH1GcAt9GgIsnLYgP3YTNBQFwP5gtGYvDT8DOEQxk8B2LJ9BOE1o
 MnYJEg8xYfwsErZnN6F6k5ZhP19ppsE3h3Ecb5iBbDvzi3ILhmaLdzvMKNUj+IF0UNRA
 b+g4/oMWikwLDtDc8lCs4qjndx4zhGjGawSbeULPb0pslzIb/1VYPwI9eEGqYkAXCXK+
 JTe0wWcD8+Pq8VIUeyBrSRSdvX1w6SrsDPQZW8a3MH7ujzvA/IKG25hRTlpZtqWhM4qz
 VYow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s+B96AdxRkADIO5Sz7pGY2LZZPwHDe6rOqsFSHpv8M0=;
 b=bp94fyf0mkzi+s5sauvOdwtmLP5c+WUwAtTt+vVQT5z5NE6BylloPRHh28QBmtp1DP
 H6gqe1Fk2ZxWDALIogXu73r+bweq8SrvmJKi9/qtqKBbg4JwDLr271/Yr0jBcpxjtS7o
 sNRxnEQdpNUJq2/Niq3SkPCLXTY6JJTnd3kD1xT04WlF8wR/k7TT/vtG/5uDVnqV4N85
 axQhlPUiSMn95t5JHOJKzQv6boQ/8hw/L09qhBB705wqC376Xa5LEwQMxweQ4tF5wAon
 ZCvWllOydhR9OYz2vH5xc0uZVGccB65nLtRV07jIC4Vv90tzYn7gTYE31Cik2f2CB+Wa
 /ypQ==
X-Gm-Message-State: AOAM5314yr+uZiq7eoEaf9b50BUpcPbLuK606HfCXM5uYRwRgKul3ypj
 XzLVJuBdgvQ7zINiUE5fbJso53vw5EM=
X-Google-Smtp-Source: ABdhPJz2vnJvre8C0kcDobZD+b4c5oOe+DwttGUrPW5XRL2N6HPY7JagTBRotPa4CNe/jTW2iKR9Qg==
X-Received: by 2002:a1c:7515:: with SMTP id o21mr2950244wmc.150.1632383782210; 
 Thu, 23 Sep 2021 00:56:22 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.21
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:21 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:55:58 +0200
Message-Id: <20210923075608.2873-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 15/25] drm/i915: use the new iterator in
 i915_sw_fence_await_reservation v3
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

v2: use dma_resv_for_each_fence instead, according to Tvrtko the lock is
    held here anyway.
v3: back to using dma_resv_for_each_fence_unlocked.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/i915/i915_sw_fence.c | 53 ++++++----------------------
 1 file changed, 11 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index c589a681da77..7ea0dbf81530 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence.c
@@ -572,56 +572,25 @@ int i915_sw_fence_await_reservation(struct i915_sw_fence *fence,
 				    unsigned long timeout,
 				    gfp_t gfp)
 {
-	struct dma_fence *excl;
+	struct dma_resv_iter cursor;
+	struct dma_fence *f;
 	int ret = 0, pending;
 
 	debug_fence_assert(fence);
 	might_sleep_if(gfpflags_allow_blocking(gfp));
 
-	if (write) {
-		struct dma_fence **shared;
-		unsigned int count, i;
-
-		ret = dma_resv_get_fences(resv, &excl, &count, &shared);
-		if (ret)
-			return ret;
-
-		for (i = 0; i < count; i++) {
-			if (shared[i]->ops == exclude)
-				continue;
-
-			pending = i915_sw_fence_await_dma_fence(fence,
-								shared[i],
-								timeout,
-								gfp);
-			if (pending < 0) {
-				ret = pending;
-				break;
-			}
-
-			ret |= pending;
-		}
-
-		for (i = 0; i < count; i++)
-			dma_fence_put(shared[i]);
-		kfree(shared);
-	} else {
-		excl = dma_resv_get_excl_unlocked(resv);
-	}
-
-	if (ret >= 0 && excl && excl->ops != exclude) {
-		pending = i915_sw_fence_await_dma_fence(fence,
-							excl,
-							timeout,
+	dma_resv_iter_begin(&cursor, resv, write);
+	dma_resv_for_each_fence_unlocked(&cursor, f) {
+		pending = i915_sw_fence_await_dma_fence(fence, f, timeout,
 							gfp);
-		if (pending < 0)
+		if (pending < 0) {
 			ret = pending;
-		else
-			ret |= pending;
-	}
-
-	dma_fence_put(excl);
+			break;
+		}
 
+		ret |= pending;
+	}
+	dma_resv_iter_end(&cursor);
 	return ret;
 }
 
-- 
2.25.1

