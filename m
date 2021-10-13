Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFB042CCD6
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 23:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61EDD6E116;
	Wed, 13 Oct 2021 21:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE486E116
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 21:33:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="208342842"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="208342842"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 14:33:00 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="491656058"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 14:32:59 -0700
Date: Thu, 14 Oct 2021 00:32:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211013213255.GD19061@ideak-desk.fi.intel.com>
References: <20211007203517.3364336-1-imre.deak@intel.com>
 <20211007203517.3364336-10-imre.deak@intel.com>
 <YWdBFg9i85wzXUfz@intel.com> <YWdFbXzbqHCPK4uK@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YWdFbXzbqHCPK4uK@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915: Add a platform independent
 way to check for CCS control planes
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

On Wed, Oct 13, 2021 at 11:45:33PM +0300, Ville Syrjälä wrote:
> On Wed, Oct 13, 2021 at 11:27:02PM +0300, Ville Syrjälä wrote:
> > On Thu, Oct 07, 2021 at 11:35:15PM +0300, Imre Deak wrote:
> > > Future platforms change the location of CCS control planes in CCS
> > > framebuffers, so add intel_fb_is_rc_ccs_ctrl_plane() to query for these
> > 
> > Don't we use the term 'ccs_plane' everywhere else?
> > 
> > > planes independently of the platform. This function can be used
> > > everywhere instead of is_ccs_plane() (or is_ccs_plane() && !cc_plane()),
> > > since all the callers are only interested in control planes (and not CCS
> > > color-clear planes).
> 
> Hmm. I guess you're changing the terminology across the board?
> If it's used consistently then no objections from me.

ccs_plane has been used as a generic term for both the "control" and the
cc plane, or at least I thought of it as such. I'm not sure if control
is a good name, but couldn't think of a better one. In any case I
thought calling the control plane ccs_plane is too generic, and would
make things clearer to use a more explicit term.

Function params and variables still use the ccs_plane name, though all
or most just handle ccs control planes.

main_to_ccs_plane() and skl_ccs_to_main_plane() should be renamed to
intel_fb_main_to_ccs_ctrl_plane() and intel_fb_ccs_ctrl_to_main_plane()
and change the latter one to assert that a control plane was passed.

IGT would also need the corresponding renames.

If you agree with the rational I can follow up with the above renames.
Otherwise we could just continue calling the control plane ccs_plane and
the cc plane ccs_cc_plane.

