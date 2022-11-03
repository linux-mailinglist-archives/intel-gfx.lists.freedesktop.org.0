Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F55617ACC
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 11:26:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E3510E26E;
	Thu,  3 Nov 2022 10:26:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A8A110E5D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 10:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667471163; x=1699007163;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Bp8stMrpd4DwemPfv7C9EPZ+5rU8K32DxWYHHe0QlwI=;
 b=iNuHvikBiea7k7mMzqlpjsDmOmg/crZTMD7kFjG/Tw4dFadxpyHNVdb5
 QOS130y+BvRkUw6J0A/BgPz0vvfGO0GQNjqB3RDYZqlovbO+GKGjfbCu8
 0JKdX7qzkKw6UqiGBmvB3e45fpN/d83oK5NLsJJohk0aBaNFIJ2S/oM9Z
 nAJSIsYMZLwYhKVdLc/8AA/EBYh9uiEz7V9yEhi9gNX14XaXSWbisgNbb
 6VMQEA3uXZ25fUQW/0dZkLhmNID12Uba5vCH+/HkoVikwdjhpAsgyNQ2x
 yrv/z/8aPAWJdOKSRCDYTWP5jN/Fc+t8Gf8SCQ3KJx4+UFyJ9Xx/VFU0v Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="297101013"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="297101013"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 03:26:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="634622016"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="634622016"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 03 Nov 2022 03:26:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 03:26:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 03:26:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 03:26:01 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 03:26:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fEIl2bjnsM6zfgHoJ8/CO2mM0bUPf4hiOHzi7LAsEqfSmd8+I5XPcHUrvFtL9MjsAZmYy8mpGmst/YFZiYA4kZwc2R2xfV1qUHBiNFCuVq30AMDVV7fA6ResM6YKLqnDOZOopmm7SrChCIPVqF3/zV8lmcG2VAbVTqBjdj3swC00RZCBOPAqJjPjoXQ+HNhxtkj4VPuPEj2ueea1fB0K4cQ19T7f7gzZhOI6NIqDQevD7M/80FgOBGKWPQDT8LFuNhRt9ZU7+xFS079nyWYLOYFHPNcG5h+r5lgNMOfGov4LXCBdYlV1AjFLt7yLBDot9lOWAV7xEs+fVTe+oTvI3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KiA7xr4k5/mG81kjetIzv/k9FVPr/jSR6n8wxEAWnz4=;
 b=KGVBVDfi6aWIHf7lYv2WGaiLOgwmVoIarc7v+1qp1C/jTeChDCgR88wufOAxEckTqZxW5L2gMKUriHZq60vPKcMWPOzggKbRE4Lq8cm3Z4tpPw6HirROdP9IvpfCimOnhqvCLPb8iRSDuPzrICs7ZIbQr1EvDswNEe07UX6+WRmQn3w5FQ7Vvpk8pQtv02sI9EZvlr0Rm6p68L8q77QtOmGjD617ZRqujGfE+MK99ebOMDZL+wjwA6H0580ZEFvtzsR98sZbep5gB+JseLiBAyg+wb5gHrCToCs0IGtL7YoLO9/nuMqxWM31PUIeNvBt+lsyzEEuEeP/Wco1FNEn0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Thu, 3 Nov
 2022 10:25:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 10:25:59 +0000
