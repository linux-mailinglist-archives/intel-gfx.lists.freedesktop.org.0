Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 275893B6DF4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 07:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFA7789DA9;
	Tue, 29 Jun 2021 05:32:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E429F89DA9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 05:32:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="229711551"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="229711551"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 22:32:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="643591703"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jun 2021 22:32:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 28 Jun 2021 22:32:42 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 28 Jun 2021 22:32:40 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.008;
 Tue, 29 Jun 2021 11:02:38 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Patnana, Venkata Sai" <venkata.sai.patnana@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/display/dsc: Set BPP in the kernel
Thread-Index: AQHXaauRVppxE644JE+cpRj0tLt9x6sqe/AQ
Date: Tue, 29 Jun 2021 05:32:38 +0000
Message-ID: <a25630fa9ca54e669744c9868d1fa55d@intel.com>
References: <20210625100838.5534-1-venkata.sai.patnana@intel.com>
 <20210625100838.5534-3-venkata.sai.patnana@intel.com>
In-Reply-To: <20210625100838.5534-3-venkata.sai.patnana@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/dsc: Set BPP in the
 kernel
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
> From: Patnana, Venkata Sai <venkata.sai.patnana@intel.com>
> Sent: Friday, June 25, 2021 3:39 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Patnana, Venkata Sai <venkata.sai.patnana@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>; Navare, Manasi D
> <manasi.d.navare@intel.com>
> Subject: [PATCH 2/2] drm/i915/display/dsc: Set BPP in the kernel
> 
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> 
> Set compress BPP in kernel while connector DP or eDP
> 
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Navare Manasi D <manasi.d.navare@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Patnana Venkata Sai <venkata.sai.patnana@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index f74f70691247b..a454ee4210866 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1241,9 +1241,15 @@ static int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
>  	pipe_config->lane_count = limits->max_lane_count;
> 
>  	if (intel_dp_is_edp(intel_dp)) {
> -		pipe_config->dsc.compressed_bpp =
> -			min_t(u16,
> drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
> -			      pipe_config->pipe_bpp);
> +		if (intel_dp->force_dsc_bpp) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				"DSC BPC forced to %d", intel_dp-
> >force_dsc_bpp);
Should be DSC BPP.
> +			pipe_config->dsc.compressed_bpp = intel_dp-
> >force_dsc_bpp;
> +		} else {
> +			pipe_config->dsc.compressed_bpp =
> +				min_t(u16,
> drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
> +				pipe_config->pipe_bpp);
> +		}
>  		pipe_config->dsc.slice_count =
>  			drm_dp_dsc_sink_max_slice_count(intel_dp-
> >dsc_dpcd,
>  							true);
> @@ -1269,9 +1275,15 @@ static int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
>  				    "Compressed BPP/Slice Count not
> supported\n");
>  			return -EINVAL;
>  		}
> -		pipe_config->dsc.compressed_bpp = min_t(u16,
> +		if (intel_dp->force_dsc_bpp) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "DSC BPC forced to %d\n", intel_dp-
> >force_dsc_bpp);
Same as above.
> +			pipe_config->dsc.compressed_bpp = intel_dp-
> >force_dsc_bpp;
> +		} else {
> +			pipe_config->dsc.compressed_bpp = min_t(u16,
> 
> dsc_max_output_bpp >> 4,
>  							       pipe_config-
> >pipe_bpp);
> +		}
>  		pipe_config->dsc.slice_count = dsc_dp_slice_count;
>  	}
>  	/*
> @@ -1374,7 +1386,8 @@ intel_dp_compute_link_config(struct
> intel_encoder *encoder,
>  	 * Pipe joiner needs compression upto display12 due to BW
> limitation. DG2
>  	 * onwards pipe joiner can be enabled without compression.
>  	 */
> -	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp-
> >force_dsc_en);
> +	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n Force DSC BPP =
> %d\n",
> +		    intel_dp->force_dsc_en, intel_dp->force_dsc_bpp);
>  	if (ret || intel_dp->force_dsc_en || (DISPLAY_VER(i915) < 13 &&
>  					      pipe_config->bigjoiner)) {
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
> --
> 2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
