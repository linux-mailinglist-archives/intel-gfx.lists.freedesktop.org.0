Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCCD37D263
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 20:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644F26EC9C;
	Wed, 12 May 2021 18:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C736EC9C
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 18:12:00 +0000 (UTC)
IronPort-SDR: /oaj8nailzVdF1LI4dyy57AvoO4lBgJ5jbZjdEMOjzV1oPhFNtjp5g9Da2nd9k7wXIhSWeeLuY
 w7CrBevM9y/A==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="186905776"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="186905776"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 11:11:59 -0700
IronPort-SDR: 6V1sc9ASXeNaADqwzA7MxdZOsd3mTPnuQXNneqxf0SD3VOICi1g3hfyA/eHL5i6bXvgDWs1IKU
 qlSFNsiXWwsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="435313422"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 12 May 2021 11:11:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 11:11:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 11:11:58 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Wed, 12 May 2021 11:11:58 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 09/48] drm/i915/display/dsc: Refactor
 intel_dp_dsc_compute_bpp
Thread-Index: AQHXQ7H0Fw1tt2w3h0KiCjD2o+iRyKrgLRfw
Date: Wed, 12 May 2021 18:11:58 +0000
Message-ID: <3c209734d14b4adaa871a9655cac5135@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-10-matthew.d.roper@intel.com>
In-Reply-To: <20210508022820.780227-10-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 09/48] drm/i915/display/dsc: Refactor
 intel_dp_dsc_compute_bpp
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
> Roper
> Sent: Friday, May 7, 2021 7:28 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v3 09/48] drm/i915/display/dsc: Refactor
> intel_dp_dsc_compute_bpp
> 
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
> 
> Move the platform specific max bpc calculation into
> intel_dp_dsc_compute_bpp function
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index cbbba8e33b24..f163a669f40f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1097,10 +1097,18 @@ intel_dp_compute_link_config_wide(struct
> intel_dp *intel_dp,
>  	return -EINVAL;
>  }
> 
> -static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8
> dsc_max_bpc)
> +static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8
> +max_req_bpc)
>  {
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] = {0};
> +	u8 dsc_max_bpc;
> +
> +	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> +	if (DISPLAY_VER(i915) >= 12)
> +		dsc_max_bpc = min_t(u8, 12, max_req_bpc);
> +	else
> +		dsc_max_bpc = min_t(u8, 10, max_req_bpc);
> 
>  	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp-
> >dsc_dpcd,
>  						       dsc_bpc);
> @@ -1188,7 +1196,6 @@ static int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
>  	struct drm_i915_private *dev_priv = to_i915(dig_port-
> >base.base.dev);
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
> -	u8 dsc_max_bpc;
>  	int pipe_bpp;
>  	int ret;
> 
> @@ -1198,14 +1205,7 @@ static int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
>  	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
>  		return -EINVAL;
> 
> -	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> -	if (DISPLAY_VER(dev_priv) >= 12)
> -		dsc_max_bpc = min_t(u8, 12, conn_state-
> >max_requested_bpc);
> -	else
> -		dsc_max_bpc = min_t(u8, 10,
> -				    conn_state->max_requested_bpc);
> -
> -	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, dsc_max_bpc);
> +	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp,
> +conn_state->max_requested_bpc);
> 
>  	/* Min Input BPC for ICL+ is 8 */
>  	if (pipe_bpp < 8 * 3) {
> --
> 2.25.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
