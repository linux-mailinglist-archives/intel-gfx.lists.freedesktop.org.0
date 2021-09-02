Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B41E3FEFEE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 17:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 043B96E5AB;
	Thu,  2 Sep 2021 15:15:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6AF6E5AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 15:15:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="280160148"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="280160148"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 08:15:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="476779769"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 02 Sep 2021 08:15:25 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 08:15:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 08:15:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 08:15:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E5iYBToNqvHkZ4RKjbO70Oxa+pzY4DuiWBKqPo33VT11xLt3hae3iUIfO7LPeQEETmbiC5xmhO1kIooNbN4DEeh+p0MgqRnia1hfALWOtfCpalZszr42fspicJ+1wh55pFF+M6myr0E6aYxU7lHDt2V0ZQ1Tvn0S9qxG+kRXza4OK73hs4QquvDxAfXLBk8GcnT+Ss39ahHr7QllnktSkCizyucyg77TRbJsBKscvI81WTY1SDtvT8cBLD9Rc9jBJm9uhP223R5aG/uSEAlAUWrVYTKC2mEkbikxFUl/wD8KeCHDo4Uq5rehhsE69jgBA97Er2txBhR0IJk7y4zcVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Vth/zHfjOkBVndxbXW5jgePgcZkR0n5xL4fzKSlKyeE=;
 b=lr/1LuFyStdwa0/4VV902acEz/iiqt+moSses5TRy9+xkxe4NYuRXO8L0I5KXcnOBAQafFJxuoqONMI+O6fOe7RnH+B+jFUz27cDm/Vv09ZEO37Yu5+LzuQ71Eh/uuG0B78Z/Sx77F9LBSp/7oNoRl3jjyknEEO+AA9Mv+CFtbxBFDSsOfGSIHrpWiDHuqqiQuw2427Loy/ZAiDCccuA81uThnNhxCwTv5zGLpkgKPWbpiZyr+vc3129p+Sy7nq0oBbvQldVbtjl0OE9s9yx+OQrELys9po1EE1G2xdaF4bokPUmEvT2/+AFHN3uoVH/4Zam2FCBxIl4j4zLU+G8Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vth/zHfjOkBVndxbXW5jgePgcZkR0n5xL4fzKSlKyeE=;
 b=JXUdghzbKM1Y20r9pZDPlIftkxjkTrZ/HJdN+D6PIjZ/Rc1gkYjANoB37QlzIP6oSirL92tZBO++N4YKyNivztqI+YtOU1NJvYmZzEdcTuOLBwml8tqvnIUg7RmIEhh3j1drzhHKa7HEE4Eb/tENawPJbU3frzxpqFoYgTk/WZg=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4357.namprd11.prod.outlook.com (2603:10b6:610:3d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Thu, 2 Sep
 2021 15:15:23 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c%7]) with mapi id 15.20.4478.022; Thu, 2 Sep 2021
 15:15:23 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210825005840.170796-1-jose.souza@intel.com>
 <20210825005840.170796-5-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <1ac870d7-3bbe-26ed-5a40-90d9a469f785@intel.com>
