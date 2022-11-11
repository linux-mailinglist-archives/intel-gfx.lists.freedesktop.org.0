Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C276252B3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 05:38:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2BFE10E02A;
	Fri, 11 Nov 2022 04:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600FC10E02A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 04:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668141473; x=1699677473;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6nNW8CwNOu5h5K2ypy93B3c6/hh3P22x9JtT6fbtDQw=;
 b=Vh57wVEZdmWrNBLoGECPjIuaGxmU/BgsDBqitleOfbXDvAotSzNr25BC
 /y0ZkodvzuprhM1oUKY/q2IE5yr/0zL8Wuvqm1s71YxQIVVk3EE4Peqk3
 BhDNRXSDMLKNaoqICKdlQuTlhhsiuTFU4mS/x+7ayf7jzUL7AMl8DXZcs
 dQgd1utwt9Ptjyl5wnMvflin7ufcCi9XVRb65BiKK7DVfGLyiAx0dvTIk
 6m4Cge/CxHrCOs+KVfjfTlWY2TA2YFiV0GDWCi4tMGgUcIfreq/oSvuVG
 3GhZV1lVQPGCK2P9KSBwN6or1I0xuUgOnmG6GImWKI5ZtyRM6rQfM4mB1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="375782614"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="375782614"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 20:37:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="701082398"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="701082398"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 10 Nov 2022 20:37:47 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 20:37:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 10 Nov 2022 20:37:47 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 10 Nov 2022 20:37:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E2qK3w0AIzLQKofRLWAEcR7rl2Ua+f5/OSaX0HHOIkK1xmwqPh42W4TSmwxhFaAbZmvGYuAT7aiYGRxAtYgDekD3DBW0/7AqH5ygq0bP0F4yzWxlAWkS9DMoLg0wGJjytdsdCe+TiyDixuR5DuQde/G6SrS5vpEa3FMubSSencle/K4wRpzfvuPs+mlIFd5cQ3EDrho3H6q7ye3eSqKKl0Vj61NkvGTmU8I3CaTQlC4pS7/e+5t21YKON2+lqruZbmWWQhIwcN9KoP0+Td13S15SmQIo+1BRrKeoWVIKWJ2fnjyf9bffQ9ZLgyHill9ruy03LBph/yYfznXPDcHxAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bIbrqDO1iC9wAejuUt1ffjMGrUYZ+h7ut38iyfqKipg=;
 b=X/pTrVdKd1+V5T9j1u5riUsNZPt3lV32m/xwLDm0QGTMvW4esM9+iyWNpsIzyZZoH1hfV4v05HRZA/gnlWdWMpFuOOvdG3g7c67ZguCJTzh0UG9qGstXNgMXkKgZMzrwnmQe50tMlgpSUTgWHtXbF1OHYRR4155LFg9+jeIrjhIpYyNDAmPW33Vm3B9sPCvxq5SPdwE0UfLjQWp3ZdA4cbgymRD9thGidHKJuZDrPgguWho4rAENawse9bKjZZoPg+SHEN+yV9C+ySFoy+5MWBbYN62feCAIqSn5d8NHTNVsuAjunT1CrFrhuk7a/gE4UTvaz1FFd6yGc+n+OePt5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by CY8PR11MB7058.namprd11.prod.outlook.com (2603:10b6:930:52::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Fri, 11 Nov
 2022 04:37:45 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::f8e2:ab0:4fc2:9df3]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::f8e2:ab0:4fc2:9df3%5]) with mapi id 15.20.5813.012; Fri, 11 Nov 2022
 04:37:45 +0000
