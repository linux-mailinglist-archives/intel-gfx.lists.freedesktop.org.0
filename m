Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B254762FB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 21:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7D3A10E999;
	Wed, 15 Dec 2021 20:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8161A10E999
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Dec 2021 20:17:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="325605957"
X-IronPort-AV: E=Sophos;i="5.88,209,1635231600"; d="scan'208";a="325605957"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 12:17:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,209,1635231600"; d="scan'208";a="605176887"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 15 Dec 2021 12:17:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Dec 2021 22:17:25 +0200
Date: Wed, 15 Dec 2021 22:17:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <YbpNVYBpJRQfwpr/@intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-10-ville.syrjala@linux.intel.com>
 <d54cb5c0-6a82-eb67-d984-cee4e1ded6c6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d54cb5c0-6a82-eb67-d984-cee4e1ded6c6@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915/dp: Extract
 intel_dp_tmds_clock_valid()
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

On Fri, Dec 10, 2021 at 10:50:09AM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/15/2021 7:09 PM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We're currently duplicating the DFP min/max TMDS clock checks
> > in .mode_valid() and .compute_config(). Extract a helper suitable
> > for both use cases.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp.c | 59 +++++++++++--------------
> >   1 file changed, 26 insertions(+), 33 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 45e4bf54e1de..b3b8e74fac9c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -781,6 +781,25 @@ static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
> >   	return hdisplay == 4096 && !HAS_DDI(dev_priv);
> >   }
> >   
> > +static enum drm_mode_status
> > +intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
> > +			  int clock, int bpc, bool ycbcr420_output)
> > +{
> > +	int tmds_clock;
> > +
> > +	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
> > +
> > +	if (intel_dp->dfp.min_tmds_clock &&
> > +	    tmds_clock < intel_dp->dfp.min_tmds_clock)
> > +		return MODE_CLOCK_LOW;
> > +
> > +	if (intel_dp->dfp.max_tmds_clock &&
> > +	    tmds_clock > intel_dp->dfp.max_tmds_clock)
> > +		return MODE_CLOCK_HIGH;
> > +
> > +	return MODE_OK;
> > +}
> 
> 
> This looks good to me, a common helper to check if the tmds clock 
> calculated for the the bpc selected and 420 format is within the limits 
> of the DFP tmds limitations.
> 
> There are however some HDMI2.1 protocol converters that support higher 
> mode with Fixed Rate Link (where the TMDS clock lane is used as an 
> additional lane with hdmi2.1 sinks)
> 
> In that case, we would need to skip the tmds check, as the TMDS clock 
> will not be sufficient for modes that can be supported with FRL mode, 
> and all those higher modes will get pruned.
> 
> These PCONs will have additional fields in DPCD caps for maximum FRL 
> rate in Gbps (stored in dfp->max_frl_rate), which we can use to check if 
> the mode rate would be supported, if FRL mode is used.
> 
> I was wondering if we add a similar check for this case or add another 
> argument to this function "is_frl_mode" and have the bw check there.

I guess we should pull the FRL stuff into its own helper functions,
assuming there is something that can be shared between .mode_valid()
and .compute_config().

But looking at the FRL code it looks a bit sketchy. It doesn't seem
to account for any link bandwidth overhead from the 16b18b encoding
or whatever else overhead there is (the spec seems to have quite a
lot to say on this topic). Also it uses intel_dp_mode_min_output_bpp()
for the bandwidth calculation which seems wrong.
intel_dp_mode_min_output_bpp() deals with the DP side of the link
where min bpc can be as low as 6, but for the HDMI side min bpc
is always 8.

So looks to me like there's a bunch of stuff that needs fixing here.

-- 
Ville Syrjälä
Intel
