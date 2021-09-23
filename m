Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE53415D3A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F20C26ED34;
	Thu, 23 Sep 2021 11:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE486ECF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:27 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id t8so14678712wri.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=by8trJVpX1Yx/8GVC1WzD9CSlRZcllVkqP6ongV+oMI=;
 b=S7PNCNo6vX4W4dcU926D+jmzfX7Nisbs6/D2cnTk5w4wwJdhI4ET5RN8Y5hhdHJ9Lp
 K+Z4Owl0rYlgG/9VtjQG+lfIv9ods3Eu/68XyRLHhtdBoAdnYvNFNETdwZPu4WXPbfKd
 a1bLVTBm14WZzZF54UYTWQIH2leJGekIHcVp3uJ6DE9Dn4awJXvyoBZNiNXzj1FMzp74
 WLFnqxcgr0MI+e/pgLVGFZIEhqfhAVPX3clmzKfDdK1dgX2Nx6tROG+Yv6gcgTawvsuo
 4vfVUqNO+ZNd2QqngRGKQ5dRc1NdzyVUEdDA/OppHQZzXqgFwUip+0fmdayM4lElnhoK
 tG2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=by8trJVpX1Yx/8GVC1WzD9CSlRZcllVkqP6ongV+oMI=;
 b=Itmjd7qtonTNmZ5cp3GSIrAB+VcaeM5+If9vn8urf1oBGSU0MEwtJvXexk5YQckgAS
 DXTah5HKmw4EVK4Q0cDE3rAoxkKZHn9+e6cqY9A/dyMH75xOxJkLpxG4PbY7h/jJ6mNC
 1QRL0tAqBoXl8KiRRhsAlKJ+iGean0faCgJTKkZ4J9Avxj4N0FZSVMraZXvHBhM5Nijw
 P/RAU6Ctf8mE4xPAPYkLlyegLhlxPGSSWgkj8exA0CNMOOtPfWH9xZp3jUFgjTpFTm0O
 bP50GzmvEg9Hujfk8tXfDh9onQH0gz8jlOD5ROg/0sn8VLS67jDBvWEzQEYc4MSSGsUU
 kEZw==
X-Gm-Message-State: AOAM533Rzum2+GxojtYkF9B6GusyY/O+eQDao6GQbXla5wx59S5w4f7x
 GjiVVpdDBMd8TR6l4lM1UI0r5+NkOHI=
X-Google-Smtp-Source: ABdhPJzwRvn5VjgNay8BFZKKTgdFZ8+S34GryXVtYOJxl4Dm7v84XHE9TB7A/QMZyJtKZFi//K74Cw==
X-Received: by 2002:a05:600c:190c:: with SMTP id
 j12mr14824726wmq.122.1632383786472; 
 Thu, 23 Sep 2021 00:56:26 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.25
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:26 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:56:03 +0200
Message-Id: <20210923075608.2873-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 20/25] drm: use new iterator in
 drm_gem_fence_array_add_implicit v3
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

v2: add missing rcu_read_lock()/unlock()
v3: switch to locked version

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/drm_gem.c | 26 +++++---------------------
 1 file changed, 5 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 09c820045859..4dcdec6487bb 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -1340,31 +1340,15 @@ int drm_gem_fence_array_add_implicit(struct xarray *fence_array,
 				     struct drm_gem_object *obj,
 				     bool write)
 {
-	int ret;
-	struct dma_fence **fences;
-	unsigned int i, fence_count;
-
-	if (!write) {
-		struct dma_fence *fence =
-			dma_resv_get_excl_unlocked(obj->resv);
-
-		return drm_gem_fence_array_add(fence_array, fence);
-	}
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
+	int ret = 0;
 
-	ret = dma_resv_get_fences(obj->resv, NULL,
-						&fence_count, &fences);
-	if (ret || !fence_count)
-		return ret;
-
-	for (i = 0; i < fence_count; i++) {
-		ret = drm_gem_fence_array_add(fence_array, fences[i]);
+	dma_resv_for_each_fence(&cursor, obj->resv, write, fence) {
+		ret = drm_gem_fence_array_add(fence_array, fence);
 		if (ret)
 			break;
 	}
-
-	for (; i < fence_count; i++)
-		dma_fence_put(fences[i]);
-	kfree(fences);
 	return ret;
 }
 EXPORT_SYMBOL(drm_gem_fence_array_add_implicit);
-- 
2.25.1

