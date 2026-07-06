Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nmphDuegS2o6XQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 14:34:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FBE71094F
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 14:34:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bPJVyIhY;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D321210E16D;
	Mon,  6 Jul 2026 12:34:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A04BE8992E;
 Mon,  6 Jul 2026 12:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783341282; x=1814877282;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=AjdEjDtBFbvjvVxJoJ5SlDaBQB688NDaizFmhEW3Nis=;
 b=bPJVyIhYo50iFYH6wqToOl1y23voNs92Plwhrr9x3CvgiGnUYyflHATa
 iA3CDFNFsdGBIa00AeQhW1KwISmZSsjg5qp7+bjvy/j+94atazerZVTm3
 lPTmMEpFtSsew0ZoG3E0XM4nqIvEefn+O8dik6q0DLYmGMx1f4Ax4mhYu
 Dz0ZYpQKN9722f8AkWpA1br1qhhmN0XlMu4qy2wdcXIbfJ/oVmlOzUMJG
 ebjcNIpvu1lzvIhuKaLP+k2ZZlgi71AZXCHa66WhsXN8peN8iFQqGudeq
 Tzx86UQ/C8QJDZf2+98Xf8Znn27DWs9ZbpU8Nh44waNuk9NliluMSXMKP Q==;
X-CSE-ConnectionGUID: ScrV74j9Syic1+hpJ7LmKw==
X-CSE-MsgGUID: xEFcI8ctRFKT6raGlGU7og==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="94577997"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="94577997"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 05:34:41 -0700
X-CSE-ConnectionGUID: U4nwPfDJRziJpg6YmuuCcQ==
X-CSE-MsgGUID: fPhyb6icQpe9KQjbrpTEQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="253805642"
Received: from conormcd-mobl2.ger.corp.intel.com (HELO [10.245.244.132])
 ([10.245.244.132])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 05:34:36 -0700
Message-ID: <247fece24913008be6d42ab0b6f19da1cb95abe1.camel@linux.intel.com>
Subject: Re: [PATCH 03/10] drm/ttm: remove ttm_lru_walk_ops
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
Date: Mon, 06 Jul 2026 14:34:13 +0200
In-Reply-To: <20260703-ttm_2_drm_exec-v1-3-43685ac1286b@gmx.de>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-3-43685ac1286b@gmx.de>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,intel.com:dkim,gmx.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D2FBE71094F

Hi,

On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
> From: Christian K=C3=B6nig <christian.koenig@amd.com>
>=20
> It's just another layer of indirection.
>=20
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>

Personally I don't have a strong opinion on this, but the reason for
separating out the ops is that adding function pointers in the walk
iterator itself was once pushed back on quite forcefully by Linus when
I tried to do that in mm/pagewalk. Claiming for various reasons the
standard way of doing that in Linux is using a const ops struct that
ends up in unmodifiable memory.

/Thomas


