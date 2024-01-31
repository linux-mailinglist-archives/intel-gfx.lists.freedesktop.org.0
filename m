Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E428435ED
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 06:16:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E38510F284;
	Wed, 31 Jan 2024 05:05:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D8110F1AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 05:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706677538; x=1738213538;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qDWB49akuNJ8MopEgqIifyzE1DTzsxEXBRZTJQhYDCk=;
 b=jkf7QlOUU5pGaJuLJDNHj5bYA5AxDbDq3rrpHZ1975O7axkBdPX4ydzc
 qd5PcLed7Thi9rsjDUfzfUKUAb6m8p6T6i93p/0z5lsnYTcOqvaSFyOe9
 oJiG6ePCpjDtjR1fscWntuNFWMK36U9Hr3i1ljXrzdiFul88WjzOytaD9
 rfjMEqmMOrZLDQOlSjPm/otLTBWlEG2s9pzrL7EVU087flEmE41qzYCVv
 EDDYXkf3hE7PJupZlJ45W7kkkeNfy4VQ2A1PQEjv97YiZYnD8gU/0ouTN
 DZ+XOrJAdyJGrgGyevtjpQgK0u4F1H+GrwxXp+vwVxrrdqMWEo+TKu1Zi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="467735343"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="467735343"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 21:05:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="907755580"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="907755580"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 21:05:36 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 21:05:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 21:05:35 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 21:05:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LmkjAweONCGWDdRuzVK4t5TNJ1x9rzD6s2fL7eJfSrIXxNSl/Wb1HNERqCXJPA8iQt6wjpCVAmtGC6YuLwnWhWVppcd+LgDq3OYmHLG2/YLo5bBYUMwSsvd+m9HcmBQxPES8Ce3MGJLH4GAHWNFbUgQtvtNxmgi26d//cXbgWqNDlU4UuiHsS+SA9Dm3IdIZ9CKFbscOtlBCmBS8CTkpXSKrt/BE7aERLuK/KPUa0rhuREmdcMgatKNTWs7n1tKODH2QZulUCcphVeE+j4QDZWOC/+66gEYrUIHmx/ZtRBWf1c3cqFycz7jvG7eINMxq2wwyWAUk8VYY38pG4Vudhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/UKRZ4HpJvBCdmYlpS8UNGvmO29EDwQaZR7Ut5lir48=;
 b=bBiOiYW5cgQ3inX1EVzKGo2PCFm7Lb6LxGxq/ewPLLfOzuXGq9wB3X0HND2Pb6y6QfDQNXq+QxMhy5QMeAuceEo4/OyIwx20LAZbwd7HH4Bwm+V/3lt7jqu2k7JB/H6bE6qn1N6L0b/N1m4fRFYzaNcAyjjjy4pUXj/B9q8ASzrYLgR3EhCnQKPnFw7JQ5Ke1vE6wqe1GhB337UEM2KxiGzws+8UkiCduw9XefeLjt4/6dFYS0COrHqpORCDpBowj88mU0ps0uM1yyhRscrOCqyl8ZoFg08LtjvQ5SeOqZiewGtS+50dljEisGvy4ahKIavJWwJlnnQ8pHN8KEUU5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4837.namprd11.prod.outlook.com (2603:10b6:510:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.24; Wed, 31 Jan
 2024 05:05:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.017; Wed, 31 Jan 2024
 05:05:28 +0000
Message-ID: <4a94cd28-0457-456d-bbcc-557bc59a1d34@intel.com>
Date: Wed, 31 Jan 2024 10:35:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] drm/i915/adlp: Add MST FEC BS jitter WA
 (Wa_14013163432)
To: <imre.deak@intel.com>
References: <20240129175533.904590-1-imre.deak@intel.com>
 <20240129175533.904590-2-imre.deak@intel.com>
 <03994206-48f4-4784-be85-fedacdded17e@intel.com>
 <ZbkB9NHc2cO5Te7R@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZbkB9NHc2cO5Te7R@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0203.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4837:EE_
