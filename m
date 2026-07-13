Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ga0XJR7TVGp9fQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 13:59:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF02974AA3A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 13:59:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="SQ6Oafh/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7706210E936;
	Mon, 13 Jul 2026 11:59:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F4AF10E947;
 Mon, 13 Jul 2026 11:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783943963; x=1815479963;
 h=message-id:subject:from:to:date:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=PgDGdaaeyCwoG8D4U3B9sdB9c36Rvxkiwqgo8Jml1n0=;
 b=SQ6Oafh/KNxQF42zEF2I94Jj+VRU02uujLwe3NiP8qmC6WquIxjmZ9Dg
 W40vtOSS95LZ+4JqxfGVAlz2hohsr5DNavjNEsk6i6qpdPBV0IYkYOCV0
 GCuj3v9FlgTsCQagzabaqw3sLDOTZfRNQVeYbhBijRYJU71J6l/a50bLc
 bKzlwRaBEAYd0k4/Lu+Lfe74/nOcMKPZQ9on13I+S5ajhUrI8a8W1DxsI
 rBQVF3UiEB9LmJT15OHviNjfxOtnObQflN4eVnaRKg6FlXW6CoUytvfVO
 Jr0Q0143Oj6lYNhBUfTsZEaoW/fWPPbNlLkz4KnChROMEW+9p+8k3cEzg w==;
X-CSE-ConnectionGUID: 0YipjySqQK+eXLIYU9kO4g==
X-CSE-MsgGUID: JjJm1zbyRdKVjeVbXmYuPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="110093147"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="110093147"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 04:59:23 -0700
X-CSE-ConnectionGUID: EdEs7uRIQRK4Y6eKspC4zA==
X-CSE-MsgGUID: aWF+8JjORm2nS6zE8oKajA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="254399571"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO [10.245.245.123])
 ([10.245.245.123])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 04:59:20 -0700
Message-ID: <d09a8c6871494c34af9cdf8f99d3739e78427223.camel@linux.intel.com>
Subject: Re: [PATCH 11/12] drm/ttm: support using drm_exec during eviction v4
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: christian.koenig@amd.com, dakr@kernel.org, ecourtney@nvidia.com, 
 simona@ffwll.ch, matthew.brost@intel.com, nat@pixelcluster.dev,
 airlied@gmail.com, 	dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, 	intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 	amd-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2026 13:59:17 +0200
In-Reply-To: <20260710190752.2355-12-christian.koenig@amd.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-12-christian.koenig@amd.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,linux.intel.com:mid,intel.com:dkim,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF02974AA3A

On Fri, 2026-07-10 at 20:52 +0200, Christian K=C3=B6nig wrote:
> Allow specifying a drm_exec object in TTMs operation context which is
> used to lock objects during eviction.
>=20
> This allows to handle deadlocks much more gracefully and with that
> avoid returning -ENOMEM on heavily contended domains.
>=20
> v2: rebased on top of Thomas work
> v3: rebased again
> v4: adjust to dma_resv changes
>=20
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>

Same thing here. Use a ww context at the dma-buf level.

Thanks,
Thomas


> ---
> =C2=A0drivers/gpu/drm/ttm/ttm_bo_util.c | 12 ++++++++----
> =C2=A0include/drm/ttm/ttm_bo.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 5 +++++
> =C2=A02 files changed, 13 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> b/drivers/gpu/drm/ttm/ttm_bo_util.c
> index 1bdd69643c313..570640ae79d84 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> @@ -38,6 +38,7 @@
> =C2=A0#include <drm/ttm/ttm_tt.h>
> =C2=A0
> =C2=A0#include <drm/drm_cache.h>
> +#include <drm/drm_exec.h>
> =C2=A0
> =C2=A0struct ttm_transfer_obj {
> =C2=A0	struct ttm_buffer_object base;
> @@ -839,7 +840,9 @@ static int ttm_lru_walk_ticketlock(struct
> ttm_bo_lru_cursor *curs,
> =C2=A0	struct ttm_lru_walk_arg *arg =3D curs->arg;
> =C2=A0	int ret;
> =C2=A0
> -	if (arg->ctx->interruptible)
> +	if (arg->ctx->exec)
> +		ret =3D drm_exec_lock_resv(arg->ctx->exec, resv);
> +	else if (arg->ctx->interruptible)
> =C2=A0		ret =3D dma_resv_lock_interruptible(resv, arg-
> >ticket);
> =C2=A0	else
> =C2=A0		ret =3D dma_resv_lock(resv, arg->ticket);
> @@ -853,7 +856,8 @@ static int ttm_lru_walk_ticketlock(struct
> ttm_bo_lru_cursor *curs,
> =C2=A0		 * trylocking for this walk.
> =C2=A0		 */
> =C2=A0		arg->ticket =3D NULL;
> -	} else if (ret =3D=3D -EDEADLK) {
> +
> +	} else if (!arg->ctx->exec && ret =3D=3D -EDEADLK) {
> =C2=A0		/* Caller needs to exit the ww transaction. */
> =C2=A0		ret =3D -ENOSPC;
> =C2=A0	}
> @@ -993,8 +997,8 @@ __ttm_bo_lru_cursor_iter(struct ttm_bo_lru_cursor
> *curs, bool first)
> =C2=A0		if (!ttm_lru_walk_trylock(curs, res->bo->base.resv))
> {
> =C2=A0			struct dma_resv *resv;
> =C2=A0
> -			if (!arg->ticket || arg->ctx->no_wait_gpu ||
> -			=C2=A0=C2=A0=C2=A0 arg->trylock_only) {
> +			if ((!arg->ticket || arg->ctx->no_wait_gpu
> ||
> +			=C2=A0=C2=A0=C2=A0=C2=A0 arg->trylock_only) && !arg->ctx->exec)
> {
> =C2=A0				spin_unlock(lru_lock);
> =C2=A0				continue;
> =C2=A0			}
> diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
> index e1221e3be7bda..0ffa84a5caa65 100644
> --- a/include/drm/ttm/ttm_bo.h
> +++ b/include/drm/ttm/ttm_bo.h
> @@ -186,6 +186,11 @@ struct ttm_operation_ctx {
> =C2=A0	 * @bytes_moved: Statistics on how many bytes have been
> moved.
> =C2=A0	 */
> =C2=A0	uint64_t bytes_moved;
> +	/*
> +	 * @exec: optional drm_exec object to use for locking and
> contention
> +	 * handling
> +	 */
> +	struct drm_exec *exec;
> =C2=A0};
> =C2=A0
> =C2=A0struct ttm_lru_walk;
