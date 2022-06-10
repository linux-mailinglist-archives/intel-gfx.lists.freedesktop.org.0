Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FD2546385
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 12:27:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1F410E00B;
	Fri, 10 Jun 2022 10:27:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B7A10E00B
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 10:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654856832; x=1686392832;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L3lYpgwCc73Is5l1b0CJ7mt99rB6BByxRB4kNYSTC2g=;
 b=PXJn3V5xmtAmBKLacHyhDGg6EIkbxyi+tVpAdGBqxgAU5KWLcwhFe3/O
 FNUXaunwgnUDf4xC6/u86PxWqloXProq3KqZSjCncJ2Jh6WPBB1k3/Rdg
 myd54Wd0Bb3/PEzvEwx8UJWbCznnEFGO4t6yo5tk3VHz0lmD9WxNVcDtt
 RahUM6HZPqCV4emfD1TvBl0Aiy3N0yn54UMi/RUcbts4FazhnmY6RMgHj
 FIVntRiO4bsi6TkJlqayOrSvqLf9Gwe7InqHAP6Gpkb10nR5gR2Z22NxI
 RnPFgwZmyzj8ubGpQ3zBdFIse3binpLBludsBBr/oXlkjokX/nLHELNtF A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="276363326"
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="276363326"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 03:27:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="649765868"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jun 2022 03:27:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 03:27:11 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 03:27:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 10 Jun 2022 03:27:11 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 10 Jun 2022 03:27:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P7s1SEdiicNGHSk1lC3YQFBlpc8frDE9g1YxmbrNNpnMEzTP8Z2+NIFI0ZPpzmfvoYyrp6Ufe6jyYB0Vgv55e5wJfSwMDw4p2YVhmJW6glKgwhK4yFIzS4TZBcNdsZHOCakNBM77ZiXwaOP5V5CoMINK3L9eyMjn/YeysFBNt82Zua2At6iTQgb61XPl99AKKq+0HwUnTD/wpVuQAbYpnYJhLTNhmcW56+SCuB8cb9ifWcfbWXVqp2/XGVGvJf5nSFbhvzu3lAq0GphwjTgAe9GSRdDuDG4UYzARNGKoEq1mi9jNfJwhfA5hITfQgRMmwy+A43jykojmuU53K7x41Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EMBHI8YZyX1QYy1qdpAex5kK3eMZi9NQ3OuQ3JPZB6E=;
 b=ljU3gjIkA8E0Sz0TTBtnV62XXj7CVkhPPYfAqXZbsMQ2y4JPuSoKBar4S7dTHQKZff06YTqwzX2bFzIGpxV5P45PT/Iv8P6DdMNe9pWpdjncRNAwXbj++o2D4oTy/xvcCuQyrfZc9M1DvAy0IpzHUS3/h0rKRBk4B1QQKXIgnzuQTOSimzreRXKGxxub1Db1Lz4+X6ziHW+Bo0rft9nh+oEIIr1JWuaAkjqEPSlBHtIMsM2x7sg2PEaPbhzyC393bw6M8CEkAtoYd7J7JltzXuQZqsuPHUr8x/Lpo9Vjq2iFN+3E+Syd8t8cGKOHnVH1GPBZSD376qdssc+Iuc8bTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by BY5PR11MB3991.namprd11.prod.outlook.com (2603:10b6:a03:186::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Fri, 10 Jun
 2022 10:27:09 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe%6]) with mapi id 15.20.5332.013; Fri, 10 Jun 2022
 10:27:09 +0000
Message-ID: <70923576-4893-14b1-6230-949180badc0b@intel.com>
Date: Fri, 10 Jun 2022 12:27:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20220610102021.29519-1-nirmoy.das@intel.com>
In-Reply-To: <20220610102021.29519-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6PR08CA0027.eurprd08.prod.outlook.com
 (2603:10a6:20b:c0::15) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ddae5d0-1151-4aff-89b5-08da4acbc622
