Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD0B380A55
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 15:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB9776EE7A;
	Fri, 14 May 2021 13:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 147906EE78;
 Fri, 14 May 2021 13:20:30 +0000 (UTC)
IronPort-SDR: 4rwT6xpIF7VhGZF+DgOxSHMyDLLvysotZbj5pFo9WcgkuhnRQo0miuSUbS57gkpQc4SrUv/APE
 VZLceUZfv18Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="264097804"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="264097804"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 06:20:26 -0700
IronPort-SDR: 2iIXy4p8EUwBpuwcOg3HaByWXjr6+D3UhqpQARc4h6ilNsNDWJDjmKOoIR+oa+ydFRcOgpwKnd
 vT4sczH1MAYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="402081668"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 14 May 2021 06:20:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 16:20:23 +0300
Date: Fri, 14 May 2021 16:20:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YJ55F8f4s3jSOGKY@intel.com>
References: <20210513120756.622515-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210513120756.622515-1-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Pin the L-shape quirked
 object as unshrinkable
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 13, 2021 at 01:07:56PM +0100, Matthew Auld wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> =

> When instantiating a tiled object on an L-shaped memory machine, we mark
> the object as unshrinkable to prevent the shrinker from trying to swap
> out the pages. We have to do this as we do not know the swizzling on the
> individual pages, and so the data will be scrambled across swap out/in.
> =

> Not only do we need to move the object off the shrinker list, we need to
> mark the object with shrink_pin so that the counter is consistent across
> calls to madvise.
> =

> v2: in the madvise ioctl we need to check if the object is currently
> shrinkable/purgeable, not if the object type supports shrinking
> =

> Fixes: 0175969e489a ("drm/i915/gem: Use shrinkable status for unknown swi=
zzle quirks")
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/3293
> Reported-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>

This one seems to fare better than v1.

Tested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c |  2 ++
>  drivers/gpu/drm/i915/i915_gem.c           | 11 +++++------
>  2 files changed, 7 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/=
i915/gem/i915_gem_pages.c
> index aed8a37ccdc9..7361971c177d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -63,6 +63,8 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_ob=
ject *obj,
>  	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
>  		GEM_BUG_ON(i915_gem_object_has_tiling_quirk(obj));
>  		i915_gem_object_set_tiling_quirk(obj);
> +		GEM_BUG_ON(!list_empty(&obj->mm.link));
> +		atomic_inc(&obj->mm.shrink_pin);
>  		shrinkable =3D false;
>  	}
>  =

> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_=
gem.c
> index d0018c5f88bd..cffd7f4f87dc 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1009,12 +1009,11 @@ i915_gem_madvise_ioctl(struct drm_device *dev, vo=
id *data,
>  		obj->mm.madv =3D args->madv;
>  =

>  	if (i915_gem_object_has_pages(obj)) {
> -		struct list_head *list;
> +		unsigned long flags;
>  =

> -		if (i915_gem_object_is_shrinkable(obj)) {
> -			unsigned long flags;
> -
> -			spin_lock_irqsave(&i915->mm.obj_lock, flags);
> +		spin_lock_irqsave(&i915->mm.obj_lock, flags);
> +		if (!list_empty(&obj->mm.link)) {
> +			struct list_head *list;
>  =

>  			if (obj->mm.madv !=3D I915_MADV_WILLNEED)
>  				list =3D &i915->mm.purge_list;
> @@ -1022,8 +1021,8 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void=
 *data,
>  				list =3D &i915->mm.shrink_list;
>  			list_move_tail(&obj->mm.link, list);
>  =

> -			spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
>  		}
> +		spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
>  	}
>  =

>  	/* if the object is no longer attached, discard its backing storage */
> -- =

> 2.26.3

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
