Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F22764405A2
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 01:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228986EA8E;
	Fri, 29 Oct 2021 23:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E71846EA8E
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 23:00:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="230628517"
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="230628517"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 16:00:10 -0700
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="495871025"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 16:00:07 -0700
Date: Fri, 29 Oct 2021 16:12:52 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>
Message-ID: <20211029231251.GA1790@labuser-Z97X-UD5H>
References: <20211027095316.9579-1-vandita.kulkarni@intel.com>
 <20211027192642.GA22973@labuser-Z97X-UD5H>
 <7d0b19226c71402199351b7e8514c041@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d0b19226c71402199351b7e8514c041@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Fix the usage of uncompressed
 bpp
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

On Wed, Oct 27, 2021 at 09:37:10PM -0700, Kulkarni, Vandita wrote:
> > -----Original Message-----
> > From: Navare, Manasi D <manasi.d.navare@intel.com>
> > Sent: Thursday, October 28, 2021 12:57 AM
> > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> > Subject: Re: [PATCH] drm/i915/dsc: Fix the usage of uncompressed bpp
> > 
> > On Wed, Oct 27, 2021 at 03:23:16PM +0530, Vandita Kulkarni wrote:
> > > DP 1.4 spec limits max compression bpp to uncompressed bpp -1, which
> > > is supported from XELPD onwards.
> > > Instead of uncompressed bpp, max dsc input bpp was being used to limit
> > > the max compression bpp.
> > 
> > So the input Pipe BPP which is the uncompressed bpp is decided by the input
> > bpc and when this was initially written, we had designed it to respect the
> > max_req_bpc by the user.
> > So that is what we use to decide the input bpc and hence the pipe_bpp This
> > input pipe_bpp decides the compressed bpp that we calculate based on all
> > the supported output bpps which are supported all the way upto
> > uncompressed_output_bpp - 1.
> > 
> > So I dont see the need to change the logic here. Moreover I dont see any
> > change in the dsc_compute_bpp function So I dont understand the purpose
> > of introducing the new max_dsc_pipe_bpp variable here
> 
> Thanks for the comments, I had few more opens around this along with this patch.
> 
> AFAIU about max_requested_bpc it is to limit the max_bpc
> "drm: Add connector property to limit max bpc"
> And the driver is supposed to program the default bpc as per the connector limitation.
> Which is 12 as per the current driver implementation.
> 
> I had few queries around this design:
> So it means that max_dsc_input_bpp would be set to 36 if supported by the sink and the platform.
> And now we make this as our pipe_bpp,
> 1. Does this mean that we are assuming 12bpc as i/p always?
> 2. What happens to those with formats 8bpc, 10 bpc?
>

Yes so this driver policy was decided based on some feedback that I had got from the community as well as internal feedback from Ville
that the decision of input_bpc should be based on max_bpc requested by the user through the connector property and max_bpc supported by the platform.
Here we take the min of the two so that we dont violate either of the max constrains. 
This was primarily suggested by Ville since he said that we should always respect what user has set as the upper limit in the bpc because
this could be for example driven by the fact that OEM's panel has a limitation or issues with higher bpcs or a display requirement for certain use case.
Hence while we want to support as high bpc as supported by the platform and sink to have better display quality, it should not exceed the max limit
set by the user through the property.

8 and 10bpc will be supported but we want to start with supporting the max we can, going down from there if needed.
So for compression, we chose the maximum input bpc and determine the compressed bpp for that.

 
> We do not consider the actual pipe_bpp while computing the compression_bpp, 
> We reverse calculate it from the link_rate,  and small joiner bpp limits.
> In cases of forcing dsc, we might have a situation where the link can actually support the current bpp, or even more.
> But we are forcing the dsc enable.
> In such cases we might end up with a compression bpp which is higher than the actual i/p bpp.

Well the only time we force the dsc_enable is for IGT DSC tests and thats okay for compression bpp to be higher
since there we are just validation the functionality and its not for actual user/use case.

In the actual use case we will only enable DSC when the available max link rate/lane count does not support the
minimum bpp of 18 (min bpc of 6 * 3)
So then in that case we say that lets keep the pipe_bpp or input bpp as max_supported_input_bpc * 3 
> 
> Now, even if we take a min of  higher compression bpp against max_requested_bpc *3 -1, we still have
> Compression bpp > actual pipe_bpp 
> 
> As per the spec when they say uncompressed bpp, they actually mean 3 * bpc
> If we go ahead with this approach of using max_requested_bpc , which is 12 always we cannot
> adhere to the spec.

So the Bspec says that if the input BPP is (8 * 3) = 24, then based on the engine's compression ratio capability it can support output compressed BPP of: 8 - 23 in the increments of 1 BPP
And the maximum that we can pick between 8 - 23 will depend on the min(max bits_per_pixel that the max link rate, lane count can handle, max bits per pixel by small joiner RAM calc).

So we are good here in terms of how we calculate our compressed bpp. However what you should once double check is for XeLPD (>=13) platforms, you just pick min (bits_per_pixel, pipe_bpp - 1)
But I remember seeing that the spec still says target bpp has to be 8 to 27 even when supported input bpc are 8/10/12 (please check if it actually goes all the way from 8 to 35)

Manasi

> 
> Thanks,
> Vandita
> 
> > Manasi
> > 
> > >
> > > Fixes: 831d5aa96c97 ("drm/i915/xelpd: Support DP1.4 compression BPPs")
> > > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 9d8132dd4cc5..1f7e666ae490 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1322,7 +1322,7 @@ static int intel_dp_dsc_compute_config(struct
> > intel_dp *intel_dp,
> > >  	struct drm_i915_private *dev_priv = to_i915(dig_port-
> > >base.base.dev);
> > >  	const struct drm_display_mode *adjusted_mode =
> > >  		&pipe_config->hw.adjusted_mode;
> > > -	int pipe_bpp;
> > > +	int pipe_bpp, max_dsc_pipe_bpp;
> > >  	int ret;
> > >
> > >  	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) && @@ -
> > 1331,7
> > > +1331,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp
> > *intel_dp,
> > >  	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
> > >  		return -EINVAL;
> > >
> > > -	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state-
> > >max_requested_bpc);
> > > +	pipe_bpp = pipe_config->pipe_bpp;
> > > +	max_dsc_pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp,
> > > +conn_state->max_requested_bpc);
> > >
> > >  	/* Min Input BPC for ICL+ is 8 */
> > >  	if (pipe_bpp < 8 * 3) {
> > > @@ -1345,7 +1346,7 @@ static int intel_dp_dsc_compute_config(struct
> > intel_dp *intel_dp,
> > >  	 * Optimize this later for the minimum possible link rate/lane count
> > >  	 * with DSC enabled for the requested mode.
> > >  	 */
> > > -	pipe_config->pipe_bpp = pipe_bpp;
> > > +	pipe_config->pipe_bpp = max_dsc_pipe_bpp;
> > >  	pipe_config->port_clock = limits->max_rate;
> > >  	pipe_config->lane_count = limits->max_lane_count;
> > >
> > > --
> > > 2.32.0
> > >
