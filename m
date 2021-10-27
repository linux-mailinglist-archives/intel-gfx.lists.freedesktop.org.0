Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD6143C5A6
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 10:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50BC26E832;
	Wed, 27 Oct 2021 08:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406266E832
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 08:54:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="227569393"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="227569393"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 01:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="529550828"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 27 Oct 2021 01:54:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Oct 2021 11:54:23 +0300
Date: Wed, 27 Oct 2021 11:54:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Uma Shankar <uma.shankar@intel.com>
Message-ID: <YXkTvw2SQCxIFm+S@intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-21-ville.syrjala@linux.intel.com>
 <d86a25b8-b68a-5e2e-f4ae-c539ddf12885@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d86a25b8-b68a-5e2e-f4ae-c539ddf12885@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 20/20] drm/i915/dp: Disable DFP RGB->YCbCr
 conversion for now
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

On Wed, Oct 27, 2021 at 12:57:37PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/15/2021 7:09 PM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We lack sufficient state tracking to figure out whether
> > we want the DFP to perform the RGB->YCbCr conversion for us
> > or not. So currently we are blindly just enabling that all the
> > time when supported by the DFP. That is nonsense. So until
> > we imporve our state tracking for this just disable the feature.
> >
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++++
> >   1 file changed, 10 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 29b12456c461..3e2a29b589a9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1107,6 +1107,7 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
> >   static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
> >   				 const struct intel_crtc_state *crtc_state)
> >   {
> > +	/* FIXME see intel_dp_update_420() regarding rgb_to_ycbcr */
> >   	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> >   		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
> >   		 intel_dp->dfp.ycbcr_444_to_420);
> > @@ -2456,6 +2457,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
> >   			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
> >   			    enabledisable(intel_dp->dfp.ycbcr_444_to_420));
> >   
> > +	/* FIXME see intel_dp_update_420() regarding rgb_to_ycbcr */
> >   	tmp = intel_dp->dfp.rgb_to_ycbcr ?
> >   		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
> >   
> > @@ -4261,6 +4263,14 @@ intel_dp_update_420(struct intel_dp *intel_dp)
> >   	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
> >   								 intel_dp->downstream_ports,
> >   								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
> > +	/*
> > +	 * FIXME need to actually track whether we're really
> > +	 * going to be doing the RGB->YCbCr connversion or not.
> > +	 * We can't tell by simply looking at intel_dp->dfp.rgb_to_ycbcr.
> > +	 * Readout is going to annoying due to having to read that
> > +	 * state from external hardware that may vanish at any time :(
> > +	 */
> 
> 
> Hmm right. Do you have any suggestion what should be the better place 
> for defining the policy for using DFPs CSC or use our own HW, in case of 
> YCbCr 420 output?

One idea that came to mind was just adding some kind of
sink_format thing into the crtc_state, and computing that appropriately
during .compute_config(). But as mentioned the readout part is going to
be annoying. Maybe we just won't have readout for it.

-- 
Ville Syrjälä
Intel
