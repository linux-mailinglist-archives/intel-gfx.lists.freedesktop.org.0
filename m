Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0099501F74
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 02:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4777E10E360;
	Fri, 15 Apr 2022 00:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B08610E078
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 00:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649981367; x=1681517367;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Ro4yGGcCwidzzRMKhYwT86fNRASlrK4TjiDstrvdc24=;
 b=f3a38vmo0xA4mN6OiaqvRgM5YoYznQv20XZzBHfaFwBE5syrvMSD6gej
 sXW4NVq8P0z28N2NpyNEVINqeJzC6fAm/+F0+7BZtk2FFxiVeVHaUvhKU
 61ugWB0eJb3rFzVs/GZFdiFiNiFswjZzBnK3ESiliHoCKo1WsnxIi4lv/
 FNckrTXeVSFMR1fV772dtuguPz2PM8t6kU9zvpaFchWVQEXtjXlOHJ2mm
 QDw/rznDesvI0DH2/zrnQrZE5o9QTdvm0QuwEuAZ4IN8jH+oJaRBj7sAP
 JDhgHA8gIlS6+kfxwXNMA7lPOM0veJDQIxE9PObaZ3bDt13O8urfyZGKg Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="323504264"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="323504264"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 17:09:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="560386066"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 14 Apr 2022 17:09:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 17:09:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 17:09:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 17:09:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nLmGp8KX0ENvPFDqy1S6XrCJJW8fw7hDv11sDVKgIN99Ep7okKos20p46zCKB4mOzTmfHxNb7qLEUNP7qCa6x7jo+a3i3J/6crTM1hKL1iA1DlYEVGaY9ItoSM2woExZl02iZoznmM/+tG4fjdU41zzl830JSPVDGxbKTxDhdJ4waoTNd+i5D+h7cSX0VB1MASo4+rCb2zgz7iMElVTAvv4uXlbhX0qYiSj7OJBbLch/ptiKw1M7H/TDFnYGuuuyU70sEe2f8MatIiyoMtwJDvblbXCQzXSzCNTRVrVLfcq6vI0vVw+GsORqehWoiO0ie2bmHwu6wByLamtahu5S6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JjuMKiLFvMp8u6QQlTcXTu2Ed4OWHduH+QDJ5VaO+Gg=;
 b=B4grEpYKYqyPP+3UI0jFai381LucGOFTqmSYWXF2GnF7+fD1si/82f8Z0kZkbVt2iTp/oo5EbvLBpg5nOp1fyhJSWjnA198Eahdmzk2j0x6vQeSlyjP6KxKBneF87Z8MVqrff6JNLnJxKVp5nIms5Nw6mvynP88mUvyHoZPAMuzRUSTmI9n3po+q0Wwustm3LcKnuvspx5OGdqJ+BeBxKKHQtqrpdQ577+uRgnWaUf+Lk4R0rcM/1lpZhvqe/8GVeTZENpFn1t/IDXvzRKPGZ2WoY4mtZkfwiytJtJn8o1Szc+X++6BQz2ggB/pwEtvS6DzVycopo1djbZ+l62kEGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MW4PR11MB5775.namprd11.prod.outlook.com (2603:10b6:303:181::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Fri, 15 Apr
 2022 00:09:24 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001%7]) with mapi id 15.20.5164.020; Fri, 15 Apr 2022
 00:09:24 +0000
Message-ID: <40fa64ef-601c-fd7b-8acc-37cbb617920b@intel.com>
Date: Thu, 14 Apr 2022 17:09:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.0
Content-Language: en-GB
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>,
 <daniele.ceraolospurio@intel.com>, <vinay.belgaumkar@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
 <20220413192730.3608660-7-umesh.nerlige.ramappa@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220413192730.3608660-7-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0056.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::31) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0fbacbec-cf9b-4ee8-1b86-08da1e74327c
