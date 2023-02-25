Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 456566A260B
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Feb 2023 01:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656B310E043;
	Sat, 25 Feb 2023 00:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BFA710E5DF
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Feb 2023 00:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677286739; x=1708822739;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=N3LAC37eaccQ/4drEIvkfXYPTLVkmL4KgdQ0iyOD91w=;
 b=j8qow7ZZjeEBhCzuTd0D2Bcpi9fQIUDvMfqDtis/uRXkB1unDTOJBRMh
 Db/b51w0dL7SWFLXXilkzyCKpjSyVI3lxruIjwlKL5INl3YYQfQkfIAbv
 5vny+l4L5ZJZKq/b0DJ2SvLxSTwV1yq7Chtu4yyMQp0N5UcZ16ZfDNZnn
 1g27bV2VnFRn5pGZdB1XgdC8knjNPJcXvWdeIHcSjz/DoO4x9DwKMxML9
 F5I4GS8nxRZVIdaN0bVSZvlzwZqvj504RWoy0DYwzJfSaCmw5c0gp75Ue
 Th9doOwpnHlyF4hy6uY5c28xsIf+rQl9jf/RpnenIDdBD7HAXZcFG9qTn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="361122700"
X-IronPort-AV: E=Sophos;i="5.97,326,1669104000"; d="scan'208";a="361122700"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 16:58:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="796913830"
X-IronPort-AV: E=Sophos;i="5.97,326,1669104000"; d="scan'208";a="796913830"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 24 Feb 2023 16:58:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 16:58:58 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 16:58:58 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 16:58:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NEMyQCc4ppVsgWHk0A7kjR9C3gWKKrW3wGapFK5eGHQpouIz+1RztY08WB/5RybPt9m1kZ1oMpvlM4PJUoTnju5Cq2LunlJF/HgD9PyysT7MSKFeCmijJ3FiM+xYMPnRFgUODbEolL+G8AZcxsWupGQaF4OVNS5gFEqwsoJxVYemjSAd7GjTmNo0B1/sW2+dFVhiGos10KnIEQFZiTXzw6rK/i2Qsmzjjq6E25Ypl8o21M9JmWq0+SiIj7YHcl2WKyYUIg7U2BG6GuRO6t6eA3BjLvV+NIcVndaPH1mUogg9DvWMaVDMEa63+YVjqoS2kSckEuoL2P+bBtVmkOnLsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BtgkTwXe5hZiJIPnA9eF1Th2KkmqhmWXWj/YSbKmQ5c=;
 b=cUKxweYi+eYuImGd6PqmOk1dVdKQt6ZQVlYZN886QzN+1UJCxpkYmwkWWixKgn1ZlwRMUS84RQSp9aXYJRY/PUMC3v+Nt7SAhv38kHDG2SSy1ObIm4j8k98YooN255J4fbdxCQqs3N++qLY/H694TsxMK8O7I1Gn35pCvgai4ghnWXcFS+55YG56qv/c+voX0hnLxaKWp2hAgBh38OVWizHlHoqLFApalHhPXO8KawRInCmNLNO8jMPkteGbWPrExZFmCtKij44TY2T3u5X+VnFG7z1PNAhxPC5iAZNL6AOCvTpw9EIfYGz9GpVEj4c3tMky0arqfCUlohdMp4VaFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 IA0PR11MB7911.namprd11.prod.outlook.com (2603:10b6:208:40e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Sat, 25 Feb
 2023 00:58:50 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6134.024; Sat, 25 Feb 2023
 00:58:50 +0000
Date: Fri, 24 Feb 2023 16:58:39 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y/ldP7cdyAcJt9Oe@orsosgc001.jf.intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
 <20230217005850.2511422-10-umesh.nerlige.ramappa@intel.com>
 <871qmgb11t.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <871qmgb11t.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR05CA0169.namprd05.prod.outlook.com
 (2603:10b6:a03:339::24) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|IA0PR11MB7911:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c77290e-1769-444e-bba7-08db16cb74ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XMkGtlHUum8atEt9UsoT3Vvi57Rzg1fSR68Hvpbb1fGi3q6ba4aGEAEf/Ru6IEf9EoqO0ExfZtk5DSjfVzxk2cau9sBpwcnomx1BctCba1z20AZjixBFDhDMn4yIdXZSXwuw5OZ5ratX9vAZQMyqlpMtC5XH5y346b+dj3Abv2kNpTUhTf9xhb+V/yYPKKX50LIob1qNlY4nf5cew5cOPXbpVkYQTXL4BfF0w7+AMdNuc+OgIsrC3vO22UVCevgwTqJzrnQKxDCZ6X6v7FtkvkuynRQBn5LkzPZOJW6QOgIYuPXcJJ2njWjfJhW5wRBZMhg1I8MI/yxpxrTmi+jRLnLlgq9G2IXJMxF8kPQqe1xKVqQT5XhLxAVu0wtn54xfo1WKlWpfKzqDkwMZ2t2QKslyabPYyBiIrWpdYG1uEQTJaJm4v1LhgK56wgxEDerdTfDGLR7o3aDPY5epK128jR2xBnkWJywTKIajxXvizIRYytC6o6/fYqPoJXdtUQtUHSmQTgQbWb0yMqiapTvT/0HUP86hqpd4rjjNiYieA1t8r4805F2js1dQPNGZ5G7yw+XWgSNly8fsY8q5lQL/cA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199018)(83380400001)(26005)(6636002)(316002)(966005)(6486002)(6512007)(6506007)(186003)(478600001)(6666004)(6862004)(8936002)(38100700002)(30864003)(86362001)(5660300002)(2906002)(66556008)(41300700001)(66899018)(66476007)(4326008)(8676002)(82960400001)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djg3OUN2RUpiUHRFcGt6SERNSnZUNTZ3UFFkQm9qQUd1M2JpUzl4YXI2NkZD?=
 =?utf-8?B?dnhwdkpQM1VXTElMQW4yMkxjRUVITVdOL2ZaYktFc044S21uZS9DZ0NPbnE5?=
 =?utf-8?B?d0t4MTRaVDZNWFhlTzlvM2lTNWRNeUJ2ZjI1c040OFFBY01UMXFDT0lQdGlp?=
 =?utf-8?B?YXMxcHdQT2l2bXpkLzhaQk9SVWxnRnFRQXBPRTU4WCsyTkltNXZaYnUxUllC?=
 =?utf-8?B?Yi9vOTV1VXNNc2hYanZWbmt4QkR5dFFHZTFuZXorV0RNT05KSkhDM25Nbk4r?=
 =?utf-8?B?OHpGN2MzN0l2RnZrdjFCV3BJUnY0STRQSzl6VGJ0aXh6U1hJVlA0Z3BTUS9j?=
 =?utf-8?B?LzFDc1ljZ0FkdEVvRGlhNmlLcCtRVS9yZ0R2aTNIdzNySUVjS0lWQVd5ZkJD?=
 =?utf-8?B?bDVYMU9NeEhDL3FnbTZGenpZSVZiNWMyVlh1d3BpdG5hVGNRV09Zcmt0WXBs?=
 =?utf-8?B?cWp2alNYSjJIN2tNeGwyVmVDeFVJYWIzeDVhN1NWRTgwQ0tqV09wMVdPVWh4?=
 =?utf-8?B?K01WRXBHU1pRcXRaekhwTitHVm44K21VS2RnWHcwK2JwSDZvWGJKM25HMVQ4?=
 =?utf-8?B?RW81VGw5clVUTDFWNndjZno4YnZGSlBBclU3MG1wVjE1R1hISGlnTTY0YndI?=
 =?utf-8?B?WE5CeDlhVlE1eHJ5TmdQQU9FdDNLS25zTHpGNzdOeVNua3ZLbVpzZUR1ZUZG?=
 =?utf-8?B?NTdGUUs1aXp3OC9nYWp4bDZUV3pqQU1tK3VLQ01saGdGSmFnOU1IT3pSQzQz?=
 =?utf-8?B?ZlFkeUdaZjRGQUsrYVVKUU5LK3hlYjM0aFNpM2tkcTY5RFk3S2hHQU4xc3pp?=
 =?utf-8?B?ZGMzQ1Bha1hUWXF0K0lObTYwYUlqQUl0VFNoYWVtVTJQZmRPWW1TNFIzUC90?=
 =?utf-8?B?SVVNcVBkc0thL2k4RTQwZEJXMGdNengrcjJRNWJJV3ErdFh5UjFwSm93N0pH?=
 =?utf-8?B?bE1wNUtSWXhQMEJUNUl1bmtBc25MaDk3RlhZa2Fvcml3Zm5aT2xYdC9MYUhz?=
 =?utf-8?B?dnVZZTdPblpOMlVpTWI5b2luTTU3TzZ6U0xobGdFNEZ4YnRtdmN3L1hwVnFK?=
 =?utf-8?B?d3RFZU4rN2k3b0VCcWVncm42RytLRnhPclMwTWFYclp5OTdPSW9HMzZDc2s0?=
 =?utf-8?B?V1A0cFczV1VSTzdMRFVESzh1NTRESDRVSSt5bHoxaE9YWW5XQVc0VHJWSFpT?=
 =?utf-8?B?V25SdmlJMTJ0di8xKzI0RHAyeStLdi9TK2FwOXNFWTgzK0FJRDlaOHozR3Jk?=
 =?utf-8?B?UXQ2eVJYTlAyQjJJS29BckExOFFFazAvaVRGN1NJZm5jY2VDcm1WV2hwZngz?=
 =?utf-8?B?VUFPMlRuSGlVVXd0akdVT3VzbUFxMmwrSHB5M0VOdG1OUDk5UEdoL09BdXIw?=
 =?utf-8?B?Ti9zaW5OaElVY3hEYWFKZThrYnY1SG9BemFHc3VJWTd5OUU0akJvOEN6cVhG?=
 =?utf-8?B?ZWl2aUZsbWZubnQrRWtmTHBLQmxFeHAzVzZ6VC8wazRTckx5OW5iQkZjc21h?=
 =?utf-8?B?Vlk1cUNVTU41MnJPVDFyNWpvamEvdEZmY1NUaDZIRlh3WlZRcTNJNTM2K0xn?=
 =?utf-8?B?c2swSG5mR0wyNyt5WWcza3lrdktYbHRucWtSczRSdkFKd3U0MDVsZVBjTldQ?=
 =?utf-8?B?SE9jcnJWZnNtZFhIN3BFVkh4Znd2U0FMWlBXTGc4Zis4UlFuTm85Q0JPaVV5?=
 =?utf-8?B?UGpZckxTTzVwSDcvSFpTUHo0TFlaemtGaTRPcTdRNUxQc2lueEduOVA3Wmhs?=
 =?utf-8?B?SzdvRTFYQ3loYURKU05wcWk5bi92WXBTdHU2M1lYWmRqTG5lTE9tdzlOWFJB?=
 =?utf-8?B?Y2Q4Ri9MQUhWNzZvNjZCK0NJSmxoTjlHL0xxTG44U0VMY29vOXU1ZGI5RzNU?=
 =?utf-8?B?dWNVa1dFM2ZWWlIyakZyWlAzR1FSYzdpWEQ5Y2xvdXZmR3ZDTUFrUW1pdkx1?=
 =?utf-8?B?NlNldS9yd2lUaTd5VjdrUi9IdlZiRkorMFRWSVBRZmNydHZwejVLdTM3eVo4?=
 =?utf-8?B?Z3hVM1hrWXBxVzhjaVB5Qlo2ZkUvSjhwTmZITTZUa2JDSGRXQ3UxS0VRNXcz?=
 =?utf-8?B?QWhvTkptYUIvN3NXc1lSaHFkWnBQdkVXcUNKd21sSThMbDdpV01zaUtXb0xu?=
 =?utf-8?B?VVRSUkE4aTVZQU40bEh6cDZ3SUhtNWd6aUR6dHFYcjBTbFdVcGJpSG90WjdD?=
 =?utf-8?Q?ga9YeNDNiFwt1eXH+om8jl4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c77290e-1769-444e-bba7-08db16cb74ba
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2023 00:58:49.8123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E2IZmj21l2qqW6iTo1VsnpWsJvKCjodT3wzG20XrMtb3scwdt/pp8fM6PjXuOMywVZvAfjBYLdFKVCVI9SfpgX3C5ZrkJ6huX3+mzeAv6V0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7911
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 9/9] drm/i915/perf: Add support for OA
 media units
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

