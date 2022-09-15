Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5C65B916D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 02:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AAEF10E153;
	Thu, 15 Sep 2022 00:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD75110E1A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 00:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663200300; x=1694736300;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=U5gcqLiGrmNJd0LUXZNYAeE2LlnSGsZ5JTz4oJr6d/U=;
 b=G9gpEFJBmjBahYc5IodIMGRVh9fxadT/zo/MlO/RSyxnLR3LvRQSIZWE
 0jDOrTPzL2+deszjg+6m+ln5bvIX1/HaWIw0x/POHEKljHlzvA+f8oIYx
 Egx4id4em9w1wOxtVbMqApCt/CJ1NufQvkjdUu8IrqIy9b5X1vr0NKd5q
 YS1ltrJt+S4I1DgnA4cZcOXGPLW3D9gMy2LP+ssjI7uai7DxAtGHPSbkg
 sdIFQzAr5vg6NJIPeuCLo/3ESf4VrM71jdOP46i52qK7upNWvZwPyBl/E
 PYSqMfQufv0ro141lNxY6JuYVV90RzhKyhxD6FgySmlqL3o9jKKH+hiBy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="278958068"
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="278958068"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 17:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="617057617"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 14 Sep 2022 17:05:00 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 17:04:59 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 17:04:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 17:04:59 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 17:04:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fxcFFeuGREQ3tfFAJbgSX/2JvrFIX0RHAlMqvluBwHeBEDSm5nnD+wRhhFgPiAEkmotx6/unSdOe+KAAqntLgNyrGmVHuCnpEbk7q6ny8qAjvutTXOAJJCAwxY+YW2j2dYbFu2qF0qKP05iNJM/eQYLLPaDUau279P4h+5dMXbN0kK1WdVcO2k/Z4AocpGH4FVtT9n55ArXm3aYq98otZ4C9B1TuB576gmQvvlNE4tvsAIl9xcEotM9/vujfWT+XJmZe155HeWuZ3naDJMp4FjfCy+qoqcqvIKatG5Q8mPnhYB8iwRU6lixkvTNELVzqsWebB79FVorHrOTbpWjCcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lwKa2CYEb2UYz+kfLaGBQZTdPA3HtNuVkfMo4MpG6ec=;
 b=YSfgEiXz1UQytgIQ7jSLJkgDgMVTDg2/u4t8l7FwEv35KiN1lcsTjUef3FYcaxeoefNjcZHGXzCh9FgbaRIt2RuHPUu8mzt4qIMxO3mf4wE90SOuS0toQRId4jAny1ovQ63bdHXSH6oRy1PnVLnThPfc7GBk7VyJkQUoNz2RVGbnxBWMXiZRZfYsyRyTKYxgO6QpE72ep9Kk2nYkMMtMtq2w+l69zzX9uyzZAGFR6D01au894N1kV4FBJLmoRTNdq28GeW0hPuj9we7AFZsiUroWQa+/RBZl2UTk+P5rpFYTD97t6eScHAZu1zQph+kKcXD9D7FmVXWllybt1I0q1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH8PR11MB7045.namprd11.prod.outlook.com (2603:10b6:510:217::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Thu, 15 Sep 2022 00:04:57 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 00:04:57 +0000
Date: Wed, 14 Sep 2022 17:04:44 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyJsHLCLkVZjjVeX@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-6-umesh.nerlige.ramappa@intel.com>
 <87sfkuerjn.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87sfkuerjn.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY3PR05CA0060.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::35) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH8PR11MB7045:EE_
