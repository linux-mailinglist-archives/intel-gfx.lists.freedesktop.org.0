Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D091770F70C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 15:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C95810E0F2;
	Wed, 24 May 2023 13:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B69C089125;
 Wed, 24 May 2023 12:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684933197; x=1716469197;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Eo4X8m8k0USPm8C9yv3ZXMC+tHWGCYF1tubnKihG1c0=;
 b=f1HYYlJu5E6hLucdVyFL+UH2TIXYDtCNChCVJhz9kWxlDH6h3J8pNKxO
 J7fsCwAiVXz9uqsOMFd+/vq6SFqYBFDinEPwUCzPP1lAPJntZ9NQNSYEn
 dEheWt4xk3yIedwAOkssyu8eCHuUFFfJdPsIGNwj2wfIryj5qv8Lh2Bxp
 nFHfkS03ZpMUfvjuXCDQxkp9DJadVKGg+7obyM9JmMh6dJjmqbH/79tmE
 RNarZs8YneDNlBvOonbtzP3OmsDXfF10ABWCMKy2ocXszT1OwFTK9xtzI
 oiabG1hmKpC8qp+C5kv7uV7X7yYe7XkoAqkq15F4UjyfdaMul3GPBs1GA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="419268173"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="419268173"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:59:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="698536415"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="698536415"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:59:54 -0700
Date: Wed, 24 May 2023 15:59:47 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZG4KQxQIDJboU3YW@intel.com>
References: <20230512062417.2584427-1-ankit.k.nautiyal@intel.com>
 <20230512062417.2584427-13-ankit.k.nautiyal@intel.com>
 <ZGNeYFSFzInncdQm@intel.com> <ZGNrq9lG85tkh2Ym@intel.com>
 <ZGyA7sqHZP7XKw3G@intel.com> <ZG4FUsgK7Acv_p-a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZG4FUsgK7Acv_p-a@intel.com>
