Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C78A7C511D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 13:09:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E34010E6AD;
	Wed, 11 Oct 2023 11:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEDE110E6AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 11:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697022586; x=1728558586;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C3eABxvE6GSs9+dwonJftY/UpzqWg/an9jLJusqpTWQ=;
 b=dy1wuf3H1Vna8t7e41IXHBCZc3XkT4HmBoS9IUfpCSnvEzGftqtWglBK
 k/BRJrv6YNO46/mbwjx7EmckTnGFWRPE54BhR5dAdl02Z2n6dSgznrT1u
 s7oAAjVbcxrg/xeEWPDWVNAYe8kTPBKVWlAlcr1zl8ZaCV1D1ObZjDM81
 XK0dRDMagNbeBu3TCcJhXjZRCn9IPAlf8D7uXg6+HwjbPUy0gOhsVJYcP
 b/xSwmwIaJHePSAnwbaG0XkVUp1PmjN/EQq7f2dx3/y0BG4OPmVFnpjy9
 X8kogD/zSIVAQWth2v9QQq5QmYTX1w3q+yYBMmC5Gq6FjT9xZmkTboLOa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="470897702"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="470897702"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 04:09:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="753780726"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="753780726"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 04:09:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 04:09:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 04:09:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 04:09:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MUj0F/dtze0MjgLBCDIKhh9C1zyFcr3XAuSOvoQDho6xSKUPv66Yy6gnz4lxndUO4lVPauEEGcCNYnlt5cFVP15RpF7VWVSjvzJxav/p7WAoRgnvzd8d5rLXPEXry7TzYSg446B1ivnO66RU43JoGC4yHHN6qDtAoFmX4757hN4B40t7EamL85lnMHZaeWNjNCwCGqHbz+kQuXXve7Co+nUaSJLuvEZxaXhFP//8gNxU4QnZ66SfrJLKclQbJbbqVV4kVXFkEn7P4hC4xffFGNt2Qp4+iElf7xXp/+p6yaOgVUKjMEpk7ZD88OMV12mtxUCugRRSH4JrG788EEm7Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j0kdHoEq2rcSlmaG8xhCgoQZbPa+9YpG01aKqNNoNYg=;
 b=gzrDz0zlAvOU4X1foNzOP1R1HqtW3TZFYzHP2xBu/cw4lf+voxUHS/dI6TumgKf++p36J1ZnIQl7EWDHy6mPYH+Se+cD2Tbj93zTd29HYJJHO2leuN7YHgsrTCobDZlzPBujKmVYpCYGjc9osYTnkEVHJY+9QUywJEBLA/Xx68QW9DZT+r3G+BaX0E3j4M01NzmNIEoCZ1lEoVgPSMsQtx6/GO7RWcXwfd9Fydd4pvH5AQbw+Pxhc2tpJ61eqbtp83b3xJvoAL86Qj5mP6AQmaB0Axv2NuksWKMovvPdfEQpfPoFhU9/Phsb2dCawru0WtUPXrmBCZzfsWXCjwAJRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by CY8PR11MB7688.namprd11.prod.outlook.com (2603:10b6:930:75::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 11:09:16 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%7]) with mapi id 15.20.6863.040; Wed, 11 Oct 2023
 11:09:15 +0000
Message-ID: <0d31d4b8-1ab6-8189-ba87-3e8855580d5d@intel.com>
Date: Wed, 11 Oct 2023 13:09:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
 <20231011000248.2181018-5-jonathan.cavitt@intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20231011000248.2181018-5-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0132.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::14) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|CY8PR11MB7688:EE_
