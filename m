Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A96D814DDB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 18:06:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BEB910EA4D;
	Fri, 15 Dec 2023 17:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C0C610EA4D
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 17:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702659966; x=1734195966;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=tJK4U8g4euE1Hwxl3SmmoKd4eTuQzywnLQ37+QhT7eA=;
 b=L6eexkrK0Ea9k0jauNJUbljTrktKgT3OX5fU/OKarYWbZDCOqIu9evbB
 EiG3NeXfbSK+teCFguYomkSz3q6YptbRQa/6ZbRqxGC9YyDghHPYowUq3
 GFfVOwcJUGdECNee/wPO4015WpxGy9BpBBUr9ItErmHshYZrCVkWv4KCY
 sop2nazDi4VcW5d6tzNShAsZT8wQMoH/hpPfkmVuG7vacNDfld76SoKhT
 UOZr/8s4hjfI316kD5ewZ9QY7HxaTPi/2I3IdqZyuJYqVoehs6nsm/yAS
 ZcAiTS1dP4ekS5NDr7dpMRiZ+l1jeLZrydcofTuv2uHoJlgCht9O0gmzx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="395042634"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="395042634"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 09:06:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="724510838"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="724510838"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 09:06:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 09:06:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 09:06:04 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 09:06:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fqmqUrVGjlnh6EaomHqNRzKxlwsseTTSykCqKSz2bWZ7eFCV5TmmBL8AkuzISJfjXSaTXqfjZIs/mgCzkH1DfAfwXEaiZc9UAWrMa58SHwkgk/MxfElpA3lgwXE8jtGt1KyYZjZZyqKJot6gAhGRnmvH0pceHTiyuw4k8xurOKD1pwfD+ZElgK3uiWnsfkBXslghm/kvN4UDY+dwrmxfQw45pSpYzDU7HgB4f8GMYV1gBF1puLEkwjL85HrS7NcuAlPOAtXSQO0k4bIQUiufrCPMUDTXSiw3a2VJ/1jMq2k3e6W2wX+SeeC4BnN6xGhxY7pr6u2sjznLamBbpEdbDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xE4RaDbQCxzzUfj5uK7T7wojHgGQsqQ7NpIWBfvYUh0=;
 b=HNLk0J3MvM1T1YaIK2S+19qrDQqRTsNw4iFiUCsZKuAl4b5SkaKrLyUOQsGd5EFLudjiOfKl43xwbVJhMxO7xD/dpE0Qrxky35w+w3dRPkjM0T1j5eHFzTMEhVqIyFgek7Hoqv2yWmOSXM4KPhmT12v5mYL/JDbzOgrzSGCXkW4/qFypcPXZUSGW5kW/q2A4EEA//dupBifsaD/AiEWu3GNx6zM68Ew+TxpSYdChZSdB6CT7ChZ9qXFsslvLZewwm+2y3hfGGNttYWbP/93y87aJ4jgCUPG2dkfwcXbtwB6lZORqH6TQqA39pd0E2g5xcBKgVam5l+LiEy1tI3zAgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB7166.namprd11.prod.outlook.com (2603:10b6:510:1e9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Fri, 15 Dec
 2023 17:06:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7091.032; Fri, 15 Dec 2023
 17:06:00 +0000
Date: Fri, 15 Dec 2023 12:05:56 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 4/7] drm/i915/display: Fix vsc_sdp computation
Message-ID: <ZXyHdHjvdKFcCoZr@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
 <20231214114838.1113648-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231214114838.1113648-5-jouni.hogander@intel.com>
