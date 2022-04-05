Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 990DD4F3D29
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 20:18:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D266D10EE4A;
	Tue,  5 Apr 2022 18:18:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8A6C10EE4A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 18:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649182690; x=1680718690;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=F7xacnGThN4sB7kLDHrJfMc2Etjb6WwP2KFwKxU1R3k=;
 b=IxtuMIviz119LMXonttM7XWulotx010xSjJbI4PGLqaLsqa3R3AjlnJ0
 yaj8dKNq0BHzHjBGoTHCxF7TqGy/8r3f/u8NyFtKuIF8+QF08zwpO3aep
 Y6EoeXLQVhMBqxVFQDH85+6K23QZ96aP07+B9Xuc+pqcWNmcjeukj0n4t
 ACzkJUiJ5eCQDWqhR6dt9BBh9qbjjJW5IxRgwCvRzELoOL8bwhebq24+h
 gnwBDZFztBCh0D5cpDGlHKZprw8dIwiG9IJF1FCHkusR5jfFbQ0ve+8nv
 1+UhkfZpxwWWGzrCIrgb3ujBHLE2bGripsxLoiHA805Xt7T+pz7i6aPgm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="347273256"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="347273256"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 11:18:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="556627155"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 05 Apr 2022 11:18:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 21:18:06 +0300
Date: Tue, 5 Apr 2022 21:18:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <YkyH3oqv970FcQL8@intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
 <20220322120015.28074-13-ville.syrjala@linux.intel.com>
 <d56c9f3127a5499da87d2759ccd78496@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d56c9f3127a5499da87d2759ccd78496@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 12/12] drm/i915/dp: Disable DFP
 RGB->YCbCr conversion for now
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 01, 2022 at 07:00:02AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Sent: Tuesday, March 22, 2022 5:30 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>
> > Subject: [PATCH v2 12/12] drm/i915/dp: Disable DFP RGB->YCbCr conversion for
> > now
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > We lack sufficient state tracking to figure out whether we want the DFP to perform
> > the RGB->YCbCr conversion for us or not. So currently we are blindly just enabling
> > that all the time when supported by the DFP. That is nonsense. So until we imporve
> > our state tracking for this just disable the feature.
> > 
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index d3d458b3267d..a57581198a47 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1180,6 +1180,7 @@ static bool intel_dp_supports_dsc(struct intel_dp
> > *intel_dp,  static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
> >  				 const struct intel_crtc_state *crtc_state)  {
> > +	/* FIXME see intel_dp_update_420() regarding rgb_to_ycbcr */
> >  	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420
> > ||
> >  		(crtc_state->output_format ==
> > INTEL_OUTPUT_FORMAT_YCBCR444 &&
> >  		 intel_dp->dfp.ycbcr_444_to_420);
> > @@ -2574,6 +2575,7 @@ void intel_dp_configure_protocol_converter(struct
> > intel_dp *intel_dp,
> >  			    "Failed to %s protocol converter YCbCr 4:2:0 conversion
> > mode\n",
> >  			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
> > 
> > +	/* FIXME see intel_dp_update_420() regarding rgb_to_ycbcr */
> >  	tmp = intel_dp->dfp.rgb_to_ycbcr ?
> >  		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
> > 
> > @@ -4430,6 +4432,14 @@ intel_dp_update_420(struct intel_dp *intel_dp)
> >  	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp-
> > >dpcd,
> >  								 intel_dp-
> > >downstream_ports,
> > 
> > DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
> > +	/*
> > +	 * FIXME need to actually track whether we're really
> > +	 * going to be doing the RGB->YCbCr connversion or not.
> > +	 * We can't tell by simply looking at intel_dp->dfp.rgb_to_ycbcr.
> > +	 * Readout is going to annoying due to having to read that
> > +	 * state from external hardware that may vanish at any time :(
> > +	 */
> > +	rgb_to_ycbcr = false;
> 
> I think this will break 8k yuv pcon case as of now.
> @Nautiyal, Ankit K Can we get that fixed. We will need 8k YUV from source due to
> bandwidth constraints.
> 
> Rest of the series all looks nice and good.

Left this one alone for now. The FRL bandwidth stuff needs more work as
well anyway, so someone needs to take a good look at all of this at some
point.

Pushed the rest. Thanks for the review.

-- 
Ville Syrjälä
Intel
