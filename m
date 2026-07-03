Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hw/MND3wR2qChwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F991704A12
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b=LwWNeLe4;
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35F810F88A;
	Fri,  3 Jul 2026 17:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 329 seconds by postgrey-1.36 at gabe;
 Fri, 03 Jul 2026 16:38:24 UTC
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AEBA10F857;
 Fri,  3 Jul 2026 16:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096703; x=1783701503; i=natalie.vock@gmx.de;
 bh=li6JD5BzxFrXyhk2BReSodr3KolfnDlr1k9+PHB66B4=;
 h=X-UI-Sender-Class:From:Date:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id:References:In-Reply-To:To:Cc:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=LwWNeLe4MswYAcfvk8Y0880q2nv7ldRp3j39IztMzbFhzWhAJ/FnSlg9r+RCnzug
 39tZbKqbLz/AFkx48/N0gUTIhixriYaKdrFaIPgd368T8y5JsoOncJMmWxV+z8plu
 91GMHvXesnhTkzDA+jAV/uWFQaxLuieT2DY3fRzEQjHEz0wjlj6hAoKtb8eDFXyUw
 bPUvUvmPVpM6bN/xTFbh9BMxs7/YGYFz80dvjMr8wtJGotOt1NZxfX6QO4fWJaB2i
 o5K/QhIQuLtfAoFnvJjJbk4mbJndh7VEVXaDfLLkWS0SgV3fNAeubjUJj7aK3p8Ph
 vpEz/siXTDxbf1VQIw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MV67y-1wV8RY40hS-00TsuG; Fri, 03
 Jul 2026 18:32:51 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Date: Fri, 03 Jul 2026 18:31:25 +0200
Subject: [PATCH 05/10] drm/ttm: switch to
 ttm_bo_lru_for_each_reserved_guarded for swapout
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20260703-ttm_2_drm_exec-v1-5-43685ac1286b@gmx.de>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
In-Reply-To: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
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
X-Provags-ID: V03:K1:TyKwjnSWrx97wHMmNHlof2HVSIzmL9oN3qV5qkMyaHWrnjXtP2U
 7yHv1eoullH+6Rpgpi4Lxx8lVWxKqYkrwLDqN3o/sdijuyLuNBCaJO9g4tYnxComAkjfLd5
 rULbVL272mY+pG8MoUPIExCqsae445mtAOmw32CFJi2QL9HfCl7XbkyBLUaPOL5VJ2KwZg3
 RO8Qt9obHkSdHNhEnVxlg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:q/CDDzdPWt4=;GDBTPmLhEss7JW7w1zAl6JQ29qk
 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
X-Mailman-Approved-At: Fri, 03 Jul 2026 17:24:06 +0000
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmx.de,quarantine];
	R_DKIM_ALLOW(-0.20)[gmx.de:s=s31663417];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmx.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[natalie.vock@gmx.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmx.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:from_mime,gmx.de:email,gmx.de:mid,gmx.de:dkim,amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7F991704A12

From: Christian K=C3=B6nig <christian.koenig@amd.com>

Instead of the walker wrapper use the underlying foreach. Saves us quite
a bunch of complexity and loc.

Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
 drivers/gpu/drm/ttm/ttm_bo.c     | 58 +++++++----------------------------=
=2D----
 drivers/gpu/drm/ttm/ttm_device.c | 19 ++++++++++---
 include/drm/ttm/ttm_bo.h         |  5 ++--
 3 files changed, 27 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 1fb8c53da0362..24c52df169ac8 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -1080,25 +1080,18 @@ int ttm_bo_wait_ctx(struct ttm_buffer_object *bo, =
struct ttm_operation_ctx *ctx)
 EXPORT_SYMBOL(ttm_bo_wait_ctx);
=20
 /**
- * struct ttm_bo_swapout_walk - Parameters for the swapout walk
+ * ttm_bo_swapout() - Swap out buffer objects on the LRU list to shmem.
+ * @bo: The buffer to swap out.
+ * @ctx: The ttm_operation_ctx governing the swapout operation.
+ * @gfp_flags: The gfp flags used for shmem page allocations.
+ *
+ * Return: The number of bytes actually swapped out, or negative error co=
de
+ * on error.
  */
-struct ttm_bo_swapout_walk {
-	/** @walk: The walk base parameters. */
-	struct ttm_lru_walk walk;
-	/** @gfp_flags: The gfp flags to use for ttm_tt_swapout() */
-	gfp_t gfp_flags;
-	/** @hit_low: Whether we should attempt to swap BO's with low watermark =
threshold */
-	/** @evict_low: If we cannot swap a bo when @try_low is false (first pas=
s) */
-	bool hit_low, evict_low;
-};
-
-static s64
-ttm_bo_swapout_cb(struct ttm_lru_walk *walk, struct ttm_buffer_object *bo=
)
+s64 ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx=
 *ctx,
+		   gfp_t gfp_flags)
 {
 	struct ttm_place place =3D { .mem_type =3D bo->resource->mem_type };
-	struct ttm_bo_swapout_walk *swapout_walk =3D
-		container_of(walk, typeof(*swapout_walk), walk);
-	struct ttm_operation_ctx *ctx =3D walk->arg.ctx;
 	struct ttm_device *bdev =3D bo->bdev;
 	struct ttm_tt *tt =3D bo->ttm;
 	s64 ret;
@@ -1166,7 +1159,7 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk, struct =
ttm_buffer_object *bo)
 		bdev->funcs->swap_notify(bo);