X-ClientProxiedBy: BYAPR06CA0058.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB7166:EE_
X-MS-Office365-Filtering-Correlation-Id: b4aaaaba-93aa-41d0-1c5f-08dbfd901c9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o/PNdv3n05P4GH4HWKzvkfgYCYCS6NmK6Kcbb1+7p9wz973ALnZezrKknBARBLcd/CroLeYLYTlYe8HPE0U6iZwx9WtCTRpvrpgUg/xdQ0sSNYGbzcEsTlVGWQW3S0TbOCbmaVEe1iRYkMFuj9e3kl9WM7UoLdWPL+z4N4DhZm/2F/jzyvA3dJaBC0B+VvwznWDOza8dtaeuTpqDV2PPNGe7ZQlykDAUOVu6Olw0p/NOUSCaMmtwi6Ng+4vJFbpoEFZ4g2MGHzJ8WlRI3FfyUYajnQTbpQFw2k2h7sO7NP0U6vtjQ2O05I8dwmBFJDYUk1ArpGFCx5BoLgIhyvNIVZuJm6VyJ5A6qYJ7spxAC4yk8EEuizqEaU1p+GSqZ6Q5+G5al0w63zNoBccESDC13KPD+HVYHlS3icd7PS/6dNpsgroYbPWiw/yJ0surtMszWeWLwfzausoFa8snY6DzXIpoiVD0yXjE8ZKf1yQx5FMd5fhXxVGTqd46EJOhqnC5tgkN8I0gA0LoxG/CsdgbCk5ztbd2MIYmez+csZRtdCFT7GxcTASNDNLZnCyENltQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(346002)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(82960400001)(2906002)(36756003)(5660300002)(83380400001)(6666004)(6506007)(66574015)(38100700002)(26005)(2616005)(6512007)(478600001)(66476007)(66556008)(66946007)(6486002)(41300700001)(86362001)(4326008)(6862004)(8676002)(8936002)(37006003)(6636002)(316002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?8bx7Eej9t+C86VKdus59lDLAacB0XFN2Vg7jgY18VPnQ4XsqneKTQ7rCPz?=
 =?iso-8859-1?Q?f8He8L7m6Hs/taaKcJblzHIe94Ej9205ZjeaMUph0R6e2y/sShw9Kr65zG?=
 =?iso-8859-1?Q?xdCMFyDxQAd5T6g13cU+RtMVwogyIrY8Yx8U1RdLhnVswBKtRQ5QAAt0bK?=
 =?iso-8859-1?Q?oejCNS9C2MoNw2CSoZJlAIEype8xyInaREMC176KlD79wplcaU1QCSFY+5?=
 =?iso-8859-1?Q?J8uEsOHxxYflv0jecIv+oey5pcMBuPRcDVdRIauzRVQpzBucvWEGPBUnW5?=
 =?iso-8859-1?Q?sZ7eT/VZtV9CU1EGLV0UKz6D84iW9oqOG8Bdy/XYqcU4xohK3h6iCz9syP?=
 =?iso-8859-1?Q?tWyHYN7q0tz2O8ojQIm3xCnJw2FCe1MyOLH+sizwUuT7OlydWquHJu037y?=
 =?iso-8859-1?Q?vFUTu6TroyrGh9LRgUL+MH9ArbrCMWWro58fIYYBRaImM2Ud7nyYBLLVYG?=
 =?iso-8859-1?Q?MmRWssp31oxjYVelELednk82LrfClv3O2+6ELO4/nDwAU+JP5Nqb2RQb79?=
 =?iso-8859-1?Q?+IRFnL69kZXM2YjUVvQCAd2mPt6gdm4D6U7D/mmXhW0yUr1nc6acu4Hhn0?=
 =?iso-8859-1?Q?gw55PSUpsbxr9WY8rFDpV0aEF7SsE0Q3c6/ECA4UGrx3UqAoJTO0bSNeYr?=
 =?iso-8859-1?Q?iRTvKaQDHQZcuUw7xG19kEVrz8SaKfhnFXrucvkiyN3smZkCGCnNLmVHPx?=
 =?iso-8859-1?Q?y33gcQj/PrH/byYwO9mij/1znmHLCeWvBwPHhBPcUDAFkp+tAY8SKcrTOn?=
 =?iso-8859-1?Q?/JgOVizby59w+vWXXvGjgwtDCZUZCJ5D/hDfw+keTsnoaCI3xkus12w7H/?=
 =?iso-8859-1?Q?P7jXClHHc2vfotIsFJQn/7R32m0jj8Ng3YeTYk1cXuEup0s6Ra8krx5gCN?=
 =?iso-8859-1?Q?88GmWv8um6TAv2kHA+ZvfAd+tQnTuJt8tRWkFPt0k25RdU5/fRWqD2QaMF?=
 =?iso-8859-1?Q?eUPpkVOj7OiNpONfEKmJo8+D9iDFssyXbU7LJxUHHr74pRYqYG6yixwayK?=
 =?iso-8859-1?Q?MbqFajhOEucN+QMr/wQ2oKzD0Xf4F1o/nB/bW2yygUkOZQUGIlPObhjPsv?=
 =?iso-8859-1?Q?Ow6eewDSbrPFTSVw/XwbzodsZ7fqZWs7S9X7TrhDuq+SgjGNImAhqm9V1l?=
 =?iso-8859-1?Q?1vgW2zrXUNPZfmdAt4t0EKG6MsLV3DUB3Yo/eIK0JL1faCw6T+FI1eEeui?=
 =?iso-8859-1?Q?s9AHMa3K+rKsAKDPoxv3O3DJMs5x1GHhjb2pqSu4yDtI2/2SnMnUbw2P/P?=
 =?iso-8859-1?Q?XY4pQHYyQWqJ9Ur8j65Lcz8gvNPUU+YVp26XJ0D6iewW800uogLwwTzhKt?=
 =?iso-8859-1?Q?6MIssayt602UsIRnPGY5mN1fzeQS0HKQGUI0Y+6/Y5hL08Sr0GcVYzkOEN?=
 =?iso-8859-1?Q?9Y2yi5RZ4CoFM1xllahh12zwGBUVC5bpea+mAwP7+u7QhYUQsakbyA/zNq?=
 =?iso-8859-1?Q?ow/AQNR5z72kBh89ujaWhsMUuI1AYGpZyvbX4AduM/kxmVUrqwQPDR7yu1?=
 =?iso-8859-1?Q?aK3v9BRVs1NBk4Cv3EooqT2kwdHE6XcVo1z0yysy35vEenn9Dh45uRC4ar?=
 =?iso-8859-1?Q?NoEWPQMv/0w2FhjrvC5V2zYwE+mr96IKvqw1PVZQ+Kltsa+ljYhBBiKffd?=
 =?iso-8859-1?Q?+qfQIl2WOeCF5SGSrJq8uByhCPAqxvjivs7XEh37sllaCWbn6Vm6m+wQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4aaaaba-93aa-41d0-1c5f-08dbfd901c9d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 17:06:00.4169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2cN/D6prfvcvVadgy2KfnjGebsVJ843VUX7R4avrBlppsjXeKyPITq0HE5Jhp+sVUpk0vVcnPmxHoOiOrtkW3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7166
X-OriginatorOrg: intel.com
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 14, 2023 at 01:48:35PM +0200, Jouni Högander wrote:
> Currently colorimetry data is not added for psr1 or non-psr case.
> Fix this by adding it as needed.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 48 ++++++++++---------------
>  1 file changed, 19 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3550cebb44f2..635790ec2fb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2628,36 +2628,26 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
>  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
>  	vsc->sdp_type = DP_SDP_VSC;
>  
> -	if (crtc_state->has_psr2) {
> -		if (intel_dp->colorimetry_support &&
> -		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
> -			/* [PSR2, +Colorimetry] */
> -			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
> -							 vsc);
> -		} else {
> -			/*
> -			 * [PSR2, -Colorimetry]

could we please spell this out like below...
I got confused for a while thinking that - was a typo or a hyphen, not a minus.
only after checking the table in spec and vsc->revision = 5 inside
intel_dp_compute_vsc_colorimetry then I understood that this is for
'PSR2 without colorimetry'.

with that changed or at least clarified:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> -			 * Prepare VSC Header for SU as per eDP 1.4 spec, Table 6-11
> -			 * 3D stereo + PSR/PSR2 + Y-coordinate.
> -			 */
> -			vsc->revision = 0x4;
> -			vsc->length = 0xe;
> -		}
> +	/* Needs colorimetry */
> +	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
> +		intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
> +						 vsc);
> +	} else if (crtc_state->has_psr2) {
> +		/*
> +		 * [PSR2, -Colorimetry]
> +		 * Prepare VSC Header for SU as per eDP 1.4 spec, Table 6-11
> +		 * 3D stereo + PSR/PSR2 + Y-coordinate.
> +		 */
> +		vsc->revision = 0x4;
> +		vsc->length = 0xe;
>  	} else if (crtc_state->has_panel_replay) {
> -		if (intel_dp->colorimetry_support &&
> -		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
> -			/* [Panel Replay with colorimetry info] */
> -			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
> -							 vsc);
> -		} else {
> -			/*
> -			 * [Panel Replay without colorimetry info]
> -			 * Prepare VSC Header for SU as per DP 2.0 spec, Table 2-223
> -			 * VSC SDP supporting 3D stereo + Panel Replay.
> -			 */
> -			vsc->revision = 0x6;
> -			vsc->length = 0x10;
> -		}
> +		/*
> +		 * [Panel Replay without colorimetry info]
> +		 * Prepare VSC Header for SU as per DP 2.0 spec, Table 2-223
> +		 * VSC SDP supporting 3D stereo + Panel Replay.
> +		 */
> +		vsc->revision = 0x6;
> +		vsc->length = 0x10;
>  	} else {
>  		/*
>  		 * [PSR1]
> -- 
> 2.34.1
> 
