Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 882723D1ECB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 09:18:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86CC6EB40;
	Thu, 22 Jul 2021 07:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BF716EB40
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 07:17:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="198789158"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="198789158"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 00:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="462673174"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 22 Jul 2021 00:17:56 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 22 Jul 2021 00:17:55 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 22 Jul 2021 12:47:53 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.010;
 Thu, 22 Jul 2021 12:47:53 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "20210719072222.13369-6-shawn.c.lee@intel.com"
 <20210719072222.13369-6-shawn.c.lee@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915: Get proper min cdclk if vDSC enabled
Thread-Index: AQHXfG4Hj7cjCMYlnUuQ3/deXTVUi6tLsw8AgAAugbCAAq4iUA==
Date: Thu, 22 Jul 2021 07:17:53 +0000
Message-ID: <c67dbd284e074e15b58eb42688f39a64@intel.com>
References: <20210719072222.13369-1-shawn.c.lee@intel.com>
 <20210719072222.13369-6-shawn.c.lee@intel.com>
 <8ce6abcb8840407c87c3856dcb021e72@intel.com>
 <CO6PR11MB5651A3EF71940549177F4D2FA3E29@CO6PR11MB5651.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB5651A3EF71940549177F4D2FA3E29@CO6PR11MB5651.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Get proper min cdclk if vDSC
 enabled
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Lee, Shawn C <shawn.c.lee@intel.com>
> Sent: Tuesday, July 20, 2021 8:01 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>; Jani Nikula
> <jani.nikula@linux.intel.com>; Chiou, Cooper <cooper.chiou@intel.com>;
> Tseng, William <william.tseng@intel.com>
> Subject: RE: [PATCH 5/5] drm/i915: Get proper min cdclk if vDSC enabled
> 
> 
> On Tue, July 19, 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> >>
> >> VDSC engine can process only 1 pixel per Cd clock. In case VDSC is
> >> used and max slice count == 1, max supported pixel clock should be 100%
> of CD clock.
> >> Then do min_cdclk and pixel clock comparison to get proper min cdclk.
> >>
> >> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >> Cc: Cooper Chiou <cooper.chiou@intel.com>
> >> Cc: William Tseng <william.tseng@intel.com>
> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
> >>  1 file changed, 12 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> index 71067a62264d..c33d574eb991 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> @@ -2159,6 +2159,18 @@ int intel_crtc_compute_min_cdclk(const struct
> >> intel_crtc_state *crtc_state)
> >>  /* Account for additional needs from the planes */  min_cdclk =
> >> max(intel_planes_min_cdclk(crtc_state), min_cdclk);
> >>
> >> +/*
> >> + * VDSC engine can process only 1 pixel per Cd clock.
> >> + * In case VDSC is used and max slice count == 1,
> >> + * max supported pixel clock should be 100% of CD clock.
> >> + * Then do min_cdclk and pixel clock comparison to get cdclk.
> >> + */
> >> +if (DISPLAY_VER(dev_priv) >= 11 &&
> >
> >I think you could just check for dsc enable and slice count ==1.
> >
> 
> DP and eDP would apply the same thing if dsc enabled and sink's dsc slice
> count ==1.
> Is that right?
Yes.
> 
> >Also better to have a check if crtc_clock exceeds dev_priv->max_cdclk_freq
> in dsi_dsc compute_config as well.
> >and return -EINVAL .
> >
> >-Vandita
Since we do not have bigjoiner support on dsi yet and the check wrt max_cdclk_freq
is taken care in intel_crtc_compute_config. I think you can leave this for now.
You do not need this clock check again in dsi_compute_config

-Vandita
> >
> 
> We should have this checking in dsi_dsc_compute_config() just like DP driver
> did. What do you think?
> 
> 	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
> 	    pipe_config->bigjoiner) {
> 		if (pipe_config->dsc.slice_count < 2) {
> 			drm_dbg_kms(&dev_priv->drm,
> 				    "Cannot split stream to use 2 VDSC
> instances\n");
> 			return -EINVAL;
> 		}
> 
> 		pipe_config->dsc.dsc_split = true;
> 	}
> 
> Best regards,
> Shawn
> 
> >> +    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> >> +    crtc_state->dsc.compression_enable &&
> >> +    crtc_state->dsc.slice_count == 1)
> >
> >> +min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
> >> +
> >>  /*
> >>   * HACK. Currently for TGL platforms we calculate
> >>   * min_cdclk initially based on pixel_rate divided
> >> --
> >> 2.17.1
> >
> >

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