X-MS-Office365-Filtering-Correlation-Id: 75fdca25-8955-456d-dd26-08dbca4a8124
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b7xlPc1xN+3mGjE20StKTc7Blab7eucCW+lO+Lv826LY0By+qFp7sDxjNnh1O33ZxvarbjAoijAlaOHDhTFZckHQ0b8i1rKQ1DyIINgJ0VMxRHkNBD/HqlqM6G38zRgxwDJIKoBiE5Kx3Qj/Q4QMR0EYbwJqmyLDlxJXTdkXI4tvEonxpngTSdjM78vtlrm7SqQjxNLdACzu1/pORO5B72Zzha417s0/KEa2pCD7NLiTQdX3mzuS0l3h8aRgh3ngPGzI+O+fh7K9MkkPJpm/8EhJ8h4Qz29AIqZRM94kuVdR14uZYVtZsCewJmXA2Vj/4HYiqzGM6bmqxKpJII7PG4V0WW/727u4Tw3Dv1H5Je2eKKVcnQAcKG17ijDj1DriKk2AFQGO97GkNKGdkkf0FRvbEU2aDhG22nQdsKAD7FBcRjyFOWE4JDdrNFKgtvry6cww9qxHzQZ4i0d5gVSKkC/+ADysF+iMVJv/+2RRPyfW0YRsSMTFivTjtRLFfDnmHzXQzN+UaGLxj4cfZ0hVoLTGTPSZYNl2nBqZ+qMKjQ/E8LtUeP6igsYGjfbeQB/y2VJZ7IUr5C/1JOKnQUgybH0VZ/SrhrI6k6mjGsjhlkWMUrt3XRLBzNM9AhXSQxuRH4t8r9ZTN13o7yiQbHzhaA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(39860400002)(366004)(136003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(2906002)(15650500001)(2616005)(53546011)(6512007)(86362001)(31696002)(6506007)(36756003)(6666004)(478600001)(38100700002)(26005)(83380400001)(82960400001)(6486002)(44832011)(5660300002)(41300700001)(66476007)(66556008)(66946007)(316002)(31686004)(8676002)(8936002)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?endDNXdCc0lNWkVqRGpPYkR6NGYzYmowSFY4U3Q1VDE2QVpLcHVISVZNeGkw?=
 =?utf-8?B?L0NuQ3FDa0ozVWlaUS82cWtnbGVuOHNhb0Q4YnRrUUQxZUp3Wk5rVTRnOEho?=
 =?utf-8?B?blhXL2hVWkY4cFhnR05tVUdvaElycDNhM2hGbGFjWExMUU44alN5dnl0Y0pQ?=
 =?utf-8?B?NUxvSS9FQUZyMHZScDJod1AvNkI3Z2U3UVZsUkN5OVNwQUR5THNBQ1hsbUlC?=
 =?utf-8?B?SlpuNnd4ZXRWdE9idzE2L1FNRFhJbkwxM3QrVHFyU1BXcnpKUkVOZDBTUkxH?=
 =?utf-8?B?YnJDOXB0cnBxSUxTWWNCYXZzZUhLMlViSm9UVWM5RHdRYXlVZjFlMkcvUUt2?=
 =?utf-8?B?bllpclRXemw2VHQ0ejJwQm9CWVNVMUdvUUxLNjJ3YlF1NXRWRFYvWTRSRVhK?=
 =?utf-8?B?ZmtZRWhsUUd5WHI0MVIwbnpRTXh5dzg4RVo4R3JGcFZ1cnlBVit5eU56RXRT?=
 =?utf-8?B?S3hWKzBLL2RyY1N0T2tIeUFqOEtGd2J2NjhQUmJOVmt2bmVvRE5pSjFGcStY?=
 =?utf-8?B?Y2IwU08xL1UwTGRiTXhqL25heW5VOEMySkV3UEVCM3kzbnZObGp2UGVXNkFh?=
 =?utf-8?B?VmNnWUg5Y1hhQ2xFL21SR2w2ek1QdHJpN09Mc3o0UUJURWU4TWFxRzV1WURm?=
 =?utf-8?B?b28wQ3pSR2huaFhoRk8zRG80anhGbTdMRVNtUEFvS1FaZlhENDh5U3lZN3Y0?=
 =?utf-8?B?K1BFbGhkOHJKOTZsdjdUZGJaWC9xVERDSXNjR3JMYXJzaTdBUFUzK0JFUEVN?=
 =?utf-8?B?VVN2N2ZIalY0NGdhd09HbklRRUNvM1NRMG5xS1ovcjlrdklDYnh0bTV1NXdL?=
 =?utf-8?B?Q29iWUVhb1JjYUs2RGxkS1JXL2ljMWJFR1lCQm10QnVDZCtYTW00OGlTWmZl?=
 =?utf-8?B?dEpXc2p5QWNNT1grRGJXb0hvcGd2akN3YndjbTZ2RGVQa1BhY25zKzdmZGFS?=
 =?utf-8?B?ZGtEMjl6bzlhKzhWbDF4MlBscE9VMk9wTG1zdElSNVpLcTc3WFBaLzNPdTZ1?=
 =?utf-8?B?Q2NXQ1BLMXVkdjYvWVQ3WEtHcXlEYlA5MXNLWmRoc0k4UURHS3FoNmxzNE80?=
 =?utf-8?B?ZnQ0N3V6QzlibDlZM2xjY1NKMUdzNlRzNm1RRGxGTk1NaTVLODU0ZGtCSFls?=
 =?utf-8?B?dk1pcEN4NGE0SU52bzJvdWVaVkNyanVsT2d4VTRzZWlKZ2g4bitYaGVxTUxQ?=
 =?utf-8?B?MWxZd1JYbnVmM1lCYWVxUHRKcWUrWlEzenZGeWltTm5kMnRXUUUxN2wyL0c2?=
 =?utf-8?B?WUVZY1o1L2FMSi9Cc2p3cDRoekE2dVFFckZ3cXhjSG90NjcyYTVoNUd4eXhE?=
 =?utf-8?B?R2NtY1lIa0JuM0huQUErN3lCMjg2Q250YzJza1dnQzIreVEyVS91M0M3S1B2?=
 =?utf-8?B?RDliMFd0d1A4WTJVb1FadGFjQnJzZ0xaRlJEdnNZWmdtVkVPd28vcVJaWDFQ?=
 =?utf-8?B?L2tGWkhWSmRXV1J0bDczQTAzdkpMNHdoclVvb2RQNHBHQTVoSVovbHdnTzM3?=
 =?utf-8?B?MjQ4YXp5Z2QzQXVwZ2hOSUgzZ1JZMEtaTE5kQ2Z4ekk3Y0pkRll2Q0xTcm5Y?=
 =?utf-8?B?dDNaM3ZUL1pPeWlWODY2VC9kWlU2T3cwTzBiMSswQXZoK1oxUWNrN21EUnh5?=
 =?utf-8?B?SXBTZVhMckJybVJ2R09DM2ZiQ3VmamNqWUVya1c5VkFDYi90alc4dTB5STFH?=
 =?utf-8?B?eHErRzUxK2tjZms0Z2xKUXZDQW03bUxSamQvUTJOYWN3QjBTTGF0ZjBQUEZZ?=
 =?utf-8?B?MUhKaW4wa2xuc1B1T05QakhhaFlPTGNJYkZ4YlkzQW9xbTRWaDNWSFFjallC?=
 =?utf-8?B?ZzBwUloxNWFOU01jektqVkFueFk0aDFjQzY1cm9OS2lpOEFPdFBoT1lXQ2Zz?=
 =?utf-8?B?cTBQSzVvTDB6L0hHcnV3L0JNVDdvMFc1UDlKOEV0YXVtTWJrekxsZityemtL?=
 =?utf-8?B?WkhOeG1GRmFkdEh3VWU1Vm0xekk2emhWV0ZRakpEOEFsa0l0emtVcGVEOExH?=
 =?utf-8?B?SUhBa2hHU2hrREo4SGI5elZCcDFabzdJYjRDY2dpRTFPWEQ3TlpQQlQxVUpw?=
 =?utf-8?B?MUkvTGcvN1F1eklkcXRlWS8yNWdObGNQU1BSK1czSWw4alNCeXovQkdaRkll?=
 =?utf-8?Q?xdcXHx2nP+zFEdV5NpWgQNxXE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75fdca25-8955-456d-dd26-08dbca4a8124
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 11:09:15.4464 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FYa/ugw0H1cr430ufsxT22vsT7YI4p2IOrRtNswOK1uvvJt4cAoUcCI6xVVBQFq3M/ir6ySJicxv9U3d8JU2lA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7688
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 4/7] drm/i915: No TLB invalidation on
 suspended GT
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
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/11/2023 2:02 AM, Jonathan Cavitt wrote:
> In case of GT is suspended, don't allow submission of new TLB invalidation
> request and cancel all pending requests. The TLB entries will be
> invalidated either during GuC reload or on system resume.
>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: John Harrison <john.c.harrison@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>


