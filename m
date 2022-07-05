Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2690056692D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13B3110E021;
	Tue,  5 Jul 2022 11:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A00B10EDA9
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 06:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657004040; x=1688540040;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BLtNIPQegXwi7p9Fpp7+Ch5Oj6nV/D03wf/6NGgtcSc=;
 b=kz/rINMlAwZaa+yVN6gYmqgqOUDSBTKh+/QL8/G0w4cfJsPFsOeNPhHC
 T2SyEbbRTXCyloZIkHQ89KGrrTvL550VotqZMKfETeMKZYHJH8c3/2wPU
 9YvHWEuemy/dBUrY87HVyAk/lh3Url39U5XaAmSPKnDjR6AdEl7xJwwzX
 6sdJWC2aMUADYhhRmdXIgg6w9UKYGK4D0/4a/t0n0CmhOBJdIof/Pcg3e
 L2vPgxhK+XwFGDinxSJAyzNZF+Ou03i40qqseYRYGZas1EAjjWzI9meUk
 q+aGgE5wPknXUfbYpq2X2hB7p0pXs1kRrhAjdFaNYJaqmZ8cxCOlNagum Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="263692561"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="263692561"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 23:52:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="769543912"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 04 Jul 2022 23:52:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 23:52:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 23:52:52 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Mon, 4 Jul 2022 23:52:52 -0700
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/dg2: Bump up CDCLK for DG2
Thread-Index: AQHYf+qO67Zqs7GYJ0W9kZB+D2jCSq1vdujg
Date: Tue, 5 Jul 2022 06:52:52 +0000
Message-ID: <dcb344303a224c71ad2ddb9a45f88cdd@intel.com>
References: <20220614123049.16183-1-stanislav.lisovskiy@intel.com>
 <20220614123049.16183-2-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220614123049.16183-2-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-originating-ip: [10.108.32.68]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dg2: Bump up CDCLK for DG2
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of St=
anislav
> Lisovskiy
> Sent: Tuesday, June 14, 2022 6:01 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dg2: Bump up CDCLK for DG2
>=20
> We seem to need this W/A same way as for TGL, in order to fix some of the
> underruns, which we currently have and those not related to PSR.

We need to dig deeper on the real root causes and try to identify scenarios=
 restricted by
hardware bandwidth limits and operate at optimum CD clock.

This should be kept under investigation with some open JIRA ticket while we=
 can get the
tree stabilized with this stop gap solution.

With above agreed, this is:
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 6e80162632dd..86a22c3766e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2300,7 +2300,7 @@ int intel_crtc_compute_min_cdclk(const struct
> intel_crtc_state *crtc_state)
>  		min_cdclk =3D max(min_cdclk, (int)crtc_state->pixel_rate);
>=20
>  	/*
> -	 * HACK. Currently for TGL platforms we calculate
> +	 * HACK. Currently for TGL/DG2 platforms we calculate
>  	 * min_cdclk initially based on pixel_rate divided
>  	 * by 2, accounting for also plane requirements,
>  	 * however in some cases the lowest possible CDCLK @@ -2308,7 +2308,7
> @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_s=
tate)
>  	 * Explicitly stating here that this seems to be currently
>  	 * rather a Hack, than final solution.
>  	 */
> -	if (IS_TIGERLAKE(dev_priv)) {
> +	if (IS_TIGERLAKE(dev_priv) || IS_DG2(dev_priv)) {
>  		/*
>  		 * Clamp to max_cdclk_freq in case pixel rate is higher,
>  		 * in order not to break an 8K, but still leave W/A at place.
> --
> 2.24.1.485.gad05a3d8e5

