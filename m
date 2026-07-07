Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YJQYAmvuTGrosAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:17:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A9C71B46A
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:17:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=f1NtG0Pc;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1217310EC96;
	Tue,  7 Jul 2026 12:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 313B510EC96;
 Tue,  7 Jul 2026 12:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783426664; x=1814962664;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Du2diOCDPbrznkMPMFjrugVgoonoF5/iBi5TLHJk/cc=;
 b=f1NtG0PcZ2CnFFU1+HgR/R5F8VzXeibKPTDLCfjGOVKU59KTCWIFgiNi
 a7FwenRQBNc+yIQMQwtpTRCu2ZTg5ymjjBLZopYpBnDLpu2vlkTD1ziLw
 KZ9FAUwaPF2dck809SCF/uClbT9OiiauH0doQxPcfIOffVtkpr0WrhB4S
 0qvdIBsjikn+O1BvezudsSzlfG1TegcuvTiAgs0XTvDFZVOt8JBRnnlpt
 +bgIguKeWubPjPk3DsSZj6YjJPRhZEb8ExVgpRFjz6/kUV3Rz+7isO7xH
 s7GzWZZi9c2MRMKbxKTIVtMdURdbPwxaAIuPVS6TjcASdL4rkqr3yjG4s A==;
X-CSE-ConnectionGUID: t0gilYiITtK1xRsbzBM8Lw==
X-CSE-MsgGUID: ci/Ja0+URO2AuxCIPEylRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="95450173"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="95450173"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:17:43 -0700
X-CSE-ConnectionGUID: /aAFJNYvRr+DKJqCk74ZNQ==
X-CSE-MsgGUID: 8leybw+GTTCL1M4c52cLIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="247605256"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.199])
 ([10.245.244.199])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:17:39 -0700
Message-ID: <82381da3faee2dde0319a5e9c55119f5cf206dd7.camel@linux.intel.com>
Subject: Re: [PATCH 05/10] drm/ttm: switch to
 ttm_bo_lru_for_each_reserved_guarded for swapout
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Natalie Vock <natalie.vock@gmx.de>, Maarten Lankhorst	
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula	
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>,  Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Christian Koenig	
 <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>, Matthew Auld	
 <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Alex
 Deucher	 <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org
Date: Tue, 07 Jul 2026 14:17:37 +0200
In-Reply-To: <20260703-ttm_2_drm_exec-v1-5-43685ac1286b@gmx.de>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-5-43685ac1286b@gmx.de>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmx.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.hellstrom@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,linux.intel.com:from_mime,amd.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,gmx.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 87A9C71B46A

On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
> From: Christian K=C3=B6nig <christian.koenig@amd.com>
>=20
> Instead of the walker wrapper use the underlying foreach. Saves us
> quite
> a bunch of complexity and loc.
>=20
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>

Reviewed-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>


