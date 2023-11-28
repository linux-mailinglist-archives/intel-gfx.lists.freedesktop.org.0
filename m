Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D5E7FB9B6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3208910E4EE;
	Tue, 28 Nov 2023 11:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC0910E4EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701172370; x=1732708370;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=suvznqlNfR2wv7GiFHApDMAl+6+jXrQHwNfKEYCfly0=;
 b=e1Hhvl+c3Leejn57Va0zLQb20sw49XuPzfUr/o8KWtR8rYlhS5qUpUs+
 wa3irl4VwhXJtSh/eRzWlu85T2BNaftsLHJ+/4axKhh6SomnhUk4fvbwi
 d4x2yi/pQ1ZxjYLfTmQE4uJpHthdVwUluB6ZNqB2XKq//mln2c7JapLMX
 cra4PGNCW75Lc+2uy5cyoh24kHwv0zS2tVK46BjQjCNNrx61kqVAhmTwl
 +6ZXorbP2378L86/J1A0VMrQUF4NMvvGr/VxHFswioECCNqcgfDVwQiKy
 wZJnOQfHgVC27/BSrpFWA4A6CqoQBZEOqTzvuWgIJ+fHzqStrZjQRmYdZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459411677"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459411677"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:52:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761907484"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761907484"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 03:52:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 13:52:47 +0200
Date: Tue, 28 Nov 2023 13:52:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZWXUjwawwyVTYYoH@intel.com>
References: <20231124205522.57696-2-gustavo.sousa@intel.com>
 <20231127162146.GG5757@mdroper-desk1.amr.corp.intel.com>
 <ZWWoOL3WS5wTGiM2@intel.com> <ZWW4L7POCQLJi6aJ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZWW4L7POCQLJi6aJ@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cdclk: Remove divider field from
 tables
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

