Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C26658A94
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Dec 2022 09:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 807B210E23F;
	Thu, 29 Dec 2022 08:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B3910E23F
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Dec 2022 08:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672302959; x=1703838959;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wDRkH9JctjnMrjfIgl3VWwNtBczntePLay4cJChoWS0=;
 b=Z7S4b9z8T4PV8zkQ51iMk8XkQ4qNNSNuxxKWQvnay9VMkFQZgR3Jpn1i
 14xgNJjdpXCkoTdPuscjVHprn2/FCyJXBLErMO8JAIHChBFVBoQuCWAqL
 r75D5LkwG2mfvT+S67Su+a2W8ERW5NUzDGXLFopCG1/JzUDiOaqFhnT8g
 iedKBbvGaldCddlLHJ6rWQKn6glPjbhWgnfza7Xk7i/Oj3tDz3O1kb717
 y1WMZs4R7IJQEayM/pT2pOaLVYwWSDEPQUCnPZW9hl4mfFdzkbC1c3v1d
 MbWaq84ipDAULWAFVWfDFVfFEeeRY1vcEqG15jCGmlxaft8jWNpkbrF7o Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="301372101"
X-IronPort-AV: E=Sophos;i="5.96,283,1665471600"; d="scan'208";a="301372101"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 00:35:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="655537681"
X-IronPort-AV: E=Sophos;i="5.96,283,1665471600"; d="scan'208";a="655537681"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 29 Dec 2022 00:35:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 29 Dec 2022 00:35:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 29 Dec 2022 00:35:56 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 29 Dec 2022 00:35:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kc0DeI9dDl76+wXHX36VnVKTyhlGOIZNvXRYfrRk8gvaywYo5j0AUyj/hDnL+9GiYXFZ8hf8ZRUcraNRSNdn7xJ1kjhFr9125WUcMNGpF9BnpoQ8MfVkNM0tXA/FsG2c0xrY2+xq/t/3qDekPMWmBHFG62OFXGyW9sx/6l2XqSspUdfIqaBgsZuF/P4WUo/YshtBnwVvpbxKDBQkWF0eIpM/y3F1KNGrD13Rvb7FcNgPYzkNwhvzq6Fg9OjEeS4MtxtBU6U8H68c3kauHl1aY0c2IQWD0z/3rhG7f++JVvKzCh0vFc8WTJHjSC4E60E1TunQIy+QiZoe5KqHM1BeZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yrvM0ljFgD1iUe+W5PJuh0QZyxxbfUizmZ7b8gKfYhI=;
 b=eMVqf3dSzDnFNaKdLkivTlRJGRpCjeFKLqV2/Ndr7qs8e8L/iZqWrC8mco1P1eGLR7EP4EQCleiEwCDMtYXDuN9JLlsRJG4xcA2Jh57drU/vrTE8s1DHIz2t0zAu2e9wsVMB/jTmaazOrOi8GC+kTdldQGMTWEkH7GT8aHVuDCgye5WY3AyoyfHMa5REhu9IXnpNh9DMQDKRnF0EzB8+ruOZzI8zcIMchY74D3O0t3bkaarJwlyVUsgv1Uhi79dllx1280SmvDTSvqOMkuToQxk/X2FWbR//FG4PhI2Xv7ZJQ9LZTWm/mJ4KVXAyKWC8h6OW6Q5vEKqbSUpd299BlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by DS7PR11MB7836.namprd11.prod.outlook.com (2603:10b6:8:e3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Thu, 29 Dec
 2022 08:35:54 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::2f13:f639:2761:bb6c]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::2f13:f639:2761:bb6c%3]) with mapi id 15.20.5944.018; Thu, 29 Dec 2022
 08:35:54 +0000
Message-ID: <d504f9f4-5d60-041b-b0c3-faf86abaf374@intel.com>
Date: Thu, 29 Dec 2022 10:35:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20221228192252.917299-1-gwan-gyeong.mun@intel.com>
 <167225711146.24088.8938887270368297395@emeril.freedesktop.org>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <167225711146.24088.8938887270368297395@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0037.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::21) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5409:EE_|DS7PR11MB7836:EE_