Subject: Re: [Intel-gfx] [PATCH 12/13] drm/i915/dp: Get optimal link config
 to have best compressed bpp
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 24, 2023 at 03:38:42PM +0300, Ville Syrj�l� wrote:
> On Tue, May 23, 2023 at 12:01:34PM +0300, Lisovskiy, Stanislav wrote:
> > On Tue, May 16, 2023 at 02:40:27PM +0300, Ville Syrj�l� wrote:
> > > On Tue, May 16, 2023 at 01:43:44PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Fri, May 12, 2023 at 11:54:16AM +0530, Ankit Nautiyal wrote:
> > > > > Currently, we take the max lane, rate and pipe bpp, to get the maximum
> > > > > compressed bpp possible. We then set the output bpp to this value.
> > > > > This patch provides support to have max bpp, min rate and min lanes,
> > > > > that can support the min compressed bpp.
> > > > > 
> > > > > v2:
> > > > > -Avoid ending up with compressed bpp, same as pipe bpp. (Stan)
> > > > > -Fix the checks for limits->max/min_bpp while iterating over list of
> > > > >  valid DSC bpcs. (Stan)
> > > > > 
> > > > > v3:
> > > > > -Refactor the code to have pipe bpp/compressed bpp computation and slice
> > > > > count calculation separately for different cases.
> > > > > 
> > > > > v4:
> > > > > -Separate the pipe_bpp calculation for eDP and DP.
> > > > > 
> > > > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dp.c | 305 +++++++++++++++++++-----
> > > > >  1 file changed, 245 insertions(+), 60 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > index 39e2bf3d738d..578320220c9a 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > @@ -1642,6 +1642,209 @@ static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
> > > > >  	return drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd, sink_dsc_format);
> > > > >  }
> > > > >  
> > > > > +static bool is_dsc_bw_sufficient(int link_rate, int lane_count, int compressed_bpp,
> > > > > +				 const struct drm_display_mode *adjusted_mode)
> > > > > +{
> > > > > +	int mode_rate = intel_dp_link_required(adjusted_mode->crtc_clock, compressed_bpp);
> > > > > +	int link_avail = intel_dp_max_data_rate(link_rate, lane_count);
> > > > > +
> > > > > +	return mode_rate <= link_avail;
> > > > > +}
> > > > > +
> > > > > +static int dsc_compute_link_config(struct intel_dp *intel_dp,
> > > > > +				   struct intel_crtc_state *pipe_config,
> > > > > +				   struct link_config_limits *limits,
> > > > > +				   int pipe_bpp,
> > > > > +				   u16 compressed_bpp,
> > > > > +				   int timeslots)
> > > > > +{
> > > > > +	const struct drm_display_mode *adjusted_mode =
> > > > > +		&pipe_config->hw.adjusted_mode;
> > > > > +	int link_rate, lane_count;
> > > > > +	int dsc_max_bpp;
> > > > > +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > > > > +	int i;
> > > > > +
> > > > > +	for (i = 0; i < intel_dp->num_common_rates; i++) {
> > > > > +		link_rate = intel_dp_common_rate(intel_dp, i);
> > > > > +		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
> > > > > +			continue;
> > > > > +
> > > > > +		for (lane_count = limits->min_lane_count;
> > > > > +		     lane_count <= limits->max_lane_count;
> > > > > +		     lane_count <<= 1) {
> > > > > +			dsc_max_bpp = intel_dp_dsc_get_max_compressed_bpp(dev_priv,
> > > > > +									  link_rate,
> > > > > +									  lane_count,
> > > > > +									  adjusted_mode->crtc_clock,
> > > > > +									  adjusted_mode->crtc_hdisplay,
> > > > > +									  pipe_config->bigjoiner_pipes,
> > > > > +									  pipe_config->output_format,
> > > > > +									  pipe_bpp, timeslots);
> > > > > +			/*
> > > > > +			 * According to DSC 1.2a Section 4.1.1 Table 4.1 the maximum
> > > > > +			 * supported PPS value can be 63.9375 and with the further
> > > > > +			 * mention that bpp should be programmed double the target bpp
> > > > > +			 * restricting our target bpp to be 31.9375 at max
> > > > > +			 */
> > > > > +			if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> > > > > +				dsc_max_bpp = min_t(u16, dsc_max_bpp, 31);
> > > > > +
> > > > > +			if (compressed_bpp > dsc_max_bpp)
> > > > > +				continue;
> > > > > +
> > > > > +			if (!is_dsc_bw_sufficient(link_rate, lane_count,
> > > > > +						  compressed_bpp, adjusted_mode))
> > > > > +				continue;
> > > > > +
> > > > > +			pipe_config->lane_count = lane_count;
> > > > > +			pipe_config->port_clock = link_rate;
> > > > > +
> > > > > +			return 0;
> > > > > +		}
> > > > > +	}
> > > > > +
> > > > > +	return -EINVAL;
> > > > > +}
> > > > > +
> > > > > +static
> > > > > +u16 intel_dp_dsc_max_sink_compressed_bppx16(struct intel_dp *intel_dp,
> > > > > +					    struct intel_crtc_state *pipe_config,
> > > > > +					    int bpc)
> > > > > +{
> > > > > +	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd);
> > > > > +
> > > > > +	if (max_bppx16)
> > > > > +		return max_bppx16;
> > > > > +	/*
> > > > > +	 * If support not given in DPCD 67h, 68h use the Maximum Allowed bit rate
> > > > > +	 * values as given in spec Table 2-157 DP v2.0
> > > > > +	 */
> > > > > +	switch (pipe_config->output_format) {
> > > > > +	case INTEL_OUTPUT_FORMAT_RGB:
> > > > > +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> > > > > +		return (3 * bpc) << 4;
> > > > > +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> > > > > +		return (3 * (bpc / 2)) << 4;
> > > > > +	default:
> > > > > +		MISSING_CASE(pipe_config->output_format);
> > > > > +		break;
> > > > > +	}
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static u16 intel_dp_dsc_min_compressed_bppx16(struct intel_crtc_state *pipe_config)
> > > > > +{
> > > > > +	switch (pipe_config->output_format) {
> > > > > +	case INTEL_OUTPUT_FORMAT_RGB:
> > > > > +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> > > > > +		return 8 << 4;
> > > > > +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> > > > > +		return 6 << 4;
> > > > > +	default:
> > > > > +		MISSING_CASE(pipe_config->output_format);
> > > > > +		break;
> > > > > +	}
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
> > > > > +				      struct intel_crtc_state *pipe_config,
> > > > > +				      struct link_config_limits *limits,
> > > > > +				      int pipe_bpp,
> > > > > +				      int timeslots)
> > > > > +{
> > > > > +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > > > > +	u16 compressed_bpp;
> > > > > +	int dsc_min_bpp, dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> > > > > +	int ret;
> > > > > +
> > > > > +	dsc_min_bpp = max(intel_dp_dsc_min_compressed_bppx16(pipe_config) >> 4, 8);
> > > > > +	if (DISPLAY_VER(dev_priv) <= 12)
> > > > > +		dsc_src_max_bpp = 23;
> > > > > +	else
> > > > > +		dsc_src_max_bpp = 27;
> > > > 
> > > > I would may be added some comment about what are those "23/27" numbers or
> > > > may be even created some self-explanatory #define constants for those.
> > > 
> > > I dislike defines like that. They are single use so don't actually
> > > do anything in terms of avoiding typoes and other accidental
> > > mismatches, and people always seem put them in some random place
> > > (eg. top of file) so then it takes extra work to find them.
> > 
> > Ah come on, even my primitive mcedit with ctags plugin can track it :))
> > However my point is that anything is better than just hard-coded magic
> > numbers, which is proven antipattern.
> 
> It's still a magic number whether you hide it behind a define or not.

