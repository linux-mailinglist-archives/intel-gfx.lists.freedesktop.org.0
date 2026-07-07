Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jt2vEQvwTGojsQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:24:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A14C71B4EA
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:24:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=G6PBZFgP;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C322710E4BD;
	Tue,  7 Jul 2026 12:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51BC710E4BD;
 Tue,  7 Jul 2026 12:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783427079; x=1814963079;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=H+e3am5bkmWAqDrpInK+XxfwX0696SVIY/2yyZwcuLM=;
 b=G6PBZFgPN7pYLMHsD2vLpGvBHeFhM41mbgbvqwKDFEL7PWQy2WEhddRo
 1vd+pL1pz+txcmOdB1qROfimmWVbJEvm08i3JVwrOplTqckOR59F4zWOI
 c5nalecSYtioMLzAy0VvXJWAX5Xq0qU5sUBbad3phV+VcnuPOeX7sgS9X
 tr9OIFFf2396fb5rGBIng6ghNO60bjlwW83XUCW8kuKRvcgBOTQKCQDIB
 +Ifk60AnITUGU9hCE4e8/j6WkBVGn6nFSKSq/dekTJ++UAewu1geurzzG
 mg5ljeh5qQPLPuJ51QmSrcGfpBaggjhdPr5LILiEXNSbEZxw4KfbjhZWz A==;
X-CSE-ConnectionGUID: UuYpJLrBQzaAjuD+pyB94w==
X-CSE-MsgGUID: qmQKhxbATDmf/6ssG5m1IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="101617694"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="101617694"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:24:39 -0700
X-CSE-ConnectionGUID: S3/zQBKCTAmUH7YB7P3t/Q==
X-CSE-MsgGUID: Fz5OH36eQy2vJvOkNPFyjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="249998997"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.199])
 ([10.245.244.199])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:24:35 -0700
Message-ID: <80900aaceb79fc445c19016f08df8dedf3735aa2.camel@linux.intel.com>
Subject: Re: [PATCH 06/10] drm/ttm: move zombie handling into ttm_bo_evict
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
Date: Tue, 07 Jul 2026 14:24:32 +0200
In-Reply-To: <20260703-ttm_2_drm_exec-v1-6-43685ac1286b@gmx.de>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-6-43685ac1286b@gmx.de>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:email,intel.com:dkim,linux.intel.com:mid,linux.intel.com:from_mime,gmx.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A14C71B4EA

On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
> From: Christian K=C3=B6nig <christian.koenig@amd.com>
>=20
> Both callers do the same thing, so we can trivially unify that.
>=20
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>

Although might need a different definition of ttm_bo_is_zombie if we
keep the ttm refcount for now.

Reviewed-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>


> ---
> =C2=A0drivers/gpu/drm/ttm/ttm_bo.c | 24 +++++++++---------------
> =C2=A01 file changed, 9 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
> b/drivers/gpu/drm/ttm/ttm_bo.c
> index 24c52df169ac8..54f01611ec823 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -359,6 +359,13 @@ static int ttm_bo_evict(struct ttm_buffer_object
> *bo,
> =C2=A0	struct ttm_place hop;
> =C2=A0	int ret =3D 0;
> =C2=A0
> +	if (ttm_bo_is_zombie(bo)) {
> +		ret =3D ttm_bo_wait_ctx(bo, ctx);
> +		if (!ret)
> +			ttm_bo_cleanup_memtype_use(bo);
> +		return ret;
> +	}
> +
> =C2=A0	memset(&hop, 0, sizeof(hop));
> =C2=A0
> =C2=A0	dma_resv_assert_held(bo->base.resv);
> @@ -466,13 +473,7 @@ int ttm_bo_evict_first(struct ttm_device *bdev,
> struct ttm_resource_manager *man
> =C2=A0	if (!bo->resource || bo->resource->mem_type !=3D mem_type)
> =C2=A0		goto out_bo_moved;
> =C2=A0
> -	if (ttm_bo_is_zombie(bo)) {
> -		ret =3D ttm_bo_wait_ctx(bo, ctx);
> -		if (!ret)
> -			ttm_bo_cleanup_memtype_use(bo);
> -	} else {
> -		ret =3D ttm_bo_evict(bo, ctx);
> -	}
> +	ret =3D ttm_bo_evict(bo, ctx);
> =C2=A0out_bo_moved:
> =C2=A0	dma_resv_unlock(bo->base.resv);
> =C2=A0out_no_lock:
> @@ -520,14 +521,7 @@ static s64 ttm_bo_evict_cb(struct ttm_lru_walk
> *walk, struct ttm_buffer_object *
> =C2=A0	if (bo->pin_count || !bo->bdev->funcs->eviction_valuable(bo,
> evict_walk->place))
> =C2=A0		return 0;
> =C2=A0
> -	if (ttm_bo_is_zombie(bo)) {
> -		lret =3D ttm_bo_wait_ctx(bo, walk->arg.ctx);
> -		if (!lret)
> -			ttm_bo_cleanup_memtype_use(bo);
> -	} else {
> -		lret =3D ttm_bo_evict(bo, walk->arg.ctx);
> -	}
> -
> +	lret =3D ttm_bo_evict(bo, walk->arg.ctx);
> =C2=A0	if (lret)
> =C2=A0		goto out;
> =C2=A0
