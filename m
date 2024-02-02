Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA38D84744F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 17:12:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E86B510EE1B;
	Fri,  2 Feb 2024 16:12:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bwaKFfj9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF62E10EE1B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 16:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706890331; x=1738426331;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OivixD242SDHOydS4pZvHqUB52L0nU9NS1lS89Vhz78=;
 b=bwaKFfj9lqqvxzfVX9Od0ggh+ELHhA+ptH+8oJBZ8pN/QJ1KzJzyGgSi
 PXia3UWWwyxM5ito2tNFFBiBeRRq0JCbsNRBUZX5XDSI4W1ZXFPRXuqra
 1CH/QbfF61DNcAxxFzUWosidQnW9W6ZdwKxbuVODLUQD5ZrnmLsu0P/Rf
 NE+aH5f5hS88izuHK7xuT7rPBEgWjdlYgdB8UlC/r2WerQJLY8HGdgKW6
 9REB7vlYjx7k3qDIRkovoKUxl4ktApAiX0Z+IjbmnE+T/UwE9FOCLkdb5
 3T4a3jl2McVMFCiggmKzW2LpxGPuq+Vb8rfgvXge5nReY8cnjmNH8qdtF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10928081"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="10928081"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 08:12:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823246480"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823246480"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 08:12:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Feb 2024 18:12:06 +0200
Date: Fri, 2 Feb 2024 18:12:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH v3 12/16] drm/i915: Simplify intel_initial_plane_config()
 calling convention
Message-ID: <Zb0UVuTsYYk8_pzw@intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-13-ville.syrjala@linux.intel.com>
 <87ttmqew4i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ttmqew4i.fsf@intel.com>
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

On Fri, Feb 02, 2024 at 05:14:37PM +0200, Jani Nikula wrote:
> On Tue, 16 Jan 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > There's no reason the caller of intel_initial_plane_config() should
> > have to loop over the CRTCs. Pull the loop into the function to
> > make life simpler for the caller.
> >
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/intel_display_driver.c   |  7 +---
> >  .../drm/i915/display/intel_plane_initial.c    | 40 +++++++++++--------
> >  .../drm/i915/display/intel_plane_initial.h    |  4 +-
> >  3 files changed, 26 insertions(+), 25 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index ecf9cb74734b..f3fe1743243b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -415,7 +415,6 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
> >  {
> >  	struct drm_device *dev = &i915->drm;
> >  	enum pipe pipe;
> > -	struct intel_crtc *crtc;
> >  	int ret;
> >  
> >  	if (!HAS_DISPLAY(i915))
> > @@ -467,11 +466,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
> >  	intel_acpi_assign_connector_fwnodes(i915);
> >  	drm_modeset_unlock_all(dev);
> >  
> > -	for_each_intel_crtc(dev, crtc) {
> > -		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> > -			continue;
> > -		intel_crtc_initial_plane_config(crtc);
> > -	}
> > +	intel_initial_plane_config(i915);
> >  
> >  	/*
> >  	 * Make sure hardware watermarks really match the state we read out.
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > index 78bff6181ceb..b7e12b60d68b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > @@ -357,25 +357,31 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
> >  		i915_vma_put(plane_config->vma);
> >  }
> >  
> > -void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
> > +void intel_initial_plane_config(struct drm_i915_private *i915)
> 
> So this fails to build on CONFIG_DRM_XE=m, because it has its own
> version of intel_plane_initial.c which has
> intel_crtc_initial_plane_config(), but not intel_initial_plane_config().
> 
> You'll get this as the first indication:
> 
>   CC [M]  drivers/gpu/drm/xe/display/xe_plane_initial.o
> ../drivers/gpu/drm/xe/display/xe_plane_initial.c:270:6: error: no previous prototype for ‘intel_crtc_initial_plane_config’ [-Werror=missing-prototypes]
>   270 | void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
>       |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> but if you bypass that, eventually:
> 
>   MODPOST Module.symvers
> ERROR: modpost: "intel_initial_plane_config" [drivers/gpu/drm/xe/xe.ko] undefined!
> 
> Needs to be fixed before merging.

Can't see anything off in the CI results. Are we not at
least build testing xe in i915 CI?

> 
> BR,
> Jani.
> 
> >  {
> > -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > -	struct intel_initial_plane_config plane_config = {};
> > +	struct intel_crtc *crtc;
> >  
> > -	/*
> > -	 * Note that reserving the BIOS fb up front prevents us
> > -	 * from stuffing other stolen allocations like the ring
> > -	 * on top.  This prevents some ugliness at boot time, and
> > -	 * can even allow for smooth boot transitions if the BIOS
> > -	 * fb is large enough for the active pipe configuration.
> > -	 */
> > -	dev_priv->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
> > +	for_each_intel_crtc(&i915->drm, crtc) {
> > +		struct intel_initial_plane_config plane_config = {};
> >  
> > -	/*
> > -	 * If the fb is shared between multiple heads, we'll
> > -	 * just get the first one.
> > -	 */
> > -	intel_find_initial_plane_obj(crtc, &plane_config);
> > +		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> > +			continue;
> >  
> > -	plane_config_fini(&plane_config);
> > +		/*
> > +		 * Note that reserving the BIOS fb up front prevents us
> > +		 * from stuffing other stolen allocations like the ring
> > +		 * on top.  This prevents some ugliness at boot time, and
> > +		 * can even allow for smooth boot transitions if the BIOS
> > +		 * fb is large enough for the active pipe configuration.
> > +		 */
> > +		i915->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
> > +
> > +		/*
> > +		 * If the fb is shared between multiple heads, we'll
> > +		 * just get the first one.
> > +		 */
> > +		intel_find_initial_plane_obj(crtc, &plane_config);
> > +
> > +		plane_config_fini(&plane_config);
> > +	}
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers/gpu/drm/i915/display/intel_plane_initial.h
> > index c7e35ab3182b..64ab95239cd4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.h
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.h
> > @@ -6,8 +6,8 @@
> >  #ifndef __INTEL_PLANE_INITIAL_H__
> >  #define __INTEL_PLANE_INITIAL_H__
> >  
> > -struct intel_crtc;
> > +struct drm_i915_private;
> >  
> > -void intel_crtc_initial_plane_config(struct intel_crtc *crtc);
> > +void intel_initial_plane_config(struct drm_i915_private *i915);
> >  
> >  #endif
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