> > > Add the corresponding intel_fb_is_gen12_ccs_ctrl_plane(), which can be
> > > used everywhere instead of is_gen12_ccs_plane(), based on the above
> > > explanation.
> > > 
> > > This change also unexports the is_gen12_ccs_modifier(),
> > > is_gen12_ccs_plane(), is_gen12_ccs_cc_plane() functions as they are only
> > > used in intel_fb.c
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_types.h    |  7 --
> > >  drivers/gpu/drm/i915/display/intel_fb.c       | 73 ++++++++++++++-----
> > >  drivers/gpu/drm/i915/display/intel_fb.h       |  5 +-
> > >  .../drm/i915/display/skl_universal_plane.c    |  3 +-
> > >  4 files changed, 56 insertions(+), 32 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index bb53b01f07aee..b4b6a31caf4e3 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -2050,11 +2050,4 @@ static inline bool is_ccs_modifier(u64 modifier)
> > >  	       modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
> > >  }
> > >  
> > > -static inline bool is_gen12_ccs_modifier(u64 modifier)
> > > -{
> > > -	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> > > -	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
> > > -	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
> > > -}
> > > -
> > >  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > > index e8fe198b1b6a1..392f89e659eb6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > @@ -125,6 +125,8 @@ const struct intel_modifier_desc {
> > >  #define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
> > >  		u8 type:3;
> > >  		u8 cc_planes:3;
> > > +		u8 packed_ctrl_planes:4;
> > > +		u8 planar_ctrl_planes:4;
> > >  	} ccs;
> > >  } intel_modifiers[] = {
> > >  	{
> > > @@ -151,6 +153,7 @@ const struct intel_modifier_desc {
> > >  		.tiling = I915_TILING_Y,
> > >  
> > >  		.ccs.type = INTEL_CCS_RC,
> > > +		.ccs.packed_ctrl_planes = BIT(1),
> > >  
> > >  		FORMAT_OVERRIDE(skl_ccs_formats),
> > >  	},
> > > @@ -159,6 +162,7 @@ const struct intel_modifier_desc {
> > >  		.display_versions = DISPLAY_VER_MASK(9, 11),
> > >  
> > >  		.ccs.type = INTEL_CCS_RC,
> > > +		.ccs.packed_ctrl_planes = BIT(1),
> > >  
> > >  		FORMAT_OVERRIDE(skl_ccs_formats),
> > >  	},
> > > @@ -168,6 +172,7 @@ const struct intel_modifier_desc {
> > >  		.tiling = I915_TILING_Y,
> > >  
> > >  		.ccs.type = INTEL_CCS_RC,
> > > +		.ccs.packed_ctrl_planes = BIT(1),
> > >  
> > >  		FORMAT_OVERRIDE(gen12_ccs_formats),
> > >  	},
> > > @@ -177,6 +182,7 @@ const struct intel_modifier_desc {
> > >  		.tiling = I915_TILING_Y,
> > >  
> > >  		.ccs.type = INTEL_CCS_RC_CC,
> > > +		.ccs.packed_ctrl_planes = BIT(1),
> > >  		.ccs.cc_planes = BIT(2),
> > >  
> > >  		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
> > > @@ -187,6 +193,8 @@ const struct intel_modifier_desc {
> > >  		.tiling = I915_TILING_Y,
> > >  
> > >  		.ccs.type = INTEL_CCS_MC,
> > > +		.ccs.packed_ctrl_planes = BIT(1),
> > > +		.ccs.planar_ctrl_planes = BIT(2) | BIT(3),
> > >  
> > >  		FORMAT_OVERRIDE(gen12_ccs_formats),
> > >  	},
> > > @@ -385,17 +393,44 @@ bool intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
> > >  	return format_is_yuv_semiplanar(lookup_modifier(modifier), info);
> > >  }
> > >  
> > > -bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
> > > +static u8 ccs_ctrl_plane_mask(const struct intel_modifier_desc *md,
> > > +			      const struct drm_format_info *format)
> > >  {
> > > -	if (!is_ccs_modifier(fb->modifier))
> > > -		return false;
> > > +	if (format_is_yuv_semiplanar(md, format))
> > > +		return md->ccs.planar_ctrl_planes;
> > > +	else
> > > +		return md->ccs.packed_ctrl_planes;
> > > +}
> > > +
> > > +/**
> > > + * intel_fb_is_ccs_ctrl_plane: Check if a framebuffer color plane is a CCS control plane
> > > + * @fb: Framebuffer
> > > + * @plane: color plane index to check
> > > + *
> > > + * Returns:
> > > + * Returns %true if @fb's color plane at index @plane is a CCS control plane.
> > > + */
> > > +bool intel_fb_is_ccs_ctrl_plane(const struct drm_framebuffer *fb, int plane)
> > > +{
> > > +	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
> > >  
> > > -	return plane >= fb->format->num_planes / 2;
> > > +	return ccs_ctrl_plane_mask(md, fb->format) & BIT(plane);
> > >  }
> > >  
> > > -bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
> > > +/**
> > > + * intel_fb_is_gen12_ccs_ctrl_plane: Check if a framebuffer color plane is a GEN12 CCS control plane
> > > + * @fb: Framebuffer
> > > + * @plane: color plane index to check
> > > + *
> > > + * Returns:
> > > + * Returns %true if @fb's color plane at index @plane is a GEN12 CCS control plane.
> > > + */
> > > +static bool intel_fb_is_gen12_ccs_ctrl_plane(const struct drm_framebuffer *fb, int plane)
> > >  {
> > > -	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
> > > +	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
> > > +
> > > +	return md->display_versions & (DISPLAY_VER_MASK(12, 13)) &&
> 
> Aha! No RPN here ;)
> 
> -- 
> Ville Syrjälä
> Intel