X-MS-Office365-Filtering-Correlation-Id: 45f5d57c-71b2-4cb3-8b1e-08da96adecbd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9or3icikmhLgKlErAASSP5jJFp11yxSq8RplUzu8mUEWy1zDE/t88DAGq4IBc8BNrMn/Q1P1QB/H4K2wYyzSEiVHzesc66Sf1TjDtLSjr+7kNuMDP8aFWJKXB0QilhQzaRS4XdH6lb1SSpyvBAlmsj7CSoIpU+bMPLyHPWMacNvoGHIGf81Cwdz+NcTjrZpYv2QdVrxmmAjz3w9iN80/aFrt0y0+QMtPrAQoSmtkPyiwHxGnHYv6pm2d90C+bMjTZFIiYaeaFWjhXSiHYk2FzudryyXQDd58iN2fU3v+qnFs00T24Bd+dthzJMRivmaq4VDiSgISivZhCVmdM79Y1JTQS/gXgmCDzz40+wzGd2gpAx6pY3vlw5rHtLp8zKwDg00uxw46yGUO4M4ErM+zqavftFF6BVOwKLF/I7uMOMtN8z5XGKG6IEDJTkxTrEFhoKHZMu7UGwaaWrV/bxWs1qrQ2c7kKUEBs6Hi4NeBTz48yEfrKkc+jKaN9Zx1tvll1muZy/E4GgABROgi4lMIiStqx6tgI+LfDxcSeQfF2pPREk9XzfETQPAi5LeCVRHnMIGhb+eenQt99Y3BH+m4PK/y0CGsA1TGUsfmgFLLV8vDM1gADiGMZsyLxywKJHxhEJ25BjzsTlmkefUmM27OA7wuO7ZRVgqBjkVabPsyspBEsuxnpQkuz8DoIF6yX30/wDM2OFmGGTFmhxKkXoQDAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(376002)(136003)(39860400002)(366004)(396003)(451199015)(86362001)(316002)(33716001)(186003)(6636002)(9686003)(6512007)(83380400001)(4326008)(66946007)(6862004)(8936002)(2906002)(82960400001)(26005)(38100700002)(6506007)(8676002)(107886003)(66476007)(66556008)(6486002)(478600001)(41300700001)(6666004)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWFPSks0SGVEMDNPZmoxR091QkZQb3dVNVltd2ZhOTlJSVhoNml4UENLRkhY?=
 =?utf-8?B?M21kRUIzSVlRelNFTWFKSlI4RmQzWXRBeS9lMjJzSm13cjU3d1FOME5BUTJw?=
 =?utf-8?B?NGRJc1hSM2ZRNGpzcXJYUzRCL2hhcDc1WTBRTW1PTzk5Wk5uTFRBUHRoSUhr?=
 =?utf-8?B?ODliZTRpUlFTNWRVd0c0cTRHSTJSdDNWUVNMcE4rajYxd2lWT1E3dlJjZCtC?=
 =?utf-8?B?UDlBYzF0aFRXeHNQVlBpckt0TFh6NEZBZ3J0OHI5Zzcya2FEUmxYQmFDVldO?=
 =?utf-8?B?ZnVkVldPbFVDSk9vL0V6QUJXcCtJT2JxWUNpMFRMTWlhbGRwZFpTMGI3TjlT?=
 =?utf-8?B?TEZDUzFWcVNZeVN4S2RxTVAwS3Q0cXlJdFY2UlhaMEQ2MCtKb2cyQUJWaDRh?=
 =?utf-8?B?aGxwa3hwbHhTejV5VXF0Y0xqZEtOL1dVcUUwY0JaeE1SdWlCT0pWQUhTMFdL?=
 =?utf-8?B?WTl6Mjh3M0ZKWUVpYTlMeUtjdU4wcjg1NGlTYXRrSnRSWmtRNzhlQ3Qzbm40?=
 =?utf-8?B?NVp5OHJ4QkFJNTNybGdpMGxUVlZYRHVEbVRXdEhENGU2R083ZHdTNTRta2or?=
 =?utf-8?B?SS9vbHE1aS8vZ0E5eHk3MkxadHFZclk3TW1CTkxxdjAyVFF0VFVWK2FpUGV2?=
 =?utf-8?B?WGR2ODhiNktGdlZES0FRa25FZ1k5U2NBT3lXQytyT2NzTFBiMU9NREtYT1RM?=
 =?utf-8?B?UFhHOGg1S0ZQTkxqNGJwL1JTaWtXejdPeW9WRFVYeWZMbjFGaGFrdndBVU9Q?=
 =?utf-8?B?VmZBQXVZM1V5STFwcHJ2ZUlTTWZjd2d3ODZVTDlDeHJEUFRXcjlBSVZETnNy?=
 =?utf-8?B?b04yL0NkaWg0UWpYUUxkWHRhYWFvM2NKbGxOVHhCU29JSDViUG03cHo1QU1G?=
 =?utf-8?B?YTM2d2ZHZThVZWhZK2R4T2ZhVjIybVl4S0ttQzQvWFFGV014QnRkRVJrY2hn?=
 =?utf-8?B?OWlOVlMvYkswT295WGNVd054cW1EM2UwZjBDVXdlWVhXaW84SEw2Wmo2TXdG?=
 =?utf-8?B?MFRYSmZObWhRN2N3R3ZSblFZWG1uSDJkeVlFc3pXRmR4R2lYdmlYd283UkRT?=
 =?utf-8?B?UTJCUlJBSW9IcEMrOVhoVk8yK0VqVEdUV3lxcVU5bU4rK3NIaElUY1YzVkhz?=
 =?utf-8?B?WlViVzVZZTcwVjBVZFhKcWNkVlNVMDE4WWlxcGthVnRGenRHKzZFamJqQTFG?=
 =?utf-8?B?RG5CaUFlUGo5MDkyaFRvSHBiSUhqQjIxNFRvRXhZc1RQalNuMnJ2YXpHVTVF?=
 =?utf-8?B?LzBQckwwZ3VNN1RXNm5zSU9GdWtLQ2VHN0NDWUtwa2dUT0hTMmgwZVVKV0w5?=
 =?utf-8?B?ZzQ4SzNJZXlsbmVqQTE4ZWZvZW9lTTZFUmR2d21zSnlwSDhxMEEzSU9iaE9j?=
 =?utf-8?B?RFhKNExtSEpZOGx1b2lTaWhJUWFuWDRLUi9jcDZGZkNobEszc2ZNNDROVy9L?=
 =?utf-8?B?eS85aERsWmROVm5IdlZYY0tjTDkyQXpJbHE4ZGZscDVpMmtqREdwVlBzaFBo?=
 =?utf-8?B?aHJxd3haem9TbVo5TFFTYnNFRFpDdzYxbGN6dVc0TlNGVmp5M3FVWVhYMEVT?=
 =?utf-8?B?eWttM1k4UUxVUFJ3Y0cycFBRVDkzelFFdG1SY1QxRVJXZjQ2ei9XWGZpR2FN?=
 =?utf-8?B?bzdtYmhTdFJDaGVXK3JBSGFqUkl1WHRNc3ZzMkR1UUU2eVNDLzNvUGhvZFJs?=
 =?utf-8?B?eUZITGJtSS83d1ZHbFYxK0xBWmRZbUFObkFUYVQxNjdQSGRjdU4vNUtLcHhS?=
 =?utf-8?B?ZFlkcUFkUTV3OFUxRHFsbG5jWmZielF6NkFJQWxkbzdER2NtbXhIRUxiTUdx?=
 =?utf-8?B?ZGZxRjFEQ3NQWGlYT1VGU1hXU0NVRjlSTGFXSndBUlVKZk92OXNaVkUxRnkw?=
 =?utf-8?B?dFNIb2k5ZE1ZbjlZRmZNWVpNRFl2bEVleTlOKzdDU1hySGtORDhoZGdyM1pr?=
 =?utf-8?B?bEFKMHAxWHZvQjlpVVhYcHhuOFBsSVRBQWwrdzdwVWo5NCtHRXNkMEpNZzc5?=
 =?utf-8?B?eWhzTCtLVkhjdjZkYWVRWnUxZDdqUlJXWE92YmtBclNpRHdNYk82dzRWSGlR?=
 =?utf-8?B?M2REc2hXMUkzUWxVc0MrNGpZeU10UkdCSER6cDdZWDZRK1AxUnNzdlZJbmdZ?=
 =?utf-8?B?b0RjeGl1SWkrb0xza1cxbCtNK2RtUWY1MGRKaDlFYlFJMXNuYzNwRTV1VEJC?=
 =?utf-8?Q?UvT8XNVbtGerbHQ08pyka+4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45f5d57c-71b2-4cb3-8b1e-08da96adecbd
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 00:04:57.3262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Chb0UoKy0aqyJOlHCp5y+Yl9KNWyWRTgAsbH+FsoVHAIva4jvVAo78trtZciuoCvC6fW+DkmHf7pb6BGl+m/0ou7Gc4sArNSpJ73WkPPXZw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7045
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/19] drm/i915/perf: Enable commands per
 clock reporting in OA
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

