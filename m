Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P4w1FY+AS2oCSgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF7370F077
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pixelcluster.dev header.s=ovhmo-selector-1 header.b=g2qFX0Bb;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAA010E88D;
	Mon,  6 Jul 2026 10:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout8.mo534.mail-out.ovh.net
 (smtpout8.mo534.mail-out.ovh.net [54.36.140.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A8ED10E88B
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2026 10:16:42 +0000 (UTC)
Received: from director4.derp.mail-out.ovh.net
 (director4.derp.mail-out.ovh.net [79.137.60.37])
 by mo534.mail-out.ovh.net (Postfix) with ESMTPS id 4gv0SL0cLtz6JQw;
 Mon,  6 Jul 2026 10:08:50 +0000 (UTC)
Received: from director4.derp.mail-out.ovh.net
 (director4.derp.mail-out.ovh.net. [127.0.0.1])
 by director4.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
 for <alexander.deucher@amd.com>; Mon,  6 Jul 2026 10:08:49 +0000 (UTC)
Received: from mta6.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.188.244])
 by director4.derp.mail-out.ovh.net (Postfix) with ESMTPS id
 4gv0SK6gg8z1xpM; Mon,  6 Jul 2026 10:08:49 +0000 (UTC)
Received: from pixelcluster.dev (unknown [10.1.6.11])
 (Authenticated sender: nat@pixelcluster.dev)
 by mta6.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id D6BB88E1900; 
 Mon,  6 Jul 2026 10:08:47 +0000 (UTC)
