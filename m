Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9B1626101
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 19:24:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB4D10E1A0;
	Fri, 11 Nov 2022 18:24:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2506510E1A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 18:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668191080; x=1699727080;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lJoCvAklVEz/TWCoC1lUNQurZyiG0z7hGnkZQ671Ba0=;
 b=ZOTwU9b2/trr01HNxe9NpeGWeqrZaGJheMsg7Wy19Mu41mTkCB7N7kgy
 63OrT/9gHh2dWUCSPPIv29zhMQy7kam6AygUw1iPr1gJ+B39F7luvWrAV
 JSwNljofBJyWv7VdUIasEE0E+FeIzC6lxgeBjhwSNGW8rZITCa7eQC+1w
 H3vwGpQup6CKgTNTZkGkqXLPWyWOhkNjekEnzGaN5ooUQzXIhSyE19LZE
 PUqPymXyCtMNaQMbBegxlH5XOfrj2PKw9bzzAvQ1Y0DPXN/WkyjnM5eoL
 A9Mx5dUQAa6FtXDuHqasaNSxqo12S9ZUrI/7w1ReRidI8cvGNL6i2hMFH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="311651055"
X-IronPort-AV: E=Sophos;i="5.96,157,1665471600"; d="scan'208";a="311651055"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 10:24:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="632098710"
X-IronPort-AV: E=Sophos;i="5.96,157,1665471600"; d="scan'208";a="632098710"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Nov 2022 10:24:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Nov 2022 20:24:34 +0200
Date: Fri, 11 Nov 2022 20:24:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y26TYvK7aNhwFrwp@intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
 <20221110082144.19666-2-ville.syrjala@linux.intel.com>
 <875yfl5xzi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875yfl5xzi.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 01/18] drm/i915: Clean up legacy palette
 defines
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

On Fri, Nov 11, 2022 at 05:09:37PM +0200, Jani Nikula wrote:
> On Thu, 10 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Use consistent bit definitions for the legacy gamma LUT. We just
> > define these alongside the pre-ilk register definitions and point
> > to those from the ilk+ defines.
> >
> > Also use the these appropriately in the LUT entry pack/unpack
> > functions.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 24 +++++++++++-----------
> >  drivers/gpu/drm/i915/i915_reg.h            | 11 +++++-----
> >  2 files changed, 17 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > index 93509cf7bbcc..ff4a5167df57 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -424,32 +424,32 @@ static u32 intel_color_lut_pack(u32 val, int bit_precision)
> >  
> >  static u32 i9xx_lut_8(const struct drm_color_lut *color)
> >  {
> > -	return drm_color_lut_extract(color->red, 8) << 16 |
> > -		drm_color_lut_extract(color->green, 8) << 8 |
> > -		drm_color_lut_extract(color->blue, 8);
> > +	return REG_FIELD_PREP(PALETTE_RED_MASK, drm_color_lut_extract(color->red, 8)) |
> > +		REG_FIELD_PREP(PALETTE_GREEN_MASK, drm_color_lut_extract(color->green, 8)) |
> > +		REG_FIELD_PREP(PALETTE_BLUE_MASK, drm_color_lut_extract(color->blue, 8));
> >  }
> >  
> >  static void i9xx_lut_8_pack(struct drm_color_lut *entry, u32 val)
> >  {
> > -	entry->red = intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_RED_MASK, val), 8);
> > -	entry->green = intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_GREEN_MASK, val), 8);
> > -	entry->blue = intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_BLUE_MASK, val), 8);
> > +	entry->red = intel_color_lut_pack(REG_FIELD_GET(PALETTE_RED_MASK, val), 8);
> > +	entry->green = intel_color_lut_pack(REG_FIELD_GET(PALETTE_GREEN_MASK, val), 8);
> > +	entry->blue = intel_color_lut_pack(REG_FIELD_GET(PALETTE_BLUE_MASK, val), 8);
> >  }
> >  
> >  /* i965+ "10.6" bit interpolated format "even DW" (low 8 bits) */
> >  static u32 i965_lut_10p6_ldw(const struct drm_color_lut *color)
> >  {
> > -	return (color->red & 0xff) << 16 |
> > -		(color->green & 0xff) << 8 |
> > -		(color->blue & 0xff);
> > +	return REG_FIELD_PREP(PALETTE_RED_MASK, color->red & 0xff) |
> > +		REG_FIELD_PREP(PALETTE_GREEN_MASK, color->green & 0xff) |
> > +		REG_FIELD_PREP(PALETTE_BLUE_MASK, color->blue & 0xff);
> 
> The & 0xff masking is redundant with REG_FIELD_PREP(), but I understand
> if you want to leave them in for consistency with the next function.

It's redundant as long as REG_FIELD_PREP() only checks
constexpr values. I have occasionally pondered about making
it do runtime checks for non-constexpr values as well, at
least for CI runs. Just never managed to write the patch
for that...

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> >  }
> >  
> >  /* i965+ "10.6" interpolated format "odd DW" (high 8 bits) */
> >  static u32 i965_lut_10p6_udw(const struct drm_color_lut *color)
> >  {
> > -	return (color->red >> 8) << 16 |
> > -		(color->green >> 8) << 8 |
> > -		(color->blue >> 8);
> > +	return REG_FIELD_PREP(PALETTE_RED_MASK, color->red >> 8) |
> > +		REG_FIELD_PREP(PALETTE_GREEN_MASK, color->green >> 8) |
> > +		REG_FIELD_PREP(PALETTE_BLUE_MASK, color->blue >> 8);
> >  }
> >  
> >  static void i965_lut_10p6_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index a37ed0c61f20..91ee00c347e4 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -1782,9 +1782,10 @@
> >  #define _PALETTE_A		0xa000
> >  #define _PALETTE_B		0xa800
> >  #define _CHV_PALETTE_C		0xc000
> > -#define PALETTE_RED_MASK        REG_GENMASK(23, 16)
> > -#define PALETTE_GREEN_MASK      REG_GENMASK(15, 8)
> > -#define PALETTE_BLUE_MASK       REG_GENMASK(7, 0)
> > +/* 8bit mode / i965+ 10.6 interpolated mode ldw/udw */
> > +#define   PALETTE_RED_MASK		REG_GENMASK(23, 16)
> > +#define   PALETTE_GREEN_MASK		REG_GENMASK(15, 8)
> > +#define   PALETTE_BLUE_MASK		REG_GENMASK(7, 0)
> >  #define PALETTE(pipe, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
> >  				      _PICK((pipe), _PALETTE_A,		\
> >  					    _PALETTE_B, _CHV_PALETTE_C) + \
> > @@ -5380,9 +5381,7 @@
> >  /* legacy palette */
> >  #define _LGC_PALETTE_A           0x4a000
> >  #define _LGC_PALETTE_B           0x4a800
> > -#define LGC_PALETTE_RED_MASK     REG_GENMASK(23, 16)
> > -#define LGC_PALETTE_GREEN_MASK   REG_GENMASK(15, 8)
> > -#define LGC_PALETTE_BLUE_MASK    REG_GENMASK(7, 0)
> > +/* see PALETTE_* for the bits */
> >  #define LGC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _LGC_PALETTE_A, _LGC_PALETTE_B) + (i) * 4)
> >  
> >  /* ilk/snb precision palette */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
