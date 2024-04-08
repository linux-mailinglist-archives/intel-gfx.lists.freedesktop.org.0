Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3607C89CAE7
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 19:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 551CF10FBD3;
	Mon,  8 Apr 2024 17:39:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kKU57Dkt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48E810FBD3
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 17:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712597952; x=1744133952;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lsUyTkOe8W02FjWwO+0RDF7ASayuozxIOPYE3/RS7dM=;
 b=kKU57Dkt6QpR6rEmOOkACv0jpkv3t0hLtNiPALCnJ97CHiIr4cLt9ayq
 Y0Ij6aTOxHyxUEVDDnYAR4+jID4IFLiQ29/7Yugy0U6SuLQaAwyyo4Crf
 UCqjjmeDNZKIJag2ySuaODiUppjl93Bf/Rm6nsZ5bM7gQEDbdv/bOZQqO
 UsjWw5yAN0hK4kZIsy5CCOaYzSauWrUgaorPEEW5o1zYUV1lnVgijUxS3
 nmV9HObb2p674n8WDgM0hlhX78uyyB9OSRUTnaCP8SZ3LqjGs0fCXpw8m
 rhs+wghrbxAPQD7gVtlVZqKg0R/ZgI5kd0YUp9ASfWG4Ar3XiJ6q8rqfJ w==;
X-CSE-ConnectionGUID: qMML2hqwQ3CYrlW1F4t5cg==
X-CSE-MsgGUID: i0mUp0O2RYObS+KnrnU/nA==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="10864337"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="10864337"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 10:39:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="827792356"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="827792356"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Apr 2024 10:39:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 08 Apr 2024 20:39:08 +0300
Date: Mon, 8 Apr 2024 20:39:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: move rawclk init to intel_cdclk_init()
Message-ID: <ZhQrvAjDK_H-9Af4@intel.com>
References: <20240408172315.3418692-1-jani.nikula@intel.com>
 <ZhQpO3lJz9TB7c-4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZhQpO3lJz9TB7c-4@intel.com>
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

On Mon, Apr 08, 2024 at 08:28:27PM +0300, Ville Syrjälä wrote:
> On Mon, Apr 08, 2024 at 08:23:14PM +0300, Jani Nikula wrote:
> > The rawclk initialization is a bit out of place in
> > intel_device_info_runtime_init(). Move it to intel_cdclk_init(), with a
> > bit of refactoring on intel_read_rawclk().
> 
> rawclk is used outside of display.

The correct solution would likely be to extract a 
i9xx_fsb_freq(), and use that to populate both rawclk_freq
and fsb_freq (and switch over to fsb_freq in the
non-display code).

> 
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 +++++++++++-----------
> >  drivers/gpu/drm/i915/display/intel_cdclk.h |  1 -
> >  drivers/gpu/drm/i915/intel_device_info.c   |  4 ----
> >  3 files changed, 11 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index d61aa5b7cbdb..64a1cf4ed45c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -3210,6 +3210,8 @@ int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joi
> >  	return intel_atomic_lock_global_state(&cdclk_state->base);
> >  }
> >  
> > +static void intel_rawclk_init(struct drm_i915_private *dev_priv);
> > +
> >  int intel_cdclk_init(struct drm_i915_private *dev_priv)
> >  {
> >  	struct intel_cdclk_state *cdclk_state;
> > @@ -3221,6 +3223,8 @@ int intel_cdclk_init(struct drm_i915_private *dev_priv)
> >  	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.cdclk.obj,
> >  				     &cdclk_state->base, &intel_cdclk_funcs);
> >  
> > +	intel_rawclk_init(dev_priv);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -3578,16 +3582,13 @@ static int i9xx_hrawclk(struct drm_i915_private *dev_priv)
> >  	}
> >  }
> >  
> > -/**
> > - * intel_read_rawclk - Determine the current RAWCLK frequency
> > - * @dev_priv: i915 device
> > - *
> > - * Determine the current RAWCLK frequency. RAWCLK is a fixed
> > - * frequency clock so this needs to done only once.
> > +/*
> > + * Initialize the current RAWCLK frequency. RAWCLK is a fixed frequency clock so
> > + * this needs to done only once.
> >   */
> > -u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
> > +static void intel_rawclk_init(struct drm_i915_private *dev_priv)
> >  {
> > -	u32 freq;
> > +	u32 freq = 0;
> >  
> >  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
> >  		/*
> > @@ -3606,11 +3607,9 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
> >  		freq = vlv_hrawclk(dev_priv);
> >  	else if (DISPLAY_VER(dev_priv) >= 3)
> >  		freq = i9xx_hrawclk(dev_priv);
> > -	else
> > -		/* no rawclk on other platforms, or no need to know it */
> > -		return 0;
> >  
> > -	return freq;
> > +	RUNTIME_INFO(dev_priv)->rawclk_freq = freq;
> > +	drm_dbg_kms(&dev_priv->drm, "rawclk rate: %d kHz\n", freq);
> >  }
> >  
> >  static int i915_cdclk_info_show(struct seq_file *m, void *unused)
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > index cfdcdec07a4d..a3f950d5a366 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > @@ -64,7 +64,6 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915);
> >  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv);
> >  void intel_update_max_cdclk(struct drm_i915_private *dev_priv);
> >  void intel_update_cdclk(struct drm_i915_private *dev_priv);
> > -u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
> >  bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
> >  			       const struct intel_cdclk_config *b);
> >  int intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index a0a43ea07f11..48f0957392f9 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -370,10 +370,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> >  			 "Disabling ppGTT for VT-d support\n");
> >  		runtime->ppgtt_type = INTEL_PPGTT_NONE;
> >  	}
> > -
> > -	runtime->rawclk_freq = intel_read_rawclk(dev_priv);
> > -	drm_dbg(&dev_priv->drm, "rawclk rate: %d kHz\n", runtime->rawclk_freq);
> > -
> >  }
> >  
> >  /*
> > -- 
> > 2.39.2
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
