Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DBC5EABFB
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 18:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE21010E473;
	Mon, 26 Sep 2022 16:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B974110E182
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 16:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664208296; x=1695744296;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ghLrXfktlhDtuHC8hewSl7cp6pZEQmYIm0u1AumJpCU=;
 b=D0xw1PsJCFKmWXqslR40AUfbOoxXuN8A8zJI2RioPPYtEP1yfStHGhFO
 pNDmc7CUIc5SlXrpZfP6Y+foAZgh/F+F7Ir5/PLTCU9wPtrS9qWQHMTnW
 GdEaq/PURc3TN5JG1s1ksDx27CAupW3FiUzOlSszK1C4HOSo/9iS0TQhC
 Ktxu2H30d9OTrjvtzcrFRx2HhoXgpV5RsudfAO80x49lskn/Rhzxc3pQS
 gDwVlVt1RVwqB2MnsXdnBkAWmZhSsqrcO5n2rkHYp/FawgXNi/97HnVSr
 lNrCV2mlVQTxONU4n7Sot7fPd62uZXJOZA9oz4K/YyBLikOki2yIlBf1p g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="301968034"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="301968034"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 09:04:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="651878114"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="651878114"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 26 Sep 2022 09:04:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 09:04:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 09:04:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 09:04:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 09:04:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cmwFrcDmYThPmUAUqTD9VYldDGD1HdKxKZBnMZDouUkUAMOSN/+DCHIz3LyQTo7o+tHWoPTzXResTW/Vnj5Zc9Nsoqodq8wqq7YGakLwANuECCZLN4Qa+707kQ83WDasGljWY+4rQdpqxDTfjyQz9GCArCCz5/Air3vM+iQmgq/Pq8dAZqwCBsIUaKNDaUGhr2B2zTGvsaYQfEXHgPO4N1LnMTBIFS2NWI+TVG+VHmmzeNQa7yPuLazlQtcHTzmuA5xZILYq4r7a+3i7xXKXOh5U7rmfWvTudzl2iV2/kq1ThvOb6jACmzAy7kxImpyym7dYV8sF9pY6fY5ygD0M5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T2quh5xBzbj0d8keUVg8bj1SsXwDrvmNaQDXRxII3rg=;
 b=GvDy517luEWSbhMYpx+cGXZ93p2gEGwHWNKgcQ6GyBU+50HzjkdeFYEObJwzaUUTiTgym2pedc3QAD8xX1BH67/Bm1fHNCkuSQIC/ssQnPiPLyaFCjn9JiS4X/7wdAc3eNrKOwPDvHzeM8xFu1vWkTsDGQWxYx85K79KqeIRDqH8OIkfeVV8NsRCowaaz7iQdbJRZhggS7u0/8kK3SR9nXrmY7s9WYscKurHn2HrpHTQwsF9tb1C601SRKbiV0k2z4OYHRSbW3rIL3Fyx+6MTLaMCLfWUHkuaB2PoYobSXdiBv/jlzKEZUXdUhgj46MUHDsdkNMdB2VGgi+xNiq1JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by CY8PR11MB7108.namprd11.prod.outlook.com (2603:10b6:930:50::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Mon, 26 Sep
 2022 16:04:53 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6%5]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 16:04:53 +0000
Message-ID: <52445825-138d-f2f8-25d9-c13ff25dee12@intel.com>
Date: Mon, 26 Sep 2022 09:04:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220923110043.789178-1-riana.tauro@intel.com>
 <20220923110043.789178-4-riana.tauro@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20220923110043.789178-4-riana.tauro@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR03CA0022.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::27) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|CY8PR11MB7108:EE_