Message-ID: <e370fcf1-30fc-08ef-27ba-859bccf15212@intel.com>
Date: Thu, 3 Nov 2022 15:55:50 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-11-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-11-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0203.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6817:EE_
X-MS-Office365-Filtering-Correlation-Id: 18b3fe96-8a36-4778-0b20-08dabd85cc5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1mcygPPfK6R+Cx/xcZR+5nfPfOY/tP8/n13Z2FB+5bJJdni4huNJ+ZVC40Qz9qwnQEoXphE3FCqORXr8Yvu3ZFyF7JjUUbrSj/8bw6XhtmrnZcBfemYZ/BpPaOzfJrueq7MxZAkzHLLtNz6N80dnR/en5a/OH8ZGrgCmk159kPKBXjnwsB7c8S3iVRaV9j/U1qZr3Qjpa3B1++gs1SPXKm6zFFxfpVgEVfZshyeRRnKMJtiBqTZrh/yViAeuMDzx6JIgjptLvzz/KjE570+UyJh/Sf+aHx7WTAb3cfQCVgNzbxCYhK7UtSttl+6kTZv7KmVMqwQykSb4Cdnht9PbxurcA3Sj4cm9l9bVS1r4AEQtAnZXomj4r1FImDgAJ4/kvYnl2sz59lIRM3cPC90BM8JHc2zuJA/eZYCVFKW6RNW873g+BKuAJqRtKe6aRXr5gPNJzF0eF6MqYkpI/uwfj90co9ZmKjsWlh5E+iduKvDOjbD8i6IHXqnYq+9h5KUUcVBBErJz7OW2gIpFlOaT52e5ELS2ewguWvjLNW7ClYNXirzWWpsetTQB/z1+cMG3ax01sM38YU/u8wiypX9kdVrb6ZkEOu2ti71qzuZhSuja5eoFFFHVirJYM/oZmXTdwD/MjiUljBaH3WMJfZVDQt2BilzY5msCMN47jr8aXFAW1vCuXZll2OtEXK8cZVr3g9v7ZPUKMQ4adaoHLKuYGEIB6l8+5DuKVoUXjtyejzowOLmksaBZYRqExXx3/KAnzzNdXWP9jWKre4pjQT5H7+Rp0hvRJGE5tgFmgl6USXE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(366004)(39860400002)(396003)(451199015)(36756003)(31696002)(86362001)(31686004)(82960400001)(38100700002)(186003)(2616005)(2906002)(6512007)(53546011)(478600001)(6506007)(83380400001)(26005)(55236004)(6666004)(41300700001)(66556008)(66946007)(66476007)(5660300002)(316002)(8936002)(8676002)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckRibjFYZE4wQ0FJSXNuT05PWUFETFNIRC9lM2RUcGZyTmk1eFQxYmJSRHEy?=
 =?utf-8?B?SnkyUUhCSExoRGxvNm91a3hybTVTVVZYTnlKTm10WUpPTUpnenlSWDJCRXJt?=
 =?utf-8?B?NE1PUnR6cE0vdEthQ0tZVVMvWmxjMnRqelRSRXJsd25YL0dTajRwbXdUSGF6?=
 =?utf-8?B?dkFKYjQ2R0ZXeUxNdzhlTXhEaFZWYVpRSFc0OC93blhvaGJnN094Zm5hNnhI?=
 =?utf-8?B?ZWU5L2cvdDFhaU92SjJJMElsZWhOYjFvUzdOSjhpRFcyL2RIZmluVnZlbTZW?=
 =?utf-8?B?OXhLc1RneENndkpuVUFXZjBRdDVOc2U2dGFWTG90TE5zL3VVUnpmRVI0Mzkz?=
 =?utf-8?B?OUZSQkZQRDJuNUpMbDlabEdLNnRuMW1DYUZtTTgxeVNhc2g0Q2RkaGYxS3BR?=
 =?utf-8?B?U1RIK2tXUS8xYzR6b1FpbVZZV1JVMSs1OXhoUktGRHFUWTBRMFJYVnQwN1Uz?=
 =?utf-8?B?U3VRVE9ZZWFNWUpJQTlnUXNpNkZtYWFSdFpLR2sxdXl5RWV5aERNMnd2RXFU?=
 =?utf-8?B?R244NmFuU0ZWKzBmOGlRRmxpano2YjhhakRnMk9LVFN0d1NjM2pkVGlHYmhY?=
 =?utf-8?B?alFJL3crbzdvMWQ5NWM5NjlBYzlBMTBhRFB4NmlETHE1ZEQ3NFU5MFgybGZC?=
 =?utf-8?B?U3I5QXJXK1RWdnVlL1FDb09xbmdEYlIybVZja0l6OGRyL2Rkc1ErK1dTdlNr?=
 =?utf-8?B?TC9PemJYTGpOTHU1OEErUzVpbUpkbmRGT2NSeU4zVW5JWjg5MzZ3S0E0T09L?=
 =?utf-8?B?b2RheTBERFF4NFdpSjNRQlpXRU9jbWZrSW9rUHlDNE00ZTFoYnExWmdsSXVp?=
 =?utf-8?B?Nzd4VXcyd1JERVZMSTl4S3R6VnpQZ0ZnWDQ5aTlqT1NXNUxoZzQxQlFqZzU1?=
 =?utf-8?B?K3ZXMTdnaUZrWGU0S3ROaVZyUWQ3NGg0ZVlaQzlsNVVSMFJreW9EZ3U1c2Rk?=
 =?utf-8?B?eVpNOGhXSHBqaGVENldzb1Q0Yzl2S3Z5c243Tm9LcE9DNmR4UnJsZnpDNFNB?=
 =?utf-8?B?djlrb1ozdlA5VmplVXIzeWsvbERadFdCVHNMQlJDcTlUSWJwWUFyYnRxaC9Y?=
 =?utf-8?B?eUJuSm0rUlFOalVGc1JmVUZGQURwVnlkUWg1YnptbXVMOHIyaTNPOW82Tjh2?=
 =?utf-8?B?cVJFN0pockUvL3BQdXd6VFJyZVd4NkFtVXhVcDZmc29lTTMwTFhRWEpjZ3lu?=
 =?utf-8?B?U2RLbnFrMUZXbmR3bVpKaXkvK3BVWWxBMkEvY0VDVmplZXdvWjgxTkJwZVFU?=
 =?utf-8?B?VmRoVjVLVFlUVU5uRTRldXFkazVQWFU1ZzJWdUVyM3RZQ1R6Ryt2RnhHamtj?=
 =?utf-8?B?Q2lKeGtDUmhucENjdlZ3RTVDUjNDbTM2QyttYmlUZEtSVHczS1FacnZ4bDhJ?=
 =?utf-8?B?a3hMZkxjSTBHbnZwSWRHcUczNTRxMC9Ed1lYUEdjUG1UOWxVbjU2VzlTRjMv?=
 =?utf-8?B?MU5oVnFzYkJPQlVSWVBzNW5oMU9Nb0E2ZnQyUzgraTZ1eE5VbkJQQjlvSkdi?=
 =?utf-8?B?MFozbHRhRUhMSXBuUFJENDNZNGt4cnhrb2VpR0xLVVNKTDZDV1FWR2N6QnRy?=
 =?utf-8?B?Snc2REM4TVRHSEZqdEZJN2hJMm94NFZGTC93WklzMEpXM1poRGQ4RVVGYzRD?=
 =?utf-8?B?OVA1b01iNjZzb1c4VUl6NitnanpZbWtGL0VIZVZqZ2UvN3AwUmhiMlUzZDBn?=
 =?utf-8?B?NlBsb2JzL1NLM0FXL3FnZVMvenNzR3FaZXZOQ2pYT0Z6Nml1cXQxbkN1N05q?=
 =?utf-8?B?djNJQmhCNE1VSzhQWFM0Vk0wZlhZaGoyS0REZkFON1RXWUxhaWhVeHMxVnc3?=
 =?utf-8?B?aE5tVFJCN3Z0SE5jSktwQmxGRngxZUF1ZGRiN3VuVzVlMXJvWkRyK1NtcnNH?=
 =?utf-8?B?VzdrQ21CbjBtTXJXZjRKRU1jMmRwM25zcm5HWVhPNi8xcGpRZWFTdzd2a1Vu?=
 =?utf-8?B?QkZzaFUxc3c2cCtJdndMc0g1R2JPbEozVWdVcWJCbWw2Z2w5Rkw4Zmc4blNJ?=
 =?utf-8?B?S0FQOUorak9WdGxGSVR5OW44WmFZNHBNSnNEUVhDUWovZWhuZ0s5alMyQTBq?=
 =?utf-8?B?WVUzdkNpajVFdlhvTytPbXhyQ2dxSjNDanRGbVB0MWNCeWh1YnNZcklFSXdt?=
 =?utf-8?B?N21nNS9HNWcxUXU1WjBwVFN6UldtdnM0RVVWSGNzZWVWZkY1NzdkS2dXdXdE?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18b3fe96-8a36-4778-0b20-08dabd85cc5a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 10:25:58.9336 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ac99ElxUZUjU7LYOEr8amRg4L3s8X7/DBR3tIOOvjV2mi1mK/hj10QwVUJlYWfuM3di7dIMQNPy7iDb0R4t5v8cE9joVhAqaGxCoBFMYoYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915: Share {csc,
 gamma}_enable calculation for ilk/snb vs. ivb+
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 10/26/2022 5:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> ilk/snb vs. ivb+ hardware is mostly identical except for the addition
> of the split gamma mode on ivb. Thus we can share the csc_enable
> and gamma_enable calculation for both variants. Pull that stuff
> into a few helpers.
>
> Note that this also fills in the missing ctm/degamma stuff into
> ilk_color_check() pretty much, so for good measure let's also
> add a few extra checks relating to that, although we still don't
> expose ctm/degamma to userspace. But now it'll be trivial to do
> so if we wish.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 49 ++++++++++++++--------
>   1 file changed, 32 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 926784f266f2..33871bfacee7 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1442,6 +1442,20 @@ static int chv_color_check(struct intel_crtc_state *crtc_state)
>   	return 0;
>   }
>   
> +static bool ilk_gamma_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	return (crtc_state->hw.gamma_lut ||
> +		crtc_state->hw.degamma_lut) &&
> +		!crtc_state->c8_planes;
> +}
> +
> +static bool ilk_csc_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	return crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB ||
> +		ilk_csc_limited_range(crtc_state) ||
> +		crtc_state->hw.ctm;
> +}
> +
>   static u32 ilk_gamma_mode(const struct intel_crtc_state *crtc_state)
>   {
>   	if (!crtc_state->gamma_enable ||
> @@ -1487,22 +1501,29 @@ static void ilk_assign_luts(struct intel_crtc_state *crtc_state)
>   
>   static int ilk_color_check(struct intel_crtc_state *crtc_state)
>   {
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   	int ret;
>   
>   	ret = check_luts(crtc_state);
>   	if (ret)
>   		return ret;
>   
> -	crtc_state->gamma_enable =
> -		crtc_state->hw.gamma_lut &&
> -		!crtc_state->c8_planes;
> +	if (crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Degamma and gamma together are not possible\n");
> +		return -EINVAL;
> +	}
>   
> -	/*
> -	 * We don't expose the ctm on ilk/snb currently, also RGB
> -	 * limited range output is handled by the hw automagically.
> -	 */
> -	crtc_state->csc_enable =
> -		crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB;
> +	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
> +	    crtc_state->hw.ctm) {
> +		drm_dbg_kms(&i915->drm,
> +			    "YCbCr and CTM together are not possible\n");
> +		return -EINVAL;
> +	}
> +
> +	crtc_state->gamma_enable = ilk_gamma_enable(crtc_state);
> +
> +	crtc_state->csc_enable = ilk_csc_enable(crtc_state);
>   
>   	crtc_state->gamma_mode = ilk_gamma_mode(crtc_state);
>   
> @@ -1546,7 +1567,6 @@ static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
>   static int ivb_color_check(struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> -	bool limited_color_range = ilk_csc_limited_range(crtc_state);
>   	int ret;
>   
>   	ret = check_luts(crtc_state);
> @@ -1567,14 +1587,9 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
>   		return -EINVAL;
>   	}
>   
> -	crtc_state->gamma_enable =
> -		(crtc_state->hw.gamma_lut ||
> -		 crtc_state->hw.degamma_lut) &&
> -		!crtc_state->c8_planes;
> +	crtc_state->gamma_enable = ilk_gamma_enable(crtc_state);
>   
> -	crtc_state->csc_enable =
> -		crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB ||
> -		crtc_state->hw.ctm || limited_color_range;
> +	crtc_state->csc_enable = ilk_csc_enable(crtc_state);
>   
>   	crtc_state->gamma_mode = ivb_gamma_mode(crtc_state);
>   