Message-ID: <656ceaca-68ce-b94e-6f3d-ed15d1a5d5cd@intel.com>
Date: Thu, 10 Nov 2022 20:37:41 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221109112541.275021-1-riana.tauro@intel.com>
 <20221109112541.275021-2-riana.tauro@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20221109112541.275021-2-riana.tauro@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0123.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::8) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|CY8PR11MB7058:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d4c524c-2d0c-4adf-817d-08dac39e795b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TmQMdtYfv0EWzgR6oe4zIJ+NSVi9filkO0TItfB0MK7cY8LUwCGzDp5TLZ13ZePfi+BBN4yrGNniwXIJMe8IXt9FMueKZkm4CTaIN35DZ++DKcDe4icaNtinuy7VaAYORk1T7/ubNgnAdUYbtDl44xvarJARzOvfNjGoFofsbB7zX2RuqryzPZi5zPs+IRj+JePZos2c/nXSGlwabLG8AmLsxhhQcIgcFXygYBz6AWpKuvePI1IQAfydz7IzgSWwe+iBJhXEZsSqwsk6UktE7Ps4pas51qblHy8sU3dqT8Nzk32QmXKTf8J6oWooPcO6iwn/8TCy0VIYRiuZXh+rCQkmfr9LmUllJussW4GvFjvt4vv64uh4nSIUWg4zQFiB6BvNFTBAOWxcG5vtWGAZDdDQZbhC3LY+N+UwpF9uMQJ5DFyQbGEDG7DKqLdmHEyh+rdr0hLcPBly1v6JvTN/roCJxcTuXD11RF6fqcahPzXfK6Tg3/d/O7geJPCDlSRJ9ZgoM7LO2uWOhyJ7clPEvxcSekbkh0eaGir2MuGRc6ktrkN0mOwTBIXMwDMCeh1z2GumRPDDO5LxlkizkLDYlu1QIrTIScCrLY3Xoqy1UG1gRrM+PBg3zyuS8KI9Icp0oi10p4soMG6WkcWhs42qCfZeJk/3+x7Pkbqf/8W/HRJm1KGZXHImMV65Jgs4g0dvGGJxLyG0kjQ+v+KAVWH42WrsLg3sqQXJVxyUtjgfHZIEu+/zP8Zt0Ma4weO8yYmwU0ziU9olwoPTleXDmxB95xAWCx4kVvVAQp1opM2cdEs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(39860400002)(396003)(136003)(451199015)(82960400001)(6506007)(31696002)(86362001)(38100700002)(478600001)(36756003)(6486002)(2906002)(6666004)(53546011)(66476007)(8676002)(107886003)(316002)(4326008)(8936002)(41300700001)(5660300002)(66556008)(66946007)(26005)(6512007)(186003)(2616005)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHM2VU9pZXh4aHpIN2Ezbll5c1I1eDk4U21oZUYzcDkwL01HQ1hjM0ZhRDEr?=
 =?utf-8?B?a1loVG1waEFoZTduYXhZckUyTVdPQ1FZRUNEbG1pRTUzRTdTd280dFEvcVN0?=
 =?utf-8?B?QklwVkJ4cklKaW9XdUh4QkdtUkhOV3JQMUVBVFBqa0xhU3h4bFNndktnNTgw?=
 =?utf-8?B?WHg5VmFrWkpYQXFCalVzb3RGWkRaN2l1K0NIK2ZRZDV3UHRyVWF5WGlrR1lH?=
 =?utf-8?B?TmsrYkxlU2Iyb0xLQS9yV3gvaTFpRjZ0dUNOcmpLdy8zYlkrWXpJYjRWOEVp?=
 =?utf-8?B?SVRlZFBhT1NPeFNxU3l4TFJkY0swVXdIcys1RVRiWG9VbGdXcGxiWm5mUFpu?=
 =?utf-8?B?TWtHYm5GdWlXTzRLb1JRcVRyeEx1V1BOcks2VWdGeDBvOGswZWVadHZvdGwx?=
 =?utf-8?B?aDliT1d4aDNxUHBCb3FGMExXbWdncGxaakN6L1VzVzJ3enUzOGdWU3dLNzJZ?=
 =?utf-8?B?TXpCN1JGSHcybVNkUUxRa1I2NWNSbjJ6Z2taaXNIVy93a1ZBOTZWYkpCVDl0?=
 =?utf-8?B?MSsyQU1sai8zVjNWTXluSFppbE90SDVFd3ZxS3VBS25DUlJ0QnpiRWJja1h6?=
 =?utf-8?B?UGcyaEEzazQvdDJaMVd6UWpsY1RvVEg0TjE3Wkd6MHVKU0ROcVFNcktzMW9N?=
 =?utf-8?B?VEg3dFRvN1ZMeGNUU0RQSUZFZTZXWDlGUTBHTm5MSnB5dDBMNXRxSlBBdU5y?=
 =?utf-8?B?LzhRdU9mU2JnQVMzVHRzUGpHRCt4ZUMwaUw5M1pVRGRNRWJhM1lyY0JNR0ox?=
 =?utf-8?B?ajNDNUxINEc5UzVGZm1qWHJEWGZ6SkNubU1UNTdGdjhYWVRzQWx4ZkNJV0Rn?=
 =?utf-8?B?bldSNFZETlU2Y0lQUmE2T3JYdUIrVysxeDNDSmJyNk1EV3E3YnR5SndNMlVL?=
 =?utf-8?B?TWRNVzdKUFFQL3hrbzJ1bmxheU1ia21ONWl6UE1DUmNnUFptQUNuamd0WGVu?=
 =?utf-8?B?b0txaEtvaVF0dkZLM2N1bmRPM0phMzM3emVQVWVBWTkzVmJzME01OU9uOEZU?=
 =?utf-8?B?K2c5Z0NEOFlZV1FUNmkrNVZHY0xwSndjcURxWFAxSTFFclhlbHRUblBEeEF3?=
 =?utf-8?B?VU0zenJWSVdIWkEzSUNKSXNQVWI5NHk4RndnMFF3MzZ3WXBjYTBTalR5NUJI?=
 =?utf-8?B?R3FEck1saitWMmk5OFU1ZUlQRkd0b1lBQWJxV0VFT1k0TmpnQWZYSUVDZVY2?=
 =?utf-8?B?dmhJSnlFRlZoa0N5dzl4a2wzcFdXdW9iZHcwM1Fkc2gwUTRBbGZReFZpWUZ5?=
 =?utf-8?B?b2ZGbS9haG1JeFVPNDYzdGxUS2JoNGRHWjk1OFRtTFVCSE9ZYVdXZ2FvcFFs?=
 =?utf-8?B?WDZ0VlF0WjlEMHVYSS9seFAwZXlQV1JsYzRCTlZJZ0pDdGV0UDk4MktNUTdQ?=
 =?utf-8?B?OXVERmVseW56cCsrUko2Lzl1dHdjNklxVzY4Z3RrZGJXbnAyS2pHckg3bFlZ?=
 =?utf-8?B?VnIycHNxQmIvK0V5bURKTTAzTS9WQmQ1ZlpVWmFaRlc2ZjMrZFZxOU05TkJQ?=
 =?utf-8?B?TGZSRHRtK0duL2N3TGxCQTdZYXJrQlErNGtpcTN2UXFwQUgwbnM2TkFhV21X?=
 =?utf-8?B?R3ZibUxUSmZmYzVPbm1BbGFpajJuK0dLRXNsZkNySEg4WkFINkk5dzN0MEdU?=
 =?utf-8?B?Q1FBeSsvZU1lMmh4KzFXblJUZTd0RHpzWmM0NDJhb242UXV6ZTNYQzZYWDFz?=
 =?utf-8?B?c1pyNk1iRWx3N00xNkxsK2NBSFMrLy9hcHlodnkrZHlIY2plWkJvdzBlaWZD?=
 =?utf-8?B?Q2w2WU9kRVdXcUFPdGwwQS9za3dUSVpOemk5YkpTUGNBNmVDTzJ6Vng5NFZj?=
 =?utf-8?B?WWNVL1hQYWRWKytvSmZMT1k5c3duQ3VQcnlFWHJKbit3d2JHZFcyNmdNWWVo?=
 =?utf-8?B?bXNhRyt1VU8xanV1REJMdWVaQlVZUWFiSWFhaW9OWHVjUExic0JzZG9vdlkw?=
 =?utf-8?B?QmZIMWJVN3A0R1Q1NkpRWlhIK1hhL2RoT0FBa3JOaXZDWGVNb25Dc2syQ2Ry?=
 =?utf-8?B?MVduTlJnbWNucjBvbFE5ZXFQMytpSEdtYmpyQndiSUJHYjlYMnB1ZnB4eFVF?=
 =?utf-8?B?VUp1ZzRtT0lZWTBTNmFpbElWVWoyVUxUR2tXZTVTYnVwZm9QUlVKR29EN2hH?=
 =?utf-8?B?Y3o4S0F0TlBZUzZBbWg1dEVzejlkLzdNVnRTK2g1YXh1YUZzYUpSNFJEMDVj?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d4c524c-2d0c-4adf-817d-08dac39e795b
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2022 04:37:45.0571 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B/VnlVENASzgLd0u7OgoO7eE5T5DWx+UtmFIaAC+NYHQpa1H1K9ZuLahW+DF7SGPIIcGvHeb1TMt4EDmQD04RuIyyWfLW52xIYfmdDEOX9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7058
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/guc/slpc: Add selftest for
 slpc tile-tile interaction
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


