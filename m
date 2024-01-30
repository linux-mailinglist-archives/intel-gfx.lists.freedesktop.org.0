Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D073842667
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 14:48:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BC8A1130FF;
	Tue, 30 Jan 2024 13:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC7661130FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 13:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706622519; x=1738158519;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NOXpXUl+DXKqzTupukM8sRx1wl5vaKapkcPNqMYOGm8=;
 b=FAcWT+u3g2yIrlrk6Qq+hRAGq8ubNvFbGVg7oIOE2aIfaoFkOAMyS4Yf
 FGqaWNVhlN+9qjK0nf6x0XUa/AbqZ4MordXYUDeS8paIqe4nl09gN8Jfi
 7xEBoSZecLAn4WAQnqJEVbLVwPjWSk1Ui+WyKzHN+75g2GSDbCdX2UgbJ
 GKTR5BxHX2xpkFP5fLgvYZ/5TnrXua4B6yBuIxaa0NKgIDGrH+o/gZGHo
 nxNJLIvBstdyv1Y56SWI071pp70aRLA/OjQEDLRuBUpExhMIZpaXqbV2z
 bhHYKkeyXHro5weqfVQGQ3/FNN/YdYPktdxV0JQrexL8rOvK/MfnkpEnG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="467537803"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="467537803"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 05:48:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="858497337"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="858497337"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 05:48:34 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 05:48:34 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 05:48:34 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 05:48:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TnnKoutVdb9nI5nJltyxn+FuF6CP6ky0FXVbtWyidgMsqDaw83tAbqCswrKT7Au9DBGE/pYdylD5AgdinmnfGdvcKsn7S4DdZ1PHBhmMO1W3SG+axDk4YfxB3faQ97/qabGFaTit1NKh7rfmSe71JKE9pRFOFIgljX0KcuR64qEuNhmzIeWgAy6tLdG9NB+Ebpt3bBIIq79Kd6O4LR/wSJztEUe91kYadolk6DlBh/325lIEHaK+BYDUd7B71QTXk6fi/jHS3EoNLl9w/2ACdOCvBvE0TMT0GTBSS5lrRQQsmZo7xR4IlzxS3sybmguVPB8pTIBEeY/SLjM7y6Zo3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MvrvntrGnGy4U0ries/HMxZNoGesaWWEQJM4NDd4S0E=;
 b=V3onVh8jYwmVZjMEuSuDgQF1dB/Ywp2UYteqXOoHyKTdrtk6q6rjHVYdLHM/qUcAwVi0ZWhupwhma/qm7N98w7uQbNJx612tckISMeWTTejS9qR5pjGJ4zEZOoBrSNrSL8ikf9p9+BaUnm0E8p0ygYzTWMJYiOmtOPWZrZAmSTVjrKAQ5tKrJ/m7QptfxcdodN5ONpDx7t4TrWK17mdtQ5+765hhuVWCZ8xkzQuZ8SDcPn1Kcu2hjut3PsOfLfj9PB4mc26dFeR5VVulqzkn/kuG6ZvCQ1a9PS7A+c4awl5rsV/Zb2dVaD/fI+gW0pBvwjBwhyayTuomxHgZizmVEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8528.namprd11.prod.outlook.com (2603:10b6:510:2fd::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.22; Tue, 30 Jan
 2024 13:48:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.017; Tue, 30 Jan 2024
 13:48:31 +0000
Message-ID: <03994206-48f4-4784-be85-fedacdded17e@intel.com>
Date: Tue, 30 Jan 2024 19:18:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] drm/i915/adlp: Add MST FEC BS jitter WA
 (Wa_14013163432)
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240129175533.904590-1-imre.deak@intel.com>
 <20240129175533.904590-2-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240129175533.904590-2-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8528:EE_