X-MS-Office365-Filtering-Correlation-Id: d8607daa-a6e0-4e44-1efb-08da9fd8d95e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1CRjTT8CuFCY3PL87j4ZY3Q8A88j6l18n+Lsrxchcy9DOVLcfr7PZF2v+LFWbfYEElnIn1G83Zs4pNWQ0bLTZ3CJFeboPQw3sl8lvbs6gpahDgKSJm5A3J7JFvJamIk9EL4mvphSC79c/yRPiWIDuL2a7K+cIZ6FoQSrgCC8wlCdm2Qvj0HaL85RNfL3PYp4hMH0A/IBRbRC7afBTGA/yA2krYKxdQUl3C8luDiRkGi1IOkVHyM1zbNa0Z0h8wS1kflD6uIGBjR4XV9KGeWhOhsgqAFbvEaDGdIpT2ZRhsLcldmY3hketQf6NREly+OR1MX649JMgdbUhV8fVSniopVuaGb7tasXDw4FB1ue4e6CdplSziaMcHDBUInqkscaJtttPlt2bpqk+CLO1dWp2iJC6GHeFzx3pBSIosGBr0izPIjRx41v+ZqJ2jUsR4W3ymwvwWPGvY/Oo6ibs7+F+J4XiLZYV8vP46RqE4WyiCi733O68QK1u6lnSsaKLvWZXhQHi3PIUsPB4qKee+M8G6QVKz1HDOXl6xcdmHpQp23RtbUCugbOmUYqkxhFrBua8IqS29soljxEhltVlks5g6+YG9SqI29xVIopJ+vNSMw9DJQEfCjJMNY7gPmizlLObsNO1B9NBLihXHMA91XvkoRyiMwuLeN6Y7NHyYxgsBXudgs3huO7E+CCL5Defs2gC5TLrg/x30bkPnQC7xAaQQrqMKikk+0M85yZAVM6NCraDgYkIxKylvaJcoKRZfPz8sR7YzidK6lvh/RoDD9gLFBsfDEwNX0V620F5dZQxU0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(376002)(136003)(39860400002)(396003)(451199015)(316002)(31686004)(82960400001)(6486002)(478600001)(66946007)(4326008)(107886003)(2906002)(2616005)(186003)(8676002)(41300700001)(5660300002)(38100700002)(66556008)(66476007)(6512007)(8936002)(26005)(6506007)(86362001)(36756003)(31696002)(53546011)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTlsS0t5MnlQVjRtemdBc0NndjRnUDZwSDRacEMzUUJ2bzNpMm9POVlpLzdD?=
 =?utf-8?B?SGZsWkZJS3hlWnJKaWVTVkJDNFhlMzBqbmJ0MVdBV05kcW55cHpYS2EvRnpQ?=
 =?utf-8?B?cVJ3dTZSSW9nbkozYlhuYm1ITjdUc1Y5VSttdnpuMjBzaUdaNGhxWFJPbEpS?=
 =?utf-8?B?YW5aN1ovWW1KTU5pdlY2N05jNmlsbTdJTjBjaHdodk5WZ2pSTGI2bldmdEFE?=
 =?utf-8?B?ZWtxd1pJWlpETTJRdmk2Uk9xelVRVHRsWDJYSkJYNHNBeHo3OVlsbXRVTEE2?=
 =?utf-8?B?WFl5QnhDTnQyMDNtOHJFalc3eXk0RW5PMHJFbHVRWE1VaWVhbzZSZ2FGcWgw?=
 =?utf-8?B?N1EzMWVUU0ZLN0ZBa3hxam5URk5laFB6Y2dXbFZkK2Q1cVJBRjFBNnhXRXhN?=
 =?utf-8?B?VVpkSlBzSVZkK2ppY0lTVGZUelkrS2ZqYnlabzFoaDVCc1NyZ2I0dEZTVXZT?=
 =?utf-8?B?NDY5Mk5ydlRLU0ZNQVloR3NHbDFKS0lESVlaYmk1NXdTWDZqTG45YUMxMUZr?=
 =?utf-8?B?RWJLTWRhc2xhc3JLemhJdGdLVG4wWU05Wi9TWUpML2VOL2RiRUNIcno1SWNH?=
 =?utf-8?B?S3N6Ymc3WENYa3dETTk4c21iTitmRHFsbUVyWkN0TGxORktDQjI2UEc1dnVq?=
 =?utf-8?B?V2kyVWVnNGxiWm56NGt1YStlejNHYkpiRTNPRmFvMnVxcjFoT0p1NzZFckpS?=
 =?utf-8?B?RDV5YXdEOEhidHlyK2NkVElVTEszOFdDL1dUZWJnRkFibXBJWVdJSG43ZjAv?=
 =?utf-8?B?Rkx1UG1YZ0hGaTlwTHpXTmd0TlpDYW9raUVwSVIxcHNFMGFTSkNDY0xISmNw?=
 =?utf-8?B?WXV6WWJGS1JyNWVRT3RjcDh2bll1eUVBRHJ4QXpONjRqcEgyTUdpaEN6VjRV?=
 =?utf-8?B?R3VIMWkreE44aDJ6RVBvdDlIbm9wODJrYXFUZm0rRVdkQlVYZHRkYk1iNWtu?=
 =?utf-8?B?TzBqN0gwRG1oQzFzMlVSS21LUzY5VTkzcXB1alY5Q3ZvOGxDRTBRekJMamRN?=
 =?utf-8?B?UFBtYUhIK2JpVVJuSFBUUThWeTNaL2p0S0VUR2Z1cHBaT1ZQRWdzamJMeVFt?=
 =?utf-8?B?eGtLNWxoMlR2NGwvMTBQT2Zia3BNWHdqQm9Ock94QWJmK2F1d2w2cFY2U3o1?=
 =?utf-8?B?NWk2blZJaUdFa3JNdmd3dVJBWEFrS2ZDZExrRVptZ1BMbzJkNlpyQndJeTlH?=
 =?utf-8?B?akFudGNSZEpWVFpRVmswT0JFTjBtNHNVdzhIb2dpSzA0WUYwQ3ZzWEhHakdW?=
 =?utf-8?B?alhRSVdCVmdtT1ZaTHJQcytNaHpVamdLQW5oc01qUC9zNVhhaU9IamJwc2do?=
 =?utf-8?B?U2FZVkZDMU9ZQi9WT1RRNEtLWjFjUjM3RDRUK3dLQ1h1ZDVDTWpEaDJ1VUhM?=
 =?utf-8?B?MkpyS0F6R1lFLzhObnNCVEdyVFo2K282S1JybEhMRk1sVytYNXhwckcrNDMw?=
 =?utf-8?B?alFCb1R1VVRLM2R1c0MrYjRNcUtXck9mN0luRFhVV1FZT2t2L1NHZE1rOUxz?=
 =?utf-8?B?TFRrZ3FQb3BmdTMvS3VGSFhLY2dWZi9Kdi9xM1VQbVIwSnFTTDdiTDMwRjVw?=
 =?utf-8?B?bjR0NkVvM3Q0VjJBSmQyTnhieVVZYkpKYU5BOFROOURxYktUYmZISGJqTEJs?=
 =?utf-8?B?blFwM1plL2lOZng5dlJiOTVZMjkyVWgzUW1Cd3hxaU54M1R6dmQ2R0lUYXRz?=
 =?utf-8?B?dU5oTzk4QzA1Z1hWazhYbkZOalVvLzBzS1ovbFd4clBDTENxYmxCcEJBaEpu?=
 =?utf-8?B?YThXZWtadG1pVWJGdDh4SVVNSWdGb09yWlBiVFFyd09vQzJMZ05wUGtIZkZm?=
 =?utf-8?B?QmhiZEJKbFZyc3M3akZFenlaeUpPeVg2NWJiRlQrcmFNN0JCNEs1R3pSMFdv?=
 =?utf-8?B?VXBUVTB5TFlzajNwSTZwaGZMcHd3T04xQVBlN2FkT1ZhMFloT1Zjb056dEww?=
 =?utf-8?B?dzNFcVFRMjVYMGt2c0hzZi9WRENwZVhickprY3RrVDZvd0M1MFpoSE9Cemkv?=
 =?utf-8?B?QUFtc3hBcGJKMFdMSzlsWTVyRnJtcVg5dlgveDFoUFhGSE96dllnQ0NVQThP?=
 =?utf-8?B?am5vT3dyeDNPaGJRSzVCSHo3dXdOOWZYZ0FqZWIvQVdOWFhsOC9IU2xnaG8z?=
 =?utf-8?B?VHAvYjJaSGRKditRY2ViSUowZXNTYmE3T2I1elgzV0JZOVJ5bmpEbU84bElK?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8607daa-a6e0-4e44-1efb-08da9fd8d95e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 16:04:53.6172 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: whZza2gnJvd7vvX0LywQ2xdaKabM7NQWEHxItF5s6iAkOAn2CWUkaafID66SeJPpkd0pnnaRcYWulD+ZAJNktDxubrtT1bLMZEVvYKjuK2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7108
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/guc/slpc: Add SLPC selftest
 live_slpc_power
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


