Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBD88BD2F3
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 18:38:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CFB710F10B;
	Mon,  6 May 2024 16:38:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CvwIRVwO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD8E10F10B;
 Mon,  6 May 2024 16:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715013486; x=1746549486;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=x6rpYphBy5rJ6wq+7DapIOu7ZKUHff1rXbKExBTr9nc=;
 b=CvwIRVwObfqkXTzXbDu5FR+e2Ezsp7k//xiR1LykoSjBNzdTEVh5pQKo
 F4xe4r0BQz0A/vU76Gj5pLXeZjdjXr0L+f9+OfVnp6PYt9qnd9i0DPMwr
 RGN7QoZfYXO+/GXOD7LNcTYycy5R8Sp3o53v8fkLsBhxfHILMlftzVAh0
 P+iw3vFtd2NYaMcyJR8DI4/FpQ159j0LuOj31rLua+C86FR212DW6cv8+
 98AK9O4x4ZGIIC3bKAsHzkjb+ZyOU8itmG46I4ugD50P0LZzOAauYKOdg
 mXP85aWSquJ9idFdaQpyoon3LPQCoZagPHxikQpFI7toDu+qg4cwwqsf0 g==;
X-CSE-ConnectionGUID: cvmPPidPSpmd8HfqW+wMTw==
X-CSE-MsgGUID: ++D3Lg0/QUGUcGoPh+lgYw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="14579273"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="14579273"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 09:38:04 -0700
X-CSE-ConnectionGUID: YcpJrTRXQ3GBoB1bBdARxg==
X-CSE-MsgGUID: LZHdX6oeT1Gy2K3tSOmzXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28214699"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 09:38:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 19:38:01 +0300
Date: Mon, 6 May 2024 19:38:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/9] drm/i915: Clean up skl+ plane stride limits
Message-ID: <ZjkHaZOdijUrHrci@intel.com>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-3-ville.syrjala@linux.intel.com>
 <874jbbm3zk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <874jbbm3zk.fsf@intel.com>
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

On Mon, May 06, 2024 at 05:03:59PM +0300, Jani Nikula wrote:
> On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > skl_plane_max_stride() is pretty messy. Streamline it and
> > split it into clear skl+ vs. adl+ variants.
> >
> > TODO: Deal with icl and tgl strude limits properly
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/skl_universal_plane.c    | 65 +++++++++++--------
> >  1 file changed, 37 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 0a8e781a3648..b8103d6ebc1f 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -461,41 +461,46 @@ static int icl_plane_max_height(const struct drm_framebuffer *fb,
> >  }
> >  
> >  static unsigned int
> > -skl_plane_max_stride(struct intel_plane *plane,
> > -		     u32 pixel_format, u64 modifier,
> > -		     unsigned int rotation)
> > +plane_max_stride(struct intel_plane *plane,
> > +		 u32 pixel_format, u64 modifier,
> > +		 unsigned int rotation,
> > +		 unsigned int max_pixels,
> > +		 unsigned int max_bytes)
> >  {
> > -	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> >  	const struct drm_format_info *info = drm_format_info(pixel_format);
> >  	int cpp = info->cpp[0];
> > -	int max_horizontal_pixels = 8192;
> > -	int max_stride_bytes;
> > -
> > -	if (DISPLAY_VER(i915) >= 13) {
> > -		/*
> > -		 * The stride in bytes must not exceed of the size
> > -		 * of 128K bytes. For pixel formats of 64bpp will allow
> > -		 * for a 16K pixel surface.
> > -		 */
> > -		max_stride_bytes = 131072;
> > -		if (cpp == 8)
> > -			max_horizontal_pixels = 16384;
> 
> The commit message doesn't mention anything about this being dropped.

16k pixels * 8 cpp == 128k bytes, so it's completely redundant.

> 
> BR,
> Jani.
> 
> > -		else
> > -			max_horizontal_pixels = 65536;
> > -	} else {
> > -		/*
> > -		 * "The stride in bytes must not exceed the
> > -		 * of the size of 8K pixels and 32K bytes."
> > -		 */
> > -		max_stride_bytes = 32768;
> > -	}
> >  
> >  	if (drm_rotation_90_or_270(rotation))
> > -		return min(max_horizontal_pixels, max_stride_bytes / cpp);
> > +		return min(max_pixels, max_bytes / cpp);
> >  	else
> > -		return min(max_horizontal_pixels * cpp, max_stride_bytes);
> > +		return min(max_pixels * cpp, max_bytes);
> >  }
> >  
> > +static unsigned int
> > +adl_plane_max_stride(struct intel_plane *plane,
> > +		     u32 pixel_format, u64 modifier,
> > +		     unsigned int rotation)
> > +{
> > +	unsigned int max_pixels = 65536; /* PLANE_OFFSET limit */
> > +	unsigned int max_bytes = 128 * 1024;
> > +
> > +	return plane_max_stride(plane, pixel_format,
> > +				modifier, rotation,
> > +				max_pixels, max_bytes);
> > +}
> > +
> > +static unsigned int
> > +skl_plane_max_stride(struct intel_plane *plane,
> > +		     u32 pixel_format, u64 modifier,
> > +		     unsigned int rotation)
> > +{
> > +	unsigned int max_pixels = 8192; /* PLANE_OFFSET limit */
> > +	unsigned int max_bytes = 32 * 1024;
> > +
> > +	return plane_max_stride(plane, pixel_format,
> > +				modifier, rotation,
> > +				max_pixels, max_bytes);
> > +}
> >  
> >  /* Preoffset values for YUV to RGB Conversion */
> >  #define PREOFF_YUV_TO_RGB_HI		0x1800
> > @@ -2357,7 +2362,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
> >  		plane->min_cdclk = skl_plane_min_cdclk;
> >  	}
> >  
> > -	plane->max_stride = skl_plane_max_stride;
> > +	if (DISPLAY_VER(dev_priv) >= 13)
> > +		plane->max_stride = adl_plane_max_stride;
> > +	else
> > +		plane->max_stride = skl_plane_max_stride;
> > +
> >  	if (DISPLAY_VER(dev_priv) >= 11) {
> >  		plane->update_noarm = icl_plane_update_noarm;
> >  		plane->update_arm = icl_plane_update_arm;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
