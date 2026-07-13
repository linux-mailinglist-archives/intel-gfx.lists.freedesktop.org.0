Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qUUsNQXrVGqmhAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 15:41:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA0474BBF9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 15:41:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=n+pTa9I8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1939210E5ED;
	Mon, 13 Jul 2026 13:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06ABA10E5E9;
 Mon, 13 Jul 2026 13:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783950081; x=1815486081;
 h=message-id:subject:from:to:date:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=HNCSf+8mFzTX+IBoUmO+EGOSM+uBiVN8uDNdDDmkHSM=;
 b=n+pTa9I8sAdh4J+Oj1FEczIGGR/k24HkVYTtCWu47162ZRiLH3IuNZro
 0Yohqm7SVonOzIMncMbNRBnVZ92H0tnwWQVSG6fp8C6BVJV8rchzsgozo
 oIglWit6H5l/R45Ws02ieRn4rploJXmv6N71/pxDUb4fyTm0UAqO5+lc7
 0AelJjyWZbDS0WftJS4aJgvhBZywi8AaaVf0g+JKAujh1+bd/3Vco247t
 HO/Ci0aEZIDQoBHUL4ZD6gm1zLyYK3+q+nakanzo4MeVs6QrtUCNKNv45
 SjvxB0i6srUC6GDjsRiOH4/ggge71w8G9yntoT04pKPtn+abr7vjG/go1 A==;
X-CSE-ConnectionGUID: xlCMsACPQeWcGrwIL44OUA==
X-CSE-MsgGUID: KAv3woz2QVqz5b+t/8kVhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="110101977"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="110101977"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 06:41:20 -0700
X-CSE-ConnectionGUID: 1ZcerACKQh6V4Vher9QbhA==
X-CSE-MsgGUID: Il+pedYaREa7obTVObY84Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="259865504"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO [10.245.245.123])
 ([10.245.245.123])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 06:41:18 -0700
Message-ID: <051148cb56c32c89b6d06458144124d08d4b28d6.camel@linux.intel.com>
Subject: Re: [PATCH 04/12] drm/ttm: Switch LRU cursor to track dma_resv
 instead of buffer objects
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: christian.koenig@amd.com, dakr@kernel.org, ecourtney@nvidia.com, 
 simona@ffwll.ch, matthew.brost@intel.com, nat@pixelcluster.dev,
 airlied@gmail.com, 	dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, 	intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 	amd-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2026 15:40:55 +0200
In-Reply-To: <20260710190752.2355-5-christian.koenig@amd.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-5-christian.koenig@amd.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,nvidia.com,ffwll.ch,intel.com,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.hellstrom@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linux.intel.com:from_mime,linux.intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7EA0474BBF9

