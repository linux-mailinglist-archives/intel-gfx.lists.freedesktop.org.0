Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51577415D2B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7DC6ED13;
	Thu, 23 Sep 2021 11:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D74C6ECF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:24 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id t8so14591405wrq.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=y78+lw9uajwG2nya7zXv9lL0eVUeHEAbTx0GIeLnzI0=;
 b=W0OzX7EiFb1ngl/k3/EYf3XYd5icD2grdh7nSOEWlf4FJkieovgZkcl8rb6esgxfIV
 TZAgmwe2qMrP4Srmv25K7L5HU5Y+tEzEGvcqaCMWknORIv6g85KLjSH4kuWEfl7OFWTc
 FRGlqBiykj6WxF3pRsDUwp2TUJ74o9czCZ1NpjJolIh6+p1aDWyhpS4aANFtv/cC5k9z
 S7l1lXHhJF+KpCYejqVIIMnGtxAnIfd4fCbYcHi7hyoUlgCbqfVDVi7utn0ngPGc9H3S
 kTaK/6fT1m9N2UjP+wmoVTUDjRYql28acp6yTsaRIg/4WKKua7PL79xT1cJjVd+BXpPs
 v2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y78+lw9uajwG2nya7zXv9lL0eVUeHEAbTx0GIeLnzI0=;
 b=UCXDzg7cp9NRrSgei+c5qZpXFTEsdBD/EAH9P9BC2D655eCCoCFHvvuez24deBTQ9y
 qAPnxFDydvMu8VcXGy/UezRQOQN8wGZJREsr+DCjRTUU0dvDQohCEGQ5phhSeNu07WZl
 AWMOhpIvbQ3Md29xElcWueDF9JRBv94i9VqLmkkKj1rFuufG2NFZtUFmprl3OPPtpmLb
 pg1NYT62H6olHm0yGZ+8f9/Q5+5ojKrO/+UdTkitTtr95i5U7p9Te11vlCzrs1GPChvk
 fzUkmMP5KpENK2hwJ31IsK2xdDikEBZY8jCtKhbAX+LayKA8zF0Ovm3Ga8JEB9yDgOp3
 1H1g==
X-Gm-Message-State: AOAM532nH/NLpecjKCQ19dDxf67e7RjA6l3n1hERBrb7I2XsdfMjetQ+
 KfmM//lA5oSNzLh4ojU5Y+XPLxX/vIw=
X-Google-Smtp-Source: ABdhPJwGn4HNf6NXCbI3r5zn38+YH/qnd22g4A4AT+35hoG+oXw5+1XUtxIo5oK1Qz4LaIh/wxE/8w==
X-Received: by 2002:a1c:21c3:: with SMTP id h186mr14543982wmh.18.1632383782962; 
 Thu, 23 Sep 2021 00:56:22 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.22
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:22 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:55:59 +0200
Message-Id: <20210923075608.2873-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 16/25] drm/i915: use the new iterator in
 i915_request_await_object v2
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

v2: add missing rcu_read_lock()/rcu_read_unlock()
v3: use dma_resv_for_each_fence instead

Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 34 +++++------------------------
 1 file changed, 5 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index ce446716d092..3839712ebd23 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1509,38 +1509,14 @@ i915_request_await_object(struct i915_request *to,
 			  struct drm_i915_gem_object *obj,
 			  bool write)
 {
-	struct dma_fence *excl;
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
 	int ret = 0;
 
-	if (write) {
-		struct dma_fence **shared;
-		unsigned int count, i;
-
-		ret = dma_resv_get_fences(obj->base.resv, &excl, &count,
-					  &shared);
+	dma_resv_for_each_fence(&cursor, obj->base.resv, write, fence) {
+		ret = i915_request_await_dma_fence(to, fence);
 		if (ret)
-			return ret;
-
-		for (i = 0; i < count; i++) {
-			ret = i915_request_await_dma_fence(to, shared[i]);
-			if (ret)
-				break;
-
-			dma_fence_put(shared[i]);
-		}
-
-		for (; i < count; i++)
-			dma_fence_put(shared[i]);
-		kfree(shared);
-	} else {
-		excl = dma_resv_get_excl_unlocked(obj->base.resv);
-	}
-
-	if (excl) {
-		if (ret == 0)
-			ret = i915_request_await_dma_fence(to, excl);
-
-		dma_fence_put(excl);
+			break;
 	}
 
 	return ret;
-- 
2.25.1

