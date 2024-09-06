Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F0B96F925
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 18:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F8D10E7F0;
	Fri,  6 Sep 2024 16:17:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F5gPLKOn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB9FE10E7F0;
 Fri,  6 Sep 2024 16:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725639445; x=1757175445;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4MFWEaGYoiIhvq0WjaQcpTw7ulGZdB0sqG/5rP90+SI=;
 b=F5gPLKOnsSofTTp3tu/ZWOqTijbFilZoxidMkw+x9SWopIuOK4oUd8Qk
 VEdIV0xYsQrlK5gr3gL4QyoKpvCaDE3o0nn+Z9mXy6kF5jBXAdF10dC40
 Q+T6hkZ8kBe3cgFhjia9W/yBOtruzqbRxfangjtzqgbWGPzomFatgZbH1
 Drl6LlaTBTQVQ5NhJ5FU+2/zdZZEmULJ1kYNMHwl7mJhgjI5wUS4XOS8w
 9fSXABXmXNRSHM7rgI7uzb7xTVV1SP0Y2i6iYpETfTWVjkbPHYD9JdWe+
 2/nSFtJ0eWAdcKBhqwqm8tMcR9YE6VuWtDLljkfjONh7NC4wz8m+KPWGv Q==;
X-CSE-ConnectionGUID: n6HR0AW+Tem+B3owMmjNzg==
X-CSE-MsgGUID: 7kVVSWb8TSO1O23GhG/acw==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="27330591"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="27330591"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 09:17:24 -0700
X-CSE-ConnectionGUID: BPJqUuy5TJeRwVA2BfkPRA==
X-CSE-MsgGUID: VlBwN/kuTtiyFWG4yR8XBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66037766"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 09:17:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 19:17:21 +0300
Date: Fri, 6 Sep 2024 19:17:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/6] drm/i915/cdclk: Convert CDCLK code to intel_display
Message-ID: <ZtsrEZ1poYDVwGOm@intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
 <20240906143306.15937-3-ville.syrjala@linux.intel.com>
 <87mskkn731.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87mskkn731.fsf@intel.com>
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

On Fri, Sep 06, 2024 at 06:18:58PM +0300, Jani Nikula wrote:
> On Fri, 06 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > struct intel_display will replace struct drm_i915_private as
> > the main thing for display code. Convert the CDCLK code to
> > use it (as much as possible at this stage).
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Some nitpicks inline, but overall
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> [snip]
> 
> > @@ -2685,20 +2712,21 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
> >  	else
> >  		pipe = INVALID_PIPE;
> >  
> > -	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
> > +	drm_WARN_ON(display->drm, !new_cdclk_state->base.changed);
> >  
> > -	intel_set_cdclk(i915, &new_cdclk_state->actual, pipe,
> > +	intel_set_cdclk(display, &new_cdclk_state->actual, pipe,
> >  			"Post changing CDCLK to");
> >  }
> >  
> >  static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
> >  {
> > -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> > +	struct intel_display *display = to_intel_display(crtc_state->uapi.crtc->dev);
> 
> This works, but to_intel_display(crtc_state) is enough.

Not entirely sure I like the magic going quite that deep.
Though I suppose we do have a lot of that, so maybe it's
best to make it simple as possible.

> > +	struct drm_i915_private *dev_priv = to_i915(display->drm);
> 
> I usually don't bother with changing the dev_priv initialization if it
> keeps working. I just put the display stuff first. But this works.
> 
> >  	int pixel_rate = crtc_state->pixel_rate;
> >  
> > -	if (DISPLAY_VER(dev_priv) >= 10)
> > +	if (DISPLAY_VER(display) >= 10)
> >  		return DIV_ROUND_UP(pixel_rate, 2);
> > -	else if (DISPLAY_VER(dev_priv) == 9 ||
> > +	else if (DISPLAY_VER(display) == 9 ||
> >  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> >  		return pixel_rate;
> >  	else if (IS_CHERRYVIEW(dev_priv))
> > @@ -2712,11 +2740,11 @@ static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
> 
> [snip]
> 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> > index 408c76852495..9ff08dbefc76 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > @@ -1678,7 +1678,7 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
> >  		}
> >  	}
> >  
> > -	display_runtime->rawclk_freq = intel_read_rawclk(i915);
> > +	display_runtime->rawclk_freq = intel_read_rawclk(&i915->display);
> 
> I generally prefer adding that struct intel_display local variable when
> I need it the first time, so the subsequent changes are less churn.

Yeah, I tried to follow that, unless the surrounding code already has
tons of &i915->display stuff in it. But here that isn't the case, so
apparently I just failed to follow the procedure fully.

-- 
Ville Syrjälä
Intel
