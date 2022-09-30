Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2E35F0B74
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 14:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC4310ECC1;
	Fri, 30 Sep 2022 12:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37CE910E1DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 12:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664540049; x=1696076049;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=i4tgFJKvtMxWljcJWffGGXVuBAXGz6IIxX8TQnqi0Zw=;
 b=Z6KqEcPHfrlhVqZCj/+xWy9g/u3IwFBn/lyeOzh0ViChS0FuDG0me7DP
 gbuqerlkZoQPjJqiAd5IVTIhQZUsMMZpFd2xIOddleTF2o5ooi66SqsV6
 Zh5Rka3pe/mqCclMHGqgWNzw9MsWRg/IJ1VJOQ/wNZtCs0qpNA3Lxx+DM
 x20yds3R4qM+MrQIwyOAMVOzDhQw8WXHPNhaUUHRbGbxph4PIWMowGvbs
 UhWl6n8Kyf+30rxUtlLAZcHHhHenUTSIuf5IZdHiybMFKahtpLgFHWy0I
 4rFo6sYqv1RWweFuOuzMFuCu7vg1G2EEuZTqr0mTY7KApqvoz92TYFqr5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="303088847"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="303088847"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 05:13:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="622752333"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="622752333"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 30 Sep 2022 05:13:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Sep 2022 15:13:46 +0300
Date: Fri, 30 Sep 2022 15:13:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <YzbdepBtrHSPN2Cl@intel.com>
References: <20220930104302.25836-1-ville.syrjala@linux.intel.com>
 <20220930104302.25836-6-ville.syrjala@linux.intel.com>
 <e6c027ff-0cd4-ef3d-0f12-13d31015ba60@gmail.com>
 <YzbTnZFZdFUM5REm@intel.com>
 <039f8845-3521-614a-7794-c3eac9494429@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <039f8845-3521-614a-7794-c3eac9494429@gmail.com>
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

On Fri, Sep 30, 2022 at 02:47:32PM +0300, Juha-Pekka Heikkila wrote:
> On 30.9.2022 14.31, Ville Syrjälä wrote:
> > On Fri, Sep 30, 2022 at 02:22:08PM +0300, Juha-Pekka Heikkila wrote:
> >> I had earlier this patch which look like it does mostly the same
> >> https://patchwork.freedesktop.org/patch/444010/?series=92491&rev=4
> >>
> >> With exception to mc ccs, earlier Imre said mc ccs must not be
> >> considered here.
> > 
> > For the rc_surface thing? Doesn't actually matter what we put there
> > on glk+ since it's only used in skl/bxt code.
> > 
> 
> ack. Then this set is
> 
> Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Thanks. We could s/rc_surface/ccs_surface/ as a followup
as well. That should make everything 100% consistent.

> 
> >>
> >> /Juha-Pekka
> >>
> >> On 30.9.2022 13.43, Ville Syrjala wrote:
> >>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>>
> >>> Replace the huge modifier lists in the watermark code with
> >>> a few calls to intel_fb.c.
> >>>
> >>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/display/intel_fb.c      | 13 ++++++++++++
> >>>    drivers/gpu/drm/i915/display/intel_fb.h      |  1 +
> >>>    drivers/gpu/drm/i915/display/skl_watermark.c | 22 +++-----------------
> >>>    3 files changed, 17 insertions(+), 19 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> >>> index eefa33c555ac..63137ae5ab21 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> >>> @@ -300,6 +300,19 @@ static bool plane_caps_contain_all(u8 caps, u8 mask)
> >>>    	return (caps & mask) == mask;
> >>>    }
> >>>    
> >>> +/**
> >>> + * intel_fb_is_tiled_modifier: Check if a modifier is a tiled modifier type
> >>> + * @modifier: Modifier to check
> >>> + *
> >>> + * Returns:
> >>> + * Returns %true if @modifier is a tiled modifier.
> >>> + */
> >>> +bool intel_fb_is_tiled_modifier(u64 modifier)
> >>> +{
> >>> +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
> >>> +				      INTEL_PLANE_CAP_TILING_MASK);
> >>> +}
> >>> +
> >>>    /**
> >>>     * intel_fb_is_ccs_modifier: Check if a modifier is a CCS modifier type
> >>>     * @modifier: Modifier to check
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> >>> index 12386f13a4e0..4662b812b934 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> >>> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> >>> @@ -29,6 +29,7 @@ struct intel_plane_state;
> >>>    #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
> >>>    #define INTEL_PLANE_CAP_TILING_4	BIT(6)
> >>>    
> >>> +bool intel_fb_is_tiled_modifier(u64 modifier);
> >>>    bool intel_fb_is_ccs_modifier(u64 modifier);
> >>>    bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
> >>>    bool intel_fb_is_mc_ccs_modifier(u64 modifier);
> >>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> >>> index 18178b01375e..0715bb308989 100644
> >>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> >>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> >>> @@ -1706,26 +1706,10 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
> >>>    		return -EINVAL;
> >>>    	}
> >>>    
> >>> -	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
> >>> -		      modifier == I915_FORMAT_MOD_4_TILED ||
> >>> -		      modifier == I915_FORMAT_MOD_Yf_TILED ||
> >>> -		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
> >>> -		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
> >>> -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> >>> -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> >>> -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
> >>> -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
> >>> -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
> >>> -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
> >>>    	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
> >>> -	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
> >>> -			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
> >>> -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> >>> -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> >>> -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
> >>> -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
> >>> -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
> >>> -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
> >>> +	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
> >>> +		intel_fb_is_tiled_modifier(modifier);
> >>> +	wp->rc_surface = intel_fb_is_ccs_modifier(modifier);
> >>
> >> I had earlier this patch which look like it did mostly the same
> >> https://patchwork.freedesktop.org/patch/444010/?series=92491&rev=4
> >>
> >> With exception to mc ccs, earlier Imre said mc ccs must not be
> >> considered here.
> >>
> >> /Juha-Pekka
> >>
> >>>    	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
> >>>    
> >>>    	wp->width = width;
> > 

-- 
Ville Syrjälä
Intel