X-MS-Office365-Filtering-Correlation-Id: b194f7cd-4f14-4107-954d-08dc219a2543
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8OgvGcRlHEGw6ilqapBVEaEUPzZVK+nGTARQeTbJyFdD2W0oCRtOEtAAM5S21A20L9gVCBK18ufbuasvFQn1WeAFFKRNYkEjzHKk4g/1sslB/gsSheRnVQWYgK3DyCjwi1UhH7pyIitDR6+Zbs6MMTEkIxcM4NZZmefS83aLF9Dt9FXj4RKJlWBeZAF1wcvSRInuyHH4OEZqFpLADgClKJImy7+VWxD6wOTFUP3tHJuhdPS/ANp2OhfkmrtsNFzPxNFrilzR8p+18X5MtBS2XwrV0I7fDJ7X4s/XgkRq8vuQgzeo/oGt73VP7LY44EEWvWpm6j5maE7G+ChZUnDmXyK07nbj/nt60yd9ej/EUlKjhvMv0QthHAXWcVF1lOZ29KeokqrlESEU/Y5AvG71HXylTjEVfKZSHhJFcz4Se/ai89FAsxhmdFj11XBAz+3akVeFHwbYWH/FK3e0TTpf1k0WKYZKX7VaHzDkrG6AoVqsWPxQv9xdt/MSgnko//+AgUhpof5ZQFoRw7+4pwBN7PswpRkEL7OUNHMjr8FRiJ3smixfbkn4BuB1UQkG4a4EZnEi2BUKPeztx13ZNSUE1xBwU6ANqNaV4Z7tJx7idsL2sjh0ek+Tubgzigq7n+d0DGVN1E/5ey1j87c0M+s35A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(366004)(376002)(136003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(2906002)(36756003)(41300700001)(26005)(6512007)(316002)(2616005)(6666004)(53546011)(6506007)(83380400001)(31696002)(66556008)(66476007)(86362001)(66946007)(478600001)(6486002)(82960400001)(31686004)(38100700002)(8936002)(8676002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGc1WEx3NkNIL1B5ZXRIdVpubWZoOXJOcU0wSjdNZ205N0o1NGxUSzhDTE9T?=
 =?utf-8?B?WDZ3YlVjOVRlRVAwdER1Zk0vazRROGs5ZTkrZU5abzFGTzRIQ1hqbDArcm5Y?=
 =?utf-8?B?ZjhEcXhpUjh3TTR6bitCVHFIWm12NE9UZHp0MTJjUUdKanZYUTVwUU5Zcy9V?=
 =?utf-8?B?NFFoZndrSzN0STMyM25NUG5lVzBmakUwTXdGeFNUSUdCVE9iNk9Uemx5a0s0?=
 =?utf-8?B?cDEwUWUvdkVQMkFOK0lNWGErYjNtci9QWktheEM1TCtONkV5M24yNFRYYUhw?=
 =?utf-8?B?TVBJTC9JQTFnVFpvVFp5VmdWb2hSSVVwcGp3bEJRMlZqeTNDdUxCbnFCc0JE?=
 =?utf-8?B?VnhHcHRRc3RHdWZEM1piNXI2bVYyd3JtWE9DOGEwUnFVNTNtTnlRZjZ1T08x?=
 =?utf-8?B?ZVplS1VONHhINW5ESkcvT1huemo4WkJGTTUvbVAvRHNJTW9IM1JIZ2pQdUpi?=
 =?utf-8?B?RnVFS2o4R3YybERYMmdLTXlRbTRIaGVJaGozd1l0NjdXTENmSFBHcjdOVklI?=
 =?utf-8?B?KzhLbkR5eFZhU21FVHlMRjQ5ZDdCNUVZME5ScnQvZFBZQTF4a2xzdkpyZzRH?=
 =?utf-8?B?eDBVOTdKUUFFdVF5OFBtdUxEWDgrUjdvQ3Y1STFDY3Q3b0RLb3V4cnh0UzdT?=
 =?utf-8?B?Q0FCOWJ6U1NFTkJ1Q29KZVJjcXBzUnFtL1JEdzBGNFBqdFpTczBmbFBJNjgw?=
 =?utf-8?B?VTQwa2htS0orUWlmcmxERk56bTEyLzMzQzNOcDQ2UHFuYk4wblNzT1J3NHlv?=
 =?utf-8?B?RGl1WUU5djF1UkFGVHJZd2kyRmxrdjlBMHRPWEVmSzZVUDE1YTVhV2hzMmp6?=
 =?utf-8?B?MEMyNU42bFc4TllVWnRoWjB4ZjBOS0FZTStNbEFEbWdTTUROaW1LaEI5OFIy?=
 =?utf-8?B?ZWp1VWUwVTJhYkFiR2tMMEZsK0lEVTBkN1VIcCtIVi9MczhHRGlxRzlIYkpF?=
 =?utf-8?B?bTNZZXZ4cnBOaGlCdFNXU0VoSGZxUEVuYzl5MnJPc1JhQ3NIUUhpWkVRU0pI?=
 =?utf-8?B?b2lqY2JTeXgxTVRURXhEOGZ6bnJUY0c3akVSdk1UMUx6YXRhVDRwYkdTR3Nw?=
 =?utf-8?B?S3BtTUpndkJCMHQzR3pZOXk2RUtNQmxHeEtLb1JibmhGeWNBRUhmd0N3NUFh?=
 =?utf-8?B?dWd5cWRtRXRRSW9TVGdhV2tKR1NPSm56cExSSitHbUUydXo1SUVMaFpucitw?=
 =?utf-8?B?QzkxK216eC9vOVRTRXgySFlTOVZWMUxLNXlwWXBHS09UTmJ3R3Y1ajhIMmU4?=
 =?utf-8?B?RlVJSFFrczZ2UDVEQmVQcHRjZDBzcGliMk5oZTBMOUlNaFF2VnJ2bWhoMWNF?=
 =?utf-8?B?K21pYzBGaUQxZVg1ZG1LVEdGSndwK1dQZFRnUGI3N0lTVThHeHMrWFhDbldn?=
 =?utf-8?B?VWNpVk1FSGt2V1p2Z01aN3g3TzNrc3JOSFJTZnhBLzhSbjM0ZDh0M2tCaW5m?=
 =?utf-8?B?a3dzRFpQeURQVzlVaUZsaDBBL09KbWdsQ25PeUFSbjFuQXF1b2VVOWV0ek8y?=
 =?utf-8?B?U1NOSnYxNGp5U00vSThWdklaOXVGamQ1VGxDRlVGOENUYnFwVWRFcVNFWEk3?=
 =?utf-8?B?TDJjMHk5Skh4emRKalBSdUhjUi9MRUFNc0JRUTNZZEQ4T3kzQ01sdXhSblNR?=
 =?utf-8?B?dlpKN3cvRFd5S2NlNFEvZ3RaaGxiMTQrbTNRWm1oUytRRThxNU9OYlVZVmo5?=
 =?utf-8?B?RUYyYjVPQUIxckZESWYreStDQ0xBV25NU2kyT3pwTjJNR2lzaTkveGQvcFBW?=
 =?utf-8?B?ckZPdkc4NXhrMUdvYmd2eDlaV0NyME9TUFRFYVp5NlEwQnBpcTAyOTlvMG1Y?=
 =?utf-8?B?UTdrWm0zdXZSKy9xdFdkaGdsVnl0bU0ybk1LbnA2OWJuWlFtWXlIUDROcWh1?=
 =?utf-8?B?OGg2YW1rNDA1aUR0UFhLcHp6QkpuQVArV1F0SFg0dnFoT3VvNUp6SERHNFln?=
 =?utf-8?B?UENKVTRJVjNVRFRwQ0lWclp6VWdNQzVDK2h6bG5abHNzcHpGdkYzbFRUWFMw?=
 =?utf-8?B?T3ZIT0J1QWNaRTRBcjFVOUFkcjlySm51cFVkSmpQOEFZU3h3c2U1dk5aZ1ZW?=
 =?utf-8?B?eHc5Vy83UGtmekdabG4yajZFTGZZTHprc1dMaFdOWVF5Z0tOTDlOME5Eckpy?=
 =?utf-8?B?QWMzdjhnRXhaaUcyOHJoLzV6Zm56QStkYWFEdG4vbVRJWlFPciszZXRLdkpy?=
 =?utf-8?B?TVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b194f7cd-4f14-4107-954d-08dc219a2543
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 13:48:31.7160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ITuD0UxyzKO5PSanfxM02snoGH4uf3YVTlnfkwxB8zekVxnPoaLFJxGmAN1MLfGv42PP+mVenXoi4pI49syS1T/Rhf8DDXT1y56ZAZO8glc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8528
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