On Tue, Nov 28, 2023 at 11:51:43AM +0200, Ville Syrjälä wrote:
> On Tue, Nov 28, 2023 at 10:43:36AM +0200, Ville Syrjälä wrote:
> > On Mon, Nov 27, 2023 at 08:21:46AM -0800, Matt Roper wrote:
> > > On Fri, Nov 24, 2023 at 05:55:23PM -0300, Gustavo Sousa wrote:
> > > > The cdclk tables were introduced with commit 736da8112fee ("drm/i915:
> > > > Use literal representation of cdclk tables"). It has been almost 4 years
> > > > and the divider field was not really used yet. Let's remove it.
> > > 
> > > I think we need to go the other way and actually start using it instead
> > > of (incorrectly) trying to re-derive it from cdclk->vco.  The logic the
> > > driver is using today doesn't account for the potential use of
> > > squashing, which means we program the wrong divider value into CDCLK_CTL
> > > in some cases.  I pointed that out during the LNL code reviews a couple
> > > months ago, and I believe Stan is working on fixing that.
> > 
> > The code should be correct as is, but it does assume that the cd2x
> > divider is 2 when squashing is used. If that no longer holds then we
> > have to change something.
> 
> Something like this should be sufficient to eliminate that
> assumption.
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 8bb6bab7c8cd..58567d42e725 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1897,10 +1897,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	waveform = cdclk_squash_waveform(dev_priv, cdclk);
>  
> -	if (waveform)
> -		clock = vco / 2;
> -	else
> -		clock = cdclk;
> +	clock = DIV_ROUND_CLOSEST(cdclk * 16, cdclk_squash_divider(waveform));
>  
>  	if (HAS_CDCLK_SQUASH(dev_priv))
>  		dg2_cdclk_squash_program(dev_priv, waveform);

Sent that, and a bunch of other cdclk stuff as a proper series to the
list.

>  
> > 
> > > 
> > > I wonder if the misprogramming we're doing today is what requires the
> > > "HACK" at the bottom of intel_crtc_compute_min_cdclk for DG2?
> > > 
> > > 
> > > Matt
> > > 
> > > > 
> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 269 ++++++++++-----------
> > > >  1 file changed, 134 insertions(+), 135 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > index b93d1ad7936d..7f85a216ff5c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > @@ -1227,183 +1227,182 @@ struct intel_cdclk_vals {
> > > >  	u32 cdclk;
> > > >  	u16 refclk;
> > > >  	u16 waveform;
> > > > -	u8 divider;	/* CD2X divider * 2 */
> > > >  	u8 ratio;
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals bxt_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
> > > > -	{ .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
> > > > -	{ .refclk = 19200, .cdclk = 384000, .divider = 3, .ratio = 60 },
> > > > -	{ .refclk = 19200, .cdclk = 576000, .divider = 2, .ratio = 60 },
> > > > -	{ .refclk = 19200, .cdclk = 624000, .divider = 2, .ratio = 65 },
> > > > +	{ .refclk = 19200, .cdclk = 144000, .ratio = 60 },
> > > > +	{ .refclk = 19200, .cdclk = 288000, .ratio = 60 },
> > > > +	{ .refclk = 19200, .cdclk = 384000, .ratio = 60 },
> > > > +	{ .refclk = 19200, .cdclk = 576000, .ratio = 60 },
> > > > +	{ .refclk = 19200, .cdclk = 624000, .ratio = 65 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals glk_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk =  79200, .divider = 8, .ratio = 33 },
> > > > -	{ .refclk = 19200, .cdclk = 158400, .divider = 4, .ratio = 33 },
> > > > -	{ .refclk = 19200, .cdclk = 316800, .divider = 2, .ratio = 33 },
> > > > +	{ .refclk = 19200, .cdclk =  79200, .ratio = 33 },
> > > > +	{ .refclk = 19200, .cdclk = 158400, .ratio = 33 },
> > > > +	{ .refclk = 19200, .cdclk = 316800, .ratio = 33 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals icl_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 2, .ratio = 18 },
> > > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > > -	{ .refclk = 19200, .cdclk = 326400, .divider = 4, .ratio = 68 },
> > > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > > -
> > > > -	{ .refclk = 24000, .cdclk = 180000, .divider = 2, .ratio = 15 },
> > > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > > -	{ .refclk = 24000, .cdclk = 324000, .divider = 4, .ratio = 54 },
> > > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > > -
> > > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9 },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > > +	{ .refclk = 19200, .cdclk = 172800, .ratio = 18 },
> > > > +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > > +	{ .refclk = 19200, .cdclk = 326400, .ratio = 68 },
> > > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > > +
> > > > +	{ .refclk = 24000, .cdclk = 180000, .ratio = 15 },
> > > > +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > > +	{ .refclk = 24000, .cdclk = 324000, .ratio = 54 },
> > > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > > > +
> > > > +	{ .refclk = 38400, .cdclk = 172800, .ratio =  9 },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > > +	{ .refclk = 38400, .cdclk = 326400, .ratio = 34 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals rkl_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 4, .ratio =  36 },
> > > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 4, .ratio =  40 },
> > > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 4, .ratio =  64 },
> > > > -	{ .refclk = 19200, .cdclk = 326400, .divider = 8, .ratio = 136 },
> > > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 4, .ratio = 116 },
> > > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 4, .ratio = 136 },
> > > > -
> > > > -	{ .refclk = 24000, .cdclk = 180000, .divider = 4, .ratio =  30 },
> > > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 4, .ratio =  32 },
> > > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 4, .ratio =  52 },
> > > > -	{ .refclk = 24000, .cdclk = 324000, .divider = 8, .ratio = 108 },
> > > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 4, .ratio =  92 },
> > > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 4, .ratio = 108 },
> > > > -
> > > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 4, .ratio = 18 },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 4, .ratio = 20 },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 4, .ratio = 32 },
> > > > -	{ .refclk = 38400, .cdclk = 326400, .divider = 8, .ratio = 68 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 4, .ratio = 58 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 4, .ratio = 68 },
> > > > +	{ .refclk = 19200, .cdclk = 172800, .ratio =  36 },
> > > > +	{ .refclk = 19200, .cdclk = 192000, .ratio =  40 },
> > > > +	{ .refclk = 19200, .cdclk = 307200, .ratio =  64 },
> > > > +	{ .refclk = 19200, .cdclk = 326400, .ratio = 136 },
> > > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 116 },
> > > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 136 },
> > > > +
> > > > +	{ .refclk = 24000, .cdclk = 180000, .ratio =  30 },
> > > > +	{ .refclk = 24000, .cdclk = 192000, .ratio =  32 },
> > > > +	{ .refclk = 24000, .cdclk = 312000, .ratio =  52 },
> > > > +	{ .refclk = 24000, .cdclk = 324000, .ratio = 108 },
> > > > +	{ .refclk = 24000, .cdclk = 552000, .ratio =  92 },
> > > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 108 },
> > > > +
> > > > +	{ .refclk = 38400, .cdclk = 172800, .ratio = 18 },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 20 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 32 },
> > > > +	{ .refclk = 38400, .cdclk = 326400, .ratio = 68 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 58 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 68 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals adlp_a_step_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > >  
> > > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > > -	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > > +	{ .refclk = 24400, .cdclk = 648000, .ratio = 54 },
> > > >  
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals adlp_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> > > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > > -
> > > > -	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> > > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > > -
> > > > -	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > > +	{ .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> > > > +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > > +
> > > > +	{ .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> > > > +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > > > +
> > > > +	{ .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> > > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > > -	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> > > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > > -
> > > > -	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> > > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > > -	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> > > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > > -
> > > > -	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > > +	{ .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> > > > +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > > +	{ .refclk = 19200, .cdclk = 480000, .ratio = 50 },
> > > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > > +
> > > > +	{ .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> > > > +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > > +	{ .refclk = 24000, .cdclk = 480000, .ratio = 40 },
> > > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > > > +
> > > > +	{ .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > > +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
> > > > -	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
> > > > -	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> > > > -	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4 },
> > > > -	{ .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a },
> > > > -	{ .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa },
> > > > -	{ .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a },
> > > > -	{ .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6 },
> > > > -	{ .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6 },
> > > > -	{ .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee },
> > > > -	{ .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de },
> > > > -	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> > > > -	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> > > > +	{ .refclk = 38400, .cdclk = 163200, .ratio = 34, .waveform = 0x8888 },
> > > > +	{ .refclk = 38400, .cdclk = 204000, .ratio = 34, .waveform = 0x9248 },
> > > > +	{ .refclk = 38400, .cdclk = 244800, .ratio = 34, .waveform = 0xa4a4 },
> > > > +	{ .refclk = 38400, .cdclk = 285600, .ratio = 34, .waveform = 0xa54a },
> > > > +	{ .refclk = 38400, .cdclk = 326400, .ratio = 34, .waveform = 0xaaaa },
> > > > +	{ .refclk = 38400, .cdclk = 367200, .ratio = 34, .waveform = 0xad5a },
> > > > +	{ .refclk = 38400, .cdclk = 408000, .ratio = 34, .waveform = 0xb6b6 },
> > > > +	{ .refclk = 38400, .cdclk = 448800, .ratio = 34, .waveform = 0xdbb6 },
> > > > +	{ .refclk = 38400, .cdclk = 489600, .ratio = 34, .waveform = 0xeeee },
> > > > +	{ .refclk = 38400, .cdclk = 530400, .ratio = 34, .waveform = 0xf7de },
> > > > +	{ .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> > > > +	{ .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals mtl_cdclk_table[] = {
> > > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
> > > > -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
> > > > +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0x0000 },
> > > > +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0x0000 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0x0000 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0x0000 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> > > > -	{ .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
> > > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> > > > -	{ .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
> > > > -	{ .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
> > > > -	{ .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
> > > > -	{ .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
> > > > -	{ .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
> > > > -	{ .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
> > > > -	{ .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
> > > > -	{ .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
> > > > -	{ .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
> > > > -	{ .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
> > > > -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
> > > > -	{ .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
> > > > -	{ .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
> > > > -	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> > > > -	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> > > > +	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
> > > > +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> > > > +	{ .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
> > > > +	{ .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
> > > > +	{ .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
> > > > +	{ .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
> > > > +	{ .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },
> > > > +	{ .refclk = 38400, .cdclk = 330000, .ratio = 25, .waveform = 0xdbb6 },
> > > > +	{ .refclk = 38400, .cdclk = 360000, .ratio = 25, .waveform = 0xeeee },
> > > > +	{ .refclk = 38400, .cdclk = 390000, .ratio = 25, .waveform = 0xf7de },
> > > > +	{ .refclk = 38400, .cdclk = 420000, .ratio = 25, .waveform = 0xfefe },
> > > > +	{ .refclk = 38400, .cdclk = 450000, .ratio = 25, .waveform = 0xfffe },
> > > > +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
> > > > +	{ .refclk = 38400, .cdclk = 487200, .ratio = 29, .waveform = 0xfefe },
> > > > +	{ .refclk = 38400, .cdclk = 522000, .ratio = 29, .waveform = 0xfffe },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
> > > > +	{ .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> > > > +	{ .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> > > >  	{}
> > > >  };
> > > >  
> > > > -- 
> > > > 2.42.1
> > > > 
> > > 
> > > -- 
> > > Matt Roper
> > > Graphics Software Engineer
> > > Linux GPU Platform Enablement
> > > Intel Corporation
> > 
> > -- 
> > Ville Syrjälä
> > Intel
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
