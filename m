Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F82EBB492B
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 18:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDEB10E1AD;
	Thu,  2 Oct 2025 16:41:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gykxXyVP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFCD510E1AD;
 Thu,  2 Oct 2025 16:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759423298; x=1790959298;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WwaSB6JiIE48a2FHERD03ZMTm5KXpXS7uq454bT9WNg=;
 b=gykxXyVPokIxxXlGiWQQRjlAby7VItYihBHftR2Of3qj7Km4cQLKkjQA
 1tljWBcueqe6sgVGY65oZNOFbE34m7EXn2IdU76fpUynD5VEwZVME12br
 sOigV7eNHqbqT5P/itGa6f0mY5ifsCFHdZ1rhVqTsweVVBK0JWHQiYog4
 I821stvQ2YvVsEDpAIf4DBxgsH+t45NS8y8swkb2krZyP3nHsAfJFyn0D
 KHJkB6aAmJFwuqQhqp7/G6M4vIf4Olviknb1ofkGZ3RT1FxtxUjgy/VbR
 R0dNsAcda2GMUB8pGRVZfMvrRq0kSYTshsE3/oNXhqxm7EEz3tt/3cuHY w==;
X-CSE-ConnectionGUID: vuOYANByTmmoENn/YV/FFg==
X-CSE-MsgGUID: Ud+xhgaOQaCiWn9TDi45eA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61625102"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61625102"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 09:41:37 -0700
X-CSE-ConnectionGUID: uxAMNuAwRhq5e1zmKNdYbw==
X-CSE-MsgGUID: /Cdb6yXiRm6NfRbDKPrK5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,310,1751266800"; d="scan'208";a="179495302"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.228])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 09:41:35 -0700
Date: Thu, 2 Oct 2025 19:41:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/fb: Fix the set_tiling vs. addfb race, again
Message-ID: <aN6rPMvuI0NkXYwG@intel.com>
References: <20251002115434.6486-1-ville.syrjala@linux.intel.com>
 <20251002115434.6486-2-ville.syrjala@linux.intel.com>
 <053828a8f31f70e964d3f620a56e75d395f98172@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <053828a8f31f70e964d3f620a56e75d395f98172@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Oct 02, 2025 at 04:59:51PM +0300, Jani Nikula wrote:
