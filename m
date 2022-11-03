Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F9A6178FB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 09:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA7510E267;
	Thu,  3 Nov 2022 08:43:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1217410E267
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 08:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667465027; x=1699001027;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+lsKCfd2nLW5OYyk3BGpksi/nRyCLgYsTDHVxp92qqI=;
 b=cLZUSVUuUK+09F/mhz7KE5YEu+NpjUQwVY7a0gtFJCMV6CLHTVlQ34Pk
 /5uNoOtPesxpe1Cl2vMmRtPuGn0aWaptYW4Mf08e60f1IVinASv+e9EoR
 j/W695b3/Oxrhh9o6AA4eRIydqG+TaSiZnvch3A7QGEE3bVi2xoscxd8w
 fu1zYWi9poULKwez5m8fHQ5gNSUgK77HduKxh2Fj+Tix0IFM7lvBuqJqa
 ze3AkXmQ5Ctb63W6OTPVFLPlEsi8LkvNFD2dKTfH5AfkiZeKgON3TQIFm
 Me2VTiQzvs5RAeU4ucTfs8iPuQb9BrgyDJY5C7TSWbD1SiruJOjgUPNYW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="310738928"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="310738928"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 01:43:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="629265364"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="629265364"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 03 Nov 2022 01:43:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 01:43:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 01:43:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 01:43:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YQjU1i1+nf+C/WcXDzv7Sdt4YTZjRCn7GOHPyXWNkNzbLZzngqYT/EBO5ziuDCcWEoU8v6B1U1lsWqjUj490PRyhJNux8phEHKgJG07ODmXuPdZzYXSIe9/iDLNequCB4swY2++24vp8LAMZ1DOBU5KbiQFO+Zor9G+/BGR6meYneSCTSLbnT4tlJED01DzMGdq1FtdrY0s2+te182HQXEV7aRDgAiIqFn/bTUMA+PQK9RWlkJuUSaOzgEsxP50lQuCaAKL6XOmv7mYQ7ZfptZg097hXy6zrO+zso9s5rYVMlL74HyTDUyndb0joQIxDINGe6by4AWzd0pMvQkiW4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vls7dGJZyGxUy+NQWDoYhM9YcElnRLxdF1BkNQkKPIc=;
 b=PDEwsCHvcq0RVCVxxOCNcwn5h+G/H9oEg4MTSBWAf9IFQSRMseC+rKn6zTjwvI1C+9/kxuQ9euiC1saS6JU+exjm1YiW1ALpu42dRHVvxcQIm4Byk8ct9eSSEF+AEQoUWuzP3pNqCm0dEngDqFynRY9xlyfR33GrcPWc0dfyOprm76rjMXSj1Lzj48j8cbgBfMZ8xAy4Z4dS4N/lCoXIJbXMMjXLOvLX2pxmWLWlmP25ijFZl5uOMR6N6zs8fG6iWWc311foCudtFmfbVWmjRRvp9yR0qtIBa4vO1jJ6TGI7Lpl4Yu3+6cQ8+0JiOGZzVCKCox2oOV/lAQhK86UM4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SN7PR11MB7042.namprd11.prod.outlook.com (2603:10b6:806:299::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Thu, 3 Nov
 2022 08:43:43 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::fe45:dd69:a763:6bec]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::fe45:dd69:a763:6bec%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 08:43:43 +0000
