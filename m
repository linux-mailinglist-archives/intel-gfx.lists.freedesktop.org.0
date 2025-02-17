Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F371A38B09
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 19:03:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE9B10E0AB;
	Mon, 17 Feb 2025 18:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CYpF+9ln";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3446810E0AB;
 Mon, 17 Feb 2025 18:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739815415; x=1771351415;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=K18eqVR50w0Do3i2fUZ/fVZkLPD3vm4lOcAOrZktEJg=;
 b=CYpF+9lnE0RYWYDs19qVogOh5AiH3yXVcIEFnufhYTqVSdgCpOiwFCd5
 n5XMpJ+i7/66D1aJ7TtPjk6seWxNd81xL1Nl/CJpsziHZLmWOsRRdogmH
 FHTiYVweKtAK7TCJW5NHFREBB1DU+2dhKzmYIgynsT8BqvOG0tgsIjVqK
 IYt5y0BQqoIImcJQf3po5KZVpog4urxm6OGB6T24JYHEnHnRJlXh258zb
 pQYhl5zjG0Wsapqe0MoRChaYiWpt05X+6z/1DSks9IoJbg2WBp9Uw5+zi
 naDTydCUSunYteLy2iuFRZHpfxdmsJ1CoajDKMi47n/RBBAzvJp/I+N4t g==;
X-CSE-ConnectionGUID: MrTqRwC6RluHJDSRdp1kBQ==
X-CSE-MsgGUID: DGAQxTGATLqW7VI8d0lKeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="57906597"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="57906597"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 10:03:34 -0800
X-CSE-ConnectionGUID: Gw938WI3SzKoK6lM4PKICA==
X-CSE-MsgGUID: yi5jepWOTkqe/fRSPUAsCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114381572"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Feb 2025 10:03:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 20:03:30 +0200
Date: Mon, 17 Feb 2025 20:03:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/3] drm/i915/display: Use display-specific platform
 checks in intel_bw.c
Message-ID: <Z7N58lLRGJMe-vv9@intel.com>
References: <20250217153550.43909-1-gustavo.sousa@intel.com>
 <20250217153550.43909-3-gustavo.sousa@intel.com>
 <Z7N2lPPy7hzih3DK@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z7N2lPPy7hzih3DK@intel.com>
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

On Mon, Feb 17, 2025 at 07:49:08PM +0200, Ville Syrjälä wrote:
> On Mon, Feb 17, 2025 at 12:35:24PM -0300, Gustavo Sousa wrote:
> > Add one step further into making intel_bw.c xe/i915 agnostic by using
> > display-specific platform checks.
> > 
> > v2:
> >   - Fix typo that resulted in converting IS_DG1(display) to
> >     display->platform.dg2.
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c | 77 ++++++++++++++-----------
> >  1 file changed, 43 insertions(+), 34 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 0fb41e6cd8ae..51b82979a8e4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -78,6 +78,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
> >  					 struct intel_qgv_point *sp,
> >  					 int point)
> >  {
> > +	struct intel_display *display = &dev_priv->display;
> >  	u32 val = 0, val2 = 0;
> >  	u16 dclk;
> >  	int ret;
> > @@ -89,7 +90,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
> >  		return ret;
> >  
> >  	dclk = val & 0xffff;
> > -	sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) >= 12 ? 500 : 0),
> > +	sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(display) >= 12 ? 500 : 0),
> 
> Side note: could you (or someone) fix up this botched rounding stuff?

Hmm. Could probably take the same approach that we use for
the PSF stuff and and just do something like:

int dclk_freq_mhz(int ratio)
{
	/* multiples of 16.666 MHz (100/6) */
	return DIV_ROUND_CLOSEST(ratio * 100, 6);
}


-- 
Ville Syrjälä
Intel