On 11/9/2022 3:25 AM, Riana Tauro wrote:
> Run a workload on tiles simultaneously by requesting for RP0 frequency.
> Pcode can however limit the frequency being granted due to throttling
> reasons. This test checks if there is any throttling but does not fail
> if RP0 is not granted due to throttle reasons
>
> v2: Fix build error
> v3: Use IS_ERR_OR_NULL to check worker
>      Addressed cosmetic review comments (Tvrtko)
> v4: do not skip test on media engines if gt type is GT_MEDIA.
>      Use correct PERF_LIMIT_REASONS register for MTL (Vinay)

LGTM.

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_slpc.c | 70 +++++++++++++++++++++++--
>   1 file changed, 66 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> index 82ec95a299f6..bd44ce73a504 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -13,6 +13,14 @@ enum test_type {
>   	VARY_MAX,
>   	MAX_GRANTED,
>   	SLPC_POWER,
> +	TILE_INTERACTION,
> +};
> +
> +struct slpc_thread {
> +	struct kthread_worker *worker;
> +	struct kthread_work work;
> +	struct intel_gt *gt;
> +	int result;
>   };
>   
>   static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
> @@ -212,7 +220,8 @@ static int max_granted_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
>   	*max_act_freq =  intel_rps_read_actual_frequency(rps);
>   	if (*max_act_freq != slpc->rp0_freq) {
>   		/* Check if there was some throttling by pcode */
> -		perf_limit_reasons = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
> +		perf_limit_reasons = intel_uncore_read(gt->uncore,
> +						       intel_gt_perf_limit_reasons_reg(gt));
>   
>   		/* If not, this is an error */
>   		if (!(perf_limit_reasons & GT0_PERF_LIMIT_REASONS_MASK)) {
> @@ -310,9 +319,10 @@ static int run_test(struct intel_gt *gt, int test_type)
>   			break;
>   
>   		case MAX_GRANTED:
> +		case TILE_INTERACTION:
>   			/* Media engines have a different RP0 */
> -			if (engine->class == VIDEO_DECODE_CLASS ||
> -			    engine->class == VIDEO_ENHANCEMENT_CLASS) {
> +			if (gt->type != GT_MEDIA && (engine->class == VIDEO_DECODE_CLASS ||
> +						     engine->class == VIDEO_ENHANCEMENT_CLASS)) {
>   				igt_spinner_end(&spin);
>   				st_engine_heartbeat_enable(engine);
>   				err = 0;
> @@ -335,7 +345,8 @@ static int run_test(struct intel_gt *gt, int test_type)
>   			if (max_act_freq <= slpc->min_freq) {
>   				pr_err("Actual freq did not rise above min\n");
>   				pr_err("Perf Limit Reasons: 0x%x\n",
> -				       intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS));
> +				       intel_uncore_read(gt->uncore,
> +							 intel_gt_perf_limit_reasons_reg(gt)));
>   				err = -EINVAL;
>   			}
>   		}
> @@ -426,6 +437,56 @@ static int live_slpc_power(void *arg)
>   	return ret;
>   }
>   
> +static void slpc_spinner_thread(struct kthread_work *work)
> +{
> +	struct slpc_thread *thread = container_of(work, typeof(*thread), work);
> +
> +	thread->result = run_test(thread->gt, TILE_INTERACTION);
> +}
> +
> +static int live_slpc_tile_interaction(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	struct intel_gt *gt;
> +	struct slpc_thread *threads;
> +	int i = 0, ret = 0;
> +
> +	threads = kcalloc(I915_MAX_GT, sizeof(*threads), GFP_KERNEL);
> +	if (!threads)
> +		return -ENOMEM;
> +
> +	for_each_gt(gt, i915, i) {
> +		threads[i].worker = kthread_create_worker(0, "igt/slpc_parallel:%d", gt->info.id);
> +
> +		if (IS_ERR(threads[i].worker)) {
> +			ret = PTR_ERR(threads[i].worker);
> +			break;
> +		}
> +
> +		threads[i].gt = gt;
> +		kthread_init_work(&threads[i].work, slpc_spinner_thread);
> +		kthread_queue_work(threads[i].worker, &threads[i].work);
> +	}
> +
> +	for_each_gt(gt, i915, i) {
> +		int status;
> +
> +		if (IS_ERR_OR_NULL(threads[i].worker))
> +			continue;
> +
> +		kthread_flush_work(&threads[i].work);
> +		status = READ_ONCE(threads[i].result);
> +		if (status && !ret) {
> +			pr_err("%s GT %d failed ", __func__, gt->info.id);
> +			ret = status;
> +		}
> +		kthread_destroy_worker(threads[i].worker);
> +	}
> +
> +	kfree(threads);
> +	return ret;
> +}
> +
>   int intel_slpc_live_selftests(struct drm_i915_private *i915)
>   {
>   	static const struct i915_subtest tests[] = {
> @@ -433,6 +494,7 @@ int intel_slpc_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_slpc_vary_min),
>   		SUBTEST(live_slpc_max_granted),
>   		SUBTEST(live_slpc_power),
> +		SUBTEST(live_slpc_tile_interaction),
>   	};
>   
>   	struct intel_gt *gt;