X-MS-Office365-Filtering-Correlation-Id: c31ad1fe-79e0-4430-5a59-08dae977b2d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NOmfUW9kxC9NAH0rhyYSw6QgNkpKAjZRxAcOwIx/W50ojcrIrxbluEQgy7DPdeIKAO1iL04EAZzevT0Ed4g7YKJEAkSu5jPZWHH1k1JOKrUjNAmwhKH4q43/lG26rMomGgFLHfqiJwqNm8RfnKZaEyKLHQCShz7HrQuSp8SKhhSkUxMDn03oWaTbswOV6XqMHWBYNmazmljbjAJwqsFCKdHcyrMq6QKyhvJ9LshfudjieBis+pX9L5WcrbY5Gp6hkjzp6thZkBoQyaGjzdWV5eBVHpbouRfi+P2ry2ty3HbVxdhd6832BmMEPafZtyghCZXVHZhdzUZk2tqkBQ+xOZG0wWgKD4KM8zznplTZu44Fchrk3QgWp+TcqlWg/psk9dMCCi5bcCwhP13v2aeiIfPPXoNemuWKZgVXTteA/pduiBwd5H0hR2tWgsjRJM4XshTnoxUx/GDbQnQKPDNxpQW1/vrEwynULOwmnJ6ANK3rR3olNMQr2/ZsoR39f+kT2EHD4dT5kYEPKeNVT8dAtOJkNfXBVaqboYROlYNBNOApl8BK2jn3hwSKF7DmdYEDSEhc34QL5KmjgRm8tWF1UQ3VEsJaRwUcIrey9oDILELez6fSII6b+VfS/kMlJ000P0IZ6UQyOG8nV7g2lcZ9oJmmBBAYF5FpwQuBQdAdjd7KBtnNeUCUKH4tYeU37W94
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199015)(41300700001)(66556008)(5660300002)(6916009)(82960400001)(2906002)(316002)(66476007)(8936002)(66946007)(38100700002)(966005)(83380400001)(6512007)(186003)(2616005)(26005)(6506007)(478600001)(86362001)(31686004)(36756003)(6486002)(31696002)(53546011)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWZEdGx2cjNiM3U1TER1S2tub3VsbXJBbUh0OGxQTkwwY1pPMzhCdUsyWGcw?=
 =?utf-8?B?TTVDQmRuY09peXBBamhQL3p6SlJldi9mYTdGZzBQeHZRVS9oVGdCOG5aSHZp?=
 =?utf-8?B?UnBUNDFFYVdiMlFZQlZaS2UxKzM3L2o1S1JOSlFTbHFwQVJOdzczYXpFSDhY?=
 =?utf-8?B?UHk4MjZZSGE1U0JNWVRvczU3RTFQL0pISk56UGRJcHV2cHdjZ3ZZaFJyYVlU?=
 =?utf-8?B?aFp4WHNvQkRGVkNnTmQxSFd0REw3UnJaWHcxTjF6K2F0ZjRKUjNocytCNngz?=
 =?utf-8?B?VFlYTkZzTlVMalplazVoL3ZEbjVJcXRSUSsra0FKVkw0bDVWYTJRdFRLT0xm?=
 =?utf-8?B?eHBXTHlDblJqcEprV3haMmgybUZnN2ZUSzJ6N3hia0ltNi85UytpSWdNY1A2?=
 =?utf-8?B?RmN6c3RHY0ljSVdjN2gvUE54NjFCTnRSVUJPSDR6S0JpajJCcWZIdzAreTA1?=
 =?utf-8?B?cnBYNFY5aFFraUZqYk1qeC9kVC9ta2lQcTVRNlg5bmhpTTNCaWpONkVTVXF2?=
 =?utf-8?B?UGFFTnVQVzErVWxZc2RnSjQ3OTZZU2ZoV3FZUVp1czRqblo3ZjNiYTlvTlpp?=
 =?utf-8?B?bU5hOWEwY0YwakFKdFhMNTNSelVuRVNoTUdQZGVRb2l4VFRHa01yRVg5a2dp?=
 =?utf-8?B?NmlZdGwrcDBQdFBHZElKRE5NNzZHUVJtbmxhaDR5ejd5VmxqcWRHM09uM1VH?=
 =?utf-8?B?elo0TFpLbkhQaGhRbGtSeXhIQlVJTDk1ekNRb2RXU0R1MXhldkZESkhPeUdp?=
 =?utf-8?B?bVFtaHo5bkh1TERPTXRBcytYNGlUbkZJVUhNZ1VOUDlLdmlqMVYvRVcyV1Nz?=
 =?utf-8?B?VXZnbHpobytmWGpia2R0NDV2M0RNeHZQT2MzZXNaSTh4WjZ0Ulp4YkFIN1Zx?=
 =?utf-8?B?ZzNJQXdmb1RpMXNrVHo0dExlNE5QdVhlZEQ3UVV6RHhxY0FqQlB0bWJQcDk2?=
 =?utf-8?B?RUtwRzBjZURNNVhzcmo3MnZodWpiRi9aOW83ZVRQZmgzT05Odm5oK3VkUWJo?=
 =?utf-8?B?R1FTcnRUU1JaamY5dTlPRE1PN01ld00rZDFldFUvNU9QUytrdWhLeW9QSlVm?=
 =?utf-8?B?UXhERzIzdXVoQXR0YlV4blJyVVc5c1A3QlNHYnBaSzVkb0pkZUNyL1BZeWc3?=
 =?utf-8?B?d2VrT0RLQWtldURQWWNkb1l2bEsxVkxWZDRmR09kOWEyRk9Td24vTVorcjhL?=
 =?utf-8?B?MlI1dmRFLzNRTkRWS3luNVBSbWczZnBLYXpRclNPSDlNd2VJZzc1ZzNzdVVV?=
 =?utf-8?B?UHBzbEtZWThLeVU0ZzFDbmdJcEdscGZNWVJQdFJZd0lmTm9sVUZPdDF6Wm54?=
 =?utf-8?B?QjdNcnBKUXhRVzdHMldTRlp4OUZ5SXc5clNWZXdCT2tlUTVBdWVETE5iblFG?=
 =?utf-8?B?NTBCNVIrUzRURzBiczlhZy9ud2NlNXZIdVZrdlpJUkJRSG0zazRlWS9wem1H?=
 =?utf-8?B?elhubnJvcVFwbi9iRHA2Z3k1VC8wZjRpUnNLanZmL0tYd25aQkpOR05IZEp4?=
 =?utf-8?B?NGZSRGtpWVgxS2o2eVVkYXROT0xNanVCTDdkaFZZV2F5K2E5U2ZXd2VFV1Ax?=
 =?utf-8?B?eStrRVZqSFNsTlVWZXp0OEpUNVBQeldWMTNWaHJZRzRsZXRCYWJKc1BXYWZC?=
 =?utf-8?B?OTkzanNNUjE5MWFaVnR4Vjd3Qll2MGMvVDhoaVZoTDVGNXNlbWxqMWozT1V4?=
 =?utf-8?B?NklmendsQ25HN0hGOXRKQ3krR3ZlSE05T2lNM1RsQTV4NXFZK3o0VWdXVEZP?=
 =?utf-8?B?ZldmbVV1WW8xdG83cjZBU0FUVWl5LzV5N2RYVm1EaXhOcU5kT1EwTEhaK3Ew?=
 =?utf-8?B?MWFkc25seXcxbm0rQ3laWlRrNFd2SW5xQ0txVWxyaXJxbFpwN3NzMm1rUFVN?=
 =?utf-8?B?NEdsS0xlaEN2bGljM2lLdGVoOWRVK1pCMCtRQjB0ZTdwZkptdEVrdGt5OFJF?=
 =?utf-8?B?ZHFhU2N2U2hXN0IxYUVsL2E3MERpUXowVGJxQTUwOVpqejhrUlNQSlZhdHZT?=
 =?utf-8?B?WStTWlJpa0ppSWNrSmg2VzFRWVhsWmQxUTVSUmtSaExQeWI3azZESFpPdXc1?=
 =?utf-8?B?U1BqcGJoUThBK2hLdDBsS1ViS1NjM25maWdleXo0YjB1dWR3OXo4L2U0eFpr?=
 =?utf-8?B?KzQ3Rm1nMXFuSE1NaFRoRkhUNWZsNTdsSU9xSTlhZGx6Qk1kNGFEQUdqVW9z?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c31ad1fe-79e0-4430-5a59-08dae977b2d4
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2022 08:35:54.1831 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nqogpdSmDniXpaPQcTigTS+aIbWR1VOpbii7vWYFSPlb6APG2iFoTg2g/2LesFcZ7tzhZ/dNEX9QQDiy56anrQpDP0Og6SFSfguKvjleIYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7836
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixes_integer_overflow_or_integer_truncation_issues_in_page?=
 =?utf-8?q?_lookups=2C_ttm_place_configuration_and_scatterlist_creation?=
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



