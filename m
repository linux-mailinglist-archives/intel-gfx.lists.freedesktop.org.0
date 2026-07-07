Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E8UxFnfsTGp7sAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:09:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2379C71B38C
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:09:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hGJNyRMN;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A1510EC88;
	Tue,  7 Jul 2026 12:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E82B10EC85;
 Tue,  7 Jul 2026 12:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783426163; x=1814962163;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=x0l1kKnL6j79RAY4+8oDLD9kaVDBsEYUGkbraGHeQw0=;
 b=hGJNyRMNNTVN/qEKf8ezUzEEd6JPfLkbq2FLxqglxd1v0DRhpcB841dS
 MhFPqk3wtP7uThiNboZRdQeoxMs9+sxfrdkdJL46ee4jfamwR0vAmyxx6
 wB0RqH0oMo8cPtQpbDFtfp8wYXMiw4GNeVDLYIAKw0liwu3gL8BVzWN1g
 lkNK4GCP/IiaN1PtmnZ8fm/T8Owiw7LA4tUGQUfiYfIwm5mKbc1zho2R6
 gspYnOPrwsgJ880+UjrqrEDGXaO71FqVSg270sWRMt/na+3bDL9DlJ2Ys
 mWmzcxNxjkaMyOLHzzFZqvraIhSfXDmclQD+vfbY1K8KExHMhk6n3Wl6K w==;
X-CSE-ConnectionGUID: Dii9Ov++TvuJTybEok2gyQ==
X-CSE-MsgGUID: h4Ds653JQsqa5rGc1gH7bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="109613072"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="109613072"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:09:23 -0700
X-CSE-ConnectionGUID: sFANOmuZTLGAhA0v9Vpy4A==
X-CSE-MsgGUID: 3QxxN87WRGuaIkA0psNGnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="255907659"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.199])
 ([10.245.244.199])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:09:18 -0700
Message-ID: <673ae71a1fc4dcce0e6a1655985a141d6f08c06f.camel@linux.intel.com>
Subject: Re: [PATCH 01/10] drm/exec: Add helper to bypass IGNORE_DUPLICATES
 flag
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
Date: Tue, 07 Jul 2026 14:09:16 +0200
In-Reply-To: <20260703-ttm_2_drm_exec-v1-1-43685ac1286b@gmx.de>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-1-43685ac1286b@gmx.de>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:url,gmx.de:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2379C71B38C

On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
> TTM is about to switch to drm_exec for locking objects
> in the LRU list. When we're done processing the object, we want to
> unlock it only if the caller doesn't already hold that lock. If
> DRM_EXEC_IGNORE_DUPLICATES is set on the exec object (which callers
> may
> require for unrelated reasons), we have no way of knowing whether the
> lock is already held.
>=20
> To remedy this, add a separate helper that forcefully bypasses the
> IGNORE_DUPLICATES flag for only a single locking operation.
>=20
> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>

The first, more complete attempt to try to tackle the exhaustive
eviction introduced a drm_exec snapshot ability instead.

https://lists.freedesktop.org/archives/intel-xe/2024-May/035820.html

The idea was that one would want to incrementally lock more buffer
objects until the validation succeeded, rather than dropping each
single lock after processing the eviction. That's actually what
guarantees forward progress. Restoring the snapshot unlocked all locks
that we grabbed in the process, and would work also for single locks.

Thanks,
Thomas


> ---
> =C2=A0drivers/gpu/drm/drm_exec.c | 52 ++++++++++++++++++++++++++++++++++-=
-
> ----------
> =C2=A0include/drm/drm_exec.h=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 ++
> =C2=A02 files changed, 41 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/drm_exec.c b/drivers/gpu/drm/drm_exec.c
> index 7988f5e7d56a3..91de6b4d29df8 100644
> --- a/drivers/gpu/drm/drm_exec.c
> +++ b/drivers/gpu/drm/drm_exec.c
> @@ -190,18 +190,9 @@ static int drm_exec_lock_contended(struct
> drm_exec *exec)
> =C2=A0	return ret;
> =C2=A0}
> =C2=A0
> -/**
> - * drm_exec_lock_obj - lock a GEM object for use
> - * @exec: the drm_exec object with the state
> - * @obj: the GEM object to lock
> - *
> - * Lock a GEM object for use and grab a reference to it.
> - *
> - * Returns: -EDEADLK if a contention is detected, -EALREADY when
> object is
> - * already locked (can be suppressed by setting the
> DRM_EXEC_IGNORE_DUPLICATES
> - * flag), -ENOMEM when memory allocation failed and zero for
> success.
> - */
> -int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
> *obj)
> +static int __drm_exec_lock_obj(struct drm_exec *exec,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_gem_object *obj,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool always_report_duplicates)
> =C2=A0{
> =C2=A0	int ret;
> =C2=A0
> @@ -226,7 +217,7 @@ int drm_exec_lock_obj(struct drm_exec *exec,
> struct drm_gem_object *obj)
> =C2=A0		return -EDEADLK;
> =C2=A0	}
> =C2=A0
> -	if (unlikely(ret =3D=3D -EALREADY) &&
> +	if (unlikely(ret =3D=3D -EALREADY) && !always_report_duplicates
> &&
> =C2=A0	=C2=A0=C2=A0=C2=A0 exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
> =C2=A0		return 0;
> =C2=A0
> @@ -243,8 +234,43 @@ int drm_exec_lock_obj(struct drm_exec *exec,
> struct drm_gem_object *obj)
> =C2=A0	dma_resv_unlock(obj->resv);
> =C2=A0	return ret;
> =C2=A0}
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
> +	return __drm_exec_lock_obj(exec, obj, false);
> +}
> =C2=A0EXPORT_SYMBOL(drm_exec_lock_obj);
> =C2=A0
> +/**
> + * drm_exec_lock_obj_report_dup - lock a GEM object for use, but
> always report duplicates
> + * @exec: the drm_exec object with the state
> + * @obj: the GEM object to lock
> + *
> + * Like drm_exec_lock_obj, lock a GEM object for use and grab a
> reference to it.
> + * Unlike drm_exec_lock_obj, DRM_EXEC_IGNORE_DUPLICATES is ignored
> and duplicates are
> + * always reported.
> + *
> + * Returns: -EDEADLK if a contention is detected, -EALREADY when
> object is
> + * already locked, -ENOMEM when memory allocation failed and zero
> for success.
> + */
> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
> +				 struct drm_gem_object *obj)
> +{
> +	return __drm_exec_lock_obj(exec, obj, false);
> +}
> +EXPORT_SYMBOL(drm_exec_lock_obj_report_dup);
> +
> =C2=A0/**
> =C2=A0 * drm_exec_unlock_obj - unlock a GEM object in this exec context
> =C2=A0 * @exec: the drm_exec object with the state
> diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
> index 8725ba92ff916..ff80dd2b72240 100644
> --- a/include/drm/drm_exec.h
> +++ b/include/drm/drm_exec.h
> @@ -176,6 +176,8 @@ void drm_exec_init(struct drm_exec *exec, u32
> flags, unsigned nr);
> =C2=A0void drm_exec_fini(struct drm_exec *exec);
> =C2=A0bool drm_exec_cleanup(struct drm_exec *exec);
> =C2=A0int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
> *obj);
> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
> +				 struct drm_gem_object *obj);
> =C2=A0void drm_exec_unlock_obj(struct drm_exec *exec, struct
> drm_gem_object *obj);
> =C2=A0int drm_exec_prepare_obj(struct drm_exec *exec, struct
> drm_gem_object *obj,
> =C2=A0			 unsigned int num_fences);