Message-ID: <b8abb0ae-563a-1778-e3c6-147065d2955c@intel.com>
Date: Thu, 3 Nov 2022 09:43:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20221102155709.31717-1-nirmoy.das@intel.com>
In-Reply-To: <20221102155709.31717-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0137.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::11) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SN7PR11MB7042:EE_
X-MS-Office365-Filtering-Correlation-Id: ebbf5442-28c3-4954-32b4-08dabd77831b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g+Rm8vTrZgPmsjh7+6qytCvP/IWMDApG8GSnAgh01mGvw/hyiosNqTXeDMIhYoJYGq0KONUBszsdxK1Y95iWrZ3JDFCGxI0FRE1sDRAEJGOpTx0+GkrI64CiVnBSi4DR/FX7wTwfXbUljEH0Qv4n3niQznI085lxUbxrmSr+TvR7K9Mx6n7Mw0SaQlw1xJlXfRO1Dq7d73AGeaumneDZox7XulrE0qZ+G9BePnLxiNkAp/ssEId/ccyIvAbUScyqRQuVGLzoomwIH3HH155sZToUOG94Z2pxz5J/IVZyz7Hmkzx7jMoOKvOC8h/LU9yp1MhJrh7/UyQ1KT46+rx0NzzNOYzgj9UO7sJP3BVfeUxA9QUMoaUyHDJG1++/E2RGhLaiO1N/4HgCKUphZco2GqernlO6qX9S6o/4eR5sTcQlxsbESnZ2j0UR3Rw8hN0L6rehDj878pdwAMPc9GsHslAE52DGdbUN15TQLBZ9/0gAHEnnplt6thnM4siYmZMOee1BAdLdpkjeyxdTuuUce9Csl99fpcCPVy0u35hVwp3+yyACbcKWOPXZ/MbjwBm8kfbbFlO8u1hRBEe8DLvU1eY9kxvMwuKuy37lfHXefk5l8dhXgpVuEZxn7ig+b3hGhdnvSIo/YzSvbdURbBhe0xqhBQlenx2fDNp9mHlQ9thVZb/s/kcRnpYNea8jl9Shzwxfz2l3su2bNJeANF0t6qQ3pNK//2gp1Xo49p2pqXfkE37uTuFaV8Q97jU6/chdMvv6lbVJihE7UAKMOxrkOSeTgqzx+RimT8Y4qLMqZGI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(136003)(39860400002)(346002)(451199015)(36756003)(2906002)(8936002)(86362001)(31696002)(4326008)(8676002)(6512007)(66946007)(66476007)(6506007)(53546011)(66556008)(6916009)(83380400001)(82960400001)(38100700002)(316002)(26005)(6666004)(478600001)(5660300002)(6486002)(31686004)(2616005)(186003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzdpdGJMMXY2VC96NDVBbFNnN2xaNktlcUtSeFZUMElXK1dpR1paazgyQ0t6?=
 =?utf-8?B?L3N6L0x3cVRjYVJId3J6bGEyQy95RjhKbVNDTHl2NTVjSDRPN1U1cC9iZFdO?=
 =?utf-8?B?NWN3N1ZYejNMZ1MwRW5aUlZmcVNKVURic0w4U3Nmcit2TFRVZUVtVEEwYTZM?=
 =?utf-8?B?Vm4vSVRSRWh4NWpIbFJOdFJKckFPK2JtOC9KSFIzTUpHOHBMMjVpa09URTlk?=
 =?utf-8?B?L1FRQTVmZEljSmViemxrbU85K1d6MmMwWFBzOGp2UGtXZEMrN01NSHBUY1Ni?=
 =?utf-8?B?NHVmMHZwamRIUHQyTHVxbEVGMis5ZXdlajRBdU1HdTUyenVSdVlCc3htNCtm?=
 =?utf-8?B?VS8wVEx1VzYrVHVYYmlLWW5FVnpIQ0p6YnlCaWdsZ0I2UHJ0UTVKRDYrOVhN?=
 =?utf-8?B?MnhTZ1FxdlI4Q2FHanA2UG9mVXpiWDVpRnRGU201cnZWZnF4VGUwYmVtd24w?=
 =?utf-8?B?Y3RCMnJDeVVWOUV1YWNwQm43b1NwRXI4U3o2dENzeW5iK1MvWjJMbFo4YXYw?=
 =?utf-8?B?V0lzMkFLYlpjWldSa2FPV0pjeUFyZ2o2KzgzeXUxdUUzYzZxek5Yem9rMzF6?=
 =?utf-8?B?NCtrZ3VXVHA4dVZTdXdUOWgwemgvVXViOWFPSHpTRFp5bkVJN2FUdEtHd1Vs?=
 =?utf-8?B?OWhZanI4djY3L2NkNFR2SFVySklHWkhzOHU3NW4welc0RTdsRkVsYVd2YzhF?=
 =?utf-8?B?U1MxaGZFaEszdHNWckpIVFlqY0ROTm5xQnhTb0NaVnIzVWFWcFhSdDNwOW9T?=
 =?utf-8?B?V29kYklVSjlwVTZWR0JqYkt6MzdqZ2hqOStzcVZFbms0WE1nY1ZDQ3I3b091?=
 =?utf-8?B?TTVqTjNRaEdOTm4rUS9pQUlUR0ZDRFQ5RThJWlFXS3BmSi9nUndwaHpPa1BX?=
 =?utf-8?B?aUV1MFFDbHJjYTI0NHRaN1JpZEJkUW4va0JsYzhoTEdkSkJLUXBEVFhXSnZX?=
 =?utf-8?B?anhlRjJERlRTV0c5TElWY0I0c3Q5UTExT084TFlCRDllZ1ZSdWhmS2ZPalN1?=
 =?utf-8?B?Y09sdXgzeEFSYWIraG1rU1NIL09GM1BSNm1OeVl2TzJGdEJiV1J1NFRnYWxM?=
 =?utf-8?B?ZzhwQ0UvOTE1dGFlVEFFbjRqMmdoRmFTYTltOW43c2QwMC9QaW9rMEE0cGlp?=
 =?utf-8?B?ajN0ZEtRTDA2Uml4eGFLTVQ3VndzVnhFdjhqUmJzQUdILzJlWVZEM1Y4RHZr?=
 =?utf-8?B?a1VKaEJ6SEd6TUNWY0QreE9FZS80NzhWdGpmS090eFRJUXVqM1RYWllLUDRK?=
 =?utf-8?B?T0pBRXlCMTlrQjhtWVFZSGE5YU0xSmJ0TUVDQ0tWTFVrOXIvQ2dVSkFTSmdP?=
 =?utf-8?B?ajN2a1czNmlJZ0RKU0MwOUFycy9LemhuWVBsN2hpTUNCZzgwUkErOWpHSnNl?=
 =?utf-8?B?SkRGL0xrUUEydGdzM2xJaGVjY1ozYzZOWksyRWd4MUpKS0dNemxibElERHhR?=
 =?utf-8?B?dUQ3SmNzQkkyRHQvZm0rWGtDSFhFUG5uTkl2U2dudHNiaEhYaUZDaFU0azJ5?=
 =?utf-8?B?UHBwZXNTMllWS1F2NDRTK3I2dmF5cGh1SmdlMURPRFEyOTBhcXUxTGlCWDNj?=
 =?utf-8?B?c0E1OSttaFlRdW5DeDN6NWlrc2ZhYkM5MmpBUmNRN3NJdUFTcVlCVk14M2ht?=
 =?utf-8?B?NW5tdWZyakVGWUFMa1pTd0EreSt0QmVCcDVHQTJUK1JUYTJvMlI0aUhCaWtW?=
 =?utf-8?B?VlJEa2xFb3RTdDlTYXNTTzB3cmZPcGR0d044NW5iNkI2dlkyOGxRdXpCYUE5?=
 =?utf-8?B?SVNJZWIzY3RkUGkwYUsrNUs2T2RZam5HMnZQNjlvd3BGZ2dadGM5eWRFM09F?=
 =?utf-8?B?STNlTEVBaWl3bVRqQ0RNZnVrTnNIc0ZZMEVnT0lTai9vTE5zWi9SekQrWW5Z?=
 =?utf-8?B?TjlJN3VBd2R5UTQzK3NWV1lBelFMWC9ZVXVQRHMxSUoyL3gvNklrSDl0NlRP?=
 =?utf-8?B?M2xZa09kNis1YzhESm1zY2ZzdGQ5emp5S0gvQ0xueWZaY0R3Wi9Hd2hNczZM?=
 =?utf-8?B?b2hicW1PcVhXMjRRcGpaRDY0eitNeU1BREJZamNPZWlnR21Xdlk0c3RxQjZy?=
 =?utf-8?B?Qm44b0cvd2FQY0s0ckZDMyt6dE5YWmI4R0U5bHNLOEVraXBQbkFrTi95Q3JY?=
 =?utf-8?Q?Jo7vMK4MRACYeDBQgcEnfO0U3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebbf5442-28c3-4954-32b4-08dabd77831b
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 08:43:42.9545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F9wE9rjY9OwEiIaORrDL8agYOuG/85zz3H86zYt7jiHPFlOvaVL0ZZTu2CpqB6J4fAWCRort0/0AYTPbPBavcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7042
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Reduce oversaturation
 of request smoketesting
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/2/2022 4:57 PM, Nirmoy Das wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
>
> The goal in launching the request smoketest is to have sufficient tasks
> running across the system such that we are likely to detect concurrency
> issues. We aim to have 2 tasks using the same engine, gt, device (each
> level of locking around submission and signaling) running at the same
> time. While tasks may not be running all the time as they synchronise
> with the gpu, they will be running most of the time, in which case
> having many more tasks than cores available is wasteful (and
> dramatically increases the workload causing excess runtime). Aim to
> limit the number of tasks such that there is at least 2 running per
> engine, spreading surplus cores around the engines (rather than running
> a task per core per engine.)
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Tested-by: Nirmoy Das <nirmoy.das@intel.com>

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>


Nirmoy

> ---
>   drivers/gpu/drm/i915/selftests/i915_request.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index a46350c37e9d..4380473ceb98 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -1710,7 +1710,8 @@ static int live_breadcrumbs_smoketest(void *arg)
>   {
>   	struct drm_i915_private *i915 = arg;
>   	const unsigned int nengines = num_uabi_engines(i915);
> -	const unsigned int ncpus = num_online_cpus();
> +	const unsigned int ncpus = /* saturate with nengines * ncpus */
> +		max_t(int, 2, DIV_ROUND_UP(num_online_cpus(), nengines));
>   	unsigned long num_waits, num_fences;
>   	struct intel_engine_cs *engine;
>   	struct smoke_thread *threads;
> @@ -1782,7 +1783,7 @@ static int live_breadcrumbs_smoketest(void *arg)
>   			goto out_flush;
>   		}
>   		/* One ring interleaved between requests from all cpus */
> -		smoke[idx].max_batch /= num_online_cpus() + 1;
> +		smoke[idx].max_batch /= ncpus + 1;
>   		pr_debug("Limiting batches to %d requests on %s\n",
>   			 smoke[idx].max_batch, engine->name);
>   