X-OVh-ClientIp: 88.133.252.134
From: Natalie Vock <nat@pixelcluster.dev>
Date: Mon, 06 Jul 2026 12:07:47 +0200
Subject: [PATCH v2 05/10] drm/ttm: switch to
 ttm_bo_lru_for_each_reserved_guarded for swapout
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260706-ttm_2_drm_exec-v2-5-4bf6bfc0d320@pixelcluster.dev>
References: <20260706-ttm_2_drm_exec-v2-0-4bf6bfc0d320@pixelcluster.dev>
In-Reply-To: <20260706-ttm_2_drm_exec-v2-0-4bf6bfc0d320@pixelcluster.dev>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>, 
 Matthew Auld <matthew.auld@intel.com>, 
 Matthew Brost <matthew.brost@intel.com>, 
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org
X-Mailer: b4 0.15.2
x-ovh-tracer-id: 9129077919805890876
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTGrlNJ8ShesFc0BsmoWFi51A7F15j2IaCkSK7BVZBg/BM8MBdGhyqLZmkbZMHw/TdptOPm8sgahQti1Nc9RjBh0KMZiGtpja+p6qhts3jrWUso58aRKRrx2DXtHoeXDd8faKpktnEASA9l57md6lmCqaecpmqLv9KOaMd5Cxk2fFcLRCf7Y1jiwLpKZwWHOg5MLCHSu/c85HhHBD+9tK6DpmR22NTjUbN0dGZJB9cmuuQPGLboQ0v7ZPGbXkip9C+NIKd694im0qBCyEcUf/DwxdiDWy9o5iBQA1zQlg0Y75Jpr3La1ocQctyDO3tKJ1UAaq83N/bdymi3oIi31d22Yh6zN0szX2fjCorgmlUwVsjE42R4cTUcyqWz8MJeNfTNeP58CJHiBRHfaOjZHzza+XgPWTFpoIfg39AhpFofapCMjO7Ye8tJfkRcDZwKWHSZc3S4MvZTGAWdHg0lHSkQGvwVvhKn4W9HZH5r47r2MwndWzZPkDQNff/femBsHqANAlYoPK31aHYUR7TGaR5mpDIFitIRzL4jD39nXjOaEIIrSfuIPhhnyDASz5xnxL4YR3aqQtkjp50TS0CduEin0X3zqcP3/gH9LpY70gs6RDaQxwEGlT6DffCe+DpM7fanv05/Q08DKKvxNKcQEIfnBFMr26Jpm5IvsA5zPes/H5Q
DKIM-Signature: a=rsa-sha256; bh=pL2GIfs9pCSQWKYD/oWsFK8PH5Ljesh1GOwIouQX/U8=; 
 c=relaxed/relaxed; d=pixelcluster.dev; h=From;
 s=ovhmo-selector-1; t=1783332530; v=1;
 b=g2qFX0Bb0GEdNQAwaBtdy+IvZftPdYvnKZW6Sjv1c6W2jfP5cVO0sbPkGkDwBMIw9wwlgQiP
 SDbMVtBb1l1dGwl5RJRyZpsbaB9PVt8p1hi7Agsn+s/nNT5fn2zG5RXZchu956j9fWjzvAsVFw8
 vLFOe3n1nzzDPqouUk+Eqjs0u5N9nFa9efKPwBrJXuNiste1osfgtOwhYvvCFHPiOhkIEyACkXu
 zEdLxvpnhG6wr3P7xeQ9ZPveToyVKkLOpz2v3hemmtq86dm87aGNjAZAmHvgr7FJoIY5sqd8r7W
 tgbuFcD/H4Y9zDvSyWeZKOk+20jJBa/k2ZCBKBYQTT4tw==
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.69 / 15.00];
	SEM_URIBL_FRESH15(3.00)[pixelcluster.dev:from_mime,pixelcluster.dev:email,pixelcluster.dev:mid,pixelcluster.dev:dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pixelcluster.dev];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[pixelcluster.dev:s=ovhmo-selector-1];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:christian.koenig@amd.com,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:alexander.deucher@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[pixelcluster.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[nat@pixelcluster.dev,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nat@pixelcluster.dev,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:131.252.210.177:c];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pixelcluster.dev:from_mime,pixelcluster.dev:email,pixelcluster.dev:mid,pixelcluster.dev:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EFF7370F077

Instead of the walker wrapper use the underlying foreach. Saves us quite
a bunch of complexity and loc.

Signed-off-by: Christian König <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <nat@pixelcluster.dev>
---
 drivers/gpu/drm/ttm/ttm_bo.c     | 58 +++++++---------------------------------
 drivers/gpu/drm/ttm/ttm_device.c | 18 ++++++++++---
 include/drm/ttm/ttm_bo.h         |  5 ++--
 3 files changed, 26 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 1fb8c53da0362..24c52df169ac8 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -1080,25 +1080,18 @@ int ttm_bo_wait_ctx(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx)
 EXPORT_SYMBOL(ttm_bo_wait_ctx);
 
 /**
- * struct ttm_bo_swapout_walk - Parameters for the swapout walk
+ * ttm_bo_swapout() - Swap out buffer objects on the LRU list to shmem.
+ * @bo: The buffer to swap out.
+ * @ctx: The ttm_operation_ctx governing the swapout operation.
+ * @gfp_flags: The gfp flags used for shmem page allocations.
+ *
+ * Return: The number of bytes actually swapped out, or negative error code
+ * on error.
  */
-struct ttm_bo_swapout_walk {
-	/** @walk: The walk base parameters. */
-	struct ttm_lru_walk walk;
-	/** @gfp_flags: The gfp flags to use for ttm_tt_swapout() */
-	gfp_t gfp_flags;
-	/** @hit_low: Whether we should attempt to swap BO's with low watermark threshold */
-	/** @evict_low: If we cannot swap a bo when @try_low is false (first pass) */
-	bool hit_low, evict_low;
-};
-
-static s64
-ttm_bo_swapout_cb(struct ttm_lru_walk *walk, struct ttm_buffer_object *bo)
+s64 ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
+		   gfp_t gfp_flags)
 {
 	struct ttm_place place = { .mem_type = bo->resource->mem_type };
-	struct ttm_bo_swapout_walk *swapout_walk =
-		container_of(walk, typeof(*swapout_walk), walk);
-	struct ttm_operation_ctx *ctx = walk->arg.ctx;
 	struct ttm_device *bdev = bo->bdev;
 	struct ttm_tt *tt = bo->ttm;
 	s64 ret;
@@ -1166,7 +1159,7 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk, struct ttm_buffer_object *bo)
 		bdev->funcs->swap_notify(bo);
 
 	if (ttm_tt_is_populated(tt)) {
-		ret = ttm_tt_swapout(bdev, tt, swapout_walk->gfp_flags);
+		ret = ttm_tt_swapout(bdev, tt, gfp_flags);
 		if (!ret) {
 			spin_lock(&bdev->lru_lock);
 			ttm_resource_del_bulk_move_unevictable(bo->resource, bo);
@@ -1183,37 +1176,6 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk, struct ttm_buffer_object *bo)
 	return ret;
 }
 