On 12/28/22 9:51 PM, Patchwork wrote:
> == Series Details ==
> 
> Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation
> URL   : https://patchwork.freedesktop.org/series/112279/
> State : warning
> 
> == Summary ==
> 
> Error: dim checkpatch failed
> 580bc7c6ee10 drm/i915/gem: Typecheck page lookups
> -:56: WARNING:DEPRECATED_API: Deprecated use of 'kmap_atomic', prefer 'kmap_local_page' instead
> #56: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:434:
> +	src_map = kmap_atomic(i915_gem_object_get_page(obj, idx));
The kmap_atomic() used in this patch series is not a new addition, but 
the input argument used in the existing kmap_atomic() call is replaced 
with a local variable.
Therefore, I suggest the discussion of replacing kmap_atomic() with 
kmap_local_page() should be considered in a separate patch.
Unlike kmap_local_page(), kmap_atomic() is accompanied by additional 
operations (preempt_disable, pagefault_disable).
Therefore, it is necessary to separately review whether there is a side 
effect by changing kmap_atomic() to kmap_local_page().
(Note. In the current implementation on i915, only kmap_atomic() is used 
(used in 13 places) and kmap_local_page() is not used.)

[include/linux/highmem-internal.h]
static inline void *kmap_atomic(struct page *page)
{
	if (IS_ENABLED(CONFIG_PREEMPT_RT))
		migrate_disable();
	else
		preempt_disable();
	pagefault_disable();
	return page_address(page);
}
...
static inline void *kmap_local_page(struct page *page)
{
	return page_address(page);
}
> 
> -:76: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #76: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:489:
> +	GEM_BUG_ON(overflows_type(offset >> PAGE_SHIFT, pgoff_t));
GEM_BUG_ON() used in this patch series is not a new addition, but the 
macro of the argument used for input has been changed from the 
previously used GEM_BUG_ON().
Changing GEM_BUG_ON() to a recoverable code should be considered in a 
separate patch.

