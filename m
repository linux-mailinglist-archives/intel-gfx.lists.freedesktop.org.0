Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5247288B950
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 05:12:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50C8910E167;
	Tue, 26 Mar 2024 04:12:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ejOy+Ev+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E7310E167
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 04:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711426346; x=1742962346;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Kx0zCp6GjCYkgllBDlbmDuW2u4cgiQ78wyiUB2WIv+A=;
 b=ejOy+Ev+qwOm8NrarM1uHmkrQlgiG2g+NKC02V7X/5RYA6ZmRcJkCULU
 hM/eZJKpSNOeeQHMskgoq+TPUvVhaeHVqaHc18QScCTM4bDiJyLj4VumN
 HRUNT5gnrhLml+7nUUQUoOpY830gDg+faQFaHugzPzzEUcgZWd27494+D
 D7W1kS/eGHMndAZI8kjwTtaeQqkO9mJa6c61kFhrXI5Cf7sDmEiMzCYIj
 WGpLR9kPBQ5QOd8GBPnFcGm23AcBo0KJ4A/pXkAeQSBCGk8u0pU9WAj3f
 OTHE+JyVbflWhl3KdCfGcgfXL0PGTdzbxrczwSczupDsW8SiBca74lx6B w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="7058460"
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; 
   d="scan'208";a="7058460"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 21:12:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="38961222"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 21:12:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 21:12:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 21:12:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 21:12:23 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 21:12:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XZmBJEQ9Ip4dx6Z4Et9SDbtEGFwKi/IiEfnY0cTYbG9de+6+s1I4EJPxIozv1STDIziQ7BXj5G05RFe03W5zr1Jp0yqNB/JSZZ+JFMK/ZXDma8ra68YOs8Ss/fl1Mhs23yrOSYU+/BKg3VXIH5xWgsCaSBo8+RioA3vYo603co7b9b7yvQT65rmmFAQbhcTgRG2XLDvmTr1uWDvIKN5aiHOwrY8OAmLlxTTNf8UfYQCzuiVVh5V1ygDf5QGO8rbsNrfjjHIKHsif23jez5h+lxrJtAtrtwa9/eyPvtRXRqhyF2hMRkk12u2sDIjevMRyg4vQBxC1tdwiPeBP/QDWyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=12lF0amX1AvGu1ayQC9xZNtZMJ4AxpxMTecRmHAxqlA=;
 b=WZ3c2jq9Gs0ilfx6KPggBzC3OFgSki7ilfVJsTweW9uIUDQ0pbspdp5QeyunfNvk1HL6a/oWvJwLkcFnI4VZ32/q9OeTLAM2A3igjqF/spD+RoR2i1M+mETkD+yy48JHRz25JWc86VBjFP+S2N0+nGWASxuR01oZ5uC6oHY98k5YqdAi4wWS6GERawHWuxfH0XMIj9G01PjHbO8PcQqXHd9CfiqK4KGAXmoDLZrsqbn4HQfjT5yxN+2IwP3eCOyGA/YzGl+mr1Ro0ifGQUno0qcXZIOr1z9q15YkdKU6sClPDEWRHN/Q7I7bnIOFTHZ/aRxBtBHwaHM4VCbXwKqylw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5954.namprd11.prod.outlook.com (2603:10b6:208:385::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Tue, 26 Mar
 2024 04:12:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 04:12:21 +0000
Message-ID: <0661d2c9-844b-4056-8bf3-7ad24fb3582b@intel.com>
Date: Tue, 26 Mar 2024 09:42:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/lspcon: Separate function to set expected
 mode
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240322121832.4170061-1-ankit.k.nautiyal@intel.com>
 <20240322121832.4170061-2-ankit.k.nautiyal@intel.com>
 <87bk72ibmq.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87bk72ibmq.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0186.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5954:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6Aqvzyh0kTWVl+fxZTCoNrJZz81V/p2K+qw2OiME19cFNdeAmOEqalfGkMTcSxQjCNNSK3dz1UeKuO/rOViEjFzqsJskEluRxpKsQ4KhwQCrZKtdhkCgeGJi40fpt3KxTK7KG3zHoEK4JC6v1mq07e5kP+kJjVlBPD/ub5faVj+19FbHNJ5OQM+fLgIL81i5xXxLyC5Y4y0cKIkTNJ9gEqu0/iqCF0VqRQQIdDdGPvxFM5Iij6X5czo4AUJifIzi5IfsnUfHQhdXTu0sE22FrTl8n5blTlABT6uRMr5Otk1PKp5sbwM18KtkSaqLapV8HmGrLBRpVg8zzjMHeWP2A6YrGO6aFwWTwDRmTpzZTRd+QyTd98wgDzpMZs59Jkwv+8YiCZAMHkDf0/GxpOPSCsl7zjThQW4/wspQgDBv+v3teKJ7T5E3SdhQU603ZcDC/wbfwLF2uwFIoMHPm81SerJ4WE6sXsuISX5Gb9dvPxIb1MZfdGZcHz70u2DGNRC4Ct6/yu9h27eNqNlbn2KTD0fQuF0bC0+4883kOd158frfHFHKA+MaC56eVaSzCJ94hesjZE3rNqfLiR+mgezGCM7qb/v5oiMIZg9tYmuBswN286Yy8BCDRb7+6alanhblRkNQE8CkWT5IFqGUKIvRWT4K2/vyZKLYHeclC3Eu0Dg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGUrQ2E3Nlh3YmVpQnFsa0ZKTTJrS2NLbDZWOTg1cFQ1MWRPdnVBRGQveFBC?=
 =?utf-8?B?b2FFbmZmQitsbk5EeGFRT1U0c2NwNzhxQXBNRzNjSmtQY3IvYUE0WmxpV0NR?=
 =?utf-8?B?eG5wZ1h4YTB1SElPZ1lLcWE3bVlsRXkrb2drcTd3cys4Z1FaSGNTWHV1bmRa?=
 =?utf-8?B?eHZsOVdUYjRtbFVqWlpqaU5oTnIzNS9LN3U2bTMrQlNCNjlkR1VRak1pbjVJ?=
 =?utf-8?B?cnFJenhjZ0I1eVQwamFoNzlicDVQamZoSUpZQVcrQ1V4emp1ZUxUYXdlcFow?=
 =?utf-8?B?VE1CMG5KNWxWSlU0VktCSlVkYVNqVmxEMGdQa3NmYVA4WU51cnBnVHNpVE96?=
 =?utf-8?B?RlgwN1FCVFZDZDRlRGlHUHhVQmJWK3VJZTRmRFhQeDh3MEN0em9YR0ZiUVJ6?=
 =?utf-8?B?TXppQXJHQ2hBNG82cEFpdmtqTkZoZWtQek4xQlRINUlpV0MvWDlKRUM1RG43?=
 =?utf-8?B?bFYrRENXTXFJT2Q4TllxNG1EMWdiQkNLZWpGSkwvRG5QVG9QdWxYaW9EWUdP?=
 =?utf-8?B?cGgyZGQ4aGplQkI2TzBGUXhKazg5Mk5vaEhTOWlXOW9IVE5OKzIyQ1lWVHow?=
 =?utf-8?B?aUs5ME00dW1XRXB5SFpRYXNvSXJCdUR4dU9yanJXT0FmUWYraFUvQ21wcHdq?=
 =?utf-8?B?a3dLbVBKUkU1dXdTME1Md0ZMWmFPMzlCUGxqamZzUmVFQmdDWnowM0VmM1Uv?=
 =?utf-8?B?QVRSRVByaTZudlFPTVV6VWRzT3hsemlnVnl2L2dTQm84SWRuenk4aERGeDEx?=
 =?utf-8?B?RkVQeU1Yb2JFNGQ3M1prWHp0QUNTKzBIYnMxWFd3dUtPU2JpMUNqNVZPS29X?=
 =?utf-8?B?MnQ0a0VwUk9vZG5hK1llYXo1d1huZ0oxSUM0TThZL0ZRR2dtdWVXUnR0Rk4w?=
 =?utf-8?B?aWhnbFNOQnVHOERLNWhJNjBCQXZyY0REcURVRnJJODVTZVFVYnF2OVdmUysz?=
 =?utf-8?B?WVJ5UHFtTHlyK3BnOVNDZmh0WHEyeldBckV2UWpYK3RxRk9tZkhGWVh5OFkr?=
 =?utf-8?B?WjU2UER5KzhnUWt4c3VnUGxZei9CMkc3d2hlNk9QcFVPMm5mY3RBcGR3V1Bn?=
 =?utf-8?B?bEdpQmU0UTFwUU05ME1oSDZ2QnhzMW5ZTmRxSUEzYmttSWxSbHIxWlhYSzhr?=
 =?utf-8?B?UnB1UCtJMnpFa1VoUFhUL0hWZmdXWExBaHJxdnpvYys1SEJ0YUFPT1MzZ0w3?=
 =?utf-8?B?ZW95c0VKdHhqSENFM0E5WkYxTmVRVHVrSFY3bXE0bjRoZ2UvTjEwTlhrSW1o?=
 =?utf-8?B?aHcvd0hhZVJSb1VVZUh3QkVIbzFUaURtc3ZkSFZXOHNmVGc5NC9vQWpnVW9Y?=
 =?utf-8?B?MVhiTTBlUmU4M05zR2NKT0drMFM1alZDd1RYTEEvdC9NTHhhc1NadmxDbTdz?=
 =?utf-8?B?VGdPZk9hdHl6QWk4R0R1MkRpSWZFdkt5VDU1VGRDb2ZkU3p1MlBqWStuc3RL?=
 =?utf-8?B?UUNMSmhoeUhqZWVpUmZ6SzRoUnplWDRaUk1oMXNsRXpiaENDTGZHR2h3QVBL?=
 =?utf-8?B?ZkkrZ2NXOTBwZ1Vob2J4bWdQS1dLWnFzZkp3TWlHL0tGd0UxMGZwWmwwSXlu?=
 =?utf-8?B?czBndW5BbncrVlo1RlhteEdZWkgydmFSK1l2Rk0vMUdFcXpVOUhvQmw5MUVK?=
 =?utf-8?B?b0Y0R09JTjBPa25ER01yZDRjQ2p4M1NHSGgxWjRXaTFSalRvbXZsMkVsWi9i?=
 =?utf-8?B?YnlSUHdGZkRPbENTL0lpTmJoYTBHQ2R2dys5NDZ2bVRkbFVVekRVTjMvbHZG?=
 =?utf-8?B?eUg0UU9ZbTFydWFqajRXQW1hZDZMRFhkZ3NMK2NHNDMrYnhwVjJDRTQxcm8w?=
 =?utf-8?B?bVp5TXdZWmZmeE9lNVhneUJhYS9tRjJtSkJLOXRuTTlUVS81TUdXeTN3cjZq?=
 =?utf-8?B?enpHT2dkaHI4Ym5PVUUyWFduVnBqZzFacHgwR1plUGtYMmxyZytod0p2R2R5?=
 =?utf-8?B?N0pxMDVkNW9KblM2RDA2UkZEMWxoaFhmWGZseE5FREV5ZDEvVWlKMHkwNXBr?=
 =?utf-8?B?Q0Q5QjdLNVF3NWlZbUQyVG1McUZxd3dMWDdrWHUxK3ZLYUlhYkNPTVE2TDBn?=
 =?utf-8?B?SFdaL25qazVmVDJpT0wwUFRySWEyQ3VMamxOOUJzM3BrRmdEVDBHOGNZem5s?=
 =?utf-8?B?OFM0b00xM3JISTYwbU0wWUlidGpIQ01iTWZIcytnWFJoRjFLejF6NG9hRnU4?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ffd2e4-edb8-4283-cc4f-08dc4d4aeef2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 04:12:21.5112 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1wmoLEP9T2qpcokXJAz59UFhkyM8XnHxpWMVXzc4OgZMq79M90OJ+/LV/vuBN2dE4BR7spoalapL3NEgRQ2+W6JMCNh16VuuDkKi1b1Tv90=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5954
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


On 3/25/2024 8:47 PM, Jani Nikula wrote:
> On Fri, 22 Mar 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> LSPCON can be configured to LS or PCON mode.
>> Separate the function to set the expected mode from the lspcon probe
>> function during lspcon init.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_lspcon.c | 47 ++++++++++++++-------
>>   1 file changed, 31 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
>> index 1d048fa98561..62159d3ead56 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
>> @@ -240,18 +240,40 @@ static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
>>   	return true;
>>   }
>>   
>> -static bool lspcon_probe(struct intel_lspcon *lspcon)
>> +static bool lspcon_set_expected_mode(struct intel_lspcon *lspcon)
>>   {
>> -	int retry;
>> -	enum drm_dp_dual_mode_type adaptor_type;
>>   	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> -	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
>>   	enum drm_lspcon_mode expected_mode;
>>   
>>   	expected_mode = lspcon_wake_native_aux_ch(lspcon) ?
>>   			DRM_LSPCON_MODE_PCON : DRM_LSPCON_MODE_LS;
> You always need to consider the functional changes when aiming to make
> non-functional refactoring. This postpones lspcon_wake_native_aux_ch()
> until after the probe. But the name has "wake" in it, and you're no
> longer waking up as the first thing. Smells fishy.
>
> Git blame leads to f2b667b658f9 ("drm/i915/lspcon: Ensure AUX CH is
> awake while in DP Sleep state"). You should read the commit message.

You are right I indeed missed this part. The lspcon_wake_native_aux_ch 
was there for a reason, which I completely overlooked.

Thanks for pointing this out. Will take care of this in next version.

Thanks & Regards,

Ankit

>
> BR,
> Jani.
>
>
>>   
>> +	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
>> +
>> +	/*
>> +	 * In the SW state machine, lets Put LSPCON in PCON mode only.
>> +	 * In this way, it will work with both HDMI 1.4 sinks as well as HDMI
>> +	 * 2.0 sinks.
>> +	 */
>> +	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
>> +		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
>> +			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
>> +			return false;
>> +		}
>> +	}
>> +
>> +	return true;
>> +}
>> +
>> +static bool lspcon_probe(struct intel_lspcon *lspcon)
>> +{
>> +	int retry;
>> +	enum drm_dp_dual_mode_type adaptor_type;
>> +	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
>> +
>>   	/* Lets probe the adaptor and check its type */
>>   	for (retry = 0; retry < 6; retry++) {
>>   		if (retry)
>> @@ -270,19 +292,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
>>   
>>   	/* Yay ... got a LSPCON device */
>>   	drm_dbg_kms(&i915->drm, "LSPCON detected\n");
>> -	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
>>   
>> -	/*
>> -	 * In the SW state machine, lets Put LSPCON in PCON mode only.
>> -	 * In this way, it will work with both HDMI 1.4 sinks as well as HDMI
>> -	 * 2.0 sinks.
>> -	 */
>> -	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
>> -		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
>> -			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
>> -			return false;
>> -		}
>> -	}
>>   	return true;
>>   }
>>   
>> @@ -671,6 +681,11 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>>   		return false;
>>   	}
>>   
>> +	if (!lspcon_set_expected_mode(lspcon)) {
>> +		drm_err(&i915->drm, "LSPCON Set expected Mode failed\n");
>> +		return false;
>> +	}
>> +
>>   	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
>>   		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
>>   		return false;
