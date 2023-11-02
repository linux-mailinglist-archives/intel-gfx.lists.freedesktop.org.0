Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBA37DF77F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 17:18:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E0310E04E;
	Thu,  2 Nov 2023 16:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA57B10E04E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 16:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698941877; x=1730477877;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dB9Y9tiEo4Fe1aLp3+GLuDz0oUMZbxXojxdHL0PfDYA=;
 b=P3WOiC/AYYxoxH6o7sef20wxYSMAjDfsCuu7Q5FSoz4z5/9S41H3eh/t
 NKb9RkWUtWcBbfD4oHbWkSBn2PzFNBGZM6OOGnv3hJttzg5YVE0TR4ZyJ
 +/n2OxrK+R0NH/hjgwLYDfdWuX238lAUj39VN5TTUrUNTolbWLZUT4x4T
 nT5MoI/MTrWJk0iB8byba9C7y0a3KLQtl+sqy8bh1uByisn6hLSRBIW9E
 Ojm6csZ+C8EjfcqmXu2x5sgKe9xiFLTVe2aWR5mfdNCSXBP8c/+RikvkW
 HvTFTCAXh2Z3MsTJJlbZpSxuNwoJNBCct2M1IgGKQeyfysAx9T5HdHj2V A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="392633159"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="392633159"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 09:17:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="754829147"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="754829147"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 02 Nov 2023 09:17:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Nov 2023 18:17:54 +0200
Date: Thu, 2 Nov 2023 18:17:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZUPLshjnm271Q7QA@intel.com>
References: <20231031160800.18371-1-ville.syrjala@linux.intel.com>
 <8734xo2qpt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8734xo2qpt.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Bump GLK CDCLK frequency when
 driving multiple pipes
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

On Thu, Nov 02, 2023 at 04:07:58PM +0200, Jani Nikula wrote:
> On Tue, 31 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > On GLK CDCLK frequency needs to be at least 2*96 MHz when accessing
> > the audio hardware. Currently we bump the CDCLK frequency up
> > temporarily (if not high enough already) whenever audio hardware
> > is being accessed, and drop it back down afterwards.
> >
> > With a single active pipe this works just fine as we can switch
> > between all the valid CDCLK frequencies by changing the cd2x
> > divider, which doesn't require a full modeset. However with
> > multiple active pipes the cd2x divider trick no longer works,
> > and thus we end up blinking all displays off and back on.
> >
> > To avoid this let's just bump the CDCLK frequency to >=2*96MHz
> > whenever multiple pipes are active. The downside is slightly
> > higher power consumption, but that seems like an acceptable
> > tradeoff. With a single active pipe we can stick to the current
> > more optiomal (from power comsumption POV) behaviour.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9599
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 6d7ba4d0f130..3ddf4201e224 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2750,6 +2750,18 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
> >  	for_each_pipe(dev_priv, pipe)
> >  		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
> >  
> > +	/*
> > +	 * Avoid glk_force_audio_cdclk() causing excessive screen
> > +	 * blinking when multiple pipes are active by making sure
> > +	 * cdclk frequency is always high enough for audio. With a
> > +	 * single active pipe we can always change CDCLK frequency
> > +	 * by changing the cd2x divider (see glk_cdclk_table[]) and
> > +	 * thus a full modeset won't be needed then.
> > +	 */
> > +	if (DISPLAY_VER(dev_priv) == 10 && cdclk_state->active_pipes &&
> > +	    !is_power_of_2(cdclk_state->active_pipes))
> > +		min_cdclk = max(2 * 96000, min_cdclk);
> 
> For consistency with glk_force_audio_cdclk(), maybe
> s/DISPLAY_VER(dev_priv) == 10/IS_GEMINILAKE()/?

I suppose. Though we do use both check for glk, even in the rest
of the cdclk code.

> 
> There's a bit of duplication with the frequencies, but I guess the
> comment is enough to alleviate the concern.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> 
> > +
> >  	if (min_cdclk > dev_priv->display.cdclk.max_cdclk_freq) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
