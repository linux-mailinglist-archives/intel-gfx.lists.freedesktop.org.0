Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD723D3508
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 09:06:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1FFE6E920;
	Fri, 23 Jul 2021 07:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED8AF6E920
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 07:06:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="297396043"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="297396043"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 00:06:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="513009231"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga002.fm.intel.com with ESMTP; 23 Jul 2021 00:06:24 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 23 Jul 2021 08:06:22 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.010;
 Fri, 23 Jul 2021 12:36:21 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [V3 5/7] drm/i915: Get proper min cdclk if vDSC enabled
Thread-Index: AQHXf5Ark0SqENuKVEaCKGzHhn4EJatQIsvA
Date: Fri, 23 Jul 2021 07:06:21 +0000
Message-ID: <494aeb6366334b7da222ef96bc6b3beb@intel.com>
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
 <20210723070548.29315-6-shawn.c.lee@intel.com>
In-Reply-To: <20210723070548.29315-6-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V3 5/7] drm/i915: Get proper min cdclk if vDSC
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Chiou,
 Cooper" <cooper.chiou@intel.com>, "Tseng, William" <william.tseng@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Lee, Shawn C <shawn.c.lee@intel.com>
> Sent: Friday, July 23, 2021 12:36 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>; Chiou, Cooper
> <cooper.chiou@intel.com>; Tseng, William <william.tseng@intel.com>; Lee,
> Shawn C <shawn.c.lee@intel.com>; Jani Nikula <jani.nikula@linux.intel.com>
> Subject: [V3 5/7] drm/i915: Get proper min cdclk if vDSC enabled
> 
> VDSC engine can process only 1 pixel per Cd clock. In case VDSC is used and
> max slice count == 1, max supported pixel clock should be 100% of CD clock.
> Then do min_cdclk and pixel clock comparison to get proper min cdclk.
> 
> v2:
> - Check for dsc enable and slice count ==1 then allow to
>   double confirm min cdclk value.

LGTM, 
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

> 
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 71067a62264d..3e09f6370d27 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2159,6 +2159,16 @@ int intel_crtc_compute_min_cdclk(const struct
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
> +	if (crtc_state->dsc.compression_enable &&
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