X-MS-TrafficTypeDiagnostic: MW4PR11MB5775:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MW4PR11MB577575687F56B7100A56E189BDEE9@MW4PR11MB5775.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b+E51T8KJkS6wR7JgHibMgm6O5H85V++EunSg1C7AEMrZgsbXPZPDr+8c1Zurs7U1OB4HM9WWSPeBmLnHTuf5fxy56s/xACcXkVaE3smLdM4FX/dpQGgcA7NoE3r6pwLt/o8+IoB3c/Uz+kVEFafyF33K5aRRyZHSspX+wD7bo2BHMRNpEOBA22wnszoIG7HugxM+E7E4NCb9RFGGDyBI50kjNugx6LabwTdUXnwoyKQ9wB81ucgJN3/Ps8MNMmkqkCM/a5EU52r9WLymM3WRhUVcleGz3CzHFqQD+4W8+AwWaV/hJCWPodxkfXW9tSuv61+xl/bqoftpWU9+dPKZkFoyFBlX6IpyFP29jar1hgHnKg59T1q4yCnvLU+dJAQ0+FPPPrHuCp5ZHNiknRxxyYWiXzQgSk/Iijtto0DYtfYgexomOsoIdo0wO7E2feyUsqLitEuu6NzU+RzWQjjC2Ld1edHzSTaq/BVAQETDUvK/aJdAHz6+PaOw+G1G4xd14S+l4NDFY79wHyfx543urHWqw4sbIOSSVfgXMNdeflATTkwErjbBVVlG1tb6lFzLkf2hQi3t2feyuJd/gQyh6FkShWAvTQkGt2gbUDn2fnO7gUHwBYgDo7UnRiryS7q9EjvFVlezAEsfn61TaXZVRRKsiKZFqSpWmGTgORImZbeSxPJIOEeFs8UxnY97ZeK2ywrSJm9otJDceSbr3etWI++MoCuvmkZpcOm6vOcFu8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6512007)(508600001)(2906002)(6666004)(82960400001)(26005)(186003)(8936002)(8676002)(31696002)(31686004)(36756003)(66946007)(66556008)(66476007)(6486002)(316002)(6506007)(6636002)(53546011)(5660300002)(2616005)(86362001)(38100700002)(110136005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGxVZ3JJdVAvWldZZ2Qwa201NXREbG9MakoreUl1UmxxMWxPTG5PdUl4YTVQ?=
 =?utf-8?B?RjdsZ3dHRlNDRUtjd3Z2S2h6TCtHSVl4MnJ5SGJ0anNRQ2NUMmxuS29xZHc1?=
 =?utf-8?B?L0NnUHZEVFUvK20xbTEwT2hDakR1SlcxSkUzMFBXSVkySlFPVU1pLzRkZ1k2?=
 =?utf-8?B?NytPMFZxWWJ2VGJ5WXp3VXloOUZ5VXRNR3FWVWNralFMTjRZMXB2eGtPMWxq?=
 =?utf-8?B?SEJxZnBFSTVPVlRjSGt2bEFlMlZ3Nm5pSG1aa2E5TEVGOGJSeGNIOWVnWVRM?=
 =?utf-8?B?TDFzNXFta0FRMTBHamJYaWErdGc3UTBmNWlFTS9SUHh3eElrak1HbDRLNndG?=
 =?utf-8?B?QTdrNTJiME5tMDBvdWEvYWZiNFNxbFE2bzBuZDZjUmVlWGQrT1F0SFNSMEsw?=
 =?utf-8?B?ZEdvUlZvZTZzczQ2Sy9kYjh5cDhIVUhHaE55Y0xMNmdHQVpnNGxKRVZ6WUJi?=
 =?utf-8?B?RElaUy9YbzRzcGJNWXRYc2hpQkI5K1cvSWp6cTNHZDdrYmxWblFTR1RsSGRZ?=
 =?utf-8?B?ekg4RXhia0JLOENQQXNrdkZ5NlVTMS9wTGFDcFM4Y0piR3c1aGwyMjlEOHRW?=
 =?utf-8?B?UjhjNEQrNXpPQTBMZlhNcldoYWNyZkV2WW9XSHpYWFRETUFzN2l3MGJWa2RU?=
 =?utf-8?B?b2NqTWRzUlN4T1J2VTBlcXNsYm9VREtxbHVxdmVLbERYdFpFMUxkNnBQRVV3?=
 =?utf-8?B?eEI4NDZnQVZ2dlVjK29oMWRYaHFwOHUybFlhT3RTeFNOVWdqaDJBWG5lWVpE?=
 =?utf-8?B?LzlHanJhM2ZvK2RhSzBpbG8rcFpScmZlZUh4cDZ5QU8zMVRWcDRMZm5OOVZM?=
 =?utf-8?B?NGVyRldnSC9uM2d5S3IrUVFaZE80VGcwMmh0Qm9YMGovOER4d2c1cGRleEpV?=
 =?utf-8?B?VUw3bGhlZkhJRk5qNThRUzlYNFRjT0J3ODhmOHp6MVRRQTFtaSthRnozR0U1?=
 =?utf-8?B?NUppOUJFbS9makRlMmhXaEcxbTNFU1RUdTcyMUFwRm1sckpGQnRpTy91YzBk?=
 =?utf-8?B?S29PbG1VZTRKbnVKTStnOEdUdmwwWnpJNzY3UG1Ea1RGNURuSC9DTnlSOVkw?=
 =?utf-8?B?TTZjenNkU0JxazNOcnF2NkIrMDhSYXl5aGZEQm5XMDMvTEJqMHhoZXBiMTJk?=
 =?utf-8?B?dEJNN0FzS2g3OXphVEI5eUE2M3Zwdkc4cWhJc3R0U2VSeW5BOXBOaUwybXI3?=
 =?utf-8?B?M0ZheHl4cVljUlE2UERZcXNMa1I4YWVGbGsrYi9aS280eG9tcll5bUZaVHlQ?=
 =?utf-8?B?NWg5OWJPQ2VPY3NkclZFNExnSUhHZ0xsaDN1emcxUHhHVlR4Qk9jcVpOOWxQ?=
 =?utf-8?B?V2xjdkN3U0xtUjRSU1VFcHdkSnB6ZFNWTTFteDNIMnRNWVoxWXpqSTRwRTV6?=
 =?utf-8?B?VER3MmFzRWQwVUtxcjBKSmFvaS9zbFU1RCsrVldRMlN3YVFFNjN6SW84MHh5?=
 =?utf-8?B?ajBNenVZeS95Q09GMmQ5UnlOcXhhL1NuUGhqT2p0Z2ZzeTJ2UGU0QkZ5a2h0?=
 =?utf-8?B?dlU4OENXUGY3R3NlTi9UMzV2N0RRcVlZekVXZDhBVTRtOW9EODJSdWF2Nk1p?=
 =?utf-8?B?ZTZOYzFyNncyc0JmUEQ1MzZtUmdNOGx3UlAxVEVTaXF6WTIxUlBnWC9sTmpN?=
 =?utf-8?B?Qm1sSllVS0pac1FBYVlxS2xnWWNuRVphYSsyZ1pmNHdQWTlHalVGRmNDL0RI?=
 =?utf-8?B?eG1LM0ZmeDZxdTZNWUhSQ0FvcDVFRDZGYnQwOUFoUGJOeVBWQ0NKVzc4dU1V?=
 =?utf-8?B?L1RrYW9Ua2JGemtJeFVRODVQbkJQNkxtdzZNSzRRU2VxMTE4Z0hKSWNjb1lR?=
 =?utf-8?B?b1d3Ulh0SFJhK3pkNXpmOGQ4RW9TdG1iSytWN2JyODFwV1orMVB5a1BXejZs?=
 =?utf-8?B?NUVwTExnTU1qc1NGQXg4eDl2Uy9qOGN3RHJ5Nk9yRjRuREJOUmx3aHJlN3hj?=
 =?utf-8?B?OXRseHEvR2JjUUpTanVoY3duWWJ5VGFPK2NoZE9TS2hMSU9RZXA5UnRDYjY5?=
 =?utf-8?B?Y3cxaGp2V1R5dDNvWGdMVVJOVk1WMGFXb08zdFBuSVZ6T1lKYldMeWNtblh0?=
 =?utf-8?B?SDdTNzNCdmJLNWQ0RFRXKytPRzNhQmxDbStTajVva0JYYUJtRjN4ZkVlOWYr?=
 =?utf-8?B?ZWRpSUUrU0RNaWcxL2xGTENmWjJrWmpGNEs0REVVcFlOUVhJUVJ2dVlIZHda?=
 =?utf-8?B?anJVYVB3RGVtSzF0R1diTnN1OU5FK1h1SXMvbHNtcTVnSC9PTC83SkJVeTJz?=
 =?utf-8?B?ZVR3VGd0SzlhNms4b1lyVnZKZlo0dG85MlRpa0VhRE5ETzdCT056eU96OElh?=
 =?utf-8?B?MU12akh3RzRrTnRyYktnQ3RCZlk5a3NoMWtIWFMyV0dMN2V2OHJEMFZ2SW0r?=
 =?utf-8?Q?LFCcnGvjD5pyLdAg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fbacbec-cf9b-4ee8-1b86-08da1e74327c
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2022 00:09:23.9630 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FxJ/8frDaygebwXfS8LXQLwoSQFrL4uEFKk9nQFj0GTWahYiPsvh9c0VzLh1CZrQXetuSbwA1RFEZpRsSTWyvez3ynLK2i9/8KSxLuskOto=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5775
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915: Add Wa_22011802037 force cs
 halt
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

On 4/13/2022 12:27, Umesh Nerlige Ramappa wrote:
> From: Tilak Tangudu <tilak.tangudu@intel.com>
>
> Prior to doing a reset, SW must ensure command streamer is stopped,
> as a workaround, to eliminate a race condition in GPM flow.
> Setting both the ring stop and prefetch disable bits, will cause the
> command streamer to halt.
>
> v2: 1. Removed duplicate code and added only prefetch disable -Chris Wilson
>
> v3: 1. Applied wa for all gen12+ -Lahtinen Joonas/Vivi Rodrigo
>
> v4: 1. Added description in comment
>      2. Added WA prior to read barrier-Chris Wilson
>
> v5: 1. Modified to disable prefetch and wait for idle ack -Chris Wilson
Is this comment accurate? I'm not seeing a 'wait for idle ack' in the 
deltas. There is a wait for idle function but it is already present and 
not part of this patch change.

>
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 9 +++++++++
>   drivers/gpu/drm/i915/gt/intel_engine_regs.h | 1 +
>   2 files changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 98b61ff13c95..14c6ddbbfde8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1280,6 +1280,15 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
>   	int err;
>   
>   	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
> +
> +	/*
> +	 * Wa_22011802037 : gen12, Prior to doing a reset, ensure CS is
> +	 * stopped, set ring stop bit and prefetch disable bit to halt CS
> +	 */
> +	if (GRAPHICS_VER(engine->i915) == 12)
> +		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
> +				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
> +
>   	err = __intel_wait_for_register_fw(engine->uncore, mode,
>   					   MODE_IDLE, MODE_IDLE,
>   					   fast_timeout_us,
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index 0bf8b45c9319..594a629cb28f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -181,6 +181,7 @@
>   #define   GFX_SURFACE_FAULT_ENABLE		(1 << 12)
>   #define   GFX_REPLAY_MODE			(1 << 11)
>   #define   GFX_PSMI_GRANULARITY			(1 << 10)
> +#define   GEN12_GFX_PREFETCH_DISABLE		REG_BIT(10)
So the PSMI_GRANULARITY bit is not valid for Gen12 onwards? I'm not 
actually seeing it being used anywhere. So I guess it doesn't matte anyway!

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

>   #define   GFX_PPGTT_ENABLE			(1 << 9)
>   #define   GEN8_GFX_PPGTT_48B			(1 << 7)
>   #define   GFX_FORWARD_VBLANK_MASK		(3 << 5)

