Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 384BE4226CB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 14:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5834E6F5E6;
	Tue,  5 Oct 2021 12:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5EC26EB68;
 Tue,  5 Oct 2021 11:38:08 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id v17so36745863wrv.9;
 Tue, 05 Oct 2021 04:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=99i5D3wyL80PzFY23pT70i10IrSlrn1OjZ/9oRLQj94=;
 b=HC0YUY7zostVVN6Uj/chvxuJpIrKKhTM3znTwTO6/QPx6LPdCN+6X6rDUjhM1/tt4a
 FiZV984VSAYawnWNeybqLyxlheeqH4dU79pmqJP9Js0CrRJxO+6RybK6NWy8KPi9Yp1c
 sPRUYFFRQlILyWRBZUaM36nc8+faJoXTV0RjyeRoWxXVr7NSqNKifbro7wrggy45TW/H
 nYtP4aQa9vj7Y78mdoog7KyOqKUeatEJPhJyQ7On5JcCrE0gcbXiG99hrUmgWvkbhdM/
 a4giukIvX9eDIuQQJb9xfvVtRfTOU9gid0IYuEY1DictnHP4cklGzVs7B/3Pihd6aDck
 /RGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=99i5D3wyL80PzFY23pT70i10IrSlrn1OjZ/9oRLQj94=;
 b=vra/RWfM+eemvSRJSFtGtPPdPa6vznQEyFJdpAQRLRb5qnUjJjObD1T/wKfPhv8Es1
 Db5RC1l5HM8uFQBO/7gmlJCvF8igfLCbgzxETA5KuDMHWa9ILKIwbwH54iHOv8kTrDPk
 D042iq9qYZxhoyTjtMAllf49GzNxyGswY7RlcEc4mONqafUt0EIfY9uJgnfSYu4+Vavl
 fB4hI/T9r0jVsFvMoDzy+KH8BLEU4qkp2Ym+hzuu22DjMeJfPIWe+rfLl/u/CroytA43
 hx7oSlme8zHKcSMu7PBeF9YK0mo8o7ESEj1Crcaz5J5klS7k5T8d2plnZ3VJOf5iaF1r
 qMJg==
X-Gm-Message-State: AOAM533noKV0mbVZsu+PL7LVjPq2NtdB64Xfp+stKb+f7G41g49NKucz
 r7A5QsYZWzhAOV1c9Sm3N00=
X-Google-Smtp-Source: ABdhPJxoIw+5xj4/957H3iLKItAuRkDyREWwpI72tdDYTCwpNUfsh8nl5b0khPgnl2+T0LZwN8Zw+A==
X-Received: by 2002:adf:f507:: with SMTP id q7mr21072954wro.7.1633433885717;
 Tue, 05 Oct 2021 04:38:05 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:05 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Cc: daniel@ffwll.ch,
	tvrtko.ursulin@linux.intel.com
Date: Tue,  5 Oct 2021 13:37:37 +0200
Message-Id: <20211005113742.1101-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 05 Oct 2021 12:35:14 +0000
Subject: [Intel-gfx] [PATCH 23/28] drm: use new iterator in
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
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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

