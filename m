Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cnq0JD3wR2qBhwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7B5704A11
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b=QI4roP6d;
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BDDC10F88F;
	Fri,  3 Jul 2026 17:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316D410E63D;
 Fri,  3 Jul 2026 16:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096368; x=1783701168; i=natalie.vock@gmx.de;
 bh=HN/FnQ/vj/OcmJhaobFfu5Y3aTfGbNdAMC0MyL5au8k=;
 h=X-UI-Sender-Class:From:Date:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id:References:In-Reply-To:To:Cc:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=QI4roP6dlPLuWHhczO11+VpNGbx5WYYcgqdM4JCgROOseOOTCbyOWN52eNYvWwD4
 eIPfESbMk3wYFwi4mCwmKvtGlZinvWzp0LtjvsKMRxOvVRVeE45Qt2rsUhzdgyIqB
 1oKhjbFYHIDai4AA08joaHOOnKJdU5pkR2gtCTy7kAjMazz2XykYX6AX6clg9JyQR
 EMT8MfpuehjTizTkKHkMp3IfIoWiHNpvfyuAk/oPpb3Egr9HS4K+ThpEp43JYcW6u
 6V0JkuhRx7m6Id/XbB+slwq1kdoeZET/+w3WO/fekIa1vf59CxGxPoff3IMZQh9iv
 R3hJ0fZFIW7Awj8txw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MxUnp-1x3R051EF7-00w2Sl; Fri, 03
 Jul 2026 18:32:48 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Date: Fri, 03 Jul 2026 18:31:22 +0200
Subject: [PATCH 02/10] drm/ttm: replace TTMs refcount with the DRM refcount v4
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20260703-ttm_2_drm_exec-v1-2-43685ac1286b@gmx.de>
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
X-Provags-ID: V03:K1:PZBAGArRl+ReVBLJwpXZh/LNayq5gar7Iedq8FWAJf14kuzXLFi
 LfZUVzBvTFYbgQJAr/BDfSs+P8SxMd33YIMG2zYCYmmH99eeAJCR9okWynhfxl3i4zohGyD
 HPeVXG1fM7VI3Nq4ncOfR/8hRr+WvZJIlGWQ3mcUO0G9lfRKDNWiCcgdSQHbdqR5UyNPryq
 I/WfRZAGIXy3y6LPJo21Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:K85J7AT/wuo=;XsPcQfT51/iX9nw/Rbj4sKWUKOF
 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
 osksynVPMWj0IcGSqM=
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
X-Rspamd-Queue-Id: 3D7B5704A11

From: Christian K=C3=B6nig <christian.koenig@amd.com>

Instead of keeping a separate reference count for the TTM object also use
the reference count for DRM GEM objects inside TTM.

Apart from avoiding two reference counts for one object this approach has
the clear advantage of being able to use drm_exec inside TTM.

v2: adjust XE assert as well and re-enable disabled test
v3: handle another case in i915
v4: set GEM driver funcs of transfer BOs to point to the TTM free
callback (Natalie)

Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c          |  35 +++---
 drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |   8 +-
 drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c    |   2 -
 drivers/gpu/drm/ttm/ttm_bo.c                     | 135 +++++++++++-------=
=2D----
 drivers/gpu/drm/ttm/ttm_bo_internal.h            |  17 ++-
 drivers/gpu/drm/ttm/ttm_bo_util.c                |  15 ++-
 drivers/gpu/drm/xe/xe_bo.c                       |   2 +-
 include/drm/ttm/ttm_bo.h                         |   9 --
 8 files changed, 111 insertions(+), 112 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i91=
5/gem/i915_gem_ttm.c
index df3fcc2b1248e..642296602de69 100644
=2D-- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct drm_i915_gem_object *o=
bj)
 	 * Don't manipulate the TTM LRUs while in TTM bo destruction.
 	 * We're called through i915_ttm_delete_mem_notify().
 	 */
-	if (!kref_read(&bo->kref))
+	if (!kref_read(&bo->base.refcount))
 		return;
=20
 	/*
@@ -957,30 +957,21 @@ void i915_ttm_adjust_lru(struct drm_i915_gem_object =
*obj)
 	 *
 	 * TODO: consider maybe also bumping the shrinker list here when we have
 	 * already unpinned it, which should give us something more like an LRU.
-	 *
-	 * TODO: There is a small window of opportunity for this function to
-	 * get called from eviction after we've dropped the last GEM refcount,
-	 * but before the TTM deleted flag is set on the object. Avoid
-	 * adjusting the shrinker list in such cases, since the object is
-	 * not available to the shrinker anyway due to its zero refcount.
-	 * To fix this properly we should move to a TTM shrinker LRU list for
-	 * these objects.
 	 */
