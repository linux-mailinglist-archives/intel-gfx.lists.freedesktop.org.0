Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7194CBB02E4
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 13:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC86610E368;
	Wed,  1 Oct 2025 11:34:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZTdUNzMY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5093210E35A;
 Wed,  1 Oct 2025 11:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759318487; x=1790854487;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DeeSLfodALLRyZhJ/oQb0NgswMJ/jILsws/+d/CsIf4=;
 b=ZTdUNzMYUg6FNiHZ8Gl0y6wLZTJeiBqeOJ7DlCU1XFprJ/OfgkUr2Zy1
 Y6vwLijblhCj97C7pbOIMaglGzHDVVEaeUPKh3Rhzc3wNyIhcpV7nj35H
 1YwvYq4Mb0wkWIbdRUqxR7vIWo/WbHu+wOg7nqhfLGynt/+fsu9yr4Z+Y
 7upz25hDp+46bVcayxfGzBBESdbGqwfgl6DqFAllC3x8FO1tLIWtwGP/7
 5CgxEx4NtpR3++M4VYdAgFkviT8KlSQyLmTq3httXupUoltRX7E1/uC09
 F9w6gJFxKzglTEHXrwD+Hyeh2QqcgBKl0Eu1GVjwWiMw70ooHLvEYYqxR g==;
X-CSE-ConnectionGUID: v5ETSjL0Q8q5jemYiXuEJA==
X-CSE-MsgGUID: fmiwqjQWRB+x/sTr75so5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="65442701"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="65442701"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 04:34:47 -0700
X-CSE-ConnectionGUID: M7tJghLyRxarYVHrPlUfKQ==
X-CSE-MsgGUID: xhFj37fOR/2Qss3bJYwdKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="178572582"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.91])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 04:34:45 -0700
Date: Wed, 1 Oct 2025 14:34:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915: Use the the correct pixel rate to compute
 wm line time
Message-ID: <aN0R0ggZESnWZMrv@intel.com>
References: <20250919180838.10498-1-ville.syrjala@linux.intel.com>
 <20250919180838.10498-2-ville.syrjala@linux.intel.com>
 <b98101c43bb40a1affab97d5c8bf3e3997ed92a0.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b98101c43bb40a1affab97d5c8bf3e3997ed92a0.camel@intel.com>
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

On Wed, Oct 01, 2025 at 10:27:44AM +0000, Govindapillai, Vinod wrote:
> On Fri, 2025-09-19 at 21:08 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The line time used for the watermark calculations is supposed to
> > based on the plane's adjusted pixel rate, not the pipe's adjusted
> > pixel rate. The current code will give incorrect answers if plane
> > downscaling is used.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index d74cbb43ae6f..bdd005c6cc2d 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -1637,18 +1637,16 @@ skl_wm_method2(u32 pixel_rate, u32 pipe_htotal, u32 latency,
> >  }
> >  
> >  static uint_fixed_16_16_t
> > -intel_get_linetime_us(const struct intel_crtc_state *crtc_state)
> > +intel_get_linetime_us(const struct intel_crtc_state *crtc_state,
> > +		      int pixel_rate)
> >  {
> >  	struct intel_display *display = to_intel_display(crtc_state);
> > -	u32 pixel_rate;
> >  	u32 crtc_htotal;
> >  	uint_fixed_16_16_t linetime_us;
> >  
> >  	if (!crtc_state->hw.active)
> >  		return u32_to_fixed16(0);
> >  
> > -	pixel_rate = crtc_state->pixel_rate;
> > -
> >  	if (drm_WARN_ON(display->drm, pixel_rate == 0))
> >  		return u32_to_fixed16(0);
> >  
> > @@ -1743,7 +1741,8 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
> >  	wp->y_tile_minimum = mul_u32_fixed16(wp->y_min_scanlines,
> >  					     wp->plane_blocks_per_line);
> >  
> > -	wp->linetime_us = fixed16_to_u32_round_up(intel_get_linetime_us(crtc_state));
> > +	wp->linetime_us = fixed16_to_u32_round_up(intel_get_linetime_us(crtc_state,
> > +									plane_pixel_rate));
> 
> Hi Ville,
> 
> As per the bspec 49325 the starting point is,
> 
> Adjusted pipe pixel rate = pixel rate for the screen resolution
> if (pipe scale enabled)
> 	adjusted pipe pixel rate = adjusted pipe pixel rate * pipe down scale amoun
> 
> adjusted plane pixel rate = adjusted pipe pixel rate
> if (plane scale enabled)
> 	adjusted plane pixel rate = adjusted plane pixel rate * plane down scale 
> 
> and
> line time microseconds = pipe horizontal total pixels/adjusted plane pixel rate MHz
> 
> Our Method1, Method2 and line time calculations are based on plane_pixel_rate vs. adjusted plane
> pixel rate in bspec. So I wonder if we differ from the bspec in these wm calculations?

plane_pixel_rate is what the spec calls "adjusted plane pixel rate"

-- 
Ville Syrjälä
Intel