On Thu, Feb 23, 2023 at 12:05:02PM -0800, Dixit, Ashutosh wrote:
>On Thu, 16 Feb 2023 16:58:50 -0800, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> MTL introduces additional OA units dedicated to media use cases. Add
>> support for programming these OA units by passing the media engine class
>> and instance parameters.
>>
>> UMD specific changes for GPUvis support:
>> https://patchwork.freedesktop.org/patch/522827/?series=114023
>> https://patchwork.freedesktop.org/patch/522822/?series=114023
>> https://patchwork.freedesktop.org/patch/522826/?series=114023
>> https://patchwork.freedesktop.org/patch/522828/?series=114023
>> https://patchwork.freedesktop.org/patch/522816/?series=114023
>> https://patchwork.freedesktop.org/patch/522825/?series=114023
>
>General comment about the patch in case I miss something out, as I've
>mentioned previously in general let's try to replace INTEL_METEORLAKE and
>IS_METEORLAKE checks in the patch with:
>
>	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>
>So that we don't have to enumerate each platform individually later.

Hmm, I recall that you had already commented about this at some point, 
sorry I missed that. Do you suggest I add this change in places outside 
this patch as well?

>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h          |   2 +
>>  drivers/gpu/drm/i915/i915_pci.c          |   1 +
>>  drivers/gpu/drm/i915/i915_perf.c         | 247 ++++++++++++++++++++---
>>  drivers/gpu/drm/i915/i915_perf_oa_regs.h |  78 +++++++
>>  drivers/gpu/drm/i915/i915_perf_types.h   |  40 ++++
>>  drivers/gpu/drm/i915/intel_device_info.h |   1 +
>>  include/uapi/drm/i915_drm.h              |   4 +
>>  7 files changed, 347 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 0393273faa09..f3cacbf41c86 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -856,6 +856,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>	(INTEL_INFO(dev_priv)->has_oa_bpc_reporting)
>>  #define HAS_OA_SLICE_CONTRIB_LIMITS(dev_priv) \
>>	(INTEL_INFO(dev_priv)->has_oa_slice_contrib_limits)
>> +#define HAS_OAM(dev_priv) \
>> +	(INTEL_INFO(dev_priv)->has_oam)
>>
>>  /*
>>   * Set this flag, when platform requires 64K GTT page sizes or larger for
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>> index a8d942b16223..621730b6551c 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -1028,6 +1028,7 @@ static const struct intel_device_info adl_p_info = {
>>	.has_mslice_steering = 1, \
>>	.has_oa_bpc_reporting = 1, \
>>	.has_oa_slice_contrib_limits = 1, \
>> +	.has_oam = 1, \
>>	.has_rc6 = 1, \
>>	.has_reset_engine = 1, \
>>	.has_rps = 1, \
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index f028df812067..a57690f4c531 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -192,6 +192,7 @@
>>   */
>>
>>  #include <linux/anon_inodes.h>
>> +#include <linux/nospec.h>
>>  #include <linux/sizes.h>
>>  #include <linux/uuid.h>
>>
>> @@ -326,6 +327,13 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>>	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
>>	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
>>	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
>> +	[I915_OAM_FORMAT_MPEC8u64_B8_C8]	= { 1, 192, TYPE_OAM, HDR_64_BIT },
>> +	[I915_OAM_FORMAT_MPEC8u32_B8_C8]	= { 2, 128, TYPE_OAM, HDR_64_BIT },
>> +};
>> +
>> +/* PERF_GROUP_OAG is unused for oa_base, drop it for mtl */
>
>What does this comment mean?

