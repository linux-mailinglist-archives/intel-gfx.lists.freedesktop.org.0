Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MxJmHcTSVGpvfQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 13:57:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C036074AA08
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 13:57:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hpiGrhQT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB41810E934;
	Mon, 13 Jul 2026 11:57:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D46B10E92E;
 Mon, 13 Jul 2026 11:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783943873; x=1815479873;
 h=message-id:subject:from:to:date:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=cfUXpxVp+7cu4pl6gIthdexAErydheekjCls546oHYg=;
 b=hpiGrhQTq54RFfEIxUaCBY6mYuQZSihVUU1sA0T3vCBEYtv9LTouy52z
 7uCxSKCturyAe7rZ8Ubd0Kl/jL2U06PGpvTwUT3Zwx5AgwnZsIv0v2OsI
 3tNB5Vw7VkXeiFgX2uciKBRaTau63i6C3YuBP8p5TLPjV2JmMo+eobrsb
 BICAoWf33/xmigPzZ1b2Lj0YM5JKd/XP0SP++TL7SMVYHO8kUDUxsbrVU
 InXpdOP1PEWXjxsdh37+NQoTCcBodQXLtovHPxPOoUcdYoyADhY/+Wp3I
 3Vlj6hJKFqOtljMz5m/hrGG1ejqDxW9U5OtiGtgNCcoYkOagV78sEKRgS A==;
X-CSE-ConnectionGUID: rxDPvbwzS32al3ZLbT54xA==
X-CSE-MsgGUID: sl4uMp1LQq+wodt1vX3CLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88454027"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88454027"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 04:57:52 -0700
X-CSE-ConnectionGUID: /ixp9IyJSH2NFzO+DeuKBg==
X-CSE-MsgGUID: lloBdu5TQF6BU8rf5JZBUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="253796075"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO [10.245.245.123])
 ([10.245.245.123])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 04:57:49 -0700
Message-ID: <0cfc1913440ce8f19f715f5df7faa23dc1164755.camel@linux.intel.com>
Subject: Re: [PATCH 10/12] drm/exec: add drm_exec_lock_resv function
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: christian.koenig@amd.com, dakr@kernel.org, ecourtney@nvidia.com, 
 simona@ffwll.ch, matthew.brost@intel.com, nat@pixelcluster.dev,
 airlied@gmail.com, 	dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, 	intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 	amd-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2026 13:57:46 +0200
In-Reply-To: <20260710190752.2355-11-christian.koenig@amd.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-11-christian.koenig@amd.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,linux.intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C036074AA08

On Fri, 2026-07-10 at 20:52 +0200, Christian K=C3=B6nig wrote:
> Restructure the drm_exec object to work with dma_resv references
> instead
> of GEM object references.
>=20
> Add the new function dma_exec_lock_resv() to lock individual dma_resv
> objects and so allow higher level implementations to handle
> contention
> purely on dma_resv objects.
>=20
> WIP! Don't commit like that!
>=20
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>

Here, IMO we should move a dma-resv based implementation to dma-buf to
facilitate passing it also through dma_buf_map(),

And if wanting to avoid rewriting all users of drm_exec, Make drm_exec
a thin wrapper on top.

Thanks,
Thomas