Date: Thu, 2 Sep 2021 18:15:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210825005840.170796-5-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR0201CA0027.eurprd02.prod.outlook.com
 (2603:10a6:4:3f::37) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.139.80) by
 DB6PR0201CA0027.eurprd02.prod.outlook.com (2603:10a6:4:3f::37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.19 via Frontend Transport; Thu, 2 Sep 2021 15:15:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 82e0747f-8e77-44b5-9fee-08d96e247bba
X-MS-TrafficTypeDiagnostic: CH2PR11MB4357:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB4357B5053067ECE7136338BAB8CE9@CH2PR11MB4357.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oKRDgjHC0d1D4bBdP+KRKMZoyMrKTJtmM6SEyNRGi8G1fYuL7iNkR1dOOU+CuV4tzRXyfPKRWfzoo1phMYR3KfVnQ2wBXdjtlO4285rAODqTgvNAWkFSxaBJ8prpPswNjC+LeS6rP9Fl8CqI05VpE7IloTc5bSvT9b0C85RuZwgQbHU/UldEMCFR3Au17y58NFZd5CcXWxvUXoXXFnu3Co2NIVcenPRqeV2z0p85mH3DHBaaOXlT/LQK3Z2aXSfBC6LQX71EAGGfF9Slnd07nC4gIcv5w3QJlA3VJe2lEOtwqAeiqjrftbsmWRbipbcspprcDmw/PRDgb5XTMPzJdrBZ0iTfE9gCdanQVh19TnyybvB/A1/SQpQw5jsYliP+yi9naKhNm8gQjMnj4kP81NEjYHx+vF2AtaJYEdjzef2hK9hrHHuGaCz+pQf+Jtz3+XLImMRZXYQYPCSMS56NjZ1PBgc3+A7giQKLrEXlClIRMoC6YbACKUMy1JKcpwp3eVzj7vjZM8O7dFZh4gnPYwnzpPXi3g6gz4870q53Imzl9u9bi7ytLFX1bfKDHajVLaQSTF8nnJ9tVwVNG+zgP+4wdUHKoWAQjAQM6zJq3WWNrnVPsPqZDlqQwMVR3OjFrk+ldlPQ9PK1ZA44kzQV9mJVizGPbnEI22ZifzNAZPc0kI/MBosgEynm99osowGwS519OizW7BCqH/NBPKQPucf+XtpYQu1LsASizKGU0sk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(2616005)(53546011)(8676002)(956004)(38100700002)(2906002)(6486002)(86362001)(31686004)(478600001)(8936002)(316002)(66476007)(31696002)(66946007)(66556008)(16576012)(83380400001)(26005)(36756003)(6666004)(186003)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2dsZkkyenp4RXpzMDdJcWp6bE1uZU5XclNiZDljQkVOWnZrRUltNktPMU9k?=
 =?utf-8?B?bXZzT21wV2o1aCtMbUNCRWlFL0ZIRE5aU2REZXFtblZHZ3lpQ3RuVzVjelRL?=
 =?utf-8?B?c1NkVHRzWFEvLzBDQXhoZlhBdXYwZlVhQ3pyMHFZUWQzZVJQMDRucW0xWWpk?=
 =?utf-8?B?N2FqOXZvcmVsQ0pJZTJINmVUY29TY0FGcFVvWlBTV3VmTzlycXR6R0xmN3Zi?=
 =?utf-8?B?Q09MN251OHN5aGI2T2RNdHZTU1JUVjN6U2h6aFRJWFJvT0tyNWpsUVU0Tmdo?=
 =?utf-8?B?dTBqT3hmUVIxaEVEdnRwcWlaL0t6ZGdIUzVLQWdYa3FNQUE0N2hvR2tnWDFp?=
 =?utf-8?B?cWdDa3M3MDl0bVZzdFdsUkd6WGNVNld6OHd4dVdHQUtrWGJ0QWZiUTFnZllL?=
 =?utf-8?B?RjFFSExUY3ZHaC9ucnlqMWVWc200Y1o1K1c2QlNNeThEc1ZmdVd3ZHNqZk81?=
 =?utf-8?B?Z1lxeWZRbHhiUmNkUmhCL3FIZGJHY0xXUDljVWQ1d2lpUGUvSURsb1dHaE1Y?=
 =?utf-8?B?MnJ0d3VuUXlHdmw2MUUzdStKYkY0V2NEWitMMnp0a1pRSmZNSHZEVWZGb0ha?=
 =?utf-8?B?eUNOb3lLc1pSdjIxWFJjNjY4RGJOR2IvemZBaTRFcUNtMExXRWJoR1prSnJ3?=
 =?utf-8?B?ME5vK1FadVhvakZIK0wrYnFRaG9zTWhQYjViVWVSRFk1L3JSYUlyWGNHd1Zu?=
 =?utf-8?B?SjhUS2RVMk9WeXFZK3dqZ2NxeFlGZ2k5RVZ2c0dkUUFvR2lnNjd2eU5ZSU84?=
 =?utf-8?B?Yk01Z1NyemhGWUpleU84WXNLeDNoMHlRd001RnZaR3RrUXZVY1oxd1BKMzJt?=
 =?utf-8?B?OUY4cTcvTEFxRDNhUWt6UzJHdE5tdEdCR3NEa3I1aFRWeU1FZmdEV0xTTndq?=
 =?utf-8?B?Q2J0Tm5kTzNWZjErNnJ0c0ora0Jmbk5odzBpbVIvYWR6WUpxMllRU3VNeUZT?=
 =?utf-8?B?T3dPZ0NuK3U4Qm1pYlFKRVFTRUV2TGJ1Q015LzF1aVA0cFZiN0cwcEV5MTU4?=
 =?utf-8?B?OFdFZXc2Y3RremRkbXlEUVNaaTh5UDR4alU0eXl0OURXQjBPSFBZYXhyWWp3?=
 =?utf-8?B?R2x4emRSWTl0S090VGxGRVM1Skl3ZEphbStOaWRPdStIZy9PcEsyV2EyREtQ?=
 =?utf-8?B?cjhTcERvdGV0OFQ2N29sWDlHMW9na3NPdXlqdm40QWlhSGFsTW1HdUU2VVhU?=
 =?utf-8?B?cEdRTVN3WTJQai8ra0xJRVQ0bm14RFQrdmNyQzZVRmNRay84N2ZDMWFqYWUr?=
 =?utf-8?B?R012eHVkN2ZCRzNaekdzNnNTenNNTXg4TUFnMENzNTB2S29PN2dOS3V2TWhF?=
 =?utf-8?B?QnlGWXordDBEWU9Od2hGT3Q0L1g4eTBEZXRPbFBXQTE5V2o1NzI1U211SzNF?=
 =?utf-8?B?S2U4dlZ3elFEWDBmOElFR0tOMlhscFZHZm1LVmFyQ1hmb3NDMEhoMWNMTVR2?=
 =?utf-8?B?N1NDMWJEUVV6NmJ1U3BoUGVnZDhMS2dkYlN1RjIyN3QxWVNHS1lhQ200dTlh?=
 =?utf-8?B?Ui9YUDlhOHRmRHllV0FnbHFvSStUS1hrc2tycXN4cnJpbEVlL1BJbU05ZzVO?=
 =?utf-8?B?Qk9idElRVHRWOFpReUJmeGU5VGRKUVFUY0FzOVY5QjBRd3k2a1l2UlcwWm85?=
 =?utf-8?B?YW5XT3hVQ3F1dXVOSnVRanlISFZBQXF4MFZUSElqL2RDMW1sVEFPSzJ3Qmly?=
 =?utf-8?B?Z2gwUVdiNElMTmlkWklGdjVhUHg2UTVvcjNabjV6dWkzQjZ6ZnIwakFRcmw0?=
 =?utf-8?Q?Avf04XXAR1HQhOS5NAW6OJwqUrXF29074iPNjuV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82e0747f-8e77-44b5-9fee-08d96e247bba
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2021 15:15:22.9305 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y4F1zVHKclFMTurNN/RNCZhop/IQIofHNYCf0YwZv4FZvPKzRVjGugVZQZxC6d9ja3K0GxbN3ZYLw7FOb3VngA0XZ5sQMQE/deugt5S2kwg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4357
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/8] drm/i915/display: Some code
 improvements and code style fixes for DRRS
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



