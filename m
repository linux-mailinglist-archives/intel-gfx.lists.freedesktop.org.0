Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CA088BF1C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 11:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2EB210E501;
	Tue, 26 Mar 2024 10:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z5XJCU6s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5367310EE33
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 10:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711448235; x=1742984235;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tx3aQciLp0D08DoMYWlcCRmy6YNum1H3f0OQe1AyUuY=;
 b=Z5XJCU6s6U3+le7GktOGyCgborH/+9sSw16eJTwIWLn6u9Pr/Aasm9R5
 /UtP4Pw0tVAruDLD3Dp0LypioEJerYDb0BDuZbj9fDi1Ki6JOZtjH6geW
 8KCM8wVXafZokwxGiaefguT7e+kG4wgGbfpdqDsbNmF3Ig4inU7Ck9lyZ
 T+oE3WMAJc6ujp3VpTc4fPVKCiMCi3tN4bBVgZ0apomXtonyG4azlzHK3
 ujaTWgdomHw8YdgKhbxGPrFwJlN988kirnt7AI+e1gM9bdybb1mCkNIlQ
 nI0+KKXURyLNFv2BUD3pWxcqRQh5PGtRZxxV0GFi06Xym1VlVUBpb7Bf5 w==;
X-CSE-ConnectionGUID: h4Snl0DYQ/uS11xnuTthGw==
X-CSE-MsgGUID: 2qQuFh7bRIOa5abqmR6eMg==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="9457073"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="9457073"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 03:17:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16303129"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 03:17:14 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 03:17:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 03:17:13 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 03:17:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCfO80kU450W9zFYbBrfgZV0tog80WhGfI4G+61VTQsYTM3W6RoeESmBkJZoY0roUyIhekoPqUngD1clJ+Xw5D/lCd2mFAbFwyJsbUpWwN/ccywOlnyL/+lIHWqqTmxV+NHowFjHNnow0Pkht9NLcoQrpwT/d//JAdr134ExMe1+dH6LsuS6PHRutG30RpZXQO9PRmu/GlG3eb6Zdcqm2GrQxJHTfXtioJWn0byhksdgfxzid0lqWk047vxniaQmXbUVzr7qQ+7+IfjC8SUATm2F5MiNYO/NRVvkdCg8AQetAIoI4lzFup51AxTfWn3EwF8MpAJ7VJLAZvBP9ouQtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ceIif5H1V2Pg0xymcXQ/iOEOhuxGStrO1ABA/ZGFmNw=;
 b=TMSKld5D8TLAAXTl8DQ1lXPQCYj6aYMnL+Xv9XBR+Hq9vwUOUyPUpPNtjWYI39zWp1IY8+3me2XbhgrwbU3ZVaxWcZ8jIJ0s2ceQ+aJg/jpVvUixh8RjQyzeyhnFOJ1Y+PpeM9a6lLyaH7MM7S0HlnrsUhpkqmHlzDvOLx7ZcS4MDV9gHDegte9lQOIcFTIe0mh5o0JLt89Em2fAPlmcKG6jlL7A9E6BVHsnW4XZL3Y7/3yUltsUnowhL/AP1GrSThxNhdH89iWCw0vGISHbyBoNOra73kSF6Y9CPsf0puRXSLnWwv3DkrM/no0N56WZXr737kIzhuzYg845vehtEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6831.namprd11.prod.outlook.com (2603:10b6:510:22d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.28; Tue, 26 Mar
 2024 10:17:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 10:17:11 +0000
Message-ID: <32c89f1b-852b-4d49-8439-45fddc80c5db@intel.com>
Date: Tue, 26 Mar 2024 15:47:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/11] drm/i915/dp_mst: Account with the DSC DPT bpp limit
 on MTL
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-6-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240320201152.3487892-6-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BM1PR01CA0150.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:68::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6831:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T2yzrC0WQTvlvRQLM+2DrgPLAXaeX1UprZkAaD9WhU/p3Sh7DBVyshMCJyoQX5fP+VM2MpImjlyAAQkoZ0NQlGYRP9/W68y0bKcHWacx/zRhaWCBkbLYLRMdTqkpYDV3p0lN3jsT4PavUI5w2VMTsu6iiEf5p+RY4N/gP1d+lP6/l2gbk1IMRMX2vF8Jwdx8Lkb7iMD0jBVeLoydPOS66tcijwLcFVW77gWfaYDfrDAN1eqYp/AnIgpNGD/EHvix/m7ToPnPDrshN1LkWWHtTHnvniuPfyOveG8UUByDL10Y1d9aj5kfY9YdJ7mjADGp+iMBkx3mknc7+uXR4beMZWjGr2UM+ku3SsFj1oWHDANe/wlLM6rksbpA//h/qilwCprzYubzfIW2Kanhmb6y0Pc50+AE9RmjAK2HWM5Z8ZECUkp8f9J11JfBABlsdmKURCP98b8YDJOyq6lNTw8wuF2XTTsYRtCG7LyWnD0GeB2iR951weGATzfnn2e3W3nGOyb86qo6CqM8l5BiNDl5iwtLr+ZRmPWuIywAzVcgLCUf9iqTVwODaktMGgDFXWRY8VT2cYuzuS7X9qjGefiD1xMzFY0u6TYhVqHfNbmCQWU0o03XDSF3AlIfV6FwuR1sLtCEDDkLYMkauMGxIvdtos2oQTS5N3AXz8dyAVT2r7Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGhNbWpSc25SMTRjKzZoS3B2MTkrY05VTVM1Y2lZQ1gvUEJiN3VVQ3FyT0tB?=
 =?utf-8?B?NUxXLzFoVDRDWHY0UW5tKzNSU0Y1eWI2MHhVamJkbGUyY21zejhaUjhxT2Jv?=
 =?utf-8?B?eXVCTjdRc0YxNFI2ZHhEOGd6SWZmZUV0Wkx4cFBOM1hWSkJqV3oyOXpaeXJl?=
 =?utf-8?B?U2NUamd3WFAvNUJXbE8wWmVDc2RKeEJSRGJkckt3ZGhzcytPRE1NdFhJMEZR?=
 =?utf-8?B?bkpQd2E3d08xODlScGZhbHBOMWF0T1FGb3JJWGQwTUVIOGdkdHJSYisrOEdw?=
 =?utf-8?B?WHJPU3lyTE5uNlFVcm0vQlZyRGVPZWhSKzAreVVUdGZqVWsySVFCbXJCQitx?=
 =?utf-8?B?c1ZBVmxlRU5Fcnk5MVNva3hxVUE2TGJ5Tzh0VFhVanphc0FpTjBQampLaE4w?=
 =?utf-8?B?ako0blV4YXFNbVdiL0ZYN0JwaEdpc3dWUmNoUjNlcU5UU2xWTDMxWlpFZytu?=
 =?utf-8?B?Vm9ZZUdhMmlBenc2K3ZsdEcrbFB6bkxiQXNHeHZZSFhrUXJralMwSEN5QWVy?=
 =?utf-8?B?THVJeUs0MHMyY2J4RkZhaE9hZWNyQ1pKSkJjMlhUeVA5NTZNQzcxb2FYVExk?=
 =?utf-8?B?cGU2bU4ybm50SHUrbzBmNVViakRBQ3BtQVh3TU1ya09sREhiNHpJTldFUTNK?=
 =?utf-8?B?eWt5bTZ2N2pnZkVNYThOa2UzdXc1REF0MGFFZjg1VVMxdkJGaFViYVpTaFdF?=
 =?utf-8?B?MGFOQUJid2JLQUdUUVdzNTRzeTZaU010K0RnRW5XdG5wM0luVjZPNDNzdFlO?=
 =?utf-8?B?OVlEb1JrUGlNSlFQWk4rWDNURm1LT1R4Y3dNbTJjbG1wS3V2QnhlcFZSNmZZ?=
 =?utf-8?B?ekpoem9XZnNZdFY4YjhZQTNrV3dWRk5LWlQzRkxaNmFJZ3R5d1hlUVNDVjZt?=
 =?utf-8?B?N2xmWTRKRzV4TFZlN0pwTUorcG9SQnRNQlpkZGZuYmdOSlNHOTdTRXpZQkJF?=
 =?utf-8?B?dWkzWWRIb2xhcU0wVHN6V3lWMEV1VzV1NnpZTkQ4Qm5aMXRUYXl3VXVzajRB?=
 =?utf-8?B?a1hzY2I3eGZQTWJXVGtGY2J2U2IrMjY1R2MyelBucGlvTmtvWTBaN0FTZmVR?=
 =?utf-8?B?WEwvcW01MHB5KzB0TlVvVWFqMkVXcll2TXV2cm1kTmlKNklIUzFBZWVIbVIy?=
 =?utf-8?B?UnhjZDlqQU5Jd21jK1lnUDBKazV1OEd2UGRXajdSWXAzNU9xdUh4akF6c0py?=
 =?utf-8?B?Z2hmQ1RsNkdvNDJFc2xoNmJQd3ZOQldTaklTTWJGbjRBbU9jL1o3ZFo4QWNo?=
 =?utf-8?B?b3ZhakNWZnlpd3JIQlI4Q3c4aU04UXlkNDVoZTI1UDgreVA2V3puMzRRNGJV?=
 =?utf-8?B?dFZZdmswdCt6bk1TdWlaTXREaWUvTGNtOGQ0Ry80US8yQTJmQzRUSmNqbFQx?=
 =?utf-8?B?ajdsMmM2WjFyQzNGM0hEQVliT3ZvUnJLS3Q5cllkQWdmaCtGb2dHQjdrckNY?=
 =?utf-8?B?cTFPNFUyeFl2L0wvd2FFVytmSjNUNkhCTmVOOFJybkJNVU9kOFl0aWwwUXhm?=
 =?utf-8?B?R3dtMjE3cFovQTh0cEhKUnZDQ1BBWXl6SGhQb0hER0FsRGI3TUdINWNzRUo1?=
 =?utf-8?B?d3FCZjhGbzIrTUNUVlBvZkRybzYyUkJpaktDMXZrUlYzOGljZENydythd1BE?=
 =?utf-8?B?MnFsSjFCUWh4bEtBU2RxaHFVVHpTZkwwT2VWdC9xaG5sL040cFdwVnJFdTFz?=
 =?utf-8?B?VERCVUs3T2FXeG9mblRSYVFEWG5QaEMzOFgxdFpIODlHVE1LQ2FOU1Z1bnVF?=
 =?utf-8?B?bS9DcDJZZUpMT3h4cHpmc1RIdkJtOTl1VG5RT1piQklqbk16dmtVZFBMRlFQ?=
 =?utf-8?B?N0xKQnVrME44NHh6eVlqQmtrZnpyNlNBYTI5TXhtZzRRWCs3R2NHRGpRaHpW?=
 =?utf-8?B?V1NjUFJWeGl6OHB1R0h3elczYU13NkZvNHA2ZGxlQVdCTnpRU0RSd1ZKRTBD?=
 =?utf-8?B?dG1YU1BMLzFjZFVBSDIyOUlwYjRGcmI3eGRPUkR5bmhvTjhCMldTTFp5Vm1l?=
 =?utf-8?B?dWxPSTdPci9Wc2JsK3ZHdHpiRzZwU2Z2cnpJQUlYR0VPYitsN2t6MlNaODQ4?=
 =?utf-8?B?dHBBRkY5bFJhTkpEckx6U1pCRUNFTkNzMDNiOFgyOG50SlZHOE9FTHA4Sy9u?=
 =?utf-8?B?ZEI1U1U1eGtKS2JFQldoc1FJc0E1Vy9Fa3dCWm5yY3BIWTJQNVdOSDVJTVFM?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2a10dbf-e132-47cf-cd55-08dc4d7de669
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 10:17:11.4976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P5ZUy9ZTGR5MyDZN5FXOGt61rz4lrgNPxx8P+C6wel4UPESiFTd9LLyISqj1dNtYCNK3BUni0BRnwb6G7APIatMRLCcz6APZuLdG+coi5dE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6831
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
> The DPT/DSC bpp limit should be accounted for on MTL platforms as well,
> do so.
>
> Bspec: 49259
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 79f34be5c89da..40660dc5edb45 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -56,7 +56,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
>   					  struct intel_crtc_state *crtc_state,
>   					  bool dsc)
>   {
> -	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {

Should this be DISPLAY_VER() <= 14 to include MTL?

For DISPLAY_VER 20, is there another check?

in Bspec:68912 it mentions output bpp * pixel clock < DDICLK * 144 bits


Regards,

Ankit

> +	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && dsc) {
>   		int output_bpp = bpp;
>   		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
>   		int available_bw = mul_u32_u32(symbol_clock * 72,