On Tue, Sep 13, 2022 at 05:19:24PM -0700, Dixit, Ashutosh wrote:
>On Tue, 23 Aug 2022 13:41:41 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> XEHPSDV and DG2 provide a way to configure bytes per clock vs commands
>> per clock reporting. Enable command per clock setting on enabling OA.

should be: Enable bytes per clock setting
>
>What is the reason for selecting commands per clock vs bytes per clock?
>Also probably mention Bspec: 51762 in the commit message too.

It's a default configuration used to interpret the A36/A37 counters here 
- Bspec: 52201

>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index efa7eda83edd..6fc4f0d8fc5a 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -2745,10 +2745,12 @@ static int
>>  gen12_enable_metric_set(struct i915_perf_stream *stream,
>>			struct i915_active *active)
>>  {
>> +	struct drm_i915_private *i915 = stream->perf->i915;
>>	struct intel_uncore *uncore = stream->uncore;
>>	struct i915_oa_config *oa_config = stream->oa_config;
>>	bool periodic = stream->periodic;
>>	u32 period_exponent = stream->period_exponent;
>> +	u32 sqcnt1;
>>	int ret;
>>
>>	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
>> @@ -2767,6 +2769,16 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
>>			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
>>			    : 0);
>>
>> +	/*
>> +	 * Initialize Super Queue Internal Cnt Register
>> +	 * Set PMON Enable in order to collect valid metrics.
>> +	 * Enable commands per clock reporting in OA for XEHPSDV onward.
>> +	 */
>> +	sqcnt1 = GEN12_SQCNT1_PMON_ENABLE |
>> +		 (HAS_OA_BPC_REPORTING(i915) ? GEN12_SQCNT1_OABPC : 0);
>
>Also from Bspec 0:Unitsof4cmd and 1:Unitsof128B so looks like bit 29 should
>be set to 0 for commands per clock setting? Or I am wrong?

