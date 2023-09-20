Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7087A7A30
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 13:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA3610E16F;
	Wed, 20 Sep 2023 11:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD5B10E16F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 11:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695208444; x=1726744444;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TfjVVAGlkaUsutRe37iFppwT2iRipMXbb6GWjeMIrj0=;
 b=BUInxQ7t/8N7d4H4p+dy9wax/4Gd8CiEdGPQdAgxUHsIRe4jL4NztbdW
 3Ds+QtolTLPOM+4jZX/xJuIM1KdoeaJzZYzO8/ZffcL80alvg2RH6+ple
 9JouxHZKIjN5yjQ8fBpw5ijzWd5B1ulXVkG3h+2idNatgZ0TG8z9KNETF
 kC97f0dvYU2UdfvZvlreAOf8owqkif5+qCWO8NHNXjzGL/rOGIl1ev/SW
 p7IYklPXKp9JMIzGa6/usrXUJZfj/dua/zf6bxKQcXe3zl1fGwGFGVAL1
 dMCFBaXgo7rrAE4OxEEAqnrcnkO4Rav1Wxk7klqdAgyNuZ/kebOnTIuhc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="365241951"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="365241951"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 04:14:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="781651011"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="781651011"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 20 Sep 2023 04:14:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Sep 2023 14:14:00 +0300
Date: Wed, 20 Sep 2023 14:14:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZQrT-BzAEnh7hEHd@intel.com>
References: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
 <87il85ryeh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87il85ryeh.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Check lane count when
 determining FEC support
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
Cc: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 20, 2023 at 12:23:34PM +0300, Jani Nikula wrote:
> On Wed, 13 Sep 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > ICL doesn't support FEC with a x1 DP link. Make sure
> > we don't try to enable FEC in such cases.
> 
> The question is, should we rather require x2 link for FEC?
> 
> I suppose x1 link with DSC+FEC is an unlikely scenario with our current
> link bandwidth policy, so probably not a big deal.

I think currently we just smash lane_count to max when using DSC.
So doesn't really matter currently. But something to keep in mind 
if/when we tune the policy.

> 
> BR,
> Jani.
> 
> >
> > Requires a bit of reordering to make sure we've computed lane_count
> > before checking it.
> >
> > Cc: Luca Coelho <luciano.coelho@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++----------
> >  1 file changed, 11 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 55ba6eeaa810..2cde8ac513bb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1363,7 +1363,8 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
> >  	if (DISPLAY_VER(dev_priv) >= 12)
> >  		return true;
> >  
> > -	if (DISPLAY_VER(dev_priv) == 11 && encoder->port != PORT_A)
> > +	if (DISPLAY_VER(dev_priv) == 11 &&
> > +	    encoder->port != PORT_A && pipe_config->lane_count != 1)
> >  		return true;
> >  
> >  	return false;
> > @@ -2105,15 +2106,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  		&pipe_config->hw.adjusted_mode;
> >  	int ret;
> >  
> > -	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
> > -		intel_dp_supports_fec(intel_dp, pipe_config);
> > -
> > -	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
> > -		return -EINVAL;
> > -
> > -	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
> > -		return -EINVAL;
> > -
> >  	/*
> >  	 * compute pipe bpp is set to false for DP MST DSC case
> >  	 * and compressed_bpp is calculated same time once
> > @@ -2134,6 +2126,15 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  		}
> >  	}
> >  
> > +	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
> > +		intel_dp_supports_fec(intel_dp, pipe_config);
> > +
> > +	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
> > +		return -EINVAL;
> > +
> > +	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
> > +		return -EINVAL;
> > +
> >  	/* Calculate Slice count */
> >  	if (intel_dp_is_edp(intel_dp)) {
> >  		pipe_config->dsc.slice_count =
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
