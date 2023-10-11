Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F6D7C4E11
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 11:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA65510E5DD;
	Wed, 11 Oct 2023 09:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCAC10E5DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 09:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697015083; x=1728551083;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OWzArMAXUBn0mz3/8XeShLg7+Qc5A1NmjmuJU5RB/yg=;
 b=WQXDpm2wPrgT6q3wYJcMaeEeu4xpsqH1qDMgSlDvAhJGfHkxlLSc+lnI
 wRbTgVrxK6Bzk5OqeQEpwQNeavGUCf93A/SpMZ/cz5cSeyWQtSHD/06Dg
 qeqhtQ0bB8ISg6HZ6xJAik2t4oFY2S6N2lcMO7zfQ+HjhQ/8WGaDQ0ySE
 /meaXlkSDRX2TuKH6J4bvc9zVgmt84cdhDGRMu//3ZjojZmXsCAKYO5WD
 3TYJqSzQpxAv2jnMFRye7gwzRYdwQ9KwklRySq4GFhAmsAx39P8VbbdYF
 2gfnOs7a0Z/60p9OFYAyUMmlTignpZp+hJEX6sMC8PR0ThUoKm34vRFwP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="6174493"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="6174493"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:04:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="819613698"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="819613698"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 02:04:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:04:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 02:04:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 02:04:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WOTIkvreEcqJ1e1WaB2mFNnBRUdMLJaYcvnnBu7R+i/xHB8p1SJokNp6ckqO72Cau/4IcioyF/l9hV7MU6fozlSrwW2X54B8TRgH8RGrMOwEMG7r43F+W1B3FcDBEVxYiY2Ay6pSWXjZfDJA1bvzxmWIpCbm3894go2jDaeZv5qtqdmMGYrL+SPDBUX1LkbqU+uJik38PAp3bZOHWYjvRwBs/9u8pZof0RqLVysPmYdT6MrwTCCxhPonoyT+9J/v15Z5Gs9G3N+SjQnE5kz/5M3f/qxecOm3t2IPeOf++VjZ/cfeK/cnaxQ85TthU+iYoUcCjPtIQdJPu6lDUNif3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1+pRTiM67ljSBhFGxusO+llBXJ7YkE5ynYBLZreRS+A=;
 b=EiwKiiZ74wqffdcoDK4D4UpYoazIq4IAfsjd/J197X2DjxJfOWFPythRZtg7PmZiiJkcyPQQ0zIsTHytsstwDFSmWIY/8nJFJLhALoDL/tNVGktgLtKqwLlArHXwnSqJyNxMzVRinbQwdCm1IzDOOv2x2tNOWJ/JnjhmT2gHJjZ/FztkRx4KwqJLWg3DMFI1mJqOaQXFQbUXzGli6n7kPylDVm9Y0jxKpor9X60IhDDz4VsBzVa2nDS7ElJlBcK9bOL9hFmeMa49gN+SS1YV8dazaWAu5hLFEMa+ws+t+Y/MLo7d/lO4JJSfz4DC7FuABYfi+SdE5Nx9z9BEnqxJfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA0PR11MB4623.namprd11.prod.outlook.com (2603:10b6:806:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 09:04:40 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%7]) with mapi id 15.20.6863.040; Wed, 11 Oct 2023
 09:04:39 +0000
Message-ID: <65249e49-a5c8-487d-cd0a-4bb9b48bfabe@intel.com>
Date: Wed, 11 Oct 2023 11:04:35 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
 <20231011000248.2181018-7-jonathan.cavitt@intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20231011000248.2181018-7-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0129.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::12) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SA0PR11MB4623:EE_