> ---
> =C2=A0drivers/gpu/drm/ttm/ttm_bo.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 12 ++-=
---------
> =C2=A0drivers/gpu/drm/ttm/ttm_bo_util.c |=C2=A0 2 +-
> =C2=A0include/drm/ttm/ttm_bo.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 | 34 ++++++++++++++---------------
> -----
> =C2=A03 files changed, 17 insertions(+), 31 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
> b/drivers/gpu/drm/ttm/ttm_bo.c
> index 2b470c1746f60..1fb8c53da0362 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -545,10 +545,6 @@ static s64 ttm_bo_evict_cb(struct ttm_lru_walk
> *walk, struct ttm_buffer_object *
> =C2=A0	return lret;
> =C2=A0}
> =C2=A0
> -static const struct ttm_lru_walk_ops ttm_evict_walk_ops =3D {
> -	.process_bo =3D ttm_bo_evict_cb,
> -};
> -
> =C2=A0static int ttm_bo_evict_alloc(struct ttm_device *bdev,
> =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct ttm_resource_manager *man,
> =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct ttm_place *place,
> @@ -560,7 +556,7 @@ static int ttm_bo_evict_alloc(struct ttm_device
> *bdev,
> =C2=A0{
> =C2=A0	struct ttm_bo_evict_walk evict_walk =3D {
> =C2=A0		.walk =3D {
> -			.ops =3D &ttm_evict_walk_ops,
> +			.process_bo =3D ttm_bo_evict_cb,
> =C2=A0			.arg =3D {
> =C2=A0				.ctx =3D ctx,
> =C2=A0				.ticket =3D ticket,
> @@ -1187,10 +1183,6 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk,
> struct ttm_buffer_object *bo)
> =C2=A0	return ret;
> =C2=A0}
> =C2=A0
> -const struct ttm_lru_walk_ops ttm_swap_ops =3D {
> -	.process_bo =3D ttm_bo_swapout_cb,
> -};
> -
> =C2=A0/**
> =C2=A0 * ttm_bo_swapout() - Swap out buffer objects on the LRU list to
> shmem.
> =C2=A0 * @bdev: The ttm device.
> @@ -1209,7 +1201,7 @@ s64 ttm_bo_swapout(struct ttm_device *bdev,
> struct ttm_operation_ctx *ctx,
> =C2=A0{
> =C2=A0	struct ttm_bo_swapout_walk swapout_walk =3D {
> =C2=A0		.walk =3D {
> -			.ops =3D &ttm_swap_ops,
> +			.process_bo =3D ttm_bo_swapout_cb,
> =C2=A0			.arg =3D {
> =C2=A0				.ctx =3D ctx,
> =C2=A0				.trylock_only =3D true,
> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> b/drivers/gpu/drm/ttm/ttm_bo_util.c
> index 7ed085adf1c9b..29f068944a972 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> @@ -919,7 +919,7 @@ s64 ttm_lru_walk_for_evict(struct ttm_lru_walk
> *walk, struct ttm_device *bdev,
> =C2=A0	s64 lret;
> =C2=A0
> =C2=A0	ttm_bo_lru_for_each_reserved_guarded(&cursor, man, &walk-
> >arg, bo) {
> -		lret =3D walk->ops->process_bo(walk, bo);
> +		lret =3D walk->process_bo(walk, bo);
> =C2=A0		if (lret =3D=3D -EBUSY || lret =3D=3D -EALREADY)
> =C2=A0			lret =3D 0;
> =C2=A0		progress =3D (lret < 0) ? lret : progress + lret;
> diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
> index 1eae9eea5ff32..0fcd5082a7080 100644
> --- a/include/drm/ttm/ttm_bo.h
> +++ b/include/drm/ttm/ttm_bo.h
> @@ -189,24 +189,6 @@ struct ttm_operation_ctx {
> =C2=A0	uint64_t bytes_moved;
> =C2=A0};
> =C2=A0
> -struct ttm_lru_walk;
> -
> -/** struct ttm_lru_walk_ops - Operations for a LRU walk. */
> -struct ttm_lru_walk_ops {
> -	/**
> -	 * process_bo - Process this bo.
> -	 * @walk: struct ttm_lru_walk describing the walk.
> -	 * @bo: A locked and referenced buffer object.
> -	 *
> -	 * Return: Negative error code on error, User-defined
> positive value
> -	 * (typically, but not always, size of the processed bo) on
> success.
> -	 * On success, the returned values are summed by the walk
> and the
> -	 * walk exits when its target is met.
> -	 * 0 also indicates success, -EBUSY means this bo was
> skipped.
> -	 */
> -	s64 (*process_bo)(struct ttm_lru_walk *walk, struct
> ttm_buffer_object *bo);
> -};
> -
> =C2=A0/**
> =C2=A0 * struct ttm_lru_walk_arg - Common part for the variants of BO LRU
> walk.
> =C2=A0 */
> @@ -223,8 +205,20 @@ struct ttm_lru_walk_arg {
> =C2=A0 * struct ttm_lru_walk - Structure describing a LRU walk.
> =C2=A0 */
> =C2=A0struct ttm_lru_walk {
> -	/** @ops: Pointer to the ops structure. */
> -	const struct ttm_lru_walk_ops *ops;
> +	/**
> +	 * process_bo - Process this bo.
> +	 * @walk: struct ttm_lru_walk describing the walk.
> +	 * @bo: A locked and referenced buffer object.
> +	 *
> +	 * Return: Negative error code on error, User-defined
> positive value
> +	 * (typically, but not always, size of the processed bo) on
> success.
> +	 * On success, the returned values are summed by the walk
> and the
> +	 * walk exits when its target is met.
> +	 * 0 also indicates success, -EBUSY means this bo was
> skipped.
> +	 */
> +	s64 (*process_bo)(struct ttm_lru_walk *walk,
> +			=C2=A0 struct ttm_buffer_object *bo);
> +
> =C2=A0	/** @arg: Common bo LRU walk arguments. */
> =C2=A0	struct ttm_lru_walk_arg arg;
> =C2=A0};