> On Thu, 02 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > intel_frontbuffer_get() is what locks out subsequent set_tiling
> > changes to the bo. Thus the fence vs. modifier check must be done
> > after intel_frontbuffer_get(), or else a concurrent set_tiling ioctl
> > might sneak in and change the fence after the check has been done.
> >
> > Close the race again. See commit dd689287b977 ("drm/i915: Prevent
> > concurrent tiling/framebuffer modifications") for the previous
> > instance.
> >
> > Cc: Jouni Högander <jouni.hogander@intel.com>
> > Fixes: 10690b8a49bc ("drm/i915/display: Add intel_fb_bo_framebuffer_fini")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb.c | 38 +++++++++++++------------
> >  1 file changed, 20 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > index 69237dabdae8..c5bbca7f2e8b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -2218,15 +2218,17 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
> >  	int ret = -EINVAL;
> >  	int i;
> >  
> > -	ret = intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
> > -	if (ret)
> > -		return ret;
> > -
> > +	/*
> > +	 * intel_frontbuffer_get() must be done before
> > +	 * intel_fb_bo_framebuffer_init() to avoid set_tiling vs. addfb race.
> > +	 */
> >  	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
> > -	if (!intel_fb->frontbuffer) {
> > -		ret = -ENOMEM;
> > -		goto err;
> > -	}
> > +	if (!intel_fb->frontbuffer)
> > +		return -ENOMEM;
> > +
> > +	ret = intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
> > +	if (ret)
> > +		goto err_frontbuffer_put;
> 
> Do you think we should modify intel_user_framebuffer_destroy() to also
> have the same put & fini order here, just for consistency?

Sounds reasonable. I'll send a v2.

> 
> I think this should be merged before my leak fix, and that should be
> rebased [1], to make the backports easier.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> [1] https://lore.kernel.org/r/20251002101756.2700320-1-jani.nikula@intel.com
> 
> >  
> >  	ret = -EINVAL;
> >  	if (!drm_any_plane_has_format(display->drm,
> > @@ -2235,7 +2237,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
> >  		drm_dbg_kms(display->drm,
> >  			    "unsupported pixel format %p4cc / modifier 0x%llx\n",
> >  			    &mode_cmd->pixel_format, mode_cmd->modifier[0]);
> > -		goto err_frontbuffer_put;
> > +		goto err_bo_framebuffer_fini;
> >  	}
> >  
> >  	max_stride = intel_fb_max_stride(display, mode_cmd->pixel_format,
> > @@ -2246,7 +2248,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
> >  			    mode_cmd->modifier[0] != DRM_FORMAT_MOD_LINEAR ?
> >  			    "tiled" : "linear",
> >  			    mode_cmd->pitches[0], max_stride);
> > -		goto err_frontbuffer_put;
> > +		goto err_bo_framebuffer_fini;
> >  	}
> >  
> >  	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
> > @@ -2254,7 +2256,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
> >  		drm_dbg_kms(display->drm,
> >  			    "plane 0 offset (0x%08x) must be 0\n",
> >  			    mode_cmd->offsets[0]);
> > -		goto err_frontbuffer_put;
> > +		goto err_bo_framebuffer_fini;
> >  	}
> >  
> >  	drm_helper_mode_fill_fb_struct(display->drm, fb, info, mode_cmd);
> > @@ -2264,7 +2266,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
> >  
> >  		if (mode_cmd->handles[i] != mode_cmd->handles[0]) {
> >  			drm_dbg_kms(display->drm, "bad plane %d handle\n", i);
> > -			goto err_frontbuffer_put;
> > +			goto err_bo_framebuffer_fini;
> >  		}
> >  
> >  		stride_alignment = intel_fb_stride_alignment(fb, i);
> > @@ -2272,7 +2274,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
> >  			drm_dbg_kms(display->drm,
> >  				    "plane %d pitch (%d) must be at least %u byte aligned\n",
> >  				    i, fb->pitches[i], stride_alignment);
> > -			goto err_frontbuffer_put;
> > +			goto err_bo_framebuffer_fini;
> >  		}
> >  
> >  		if (intel_fb_is_gen12_ccs_aux_plane(fb, i)) {
> > @@ -2282,7 +2284,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
> >  				drm_dbg_kms(display->drm,
> >  					    "ccs aux plane %d pitch (%d) must be %d\n",
> >  					    i, fb->pitches[i], ccs_aux_stride);
> > -				goto err_frontbuffer_put;
> > +				goto err_bo_framebuffer_fini;
> >  			}
> >  		}
> >  
> > @@ -2291,7 +2293,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
> >  
> >  	ret = intel_fill_fb_info(display, intel_fb);
> >  	if (ret)
> > -		goto err_frontbuffer_put;
> > +		goto err_bo_framebuffer_fini;
> >  
> >  	if (intel_fb_uses_dpt(fb)) {
> >  		struct i915_address_space *vm;
> > @@ -2317,10 +2319,10 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
> >  err_free_dpt:
> >  	if (intel_fb_uses_dpt(fb))
> >  		intel_dpt_destroy(intel_fb->dpt_vm);
> > -err_frontbuffer_put:
> > -	intel_frontbuffer_put(intel_fb->frontbuffer);
> > -err:
> > +err_bo_framebuffer_fini:
> >  	intel_fb_bo_framebuffer_fini(obj);
> > +err_frontbuffer_put:
> > +	intel_frontbuffer_put(intel_fb->frontbuffer);
> >  	return ret;
> >  }
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
