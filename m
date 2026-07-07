Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AfTRNRztTGqdsAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:12:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D66971B3E0
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:12:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gvPECdFT;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436D610EC8A;
	Tue,  7 Jul 2026 12:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF0E610EC85;
 Tue,  7 Jul 2026 12:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783426329; x=1814962329;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=McIrKgdS+Muimto9Az2SlZrfB3kVNPd1l/1tV4Nb6Bk=;
 b=gvPECdFTlO+Hr/40sEy1Nk+x1brHp7y7NjfW7wUvnmx/15aESIvBg5iN
 rxsCoVIeN/L0GNhti66sR9vZJWbupRGnZAxSt8kYYLkTF2ytE6FIcYpf8
 lidXuoZI7+Bk9GxOwjC3xOiix2qQ4CWiVcjJ8NFtDaOcBKhaJGhPH2CGn
 rKu9HS0zZEezGZr6BEZF7h0tvT63e3J7oHugMC5bdVqI0nANQ2MFd+4o8
 7fDl9N1HOe/0yvcsi6F2wscsz+uR6dsdW3iM3goi9hhp7gHsvt+uIUzgD
 qzWJ95+IHPrqziPfAFtdPio7kmvYQ6mpYU4hg+qnjG4TJP7izTzq5IpB5 Q==;
X-CSE-ConnectionGUID: In0P/uD7QB+1f6khLygOVQ==
X-CSE-MsgGUID: rBr+SHKQTrylIZNoeVZs2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="101616776"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="101616776"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:12:08 -0700
X-CSE-ConnectionGUID: lPvdg7gFQVCHhEtILsHVpA==
X-CSE-MsgGUID: 11aq1Fj8S8ae+7CfWlp3EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="249997305"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.199])
 ([10.245.244.199])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:12:04 -0700
Message-ID: <3036fc490faf265551a905fff9cfaf0792398529.camel@linux.intel.com>
Subject: Re: [PATCH 04/10] drm/ttm: grab BO reference before locking it
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
Date: Tue, 07 Jul 2026 14:12:02 +0200
In-Reply-To: <20260703-ttm_2_drm_exec-v1-4-43685ac1286b@gmx.de>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-4-43685ac1286b@gmx.de>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gmx.de:email,lists.freedesktop.org:from_smtp,intel.com:email,intel.com:dkim,linux.intel.com:mid,linux.intel.com:from_mime,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3D66971B3E0

On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
> From: Christian K=C3=B6nig <christian.koenig@amd.com>
>=20
> Previously we always grabbed the BO reference after taking the lock,
> but
> that isn't necessary any more.
>=20
> So avoid doing that and cleanup the handling here.
>=20
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>

Reviewed-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>

> ---
> =C2=A0drivers/gpu/drm/ttm/ttm_bo_util.c | 15 +++++++++------
> =C2=A01 file changed, 9 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> b/drivers/gpu/drm/ttm/ttm_bo_util.c
> index 29f068944a972..a53b25e8c2967 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> @@ -1010,14 +1010,17 @@ __ttm_bo_lru_cursor_next(struct
> ttm_bo_lru_cursor *curs)
> =C2=A0			break;
> =C2=A0
> =C2=A0		bo =3D res->bo;
> -		if (ttm_lru_walk_trylock(curs, bo))
> -			bo_locked =3D true;
> -		else if (!arg->ticket || arg->ctx->no_wait_gpu ||
> arg->trylock_only)
> +		if (!ttm_bo_get_unless_zero(bo))
> =C2=A0			continue;
> =C2=A0
> -		if (!ttm_bo_get_unless_zero(bo)) {
> -			if (curs->needs_unlock)
> -				dma_resv_unlock(bo->base.resv);
> +		if (ttm_lru_walk_trylock(curs, bo)) {
> +			bo_locked =3D true;
> +
> +		} else if (!arg->ticket || arg->ctx->no_wait_gpu ||
> +			=C2=A0=C2=A0 arg->trylock_only) {
> +			spin_unlock(lru_lock);
> +			ttm_bo_put(bo);
> +			spin_lock(lru_lock);
> =C2=A0			continue;
> =C2=A0		}
> =C2=A0