X-MS-Office365-Filtering-Correlation-Id: 768b46d7-9e9e-47f0-c227-08dc221a3df9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cMOZ3/AqugrNvzD1vHAvh3d+ccyaT8UxvYrbOr2VRAVBWKTSQejYSiAzQgRfe1X5DnDIox+zzXFqvQUF5TYVOLIuX9gsGDlCWAJk5kNkyffgb/D7Ax4Th9bmgtomTopgEqQCtg6jJZ03pz+kVeQhzBnAQVo1Qqqol2YZ/pUWYjKBxz84giIIywG0A6x6RwaIj8xYCiH1Jeb/BwxjEJq/r+DGRjU9haoFwfjtNbaG0xvO0cnrDXpTO2+orzKpVFva0nHZ0SsZoFutNYAWoW74t7nAv4/InAPFTMZf1NL9VExXp2m6g9Wnf53pYr8ldYjPIToWWUF7RgJGO0FOTpqC1ZcKIBWjXqaSqrSb8nGzij9fIt5xUQ9v4dyhnBmzXqdRXCVQAMCNtjQbIba/z+ALwsXdtUWpGNKF7q5w5MxYVCTcTzoRcI3zxRQTLc4/fy4qBEMO39GT9XTtu4b32S89v5GYyzuE6UuT05Sal0jeUCKNDnt5oBp9rKTBV3cOiE0tSFb3PbcXPo69B/ccE9x087ZaYTGVAj2Ugp2PBN4myb1pSXPeaGzCyovARIPuGQXHyajN/VM60blPCSJ2vZeTZoE4N7vDShjXwW7jh4TzUbbfcZXwvY7JiFPztu/XhysdKBgDSQtaO1+Y/Kx0o47eWw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(376002)(396003)(39860400002)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(41300700001)(83380400001)(6512007)(2616005)(26005)(38100700002)(4326008)(8676002)(8936002)(34206002)(5660300002)(2906002)(478600001)(6486002)(6506007)(53546011)(6666004)(66476007)(66556008)(66946007)(37006003)(316002)(6636002)(31696002)(86362001)(82960400001)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmE0OTNlM0FRL1hLN2xsYjVycGZhQjNON0hpZXBlY0pvL2tFaEtEejRkU1A5?=
 =?utf-8?B?dm1WcWplY2Nmc0FRejFwbStHV2tnSHEranY4dWdxVUxwTFcwcG9qQWJiQVgw?=
 =?utf-8?B?enQvUEpjTHZsV2tVOGJsOFhBbTRTZ0VMbk1TN1Mwcm9tYVp4V0JoYVlQNkgx?=
 =?utf-8?B?SWNVSUFQRzRkeW1iS2tHQ2F5SCtLMU0rTGplZS81am1PK0xpdjEwVTcyZWQv?=
 =?utf-8?B?ZkJoRUR1M1grNkZLa3l1WnhkVnpXVUhsWUEvb25Tcm5wOEJsdTJORjk4RVdB?=
 =?utf-8?B?bTFvWXdJa3J2RWRFbzlObkU3ZUNTZWxlUlNGSmFlMnBOYitUVlBRVXpwL0hE?=
 =?utf-8?B?VU9xQWp6WHRVUTFtQWpKTFIzSGxwUElqdTdnRU8rc2dhcWtLdklTMDNUUXcy?=
 =?utf-8?B?WjZHd1k4di8rd3JhdVpUdEZKZndMTlZyY1drOHFDUTZrMnNsR0laYTdTWXlF?=
 =?utf-8?B?Ym5OVFI0UDdCdWlISXNlVzlqdGR0aXljT1UrNW10Wm1Ga0ZLT1hIbnRLVEIv?=
 =?utf-8?B?azYvdmZhOU82NVZNMTJ3LzlNVE5IQklhMUxrMkVub0ZlSXdrdFdxZTZZcVhN?=
 =?utf-8?B?SG45NDVmT2ZHUE5hcUUwblY2ZUlMU2Fjd3VDZlRZMUlWTmliU2ora2dqZ09O?=
 =?utf-8?B?RXkwSlg0enNXQUVBT1AyL3dMaCtFdkoxb3o5RVdCV3hKa2VqdkYyNDBHS0xh?=
 =?utf-8?B?d2ZLWmZHdzlqdDkzMVJEWDRKQXorWlFRZTVxNERZejhQa2NtQzE4NWVFWE4w?=
 =?utf-8?B?ZVVGbFhoM0JWMW5OczNnRWVoY1lMd20zd0pQR2RMaGNNNUd0TzlxaCtscTNm?=
 =?utf-8?B?emdOdHkrSWVsQXlxZm5hRjdLZGV2Y2NZcXFibHpNL1l3aDQzbG9SYWIwazJZ?=
 =?utf-8?B?eE0vU25ReGhKd1hlZ0N6NHdGeWowdnZob2pCQjljYnU1cFhKS09lTHN5M2RL?=
 =?utf-8?B?ai9RZDF2a3ljdTN4cGdOQmtBdnZUdnJWTU9vNkYzWmJqQ24yb3lPU1NpMG5s?=
 =?utf-8?B?WFlGcjlVOEt6MDFhWXJ3UDZBc3RyM1g3TmlCVDMzSnJDZzNSblFWOVJaWE80?=
 =?utf-8?B?alJyZkx0M21nNEdRbHgxR0dXUzJCNCtnQ1FPSldnY3IxQk9lNE16UU5UUFZp?=
 =?utf-8?B?U1VMT2xrZW96bmRmMzNWcW1ZanVOOFNxeWRoRDFXS3luWmMvWlQ2ZTR4OXlp?=
 =?utf-8?B?VDNnWWVBdjRtV2h4cmJnOXFTaG8rc1hCVi9pZ082L2tYclJ3b2lpUFB2eW56?=
 =?utf-8?B?S2RvWFFwS1cxeWFqZUJvV0hHbVJlb1JPVUxYVGpkU2lJWFNqNm53R0VhRVhW?=
 =?utf-8?B?Z21OcGFjMzl1dUxWMEZKRmlsL3VlQWp4c1gvZWpzSTc4aXFkZG00bk9kalFR?=
 =?utf-8?B?TUg1MnIrV2I2U3Y2elBIWkIrZGplWnI1VGtGWThLeGtBdWxGdGh5WlBNV3l3?=
 =?utf-8?B?Ti94b0NKUEcyV2psM0xhNloxa3gxdFhVakIzeDA4QTBJWDQwV2FWT2UzOWxW?=
 =?utf-8?B?MkpzUks1TFVQS1ZuWUlBUnFXSGo1Nll5M1pGY0hDU0xVRTlmeFl5L3Vpb1I5?=
 =?utf-8?B?RTdpTldDMlRZaS9xYXZXZWdNSFZSY2xsUG9XTlROaTlVRlNJMGxBTUtUV3RY?=
 =?utf-8?B?dXRLSEwwY3ZVYnl4TUlKZ2ZKQjRuc2VPYnVzd0tuamc0OUZoMjZJODJnOWdy?=
 =?utf-8?B?Mjg1QkgyUG9nbWhYQW1xMm1UNXpWMDliMlVJRm5VeXM3NFM3Y3JiVWxnUHJz?=
 =?utf-8?B?RHdLRzNUTDRSNko0TzE2K25CWGowd0Vwd25RdmZhS3R5c1ZBS1Z3QVh0VVRJ?=
 =?utf-8?B?MEdvalE4UTMyT0Q2N2VGZno2bDBqUDBFM0hjMVZVNW5SUWdiaVplbEtkQ2I0?=
 =?utf-8?B?d042MVFodk1OUEs3UDd1QlJiYVJtazJqSHgzVGRmTmdtSWpRL1NKWW5JdHd6?=
 =?utf-8?B?UEorUHJOWFB5UjJWVFVLSFRsR2luNWxqTnNWWUdNSEdHS21oUENHK2VqalR4?=
 =?utf-8?B?UlBLeWtUSGhUcWx5R0tkVXhhRkcwVTl4U3FxdnRJRjFPeGZ0TGVPSWJDR2JW?=
 =?utf-8?B?MWVNVTVHMXhxbzNmV2t4UUtaQ3pqa2Nab3orZDB0MHBDM3RnOWpKRkpOdzAx?=
 =?utf-8?B?R2krSkp5RHBKY2gxN1NpWFlrRjFxb0wrZzQxSjJteE10Y3BkSUlOTi9CM25M?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 768b46d7-9e9e-47f0-c227-08dc221a3df9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 05:05:28.7434 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r7BCL0OpJa89+gWbzMzOxeEBYdWv8ZjVzqnjxPvFDJxyrf53geiRS8RYK2evjwtUNUuWWI2aqugabHuJc/RDDIvzIQ40ddJ9YsgLR8sZywc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4837
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