On 1/29/2024 11:25 PM, Imre Deak wrote:
> Add a workaround to fix BS (blank start) to BS jitter issues on MST
> links when FEC is enabled. Neither Bspec requires this nor Windows
> clears the WA when disabling the output - presumedly because
> CHICKEN_MISC_3 gets reset after disabling the pipe/transcoder - so
> follow suit.
>
> Bspec: 50050, 55424
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 24 +++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_reg.h             |  3 +++
>   2 files changed, 27 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 5fa25a5a36b55..22c1759f912db 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1106,6 +1106,28 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>   	intel_ddi_set_dp_msa(pipe_config, conn_state);
>   }
>   
> +static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	u32 clear = 0;
> +	u32 set = 0;
> +
> +	if (!IS_ALDERLAKE_P(i915))
> +		return;
> +
> +	if (!IS_DISPLAY_STEP(i915, STEP_D0, STEP_FOREVER))
> +		return;
> +
> +	/* Wa_14013163432:adlp */
> +	if (crtc_state->fec_enable || intel_dp_is_uhbr(crtc_state))

Is this for DP MST + UHBR and DP MST + FEC?

 From Bspec it seems this is meant only for MST+ FEC case, unless I am 
missing something.


> +		set |= DP_MST_FEC_BS_JITTER_WA(crtc_state->cpu_transcoder);
> +
> +	if (!clear && !set)
> +		return;
> +
> +	intel_de_rmw(i915, CHICKEN_MISC_3, clear, set);
> +}
> +
>   static void intel_mst_enable_dp(struct intel_atomic_state *state,
>   				struct intel_encoder *encoder,
>   				const struct intel_crtc_state *pipe_config,
> @@ -1134,6 +1156,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>   			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
>   	}
>   
> +	enable_bs_jitter_was(pipe_config);
> +
>   	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>   
>   	clear_act_sent(encoder, pipe_config);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 75bc08081fce9..67b7d02ea37bf 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4555,6 +4555,9 @@
>   #define   GLK_CL1_PWR_DOWN		REG_BIT(11)
>   #define   GLK_CL0_PWR_DOWN		REG_BIT(10)
>   
> +#define CHICKEN_MISC_3		_MMIO(0x42088)
> +#define   DP_MST_FEC_BS_JITTER_WA(trans)	REG_BIT(0 + (trans) - TRANSCODER_A)


Should we mention /* adlp */ here?


Regards,

Ankit

> +
>   #define CHICKEN_MISC_4		_MMIO(0x4208c)
>   #define   CHICKEN_FBC_STRIDE_OVERRIDE	REG_BIT(13)
>   #define   CHICKEN_FBC_STRIDE_MASK	REG_GENMASK(12, 0)