define will gixe a clue at least

> 
> > Also you never know if it is a single or multiple use,
> 
> If you use it multiple times then you aren't using the function
> correctly.

hmm.. I didn't understand we are using defines in many places, like
register names, things like PIPE_A(which is enum but still), it is just 
more explanatory and elegant rather than use 0 instead of PIPE_A, right?

> 
> > I think it should be
> > either defined as a constant or as a define, which is self explanatory.
> 
> No more self explanatory than a function. Once you have the
> function the define is entirely redundant.

The function explains what it does, but I'm afraid you can't put explanation
for all the constants it used in a single function name..

> 
> > 
> > > 
> > > The best approach IMO is to just use functions with good names.
> > > Eg. in this case we could just have a full set of clear functions:
> > > dsc_{sink,source}_{min,max}_bpp() or something along those line.
> > 
> > ..which still doesn't explain, why it is 23 there, why it is 27, who sets those
> > numbers, which spec and so on.
> 
> Neither does a define. All a define will do is say that for platform
> X return define Y which is defined as Z. Returning Z directly is less
> convoluted and just as helpful in figuring out where the numbers came
> from. If it's hard to figure out where the number came from then you
> can add a comment to indicate where it is specified.

Well, I agree about the comment. Comment might do, but hardcoded numbers
are wrong. With this logic we could also not use register names like PLANE_CTL
but just write 0x40*** and then rely that function name will explain what happens
here or use pipe numbers like 0,1,2, instead of PIPE_A/PIPE_B...
Of course we could, but it doesn't look nice then, because numbers do not carry any 
info..

I mean, a concept that magic/hardcoded numbers are wrong isn't even my opinion, it is just 
world-wide known antipattern.
If you don't like defines there are constants also and whatever, my point is that just
hardcoded numbers are almost always bad.

Anyways I'm fine with a comment, as well, just because I think endless arguing is even worse than
magic numbers..

Stan

> 
> -- 
> Ville Syrj�l�
> Intel