-	if (kref_get_unless_zero(&obj->base.refcount)) {
-		if (shrinkable !=3D obj->mm.ttm_shrinkable) {
-			if (shrinkable) {
-				if (obj->mm.madv =3D=3D I915_MADV_WILLNEED)
-					__i915_gem_object_make_shrinkable(obj);
-				else
-					__i915_gem_object_make_purgeable(obj);
-			} else {
-				i915_gem_object_make_unshrinkable(obj);
-			}
-
-			obj->mm.ttm_shrinkable =3D shrinkable;
+	i915_gem_object_get(obj);
+	if (shrinkable !=3D obj->mm.ttm_shrinkable) {
+		if (shrinkable) {
+			if (obj->mm.madv =3D=3D I915_MADV_WILLNEED)
+				__i915_gem_object_make_shrinkable(obj);
+			else
+				__i915_gem_object_make_purgeable(obj);
+		} else {
+			i915_gem_object_make_unshrinkable(obj);
 		}
-		i915_gem_object_put(obj);
+
+		obj->mm.ttm_shrinkable =3D shrinkable;
 	}
+	i915_gem_object_put(obj);
=20
 	/*
 	 * Put on the correct LRU list depending on the MADV status
diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c b/drivers/gp=
u/drm/ttm/tests/ttm_bo_validate_test.c
index 56ad8ef325840..904cb4da6c9b3 100644
=2D-- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
+++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
@@ -127,7 +127,7 @@ static void ttm_bo_init_reserved_sys_man(struct kunit =
*test)
 	dma_resv_unlock(bo->base.resv);
=20
 	KUNIT_EXPECT_EQ(test, err, 0);
-	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
+	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount), 1);
 	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
 	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
 	KUNIT_EXPECT_EQ(test, bo->page_alignment, PAGE_SIZE);
@@ -176,7 +176,7 @@ static void ttm_bo_init_reserved_mock_man(struct kunit=
 *test)
 	dma_resv_unlock(bo->base.resv);
=20
 	KUNIT_EXPECT_EQ(test, err, 0);
-	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
+	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount), 1);
 	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
 	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
 	KUNIT_EXPECT_EQ(test, ctx.bytes_moved, size);
@@ -969,6 +969,8 @@ static void ttm_bo_validate_allowed_only_evict(struct =
kunit *test)
 	ttm_mock_manager_fini(priv->ttm_dev, mem_multihop);
 }
=20
+extern const struct drm_gem_object_funcs ttm_deleted_object_funcs;
+
 static void ttm_bo_validate_deleted_evict(struct kunit *test)
 {
 	struct ttm_operation_ctx ctx_init =3D { }, ctx_val  =3D { };
@@ -999,7 +1001,7 @@ static void ttm_bo_validate_deleted_evict(struct kuni=
t *test)
 	KUNIT_EXPECT_EQ(test, ttm_resource_manager_usage(man), big);
=20
 	dma_resv_unlock(bo_big->base.resv);
-	bo_big->deleted =3D true;
+	bo_big->base.funcs =3D &ttm_deleted_object_funcs;
=20
 	bo_small =3D ttm_bo_kunit_init(test, test->priv, small, NULL);
 	bo_small->type =3D bo_type;
diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c b/drivers/gpu/d=
rm/ttm/tests/ttm_kunit_helpers.c
index 5cfe8f3f80d75..b7ab19e0e4b2b 100644
=2D-- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
+++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
@@ -189,8 +189,6 @@ struct ttm_buffer_object *ttm_bo_kunit_init(struct kun=
it *test,
 	bo->bdev =3D devs->ttm_dev;
 	bo->destroy =3D dummy_ttm_bo_destroy;
=20
-	kref_init(&bo->kref);
-
 	return bo;
 }
 EXPORT_SYMBOL_GPL(ttm_bo_kunit_init);
diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 3980f376e3ba4..2b470c1746f60 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -246,88 +246,84 @@ static void ttm_bo_delayed_delete(struct work_struct=
 *work)
 	ttm_bo_put(bo);
 }
=20
-static void ttm_bo_release(struct kref *kref)
+/*
+ * All other callbacks should never ever be called on a deleted TTM objec=
t.
+ */
+const struct drm_gem_object_funcs ttm_deleted_object_funcs =3D {
+	.free =3D ttm_bo_free
+};
+EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_deleted_object_funcs);
+
+/* Returns true if the BO is about to get deleted */
+static bool ttm_bo_is_zombie(struct ttm_buffer_object *bo)
+{
+	return bo->base.funcs =3D=3D &ttm_deleted_object_funcs;
+}
+
+void ttm_bo_fini(struct ttm_buffer_object *bo)
 {
-	struct ttm_buffer_object *bo =3D
-	    container_of(kref, struct ttm_buffer_object, kref);
 	struct ttm_device *bdev =3D bo->bdev;
 	int ret;
=20
 	WARN_ON_ONCE(bo->pin_count);
 	WARN_ON_ONCE(bo->bulk_move);
=20
-	if (!bo->deleted) {
-		ret =3D ttm_bo_individualize_resv(bo);
-		if (ret) {
-			/* Last resort, if we fail to allocate memory for the
-			 * fences block for the BO to become idle
-			 */
-			dma_resv_wait_timeout(bo->base.resv,
-					      DMA_RESV_USAGE_BOOKKEEP, false,
-					      30 * HZ);
-		}
+	ret =3D ttm_bo_individualize_resv(bo);
+	if (ret) {
+		/* Last resort, if we fail to allocate memory for the
+		 * fences block for the BO to become idle
+		 */
+		dma_resv_wait_timeout(bo->base.resv, DMA_RESV_USAGE_BOOKKEEP,
+				      false, 30 * HZ);
+	}
=20
-		if (bdev->funcs->release_notify)
-			bdev->funcs->release_notify(bo);
+	if (bo->bdev->funcs->release_notify)
+		bo->bdev->funcs->release_notify(bo);
=20
-		drm_vma_offset_remove(bdev->vma_manager, &bo->base.vma_node);
-		ttm_mem_io_free(bdev, bo->resource);
+	drm_vma_offset_remove(bdev->vma_manager, &bo->base.vma_node);
+	ttm_mem_io_free(bdev, bo->resource);
=20
-		if (!dma_resv_test_signaled(&bo->base._resv,
-					    DMA_RESV_USAGE_BOOKKEEP) ||
-		    (want_init_on_free() && (bo->ttm !=3D NULL)) ||
-		    bo->type =3D=3D ttm_bo_type_sg ||
-		    !dma_resv_trylock(bo->base.resv)) {
-			/* The BO is not idle, resurrect it for delayed destroy */
-			ttm_bo_flush_all_fences(bo);
-			bo->deleted =3D true;
+	if (!dma_resv_test_signaled(&bo->base._resv, DMA_RESV_USAGE_BOOKKEEP) ||
+	    (want_init_on_free() && (bo->ttm !=3D NULL)) ||
+	    bo->type =3D=3D ttm_bo_type_sg ||
+	    !dma_resv_trylock(bo->base.resv)) {
+		/* The BO is not idle, resurrect it for delayed destroy */
+		ttm_bo_flush_all_fences(bo);
=20
-			spin_lock(&bdev->lru_lock);
-
-			/*
-			 * Make pinned bos immediately available to
-			 * shrinkers, now that they are queued for
-			 * destruction.
-			 *
-			 * FIXME: QXL is triggering this. Can be removed when the
-			 * driver is fixed.
-			 */
-			if (bo->pin_count) {
-				bo->pin_count =3D 0;
-				ttm_resource_move_to_lru_tail(bo->resource);
-			}
+		spin_lock(&bo->bdev->lru_lock);
=20
-			kref_init(&bo->kref);
-			spin_unlock(&bdev->lru_lock);
+		/*
+		 * Make pinned bos immediately available to
+		 * shrinkers, now that they are queued for
+		 * destruction.
+		 *
+		 * FIXME: QXL is triggering this. Can be removed when the
+		 * driver is fixed.
+		 */
+		if (bo->pin_count) {
+			bo->pin_count =3D 0;
+			ttm_resource_move_to_lru_tail(bo->resource);
+		}
=20
-			INIT_WORK(&bo->delayed_delete, ttm_bo_delayed_delete);
+		kref_init(&bo->base.refcount);
+		bo->base.funcs =3D &ttm_deleted_object_funcs;
+		spin_unlock(&bo->bdev->lru_lock);
=20
-			/* Schedule the worker on the closest NUMA node. This
-			 * improves performance since system memory might be
-			 * cleared on free and that is best done on a CPU core
-			 * close to it.
-			 */
-			queue_work_node(bdev->pool.nid, bdev->wq, &bo->delayed_delete);
-			return;
-		}
+		INIT_WORK(&bo->delayed_delete, ttm_bo_delayed_delete);
=20
+		/* Schedule the worker on the closest NUMA node. This
+		 * improves performance since system memory might be
+		 * cleared on free and that is best done on a CPU core
+		 * close to it.
+		 */
+		queue_work_node(bdev->pool.nid, bdev->wq, &bo->delayed_delete);
+	} else {
 		ttm_bo_cleanup_memtype_use(bo);
 		dma_resv_unlock(bo->base.resv);
-	}
=20
-	atomic_dec(&ttm_glob.bo_count);
-	bo->destroy(bo);
-}
-
-/* TODO: remove! */
-void ttm_bo_put(struct ttm_buffer_object *bo)
-{
-	kref_put(&bo->kref, ttm_bo_release);
-}
-
-void ttm_bo_fini(struct ttm_buffer_object *bo)
-{
-	ttm_bo_put(bo);
+		atomic_dec(&ttm_glob.bo_count);
+		bo->destroy(bo);
+	}
 }
 EXPORT_SYMBOL(ttm_bo_fini);
=20
@@ -470,7 +466,7 @@ int ttm_bo_evict_first(struct ttm_device *bdev, struct=
 ttm_resource_manager *man
 	if (!bo->resource || bo->resource->mem_type !=3D mem_type)
 		goto out_bo_moved;
=20
-	if (bo->deleted) {
+	if (ttm_bo_is_zombie(bo)) {
 		ret =3D ttm_bo_wait_ctx(bo, ctx);
 		if (!ret)
 			ttm_bo_cleanup_memtype_use(bo);
@@ -524,7 +520,7 @@ static s64 ttm_bo_evict_cb(struct ttm_lru_walk *walk, =
struct ttm_buffer_object *
 	if (bo->pin_count || !bo->bdev->funcs->eviction_valuable(bo, evict_walk-=
>place))
 		return 0;
=20
-	if (bo->deleted) {
+	if (ttm_bo_is_zombie(bo)) {
 		lret =3D ttm_bo_wait_ctx(bo, walk->arg.ctx);
 		if (!lret)
 			ttm_bo_cleanup_memtype_use(bo);
@@ -624,7 +620,6 @@ static int ttm_bo_evict_alloc(struct ttm_device *bdev,
 void ttm_bo_pin(struct ttm_buffer_object *bo)
 {
 	dma_resv_assert_held(bo->base.resv);
-	WARN_ON_ONCE(!kref_read(&bo->kref));
 	spin_lock(&bo->bdev->lru_lock);
 	if (bo->resource)
 		ttm_resource_del_bulk_move(bo->resource, bo);
@@ -643,7 +638,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
 void ttm_bo_unpin(struct ttm_buffer_object *bo)
 {
 	dma_resv_assert_held(bo->base.resv);
-	WARN_ON_ONCE(!kref_read(&bo->kref));
 	if (WARN_ON_ONCE(!bo->pin_count))
 		return;
=20
@@ -934,7 +928,6 @@ int ttm_bo_init_reserved(struct ttm_device *bdev, stru=
ct ttm_buffer_object *bo,
 {
 	int ret;
=20
-	kref_init(&bo->kref);
 	bo->bdev =3D bdev;
 	bo->type =3D type;
 	bo->page_alignment =3D alignment;
@@ -1131,8 +1124,8 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk, struct =
ttm_buffer_object *bo)
 		goto out;
 	}
=20
-	if (bo->deleted) {
-		pgoff_t num_pages =3D tt->num_pages;
+	if (ttm_bo_is_zombie(bo)) {
+		pgoff_t num_pages =3D bo->ttm->num_pages;
=20
 		ret =3D ttm_bo_wait_ctx(bo, ctx);
 		if (ret)
diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h b/drivers/gpu/drm/ttm/t=
tm_bo_internal.h
index e0d48eac74b03..ded2a47be0bcb 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
+++ b/drivers/gpu/drm/ttm/ttm_bo_internal.h
@@ -27,6 +27,14 @@
=20
 #include <drm/ttm/ttm_bo.h>
=20
+static inline void ttm_bo_free(struct drm_gem_object *gobj)
+{
+	struct ttm_buffer_object *bo =3D container_of(gobj, typeof(*bo), base);
+
+	atomic_dec(&ttm_glob.bo_count);
+	bo->destroy(bo);
+}
+
 /**
  * ttm_bo_get - reference a struct ttm_buffer_object
  *
@@ -34,7 +42,7 @@
  */
 static inline void ttm_bo_get(struct ttm_buffer_object *bo)
 {
-	kref_get(&bo->kref);
+	drm_gem_object_get(&bo->base);
 }
=20
 /**
@@ -50,11 +58,14 @@ static inline void ttm_bo_get(struct ttm_buffer_object=
 *bo)
 static inline __must_check struct ttm_buffer_object *
 ttm_bo_get_unless_zero(struct ttm_buffer_object *bo)
 {
-	if (!kref_get_unless_zero(&bo->kref))
+	if (!kref_get_unless_zero(&bo->base.refcount))
 		return NULL;
 	return bo;
 }
=20
-void ttm_bo_put(struct ttm_buffer_object *bo);
+static inline void ttm_bo_put(struct ttm_buffer_object *bo)
+{
+	drm_gem_object_put(&bo->base);
+}
=20
 #endif
diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_b=
o_util.c
index 3e3c201a02226..7ed085adf1c9b 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -41,6 +41,18 @@
=20
 #include "ttm_bo_internal.h"
=20
+static void ttm_transfer_object_free(struct drm_gem_object *obj)
+{
+	struct ttm_buffer_object *bo =3D
+		container_of(obj, struct ttm_buffer_object, base);
+
+	ttm_bo_fini(bo);
+}
+
+const struct drm_gem_object_funcs ttm_transfer_object_funcs =3D {
+	.free =3D ttm_transfer_object_free,
+};
+
 struct ttm_transfer_obj {
 	struct ttm_buffer_object base;
 	struct ttm_buffer_object *bo;
@@ -247,7 +259,8 @@ static int ttm_buffer_object_transfer(struct ttm_buffe=
r_object *bo,
 	atomic_inc(&ttm_glob.bo_count);
 	drm_vma_node_reset(&fbo->base.base.vma_node);
=20
-	kref_init(&fbo->base.kref);
+	kref_init(&fbo->base.base.refcount);
+	fbo->base.base.funcs =3D &ttm_transfer_object_funcs;
 	fbo->base.destroy =3D &ttm_transfered_destroy;
 	fbo->base.pin_count =3D 0;
 	if (bo->type !=3D ttm_bo_type_sg)
diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index 85e6d9a0f575b..5843f850339c7 100644
=2D-- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -1651,7 +1651,7 @@ static bool xe_ttm_bo_lock_in_destructor(struct ttm_=
buffer_object *ttm_bo)
 	struct xe_device *xe =3D ttm_to_xe_device(ttm_bo->bdev);
 	bool locked;
=20
-	xe_assert(xe, !kref_read(&ttm_bo->kref));
+	xe_assert(xe, !kref_read(&ttm_bo->base.refcount));
=20
 	/*
 	 * We can typically only race with TTM trylocking under the
diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
index 8310bc3d55f90..1eae9eea5ff32 100644
=2D-- a/include/drm/ttm/ttm_bo.h
+++ b/include/drm/ttm/ttm_bo.h
@@ -78,11 +78,8 @@ enum ttm_bo_type {
  * @type: The bo type.
  * @page_alignment: Page alignment.
  * @destroy: Destruction function. If NULL, kfree is used.
- * @kref: Reference count of this buffer object. When this refcount reach=
es
- * zero, the object is destroyed or put on the delayed delete list.
  * @resource: structure describing current placement.
  * @ttm: TTM structure holding system pages.
- * @deleted: True if the object is only a zombie and already deleted.
  * @bulk_move: The bulk move object.
  * @priority: Priority for LRU, BOs with lower priority are evicted first=
.
  * @pin_count: Pin count.
@@ -109,17 +106,11 @@ struct ttm_buffer_object {
 	uint32_t page_alignment;
 	void (*destroy) (struct ttm_buffer_object *);
=20
-	/*
-	* Members not needing protection.
-	*/
-	struct kref kref;
-
 	/*
 	 * Members protected by the bo::resv::reserved lock.
 	 */
 	struct ttm_resource *resource;
 	struct ttm_tt *ttm;
-	bool deleted;
 	struct ttm_lru_bulk_move *bulk_move;
 	unsigned priority;
 	unsigned pin_count;

=2D-=20
2.55.0

