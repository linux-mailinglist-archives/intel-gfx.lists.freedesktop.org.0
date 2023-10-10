Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E7A7C4376
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 00:07:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A52E10E3EA;
	Tue, 10 Oct 2023 22:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D27FC10E3EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 22:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696975637; x=1728511637;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DC92YXSXTRJOSAbtHTGx9VmzlRFkwn2gRs0ac2bNMBc=;
 b=AV9L8k8M3PrfDualv8w343iwHwPjt8J1L2BxbDQiJW7ACoi/P1t/m1UX
 HwTHKl8UrK0sUokuEwMrfFwOegcSjJFW2GHS40OrdGPB1fk4qSU0lOOYU
 Ll40GJr/I9d52j1tmc4sAVZ6MROMxWybPZosn4CEjEyPUgfmbMWX9ObLT
 JFfi/oMg6TnCQusPGw8K2MedJ3mgQwLVhfIf+came2IJvwcbR4FHm2hX9
 WiBMhiXrvUjiZOA0bLq60yvjmUCfFG41uet/sueWvq22cEZCoTLKegTMp
 GkHLoCi6NGO9NyVQ+ejsZDeoUzKrmaL6YxQCjgx5wuX16DKRfCj1CGAcM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="387357618"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="387357618"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 15:07:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="730257193"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="730257193"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 15:07:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 15:07:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 15:07:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 15:07:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 15:07:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hzv2xSm73qV7YtkNsdo1FS4Xfr4ChdEEKh8atSzX9QEyR6OL7soHh7RP2TtmO0SGmQRQmbTUPe9A1TSHWf3N2MoDSmrUWYByUwqnTTWNxiCn3IshEXDu/NysMNab9xteYdEQHglIfipdghYOaMpAr1GjhbhgANDdu2BC5G11S9GXJBcemsgNNYZ0cz5QhlrSmgiGokL/vOXgmbJEfm1zIZyXTSbDxH4SW5WScRZXL8UdFaQpfrNCVgRM1bFPyEo+4iLK+tUcHtMUC4Qi1jkt0nxWuE/IvP6ueTBhp/RN3+srEwTG+ok29xRQnGm2CnRHNNx7AJ0JF1+dibM+TO2L2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B7aTEKrycsXdC1p0hxqbHMfo2eKJNAfAEQLVIxsBQFQ=;
 b=bI7UMLnxoswM1oJlDLDAyQp6YGDiuLTJFiaIfvFM0v5aAboIxPfs75VWx5Tkax3uEZ7ZZ5D6Y1G/GrGyVGsXP5N9K6L3kxlvRXtyByA+N8fQcUFTHYymkg05D3+bHwKhp1anEedTXbNTKgKpB0Q8N/MFFXRkbHFDAECd1DJCScmGKtiEv7qj8W1R8i0LVTzSLpYCV8VQZgp22Rpy5MLLbWL6DoiW4avXseXBJXuzbUlr3OY5Uyrq0tVVdUb+Jf6IbV1JSdiYc2HmY2QL0HCPgqw7nwUsJ1pYCyGaT8/IB/Z1IxsOiZEy4ajFqItCk1jCOf+NxdM2bpkQI1A6YPfmEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA1PR11MB7129.namprd11.prod.outlook.com (2603:10b6:806:29d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 22:07:13 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 22:07:13 +0000
Message-ID: <59f5dded-51c3-4151-9cc9-5578533162d4@intel.com>
Date: Tue, 10 Oct 2023 15:07:10 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231010150244.2021420-1-jonathan.cavitt@intel.com>
 <20231010150244.2021420-7-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231010150244.2021420-7-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0270.namprd03.prod.outlook.com
 (2603:10b6:303:b4::35) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA1PR11MB7129:EE_
X-MS-Office365-Filtering-Correlation-Id: 728d4813-6135-4f0f-5278-08dbc9dd41d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lG6pUH+2kBXl9EEhEy+CTNvMf7Uu0OGqNtG28qSTMwtkWkXyoxicSsepZAVdRoVtL/mTejMw9WA13QsaJ44OhrAV6DmJ+I3TkTjATddPuTBccVluYyQbvzH2bDzxWa1ETHiq/xKL/e268929U6CWEEL+muNfqk8Ag1IrRWBiyMBiCw5dqKzpaYKBSqkw1qT1CZTXKOSybMkhVpf0+t9tr97to5IVbsL/kQiVsF7u7tKr8bCCvVmTuK9ME5OqesnyRSYEsRCGMBysGlImASOd3TcCtrSPwyenKg8+p1F5IT3oxs0CSgrn04gmuv6tvcz/Y2PLfw6aKFt9NxLQU8/UENGg6Jp/lQmeYVJiSL1xIj5bSQOo97p+VqZeyhh5ZFrOeIs16bAixeFx3y3k0QuvApMEfW8VnKJxQlnVW7tFzHSmagragBUKPEZCGL4sJuW/MhriXw9heJOln7H5IZXG7IcYJOcL2l4JjVKmpaYkdYHR9C5mznZWMMeayGul72tvME89ubFH+I2oiZg+jwDRsq3K5YUnTnx4PM6IxHEMTN1Nc06t4KUg53QaXQaA/IU2T7bJxyFBzuOinhUlzdeITWTh4SnB4Aj0y3my3J5loX81rSfY9bGklLldZI8cb8dY9a5kH7awHJAleKLBBCCG/A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(366004)(346002)(396003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(31686004)(26005)(2616005)(53546011)(86362001)(38100700002)(82960400001)(31696002)(36756003)(2906002)(478600001)(4326008)(8676002)(6512007)(6506007)(41300700001)(5660300002)(83380400001)(66556008)(8936002)(316002)(6486002)(66946007)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjJpMC8rWW11NTRUbVNyWWFQVFRmaE4xWjlQMzFZZS82T3FkK0tubC82bUVQ?=
 =?utf-8?B?S2MrUUNRSFZuVnlBMkVhQVNlRXRtaGlJZEswdHVRSXZIWjVXM1VzWU1vckdQ?=
 =?utf-8?B?ODVmbUE0Q1JYL1h3R3RFMkRVVGVCdGJ6bXhMUm5NdjJ3NHdQT2Z1aXFUTGtm?=
 =?utf-8?B?Ky9EWWNzdlYrMy9QRm1mUkpyZ1JJY3hvRTRueVBCcWdhcnhHNTNYY3NCb0dL?=
 =?utf-8?B?bUNYSnJsUmE2d0cxbG56U2JwVlhTUVRIUmFad0FWYlZxeFFRSjliYlJUVzhT?=
 =?utf-8?B?NC9PU3l5TjVBbi9RTUJHMm81N3FKMklJajhVbDl1Q1NCY1FQZWFmcVRlYUFG?=
 =?utf-8?B?Sys2TFl6WmUvSWhucysyZWtaOHNjbkpKQzZsNXNERU9YRmhTSDBHcUliTWJE?=
 =?utf-8?B?a3F1NStrQ3FkVE5ZWFZpeXVaaVFIVkVzaW9TR2s2WU11TDY3VFhFOGVRL3hV?=
 =?utf-8?B?WUJvM3dQRU1hakZtbWdSKzlIT2gzZytOY05sUCtkOWlxcXBCajNuOFhNendV?=
 =?utf-8?B?QXpIOHNwYm9lL0RhN2sxMGdOVjhIUTQvakxmZ0V5ejRtTENFWVBma2RaT2tB?=
 =?utf-8?B?RlF4bDFXZXlrMytaTmRHWDNrMVRyQTJtc3hTYVNZNkMyVU9ld3Nkd3RJclph?=
 =?utf-8?B?elBmeXBrcTd0TjNFLytUakZrTjlMYUV6V3gxVmdwWDZuNG9CZTF3a3B2YThv?=
 =?utf-8?B?VU44Znc1RllrSnlhUC9lNlpBS0RMcTlnM1Q5MmliVlh3U1F0MVIrcmNRNkhv?=
 =?utf-8?B?TE9YYTdMRmVrdGZzYW9MTmw5MTVEMjVEcUsxSDRwbWhjN3h1Yzh6cVllZ1Az?=
 =?utf-8?B?WUs1TXpxcGNQYUZzL0N0a2RUcXZmV2pDTnhYNXJXMWxST2VyeHc1MUtjbWt6?=
 =?utf-8?B?YmJFSWpEald0bXA4YXcwMWF1MFBOKzc1UENhVklxanNqQjRyV3ZDdTVCd21v?=
 =?utf-8?B?WWpZUkJvVC8rZVQ2c3JiUXFGSlBlL1MyWXRSQ0grNzlQZkw5WlIwMWN5N05C?=
 =?utf-8?B?UHk5cnY3NU52WDBxVi9JTlVxWHV6cDlhb3pTUmJTSnRkTG1TTlpNa24rWEdL?=
 =?utf-8?B?MjB1Q1hQK3FSUFljYkpHVmtMRGwycDZkTlNFL1dvVkRqWWNSY0tsdXpabEFk?=
 =?utf-8?B?TXNMcGdZR1YwMHNDUVJjTnRmcjBJYitzY241bDMvOVVoenRmZDZmUmEra1dj?=
 =?utf-8?B?VnVsMEIwMzY0R0pQM3dnYWl5MVcrMHdqZTdsTmpwV3U5K2I0QlErMWJMWEhG?=
 =?utf-8?B?bDJLYTh2R2N2SzE3dURDRk1TRXF5L1QxLzkvZjg5VE5UeXBJcnpEUVhVNG5z?=
 =?utf-8?B?U3JEeElERUZ3UFM3RzBvV1F6a253ZGQrZEo0ZHpncm9iaGh3VE1KS091eGNU?=
 =?utf-8?B?cEVjaDVxWC9jL2dScEk3Q0hRWVVBNytOU01yNFdxS3BER2ZUb2o0RC94L3Ix?=
 =?utf-8?B?L1lXaC9id25DM3R5ZnplandaMmJMdlc5dXBLd0lKcXY4WGU0V2E0ME9wWXdv?=
 =?utf-8?B?dCtvY01pUW1HWEdDSmx0WkM1YnUvODBoYWw5ZlhSNGNVSExBRkdmWis0aVcz?=
 =?utf-8?B?Q0hFRExoMC9FZHZSY3l1a0F6c1g5bnhFdjg2NjFQQnl3UGRDdXhScVhnUUhD?=
 =?utf-8?B?bGozTHM4bmtjUEpVRk5QblRUd0E3SUJOd2c0RERtQi96UE13VHJtcFZ2YkxQ?=
 =?utf-8?B?MG5EMS82KzRiQ3RXNlpndmpnNWZuSitLaElJdjQ1SlNrclBPa2NLR1A2TXA4?=
 =?utf-8?B?M0NwQ3M1eUl1NGdtaE9Kc2FsRXlBWngzMXpPSEhiTVlBWnFmRW1BamIyTmY2?=
 =?utf-8?B?aDNnNDVjQkZWbk8rbHUvVmZWcnBEOG90MlZSSklDeUQ5WFRXY21aa2hQVUV6?=
 =?utf-8?B?clBJQmlYdEF2YWdhVjQzVjVVZmIwY0xLc0haUEhIR0ZmUm5BNEhUbVBsNzFN?=
 =?utf-8?B?VUdtRlkyblVpUm1JMFU0N0ZmRnc3cGh0aGwvTkh0bXlNb3FQQWlWZkJndkpM?=
 =?utf-8?B?RTUyUWZBdVZkTlRJS2hSeTB2U2pZeHk2bnplMGNnMVhFUUoyWlExTGhUV0pJ?=
 =?utf-8?B?RlJrcXRXdjVEWVBEdm5sVjhLZEx5em1kTy9UK3dMM2lSa1Zqc0VwK2JhUUxI?=
 =?utf-8?B?T0VWeGxCV2JCSTk3UmtYbEdlRVZxMldhNy9JU05EbzBSNk5qK0gxMXhTTElr?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 728d4813-6135-4f0f-5278-08dbc9dd41d5
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 22:07:13.4166 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2oXjunF7Vq6fYwXQmK/xHyfMvwtDBYF+qo1NYIA6RX2ARFTpUYfWYvVzSmswAIUOY0w+DumAc6YwJqW8MJKHilSdfTEfWWt1d25QDxa1xt4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7129
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 6/7] drm/i915/gt: Increase sleep in
 gt_tlb selftest sanitycheck
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/10/2023 08:02, Jonathan Cavitt wrote:
> For the gt_tlb live selftest, when operating on the GSC engine,
> increase the timeout from 10 ms to 200 ms because the GSC
> engine is a bit slower than the rest.
>
> Additionally, increase the default timeout from 10 ms to 20 ms
> because msleep < 20ms can sleep for up to 20ms.
I'm not seeing why that is a reason to make it always sleep for 20ms. 
msleep is not guaranteed to have any kind of high accuracy. It just 
vaguely guarantees to sleep for at least the time requested. The point 
of warning if used for small values is to check against the case where a 
larger sleep is a problem. E.g. if you must sleep for at least 1ms but 
no more than 5ms then you need to use a different function because 
msleep might violate that requirement. But if your requirement is simply 
to sleep for at least 10ms and who cares if it is longer (as 
demonstrated by the bump to 200ms for GSC), then it is fine to use 
msleep(10). Maybe it will waste time and sleep for 20ms, maybe it won't. 
But it's not a problem if it does. And if it doesn't then you haven't 
wasted the time.

John.

>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_tlb.c | 11 +++++++++--
>   1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> index 7e41f69fc818f..24beb94aa7a37 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> @@ -136,8 +136,15 @@ pte_tlbinv(struct intel_context *ce,
>   	i915_request_get(rq);
>   	i915_request_add(rq);
>   
> -	/* Short sleep to sanitycheck the batch is spinning before we begin */
> -	msleep(10);
> +	/*
> +	 * Short sleep to sanitycheck the batch is spinning before we begin.
> +	 * FIXME: Why is GSC so slow?
> +	 */
> +	if (ce->engine->class == OTHER_CLASS)
> +		msleep(200);
> +	else
> +		msleep(20);
> +
>   	if (va == vb) {
>   		if (!i915_request_completed(rq)) {
>   			pr_err("%s(%s): Semaphore sanitycheck failed %llx, with alignment %llx, using PTE size %x (phys %x, sg %x)\n",