On 9/23/2022 4:00 AM, Riana Tauro wrote:
> A fundamental assumption is that at lower frequencies,
> not only do we run slower, but we save power compared to
> higher frequencies.
> live_slpc_power checks if running at low frequency saves power
>
> v2: re-use code to measure power
>      fixed cosmetic review comments (Vinay)
>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>

LGTM,

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/selftest_slpc.c | 127 ++++++++++++++++++++++--
>   1 file changed, 118 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> index 928f74718881..4c6e9257e593 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -11,7 +11,8 @@
>   enum test_type {
>   	VARY_MIN,
>   	VARY_MAX,
> -	MAX_GRANTED
> +	MAX_GRANTED,
> +	SLPC_POWER,
>   };
>   
>   static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
> @@ -41,6 +42,39 @@ static int slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 freq)
>   	return ret;
>   }
>   
> +static int slpc_set_freq(struct intel_gt *gt, u32 freq)
> +{
> +	int err;
> +	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
> +
> +	err = slpc_set_max_freq(slpc, freq);
> +	if (err) {
> +		pr_err("Unable to update max freq");
> +		return err;
> +	}
> +
> +	err = slpc_set_min_freq(slpc, freq);
> +	if (err) {
> +		pr_err("Unable to update min freq");
> +		return err;
> +	}
> +
> +	return err;
> +}
> +
> +static u64 measure_power_at_freq(struct intel_gt *gt, int *freq, u64 *power)
> +{
> +	int err = 0;
> +
> +	err = slpc_set_freq(gt, *freq);
> +	if (err)
> +		return err;
> +	*freq = intel_rps_read_actual_frequency(&gt->rps);
> +	*power = measure_power(&gt->rps, freq);
> +
> +	return err;
> +}
> +
>   static int vary_max_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
>   			 u32 *max_act_freq)
>   {
> @@ -113,6 +147,58 @@ static int vary_min_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
>   	return err;
>   }
>   
> +static int slpc_power(struct intel_gt *gt, struct intel_engine_cs *engine)
> +{
> +	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
> +	struct {
> +		u64 power;
> +		int freq;
> +	} min, max;
> +	int err = 0;
> +
> +	/*
> +	 * Our fundamental assumption is that running at lower frequency
> +	 * actually saves power. Let's see if our RAPL measurement supports
> +	 * that theory.
> +	 */
> +	if (!librapl_supported(gt->i915))
> +		return 0;
> +
> +	min.freq = slpc->min_freq;
> +	err = measure_power_at_freq(gt, &min.freq, &min.power);
> +
> +	if (err)
> +		return err;
> +
> +	max.freq = slpc->rp0_freq;
> +	err = measure_power_at_freq(gt, &max.freq, &max.power);
> +
> +	if (err)
> +		return err;
> +
> +	pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
> +		engine->name,
> +		min.power, min.freq,
> +		max.power, max.freq);
> +
> +	if (10 * min.freq >= 9 * max.freq) {
> +		pr_notice("Could not control frequency, ran at [%uMHz, %uMhz]\n",
> +			  min.freq, max.freq);
> +	}
> +
> +	if (11 * min.power > 10 * max.power) {
> +		pr_err("%s: did not conserve power when setting lower frequency!\n",
> +		       engine->name);
> +		err = -EINVAL;
> +	}
> +
> +	/* Restore min/max frequencies */
> +	slpc_set_max_freq(slpc, slpc->rp0_freq);
> +	slpc_set_min_freq(slpc, slpc->min_freq);
> +
> +	return err;
> +}
> +
>   static int max_granted_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps, u32 *max_act_freq)
>   {
>   	struct intel_gt *gt = rps_to_gt(rps);
> @@ -233,17 +319,23 @@ static int run_test(struct intel_gt *gt, int test_type)
>   
>   			err = max_granted_freq(slpc, rps, &max_act_freq);
>   			break;
> +
> +		case SLPC_POWER:
> +			err = slpc_power(gt, engine);
> +			break;
>   		}
>   
> -		pr_info("Max actual frequency for %s was %d\n",
> -			engine->name, max_act_freq);
> +		if (test_type != SLPC_POWER) {
> +			pr_info("Max actual frequency for %s was %d\n",
> +				engine->name, max_act_freq);
>   
> -		/* Actual frequency should rise above min */
> -		if (max_act_freq <= slpc_min_freq) {
> -			pr_err("Actual freq did not rise above min\n");
> -			pr_err("Perf Limit Reasons: 0x%x\n",
> -			       intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS));
> -			err = -EINVAL;
> +			/* Actual frequency should rise above min */
> +			if (max_act_freq <= slpc_min_freq) {
> +				pr_err("Actual freq did not rise above min\n");
> +				pr_err("Perf Limit Reasons: 0x%x\n",
> +				       intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS));
> +				err = -EINVAL;
> +			}
>   		}
>   
>   		igt_spinner_end(&spin);
> @@ -316,12 +408,29 @@ static int live_slpc_max_granted(void *arg)
>   	return ret;
>   }
>   
> +static int live_slpc_power(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	struct intel_gt *gt;
> +	unsigned int i;
> +	int ret;
> +
> +	for_each_gt(gt, i915, i) {
> +		ret = run_test(gt, SLPC_POWER);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return ret;
> +}
> +
>   int intel_slpc_live_selftests(struct drm_i915_private *i915)
>   {
>   	static const struct i915_subtest tests[] = {
>   		SUBTEST(live_slpc_vary_max),
>   		SUBTEST(live_slpc_vary_min),
>   		SUBTEST(live_slpc_max_granted),
> +		SUBTEST(live_slpc_power),
>   	};
>   
>   	struct intel_gt *gt;
