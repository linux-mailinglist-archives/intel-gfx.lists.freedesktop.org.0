Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F3D36A18E
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 16:15:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AFB66E23B;
	Sat, 24 Apr 2021 14:14:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA2E56E23B
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Apr 2021 14:14:57 +0000 (UTC)
IronPort-SDR: zbQFJ1zCgc2Ru97U72tdV/+B67OCQVoB/Q3dx4N1GJuuHc48HwcMa+YNUb7AdESlFBGsJULmZZ
 33JqOrDLMDmg==
X-IronPort-AV: E=McAfee;i="6200,9189,9964"; a="192995061"
X-IronPort-AV: E=Sophos;i="5.82,248,1613462400"; d="scan'208";a="192995061"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2021 07:14:56 -0700
IronPort-SDR: TVT+soWfxpaR3aiiYoadn12MOkuJpBhOyrxjimcYlcuc32tkn/0+G0GzaCRwLevSVxQuzt9Thg
 HzJAE74kU4VA==
X-IronPort-AV: E=Sophos;i="5.82,248,1613462400"; d="scan'208";a="464612350"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2021 07:14:55 -0700
Date: Sat, 24 Apr 2021 17:14:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210424141451.GA3732351@ideak-desk.fi.intel.com>
References: <20210421121959.3577881-1-imre.deak@intel.com>
 <20210421173220.3587009-1-imre.deak@intel.com>
 <YIL+IyMTSL64Hm50@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YIL+IyMTSL64Hm50@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Simplify CCS and UV plane
 alignment handling
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

On Fri, Apr 23, 2021 at 08:04:35PM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, Apr 21, 2021 at 08:32:20PM +0300, Imre Deak wrote:
> > We can handle the surface alignment of CCS and UV color planes for all
> > modifiers at one place, so do this. An AUX color plane can be a CCS or a
> > UV plane, use only the more specific query functions and remove
> > is_aux_plane() becoming redundant.
> > =

> > While at it add a TODO for linear UV color plane alignments. The spec
> > requires this to be stride-in-bytes * 64 on all platforms, whereas the
> > driver uses an alignment of 4k for gen<12 and 256k for gen>=3D12 for
> > linear UV planes.
> > =

