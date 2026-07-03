Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RWf6CDnwR2p0hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9A37049EF
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b=LDYkhNss;
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA5B10F86B;
	Fri,  3 Jul 2026 17:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC8C910F85D;
 Fri,  3 Jul 2026 16:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096373; x=1783701173; i=natalie.vock@gmx.de;
 bh=xOOSoXBcUIpMWrq9bo8sEHTYj/nflFxZLXV27AQqy+o=;
 h=X-UI-Sender-Class:From:Date:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id:References:In-Reply-To:To:Cc:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=LDYkhNssmOtZ9W67tItEnQM5fHptVdHznwTg1z2qRitZQspGSbFiN2YDapwjODfU
 VgJGpkj5zMKwbpQJP+ktb4ZhNsix7S1hwathMAKQb2gWb19peM/UsXa7O3S3/afNe
 WKZZyIS/xONU7VC3PpgArZ/nbnKj64UhdXHvsT5HQ1kgZQLr9icUgik2MPfq1ublF
 QSP8AlmRJveYP1EgupwFxRAxMzblJqcfYBgePrXXDIcGOc5cOMl+cAJ4riI5/vp9s
 BOGcFHFYFe1y2xiyDn+IWNl9m38EFo8t8rxFRziy698DD1yrptuZ9GxbI8FdlJ9fk
 uzPqGVnCNRZcQimHUg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MPogF-1wRcLH3MCh-00OdiX; Fri, 03
 Jul 2026 18:32:52 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Date: Fri, 03 Jul 2026 18:31:27 +0200
Subject: [PATCH 07/10] drm/ttm: use ttm_bo_lru_for_each_reserved_guarded in
 evict_all
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20260703-ttm_2_drm_exec-v1-7-43685ac1286b@gmx.de>
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
X-Provags-ID: V03:K1:Ucybho/MTbEhxXbGuuLrFGnWRiCur9kOTF8QXeWxEJ6UOEHV+6S
 W06+4Y+pUOw1NpIkC32XccQMNaw/T6/cMhQAPwDogR0wZ3XA5LbAvkgsUtUsdljeA3lNmgV
 89IMkADp8rgeelQyhJFX7ScR3KcUjAK7Rq9KqrSMh5Hzwdyf50Wjmmqjz5xDtfhOrnsSVwT
 fx4u0InjIMWevNzzc9dNg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:oYP1kOAtIXw=;VPngoamtV4cRQso9I0ZI7/5evyE
 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
 DDKcDzS2lKtgb2j0wY=
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gmx.de:from_mime,gmx.de:email,gmx.de:mid,gmx.de:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E9A37049EF

From: Christian K=C3=B6nig <christian.koenig@amd.com>

Use the for_each loop to evict all BOs of an resource manager as well.

Greately simplifying the handling and finally allows us to
remove ttm_bo_evict_first().

Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
 drivers/gpu/drm/ttm/ttm_bo.c       | 51 +--------------------------------=
=2D----
 drivers/gpu/drm/ttm/ttm_resource.c | 22 ++++++++++------
 include/drm/ttm/ttm_bo.h           |  1 +
 3 files changed, 17 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 54f01611ec823..80933ba6aada9 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -351,8 +351,7 @@ static int ttm_bo_bounce_temp_buffer(struct ttm_buffer=
_object *bo,
 	return 0;
 }