Acked-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 21 +++++++++++++------
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  7 +++++++
>   3 files changed, 23 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 6af65d44b1a02..9a743d7059628 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -536,4 +536,5 @@ int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
>   int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
>   int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
>   				    const u32 *payload, u32 len);
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 8e5a79ecfc2a2..9d5f8cccaa592 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1796,13 +1796,25 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>   	intel_context_put(parent);
>   }
>   
> -void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc)
>   {
>   	struct intel_guc_tlb_wait *wait;
> +	unsigned long i;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return;
> +
> +	xa_lock_irq(&guc->tlb_lookup);
> +	xa_for_each(&guc->tlb_lookup, i, wait)
> +		wake_up(&wait->wq);
> +	xa_unlock_irq(&guc->tlb_lookup);
> +}
> +
> +void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +{
>   	struct intel_context *ce;
>   	unsigned long index;
>   	unsigned long flags;
> -	unsigned long i;
>   
>   	if (unlikely(!guc_submission_initialized(guc))) {
>   		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1833,10 +1845,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   	 * The full GT reset will have cleared the TLB caches and flushed the
>   	 * G2H message queue; we can release all the blocked waiters.
>   	 */
> -	xa_lock_irq(&guc->tlb_lookup);
> -	xa_for_each(&guc->tlb_lookup, i, wait)
> -		wake_up(&wait->wq);
> -	xa_unlock_irq(&guc->tlb_lookup);
> +	wake_up_all_tlb_invalidate(guc);
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 98b103375b7ab..750cb63503dd7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -688,6 +688,8 @@ void intel_uc_suspend(struct intel_uc *uc)
>   	/* flush the GSC worker */
>   	intel_gsc_uc_flush_work(&uc->gsc);
>   
> +	wake_up_all_tlb_invalidate(guc);
> +
>   	if (!intel_guc_is_ready(guc)) {
>   		guc->interrupts.enabled = false;
>   		return;
> @@ -736,6 +738,11 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
>   
>   	intel_gsc_uc_resume(&uc->gsc);
>   
> +	if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
> +		intel_guc_invalidate_tlb_engines(guc);
> +		intel_guc_invalidate_tlb_guc(guc);
> +	}
> +
>   	return 0;
>   }
>   
