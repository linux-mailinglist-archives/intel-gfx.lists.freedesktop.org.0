Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 495F93F4A79
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 14:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C0989C16;
	Mon, 23 Aug 2021 12:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CBCD89C16
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 12:19:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="216810773"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="216810773"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:19:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="492676849"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2021 05:19:08 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 23 Aug 2021 13:19:06 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.010;
 Mon, 23 Aug 2021 17:49:05 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [v4 5/7] drm/i915: Get proper min cdclk if vDSC enabled
Thread-Index: AQHXj5B6gzKao3aUw0qKsi+a6XEXiauBEgmA
Date: Mon, 23 Aug 2021 12:19:05 +0000
Message-ID: <d65fdeb666604497a2801668a05a83ff@intel.com>
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
 <20210812154237.13911-6-shawn.c.lee@intel.com>
In-Reply-To: <20210812154237.13911-6-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v4 5/7] drm/i915: Get proper min cdclk if vDSC
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Have already reviewed v1, v2 and Rb'ed V3 (rev3).

> -----Original Message-----
> From: Lee, Shawn C <shawn.c.lee@intel.com>
> Sent: Thursday, August 12, 2021 9:13 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>; Chiou, Cooper
> <cooper.chiou@intel.com>; Tseng, William <william.tseng@intel.com>; Lee,
> Shawn C <shawn.c.lee@intel.com>; Jani Nikula <jani.nikula@linux.intel.com=
>
> Subject: [v4 5/7] drm/i915: Get proper min cdclk if vDSC enabled
>=20
> VDSC engine can process only 1 pixel per Cd clock. In case VDSC is used a=
nd
> max slice count =3D=3D 1, max supported pixel clock should be 100% of CD =
clock.
> Then do min_cdclk and pixel clock comparison to get proper min cdclk.
>=20
> v2:
> - Check for dsc enable and slice count =3D=3D1 then allow to
>   double confirm min cdclk value.
>=20
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>

Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 34fa4130d5c4..9aec17b33819 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2139,6 +2139,16 @@ int intel_crtc_compute_min_cdclk(const struct
> intel_crtc_state *crtc_state)
>  	/* Account for additional needs from the planes */
>  	min_cdclk =3D max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>=20
> +	/*
> +	 * VDSC engine can process only 1 pixel per Cd clock.
> +	 * In case VDSC is used and max slice count =3D=3D 1,
> +	 * max supported pixel clock should be 100% of CD clock.
> +	 * Then do min_cdclk and pixel clock comparison to get cdclk.
> +	 */
> +	if (crtc_state->dsc.compression_enable &&
> +	    crtc_state->dsc.slice_count =3D=3D 1)
> +		min_cdclk =3D max(min_cdclk, (int)crtc_state->pixel_rate);
> +
>  	/*
>  	 * HACK. Currently for TGL platforms we calculate
>  	 * min_cdclk initially based on pixel_rate divided
> --
> 2.17.1