=20
 	if (ttm_tt_is_populated(tt)) {
-		ret =3D ttm_tt_swapout(bdev, tt, swapout_walk->gfp_flags);
+		ret =3D ttm_tt_swapout(bdev, tt, gfp_flags);
 		if (!ret) {
 			spin_lock(&bdev->lru_lock);
 			ttm_resource_del_bulk_move_unevictable(bo->resource, bo);
@@ -1183,37 +1176,6 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk, struct=
 ttm_buffer_object *bo)
 	return ret;
 }
=20
-/**
- * ttm_bo_swapout() - Swap out buffer objects on the LRU list to shmem.
- * @bdev: The ttm device.
- * @ctx: The ttm_operation_ctx governing the swapout operation.
- * @man: The resource manager whose resources / buffer objects are
- * goint to be swapped out.
- * @gfp_flags: The gfp flags used for shmem page allocations.
- * @target: The desired number of pages to swap out.
- *
- * Return: The number of pages actually swapped out, or negative error co=
de
- * on error.
- */
-s64 ttm_bo_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx=
,
-		   struct ttm_resource_manager *man, gfp_t gfp_flags,
-		   s64 target)
-{
-	struct ttm_bo_swapout_walk swapout_walk =3D {
-		.walk =3D {
-			.process_bo =3D ttm_bo_swapout_cb,
-			.arg =3D {
-				.ctx =3D ctx,
-				.trylock_only =3D true,
-			},
-		},
-		.gfp_flags =3D gfp_flags,
-	};
-
-	return ttm_lru_walk_for_evict(&swapout_walk.walk, bdev, man, target);
-}
-EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_bo_swapout);
-
 void ttm_bo_tt_destroy(struct ttm_buffer_object *bo)
 {
 	if (bo->ttm =3D=3D NULL)
diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_de=
vice.c
index d3bfb9a696a74..e4188e2ee7ab1 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_device.c
+++ b/drivers/gpu/drm/ttm/ttm_device.c
@@ -171,6 +171,12 @@ int ttm_device_swapout(struct ttm_device *bdev, struc=
t ttm_operation_ctx *ctx,
 		       gfp_t gfp_flags)
 {
 	struct ttm_resource_manager *man;
+	struct ttm_bo_lru_cursor cursor;
+	struct ttm_buffer_object *bo;
+	struct ttm_lru_walk_arg arg =3D {
+		.ctx =3D ctx,
+		.trylock_only =3D true
+	};
 	unsigned i;
 	s64 lret;
=20
@@ -179,10 +185,15 @@ int ttm_device_swapout(struct ttm_device *bdev, stru=
ct ttm_operation_ctx *ctx,
 		if (!man || !man->use_tt)
 			continue;
=20
-		lret =3D ttm_bo_swapout(bdev, ctx, man, gfp_flags, 1);
-		/* Can be both positive (num_pages) and negative (error) */
-		if (lret)
-			return lret;
+		ttm_bo_lru_for_each_reserved_guarded(&cursor, man, &arg, bo) {
+			lret =3D ttm_bo_swapout(bo, ctx, gfp_flags);
+				continue;
+			/* Can be both positive (num_pages) and negative (error) */
+			if (lret && lret !=3D -EBUSY && lret !=3D -EALREADY)
+				return lret;
+		}
+		if (IS_ERR(bo))
+			return PTR_ERR(bo);
 	}
 	return 0;
 }
diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
index 0fcd5082a7080..bbed63064c9a9 100644
=2D-- a/include/drm/ttm/ttm_bo.h
+++ b/include/drm/ttm/ttm_bo.h
@@ -408,9 +408,8 @@ void *ttm_bo_kmap_try_from_panic(struct ttm_buffer_obj=
ect *bo, unsigned long pag
 int ttm_bo_vmap(struct ttm_buffer_object *bo, struct iosys_map *map);
 void ttm_bo_vunmap(struct ttm_buffer_object *bo, struct iosys_map *map);
 int ttm_bo_mmap_obj(struct vm_area_struct *vma, struct ttm_buffer_object =
*bo);
-s64 ttm_bo_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx=
,
-		   struct ttm_resource_manager *man, gfp_t gfp_flags,
-		   s64 target);
+s64 ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx=
 *ctx,
+		   gfp_t gfp_flags);
 void ttm_bo_pin(struct ttm_buffer_object *bo);
 void ttm_bo_unpin(struct ttm_buffer_object *bo);
 int ttm_bo_evict_first(struct ttm_device *bdev,

=2D-=20
2.55.0

