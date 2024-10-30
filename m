Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B663E9B63F6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 14:22:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABDF910E2BF;
	Wed, 30 Oct 2024 13:22:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ftRbSbDY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9650010E2BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730294542; x=1761830542;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WRdr1H2vTKNFB60Uw7aZriqo09C8Pi1KHCG3zJWwmkk=;
 b=ftRbSbDYpviF984LSmf6mWwvqI+VMX7aAj4p67P+yy0SWI7eqSnNmISj
 Txd+eRIZ+IeR/6loFIU38IdNEsoOBcKvFtYEv8PieUOb2nNrigcLgU22k
 WY8omcAZkruqUgQMEQR6ClzdxcMJxUgJ8AnGzttWFCHXF7MauKi7sRw2H
 68+TmoZZLJfSXvUxg2p0CciqT64Y2kjLFSMejLnZE5HytaC9J8URviMZL
 oz+G9tKHCuF/QIlVu+Fw2KN5zOlRR4SLN27hAFjPPvAR8/XT3rAjEsVYi
 0JiI+a2z1B3REbVpf34Jixn7Z5yKicVJSW/UO7F+1A66UYwALLPrWVdOe Q==;
X-CSE-ConnectionGUID: Yk2EpPoeSMyMzZLANWeIzw==
X-CSE-MsgGUID: 2JE/tod4T5CMYLeajMYFNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="40566412"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="40566412"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 06:22:21 -0700
X-CSE-ConnectionGUID: 5pGJGC8mTPKRvGkqMcsv6w==
X-CSE-MsgGUID: JEVxUkIXSX2SA2Yv0mxxRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82425730"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Oct 2024 06:22:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Oct 2024 15:22:17 +0200
Date: Wed, 30 Oct 2024 15:22:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/11] drm/i915/cdclk: Extract vlv_dsi_min_cdclk()
Message-ID: <ZyIzCZ1f7QDQPB5G@intel.com>
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-7-ville.syrjala@linux.intel.com>
 <87frodn7sh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87frodn7sh.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 30, 2024 at 01:34:38PM +0200, Jani Nikula wrote:
> On Tue, 29 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Pull the DSI min cdclk calculation into a helper and hide
> > it inside vlv_dsi.c in order to keep most DSI related
> > details in one place.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 ++------------------
> >  drivers/gpu/drm/i915/display/vlv_dsi.c     | 25 ++++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/vlv_dsi.h     |  8 +++++++
> >  3 files changed, 35 insertions(+), 21 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 89d12c521411..e10378744607 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -46,6 +46,7 @@
> >  #include "intel_vdsc.h"
> >  #include "skl_watermark.h"
> >  #include "skl_watermark_regs.h"
> > +#include "vlv_dsi.h"
> >  #include "vlv_sideband.h"
> >  
> >  /**
> > @@ -2849,8 +2850,6 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
> >  
> >  int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> >  {
> > -	struct intel_display *display = to_intel_display(crtc_state);
> > -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> >  	int min_cdclk;
> >  
> >  	if (!crtc_state->hw.enable)
> > @@ -2859,25 +2858,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> >  	min_cdclk = intel_pixel_rate_to_cdclk(crtc_state);
> >  	min_cdclk = max(hsw_ips_min_cdclk(crtc_state), min_cdclk);
> >  	min_cdclk = max(intel_audio_min_cdclk(crtc_state), min_cdclk);
> > -
> > -	/*
> > -	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
> > -	 * than 320000KHz.
> > -	 */
> > -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> > -	    IS_VALLEYVIEW(dev_priv))
> > -		min_cdclk = max(320000, min_cdclk);
> > -
> > -	/*
> > -	 * On Geminilake once the CDCLK gets as low as 79200
> > -	 * picture gets unstable, despite that values are
> > -	 * correct for DSI PLL and DE PLL.
> > -	 */
> > -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> > -	    IS_GEMINILAKE(dev_priv))
> > -		min_cdclk = max(158400, min_cdclk);
> > -
> > -	/* Account for additional needs from the planes */
> > +	min_cdclk = max(vlv_dsi_min_cdclk(crtc_state), min_cdclk);
> >  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
> >  
> >  	if (crtc_state->dsc.compression_enable)
> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > index 9383eedee2d4..49a895589150 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > @@ -1760,6 +1760,31 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
> >  	intel_dsi_log_params(intel_dsi);
> >  }
> >  
> > +int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> > +	int min_cdclk = 0;
> > +
> > +	/*
> > +	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
> > +	 * than 320000KHz.
> > +	 */
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> > +	    IS_VALLEYVIEW(dev_priv))
> > +		min_cdclk = max(320000, min_cdclk);
> > +
> > +	/*
> > +	 * On Geminilake once the CDCLK gets as low as 79200
> > +	 * picture gets unstable, despite that values are
> > +	 * correct for DSI PLL and DE PLL.
> > +	 */
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> > +	    IS_GEMINILAKE(dev_priv))
> > +		min_cdclk = max(158400, min_cdclk);
> > +
> > +	return min_cdclk;
> > +}
> > +
> >  typedef void (*vlv_dsi_dmi_quirk_func)(struct intel_dsi *intel_dsi);
> >  
> >  /*
> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.h b/drivers/gpu/drm/i915/display/vlv_dsi.h
> > index cf9d7b82f288..5f99059b4c48 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi.h
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi.h
> > @@ -8,13 +8,17 @@
> >  
> >  #include <linux/types.h>
> >  
> > +#include <drm/drm_mipi_dsi.h>
> > +
> 
> Huh, why is this required? At least it's unrelated to the patch.

Sorry meant to note that in the commit msg, but forgot.

xe fails to build without this:
../drivers/gpu/drm/i915/display/vlv_dsi.h:28:42: error: return type is an incomplete type

It looks like a forward declaration is not enough for
return types of static inline functions. i915 on the other
hand builds fine.

I suppose one alternative would be to declare is as just
'int' for xe.

> 
> Other than that,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >  enum port;
> >  struct drm_i915_private;
> > +struct intel_crtc_state;
> >  struct intel_dsi;
> >  
> >  #ifdef I915
> >  void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port);
> >  enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt);
> > +int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state);
> >  void vlv_dsi_init(struct drm_i915_private *dev_priv);
> >  #else
> >  static inline void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
> > @@ -24,6 +28,10 @@ static inline enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt
> >  {
> >  	return 0;
> >  }
> > +static inline int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
> > +{
> > +	return 0;
> > +}
> >  static inline void vlv_dsi_init(struct drm_i915_private *dev_priv)
> >  {
> >  }
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