> > v2:
> > - Restore previous alignment for linear UV surfaces.
> > =

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 27 +++++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_fb.c      |  8 ------
> >  drivers/gpu/drm/i915/display/intel_fb.h      |  1 -
> >  3 files changed, 18 insertions(+), 18 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index a10e26380ef3d..e246e5cf75866 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -973,10 +973,26 @@ unsigned int intel_surf_alignment(const struct dr=
m_framebuffer *fb,
> >  	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> >  =

> >  	/* AUX_DIST needs only 4K alignment */
> > -	if ((DISPLAY_VER(dev_priv) < 12 && is_aux_plane(fb, color_plane)) ||
> > -	    is_ccs_plane(fb, color_plane))
> > +	if (is_ccs_plane(fb, color_plane))
> >  		return 4096;
> >  =

> > +	if (is_semiplanar_uv_plane(fb, color_plane)) {
> > +		/*
> > +		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
> > +		 * alignment for linear UV planes on all platforms.
> > +		 */
> =

> I think it's just saying that UV should always start at an integer
> multiple of Y stride, whether we're dealing with linear or tiled.

This is what I see for SKL (bspec 18566):
"""
Linear:
The start of the UV surface programmed in the PLANE_AUX_DIST register
should be aligned to Stride in bytes * 64.
"""

The ICL page makes the above clearer that the above stride is the Y
plane stride, but I think it's always the same as the linear UV plane
stride.

Yes, I suppose the intention could have been to align to a multiple of
the stride, and maybe also ensure a page alignment.

> Dunno if that's true or not. I suppose there could be some
> tlb/prefetch related reasons for it.

Yea, not sure either. Simply following the above formula would result in
max_stride*64 =3D 128k * 64 =3D 8MB alignment requirement, which hopefully
isn't really needed.

> I think the same tile row/stride alignment requirements are specified
> for all gen9+ platforms actually. So if it's supposedly really needed
> then I guess we should do it on all platforms. And if it's not actually
> needed we shoud just nuke it all and be happy with 4k alignment.

I see the same UV alignment requirement on all platforms, but yes my
guess and hope is that only 4k is needed. I will do more tests to see if
misaligning the UV plane (only ensuring a 4k alignment) causes a problem
anywhere and ask for a clarification in bspec if not.

> What are the chances we can even find a suitbly aligned page boundary?
> Not sure.

The linear stride must be a multiple of 64, so stride*64 would always
result in a 4k alignment. The 64 multiplier in the formula could be
reduced in some cases (for instance when stride%4k=3D=3D0), but in the worst
cases only *64 could provide an offset aligned both to 4k and to the
multiple of stride.

> Oh and there's some oddball mention of the UV start having to be a
> multiple of four lines. Is it talking about AUX_DIST of AUX_OFFSET.y?
> No idea. What lines? Maybe Y lines? Not sure.

Haven't noticed that. In my reading AUX_DIST has to be always page
aligned, but in case of linear,X-,Y-tiled formats the UV-start can
follow the Y surface end "immediately on the next line", so Y-end and
UV-start can be on the same page.  I suppose in this layout there is
still the restriction that AUX_OFFSET.y should be a multiple of 4 (so
"immediately" in bpsec is not precise). Will test this out as well.

Another oddity I noticed now is the Yf format where the FB Y plane could
be allocated (with a good reason) with a different stride than the UV
plane? If so, bpsec says the driver should ensure that the Y and UV
scanout strides match (padding the allocated Y stride tile rows if
needed).

> > +		if (DISPLAY_VER(dev_priv) >=3D 12) {
> > +			if (fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR)
> > +				return intel_linear_alignment(dev_priv);
> > +
> > +			return intel_tile_row_size(fb, color_plane);
> > +		}
> > +
> > +		return 4096;
> > +	}
> > +
> > +	drm_WARN_ON(&dev_priv->drm, color_plane !=3D 0);
> > +
> >  	switch (fb->modifier) {
> >  	case DRM_FORMAT_MOD_LINEAR:
> >  		return intel_linear_alignment(dev_priv);
> > @@ -985,19 +1001,12 @@ unsigned int intel_surf_alignment(const struct d=
rm_framebuffer *fb,
> >  			return 256 * 1024;
> >  		return 0;
> >  	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> > -		if (is_semiplanar_uv_plane(fb, color_plane))
> > -			return intel_tile_row_size(fb, color_plane);
> > -		fallthrough;
> >  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> >  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> >  		return 16 * 1024;
> >  	case I915_FORMAT_MOD_Y_TILED_CCS:
> >  	case I915_FORMAT_MOD_Yf_TILED_CCS:
> >  	case I915_FORMAT_MOD_Y_TILED:
> > -		if (DISPLAY_VER(dev_priv) >=3D 12 &&
> > -		    is_semiplanar_uv_plane(fb, color_plane))
> > -			return intel_tile_row_size(fb, color_plane);
> > -		fallthrough;
> >  	case I915_FORMAT_MOD_Yf_TILED:
> >  		return 1 * 1024 * 1024;
> =

> As for these IIRC TGL+ should not need any extra alignment anymore.
> But that's material for a separate patch.

Ok, can check this later.

> Anyways patch seems ok.
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Thanks.

> >  	default:
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/=
i915/display/intel_fb.c
> > index 0ec9ad7220a14..c8aaca3e79e97 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -30,14 +30,6 @@ bool is_gen12_ccs_cc_plane(const struct drm_framebuf=
fer *fb, int plane)
> >  	       plane =3D=3D 2;
> >  }
> >  =

> > -bool is_aux_plane(const struct drm_framebuffer *fb, int plane)
> > -{
> > -	if (is_ccs_modifier(fb->modifier))
> > -		return is_ccs_plane(fb, plane);
> > -
> > -	return plane =3D=3D 1;
> > -}
> > -
> >  bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int colo=
r_plane)
> >  {
> >  	return intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) =
&&
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/=
i915/display/intel_fb.h
> > index 6acf792a8c44a..13244ec1ad214 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> > @@ -19,7 +19,6 @@ struct intel_plane_state;
> >  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
> >  bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
> >  bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane=
);
> > -bool is_aux_plane(const struct drm_framebuffer *fb, int plane);
> >  bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int colo=
r_plane);
> >  =

> >  bool is_surface_linear(const struct drm_framebuffer *fb, int color_pla=
ne);
> > -- =

> > 2.27.0
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