X-MS-Office365-Filtering-Correlation-Id: 8de99fd1-0eac-4876-3d46-08dbca3919bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wsQJKym8+OvTucgVX9PGa1DdHkmpDgfpzqi2gjbqdfsEOzqK6QRALRkeGtJlmVEDM5dPtg/BxSfTDpngl6GsLx/Tg2iKpH/xSTRX78MAANBTbgTGYDQeBOSNuHakRXsXsoXsaQwgagIvK5YShN+5SPL6SFk/Z56nglY9+64UmxhkqTb7ho1Q/km3ui3IMd74WQTSkDfLPA4JapkK0qiR0nLrxLZEYi7ewP7QeYbWT5EV2716pMXapKyD+iqN5IICbY31+GgKRinaSxvKSX9spQLwNZ2BhSjF1JXgPV66ECJnW9+X067VF8YHka5Hi+QM+YxbTGoV2Moxf41WEB2DMExwUPtQYnrouQ8s7mE91XnP4Lk/rEPZJrMf1ioFAYYLjnHU5RQ3/zIOOX07mI2HGS5IdSmQduIaliKaeki9ydBjB+XLdS1J8uzHQbg6t1FRzj01xxLLWPpZGHktJwtXp2EA1tNi52T25DvOv5U/cAagy3ReeHxjbAxZJwBFGEeizmw55oUBVSB9FTJcifz5NYy4jlK57gQiVPZ6L3Qyw0JDVfIb6vaVroV+eabBa50lD7Lsj4ZpFsXWGM5yj+pBE4bEBG9Nqu+jFBBa1mEMu3gWqgPh4LoPqPy4OWeA6FXbPtXpNgnzEFx7giHJ6SRqqA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(346002)(39860400002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(31686004)(31696002)(86362001)(36756003)(2616005)(6512007)(316002)(6506007)(6486002)(2906002)(44832011)(66476007)(53546011)(41300700001)(478600001)(66946007)(5660300002)(66556008)(26005)(6666004)(4326008)(83380400001)(8676002)(8936002)(82960400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXVZUUpmT3JpazZaWXBabEJhRTFVQkthM2FhRzRtZmdhcCs2TUdvK0IzSUE5?=
 =?utf-8?B?Zm1zcVdlZGlRMHM5TU8rTVVRWWZLSXNvWWpZVHVRZysrMWdLaTFBY0VwRllX?=
 =?utf-8?B?Qi84cTEyWUcwb1BPQkhBd082SzRYbGJVVWszcXVyNGloQnp6MWVoNzl1aVo5?=
 =?utf-8?B?d2lERVNGN3p1RGpvd3JGcnovS2x4czVkYlIzdEdWZGl3emRsUnZnQ0tnSGJ5?=
 =?utf-8?B?eGVYSy9Obk5TQ2dnRy9FSE9EcVQxTHBURE1kOTgrV2x3YllWOUx2WndlMHRL?=
 =?utf-8?B?Z1JGQ0JNdTRXdDFlSDFranJzcHBWTDk0S3pPWmN5RzFWWDVMa2lSQm1UMUo5?=
 =?utf-8?B?d25yRHlUVnUwTEdBZHhQZTV0YUtMaEFLNE9HYkdOSlpZQmxqWFBvQ3VZWWRT?=
 =?utf-8?B?NG5KT3liYVpxbDIwK3lKbHN1Z1lOWFFJdmI3czhRODhYM0UwblVGVlJ3Q0sv?=
 =?utf-8?B?VlFIR29OUGxFNEs4bGlNbXRsbjlEeXg1aXBveXZDVFAwZ2VjVFRqWGdSS2tv?=
 =?utf-8?B?T1pXY2M0VDJ5OXFwTFRNUkRuZC9CTlhHRjkzMFBHVXBkMVF0WHhWUjNiMXNo?=
 =?utf-8?B?R1NTU08wRU94QWRNSmd1WDhUNUNCOFVydXNPTFY3MFRLTXdOZDQrUkRYVWlj?=
 =?utf-8?B?Y1hXUUpnZ0s4ZnZva2RVbUh3WFd3MVBFVGsrZUxtVHlkMDFlTWorOFdUdDBE?=
 =?utf-8?B?MEkrcnRpNmJiTGVNckJqNkVKYVdNR08xejVnL0lRaUVha09vRlRCbDBoYUd3?=
 =?utf-8?B?ZzhVZWJ2VWovc1JRWUhnNkxhdlVZSHdveDdzT1czRDJzTUY2YXZvaGRuR1dw?=
 =?utf-8?B?Q1ZEenJyQmZQTUVNOTI5c0hOLytHUnFtbnNPakR1bWxjd1FmdFFzNm1wcjJr?=
 =?utf-8?B?cmVnZmRZajZWSVFnNWhJTXllbE9ONTdSOEhuVXJFMjZlYTFTZW5wWkp0VWVx?=
 =?utf-8?B?QXVoUE9OZEliOWpXZXRWRURzR3RjbmlXTDhwdjZmRG9OWURIbTBQU3RmeFBk?=
 =?utf-8?B?TjhJU282YTR5K2R1d0xOYzdWYllPbEViWXpGVnhLdkw2UmRXZ3N1cFViSklq?=
 =?utf-8?B?N3RZK2lHMDlIY1VqMllzbXg1dGtrOVhGK1lVR3VGSVhuQ0k2dDJTTGVXS3g4?=
 =?utf-8?B?cVljbEdEeFA3ay81eUhUUTY5UXpHTWdUVkVQY0JsdWFKMmd5UERKWmdxNk5W?=
 =?utf-8?B?cTAzOU13Q1dQckhPNmxSRWZweEVhSFNSemVYLzBoL1o5K2tMY0lJZmx5cUs4?=
 =?utf-8?B?bDBUS3ZNK1dEMWNwdHkrb2JaVHJqcHZwSXk2ZjlaZUh2VmQ0M2hZeExBb0Mw?=
 =?utf-8?B?VUxmTUo3UWtqalpoRVJQdEJKUnJBaTlGTlowZDBUL2NSRlgxOWVycTNBQlhR?=
 =?utf-8?B?Y1BZZ1B1M05XNm1qTE5oK1V0b24zOWNuR2xZeDRWUDl0ekRqR25EL1RidkQ2?=
 =?utf-8?B?SUlsVnd4TkUzQXM1L3BKaTNsVlNkTEJmOXdWeHQ5Sy9Wb0crUjhSYkFENjND?=
 =?utf-8?B?eDBBalZXRUhIcnpQbjZ6UGhzNmlxTWVsTUN0dU1XT0dsWWNYTnFUWnJvQ2tr?=
 =?utf-8?B?RmxtYXJzTnM3UzdlZkJ3SjVLTWwvTFc2NkdnUC9HUGQ3YWtUeTg1K1FZY3oy?=
 =?utf-8?B?aFoxUGE3TDVxck4rMFU4aFpJTm9waHIyWDBQY3ZOdVI4aXNYWjZ0NXZkU0pR?=
 =?utf-8?B?THk1dGRoZzUxT3NVMUtxeWtZaTEzQk5uSEU0RGEvVExJTzZ3OVFMc2VpRWxx?=
 =?utf-8?B?d1BWTWVOeW5IYmoxWmJucGtNcWRIOGt2NWZHeEtsb0c1Rmhyd0s0TURiR0RJ?=
 =?utf-8?B?Q2lxS0txOTNmdmRoUTdqR0ZORWcxTkJXck8zOGt4ZGlDWUhCeWtsQytUTFYr?=
 =?utf-8?B?TURRYU9SNWZ6b1RnaVdOTEVKYWtpQXdwTmt0c2Y1RmhJam4xN3doRFpYek96?=
 =?utf-8?B?akRGeXo4N05oUndHY2N2ZXhwZTh2UUlxb0hUUFhxdEhsSGZwTE5QN3RHdUtJ?=
 =?utf-8?B?NDVEWnVkTVovdUFjTFNTM3htZTVBMURDb0Z5elEva1l4eDhkNndqVjZCMm5M?=
 =?utf-8?B?R1BmTWhORXdHb2lJeU02aEFqRXlydnluZVY5U2Mzd3NFSzF0VnhoQm1XNlRv?=
 =?utf-8?Q?P9WUiFLqj8dzRehK4dYBcfCQ6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8de99fd1-0eac-4876-3d46-08dbca3919bc
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 09:04:39.9012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MqgZMzeh286aNMth/WO9NyMhk3X6OKOy16LHI1r0wI3YZG+xG93KEcQVSkHZ3TVHC/r608Zd5BMcEhGpg0PDcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 6/7] drm/i915/gt: Increase sleep in
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
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/11/2023 2:02 AM, Jonathan Cavitt wrote:
> For the gt_tlb live selftest, when operating on the GSC engine,
> increase the timeout from 10 ms to 200 ms because the GSC
> engine is a bit slower than the rest.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/selftest_tlb.c | 11 +++++++++--
>   1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> index 7e41f69fc818f..00b872b6380b1 100644
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
> +		msleep(10);
> +
>   	if (va == vb) {
>   		if (!i915_request_completed(rq)) {
>   			pr_err("%s(%s): Semaphore sanitycheck failed %llx, with alignment %llx, using PTE size %x (phys %x, sg %x)\n",
