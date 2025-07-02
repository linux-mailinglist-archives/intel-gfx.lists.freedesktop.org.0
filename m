Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB5AAF6291
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 21:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6638B10E770;
	Wed,  2 Jul 2025 19:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gxlc3tZx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F315710E06F;
 Wed,  2 Jul 2025 19:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751484358; x=1783020358;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xbnClmeLVszI77Sta207iU95kn9BNqONLpAvumHEJ1U=;
 b=gxlc3tZxFayvrMO9FYnp6pg2LbplTIwyfpUnUnnDwLXRlONM0VlwK0tj
 hWvtjN6iWt0neZFmTMZ0mChfBRoSr8FtsIRSJN+ZsDWrnd+fi1bXkwbi7
 aXxwaNjNcaq9zMsK+Bnwa2gH+8p5fJCrpFPuLWpXG+XLnMR6Nscm4foKm
 /Sxuzhqi4qS1IAimL3ttUKW5yESb9xu/tgpRkAbXZ3V5TXUOtiBAT0XZX
 iYO13LFWilfRlZbcztVsfj3BxIUMcXiaRc2n5dyNRVeoULwulKZwkB5e7
 T7LVq2SACOTLY18LHnym+FUGd1ZUeso4gAVN83TyJAbC0rSh12SH6w6e6 Q==;
X-CSE-ConnectionGUID: yPzjuuMXR8GWn2qpTQu3eA==
X-CSE-MsgGUID: UxZ6m3HaR2uIf6wNf8HIPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="41424326"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="41424326"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 12:25:49 -0700
X-CSE-ConnectionGUID: XVYm5J/ETgmiB5TPi5dqRg==
X-CSE-MsgGUID: CkIXr0nBSGiVE5Zjg83M/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="159854326"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.30])
 by orviesa005.jf.intel.com with SMTP; 02 Jul 2025 12:25:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Jul 2025 22:25:44 +0300
Date: Wed, 2 Jul 2025 22:25:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
Cc: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "seanpaul@google.com" <seanpaul@google.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "markyacoub@google.com" <markyacoub@google.com>
Subject: Re: [PATCH] drm/i915/display: Fix RGB limited range handling for DP
Message-ID: <aGWHuOniPesg63U_@intel.com>
References: <20250701081756.2821286-1-uma.shankar@intel.com>
 <aGOdDnjfj7NJs1aV@intel.com>
 <DM4PR11MB6360159E89ED014F3EBEB8ACF441A@DM4PR11MB6360.namprd11.prod.outlook.com>
 <6e87afb3d644361e273e5c8c1b96367b7a5968da.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6e87afb3d644361e273e5c8c1b96367b7a5968da.camel@intel.com>
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

On Tue, Jul 01, 2025 at 05:38:21PM +0000, Almahallawy, Khaled wrote:
> Thank you for your patch. This fix enables us to pass the DP1.4 Link
> Layer Test "4.2.2.8 EDID Read on IRQ HPD Event after Branch Device
> Detection," which was failing due to the following error:
> 
> "0003.610.625: Main Stream Attributes do not match expected values:
> 0003.610.669:   Received 28h color format differs from expected 20h."

If the test needs full range then set full range in the test.

> 
> Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> 
> On Tue, 2025-07-01 at 14:15 +0000, Shankar, Uma wrote:
> > 
> > 
> > > -----Original Message-----
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Sent: Tuesday, July 1, 2025 2:02 PM
> > > To: Shankar, Uma <uma.shankar@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org;
> > > intel-xe@lists.freedesktop.org; Borah,
> > > Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Almahallawy,
> > > Khaled
> > > <khaled.almahallawy@intel.com>
> > > Subject: Re: [PATCH] drm/i915/display: Fix RGB limited range
> > > handling for DP
> > > 
> > > On Tue, Jul 01, 2025 at 01:47:56PM +0530, Uma Shankar wrote:
> > > > RGB limited range should be selected only if explicitly asked by
> > > > userspace by the broadcast RGB property with LIMITED_RANGE. This
> > > > is
> > > > mostly enabled in case of CEA modes.
> > > > 
> > > > Display port by default uses Full Range, fixed the same. This
> > > > will
> > > > help set correct MSA information for colorimetry. Fixes a CTS
> > > > issue
> > > > wrt colorimetry.
> > > 
> > > If the CTS is expecting that then it's not following the actual DP
> > > spec.
> > > Originally the spec required limited range output for cea modes,
> > > but later version
> > > relaxed it to "should" and also notes that full range may also be
> > > used. Presumably
> > > it was realized that existing implementations had no consitency
> > > here and so both
> > > behaviours must be allowed.
> > 
> > Hi Ville,
> > Yes, there has been a flip flop. Ideally both should be allowed as
> > spec is not enforcing.
> > 
> > However, we can default to FULL RANGE and do Limited range if
> > userspace explicitly asks for it
> > using the broadcast RGB property. DP mostly have the FULL RANGE while
> > limited range is more
> > in the HDMI TVs. This will make CTS also happy. What do you suggest ?
> > 
> > Regards,
> > Uma Shankar
> > 
> > > > 
> > > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++------------
> > > > --
> > > >  1 file changed, 7 insertions(+), 14 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index f48912f308df..8758b9d60d5e 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -2708,8 +2708,6 @@ bool intel_dp_limited_color_range(const
> > > > struct
> > > > intel_crtc_state *crtc_state,  {
> > > >  	const struct intel_digital_connector_state
> > > > *intel_conn_state =
> > > >  		to_intel_digital_connector_state(conn_state);
> > > > -	const struct drm_display_mode *adjusted_mode =
> > > > -		&crtc_state->hw.adjusted_mode;
> > > > 
> > > >  	/*
> > > >  	 * Our YCbCr output is always limited range.
> > > > @@ -2721,18 +2719,13 @@ bool intel_dp_limited_color_range(const
> > > > struct
> > > intel_crtc_state *crtc_state,
> > > >  	if (crtc_state->output_format !=
> > > > INTEL_OUTPUT_FORMAT_RGB)
> > > >  		return false;
> > > > 
> > > > -	if (intel_conn_state->broadcast_rgb ==
> > > INTEL_BROADCAST_RGB_AUTO) {
> > > > -		/*
> > > > -		 * See:
> > > > -		 * CEA-861-E - 5.1 Default Encoding Parameters
> > > > -		 * VESA DisplayPort Ver.1.2a - 5.1.1.1 Video
> > > > Colorimetry
> > > > -		 */
> > > > -		return crtc_state->pipe_bpp != 18 &&
> > > > -
> > > > 			drm_default_rgb_quant_range(adjusted_mode) ==
> > > > -			HDMI_QUANTIZATION_RANGE_LIMITED;
> > > > -	} else {
> > > > -		return intel_conn_state->broadcast_rgb ==
> > > > -			INTEL_BROADCAST_RGB_LIMITED;
> > > > +	switch (intel_conn_state->broadcast_rgb) {
> > > > +	case INTEL_BROADCAST_RGB_LIMITED:
> > > > +		return true;
> > > > +	case INTEL_BROADCAST_RGB_FULL:
> > > > +	case INTEL_BROADCAST_RGB_AUTO:
> > > > +	default:
> > > > +		return false;
> > > >  	}
> > > >  }
> > > > 
> > > > --
> > > > 2.42.0
> > > 
> > > --
> > > Ville Syrjälä
> > > Intel
> 

-- 
Ville Syrjälä
Intel