There are multiple OAM units and the base for each is used to calculate 
the OA regs mmio address. OAG is just one unit with the same addresses 
for the regs, so we don't use this array that initializes the bases for 
OA units. Maybe I will add this in the comment here.

>
>> +static const u32 mtl_oa_base[] = {
>> +	[PERF_GROUP_OAM_SAMEDIA_0] = 0x393000,
>>  };
>>
>>  #define SAMPLE_OA_REPORT      (1<<0)
>> @@ -418,11 +426,17 @@ static void free_oa_config_bo(struct i915_oa_config_bo *oa_bo)
>>	kfree(oa_bo);
>>  }
>>
>> +static inline const
>> +struct i915_perf_regs *__oa_regs(struct i915_perf_stream *stream)
>> +{
>> +	return &stream->oa_buffer.group->regs;
>
>Should just use stream->engine->oa_group->regs, see near the bottom.
>
>> +}
>> +
>>  static u32 gen12_oa_hw_tail_read(struct i915_perf_stream *stream)
>>  {
>>	struct intel_uncore *uncore = stream->uncore;
>>
>> -	return intel_uncore_read(uncore, GEN12_OAG_OATAILPTR) &
>> +	return intel_uncore_read(uncore, __oa_regs(stream)->oa_tail_ptr) &
>>	       GEN12_OAG_OATAILPTR_MASK;
>>  }
>>
>> @@ -886,7 +900,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>>		i915_reg_t oaheadptr;
>>
>>		oaheadptr = GRAPHICS_VER(stream->perf->i915) == 12 ?
>
>>= 12 ?
>
>> -			    GEN12_OAG_OAHEADPTR : GEN8_OAHEADPTR;
>> +			    __oa_regs(stream)->oa_head_ptr :
>> +			    GEN8_OAHEADPTR;
>>
>>		spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
>>
>> @@ -939,7 +954,8 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
>>		return -EIO;
>>
>>	oastatus_reg = GRAPHICS_VER(stream->perf->i915) == 12 ?
>
>>= 12 ?
>
>> -		       GEN12_OAG_OASTATUS : GEN8_OASTATUS;
>> +		       __oa_regs(stream)->oa_status :
>> +		       GEN8_OASTATUS;
>>
>>	oastatus = intel_uncore_read(uncore, oastatus_reg);
>>
>> @@ -1643,16 +1659,46 @@ free_noa_wait(struct i915_perf_stream *stream)
>>	i915_vma_unpin_and_release(&stream->noa_wait, 0);
>>  }
>>
>> +/*
>> + * intel_engine_lookup_user ensures that most of engine specific checks are
>> + * taken care of, however, we can run into a case where the OA unit catering to
>> + * the engine passed by the user is disabled for some reason. In such cases,
>> + * ensure oa unit corresponding to an engine is functional. If there are no
>> + * engines in the group, the unit is disabled.
>> + */
>> +static bool oa_unit_functional(const struct intel_engine_cs *engine)
>> +{
>> +	return engine->oa_group && engine->oa_group->num_engines;
>> +}
>> +
>>  static bool engine_supports_oa(const struct intel_engine_cs *engine)
>>  {
>>	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
>>
>>	switch (platform) {
>> +	case INTEL_METEORLAKE:
>> +		return engine->class == RENDER_CLASS ||
>> +		       ((engine->class == VIDEO_DECODE_CLASS ||
>> +			 engine->class == VIDEO_ENHANCEMENT_CLASS) &&
>> +			engine->gt->type == GT_MEDIA);
>>	default:
>>		return engine->class == RENDER_CLASS;
>>	}
>
>As mentioned in a previous patch, this could just be:
>
>	return engine->oa_group;
>
>Because all these checks have already been done when the perf groups were
>initialized so let's use that, as is done for oa_unit_functional.
>
>Though, caution, to return engine->oa_group we'd have to remove
>engine_supports_oa from __oa_engine_group, since engine->oa_group is not
>yet assigned there. But I think the engine_supports_oa check in
>__oa_engine_group is a duplication and should be removed.
>
>>  }
>>
>> +static bool engine_class_supports_oa_format(struct intel_engine_cs *engine, int type)
>> +{
>> +	switch (engine->class) {
>> +	case RENDER_CLASS:
>> +		return type == TYPE_OAG;
>> +	case VIDEO_DECODE_CLASS:
>> +	case VIDEO_ENHANCEMENT_CLASS:
>> +		return type == TYPE_OAM;
>> +	default:
>> +		return false;
>> +	}
>> +}
>> +
>
>Again, how about:
>
>	return engine->oa_group && engine->oa_group->type == type;
>
>Otherwise as mentioned below oa_group->type is unused and also incorrectly
>assigned at present. The format type and group types are the same
>(TYPE_OAG/TYPE_OAM). Can name the function engine_supports_oa_format.
>
>>  static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>>  {
>>	struct i915_perf *perf = stream->perf;
>> @@ -1680,7 +1726,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>>		drm_WARN_ON(&gt->i915->drm,
>>			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
>>
>> -	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
>> +	intel_uncore_forcewake_put(stream->uncore, g->fw_domains);
>>	intel_engine_pm_put(stream->engine);
>>
>>	if (stream->ctx)
>> @@ -1804,8 +1850,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
>>
>>	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
>>
>> -	intel_uncore_write(uncore, GEN12_OAG_OASTATUS, 0);
>> -	intel_uncore_write(uncore, GEN12_OAG_OAHEADPTR,
>> +	intel_uncore_write(uncore, __oa_regs(stream)->oa_status, 0);
>> +	intel_uncore_write(uncore, __oa_regs(stream)->oa_head_ptr,
>>			   gtt_offset & GEN12_OAG_OAHEADPTR_MASK);
>>	stream->oa_buffer.head = gtt_offset;
>>
>> @@ -1817,9 +1863,9 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
>>	 *  to enable proper functionality of the overflow
>>	 *  bit."
>>	 */
>> -	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
>> +	intel_uncore_write(uncore, __oa_regs(stream)->oa_buffer, gtt_offset |
>>			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
>> -	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
>> +	intel_uncore_write(uncore, __oa_regs(stream)->oa_tail_ptr,
>>			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
>>
>>	/* Mark that we need updated tail pointers to read from... */
>> @@ -2579,7 +2625,8 @@ gen8_modify_self(struct intel_context *ce,
>>	return err;
>>  }
>>
>> -static int gen8_configure_context(struct i915_gem_context *ctx,
>> +static int gen8_configure_context(struct i915_perf_stream *stream,
>> +				  struct i915_gem_context *ctx,
>>				  struct flex *flex, unsigned int count)
>>  {
>>	struct i915_gem_engines_iter it;
>> @@ -2589,7 +2636,8 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
>>	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
>>		GEM_BUG_ON(ce == ce->engine->kernel_context);
>>
>> -		if (!engine_supports_oa(ce->engine))
>> +		if (!engine_supports_oa(ce->engine) ||
>> +		    ce->engine->class != stream->engine->class)
>>			continue;
>>
>>		/* Otherwise OA settings will be set upon first use */
>> @@ -2720,7 +2768,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
>>
>>		spin_unlock(&i915->gem.contexts.lock);
>>
>> -		err = gen8_configure_context(ctx, regs, num_regs);
>> +		err = gen8_configure_context(stream, ctx, regs, num_regs);
>>		if (err) {
>>			i915_gem_context_put(ctx);
>>			return err;
>> @@ -2740,7 +2788,8 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
>>	for_each_uabi_engine(engine, i915) {
>>		struct intel_context *ce = engine->kernel_context;
>>
>> -		if (!engine_supports_oa(ce->engine))
>> +		if (!engine_supports_oa(ce->engine) ||
>> +		    ce->engine->class != stream->engine->class)
>>			continue;
>>
>>		regs[0].value = intel_sseu_make_rpcs(engine->gt, &ce->sseu);
>> @@ -2765,6 +2814,9 @@ gen12_configure_all_contexts(struct i915_perf_stream *stream,
>>		},
>>	};
>>
>> +	if (stream->engine->class != RENDER_CLASS)
>> +		return 0;
>
>OK, this is for render, nothing equivalent needed for media?

Media engines decided not to have anything configured in the CS 
contexts, rather everything is saved/restored in power context 
transitions, so nothing to be done here.

>
>> +
>>	return oa_configure_all_contexts(stream,
>>					 regs, ARRAY_SIZE(regs),
>>					 active);
>> @@ -2894,7 +2946,7 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
>>				   _MASKED_BIT_ENABLE(GEN12_DISABLE_DOP_GATING));
>>	}
>>
>> -	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
>> +	intel_uncore_write(uncore, __oa_regs(stream)->oa_debug,
>>			   /* Disable clk ratio reports, like previous Gens. */
>>			   _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
>>					      GEN12_OAG_OA_DEBUG_INCLUDE_CLK_RATIO) |
>> @@ -2904,7 +2956,7 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
>>			    */
>>			   oag_report_ctx_switches(stream));
>>
>> -	intel_uncore_write(uncore, GEN12_OAG_OAGLBCTXCTRL, periodic ?
>> +	intel_uncore_write(uncore, __oa_regs(stream)->oa_ctx_ctrl, periodic ?
>>			   (GEN12_OAG_OAGLBCTXCTRL_COUNTER_RESUME |
>>			    GEN12_OAG_OAGLBCTXCTRL_TIMER_ENABLE |
>>			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
>> @@ -3058,8 +3110,8 @@ static void gen8_oa_enable(struct i915_perf_stream *stream)
>>
>>  static void gen12_oa_enable(struct i915_perf_stream *stream)
>>  {
>> -	struct intel_uncore *uncore = stream->uncore;
>> -	u32 report_format = stream->oa_buffer.format->format;
>> +	const struct i915_perf_regs *regs;
>> +	u32 val;
>>
>>	/*
>>	 * If we don't want OA reports from the OA buffer, then we don't even
>> @@ -3070,9 +3122,11 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
>>
>>	gen12_init_oa_buffer(stream);
>>
>> -	intel_uncore_write(uncore, GEN12_OAG_OACONTROL,
>> -			   (report_format << GEN12_OAG_OACONTROL_OA_COUNTER_FORMAT_SHIFT) |
>> -			   GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE);
>> +	regs = __oa_regs(stream);
>> +	val = (stream->oa_buffer.format->format << regs->oa_ctrl_counter_format_shift) |
>> +	      GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE;
>> +
>> +	intel_uncore_write(stream->uncore, regs->oa_ctrl, val);
>>  }
>>
>>  /**
>> @@ -3124,9 +3178,9 @@ static void gen12_oa_disable(struct i915_perf_stream *stream)
>>  {
>>	struct intel_uncore *uncore = stream->uncore;
>>
>> -	intel_uncore_write(uncore, GEN12_OAG_OACONTROL, 0);
>> +	intel_uncore_write(uncore, __oa_regs(stream)->oa_ctrl, 0);
>>	if (intel_wait_for_register(uncore,
>> -				    GEN12_OAG_OACONTROL,
>> +				    __oa_regs(stream)->oa_ctrl,
>>				    GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE, 0,
>>				    50))
>>		drm_err(&stream->perf->i915->drm,
>> @@ -3329,6 +3383,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>
>>	stream->sample_size = sizeof(struct drm_i915_perf_record_header);
>>
>> +	stream->oa_buffer.group = g;
>
>Should just use stream->engine->oa_group, see near the bottom.
>
>>	stream->oa_buffer.format = &perf->oa_formats[props->oa_format];
>>	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.format->size == 0))
>>		return -EINVAL;
>> @@ -3379,7 +3434,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>	 *   references will effectively disable RC6.
>>	 */
>>	intel_engine_pm_get(stream->engine);
>> -	intel_uncore_forcewake_get(stream->uncore, FORCEWAKE_ALL);
>> +	intel_uncore_forcewake_get(stream->uncore, g->fw_domains);
>>
>>	/*
>>	 * Wa_16011777198:dg2: GuC resets render as part of the Wa. This causes
>> @@ -3440,7 +3495,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>		intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc);
>>
>>  err_gucrc:
>> -	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
>> +	intel_uncore_forcewake_put(stream->uncore, g->fw_domains);
>>	intel_engine_pm_put(stream->engine);
>>
>>	free_oa_configs(stream);
>> @@ -4033,6 +4088,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>				    struct perf_open_properties *props)
>>  {
>>	struct drm_i915_gem_context_param_sseu user_sseu;
>> +	const struct i915_oa_format *f;
>>	u64 __user *uprop = uprops;
>>	bool config_sseu = false;
>>	u8 class, instance;
>> @@ -4203,6 +4259,17 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>	if (!engine_supports_oa(props->engine))
>>		return -EINVAL;
>>
>> +	if (!oa_unit_functional(props->engine))
>> +		return -ENODEV;
>> +
>> +	i = array_index_nospec(props->oa_format, I915_OA_FORMAT_MAX);
>
>Why do we need this (something to do with speculation)? Can just do
>'&perf->oa_formats[props->oa_format]' below? The format passed in has
>already been checked in the switch statement above.

Traced it back to "smatch cleanups" commit in rebase history. Something 
to do with static analysis. If not a major concern, I would leave it as 
is.

>
>> +	f = &perf->oa_formats[i];
>> +	if (!engine_class_supports_oa_format(props->engine, f->type)) {
>> +		DRM_DEBUG("Invalid OA format %d for class %d\n",
>> +			  f->type, props->engine->class);
>> +		return -EINVAL;
>> +	}
>> +
>>	if (config_sseu) {
>>		ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
>>		if (ret) {
>> @@ -4383,6 +4450,14 @@ static const struct i915_range gen12_oa_b_counters[] = {
>>	{}
>>  };
>>
>> +static const struct i915_range mtl_oam_b_counters[] = {
>> +	{ .start = 0x393000, .end = 0x39301c },	/* GEN12_OAM_STARTTRIG1[1-8] */
>> +	{ .start = 0x393020, .end = 0x39303c },	/* GEN12_OAM_REPORTTRIG1[1-8] */
>> +	{ .start = 0x393040, .end = 0x39307c },	/* GEN12_OAM_CEC[0-7][0-1] */
>> +	{ .start = 0x393200, .end = 0x39323C },	/* MPES[0-7] */
>> +	{}
>> +};
>> +
>>  static const struct i915_range xehp_oa_b_counters[] = {
>>	{ .start = 0xdc48, .end = 0xdc48 },	/* OAA_ENABLE_REG */
>>	{ .start = 0xdd00, .end = 0xdd48 },	/* OAG_LCE0_0 - OAA_LENABLE_REG */
>> @@ -4429,13 +4504,16 @@ static const struct i915_range gen12_oa_mux_regs[] = {
>>
>>  /*
>>   * Ref: 14010536224:
>> - * 0x20cc is repurposed on MTL, so use a separate array for MTL.
>> + * 0x20cc is repurposed on MTL, so use a separate array for MTL. Also add the
>> + * MPES/MPEC registers.
>
>MPES/MPEC registers are added above now, not here so maybe get rid of the
>comment change above?
>
>>   */
>>  static const struct i915_range mtl_oa_mux_regs[] = {
>>	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
>>	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
>>	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
>>	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
>> +	{ .start = 0x38d100, .end = 0x38d114},	/* VISACTL */
>> +	{}
>>  };
>>
>>  static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>> @@ -4473,10 +4551,26 @@ static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>>	return reg_in_range_table(addr, gen12_oa_b_counters);
>>  }
>>
>> +static bool xehp_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
>> +{
>> +	enum intel_platform platform = INTEL_INFO(perf->i915)->platform;
>> +
>> +	if (!HAS_OAM(perf->i915))
>> +		return false;
>> +
>> +	switch (platform) {
>> +	case INTEL_METEORLAKE:
>> +		return reg_in_range_table(addr, mtl_oam_b_counters);
>> +	default:
>> +		return false;
>> +	}
>
>Replace with 'if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))', registers
>are identical in later platforms too.
>
>Should the function prefix be xehp or mtl? Don't see xehp in bspec,
>probably xehp is discontinued.
>
>> +}
>> +
>>  static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>>  {
>>	return reg_in_range_table(addr, xehp_oa_b_counters) ||
>> -		reg_in_range_table(addr, gen12_oa_b_counters);
>> +		reg_in_range_table(addr, gen12_oa_b_counters) ||
>> +		xehp_is_valid_oam_b_counter_addr(perf, addr);
>>  }
>>
>>  static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>> @@ -4846,11 +4940,39 @@ static u32 __num_perf_groups_per_gt(struct intel_gt *gt)
>>	enum intel_platform platform = INTEL_INFO(gt->i915)->platform;
>>
>>	switch (platform) {
>> +	case INTEL_METEORLAKE:
>> +		return 1;
>
>I don't think we need this, as proposed previously maybe the function
>should just unconditionally return 1.
>
>>	default:
>>		return 1;
>>	}
>>  }
>>
>> +static u32 __oam_engine_group(struct intel_engine_cs *engine)
>> +{
>> +	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
>> +	struct intel_gt *gt = engine->gt;
>> +	u32 group = PERF_GROUP_INVALID;
>> +
>> +	switch (platform) {
>> +	case INTEL_METEORLAKE:
>
>Replace here with 'if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))'.
>
>> +		/*
>> +		 * There's 1 SAMEDIA gt and 1 OAM per SAMEDIA gt. All media slices
>> +		 * within the gt use the same OAM. All MTL SKUs list 1 SA MEDIA.
>> +		 */
>> +		drm_WARN_ON(&engine->i915->drm,
>> +			    engine->gt->type != GT_MEDIA);
>> +
>> +		group = PERF_GROUP_OAM_SAMEDIA_0;
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +
>> +	drm_WARN_ON(&gt->i915->drm, group >= __num_perf_groups_per_gt(gt));
>> +
>> +	return group;
>> +}
>> +
>>  static u32 __oa_engine_group(struct intel_engine_cs *engine)
>>  {
>>	if (!engine_supports_oa(engine))
>
>As mentioned above for engine_supports_oa, this looks like a duplication of
>the checks below and should probably be removed.

I recall I added this because on older platforms, we were seeing a 
warnON splat from __oam_engine_group because those platforms had a media 
engine. Ideally, I would implement all your inputs in this patch and 
drop the warnON from __oam_engine_group. Is that okay?

>
>> @@ -4860,11 +4982,58 @@ static u32 __oa_engine_group(struct intel_engine_cs *engine)
>>	case RENDER_CLASS:
>>		return PERF_GROUP_OAG;
>>
>> +	case VIDEO_DECODE_CLASS:
>> +	case VIDEO_ENHANCEMENT_CLASS:
>> +		return __oam_engine_group(engine);
>> +
>>	default:
>>		return PERF_GROUP_INVALID;
>>	}
>>  }
>>
>> +static struct i915_perf_regs __oam_regs(u32 base)
>> +{
>> +	return (struct i915_perf_regs) {
>> +		base,
>> +		GEN12_OAM_HEAD_POINTER(base),
>> +		GEN12_OAM_TAIL_POINTER(base),
>> +		GEN12_OAM_BUFFER(base),
>> +		GEN12_OAM_CONTEXT_CONTROL(base),
>> +		GEN12_OAM_CONTROL(base),
>> +		GEN12_OAM_DEBUG(base),
>> +		GEN12_OAM_STATUS(base),
>> +		GEN12_OAM_CONTROL_COUNTER_FORMAT_SHIFT,
>> +	};
>> +}
>> +
>> +static struct i915_perf_regs __oag_regs(void)
>> +{
>> +	return (struct i915_perf_regs) {
>> +		0,
>> +		GEN12_OAG_OAHEADPTR,
>> +		GEN12_OAG_OATAILPTR,
>> +		GEN12_OAG_OABUFFER,
>> +		GEN12_OAG_OAGLBCTXCTRL,
>> +		GEN12_OAG_OACONTROL,
>> +		GEN12_OAG_OA_DEBUG,
>> +		GEN12_OAG_OASTATUS,
>> +		GEN12_OAG_OACONTROL_OA_COUNTER_FORMAT_SHIFT,
>> +	};
>> +}
>> +
>> +static void oa_init_regs(struct intel_gt *gt, u32 id)
>> +{
>> +	struct i915_perf_group *group = &gt->perf.group[id];
>> +	struct i915_perf_regs *regs = &group->regs;
>> +
>> +	if (id == PERF_GROUP_OAG && gt->type != GT_MEDIA)
>> +		*regs = __oag_regs();
>> +	else if (IS_METEORLAKE(gt->i915))
>
>Replace with 'if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))', OAM
>registers are identical in later platforms too. Maybe get rid of drm_WARN
>below?
>
>> +		*regs = __oam_regs(mtl_oa_base[id]);
>> +	else
>> +		drm_WARN(&gt->i915->drm, 1, "Unsupported platform for OA\n");
>> +}
>> +
>>  static void oa_init_groups(struct intel_gt *gt)
>>  {
>>	int i, num_groups = gt->perf.num_perf_groups;
>> @@ -4881,6 +5050,24 @@ static void oa_init_groups(struct intel_gt *gt)
>>		g->oa_unit_id = perf->oa_unit_ids++;
>>
>>		g->gt = gt;
>> +		oa_init_regs(gt, i);
>> +		g->fw_domains = FORCEWAKE_ALL;
>> +		if (i == PERF_GROUP_OAG) {
>> +			g->type = TYPE_OAG;
>> +
>> +			/*
>> +			 * Enabling all fw domains for OAG caps the max GT
>> +			 * frequency to media FF max. This could be less than
>> +			 * what the user sets through the sysfs and perf
>> +			 * measurements could be skewed. Since some platforms
>> +			 * have separate OAM units to measure media perf, do not
>> +			 * enable media fw domains for OAG.
>> +			 */
>> +			if (HAS_OAM(gt->i915))
>> +				g->fw_domains = FORCEWAKE_GT | FORCEWAKE_RENDER;
>
>Is this needed even when media and render are separate tiles, which is the
>only case we have in this code right now? For separate tiles setting
>FORCEWAKE_ALL should not cap the freq, correct?
>
>If not needed we can get rid of g->fw_domains.
>
>> +		} else {
>> +			g->type = TYPE_OAM;
>
>This is wrong, because num_perf_groups is 1. So the type should be assigned
>not based on i (which is always 0) but maybe similar to what is done in
>oa_init_regs above.

That's a bug. Will fix. It was working as expected for some other 
platforms that had OAM, but with PERF_GROUP_OAM_SAMEDIA_0, it broke.

Thanks,
Umesh