X-MS-TrafficTypeDiagnostic: BY5PR11MB3991:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB39919B9D0C450E2B7AA5C51999A69@BY5PR11MB3991.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xDVSAmkY7FXUwOdBicTZqGTUitEM2vm3jkUbJas4slh/dyU9cFmMyd81Bg3hBRD+cTLV6sY3WtIbCwrCmKK21ySu4c8L8Pn2gomPcfZ6Ux0bBahFDm51HV/bSr+C2qTsiFx1PKIMJZfbhfR9/MlxnfPdwO25ELOi0d1JPHxCkxzRlenzav/jiVJz/F1sHI/oR1dkraTDLWApKtIOb/MLYDi8rYinWnUSZIh/TtY9FXEqRb1OvWhHpaG7Wv54SU+AVaXZyV16n8OIebITKX01HoSPCvc4Tnc+ROGXlypubuQZ6p1/P1/dc4Cs4tWAiJL0Q27k5/3vACNVpEY++2+7uEJon00LK4aZq8ioUHCSn7sSldq8vgx1BLUGshXrElypdbncVQz6yierufs2R1Kw2Vfg/s8xzHKBXHmanhrc4VQOvVR78XmPdO8jBz1VVwA8NsMZAO/jaehGzSVTjvDxN/EpZfV2hy+Fz0YHIit9zCiWk9I1yn/vd8mwSmPJciz6iUuuowKtefl4oA+hzcfbU6fB8FHaTnY4ZnPIA5R5lhueVVI3C3I9TdYZKt5NJfOp+ZJw8+naJYV9JPl8GovaOw4Omi5QzWgnaRjJMrJxvkwGg1VYA5/umUR/sQ/nKd6tcDuxeHXjjan9IWQ8/xK7+2t3RETktUBne5fTCFyCkFmr+vh9EgprIZpKTEdTowzQQJcZ+M5po3rpqjt6R7369AAESSWpOq2QVB+iYje0VHw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6666004)(186003)(107886003)(83380400001)(82960400001)(38100700002)(6506007)(6512007)(66946007)(26005)(316002)(966005)(6486002)(53546011)(86362001)(31696002)(36756003)(508600001)(6916009)(2616005)(2906002)(66476007)(66556008)(5660300002)(8676002)(4326008)(8936002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHFFcHBHREJFY21NOW9sS0dzYzNXT1JvOXVqMHphbFExc2hPYktnUWdGUWN6?=
 =?utf-8?B?QXJpZHFlZ0FIMHhQK2diY2tUNlFsMkRENU53NUwyTWNYT3hhcXZFYW9hbkVS?=
 =?utf-8?B?bVRDL1pCTHRnTUhXZkd6azMwemRhTDBCWHZGcXE4L3BkWngwM0kyV0EwSEkz?=
 =?utf-8?B?QmRqcHZwRTBQdjZtYjd3V2lLNGlsNS82K1hsQUJKYzdXMzNSUDFnN0FGUC9K?=
 =?utf-8?B?eEIxMHdJbWRPeWNXdUhuQVc1dzlpdGdjV3dJd2VZRlNYaVB1TWNvOWR1eHNq?=
 =?utf-8?B?bFZCWXJTSGxMNm13VlRDaU9OWFRnOUxtZ3VNbzM4MEVQVG9CMURKZlE1Z1pH?=
 =?utf-8?B?VkRYUUc2TjBCTURUb1dTVTE4emtZZlhXUVJ0d2djUkJIQjZjWXAwZ2dRNGtn?=
 =?utf-8?B?SDJhTzJ2UXJlaXBVZEFnMFQ2MTJiTFFHNXY4am9qTXBYV0FKRmpUWGxHNkc5?=
 =?utf-8?B?Wk9pakZMQ1EvQXZQSTZ1eEFGUzVQcGR3TTZvTlpIY3BLTVFiNUhoUHY4NGk4?=
 =?utf-8?B?WTFsdnBMcFAzUEppanRjT21vclh1MXV0dGRzcHYxRE80TUpJZEQxQ2E5dEZW?=
 =?utf-8?B?OUFZcDNrcEQ4a1pSVjVGd3ZTdm1sdGVUWEllYUgvNjQvUkRxMVFKc25mOGRZ?=
 =?utf-8?B?NjJOK25HNVo5WGRKTGNwVXl3cjlJNTJnb0Fic2ttQm5DS1lhZmJDdU1YODFB?=
 =?utf-8?B?MXVacTJBYkpEaktMNTNVUGROWVFtVnB6aFcwNE5aaGxUNUg1cUU3SEhGTzds?=
 =?utf-8?B?cWNlZU1pNHBYaUhWUGRvb0N3M1IzYTdjK3JqTGxSeC9tVGVENFk4N29YK2FG?=
 =?utf-8?B?cFhGUDNSUVdXU2wxUUxUUnZlOVVYUWNCNjlFNHNPZlAyLzQzaDJqZU8yZytr?=
 =?utf-8?B?WDRlaEZqVDNERDVQckl2RDRXdTRjS1RjcHZucHhCRFlsOUtnNnRYQi83dlR4?=
 =?utf-8?B?clpJSVljc1hKRUdBaGsycDlMQ3daUnhERGMyN3hvWnZaSkRNS3lSazNBaVdr?=
 =?utf-8?B?dFNueVhDdG9GQkV5MCtRcjRsUmRNdjdTRE9IV3FmaFVZT1NJOWZoM0VlWHpk?=
 =?utf-8?B?RDNZN3NIaVZxcnVVa2R3MEVOb3d0VGJlS2o0bFROdlIyZ3hncHBBR1hlS25P?=
 =?utf-8?B?NFBqcTN5Y0JvZHIrMFNwU3lqWU9qbzFzYVVGUGc1MHc4dTRaRHpLQmtzQmtD?=
 =?utf-8?B?c0lENUw3czAya3AyY3FseHYxdE1lRVdJNE1mZkYrYUdqZHdZRUpncDBZY3NC?=
 =?utf-8?B?eEI3eVRYMHgxZkpjR29ZWXlNd05mMzFKekdHR3F5ZFZQS3JWWWlEb1hiS3Bk?=
 =?utf-8?B?NUFRLy9NdkdSaDVtQ3dwZmNjdFZSMnNkTnlnVlFMWUhUcDBtNWdQMHliQlFv?=
 =?utf-8?B?dGpFdThEdEZwOG92djJxUzNVdC9MYzZac1owNk9PZ1VYSmVmTTVQZGkxQ1Zq?=
 =?utf-8?B?RlNKV2ptaEZrenJnaEw4YTdLOG9wVjFwWjlkN0NQZ2tobnpPZE5NcGZTOWk1?=
 =?utf-8?B?SHE2UC9OM2JnYmVCNm91UFFaaXBtVUoyZUk0ZHQvVmY0ejNNb2JTbDZQU1gv?=
 =?utf-8?B?RWx6c3M1RUlORnU2b3N4S2dwOFdtRVNEWmRsU3JSc042ZFlRWC9hSDA1UTE2?=
 =?utf-8?B?clVqS2N4a0NVM2FEY1dDL21TdlAyMGI5NGdVRW5oTW0xZUs0Ti84K3hBRDNx?=
 =?utf-8?B?dnRUUkxTTlFxcWxHd29oakRKNlozbkovSCtPZmdibDRKTEY3RTRlNVR1WXh2?=
 =?utf-8?B?b1BLT0cxK0ZJb3NUNEZqaDdWTHg5N2k0TWJWbDBnUHpxTWJCbjVaOFhzL1Ar?=
 =?utf-8?B?RUVVMkVoVG9URTV4eFNwQmFmUDFpYm1GUzhYM1lCWklzVEJDY2l6SG1GbUZZ?=
 =?utf-8?B?bHpGL0t4NnBwRm1pcEhoT1Q5cEhpZW1td0sxRnpzWDlBalFjbkhhRWJPRGp6?=
 =?utf-8?B?NTlNOU56RVR3QWFzVTRiQTFsa2lRTUhQWSt5cUZ4aWJRM0FIdkllclpBZEdF?=
 =?utf-8?B?SGd1elJqajJiT2VPMlVqdUNJUEMrSjFKQkZpUWtiaTloSzRwYnlmNWowbTNu?=
 =?utf-8?B?YTNmSU1pZDVIZi9paTVUUWVOSEI3dUZtM2FlelpvODMrRHd4N2Myb0d0YUsx?=
 =?utf-8?B?aW11VVU1bUx0Q3kyeEJRZmpzUWRMRWpyeTh4T2xoQk9lRUt0L2NIWTZQcFd0?=
 =?utf-8?B?bEcvM2wyK0hQcFhIa2E2R2x2NVJLRXROMVVOdFdVTlM3dDFlYlN6MlMvRUpB?=
 =?utf-8?B?RnhQUlZMK3FpaDRhQVRSNUFUODNGdko3MTR5dlZjZlpBL3BBK2tzMHBHUFBz?=
 =?utf-8?B?R1FTcVM1RnFuTnFaR0xnb29CajYxSGFkM05pYkN3NHNsTWdnS1Jsdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ddae5d0-1151-4aff-89b5-08da4acbc622
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2022 10:27:09.1658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P6cohPI+HYlkrDxf7BIJUj6mvk6j5SyDHL2H8Tkwxjo5/Y6XqVLL12p12yU3WaUAhnaz0LdHEdvOwLJ5SnVDig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3991
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: fix
 parallel_ordering with no-reloc
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
Cc: chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

wrong mailing list, Ignore this.

On 6/10/2022 12:20 PM, Nirmoy Das wrote:
> Make sure to allocate ahnd so that spinner starts with no-reloc
> execbuf otherwise this will fail on platforms with relocation disabled.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6117
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   tests/i915/gem_exec_balancer.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index 186975c46..636c96f9e 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -3108,6 +3108,7 @@ static void parallel_ordering(int i915, unsigned int flags)
>   		unsigned int count;
>   		int i = 0, fence = 0;
>   		uint32_t batch[16];
> +		uint64_t ahnd;
>   		struct drm_i915_gem_execbuffer2 execbuf;
>   		struct drm_i915_gem_exec_object2 obj[32];
>   		igt_spin_t *spin;
> @@ -3162,7 +3163,9 @@ static void parallel_ordering(int i915, unsigned int flags)
>   
>   		/* Block parallel submission */
>   		spin_ctx = ctx_create_engines(i915, siblings, count);
> +		ahnd = get_simple_ahnd(i915, spin_ctx->id);
>   		spin = __igt_spin_new(i915,
> +				      .ahnd = ahnd,
>   				      .ctx = spin_ctx,
>   				      .engine = 0,
>   				      .flags = IGT_SPIN_FENCE_OUT |
