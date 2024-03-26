Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5126688C2AD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 13:55:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C07F310EF2D;
	Tue, 26 Mar 2024 12:55:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZ6X2mUR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5094810EF2D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 12:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711457738; x=1742993738;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1+6m0U82ANPO0tiIoJjvWGdTBnAzxFQPJpsvp8In6ME=;
 b=MZ6X2mURH4N5yIn7tsnRcOJ35qyyR1X1z7Z9mjQ9F02Zu4Fqox+bMfOB
 6WlquS38gw/iFxhG4BMyLoUcYXFve0XmAs4vE73Qwt3AVVAiMp0RYPKFI
 YssLKb15cFMTj5AQuKHij/5KiHQMqDfDPgi8ibVpJM/WtUnLnwcmq4D0g
 pj6MGB8DuG3a9XwvAsX7D+fr2cPIEZC9YMPhbJieO1hIKlqlrN2K8oTKp
 SxH7ML2eK0Z4KJbriEijs6jKiDkWmXfBII4Gs3qxKvru7xvFWg9i14rZu
 xXT/FPT+tR3R88PWzzd9Fbsq9bIS8nyPqkOzcMlc23uE0oueHeid0npSy A==;
X-CSE-ConnectionGUID: JmqfRpinRHSiL1a6zXQXyQ==
X-CSE-MsgGUID: ugPtZk/bS+SVYoFIV3IrJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="28986050"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="28986050"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:55:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="15867108"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 05:55:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 05:55:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 05:55:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 05:55:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h51eAwo5HAb8X6ZK9/1Zsja13tChN/X69mqp47BmycGnGJykwzAjSX4vEseCPPsOahEuhqSmaSUszzC5rAnMccbwnDvd0Z7Rda/OY5iqj2pFMZoeTViuYutzMtrKhxg+Q/1udwXtX5ZQy7S3EeN3ENChoe5WuY6f4ZSsbyToIRRQDHVFetELNT+W6RoZPr3FzYKRXwKVZzEch5sFFowvoy0GVolBol443XlUaprQ0923WrboprWM0VLtvcs7chCgmNbKm5unHDFNkMYPgmuGiI5DzGEwrPxJcRGoQMxTbnKS290YVBdzGAIzN92aw5zd27J7Tt+SGxcYcSpcF1zOMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=arIUBtM+f6JJugTuOQX+vLKlDwQ0sNOKBfc2Cq1tSHc=;
 b=EOeHVk8d5XS7rg74/kOcdaumyDxeZiAvjbVNI8yUFB3Bn0smC8U5juu451I1eM0O+rl2pQ7NYoMJ9lrPZoQ2jmhqKK0EMafNNgw854Jt+a/Ccz4jht+5g3SYGWZZUG/mp3niHTfmViSUaex0AE3wutNRgl19M9zAJ2KysAXF75hPh9+UXaMcIPlstzttD/YpIVeJ8F8rSzSR7QzCsVUeWYhLAQ7h3YHEeFz+DzXsVDwgPFznTp9sj2sb0srn527jRheDbb9sjABue8ad9KYGsIL8cjBUOK93IfZ3aamclfSWARO7kEps/TDh7+SnvNGJeu775RiuwH7Yhf0A3dxBWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6325.namprd11.prod.outlook.com (2603:10b6:8:cf::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Tue, 26 Mar
 2024 12:55:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 12:55:01 +0000
Message-ID: <11f68c1e-2855-4305-8bab-af6250b7caaf@intel.com>
Date: Tue, 26 Mar 2024 18:24:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/11] drm/i915/dp_mst: Sanitize calculating the DSC DPT
 bpp limit
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-7-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240320201152.3487892-7-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0067.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6325:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I83BSCw3KxMmoe192FEs0z6PBTPUfb9CAJITnAL0BvneeUVkzcA/0rw1bKBjuvN7TB5at1wsO5OwNU5AGCPUUSL7vYNp+7MwW85qy8rn6nQbkOenjC1gYZwRUjxqiKDiL76k9VoQPhK4BJIzZoBkFqL5zKn+rBTT229XjCNNbsxzklJgZrSteQ/yHZ0EJIzF+YlV1d+ekrvTTDHkYqfm+go1VkRjMRkWl0T5kAw1PABFFXpIxhRIkkZjv0lTkLtaxeWt2y5Q+cMhhSmi4iZgYj56UQmkw0XqAtBj2vunGj1jV82rDQywUsilScORlaFiXBtur/9eaNeOOuMRMv5PG/KxLvYUkF90/nhC8c6+Jjp2DjP6x8UIWIyBVSuCcuiyrK1aF1Da7mOmaKvt2/gg/MGg9ZL+JmWVvpG/PD1zeb76GGUzU34AEgiisn8ydO6FFZ/8+yKkCDTvIG+1cAg2G/ovaaXXFqhd+xwxVStizmxLZkebQG0mVkYVwkzZylB726yaOelY+Lyx2KC8Fg93mLGwzwQR93XwMraTW6WcQdaaLScatYBdbc8pFcvwB/ipmD9MkTaQ8cRGmJ+/lY4nkp3ix7rUWy1xx8KsPB0AkO68gpxnKEB58tKOaIngenpHJM15TjtD4AMYFANitC2sOA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R05RbnFxZTN4a3JCcWU1SjNUS1NmUDJpZFFTazBVbHBXWlVEekVLcDZxbDFY?=
 =?utf-8?B?aU5GaDZWV3NUWXdtVThkL2NyUG85VURMUjVFVnU5Zi9iMFFER0JYUWl1NEsv?=
 =?utf-8?B?VmVqZ2tjbjZxeEcyUE9kQ0xVUXBnMVhyZW96N2orUFdJWjJuZ2h6ckVaRWE3?=
 =?utf-8?B?azJPNWRObDNpbDcva0VZaUQ5TXpvTHluVDV2SWZFWk1GbU1DTGVQdTBqTlBq?=
 =?utf-8?B?b29JbHFsYW5JOURnWkdyS2dGc05uL2gvRlB4SzdPWHJYeHFpOUVDYUpPY2xF?=
 =?utf-8?B?eS8vRk0zSVNHM3lMM3plenpjR2tXQkNnK0FUcWdrYmxTMTNNVm9ZOVhJY2h1?=
 =?utf-8?B?ekw4dHAwU29DTERqVURaMzJtNnpGVUJvQUU1V2JlV1JUa0hsT2U3VUV2VkRC?=
 =?utf-8?B?ZER6YmxVY0JmeXRzRnl5N0JtZTBwNGVsREVJWmhacVlhZEZpSW9RS24zZVc2?=
 =?utf-8?B?eTNGM2hlV3JwaW4vY0ZiQ1NscUJIVDM0SGVvYStvc0gwM212UlgvaFZQN1FH?=
 =?utf-8?B?Qk8yZEd3WDIzK1RuMGhycW4vYzRma0orQXVvSFpJb2lpSm9XQUdGQk0rVUZt?=
 =?utf-8?B?U3l0WCtjdVlRUXB4OVZxZG5NNjhnZUFNUkRLd2d5R2ZaV0hTYWYwUWRQK1FK?=
 =?utf-8?B?dlZLOGRaTE1oL2h5MW9Oa2g0ME9GYm9PU1NDRFZMUUlhckJ3ZTlSZDlWUXV3?=
 =?utf-8?B?MUZ6YkI3ai9obm1YZzBxQU8rK3VGQ1pLN0pabE5iYStDbE9LZHRPTHdaQWxo?=
 =?utf-8?B?OS9DRUR6RkN4NzQ1aVJPTGFQZTlFeWpGckpnZGgrc1QyQnJGckxPZnVuVmdD?=
 =?utf-8?B?R0kyOWFOaGlCeE15VExsQkFPTGhrZGJJZWVrYWRTbkd4SlFVT0RDTWdVTkxm?=
 =?utf-8?B?d0NoNnVUazh5cm14eFpCSXZDQU1JV3hzNkY4VEJ3QzFuVDMrOXhqa0FJNVlm?=
 =?utf-8?B?OUJVYXh2K3I4YjkrZ1RFZE93Y2FEU2JZYW53OHRIbG5ydDhGVkxwVUdoamFp?=
 =?utf-8?B?SDQzdElIWkZCazZvaDJXakxaMlV3NVlUM3NLRDR4STRSYzlEVHloMmpvUTFD?=
 =?utf-8?B?K2hESmczS0JnbElqWk5QdzkzeU96S25YQ1dVY0NoS2E4a2FMQ1pUQ1EweVEz?=
 =?utf-8?B?bUFKQk9SUzl0QWVTN2hVNVRrZTJwRW9xQm4raU54VTkva2hmcmJ3aXBORG1h?=
 =?utf-8?B?UEFoUDh6U1d1TG95YnlEM2lLSmtlL0NzaWdpVSt3S3pEMTE4SUlSU1J0bHpF?=
 =?utf-8?B?UHpxWGJvK1dWNzdJdzRNZE9YRFo5dUU1MGMwUSs5Qk85MitkeDdjU2xGN0Y4?=
 =?utf-8?B?S1FJbmxSdkpDWkJRK3lEaUZCd0NMR3JkazRRekpLb0JkbVFySkZtbzltRzNV?=
 =?utf-8?B?Z0FncHE5Ni9WbS9rRlI5WDFFeE80QUJicTdXcUVxT2hnOVFseUduVzlCc1lU?=
 =?utf-8?B?dnBMUThxVGV0cFB5Ly9ta0prcDhpNzYyMFZnY2RCSFIvZ3ROay93dlZPdnFD?=
 =?utf-8?B?eVloVTZ1KzQzaXU3Wk5ZdVFsMWE3dDFLZjN2MThjWjFxNWlPRENpa3hsV2p0?=
 =?utf-8?B?VVJoTStqUHRTbVVocVVMdVJxVzFmUjl4U0d5SWQ1R0ZnVEtFVnpnWUd4Q2o2?=
 =?utf-8?B?ODlQVEVJSVJTbGdJcHZDTjJVbkhWaVpPMUdxaDU5VGxUUkZwdnlWTDlVNmNS?=
 =?utf-8?B?ZmpNTVBSWHNWelJnTTBmQ0llRnlaN2huTkNNd29JdjI2cHVrSW04Y2lrc0tG?=
 =?utf-8?B?VVQ3eVliak1wVUsyVHRMZm9uQm8vRW5GUEdLNDZmcFhQNFBOdXZBWVNuMWhL?=
 =?utf-8?B?Wkk0K3ZoTVc2TDRNNHJBM3Z3NUQra2hRT3lBZ0FzY2RFb0Rydm5DSGRueHAv?=
 =?utf-8?B?U1l6ZFplcTV6c0xBcDNUSXd4cDA3bWNmdkdCOFcvNTVJMEFMRExXTTlJT2xT?=
 =?utf-8?B?NThVdmVrSDJiNUgvQ1N3cVhRZ08xd3pRQ0ptck5YQlZ3OUdDRHorNHJuemI0?=
 =?utf-8?B?c3hORHZFdXJzVU1NQnk2KzBVQkpacU5rR2FZUnFrYWdmT1hiRWtJY1BqcGFx?=
 =?utf-8?B?Qm5zcEtVdUtEZ0ljTlBWZTBBamRadlUzWGpVRlh6c3BlbEJpcDFMUWh5eC9Y?=
 =?utf-8?B?U0JhaVVVNnNyWW9EbWdmS3lXMHRqS2R3bHBidWxWSEtFSW5LV0pKdzltVFRX?=
 =?utf-8?B?ekE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb73f00f-b647-44a3-9aeb-08dc4d93f318
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 12:55:01.7150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YpNX0+ewmGgDmH/vsIj4iWNMRQ8aalMSnE6sIQCEjhlY8LQgVn8UN36gniFgJ0amumyolmPp3SJoaFpcuMsm7j/QX4tg8FsiMx3L+MLfK/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6325
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/21/2024 1:41 AM, Imre Deak wrote:
> Instead of checking each compressed bpp value against the maximum
> DSC/DPT bpp, simplify things by calculating the maximum bpp upfront and
> limiting the range of bpps looped over using this maximum.
>
> While at it add a comment about the origin of the DSC/DPT bpp limit.
>
> Bspec: 49259, 68912
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 45 +++++++++++----------
>   1 file changed, 23 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 40660dc5edb45..516b00f791420 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -51,27 +51,24 @@
>   #include "intel_vdsc.h"
>   #include "skl_scaler.h"
>   
> -static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
> -					  const struct drm_display_mode *adjusted_mode,
> -					  struct intel_crtc_state *crtc_state,
> -					  bool dsc)
> +static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
> +				    bool dsc)
>   {
> -	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && dsc) {
> -		int output_bpp = bpp;
> -		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
> -		int available_bw = mul_u32_u32(symbol_clock * 72,
> -					       drm_dp_bw_channel_coding_efficiency(true)) /
> -				   1000000;
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
>   
> -		if (output_bpp * adjusted_mode->crtc_clock >
> -		    available_bw) {
> -			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
> -				    output_bpp * adjusted_mode->crtc_clock, available_bw);
> -			return -EINVAL;
> -		}
> -	}
> +	if (!intel_dp_is_uhbr(crtc_state) || DISPLAY_VER(i915) >= 20 || !dsc)
> +		return INT_MAX;
>   
> -	return 0;
> +	/*
> +	 * DSC->DPT interface width:
> +	 *   ICL-MTL: 72 bits (each branch has 72 bits, only left branch is used)
> +	 *   LNL+:    144 bits (not a bottleneck in any config)
> +	 */
> +	return div64_u64(mul_u32_u32(intel_dp_link_symbol_clock(crtc_state->port_clock) * 72,
> +				     drm_dp_bw_channel_coding_efficiency(true)),
> +			 mul_u32_u32(adjusted_mode->crtc_clock, 1000000));
>   }
>   
>   static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
> @@ -160,6 +157,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   	int bpp, slots = -EINVAL;
> +	int max_dpt_bpp;
>   	int ret = 0;
>   
>   	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
> @@ -180,6 +178,13 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>   						      crtc_state->port_clock,
>   						      crtc_state->lane_count);
>   
> +	max_dpt_bpp = intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
> +	if (max_bpp > max_dpt_bpp) {
> +		drm_dbg_kms(&i915->drm, "Limiting bpp to max DPT bpp (%d -> %d)\n",
> +			    max_bpp, max_dpt_bpp);
> +		max_bpp = max_dpt_bpp;
> +	}
> +
>   	drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d max bpp %d\n",
>   		    min_bpp, max_bpp);
>   
> @@ -191,10 +196,6 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>   
>   		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
>   
> -		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state, dsc);
> -		if (ret)
> -			continue;
> -
>   		link_bpp_x16 = to_bpp_x16(dsc ? bpp :
>   					  intel_dp_output_bpp(crtc_state->output_format, bpp));
>   