On Fri, 2026-07-10 at 20:52 +0200, Christian K=C3=B6nig wrote:
> Refactor the LRU cursor to hold references to dma_resv directly while
> locking it rather than the buffer object.
>=20
> This avoid the need to grab a reference to the BO and so allows
> handling
> of BOs with zero reference count.
>=20
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> ---
> =C2=A0drivers/gpu/drm/ttm/ttm_bo_util.c=C2=A0 | 124 +++++++++++++++------=
------
> --
> =C2=A0drivers/gpu/drm/ttm/ttm_resource.c |=C2=A0 18 +++++
> =C2=A0include/drm/ttm/ttm_bo.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 10 +--
> =C2=A0include/drm/ttm/ttm_resource.h=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0 2 +
> =C2=A04 files changed, 87 insertions(+), 67 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> b/drivers/gpu/drm/ttm/ttm_bo_util.c
> index 029c218f9fb47..1f7361604b552 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> @@ -819,19 +819,17 @@ int ttm_bo_pipeline_gutting(struct
> ttm_buffer_object *bo)
> =C2=A0}
> =C2=A0
> =C2=A0static bool ttm_lru_walk_trylock(struct ttm_bo_lru_cursor *curs,
> -				 struct ttm_buffer_object *bo)
> +				 struct dma_resv *resv)
> =C2=A0{
> =C2=A0	struct ttm_operation_ctx *ctx =3D curs->arg->ctx;
> =C2=A0
> -	curs->needs_unlock =3D false;
> -
> -	if (dma_resv_trylock(bo->base.resv)) {
> -		curs->needs_unlock =3D true;
> +	if (dma_resv_trylock(resv)) {
> +		curs->resv =3D dma_resv_get(resv);
> =C2=A0		return true;
> =C2=A0	}
> =C2=A0
> -	if (bo->base.resv =3D=3D ctx->resv && ctx->allow_res_evict) {
> -		dma_resv_assert_held(bo->base.resv);
> +	if (resv =3D=3D ctx->resv && ctx->allow_res_evict) {
> +		dma_resv_assert_held(resv);
> =C2=A0		return true;
> =C2=A0	}
> =C2=A0
> @@ -839,18 +837,18 @@ static bool ttm_lru_walk_trylock(struct
> ttm_bo_lru_cursor *curs,
> =C2=A0}
> =C2=A0
> =C2=A0static int ttm_lru_walk_ticketlock(struct ttm_bo_lru_cursor *curs,
> -				=C2=A0=C2=A0 struct ttm_buffer_object *bo)
> +				=C2=A0=C2=A0 struct dma_resv *resv)
> =C2=A0{
> =C2=A0	struct ttm_lru_walk_arg *arg =3D curs->arg;
> =C2=A0	int ret;
> =C2=A0
> =C2=A0	if (arg->ctx->interruptible)
> -		ret =3D dma_resv_lock_interruptible(bo->base.resv,
> arg->ticket);
> +		ret =3D dma_resv_lock_interruptible(resv, arg-
> >ticket);
> =C2=A0	else
> -		ret =3D dma_resv_lock(bo->base.resv, arg->ticket);
> +		ret =3D dma_resv_lock(resv, arg->ticket);
> =C2=A0
> =C2=A0	if (!ret) {
> -		curs->needs_unlock =3D true;
> +		curs->resv =3D dma_resv_get(resv);
> =C2=A0		/*
> =C2=A0		 * Only a single ticketlock per loop. Ticketlocks
> are prone
> =C2=A0		 * to return -EDEADLK causing the eviction to fail,
> so
> @@ -920,14 +918,16 @@ s64 ttm_lru_walk_for_evict(struct ttm_lru_walk
> *walk, struct ttm_device *bdev,
> =C2=A0}
> =C2=A0EXPORT_SYMBOL(ttm_lru_walk_for_evict);
> =C2=A0
> -static void ttm_bo_lru_cursor_cleanup_bo(struct ttm_bo_lru_cursor
> *curs)
> +static void ttm_bo_lru_cursor_cleanup(struct ttm_bo_lru_cursor
> *curs)
> =C2=A0{
> -	struct ttm_buffer_object *bo =3D curs->bo;
> +	if (curs->resv) {
> +		dma_resv_unlock(curs->resv);
> +		dma_resv_put(curs->resv);
> +		curs->resv =3D NULL;
> +	}
> =C2=A0
> -	if (bo) {
> -		if (curs->needs_unlock)
> -			dma_resv_unlock(bo->base.resv);
> -		ttm_bo_put(bo);
> +	if (curs->bo) {
> +		drm_gem_object_put(&curs->bo->base);
> =C2=A0		curs->bo =3D NULL;
> =C2=A0	}
> =C2=A0}
> @@ -941,7 +941,7 @@ void ttm_bo_lru_cursor_fini(struct
> ttm_bo_lru_cursor *curs)
> =C2=A0{
> =C2=A0	spinlock_t *lru_lock =3D &curs->res_curs.man->bdev->lru_lock;
> =C2=A0
> -	ttm_bo_lru_cursor_cleanup_bo(curs);
> +	ttm_bo_lru_cursor_cleanup(curs);
> =C2=A0	spin_lock(lru_lock);
> =C2=A0	ttm_resource_cursor_fini(&curs->res_curs);
> =C2=A0	spin_unlock(lru_lock);
> @@ -972,21 +972,18 @@ ttm_bo_lru_cursor_init(struct ttm_bo_lru_cursor
> *curs,
> =C2=A0EXPORT_SYMBOL(ttm_bo_lru_cursor_init);
> =C2=A0
> =C2=A0static struct ttm_buffer_object *
> -__ttm_bo_lru_cursor_next(struct ttm_bo_lru_cursor *curs)
> +__ttm_bo_lru_cursor_iter(struct ttm_bo_lru_cursor *curs, bool first)
> =C2=A0{
> =C2=A0	spinlock_t *lru_lock =3D &curs->res_curs.man->bdev->lru_lock;
> -	struct ttm_resource *res =3D NULL;
> -	struct ttm_buffer_object *bo;
> =C2=A0	struct ttm_lru_walk_arg *arg =3D curs->arg;
> -	bool first =3D !curs->bo;
> -
> -	ttm_bo_lru_cursor_cleanup_bo(curs);
> +	int ret;
> =C2=A0
> -	spin_lock(lru_lock);
> =C2=A0	for (;;) {
> -		int mem_type, ret =3D 0;
> -		bool bo_locked =3D false;
> +		struct ttm_resource *res;
> +
> +		ttm_bo_lru_cursor_cleanup(curs);
> =C2=A0
> +		spin_lock(lru_lock);
> =C2=A0		if (first) {
> =C2=A0			res =3D ttm_resource_manager_first(&curs-
> >res_curs);
> =C2=A0			first =3D false;
> @@ -996,43 +993,48 @@ __ttm_bo_lru_cursor_next(struct
> ttm_bo_lru_cursor *curs)
> =C2=A0		if (!res)
> =C2=A0			break;
> =C2=A0
> -		bo =3D res->bo;
> -		if (ttm_lru_walk_trylock(curs, bo))
> -			bo_locked =3D true;
> -		else if (!arg->ticket || arg->ctx->no_wait_gpu ||
> arg->trylock_only)
> -			continue;
> -
> -		if (!ttm_bo_get_unless_zero(bo)) {
> -			if (curs->needs_unlock)
> -				dma_resv_unlock(bo->base.resv);
> -			continue;
> +		if (!ttm_lru_walk_trylock(curs, res->bo->base.resv))
> {
> +			struct dma_resv *resv;
> +
> +			if (!arg->ticket || arg->ctx->no_wait_gpu ||
> +			=C2=A0=C2=A0=C2=A0 arg->trylock_only) {
> +				spin_unlock(lru_lock);
> +				continue;
> +			}
> +
> +			resv =3D dma_resv_get(res->bo->base.resv);
> +			spin_unlock(lru_lock);
> +
> +			ret =3D ttm_lru_walk_ticketlock(curs, resv);
> +			if (ret && ret !=3D -EALREADY)
> +				return ERR_PTR(ret);
> +
> +			/*
> +			 * We need to double check that we still
> have the same
> +			 * dma_resv object.

While I think this would actually work, we need documentation and
asserts of what exactly we're relying on here to keep the bo alive.
Otherwise future work will most likely break something.

Thanks,
Thomas


> +			 */
> +			spin_lock(lru_lock);
> +			res =3D ttm_resource_manager_current(&curs-
> >res_curs);
> +			if (ret || !res || res->bo->base.resv !=3D
> resv) {
> +				spin_unlock(lru_lock);
> +				dma_resv_put(resv);
> +				continue;
> +			}
> +			dma_resv_put(resv);
> =C2=A0		}
> -
> -		mem_type =3D res->mem_type;
> =C2=A0		spin_unlock(lru_lock);
> -		if (!bo_locked)
> -			ret =3D ttm_lru_walk_ticketlock(curs, bo);
> +
> +		/* Grab a GEM reference to the BO if it isn't
> already deleted */



> +		if (kref_get_unless_zero(&res->bo->base.refcount))
> +			curs->bo =3D res->bo;
> =C2=A0
> =C2=A0		/*
> -		 * Note that in between the release of the lru lock
> and the
> -		 * ticketlock, the bo may have switched resource,
> -		 * and also memory type, since the resource may have
> been
> -		 * freed and allocated again with a different memory
> type.
> -		 * In that case, just skip it.
> +		 * The BO is now locked so it can't be released any
> more until
> +		 * we drop both the lock and the eventual GEM
> reference.
> =C2=A0		 */
> -		curs->bo =3D bo;
> -		if (!ret && bo->resource && bo->resource->mem_type
> =3D=3D mem_type)
> -			return bo;
> -
> -		ttm_bo_lru_cursor_cleanup_bo(curs);
> -		if (ret && ret !=3D -EALREADY)
> -			return ERR_PTR(ret);
> -
> -		spin_lock(lru_lock);
> +		return res->bo;
> =C2=A0	}
> -
> -	spin_unlock(lru_lock);
> -	return res ? bo : NULL;
> +	return NULL;
> =C2=A0}
> =C2=A0
> =C2=A0/**
> @@ -1046,7 +1048,7 @@ __ttm_bo_lru_cursor_next(struct
> ttm_bo_lru_cursor *curs)
> =C2=A0 */
> =C2=A0struct ttm_buffer_object *ttm_bo_lru_cursor_next(struct
> ttm_bo_lru_cursor *curs)
> =C2=A0{
> -	return __ttm_bo_lru_cursor_next(curs);
> +	return __ttm_bo_lru_cursor_iter(curs, false);
> =C2=A0}
> =C2=A0EXPORT_SYMBOL(ttm_bo_lru_cursor_next);
> =C2=A0
> @@ -1060,8 +1062,8 @@ EXPORT_SYMBOL(ttm_bo_lru_cursor_next);
> =C2=A0 */
> =C2=A0struct ttm_buffer_object *ttm_bo_lru_cursor_first(struct
> ttm_bo_lru_cursor *curs)
> =C2=A0{
> -	ttm_bo_lru_cursor_cleanup_bo(curs);
> -	return __ttm_bo_lru_cursor_next(curs);
> +	ttm_bo_lru_cursor_cleanup(curs);
> +	return __ttm_bo_lru_cursor_iter(curs, true);
> =C2=A0}
> =C2=A0EXPORT_SYMBOL(ttm_bo_lru_cursor_first);
> =C2=A0
> diff --git a/drivers/gpu/drm/ttm/ttm_resource.c
> b/drivers/gpu/drm/ttm/ttm_resource.c
> index 154d6739256f8..4a765b25472c3 100644
> --- a/drivers/gpu/drm/ttm/ttm_resource.c
> +++ b/drivers/gpu/drm/ttm/ttm_resource.c
> @@ -714,6 +714,24 @@ ttm_resource_manager_next(struct
> ttm_resource_cursor *cursor)
> =C2=A0	return NULL;
> =C2=A0}
> =C2=A0
> +/* TODO */
> +struct ttm_resource *
> +ttm_resource_manager_current(struct ttm_resource_cursor *cursor)
> +{
> +	struct ttm_resource_manager *man =3D cursor->man;
> +	struct ttm_lru_item *lru;
> +
> +	lockdep_assert_held(&man->bdev->lru_lock);
> +
> +	lru =3D &cursor->hitch;
> +	list_for_each_entry_continue_reverse(lru, &man->lru[cursor-
> >priority],
> +					=C2=A0=C2=A0=C2=A0=C2=A0 link) {
> +		if (ttm_lru_item_is_res(lru))
> +			return ttm_lru_item_to_res(lru);
> +	}
> +	return NULL;
> +}
> +
> =C2=A0/**
> =C2=A0 * ttm_lru_first_res_or_null() - Return the first resource on an lr=
u
> list
> =C2=A0 * @head: The list head of the lru list.
> diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
> index 8310bc3d55f90..30e835414e721 100644
> --- a/include/drm/ttm/ttm_bo.h
> +++ b/include/drm/ttm/ttm_bo.h
> @@ -488,15 +488,13 @@ struct ttm_bo_lru_cursor {
> =C2=A0	/** @res_curs: Embedded struct ttm_resource_cursor. */
> =C2=A0	struct ttm_resource_cursor res_curs;
> =C2=A0	/**
> -	 * @bo: Buffer object pointer if a buffer object is
> refcounted,
> -	 * NULL otherwise.
> +	 * @resv: reference to the locked dma_resv
> =C2=A0	 */
> -	struct ttm_buffer_object *bo;
> +	struct dma_resv *resv;
> =C2=A0	/**
> -	 * @needs_unlock: Valid iff @bo !=3D NULL. The bo resv needs
> -	 * unlock before the next iteration or after loop exit.
> +	 * @bo: TTM BO with GEM reference, NULL for deleted BOs
> =C2=A0	 */
> -	bool needs_unlock;
> +	struct ttm_buffer_object *bo;
> =C2=A0	/** @arg: Pointer to common BO LRU walk arguments. */
> =C2=A0	struct ttm_lru_walk_arg *arg;
> =C2=A0};
> diff --git a/include/drm/ttm/ttm_resource.h
> b/include/drm/ttm/ttm_resource.h
> index a5d386583fb6e..e8e9c8b81ce4b 100644
> --- a/include/drm/ttm/ttm_resource.h
> +++ b/include/drm/ttm/ttm_resource.h
> @@ -488,6 +488,8 @@ struct ttm_resource *
> =C2=A0ttm_resource_manager_first(struct ttm_resource_cursor *cursor);
> =C2=A0struct ttm_resource *
> =C2=A0ttm_resource_manager_next(struct ttm_resource_cursor *cursor);
> +struct ttm_resource *
> +ttm_resource_manager_current(struct ttm_resource_cursor *cursor);
> =C2=A0
> =C2=A0struct ttm_resource *
> =C2=A0ttm_lru_first_res_or_null(struct list_head *head);
