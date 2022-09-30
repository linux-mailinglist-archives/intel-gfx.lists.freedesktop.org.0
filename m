Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 709775F0A78
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 13:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D186010E165;
	Fri, 30 Sep 2022 11:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F19C10E1DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 11:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664537505; x=1696073505;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=j+HdEIzkScAnBm7UlbVQNHq8iHIibE1MKHuiurOSefc=;
 b=GM9KOzMsunFnosz93N1tWn77ahwEQDlb14KnAqLA0QCl29a+WbmuuK9d
 s8GljU+cckfPPWtbIHC6Vm17LDkZ/nsF6cG58mYP28B8zNLdKLPNx07Hu
 MzLy1W85UJDJWqbE2OCYC2NIgek5uHtfq2VFU0ZlHPTlahGo67OYufXes
 gU3o3zVLa58D6ppDPQM+pYC5cGWn0GJ8oPchtZpBHKuLttqHt81VZfqtx
 xnlarxqUROccbXUUfDdvXOX79ok/FOQs9MkofqLgNTey0bLvIT7f1MT7Z
 5JUQDE5Pnt/6uCYSDpd0TJAD5DNiIvLhoMxNSWwbDug4OwPY7IY/o+Z6I g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="289331604"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="289331604"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 04:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="765102917"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="765102917"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 30 Sep 2022 04:31:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Sep 2022 14:31:41 +0300
Date: Fri, 30 Sep 2022 14:31:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <YzbTnZFZdFUM5REm@intel.com>
References: <20220930104302.25836-1-ville.syrjala@linux.intel.com>
 <20220930104302.25836-6-ville.syrjala@linux.intel.com>
 <e6c027ff-0cd4-ef3d-0f12-13d31015ba60@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e6c027ff-0cd4-ef3d-0f12-13d31015ba60@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Simplify modifier lookup in
 watermark code
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 30, 2022 at 02:22:08PM +0300, Juha-Pekka Heikkila wrote:
> I had earlier this patch which look like it does mostly the same 
> https://patchwork.freedesktop.org/patch/444010/?series=92491&rev=4
> 
> With exception to mc ccs, earlier Imre said mc ccs must not be 
> considered here.

For the rc_surface thing? Doesn't actually matter what we put there
on glk+ since it's only used in skl/bxt code.

> 
> /Juha-Pekka
> 
> On 30.9.2022 13.43, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Replace the huge modifier lists in the watermark code with
> > a few calls to intel_fb.c.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_fb.c      | 13 ++++++++++++
> >   drivers/gpu/drm/i915/display/intel_fb.h      |  1 +
> >   drivers/gpu/drm/i915/display/skl_watermark.c | 22 +++-----------------
> >   3 files changed, 17 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > index eefa33c555ac..63137ae5ab21 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -300,6 +300,19 @@ static bool plane_caps_contain_all(u8 caps, u8 mask)
> >   	return (caps & mask) == mask;
> >   }
> >   
> > +/**
> > + * intel_fb_is_tiled_modifier: Check if a modifier is a tiled modifier type
> > + * @modifier: Modifier to check
> > + *
> > + * Returns:
> > + * Returns %true if @modifier is a tiled modifier.
> > + */
> > +bool intel_fb_is_tiled_modifier(u64 modifier)
> > +{
> > +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
> > +				      INTEL_PLANE_CAP_TILING_MASK);
> > +}
> > +
> >   /**
> >    * intel_fb_is_ccs_modifier: Check if a modifier is a CCS modifier type
> >    * @modifier: Modifier to check
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> > index 12386f13a4e0..4662b812b934 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> > @@ -29,6 +29,7 @@ struct intel_plane_state;
> >   #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
> >   #define INTEL_PLANE_CAP_TILING_4	BIT(6)
> >   
> > +bool intel_fb_is_tiled_modifier(u64 modifier);
> >   bool intel_fb_is_ccs_modifier(u64 modifier);
> >   bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
> >   bool intel_fb_is_mc_ccs_modifier(u64 modifier);
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 18178b01375e..0715bb308989 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -1706,26 +1706,10 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
> >   		return -EINVAL;
> >   	}
> >   
> > -	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
> > -		      modifier == I915_FORMAT_MOD_4_TILED ||
> > -		      modifier == I915_FORMAT_MOD_Yf_TILED ||
> > -		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
> > -		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
> > -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> > -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> > -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
> > -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
> > -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
> > -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
> >   	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
> > -	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
> > -			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
> > -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> > -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> > -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
> > -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
> > -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
> > -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
> > +	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
> > +		intel_fb_is_tiled_modifier(modifier);
> > +	wp->rc_surface = intel_fb_is_ccs_modifier(modifier);
> 
> I had earlier this patch which look like it did mostly the same 
> https://patchwork.freedesktop.org/patch/444010/?series=92491&rev=4
> 
> With exception to mc ccs, earlier Imre said mc ccs must not be 
> considered here.
> 
> /Juha-Pekka
> 
> >   	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
> >   
> >   	wp->width = width;

-- 
Ville Syrjälä
Intel