-/**
- * ttm_bo_swapout() - Swap out buffer objects on the LRU list to shmem.
- * @bdev: The ttm device.
- * @ctx: The ttm_operation_ctx governing the swapout operation.
- * @man: The resource manager whose resources / buffer objects are
- * goint to be swapped out.
- * @gfp_flags: The gfp flags used for shmem page allocations.
- * @target: The desired number of pages to swap out.
- *
- * Return: The number of pages actually swapped out, or negative error code
- * on error.
- */
-s64 ttm_bo_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
-		   struct ttm_resource_manager *man, gfp_t gfp_flags,
-		   s64 target)
-{
-	struct ttm_bo_swapout_walk swapout_walk = {
-		.walk = {
-			.process_bo = ttm_bo_swapout_cb,
-			.arg = {
-				.ctx = ctx,
-				.trylock_only = true,
-			},
-		},
-		.gfp_flags = gfp_flags,
-	};
-
-	return ttm_lru_walk_for_evict(&swapout_walk.walk, bdev, man, target);
-}
-EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_bo_swapout);
-
 void ttm_bo_tt_destroy(struct ttm_buffer_object *bo)
 {
 	if (bo->ttm == NULL)
diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_device.c
index d3bfb9a696a74..06fc5255d4091 100644
--- a/drivers/gpu/drm/ttm/ttm_device.c
+++ b/drivers/gpu/drm/ttm/ttm_device.c
@@ -171,6 +171,12 @@ int ttm_device_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
 		       gfp_t gfp_flags)
 {
 	struct ttm_resource_manager *man;
+	struct ttm_bo_lru_cursor cursor;
+	struct ttm_buffer_object *bo;
+	struct ttm_lru_walk_arg arg = {
+		.ctx = ctx,
+		.trylock_only = true
+	};
 	unsigned i;
 	s64 lret;
 
@@ -179,10 +185,14 @@ int ttm_device_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
 		if (!man || !man->use_tt)
 			continue;
 
-		lret = ttm_bo_swapout(bdev, ctx, man, gfp_flags, 1);
-		/* Can be both positive (num_pages) and negative (error) */
-		if (lret)
-			return lret;
+		ttm_bo_lru_for_each_reserved_guarded(&cursor, man, &arg, bo) {
+			lret = ttm_bo_swapout(bo, ctx, gfp_flags);
+			/* Can be both positive (num_pages) and negative (error) */
+			if (lret && lret != -EBUSY && lret != -EALREADY)
+				return lret;
+		}
+		if (IS_ERR(bo))
+			return PTR_ERR(bo);
 	}
 	return 0;
 }
diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
index 0fcd5082a7080..bbed63064c9a9 100644
--- a/include/drm/ttm/ttm_bo.h
+++ b/include/drm/ttm/ttm_bo.h
@@ -408,9 +408,8 @@ void *ttm_bo_kmap_try_from_panic(struct ttm_buffer_object *bo, unsigned long pag
 int ttm_bo_vmap(struct ttm_buffer_object *bo, struct iosys_map *map);
 void ttm_bo_vunmap(struct ttm_buffer_object *bo, struct iosys_map *map);
 int ttm_bo_mmap_obj(struct vm_area_struct *vma, struct ttm_buffer_object *bo);
-s64 ttm_bo_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
-		   struct ttm_resource_manager *man, gfp_t gfp_flags,
-		   s64 target);
+s64 ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
+		   gfp_t gfp_flags);
 void ttm_bo_pin(struct ttm_buffer_object *bo);
 void ttm_bo_unpin(struct ttm_buffer_object *bo);
 int ttm_bo_evict_first(struct ttm_device *bdev,

-- 
2.55.0

