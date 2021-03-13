Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C8F339E8E
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Mar 2021 15:37:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19796E131;
	Sat, 13 Mar 2021 14:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD1026E131
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Mar 2021 14:36:54 +0000 (UTC)
IronPort-SDR: WOQCjkTK3XY7Z/FXvTCzOnex8JQ2BCOa8V18HoB7OzlwYOC6AaHLstPj+Zen8iRI1CVpzJMxzF
 rD20nNBD4mPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9922"; a="168211283"
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; d="scan'208";a="168211283"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2021 06:36:53 -0800
IronPort-SDR: 0NKuZmoM0Pnl1CbHk0Rnu0QDPSROCgJAPHoB+d9sIlliTW4IFoq6XGqEGZl8R6cCsOd4Pv3hfQ
 eknNkGYpCODg==
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; d="scan'208";a="411344252"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2021 06:36:51 -0800
Date: Sat, 13 Mar 2021 16:36:47 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210313143647.GC3154085@ideak-desk.fi.intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-22-imre.deak@intel.com>
 <YEusvH7rdjn24Hnr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YEusvH7rdjn24Hnr@intel.com>
Subject: Re: [Intel-gfx] [PATCH 21/23] drm/i915: Add support for FBs
 requiring a POT stride alignment
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 12, 2021 at 08:02:36PM +0200, Ville Syrj=E4l=E4 wrote:
> [...]
> On Thu, Mar 11, 2021 at 12:17:34AM +0200, Imre Deak wrote:
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index fc02eca45e4d..08b348c9e3e1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -94,6 +94,7 @@ struct intel_framebuffer {
> >  	struct drm_framebuffer base;
> >  	struct intel_frontbuffer *frontbuffer;
> >  	struct intel_rotation_info rot_info;
> > +	struct intel_remapped_info rem_info;
> >  =

> >  	/* for each plane in the normal GTT view */
> >  	struct {
> > @@ -101,6 +102,8 @@ struct intel_framebuffer {
> >  	} normal[4];
> >  	/* for each plane in the rotated GTT view for no-CCS formats */
> >  	struct intel_fb_plane_remap_info rotated[2];
> > +	/* for each plane in the remapped GTT view. TODO: CCS formats */
> > +	struct intel_fb_plane_remap_info remapped[2];
> =

> We might want to look into restructuring this a it as a followup.
> Maybe we can collect all the rotation vs. remapping stuff into
> separate sub-structures. Not sure.

Do you mean

 struct intel_fb_plane_remap_info {
+       struct intel_remapped_plane_info gtt;
        unsigned int x, y;
        unsigned int pitch; /* pixels */
 };
@@ -93,8 +94,6 @@ struct intel_fb_plane_remap_info {
 struct intel_framebuffer {
        struct drm_framebuffer base;
        struct intel_frontbuffer *frontbuffer;
-       struct intel_rotation_info rot_info;
-       struct intel_remapped_info rem_info;
 =

        /* for each plane in the normal GTT view */
        struct {

resulting in
https://github.com/ideak/linux/commit/0fd28d738f9

?

Looks better to me.

> [...] =

> > +static unsigned int plane_view_dst_stride(const struct intel_framebuff=
er *fb, int color_plane,
> > +					  int pitch_tiles)
> > +{
> > +	unsigned int dst_stride;
> > +
> > +	if (!intel_fb_needs_pot_stride_remap(fb)) {
> > +		dst_stride =3D pitch_tiles;
> > +	} else {
> > +		dst_stride =3D roundup_pow_of_two(pitch_tiles);
> > +		drm_WARN_ON(fb->base.dev, dst_stride < pitch_tiles);
> =

> Dunno if that WARN is particularly useful. We're talking in tiles here
> so seems extremely unlikely it could overflow.
> =

> So I'd probably just make this as simple as possible, like:
> if (needs_pot)
> 	return roundup(x);
> else
> 	return x;

Ok, maybe I was thinking of u16, but the overflow for that is checked
later.

I'll also s/int pitch_tiles/unsigned int pitch_tiles/.

> > +	};
> > +
> > +	return dst_stride;
> > +}
> > +
> [...]
> > @@ -1280,9 +1282,27 @@ rotate_pages(struct drm_i915_gem_object *obj, un=
signed int offset,
> >  			sg_dma_address(sg) =3D
> >  				i915_gem_object_get_dma_address(obj, src_idx);
> >  			sg_dma_len(sg) =3D I915_GTT_PAGE_SIZE;
> > +
> >  			sg =3D sg_next(sg);
> > -			src_idx -=3D stride;
> > +			src_idx -=3D src_stride;
> >  		}
> > +
> > +		left =3D (dst_stride - height) * I915_GTT_PAGE_SIZE;
> > +
> > +		if (!left)
> > +			continue;
> > +
> > +		st->nents++;
> > +
> > +		/*
> > +		 * The DE ignores the PTEs for the padding tiles, the sg entry
> > +		 * here is just a conenience to indicate how many padding PTEs
> > +		 * to insert at this spot.
> > +		 */
> =

> OK. That certainly makes this nice and simple.

This was only confirmed to be the case on ADL_P, but that's the only
relevant place in any case.

> > +		sg_set_page(sg, NULL, left, 0);
> > +		sg_dma_address(sg) =3D 0;
> > +		sg_dma_len(sg) =3D left;
> > +		sg =3D sg_next(sg);
> =

> Do we have enough sg entries for these extras? Ah, yeah we allocate
> based on the worst case where each vma page needs its own entry.

Yes, and then i915_sg_trim() compacts it.

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> >  	}
> >  =

> >  	return sg;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
