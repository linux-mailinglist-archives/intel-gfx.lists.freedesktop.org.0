Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5B45AF4D9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 21:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDE6A10E1A2;
	Tue,  6 Sep 2022 19:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C117E10EA73
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 19:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662493987; x=1694029987;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4v+Pm50ahDEEEsIu4f6VlTKYZhnwA1uTgLko0zO81ug=;
 b=HydqL+StLaOR5UkWOl7St8NavK7c1Dq7cN3lML+xDsD9kSSpuCB4TITd
 kyu+rJZ+XpvNUiHWxKNC2bFNXmET0719iZ7BqxlpLsBwaf07BzfoUXQMf
 TwepP8mjVtrvRGGBhJzxAoQ80PbBR2c/wzYjTC2lRAMsisgirsz4qOTt4
 dnvDB2wfiXYsGP3oyqLRFf/KpRzR9XEcsmvcU0rlKrfdkDa++PYEpylGg
 5wVbjmeZfnduRJhneRkpnwUOaccriTtgq2NOibzC42WqBWRV2hYLfj5lB
 /XoqINWQ7lf+w6Exmul22HRC7ngblD0DWjU6FjluOvN7xy3zoE8nli8gH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="277084399"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="277084399"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 12:53:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="859375287"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 06 Sep 2022 12:53:06 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:53:05 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:53:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 12:53:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 12:53:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J2dRt4+IbmZhC6H0ZWNDSoCnSbwBR5hU2Ujnud4xJOVqaL0tm98UUwqFAmw9YThY+0I+WNItTAXwLg1ABKAurLaXo+D5UxsqGrh865QcFCVtkEbHYTOquG0aLVd5ntLR54JbdY1vsWwHtRaFbEaJtnUYBpjrfJaBgbD/Dr1+LEdqCTih0oGHJ5OkGP5Lkp6WJXX9zc9vhuuPudsFnHebasB0neiEgMxZdYbqqRhSxveyMpfPM9ngUs9wbM7Hejd+Z3NxWVecjy7wnK2ukzBlGphF/WxF5pK7sknwXODuNOfNhbrAdrubmcKUw2pvUSpQIq+b1rinGe5t0GrajiqtyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=faOs7/aOKr+OPgXFhe5NkB4w7HdSfgz3dgtII3swv9A=;
 b=cewMJkqBuTtzAI3CCitp3Wb/8YF5JnSkGq1sBObjAwphiIzsQ4ooDJt2EhuEfa0xCfgVvQsgtFXMXaJn/Ie4h6rwneoLldrIzsEKnkLGa77xL8kvc5JQv4Ac43JreBQeegOvN+Jm1hUDadAncKfjZvx3uqPuf2kLwiztxHbQYMGvGvV/CDXu8SAKo0ukbS+fi2/avWr13QyBUrxR3vNbX5PwIZ8py8PteaFuZoE9TD5otThYLAsdQbr5re5um4djUtKvWxpNpPNBX/6cIwKLHJvO/Zuiu5dDn2DwrZwoIZaZoD3l/TYnnfDSnTLPEIVcZE2TeUYBusrvy1tuYk+KaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 BN0PR11MB5741.namprd11.prod.outlook.com (2603:10b6:408:161::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 19:52:57 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 19:52:56 +0000
Message-ID: <b04a9c3b-ec71-ffd0-e7cb-98b2901c32cc@intel.com>
Date: Tue, 6 Sep 2022 22:52:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-8-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220823204155.8178-8-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0135.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::7) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 990fcd5a-5c4d-4fe4-ab5d-08da904164de
X-MS-TrafficTypeDiagnostic: BN0PR11MB5741:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CvUosWLWzbAX5B5H0usa4kNvIE+s0DtkYBknCWoeKLHW6lFlcejpLVhYMHqboe/RvsoqFOExRQafKOSF6izWxle5LZM/hU2a25NsAyy9OdO3kDZAXHS/ikSwduL58DMSHDy8MPrm1xrgMaOG2d3vpWonrcxM0ZdS9p4xVBVV/zQeoz0Equf+1pX/X0qU3W6i0s9fHSWHM0nmxIZrzpt7XS92Lwrp+WfZ3ZhzHD8SLEBJYlb4HMxMoB6vUb8urnsf5s10/cNAsZCdDOwy1fZnPs6cXDYd1NSoJwu0azcLZlSu700XpE76nFzuIEW7e7VTtqMa5AZFOesR+7wCXljfaCn6tVevCa6hpoq0pv0zWA77ErxGk31KEr3YgWHEKhJ7L8L1h04rDwp6XIy1wvZW6UYeIqIrFgEbfRob+13DqDYiHhkJDyciYO4hLeq5zFsLe5yjpEmJ/cosU0aXcgx3nFizDTD/46Us5Xe8nZATVUJh3wgBo3TuGzLkF/+RBnt2YIWfcUVg8f4c/L+k+1eY+VxOexpqcc0JRXcsyhUw/CynQMNlwZCsaIOKBf2CPNmdp794E1GoFYyRrdwRzpip+QklFIZjXe2guphviEoLkhgtLNwrBeKHkcrkwtFoWTQiWMHLXhA1aWZBbbOh12hjI9MdCV0EgImTKlFyaSnLAXAONZlWjXGLZ1MCIIjo2XIaKupVQ4Xu1te6ap7rLIcGd6rAPyBpeKOIs0CbOvHfFZEykS48kB/EDpxRDN5tgUO68Pq/EiW4SR+3qzVCONjQmru3GWz6mOIeb5fvOS1rV20=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(39860400002)(136003)(376002)(396003)(41300700001)(6512007)(6506007)(26005)(2616005)(6666004)(53546011)(107886003)(186003)(4326008)(66476007)(8936002)(2906002)(66946007)(5660300002)(83380400001)(66556008)(8676002)(86362001)(6486002)(316002)(478600001)(31696002)(31686004)(36756003)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVV3eHFrbXArOWlaOVZmSWlyckZZdnRhY3dBSnFwS1FJaTBDV0drTXlYSEgv?=
 =?utf-8?B?UkdkQzdEM2RWOURCOHJOc0g2MzlPdDA2VHZhdHJiRCthU2pHZW9saXQ4ZCtB?=
 =?utf-8?B?RzNhU215ZUQ5cWFIT21udi9XenhPbnVHeElzcm00czNKWm91V29DRzd3UWtx?=
 =?utf-8?B?WVFkaHpZVEYza3VNOUk0SWEvZXdNZjhKOUd2K3A0dktOdFpzTjBnOXNsUG15?=
 =?utf-8?B?alNGL3c5bXYwMW9INDZ2cHQ2Ry9zZDJJVDBiS1RGcXozZVZRb3h0b2pGOTlt?=
 =?utf-8?B?MXZCbU12R0dEQnE3T1dwdzFTMHNDM3I5eFdCb041NS8wYUVvZTJUWDQ1Mnlm?=
 =?utf-8?B?RlNCazh5UllmZXE4V1pmS1Y5ZGV4YjYyMTRWU2ZSY21uSytMdnVjZjRIMTFp?=
 =?utf-8?B?ZkVxYm5RWGhBNDdHRVhRMVU3MFVXY3A5UEl4M3FsM3BUbDZzT0NVSTNFdzRV?=
 =?utf-8?B?eHNTT0VDVGg4ekxWYkdLRnNET1pqK1QzZ2xUNzFIVmlXT1ltZWZ5TVVPQktn?=
 =?utf-8?B?VHV1eXZhWWwvSm83TFVwcFNZWXJiekJnQ0czeHUyWjBick1TWVpqMmNlZzc2?=
 =?utf-8?B?VHlUcTFCSVc0enFjQ05SV3RZRHZTVDI2MEp6RWRZN0ptbHhFSFVyNXpjU2d5?=
 =?utf-8?B?SXZPWVU4Zng1bVJRNzM0NS8vR1pVbzNDRHovcHNrUnBGUEJlMHB6VEhtM0lh?=
 =?utf-8?B?UzBOT2I3N1Y0Q3VFTXVpY1ZNVGVid0R2RC9Cd0c4QS9JRmF6eFdQOWFDTkZR?=
 =?utf-8?B?eUF0dzZuQ0VTZmlPWllNQlZXRHlpQjBDLzdUUmFsOXcrTUxLeWxQL0FnaTVK?=
 =?utf-8?B?Rlovam1CbHU2YTNaR1hsbi9xN3JhS2tkUlV0YUx6b2FGblVoQjFibHFMV1I3?=
 =?utf-8?B?YzZ0SEh4c1ZiVTVoaVY3RmV5NU9JYlJGYlRJdVFMcDg3emQ4WGdIamhFQkRi?=
 =?utf-8?B?RDEvRTArUFBpL216YW8wQmE3RXVSY3hvL3pBSnZCZ0Q1WjZMN0xURmZKaEYr?=
 =?utf-8?B?UHFFMWlQZG9vV0dxSnpQYXJtWTl0Ylp2Q3JSQ3QvRE56NlArbml4Y2FHY09H?=
 =?utf-8?B?bmVkT0x1QTJYOXJ0SnlxUGF6bEx4NFhjVFNvajJuOUFIOXFJS3BiWGZESktV?=
 =?utf-8?B?U0VUa0dPV1BhVkZjb1JMNDRBVHFTdC9ra2w4M2Zjd3ljTkI1aUZtVEtFSFNp?=
 =?utf-8?B?RU9ZYmpUZno0Tzg2UHlIamhmRXBlaWk4TXlDSFVrU1RRcjY5WVB1K3V0WWZW?=
 =?utf-8?B?MTVWMUMyMmRVZys3Zk90eUZycTVpWWp3MEJ5eEZBUW9sYk5jRkwxUVFzYjA0?=
 =?utf-8?B?eVdhUkhvNzc2SC9XYnhsbzd5OHFieWRwcncrTDZtdWtTNXBRK1hLM1huVk1o?=
 =?utf-8?B?MCtmTTg5SGNBY0NEZTREbU5NdFRsN2s5R1crQnNkVnM4dGlqQytnb2s0Q1l1?=
 =?utf-8?B?RHl1bXNJMUdYOXZKNmJhTUpEaEpMdlVhQmtOcUdhL3ZNZS9CeTVaTENrSU9H?=
 =?utf-8?B?N2thd2hHc3FuNUZsWnhleTdCVGx5QkEyNWhYYS9SYnRMdXA1TDFGdjdCNlZO?=
 =?utf-8?B?V2FkRHlhMWJsbHBpV3MzeWpVdWNrbmFyWk5xNktiL3pOdHpVZDdJa3JLdkNQ?=
 =?utf-8?B?eFlWd0ZjeUFxSmRLMnFLc0Vyb0p6SkNKWm1PSzdMUTlyMkZIaWYxenVEVnBJ?=
 =?utf-8?B?ZmtSalFySERubStOQUF4RjBPaWRUV1FCbkdrL1IzL3JsckVFQzhpU2N4NFoy?=
 =?utf-8?B?Njlrc0REM0FpbFNlM2hUYlF5VnFIdm5jdDNzcGxvd25HQjFYOWdvMUpuNGU2?=
 =?utf-8?B?UGVGWit4VFNuczJKakZzQ2xvQWtxemRFU01Jc0ZtVFpkSWZUWjZFcDBUdEU5?=
 =?utf-8?B?NVBPK25reVZkN3hWZXRhdmxUNjY1ZHpaNFI0OHdQM2w1RnpLdTZhSWVaQUhF?=
 =?utf-8?B?Q3paZ3NjeFpmU2dsM1phSEl0VThQbnRZeHMydEpoY1B0ZXhWQjFGcE5FOFBO?=
 =?utf-8?B?ajZHOGM2Q0E1VDQwQTIxOVYxSmZ6YmpEQmlaMXRuZzFENWdZaEl6N2h1RGdo?=
 =?utf-8?B?QWhHWEx2UTF3dWJ3a0VNZTkrTzRraEJGb2hnL0lkdzJ5RllIQjRoR1JsQkwz?=
 =?utf-8?B?M2ZUWlh1QXk0OXduekxNYXQrVmdNd0lRUitSbUhzUTlkbENDUk10dDIwUm5W?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 990fcd5a-5c4d-4fe4-ab5d-08da904164de
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 19:52:56.8434 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kJR8FzbOKRcCAlnxSZWdYGGE53aqqfDuehZVA8tQKgqB0jGDSf0vuXA1OFplVELRfOK6ylISvMu2xIG1xqnhd5UXN495otxdp2Kcc93jPTI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5741
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/19] drm/i915/perf: Simply use stream->ctx
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

On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
> Earlier code used exclusive_stream to check for user passed context.
> Simplify this by accessing stream->ctx.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index bbf1c574f393..3e3bda147c48 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -801,7 +801,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>   		 * switches since it's not-uncommon for periodic samples to
>   		 * identify a switch before any 'context switch' report.
>   		 */
> -		if (!stream->perf->exclusive_stream->ctx ||
> +		if (!stream->ctx ||
>   		    stream->specific_ctx_id == ctx_id ||
>   		    stream->oa_buffer.last_ctx_id == stream->specific_ctx_id ||
>   		    reason & OAREPORT_REASON_CTX_SWITCH) {
> @@ -810,7 +810,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>   			 * While filtering for a single context we avoid
>   			 * leaking the IDs of other contexts.
>   			 */
> -			if (stream->perf->exclusive_stream->ctx &&
> +			if (stream->ctx &&
>   			    stream->specific_ctx_id != ctx_id) {
>   				report32[2] = INVALID_CTX_ID;
>   			}