On 1/30/2024 7:35 PM, Imre Deak wrote:
> On Tue, Jan 30, 2024 at 07:18:25PM +0530, Nautiyal, Ankit K wrote:
>> On 1/29/2024 11:25 PM, Imre Deak wrote:
>>> Add a workaround to fix BS (blank start) to BS jitter issues on MST
>>> links when FEC is enabled. Neither Bspec requires this nor Windows
>>> clears the WA when disabling the output - presumedly because
>>> CHICKEN_MISC_3 gets reset after disabling the pipe/transcoder - so
>>> follow suit.
>>>
>>> Bspec: 50050, 55424
>>>
>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c | 24 +++++++++++++++++++++
>>>    drivers/gpu/drm/i915/i915_reg.h             |  3 +++
>>>    2 files changed, 27 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index 5fa25a5a36b55..22c1759f912db 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -1106,6 +1106,28 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>>>    	intel_ddi_set_dp_msa(pipe_config, conn_state);
>>>    }
>>> +static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>>> +	u32 clear = 0;
>>> +	u32 set = 0;
>>> +
>>> +	if (!IS_ALDERLAKE_P(i915))
>>> +		return;
>>> +
>>> +	if (!IS_DISPLAY_STEP(i915, STEP_D0, STEP_FOREVER))
>>> +		return;
>>> +
>>> +	/* Wa_14013163432:adlp */
>>> +	if (crtc_state->fec_enable || intel_dp_is_uhbr(crtc_state))
>> Is this for DP MST + UHBR and DP MST + FEC?
>>
>>  From Bspec it seems this is meant only for MST+ FEC case, unless I am
>> missing something.
> You mean not meant for UHBR? The register description is clearer than
> the modeset page, requiring it for both non-UHBR and UHBR. Windows also
> enables it for both.
>
>>> +		set |= DP_MST_FEC_BS_JITTER_WA(crtc_state->cpu_transcoder);
>>> +
>>> +	if (!clear && !set)
>>> +		return;
>>> +
>>> +	intel_de_rmw(i915, CHICKEN_MISC_3, clear, set);
>>> +}
>>> +
>>>    static void intel_mst_enable_dp(struct intel_atomic_state *state,
>>>    				struct intel_encoder *encoder,
>>>    				const struct intel_crtc_state *pipe_config,
>>> @@ -1134,6 +1156,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>>>    			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
>>>    	}
>>> +	enable_bs_jitter_was(pipe_config);
>>> +
>>>    	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>>>    	clear_act_sent(encoder, pipe_config);
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>> index 75bc08081fce9..67b7d02ea37bf 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -4555,6 +4555,9 @@
>>>    #define   GLK_CL1_PWR_DOWN		REG_BIT(11)
>>>    #define   GLK_CL0_PWR_DOWN		REG_BIT(10)
>>> +#define CHICKEN_MISC_3		_MMIO(0x42088)
>>> +#define   DP_MST_FEC_BS_JITTER_WA(trans)	REG_BIT(0 + (trans) - TRANSCODER_A)
>>
>> Should we mention /* adlp */ here?
> In the register description the flag is valid for other platforms too,
> even though it's only enabled for ADLP/RPLP.

Yes indeed.

Patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
>> Regards,
>>
>> Ankit
>>
>>> +
>>>    #define CHICKEN_MISC_4		_MMIO(0x4208c)
>>>    #define   CHICKEN_FBC_STRIDE_OVERRIDE	REG_BIT(13)
>>>    #define   CHICKEN_FBC_STRIDE_MASK	REG_GENMASK(12, 0)
