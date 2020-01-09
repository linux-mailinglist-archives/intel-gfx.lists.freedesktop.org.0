Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0363135BBA
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 15:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2B626E42F;
	Thu,  9 Jan 2020 14:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6095B6E42F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 14:52:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 06:52:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="235161455"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 09 Jan 2020 06:52:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jan 2020 16:52:41 +0200
Date: Thu, 9 Jan 2020 16:52:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200109145241.GO1208@intel.com>
References: <20200109141152.975687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109141152.975687-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Validation rotated vma bounds
 are within the object
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 09, 2020 at 02:11:52PM +0000, Chris Wilson wrote:
> Quite understandably, we bug out when asked to find a page that doesn't
> belong to the object. However, we should report the error back to the
> user long before we attempt the out-of-bound access! In this case, it is
> insufficient validation on the rotated vma, with the simplest/cheapest
> point for us to insert a bound check when we are computing the rotated
> page lookups.
> =

> Similarly, it might be wise to see if we can validate the user input
> upon creating the rotated framebuffer.

We do. Did someone break it?

> =

> Closes: https://gitlab.freedesktop.org/drm/intel/issues/951
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 21 ++++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index 99189cdba8a9..59a60968a6da 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1283,6 +1283,7 @@ static noinline struct sg_table *
>  intel_rotate_pages(struct intel_rotation_info *rot_info,
>  		   struct drm_i915_gem_object *obj)
>  {
> +	const unsigned long npages =3D obj->base.size >> PAGE_SHIFT;
>  	unsigned int size =3D intel_rotation_info_size(rot_info);
>  	struct sg_table *st;
>  	struct scatterlist *sg;
> @@ -1302,9 +1303,23 @@ intel_rotate_pages(struct intel_rotation_info *rot=
_info,
>  	sg =3D st->sgl;
>  =

>  	for (i =3D 0 ; i < ARRAY_SIZE(rot_info->plane); i++) {
> -		sg =3D rotate_pages(obj, rot_info->plane[i].offset,
> -				  rot_info->plane[i].width, rot_info->plane[i].height,
> -				  rot_info->plane[i].stride, st, sg);
> +		const struct intel_remapped_plane_info *plane =3D
> +			&rot_info->plane[i];
> +		unsigned long last;
> +
> +		last =3D plane->offset;
> +		last +=3D (plane->height - 1) * plane->stride;
> +		last +=3D plane->width - 1;
> +		if (last >=3D npages) {
> +			ret =3D -EINVAL;
> +			goto err_sg_alloc;
> +		}
> +
> +		sg =3D rotate_pages(obj,
> +				  plane->offset,
> +				  plane->width, plane->height,
> +				  plane->stride,
> +				  st, sg);
>  	}
>  =

>  	return st;
> -- =

> 2.25.0.rc2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