I know bit 29 has to be set for DG2. I think the commit message is 
wrong. Nice catch, thanks

>
>> +
>> +	intel_uncore_rmw(uncore, GEN12_SQCNT1, 0, sqcnt1);
>> +
>>	/*
>>	 * Update all contexts prior writing the mux configurations as we need
>>	 * to make sure all slices/subslices are ON before writing to NOA
>> @@ -2816,6 +2828,8 @@ static void gen11_disable_metric_set(struct i915_perf_stream *stream)
>>  static void gen12_disable_metric_set(struct i915_perf_stream *stream)
>>  {
>>	struct intel_uncore *uncore = stream->uncore;
>> +	struct drm_i915_private *i915 = stream->perf->i915;
>> +	u32 sqcnt1;
>>
>>	/* Reset all contexts' slices/subslices configurations. */
>>	gen12_configure_all_contexts(stream, NULL, NULL);
>> @@ -2826,6 +2840,12 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
>>
>>	/* Make sure we disable noa to save power. */
>>	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
>> +
>> +	sqcnt1 = GEN12_SQCNT1_PMON_ENABLE |
>> +		 (HAS_OA_BPC_REPORTING(i915) ? GEN12_SQCNT1_OABPC : 0);
>> +
>> +	/* Reset PMON Enable to save power. */
>> +	intel_uncore_rmw(uncore, GEN12_SQCNT1, sqcnt1, 0);
>>  }
>>
>>  static void gen7_oa_enable(struct i915_perf_stream *stream)
>> diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>> index 0ef3562ff4aa..381d94101610 100644
>> --- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>> +++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>> @@ -134,4 +134,8 @@
>>  #define GDT_CHICKEN_BITS    _MMIO(0x9840)
>>  #define   GT_NOA_ENABLE	    0x00000080
>>
>> +#define GEN12_SQCNT1				_MMIO(0x8718)
>> +#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
>> +#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
>> +
>>  #endif /* __INTEL_PERF_OA_REGS__ */