> ---
> =C2=A0drivers/gpu/drm/ttm/ttm_bo.c=C2=A0=C2=A0=C2=A0=C2=A0 | 58 +++++++--=
---------------------
> ----------
> =C2=A0drivers/gpu/drm/ttm/ttm_device.c | 19 ++++++++++---
> =C2=A0include/drm/ttm/ttm_bo.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 5 ++--
> =C2=A03 files changed, 27 insertions(+), 55 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
> b/drivers/gpu/drm/ttm/ttm_bo.c
> index 1fb8c53da0362..24c52df169ac8 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -1080,25 +1080,18 @@ int ttm_bo_wait_ctx(struct ttm_buffer_object
> *bo, struct ttm_operation_ctx *ctx)
> =C2=A0EXPORT_SYMBOL(ttm_bo_wait_ctx);
> =C2=A0
> =C2=A0/**
> - * struct ttm_bo_swapout_walk - Parameters for the swapout walk
> + * ttm_bo_swapout() - Swap out buffer objects on the LRU list to
> shmem.
> + * @bo: The buffer to swap out.
> + * @ctx: The ttm_operation_ctx governing the swapout operation.
> + * @gfp_flags: The gfp flags used for shmem page allocations.
> + *
> + * Return: The number of bytes actually swapped out, or negative
> error code
> + * on error.
> =C2=A0 */
> -struct ttm_bo_swapout_walk {
> -	/** @walk: The walk base parameters. */
> -	struct ttm_lru_walk walk;
> -	/** @gfp_flags: The gfp flags to use for ttm_tt_swapout() */
> -	gfp_t gfp_flags;
> -	/** @hit_low: Whether we should attempt to swap BO's with
> low watermark threshold */
> -	/** @evict_low: If we cannot swap a bo when @try_low is
> false (first pass) */
> -	bool hit_low, evict_low;
> -};
> -
> -static s64
> -ttm_bo_swapout_cb(struct ttm_lru_walk *walk, struct
> ttm_buffer_object *bo)
> +s64 ttm_bo_swapout(struct ttm_buffer_object *bo, struct
> ttm_operation_ctx *ctx,
> +		=C2=A0=C2=A0 gfp_t gfp_flags)
> =C2=A0{
> =C2=A0	struct ttm_place place =3D { .mem_type =3D bo->resource-
> >mem_type };
> -	struct ttm_bo_swapout_walk *swapout_walk =3D
> -		container_of(walk, typeof(*swapout_walk), walk);
> -	struct ttm_operation_ctx *ctx =3D walk->arg.ctx;
> =C2=A0	struct ttm_device *bdev =3D bo->bdev;
> =C2=A0	struct ttm_tt *tt =3D bo->ttm;
> =C2=A0	s64 ret;
> @@ -1166,7 +1159,7 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk,
> struct ttm_buffer_object *bo)
> =C2=A0		bdev->funcs->swap_notify(bo);
> =C2=A0
> =C2=A0	if (ttm_tt_is_populated(tt)) {
> -		ret =3D ttm_tt_swapout(bdev, tt, swapout_walk-
> >gfp_flags);
> +		ret =3D ttm_tt_swapout(bdev, tt, gfp_flags);
> =C2=A0		if (!ret) {
> =C2=A0			spin_lock(&bdev->lru_lock);
> =C2=A0			ttm_resource_del_bulk_move_unevictable(bo-
> >resource, bo);
> @@ -1183,37 +1176,6 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk,
> struct ttm_buffer_object *bo)
> =C2=A0	return ret;
> =C2=A0}
> =C2=A0
> -/**
> - * ttm_bo_swapout() - Swap out buffer objects on the LRU list to
> shmem.
> - * @bdev: The ttm device.
> - * @ctx: The ttm_operation_ctx governing the swapout operation.
> - * @man: The resource manager whose resources / buffer objects are
> - * goint to be swapped out.
> - * @gfp_flags: The gfp flags used for shmem page allocations.
> - * @target: The desired number of pages to swap out.
> - *
> - * Return: The number of pages actually swapped out, or negative
> error code
> - * on error.
> - */
> -s64 ttm_bo_swapout(struct ttm_device *bdev, struct ttm_operation_ctx
> *ctx,
> -		=C2=A0=C2=A0 struct ttm_resource_manager *man, gfp_t
> gfp_flags,
> -		=C2=A0=C2=A0 s64 target)
> -{
> -	struct ttm_bo_swapout_walk swapout_walk =3D {
> -		.walk =3D {
> -			.process_bo =3D ttm_bo_swapout_cb,
> -			.arg =3D {
> -				.ctx =3D ctx,
> -				.trylock_only =3D true,
> -			},
> -		},
> -		.gfp_flags =3D gfp_flags,
> -	};
> -
> -	return ttm_lru_walk_for_evict(&swapout_walk.walk, bdev, man,
> target);
> -}
> -EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_bo_swapout);
> -
> =C2=A0void ttm_bo_tt_destroy(struct ttm_buffer_object *bo)
> =C2=A0{
> =C2=A0	if (bo->ttm =3D=3D NULL)
> diff --git a/drivers/gpu/drm/ttm/ttm_device.c
> b/drivers/gpu/drm/ttm/ttm_device.c
> index d3bfb9a696a74..e4188e2ee7ab1 100644
> --- a/drivers/gpu/drm/ttm/ttm_device.c
> +++ b/drivers/gpu/drm/ttm/ttm_device.c
> @@ -171,6 +171,12 @@ int ttm_device_swapout(struct ttm_device *bdev,
> struct ttm_operation_ctx *ctx,
> =C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gfp_t gfp_flags)
> =C2=A0{
> =C2=A0	struct ttm_resource_manager *man;
> +	struct ttm_bo_lru_cursor cursor;
> +	struct ttm_buffer_object *bo;
> +	struct ttm_lru_walk_arg arg =3D {
> +		.ctx =3D ctx,
> +		.trylock_only =3D true
> +	};
> =C2=A0	unsigned i;
> =C2=A0	s64 lret;
> =C2=A0
> @@ -179,10 +185,15 @@ int ttm_device_swapout(struct ttm_device *bdev,
> struct ttm_operation_ctx *ctx,
> =C2=A0		if (!man || !man->use_tt)
> =C2=A0			continue;
> =C2=A0
> -		lret =3D ttm_bo_swapout(bdev, ctx, man, gfp_flags, 1);
> -		/* Can be both positive (num_pages) and negative
> (error) */
> -		if (lret)
> -			return lret;
> +		ttm_bo_lru_for_each_reserved_guarded(&cursor, man,
> &arg, bo) {
> +			lret =3D ttm_bo_swapout(bo, ctx, gfp_flags);
> +				continue;
> +			/* Can be both positive (num_pages) and
> negative (error) */
> +			if (lret && lret !=3D -EBUSY && lret !=3D -
> EALREADY)
> +				return lret;
> +		}
> +		if (IS_ERR(bo))
> +			return PTR_ERR(bo);
> =C2=A0	}
> =C2=A0	return 0;
> =C2=A0}
> diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
> index 0fcd5082a7080..bbed63064c9a9 100644
> --- a/include/drm/ttm/ttm_bo.h
> +++ b/include/drm/ttm/ttm_bo.h
> @@ -408,9 +408,8 @@ void *ttm_bo_kmap_try_from_panic(struct
> ttm_buffer_object *bo, unsigned long pag
> =C2=A0int ttm_bo_vmap(struct ttm_buffer_object *bo, struct iosys_map
> *map);
> =C2=A0void ttm_bo_vunmap(struct ttm_buffer_object *bo, struct iosys_map
> *map);
> =C2=A0int ttm_bo_mmap_obj(struct vm_area_struct *vma, struct
> ttm_buffer_object *bo);
> -s64 ttm_bo_swapout(struct ttm_device *bdev, struct ttm_operation_ctx
> *ctx,
> -		=C2=A0=C2=A0 struct ttm_resource_manager *man, gfp_t
> gfp_flags,
> -		=C2=A0=C2=A0 s64 target);
> +s64 ttm_bo_swapout(struct ttm_buffer_object *bo, struct
> ttm_operation_ctx *ctx,
> +		=C2=A0=C2=A0 gfp_t gfp_flags);
> =C2=A0void ttm_bo_pin(struct ttm_buffer_object *bo);
> =C2=A0void ttm_bo_unpin(struct ttm_buffer_object *bo);
> =C2=A0int ttm_bo_evict_first(struct ttm_device *bdev,
