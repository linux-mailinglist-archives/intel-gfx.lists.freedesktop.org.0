Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AahbMDbqVGpehAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 15:37:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB58D74BB1C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 15:37:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WK49smQa;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BEC810E5E6;
	Mon, 13 Jul 2026 13:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD02F10E5DF;
 Mon, 13 Jul 2026 13:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783949874; x=1815485874;
 h=message-id:subject:from:to:date:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=VaiiiSXA2tW300f95CVO5r2r91ZNzT/rX9FcMVLNutU=;
 b=WK49smQa+KReNNkJ3IAis6IvBcfGiX2g4ML5dDAIkHcfYrOxyrKaPKnE
 uKOZZRZDMbfp83TGrl918LW88mlj/7Bs7AcVnp0ScpgzofeComjWu+mpT
 UwH55uwuXD0D0fB5PsZgTzW7+dikZ3E5o73b5RqgzA2WOUGUB07sW+3MT
 kfNVQYWoQF0h53m9B31iLteABnk1sneBc5P9E//5vhQjSiJLwP5IAlMge
 rsVRYSmNwgZcVwkEM9yVAVTf8QpEzKocKFSGkN7Gw4aIMHtECQAk1ZWXl
 Ec86MkrOiDoILTZcnl7eQxfxXTt5Kr6o3+vgrSjihEPU/AaQgugW5DbJM A==;
X-CSE-ConnectionGUID: w/Vy8ZTCT4ugXP70gHqFow==
X-CSE-MsgGUID: SYnIpAUuQRyoY/HZoCIizA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84575423"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84575423"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 06:37:53 -0700
X-CSE-ConnectionGUID: 20sOKCn8QNu8nTRGvYmkZw==
X-CSE-MsgGUID: faqOZqR9RkWWTfO7sIXQsw==
X-ExtLoop1: 1
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO [10.245.245.123])
 ([10.245.245.123])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 06:37:50 -0700
Message-ID: <856018c9da5bbc03eba0e7fd5862c6b9567c695a.camel@linux.intel.com>
Subject: Re: [PATCH 10/12] drm/exec: add drm_exec_lock_resv function
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, 
 dakr@kernel.org, ecourtney@nvidia.com, simona@ffwll.ch,
 matthew.brost@intel.com, 	nat@pixelcluster.dev, airlied@gmail.com,
 dri-devel@lists.freedesktop.org, 	linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2026 15:37:48 +0200