On 8/25/21 3:58 AM, José Roberto de Souza wrote:
> It started as a code style fix for the lines above 100 col but it
> turned out to simplifications to intel_drrs_set_state().
> Now it receives the desired refresh rate type, high or low.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_drrs.c | 60 ++++++++---------------
>   1 file changed, 21 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 1aa9793521158..5eb5033242575 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -91,7 +91,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
>    * intel_drrs_set_state - program registers for RR switch to take effect
>    * @dev_priv: i915 device
>    * @crtc_state: a pointer to the active intel_crtc_state
> - * @refresh_rate: RR to be programmed
> + * @refresh_type: high or low refresh rate to be programmed
>    *
>    * This function gets called when refresh rate (RR) has to be changed from
>    * one frequency to another. Switches can be between high and low RR
> @@ -102,19 +102,13 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
>    */
>   static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>   				 const struct intel_crtc_state *crtc_state,
> -				 int refresh_rate)
> +				 enum drrs_refresh_rate_type refresh_type)
>   {
>   	struct intel_dp *intel_dp = dev_priv->drrs.dp;
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	enum drrs_refresh_rate_type index = DRRS_HIGH_RR;
> +	struct drm_display_mode *mode;
>   
> -	if (refresh_rate <= 0) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Refresh rate should be positive non-zero.\n");
> -		return;
> -	}
> -
> -	if (intel_dp == NULL) {
> +	if (!intel_dp) {
>   		drm_dbg_kms(&dev_priv->drm, "DRRS not supported.\n");
>   		return;
>   	}
> @@ -130,15 +124,8 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>   		return;
>   	}
>   
> -	if (drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode) ==
> -			refresh_rate)
> -		index = DRRS_LOW_RR;
> -
> -	if (index == dev_priv->drrs.refresh_rate_type) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "DRRS requested for previously set RR...ignoring\n");
> +	if (refresh_type == dev_priv->drrs.refresh_rate_type)
>   		return;
> -	}
>   
>   	if (!crtc_state->hw.active) {
>   		drm_dbg_kms(&dev_priv->drm,
> @@ -147,7 +134,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>   	}
>   
>   	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv)) {
> -		switch (index) {
> +		switch (refresh_type) {
>   		case DRRS_HIGH_RR:
>   			intel_dp_set_m_n(crtc_state, M1_N1);
>   			break;
> @@ -164,7 +151,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>   		u32 val;
>   
>   		val = intel_de_read(dev_priv, reg);
> -		if (index > DRRS_HIGH_RR) {
> +		if (refresh_type == DRRS_LOW_RR) {
>   			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>   				val |= PIPECONF_EDP_RR_MODE_SWITCH_VLV;
>   			else
> @@ -178,10 +165,14 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>   		intel_de_write(dev_priv, reg, val);
>   	}
> 
> -	dev_priv->drrs.refresh_rate_type = index;
> +	dev_priv->drrs.refresh_rate_type = refresh_type;
>   
> +	if (refresh_type == DRRS_LOW_RR)
> +		mode = intel_dp->attached_connector->panel.fixed_mode;
> +	else
> +		mode = intel_dp->attached_connector->panel.downclock_mode;
For DRRS_LOW_RR refresh_type, panel.downclock_mode has to be used, and 
for DRR_HIGH_RR, panel.fixed_mode has to be used.
It should be modified as follows.
	if (refresh_type == DRRS_LOW_RR)
		mode = intel_dp->attached_connector->panel.downclock_mode;
	else
		mode = intel_dp->attached_connector->panel.fixed_mode;

Except for this, the rest of the code looks good to me.


>   	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %dHz\n",
> -		    refresh_rate);
> +		    drm_mode_vrefresh(mode));
>   }
>   
>   static void
> @@ -229,13 +220,7 @@ intel_drrs_disable_locked(struct intel_dp *intel_dp,
>   {
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   
> -	if (dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR) {
> -		int refresh;
> -
> -		refresh = drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode);
> -		intel_drrs_set_state(dev_priv, crtc_state, refresh);
> -	}
> -
> +	intel_drrs_set_state(dev_priv, crtc_state, DRRS_HIGH_RR);
>   	dev_priv->drrs.dp = NULL;
>   }
>   
> @@ -303,6 +288,7 @@ static void intel_drrs_downclock_work(struct work_struct *work)
>   	struct drm_i915_private *dev_priv =
>   		container_of(work, typeof(*dev_priv), drrs.work.work);
>   	struct intel_dp *intel_dp;
> +	struct drm_crtc *crtc;
>   
>   	mutex_lock(&dev_priv->drrs.mutex);
>   
> @@ -319,12 +305,8 @@ static void intel_drrs_downclock_work(struct work_struct *work)
>   	if (dev_priv->drrs.busy_frontbuffer_bits)
>   		goto unlock;
>   
> -	if (dev_priv->drrs.refresh_rate_type != DRRS_LOW_RR) {
> -		struct drm_crtc *crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
> -
> -		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
> -				     drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode));
> -	}
> +	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
> +	intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config, DRRS_LOW_RR);
>   
>   unlock:
>   	mutex_unlock(&dev_priv->drrs.mutex);
> @@ -367,9 +349,9 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
>   	dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
>   
>   	/* invalidate means busy screen hence upclock */
> -	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
> +	if (frontbuffer_bits)
>   		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
> -				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
> +				     DRRS_HIGH_RR);
>   
>   	mutex_unlock(&dev_priv->drrs.mutex);
>   }
> @@ -413,9 +395,9 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
>   	dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
>   
>   	/* flush means busy screen hence upclock */
> -	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
> +	if (frontbuffer_bits)
>   		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
> -				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
> +				     DRRS_HIGH_RR);
>   
>   	/*
>   	 * flush also means no more activity hence schedule downclock, if all
> 