Br,
G.G.
> 
> -:150: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
> #150: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:413:
> +#define i915_gem_object_page_iter_get_sg(obj, it, n, offset) ({	\
> +	static_assert(castable_to_type(n, pgoff_t));		\
> +	__i915_gem_object_page_iter_get_sg(obj, it, n, offset);	\
> +})
> 
> -:199: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
> #199: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:458:
> +#define i915_gem_object_get_sg(obj, n, offset) ({	\
> +	static_assert(castable_to_type(n, pgoff_t));	\
> +	__i915_gem_object_get_sg(obj, n, offset);	\
> +})
> 
> -:248: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
> #248: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:503:
> +#define i915_gem_object_get_sg_dma(obj, n, offset) ({	\
> +	static_assert(castable_to_type(n, pgoff_t));	\
> +	__i915_gem_object_get_sg_dma(obj, n, offset);	\
> +})
> 
> -:286: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
> #286: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:539:
> +#define i915_gem_object_get_page(obj, n) ({		\
> +	static_assert(castable_to_type(n, pgoff_t));	\
> +	__i915_gem_object_get_page(obj, n);		\
> +})
> 
> -:323: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
> #323: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:574:
> +#define i915_gem_object_get_dirty_page(obj, n) ({	\
> +	static_assert(castable_to_type(n, pgoff_t));	\
> +	__i915_gem_object_get_dirty_page(obj, n);	\
> +})
> 
> -:364: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
> #364: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:612:
> +#define i915_gem_object_get_dma_address_len(obj, n, len) ({	\
> +	static_assert(castable_to_type(n, pgoff_t));		\
> +	__i915_gem_object_get_dma_address_len(obj, n, len);	\
> +})
> 
> -:401: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
> #401: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:647:
> +#define i915_gem_object_get_dma_address(obj, n) ({	\
> +	static_assert(castable_to_type(n, pgoff_t));	\
> +	__i915_gem_object_get_dma_address(obj, n);	\
> +})
> 
> total: 0 errors, 2 warnings, 7 checks, 616 lines checked
> 383085856287 drm/i915: Check for integer truncation on scatterlist creation
> 60d38f11dfc7 drm/i915: Check for integer truncation on the configuration of ttm place
> c51e58da471c drm/i915: Check if the size is too big while creating shmem file
> 96ee63399a5e drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
> 2402a45e5aac drm/i915: Remove truncation warning for large objects
> 
> 