In-Reply-To: <ff8e2004-366b-447a-b1b2-504e1cbcb265@amd.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-11-christian.koenig@amd.com>
 <0cfc1913440ce8f19f715f5df7faa23dc1164755.camel@linux.intel.com>
 <bda9ac0e-cca5-4262-94e1-d048c470c3af@amd.com>
 <60e358ad5babca098e4ae20fa89703988fda64f2.camel@linux.intel.com>
 <ff8e2004-366b-447a-b1b2-504e1cbcb265@amd.com>
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
	FREEMAIL_TO(0.00)[amd.com,kernel.org,nvidia.com,ffwll.ch,intel.com,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB58D74BB1C

On Mon, 2026-07-13 at 15:14 +0200, Christian K=C3=B6nig wrote:
> On 7/13/26 14:19, Thomas Hellstr=C3=B6m wrote:
> > On Mon, 2026-07-13 at 14:07 +0200, Christian K=C3=B6nig wrote:
> > > On 7/13/26 13:57, Thomas Hellstr=C3=B6m wrote:
> > > > On Fri, 2026-07-10 at 20:52 +0200, Christian K=C3=B6nig wrote:
> > > > > Restructure the drm_exec object to work with dma_resv
> > > > > references
> > > > > instead
> > > > > of GEM object references.
> > > > >=20
> > > > > Add the new function dma_exec_lock_resv() to lock individual
> > > > > dma_resv
> > > > > objects and so allow higher level implementations to handle
> > > > > contention
> > > > > purely on dma_resv objects.
> > > > >=20
> > > > > WIP! Don't commit like that!
> > > > >=20
> > > > > Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> > > >=20
> > > > Here, IMO we should move a dma-resv based implementation to
> > > > dma-buf
> > > > to
> > > > facilitate passing it also through dma_buf_map(),
> > >=20
> > > I still don't see why that would be necessary?
> > >=20
> > > dma_buf_map() just maps the current location of the buffer, it
> > > has no
> > > requirement to force the buffer into VRAM.
> > >=20
> > > At least on amdgpu we always validate buffer during dma_buf_map()
> > > with VRAM|GTT, so we never cause any eviction at all.
> >=20
> > For fast interconnects xe wants to avoid pinning in VRAM and needs
> > a
> > more aggressive validation. If you have a bunch of processes using
> > WW
> > transactions to lock out others from VRAM allocation with one
> > process
> > not participating that wouldn't work out well.
> >=20
> > > =C2=A0
> > > > And if wanting to avoid rewriting all users of drm_exec, Make
> > > > drm_exec
> > > > a thin wrapper on top.
> > >=20
> > > DMA-buf looks like the wrong place for this since it only works
> > > on
> > > exported buffers and that should be the absolute minority.
> > >=20
> > > We could have a dma-resv contention tracking helper, but I still
> > > don't see for what that would be good for?
> >=20
> > See the above. The problem is that the WW transaction always starts
> > with a drm_exec on the importer side and it needs to be the same
> > structure that holds the contended lock on rollback.
> >=20
> > What are the issues you are seeing?
>=20
> Mhm, there had been quite some discussion on that topic in the past
> and so far the result was usually that this shouldn't be necessary.
>=20
> On the other hand with a reference counted dma_resv object it should
> be technically doable and the past discussions have already been
> years ago with quite a bunch of different requirements.

Yeah, IIRC the main argument was that for various reasons neither the
WW mutex nor the dma_resv had a refcount, so either one had to use an
ops (like my rfc) or attach a refcount to the drm_resv or ww_mutex,
like the series under discussion.

>=20
> For dma_buf_map() I still don't see the use case, cause that function
> is really "give me access to the current location of the buffer" it
> should not move the buffer. If the exporter needs the buffer in a
> different location later on it can still do so.
>=20
> But for dma_buf_pin() it might be perfectly valid to kick out other
> buffers and then I agree that definately needs to ww locking context.

OK, so xe has always seen the dma_buf_map() as the dma-buf equivalent
of ttm_bo_validate() + dma_mapping. The main reason for that is the
pairing with what was previously known as move_notify. If the map was
invalidated, you'd release it and when you needed it again, you called
dma_buf_map(), and if p2p was requested, the exporter moved the dma_buf
to vram if all attachments supported it.

Pinning would create the awkwardness of having to pin and then
immediately unpin again.

But regardless of what dma_buf interface we use for this, or perhaps
agree on a new interface, the functionality will be needed, and since
with refcounted dma_resv, this is more of a move than a
reimplementation, I think we should do it now or agree to do it as a
follow-up.

Thanks,
Thomas



>=20
> Regards,
> Christian.
>=20
> >=20
> > /Thomas
> >=20
> >=20
> > >=20
> > > Regards,
> > > Christian.
> > >=20
> > > >=20
> > > > Thanks,
> > > > Thomas
> > > >=20
> > > >=20
> > > >=20
> > > > > ---
> > > > > =C2=A0drivers/gpu/drm/drm_exec.c | 75 ++++++++++++++++++++++-----=
-
> > > > > ----
> > > > > ----
> > > > > --
> > > > > =C2=A0drivers/gpu/drm/drm_gem.c=C2=A0 |=C2=A0 2 +
> > > > > =C2=A0include/drm/drm_exec.h=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 9 ++=
+--
> > > > > =C2=A03 files changed, 50 insertions(+), 36 deletions(-)
> > > > >=20
> > > > > diff --git a/drivers/gpu/drm/drm_exec.c
> > > > > b/drivers/gpu/drm/drm_exec.c
> > > > > index fa923852fae45..382bf7bcd5ff3 100644
> > > > > --- a/drivers/gpu/drm/drm_exec.c
> > > > > +++ b/drivers/gpu/drm/drm_exec.c
> > > > > @@ -58,8 +58,11 @@ static void drm_exec_unlock_all(struct
> > > > > drm_exec
> > > > > *exec)
> > > > > =C2=A0		drm_gem_object_put(obj);
> > > > > =C2=A0	}
> > > > > =C2=A0
> > > > > -	drm_gem_object_put(exec->prelocked);
> > > > > -	exec->prelocked =3D NULL;
> > > > > +	if (exec->prelocked) {
> > > > > +		dma_resv_unlock(exec->prelocked);
> > > > > +		dma_resv_put(exec->prelocked);
> > > > > +		exec->prelocked =3D NULL;
> > > > > +	}
> > > > > =C2=A0}
> > > > > =C2=A0
> > > > > =C2=A0/**
> > > > > @@ -101,7 +104,7 @@ void drm_exec_fini(struct drm_exec *exec)
> > > > > =C2=A0	drm_exec_unlock_all(exec);
> > > > > =C2=A0	kvfree(exec->objects);
> > > > > =C2=A0	if (exec->contended !=3D DRM_EXEC_DUMMY) {
> > > > > -		drm_gem_object_put(exec->contended);
> > > > > +		dma_resv_put(exec->contended);
> > > > > =C2=A0		ww_acquire_fini(&exec->ticket);
> > > > > =C2=A0	}
> > > > > =C2=A0}
> > > > > @@ -158,50 +161,41 @@ static int drm_exec_obj_locked(struct
> > > > > drm_exec
> > > > > *exec,
> > > > > =C2=A0/* Make sure the contended object is locked first */
> > > > > =C2=A0static int drm_exec_lock_contended(struct drm_exec *exec)
> > > > > =C2=A0{
> > > > > -	struct drm_gem_object *obj =3D exec->contended;
> > > > > +	struct dma_resv *resv =3D exec->contended;
> > > > > =C2=A0	int ret;
> > > > > =C2=A0
> > > > > -	if (likely(!obj))
> > > > > +	if (likely(!resv))
> > > > > =C2=A0		return 0;
> > > > > =C2=A0
> > > > > =C2=A0	/* Always cleanup the contention so that error
> > > > > handling
> > > > > can
> > > > > kick in */
> > > > > =C2=A0	exec->contended =3D NULL;
> > > > > =C2=A0	if (exec->flags & DRM_EXEC_INTERRUPTIBLE_WAIT) {
> > > > > -		ret =3D dma_resv_lock_slow_interruptible(obj-
> > > > > > resv,
> > > > > -						=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> > > > > &exec-
> > > > > > ticket);
> > > > > +		ret =3D dma_resv_lock_slow_interruptible(resv,
> > > > > &exec-
> > > > > > ticket);
> > > > > =C2=A0		if (unlikely(ret))
> > > > > =C2=A0			goto error_dropref;
> > > > > =C2=A0	} else {
> > > > > -		dma_resv_lock_slow(obj->resv, &exec-
> > > > > >ticket);
> > > > > +		dma_resv_lock_slow(resv, &exec->ticket);
> > > > > =C2=A0	}
> > > > > =C2=A0
> > > > > -	ret =3D drm_exec_obj_locked(exec, obj);
> > > > > -	if (unlikely(ret))
> > > > > -		goto error_unlock;
> > > > > -
> > > > > -	exec->prelocked =3D obj;
> > > > > +	exec->prelocked =3D resv;
> > > > > =C2=A0	return 0;
> > > > > =C2=A0
> > > > > -error_unlock:
> > > > > -	dma_resv_unlock(obj->resv);
> > > > > -
> > > > > =C2=A0error_dropref:
> > > > > -	drm_gem_object_put(obj);
> > > > > +	dma_resv_put(resv);
> > > > > =C2=A0	return ret;
> > > > > =C2=A0}
> > > > > =C2=A0
> > > > > =C2=A0/**
> > > > > - * drm_exec_lock_obj - lock a GEM object for use
> > > > > + * drm_exec_lock_resv - lock a dma_resv object
> > > > > =C2=A0 * @exec: the drm_exec object with the state
> > > > > - * @obj: the GEM object to lock
> > > > > + * @resv: the dma_resv object to lock
> > > > > =C2=A0 *
> > > > > - * Lock a GEM object for use and grab a reference to it.
> > > > > + * Lock a dma_resv object for use or grab a reference to it
> > > > > on
> > > > > contention.
> > > > > =C2=A0 *
> > > > > =C2=A0 * Returns: -EDEADLK if a contention is detected, -EALREADY
> > > > > when
> > > > > object is
> > > > > - * already locked (can be suppressed by setting the
> > > > > DRM_EXEC_IGNORE_DUPLICATES
> > > > > - * flag), -ENOMEM when memory allocation failed and zero for
> > > > > success.
> > > > > + * already locked, -ENOMEM when memory allocation failed and
> > > > > zero
> > > > > for success.
> > > > > =C2=A0 */
> > > > > -int drm_exec_lock_obj(struct drm_exec *exec, struct
> > > > > drm_gem_object
> > > > > *obj)
> > > > > +int drm_exec_lock_resv(struct drm_exec *exec, struct
> > > > > dma_resv
> > > > > *resv)
> > > > > =C2=A0{
> > > > > =C2=A0	int ret;
> > > > > =C2=A0
> > > > > @@ -209,22 +203,39 @@ int drm_exec_lock_obj(struct drm_exec
> > > > > *exec,
> > > > > struct drm_gem_object *obj)
> > > > > =C2=A0	if (unlikely(ret))
> > > > > =C2=A0		return ret;
> > > > > =C2=A0
> > > > > -	if (exec->prelocked =3D=3D obj) {
> > > > > -		drm_gem_object_put(exec->prelocked);
> > > > > +	if (exec->prelocked =3D=3D resv) {
> > > > > +		dma_resv_put(exec->prelocked);
> > > > > =C2=A0		exec->prelocked =3D NULL;
> > > > > =C2=A0		return 0;
> > > > > =C2=A0	}
> > > > > =C2=A0
> > > > > =C2=A0	if (exec->flags & DRM_EXEC_INTERRUPTIBLE_WAIT)
> > > > > -		ret =3D dma_resv_lock_interruptible(obj->resv,
> > > > > &exec-
> > > > > > ticket);
> > > > > +		ret =3D dma_resv_lock_interruptible(resv,
> > > > > &exec-
> > > > > > ticket);
> > > > > =C2=A0	else
> > > > > -		ret =3D dma_resv_lock(obj->resv, &exec-
> > > > > >ticket);
> > > > > +		ret =3D dma_resv_lock(resv, &exec->ticket);
> > > > > =C2=A0
> > > > > -	if (unlikely(ret =3D=3D -EDEADLK)) {
> > > > > -		drm_gem_object_get(obj);
> > > > > -		exec->contended =3D obj;
> > > > > -		return -EDEADLK;
> > > > > -	}
> > > > > +	if (unlikely(ret =3D=3D -EDEADLK))
> > > > > +		exec->contended =3D dma_resv_get(resv);
> > > > > +	return ret;
> > > > > +}
> > > > > +EXPORT_SYMBOL(drm_exec_lock_resv);
> > > > > +
> > > > > +/**
> > > > > + * drm_exec_lock_obj - lock a GEM object for use
> > > > > + * @exec: the drm_exec object with the state
> > > > > + * @obj: the GEM object to lock
> > > > > + *
> > > > > + * Lock a GEM object for use and grab a reference to it.
> > > > > + *
> > > > > + * Returns: -EDEADLK if a contention is detected, -EALREADY
> > > > > when
> > > > > object is
> > > > > + * already locked (can be suppressed by setting the
> > > > > DRM_EXEC_IGNORE_DUPLICATES
> > > > > + * flag), -ENOMEM when memory allocation failed and zero for
> > > > > success.
> > > > > + */
> > > > > +int drm_exec_lock_obj(struct drm_exec *exec, struct
> > > > > drm_gem_object
> > > > > *obj)
> > > > > +{
> > > > > +	int ret;
> > > > > +
> > > > > +	ret =3D drm_exec_lock_resv(exec, obj->resv);
> > > > > =C2=A0
> > > > > =C2=A0	if (unlikely(ret =3D=3D -EALREADY) &&
> > > > > =C2=A0	=C2=A0=C2=A0=C2=A0 exec->flags & DRM_EXEC_IGNORE_DUPLICATE=
S)
> > > > > diff --git a/drivers/gpu/drm/drm_gem.c
> > > > > b/drivers/gpu/drm/drm_gem.c
> > > > > index bbcbd25f014f0..f5cf9ad596a67 100644
> > > > > --- a/drivers/gpu/drm/drm_gem.c
> > > > > +++ b/drivers/gpu/drm/drm_gem.c
> > > > > @@ -229,6 +229,8 @@ void drm_gem_private_object_init(struct
> > > > > drm_device *dev,
> > > > > =C2=A0	obj->size =3D size;
> > > > > =C2=A0	mutex_init(&obj->gpuva.lock);
> > > > > =C2=A0	dma_resv_init(&obj->_resv);
> > > > > +
> > > > > +	/* TODO: This needs to go away for drm_exec to work
> > > > > correctly!!! */
> > > > > =C2=A0	if (!obj->resv)
> > > > > =C2=A0		obj->resv =3D dma_resv_get(&obj->_resv);
> > > > > =C2=A0
> > > > > diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
> > > > > index 8725ba92ff916..9daedb676d7b1 100644
> > > > > --- a/include/drm/drm_exec.h
> > > > > +++ b/include/drm/drm_exec.h
> > > > > @@ -47,14 +47,14 @@ struct drm_exec {
> > > > > =C2=A0	struct drm_gem_object	**objects;
> > > > > =C2=A0
> > > > > =C2=A0	/**
> > > > > -	 * @contended: contended GEM object we backed off
> > > > > for
> > > > > +	 * @contended: contended dma_resv object we backed
> > > > > off
> > > > > for
> > > > > =C2=A0	 */
> > > > > -	struct drm_gem_object	*contended;
> > > > > +	struct dma_resv		*contended;
> > > > > =C2=A0
> > > > > =C2=A0	/**
> > > > > -	 * @prelocked: already locked GEM object due to
> > > > > contention
> > > > > +	 * @prelocked: already locked dma_resv object due to
> > > > > contention
> > > > > =C2=A0	 */
> > > > > -	struct drm_gem_object *prelocked;
> > > > > +	struct dma_resv		*prelocked;
> > > > > =C2=A0};
> > > > > =C2=A0
> > > > > =C2=A0/**
> > > > > @@ -175,6 +175,7 @@ static inline struct ww_acquire_ctx
> > > > > *drm_exec_ticket(struct drm_exec *exec)
> > > > > =C2=A0void drm_exec_init(struct drm_exec *exec, u32 flags,
> > > > > unsigned
> > > > > nr);
> > > > > =C2=A0void drm_exec_fini(struct drm_exec *exec);
> > > > > =C2=A0bool drm_exec_cleanup(struct drm_exec *exec);
> > > > > +int drm_exec_lock_resv(struct drm_exec *exec, struct
> > > > > dma_resv
> > > > > *resv);
> > > > > =C2=A0int drm_exec_lock_obj(struct drm_exec *exec, struct
> > > > > drm_gem_object
> > > > > *obj);
> > > > > =C2=A0void drm_exec_unlock_obj(struct drm_exec *exec, struct
> > > > > drm_gem_object *obj);
> > > > > =C2=A0int drm_exec_prepare_obj(struct drm_exec *exec, struct
> > > > > drm_gem_object *obj,
