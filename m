Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0D74899C2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1D514B42A;
	Mon, 10 Jan 2022 13:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A6C910E8C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 14:07:16 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id q16so27183058wrg.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 06:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1sy3pJYdzrgFvMeevz7H8Vur31O14m4PM+D+sDME900=;
 b=gfYdUHEd/y/UlyczKTDuNzLjRz1f8KV8jYlLbJwopHgq39ZX8nkCKvdSjruwk4YnW+
 220cculpKFuFuGvV+UOXLi/l39Udgz5VwTFpmREq17OkM6A4mRc1LAIVd9BrRxYhheGF
 gwgFVsbR5gpkRHaoxHiuDoG3ITFVm6W45NW8LX6rSmyhFI0K/+XVO9gY0RVaoa4NyIQG
 E43SDwd9Vy6hd+GB0lXrJVEKh49QIxOSd7pfxICdQYnfp/76k0rnMGllrSjhVUiTBC1N
 eW0LJFR45v5pklpql/sUP3WwQh3rUDkPQPflASVByx+jg4I22Q2vLzehDaDPzvJgbeMO
 aIcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1sy3pJYdzrgFvMeevz7H8Vur31O14m4PM+D+sDME900=;
 b=dOOuKfj1Ya6pbgunEPeIJeO7efPy4AysopjI1WSUGtrexh0jK4Wtde0M1TvyKxxmP6
 5Q+Ok+J1MNFXUfZsc4i9BDDy0mkuq8CP1DWJc0cJzYh3cWLjFm5sm6EH67Xvl1IXyBGO
 G5NowIUOm8ircA7LGD04RWD97upcUjATOBtuBRi5uBwEPwArCJsOsCfdqpGpLIRyK9rY
 FPnCKGdOgLdty9cU+JrEHFf0f0NaTOjjmAgU7fY1sJenz9lseMO3j0OV7x5qnPOHhAa3
 pP/wRbl8/yzs+xYxbb2DKJSdTioSqWM/ZNlcM2OufuKNddvPRCJoV+b6PFCvd1sVH9Jg
 Ab0g==
X-Gm-Message-State: AOAM5327mmktBNzH7PBzC9yuMHKzsP1q5CGXKKn6CjoQe3j2uk6swf2X
 xi3LcMlUsi14x77t3E+YQTsh01LpJFo=
X-Google-Smtp-Source: ABdhPJwHHrL4S/pXuvgVxP4/AyR3LTLk2rIMtNYby4tnxUCD/PEKqbg3zP2uFhsCYt1EvYBapwgJoQ==
X-Received: by 2002:a5d:64c2:: with SMTP id f2mr2838028wri.483.1640095635235; 
 Tue, 21 Dec 2021 06:07:15 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id o10sm10850956wrc.55.2021.12.21.06.07.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Dec 2021 06:07:14 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Dec 2021 15:07:13 +0100
Message-Id: <20211221140713.367218-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: remove questionable fence
 optimization during copy
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

First of all as discussed multiple times now kernel copies *must* always wait
for all fences in a BO before actually doing the copy. This is mandatory.

Additional to that drop the handling when there can't be a shared slot
allocated on the source BO and just properly return an error code. Otherwise
this code path would only be tested under out of memory conditions.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 39 +++++++-------------
 1 file changed, 14 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 80df9f592407..798f310d710c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -250,19 +250,14 @@ static struct dma_fence *i915_deps_to_fence(struct i915_deps *deps,
 }
 
 static int i915_deps_add_resv(struct i915_deps *deps, struct dma_resv *resv,
-			      bool all, const bool no_excl,
 			      const struct ttm_operation_ctx *ctx)
 {
 	struct dma_resv_iter iter;
 	struct dma_fence *fence;
+	int ret;
 
 	dma_resv_assert_held(resv);
-	dma_resv_for_each_fence(&iter, resv, all, fence) {
-		int ret;
-
-		if (no_excl && dma_resv_iter_is_exclusive(&iter))
-			continue;
-
+	dma_resv_for_each_fence(&iter, resv, true, fence) {
 		ret = i915_deps_add_dependency(deps, fence, ctx);
 		if (ret)
 			return ret;
@@ -698,7 +693,7 @@ static struct dma_fence *prev_fence(struct ttm_buffer_object *bo,
 		 * TODO: Only await excl fence here, and shared fences before
 		 * signaling the migration fence.
 		 */
-		ret = i915_deps_add_resv(&deps, bo->base.resv, true, false, ctx);
+		ret = i915_deps_add_resv(&deps, bo->base.resv, ctx);
 	if (ret)
 		return ERR_PTR(ret);
 
@@ -828,22 +823,21 @@ int i915_gem_obj_copy_ttm(struct drm_i915_gem_object *dst,
 	struct i915_refct_sgt *dst_rsgt;
 	struct dma_fence *copy_fence, *dep_fence;
 	struct i915_deps deps;
-	int ret, shared_err;
+	int ret;
 
 	assert_object_held(dst);
 	assert_object_held(src);
 	i915_deps_init(&deps, GFP_KERNEL | __GFP_NORETRY | __GFP_NOWARN);
 
-	/*
-	 * We plan to add a shared fence only for the source. If that
-	 * fails, we await all source fences before commencing
-	 * the copy instead of only the exclusive.
-	 */
-	shared_err = dma_resv_reserve_shared(src_bo->base.resv, 1);
-	ret = i915_deps_add_resv(&deps, dst_bo->base.resv, true, false, &ctx);
-	if (!ret)
-		ret = i915_deps_add_resv(&deps, src_bo->base.resv,
-					 !!shared_err, false, &ctx);
+	ret = dma_resv_reserve_shared(src_bo->base.resv, 1);
+	if (ret)
+		return ret;
+
+	ret = i915_deps_add_resv(&deps, dst_bo->base.resv, &ctx);
+	if (ret)
+		return ret;
+
+	ret = i915_deps_add_resv(&deps, src_bo->base.resv, &ctx);
 	if (ret)
 		return ret;
 
@@ -861,12 +855,7 @@ int i915_gem_obj_copy_ttm(struct drm_i915_gem_object *dst,
 		return PTR_ERR_OR_ZERO(copy_fence);
 
 	dma_resv_add_excl_fence(dst_bo->base.resv, copy_fence);
-
-	/* If we failed to reserve a shared slot, add an exclusive fence */
-	if (shared_err)
-		dma_resv_add_excl_fence(src_bo->base.resv, copy_fence);
-	else
-		dma_resv_add_shared_fence(src_bo->base.resv, copy_fence);
+	dma_resv_add_shared_fence(src_bo->base.resv, copy_fence);
 
 	dma_fence_put(copy_fence);
 
-- 
2.25.1

