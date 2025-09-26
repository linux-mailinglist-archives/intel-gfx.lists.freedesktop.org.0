Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B31B0BA4502
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 16:57:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F1C10EA7D;
	Fri, 26 Sep 2025 14:57:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lQ0LKrss";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1259B10EA7D;
 Fri, 26 Sep 2025 14:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758898655; x=1790434655;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VC5ZWl5w8TleLUFR2ttyOEbGg/zcljBBeg4EYyNc1QQ=;
 b=lQ0LKrssC8QIC6mAxFyYtYWorm2bphLKck4iBdJcPAIGG9FgEYQPCVIa
 MyspYSUHDSK7IVaYuYfT0o1JCTSrwDs4tZLsYNDfLJxmkwYagWQi8Gbzv
 IuLoYhEM4Dh8yMi25x6oI1v7lFuk1+dgU/1hzi5xturtaFs+D4gXvxwsN
 BCKuS+NgQMWTXPOlfSok+qXyhZfmWohP2pO827IUJaMCt5yHfCOmQqxdQ
 F28nRVGCc+hSI88jOdxZ0j3jEmKl43h9CsBrfW2Ctkd4WOoA0pWnQj7Ot
 YRThVK7u9J/sFBdwdKxKVDD0nnCGVXkKA/dWd+AKl31g2WlIe711kyYVN Q==;
X-CSE-ConnectionGUID: dR5K9jA7QF+iwOotJAKnnQ==
X-CSE-MsgGUID: 6gMNxgGNTtOwpRIgrizTqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61186106"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61186106"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 07:57:35 -0700
X-CSE-ConnectionGUID: JDpQc0TUSECBN1GyAho2mw==
X-CSE-MsgGUID: qO0W64TxRlGFMlAsRpAiPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,295,1751266800"; d="scan'208";a="177191827"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.11])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 07:57:34 -0700
Date: Fri, 26 Sep 2025 17:57:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: duplicate 128-byte Y-tiling feature
 check
Message-ID: <aNap2gHsCPhPNcLE@intel.com>
References: <20250926090538.1117038-1-jani.nikula@intel.com>
 <aNanBFyMsirM-mgJ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNanBFyMsirM-mgJ@intel.com>
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

On Fri, Sep 26, 2025 at 05:45:24PM +0300, Ville Syrjälä wrote:
> On Fri, Sep 26, 2025 at 12:05:38PM +0300, Jani Nikula wrote:
> > We should try to get rid of checks that depend on struct
> > drm_i915_private (or struct xe_device) in display
> > code. HAS_128_BYTE_Y_TILING() is one of them. In the interest of
> > simplicity, just duplicate the check as HAS_128B_Y_TILING() in display.
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
> >  drivers/gpu/drm/i915/display/intel_fb.c             | 3 +--
> >  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 1 -
> >  3 files changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 0e062753cf9b..3e8d4fc862ff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -142,6 +142,7 @@ struct intel_display_platforms {
> >  	func(overlay_needs_physical); \
> >  	func(supports_tv);
> >  
> > +#define HAS_128B_Y_TILING(__display)	(DISPLAY_VER(__display) != 2 && !(__display)->platform.i915g && !(__display)->platform.i915gm)
> 
> This whole thing will be lot simpler if we invert this into
> HAS_512B_Y_TILING(), which I actually already did but no one
> felt like reviewing it:
> https://patchwork.freedesktop.org/patch/343580/?series=70396&rev=1

Or I suppose we could keep it like this and just get rid of the gen2
check. Gen2 does have 128B Y-tile (it even has 128B X-tile). It's just
different than the 128B Y-tile on i945+, which I think is why the 
current macro is so convoluted.

I suppose I should go through the gem code there and swap everything
around to deal with the 512B Y-tile first, and then deal with the two
128B Y-tile variants (or just treat them the same if there is no
actual need to differentiate between them).

> 
> >  #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
> >  #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
> >  #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > index 69237dabdae8..f2ccc9b1175d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -777,7 +777,6 @@ unsigned int
> >  intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
> >  {
> >  	struct intel_display *display = to_intel_display(fb->dev);
> > -	struct drm_i915_private *i915 = to_i915(display->drm);
> >  	unsigned int cpp = fb->format->cpp[color_plane];
> >  
> >  	switch (fb->modifier) {
> > @@ -814,7 +813,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
> >  			return 64;
> >  		fallthrough;
> >  	case I915_FORMAT_MOD_Y_TILED:
> > -		if (DISPLAY_VER(display) == 2 || HAS_128_BYTE_Y_TILING(i915))
> > +		if (DISPLAY_VER(display) == 2 || HAS_128B_Y_TILING(display))
> >  			return 128;
> >  		else
> >  			return 512;
> > diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> > index b8269391bc69..be3edf20de22 100644
> > --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> > +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> > @@ -36,6 +36,5 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
> >  #define IS_MOBILE(xe) (xe && 0)
> >  
> >  #define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
> > -#define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
> >  
> >  #endif
> > -- 
> > 2.47.3
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
