Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA62983A03B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 04:43:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4868A10E810;
	Wed, 24 Jan 2024 03:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE1F10E810
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 03:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706067795; x=1737603795;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4v3mfmvIdlo6cKHY79Rhr3dNQQQ644giJnLYCWUCOyU=;
 b=m1tkA5NAHAq6FuAD7aiQsPzGR3WJ37R9VSdDAT6YzilnpyLhknfzOO1s
 7XSZ5ehWdAYAjwFvCF2FoCwGkJ6lPmnRB1oZvnVYrnTmbcF41enW9WvyH
 OFWnAR3zsA3a9k+JE6YMECbF673In2SCTlBrYm+VXc0SKIFMpY3IaecAj
 Ktvbx2H6vhM3mIrjBTqzeTZEgycAYsVZQmFHSC0qnB85p+jNzdRFotC4M
 SZt4qiVsvlAXPfUPwggWUQT8EpyqJnkRvrPfbtYbQhC4QYElsxXBdgCvu
 4r0U4WLDOAATjeeq7Mf8lAA27R7fU1YvDoEY7c4cxZKuetau/ze9EhUJH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="466004863"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; d="scan'208";a="466004863"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 19:43:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="820314329"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; d="scan'208";a="820314329"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 19:43:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Jan 2024 05:43:10 +0200
Date: Wed, 24 Jan 2024 05:43:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: Allow FBC with CCS modifiers on SKL+
Message-ID: <ZbCHTpBWzoKBKwGS@intel.com>
References: <20240123090244.30025-1-ville.syrjala@linux.intel.com>
 <ZbBBNsQF_kYGNQTN@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZbBBNsQF_kYGNQTN@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Jan 23, 2024 at 05:44:06PM -0500, Rodrigo Vivi wrote:
> On Tue, Jan 23, 2024 at 11:02:44AM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Only display workarounds 0391 and 0475 call for disabling
> > FBC with render compression, and those are listed only for
> > pre-prod SKL steppings. So it should be safe to enable
> > FB+CCS on production hardware.
> > 
> > AFAIK CCS is limited to 50% bandwidth reduction (perhaps
> > clear color can do better?). FBC can exceed that number
> > by quite a bit, given the right kind of framebuffer
> > contents. So piling on both kinds of compressions could
> > still make sense.
> 
> yeap, I think so.
> The risk is to hit a workaround that is not ducumented in the BSpec
> cases after gen11...
> 
> Uma, do you recall having seen lately any workaround with FBC
> and render compression?
> 
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10125
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 13 +------------
> >  1 file changed, 1 insertion(+), 12 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index f17a1afb4929..b453fcbd67da 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1087,18 +1087,7 @@ static bool i8xx_fbc_tiling_valid(const struct intel_plane_state *plane_state)
> >  
> >  static bool skl_fbc_tiling_valid(const struct intel_plane_state *plane_state)
> >  {
> > -	const struct drm_framebuffer *fb = plane_state->hw.fb;
> > -
> > -	switch (fb->modifier) {
> > -	case DRM_FORMAT_MOD_LINEAR:
> > -	case I915_FORMAT_MOD_Y_TILED:
> > -	case I915_FORMAT_MOD_Yf_TILED:
> > -	case I915_FORMAT_MOD_4_TILED:
> > -	case I915_FORMAT_MOD_X_TILED:
> > -		return true;
> > -	default:
> > -		return false;
> > -	}
> > +	return true;
> 
> we could also simply kill this function... the compiler does the right thing,
> but users navigating on the code needs to do an extra ctag/cscope inspections
> to see that it is a simple return.  But well, the code do gets prettier with
> the function :)

I've been thinking of converting a bunch of this stuff to vfuncs,
so keeping the function around in anticipation of that seemed
semi-reasonable.

> So, up to you:
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks.

> 
> >  }
> >  
> >  static bool tiling_is_valid(const struct intel_plane_state *plane_state)
> > -- 
> > 2.43.0
> > 

-- 
Ville Syrjälä
Intel