=20
-static int ttm_bo_evict(struct ttm_buffer_object *bo,
-			struct ttm_operation_ctx *ctx)
+int ttm_bo_evict(struct ttm_buffer_object *bo, struct ttm_operation_ctx *=
ctx)
 {
 	struct ttm_resource *evict_mem;
 	struct ttm_placement placement;
@@ -437,54 +436,6 @@ bool ttm_bo_eviction_valuable(struct ttm_buffer_objec=
t *bo,
 }
 EXPORT_SYMBOL(ttm_bo_eviction_valuable);
=20
-/**
- * ttm_bo_evict_first() - Evict the first bo on the manager's LRU list.
- * @bdev: The ttm device.
- * @man: The manager whose bo to evict.
- * @ctx: The TTM operation ctx governing the eviction.
- *
- * Return: 0 if successful or the resource disappeared. Negative error co=
de on error.
- */
-int ttm_bo_evict_first(struct ttm_device *bdev, struct ttm_resource_manag=
er *man,
-		       struct ttm_operation_ctx *ctx)
-{
-	struct ttm_resource_cursor cursor;
-	struct ttm_buffer_object *bo;
-	struct ttm_resource *res;
-	unsigned int mem_type;
-	int ret =3D 0;
-
-	spin_lock(&bdev->lru_lock);
-	ttm_resource_cursor_init(&cursor, man);
-	res =3D ttm_resource_manager_first(&cursor);
-	ttm_resource_cursor_fini(&cursor);
-	if (!res) {
-		ret =3D -ENOENT;
-		goto out_no_ref;
-	}
-	bo =3D res->bo;
-	if (!ttm_bo_get_unless_zero(bo))
-		goto out_no_ref;
-	mem_type =3D res->mem_type;
-	spin_unlock(&bdev->lru_lock);
-	ret =3D ttm_bo_reserve(bo, ctx->interruptible, ctx->no_wait_gpu, NULL);
-	if (ret)
-		goto out_no_lock;
-	if (!bo->resource || bo->resource->mem_type !=3D mem_type)
-		goto out_bo_moved;
-
-	ret =3D ttm_bo_evict(bo, ctx);
-out_bo_moved:
-	dma_resv_unlock(bo->base.resv);
-out_no_lock:
-	ttm_bo_put(bo);
-	return ret;
-
-out_no_ref:
-	spin_unlock(&bdev->lru_lock);
-	return ret;
-}
-
 /**
  * struct ttm_bo_evict_walk - Parameters for the evict walk.
  */
diff --git a/drivers/gpu/drm/ttm/ttm_resource.c b/drivers/gpu/drm/ttm/ttm_=
resource.c
index 154d6739256f8..cf3fc3a594388 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_resource.c
+++ b/drivers/gpu/drm/ttm/ttm_resource.c
@@ -561,17 +561,25 @@ EXPORT_SYMBOL(ttm_resource_manager_init);
 int ttm_resource_manager_evict_all(struct ttm_device *bdev,
 				   struct ttm_resource_manager *man)
 {
-	struct ttm_operation_ctx ctx =3D { };
+	struct ttm_bo_lru_cursor cursor;
+	struct ttm_buffer_object *bo;
+	struct ttm_operation_ctx ctx =3D {
+		.interruptible =3D false,
+		.no_wait_gpu =3D false,
+	};
+	struct ttm_lru_walk_arg arg =3D {
+		.ctx =3D &ctx,
+		.trylock_only =3D true
+	};
 	struct dma_fence *fence;
 	int ret, i;
=20
-	do {
-		ret =3D ttm_bo_evict_first(bdev, man, &ctx);
+	ttm_bo_lru_for_each_reserved_guarded(&cursor, man, &arg, bo) {
+		ret =3D ttm_bo_evict(bo, &ctx);
+		if (ret)
+			return ret;
 		cond_resched();
-	} while (!ret);
-
-	if (ret && ret !=3D -ENOENT)
-		return ret;
+	}
=20
 	ret =3D 0;
=20
diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
index bbed63064c9a9..a4060e44d23d0 100644
=2D-- a/include/drm/ttm/ttm_bo.h
+++ b/include/drm/ttm/ttm_bo.h
@@ -389,6 +389,7 @@ int ttm_bo_validate(struct ttm_buffer_object *bo,
 void ttm_bo_fini(struct ttm_buffer_object *bo);
 void ttm_bo_set_bulk_move(struct ttm_buffer_object *bo,
 			  struct ttm_lru_bulk_move *bulk);
+int ttm_bo_evict(struct ttm_buffer_object *bo, struct ttm_operation_ctx *=
ctx);
 bool ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
 			      const struct ttm_place *place);
 int ttm_bo_init_reserved(struct ttm_device *bdev, struct ttm_buffer_objec=
t *bo,

=2D-=20
2.55.0