> ---
> =C2=A0drivers/gpu/drm/drm_exec.c | 75 ++++++++++++++++++++++-------------=
-
> --
> =C2=A0drivers/gpu/drm/drm_gem.c=C2=A0 |=C2=A0 2 +
> =C2=A0include/drm/drm_exec.h=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 9 +++--
> =C2=A03 files changed, 50 insertions(+), 36 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/drm_exec.c b/drivers/gpu/drm/drm_exec.c
> index fa923852fae45..382bf7bcd5ff3 100644
> --- a/drivers/gpu/drm/drm_exec.c
> +++ b/drivers/gpu/drm/drm_exec.c
> @@ -58,8 +58,11 @@ static void drm_exec_unlock_all(struct drm_exec
> *exec)
> =C2=A0		drm_gem_object_put(obj);
> =C2=A0	}
> =C2=A0
> -	drm_gem_object_put(exec->prelocked);
> -	exec->prelocked =3D NULL;
> +	if (exec->prelocked) {
> +		dma_resv_unlock(exec->prelocked);
> +		dma_resv_put(exec->prelocked);
> +		exec->prelocked =3D NULL;
> +	}
> =C2=A0}
> =C2=A0
> =C2=A0/**
> @@ -101,7 +104,7 @@ void drm_exec_fini(struct drm_exec *exec)
> =C2=A0	drm_exec_unlock_all(exec);
> =C2=A0	kvfree(exec->objects);
> =C2=A0	if (exec->contended !=3D DRM_EXEC_DUMMY) {
> -		drm_gem_object_put(exec->contended);
> +		dma_resv_put(exec->contended);
> =C2=A0		ww_acquire_fini(&exec->ticket);
> =C2=A0	}
> =C2=A0}
> @@ -158,50 +161,41 @@ static int drm_exec_obj_locked(struct drm_exec
> *exec,
> =C2=A0/* Make sure the contended object is locked first */
> =C2=A0static int drm_exec_lock_contended(struct drm_exec *exec)
> =C2=A0{
> -	struct drm_gem_object *obj =3D exec->contended;
> +	struct dma_resv *resv =3D exec->contended;
> =C2=A0	int ret;
> =C2=A0
> -	if (likely(!obj))
> +	if (likely(!resv))
> =C2=A0		return 0;
> =C2=A0
> =C2=A0	/* Always cleanup the contention so that error handling can
> kick in */
> =C2=A0	exec->contended =3D NULL;
> =C2=A0	if (exec->flags & DRM_EXEC_INTERRUPTIBLE_WAIT) {
> -		ret =3D dma_resv_lock_slow_interruptible(obj->resv,
> -						=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &exec-
> >ticket);
> +		ret =3D dma_resv_lock_slow_interruptible(resv, &exec-
> >ticket);
> =C2=A0		if (unlikely(ret))
> =C2=A0			goto error_dropref;
> =C2=A0	} else {
> -		dma_resv_lock_slow(obj->resv, &exec->ticket);
> +		dma_resv_lock_slow(resv, &exec->ticket);
> =C2=A0	}
> =C2=A0
> -	ret =3D drm_exec_obj_locked(exec, obj);
> -	if (unlikely(ret))
> -		goto error_unlock;
> -
> -	exec->prelocked =3D obj;
> +	exec->prelocked =3D resv;
> =C2=A0	return 0;
> =C2=A0
> -error_unlock:
> -	dma_resv_unlock(obj->resv);
> -
> =C2=A0error_dropref:
> -	drm_gem_object_put(obj);
> +	dma_resv_put(resv);
> =C2=A0	return ret;
> =C2=A0}
> =C2=A0
> =C2=A0/**
> - * drm_exec_lock_obj - lock a GEM object for use
> + * drm_exec_lock_resv - lock a dma_resv object
> =C2=A0 * @exec: the drm_exec object with the state
> - * @obj: the GEM object to lock
> + * @resv: the dma_resv object to lock
> =C2=A0 *
> - * Lock a GEM object for use and grab a reference to it.
> + * Lock a dma_resv object for use or grab a reference to it on
> contention.
> =C2=A0 *
> =C2=A0 * Returns: -EDEADLK if a contention is detected, -EALREADY when
> object is
> - * already locked (can be suppressed by setting the
> DRM_EXEC_IGNORE_DUPLICATES
> - * flag), -ENOMEM when memory allocation failed and zero for
> success.
> + * already locked, -ENOMEM when memory allocation failed and zero
> for success.
> =C2=A0 */
> -int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
> *obj)
> +int drm_exec_lock_resv(struct drm_exec *exec, struct dma_resv *resv)
> =C2=A0{
> =C2=A0	int ret;
> =C2=A0
> @@ -209,22 +203,39 @@ int drm_exec_lock_obj(struct drm_exec *exec,
> struct drm_gem_object *obj)
> =C2=A0	if (unlikely(ret))
> =C2=A0		return ret;
> =C2=A0
> -	if (exec->prelocked =3D=3D obj) {
> -		drm_gem_object_put(exec->prelocked);
> +	if (exec->prelocked =3D=3D resv) {
> +		dma_resv_put(exec->prelocked);
> =C2=A0		exec->prelocked =3D NULL;
> =C2=A0		return 0;
> =C2=A0	}
> =C2=A0
> =C2=A0	if (exec->flags & DRM_EXEC_INTERRUPTIBLE_WAIT)
> -		ret =3D dma_resv_lock_interruptible(obj->resv, &exec-
> >ticket);
> +		ret =3D dma_resv_lock_interruptible(resv, &exec-
> >ticket);
> =C2=A0	else
> -		ret =3D dma_resv_lock(obj->resv, &exec->ticket);
> +		ret =3D dma_resv_lock(resv, &exec->ticket);
> =C2=A0
> -	if (unlikely(ret =3D=3D -EDEADLK)) {
> -		drm_gem_object_get(obj);
> -		exec->contended =3D obj;
> -		return -EDEADLK;
> -	}
> +	if (unlikely(ret =3D=3D -EDEADLK))
> +		exec->contended =3D dma_resv_get(resv);
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_exec_lock_resv);
> +
> +/**
> + * drm_exec_lock_obj - lock a GEM object for use
> + * @exec: the drm_exec object with the state
> + * @obj: the GEM object to lock
> + *
> + * Lock a GEM object for use and grab a reference to it.
> + *
> + * Returns: -EDEADLK if a contention is detected, -EALREADY when
> object is
> + * already locked (can be suppressed by setting the
> DRM_EXEC_IGNORE_DUPLICATES
> + * flag), -ENOMEM when memory allocation failed and zero for
> success.
> + */
> +int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
> *obj)
> +{
> +	int ret;
> +
> +	ret =3D drm_exec_lock_resv(exec, obj->resv);
> =C2=A0
> =C2=A0	if (unlikely(ret =3D=3D -EALREADY) &&
> =C2=A0	=C2=A0=C2=A0=C2=A0 exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index bbcbd25f014f0..f5cf9ad596a67 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -229,6 +229,8 @@ void drm_gem_private_object_init(struct
> drm_device *dev,
> =C2=A0	obj->size =3D size;
> =C2=A0	mutex_init(&obj->gpuva.lock);
> =C2=A0	dma_resv_init(&obj->_resv);
> +
> +	/* TODO: This needs to go away for drm_exec to work
> correctly!!! */
> =C2=A0	if (!obj->resv)
> =C2=A0		obj->resv =3D dma_resv_get(&obj->_resv);
> =C2=A0
> diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
> index 8725ba92ff916..9daedb676d7b1 100644
> --- a/include/drm/drm_exec.h
> +++ b/include/drm/drm_exec.h
> @@ -47,14 +47,14 @@ struct drm_exec {
> =C2=A0	struct drm_gem_object	**objects;
> =C2=A0
> =C2=A0	/**
> -	 * @contended: contended GEM object we backed off for
> +	 * @contended: contended dma_resv object we backed off for
> =C2=A0	 */
> -	struct drm_gem_object	*contended;
> +	struct dma_resv		*contended;
> =C2=A0
> =C2=A0	/**
> -	 * @prelocked: already locked GEM object due to contention
> +	 * @prelocked: already locked dma_resv object due to
> contention
> =C2=A0	 */
> -	struct drm_gem_object *prelocked;
> +	struct dma_resv		*prelocked;
> =C2=A0};
> =C2=A0
> =C2=A0/**
> @@ -175,6 +175,7 @@ static inline struct ww_acquire_ctx
> *drm_exec_ticket(struct drm_exec *exec)
> =C2=A0void drm_exec_init(struct drm_exec *exec, u32 flags, unsigned nr);
> =C2=A0void drm_exec_fini(struct drm_exec *exec);
> =C2=A0bool drm_exec_cleanup(struct drm_exec *exec);
> +int drm_exec_lock_resv(struct drm_exec *exec, struct dma_resv
> *resv);
> =C2=A0int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
> *obj);
> =C2=A0void drm_exec_unlock_obj(struct drm_exec *exec, struct
> drm_gem_object *obj);
> =C2=A0int drm_exec_prepare_obj(struct drm_exec *exec, struct
> drm_gem_object *obj,
