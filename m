Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AF33CF9D4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 14:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37B0489E43;
	Tue, 20 Jul 2021 12:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784AD89E43
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 12:46:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="208111056"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="208111056"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 05:46:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="462036405"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 20 Jul 2021 05:46:44 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 20 Jul 2021 05:46:44 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 20 Jul 2021 18:16:41 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.010;
 Tue, 20 Jul 2021 18:16:41 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915: Get proper min cdclk if vDSC enabled
Thread-Index: AQHXfG4Hj7cjCMYlnUuQ3/deXTVUi6tLsw8A
Date: Tue, 20 Jul 2021 12:46:41 +0000
Message-ID: <8ce6abcb8840407c87c3856dcb021e72@intel.com>
References: <20210719072222.13369-1-shawn.c.lee@intel.com>
 <20210719072222.13369-6-shawn.c.lee@intel.com>
In-Reply-To: <20210719072222.13369-6-shawn.c.lee@intel.com>
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
> Sent: Monday, July 19, 2021 12:52 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Ville Syrjala
> <ville.syrjala@linux.intel.com>; Jani Nikula <jani.nikula@linux.intel.com>;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>; Chiou, Cooper
> <cooper.chiou@intel.com>; Tseng, William <william.tseng@intel.com>
> Subject: [PATCH 5/5] drm/i915: Get proper min cdclk if vDSC enabled
> 
> VDSC engine can process only 1 pixel per Cd clock. In case VDSC is used and
> max slice count == 1, max supported pixel clock should be 100% of CD clock.
> Then do min_cdclk and pixel clock comparison to get proper min cdclk.
> 
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 71067a62264d..c33d574eb991 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2159,6 +2159,18 @@ int intel_crtc_compute_min_cdclk(const struct
> intel_crtc_state *crtc_state)
>  	/* Account for additional needs from the planes */
>  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
> 
> +	/*
> +	 * VDSC engine can process only 1 pixel per Cd clock.
> +	 * In case VDSC is used and max slice count == 1,
> +	 * max supported pixel clock should be 100% of CD clock.
> +	 * Then do min_cdclk and pixel clock comparison to get cdclk.
> +	 */
> +	if (DISPLAY_VER(dev_priv) >= 11 &&

I think you could just check for dsc enable and slice count ==1.

Also better to have a check if crtc_clock exceeds dev_priv->max_cdclk_freq in dsi_dsc compute_config as well.
and return -EINVAL .

-Vandita

> +	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> +	    crtc_state->dsc.compression_enable &&
> +	    crtc_state->dsc.slice_count == 1)

> +		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
> +
>  	/*
>  	 * HACK. Currently for TGL platforms we calculate
>  	 * min_cdclk initially based on pixel_rate divided
> --
> 2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
