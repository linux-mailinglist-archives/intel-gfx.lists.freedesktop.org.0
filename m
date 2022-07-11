Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D987B56D446
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 07:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BEF14AD10;
	Mon, 11 Jul 2022 05:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC26714AD10
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 05:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657516834; x=1689052834;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lvGmZEvmdo00QlhImTDFMRkqVxl2tpjCCfFeocaFTuU=;
 b=knw1SgpzvWt/ThjDDo6oCZtj3UrUOLhWfLXgxQqDmSWhhiybf5zHtGBV
 gT3Nfcg0sojno5idY5ArCBY27Ui0BFgdaNK2UsEPnwHaTP0pBUWMCjhmn
 2cwf3nnYfUlMw91CUQApQQgmE4FgmAdFa7JHwTZCaTr6vh5c77E3qK/vo
 g/Eo31zuVJoRX9EtDzMbqPN0FVXcEjhmo5P10mB3WBoEwVD0rpTIsaXFA
 QKiaKEaKxcHuj/9qltW3T9F10zWCHXamYZfhVcVjB7HN5xGZQityCFRu8
 Z59nA60mOVOquJNRPAkHEtVkYMo7LzOLR7Tr6fy3Of5+qL5KUif01Yelk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="285705907"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="285705907"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 22:20:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="592135198"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2022 22:20:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 10 Jul 2022 22:20:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 10 Jul 2022 22:20:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sun, 10 Jul 2022 22:20:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 10 Jul 2022 22:20:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AN5s3YMQNwrLrO20a2l0VpH2f2TiaR/DzqxJHZyMflnBkvp17pIu3PN+cBwzx1y9omIKbaZFKwtn8udAjY5stdNnbYzUftnBnOW6VBPYFsVdSU6kVjFBTXvbR3Xm19vOtzsUf0nqT26uMvTIS7h5x4JGDFZOEh3j0635WrQmywvrCiZvc4K4Y8wKDmYFzlyneiSNIG0TAsS3EcPrqnSY+RR80XidrJ1i2K+5u5xorDCytaF1xEHr/FvFmd76RUjud/Nz6aXB6G/dd6/3MHeo4NhZ3nArI+inGRIrDuXYcYtlH+Kn+h8UTKIXxP7EVONYkIVWxtNHY5amSLhDqeGdvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wto5SSXZFIbXOmhx9riRM/J+UgvEGYYs431Y3NMsXCQ=;
 b=k/p8xPBQ4z5RwTTdYKfn2wY0Yl+6AI2sHjH/ZjzsO7rn2QXcSsJ84LIRgLCeAIgbmk1ylKZThq4iIgfsTFDZSOAYrET7OP8C1E5zP5a6CbmlAb42CxdATNw2GNQM33fnotOpyeYHnzH6y8QVZsIJPvE+StbC/Z1B8rbKs3YC0NC+yfyE0Fw6cx5wrVx9lMTyXwtm2i67PzrzyJzWxLNf6lXZLTE7AO3Aw1XJR2kRYtJVlyVMXEMEOIiZK4t1ttvzu8GDKdPoxE2cpw/M+Lq/hoqaEHEMuwI1ZUBJzOD2o9PfNXglNMtiY6Nl8k7RRUriyeOYF1RL+zieCKyn6QkjHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16)
 by BL0PR11MB3076.namprd11.prod.outlook.com (2603:10b6:208:33::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Mon, 11 Jul
 2022 05:20:29 +0000
Received: from BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a]) by BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a%4]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 05:20:29 +0000
Message-ID: <727e537d-0c6f-b6b0-af4a-0713339e11ff@intel.com>
Date: Mon, 11 Jul 2022 07:20:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
 <165733203290.7096.4141090892822029675@emeril.freedesktop.org>
From: Karolina Drobnik <karolina.drobnik@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <165733203290.7096.4141090892822029675@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0138.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::7) To BY5PR11MB4243.namprd11.prod.outlook.com
 (2603:10b6:a03:1c8::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1920c967-bd38-4000-cd6b-08da62fd11f7
X-MS-TrafficTypeDiagnostic: BL0PR11MB3076:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D3NXs2ipjXnj0HLiRCYxpLnsCpOWh3BLasQk1Cez46WQbmSO7QwM0+av4fmloSYWqeTAWxHhZtSbOS9M97RLNnmp+4W0DmEph1Y8zXdG3PVp6IvFcBrZDvNQ2ABDSwSPe6Y1qhHaMb35gpZc9JG2hJjvFAvvPGdrFQdBNcoAefQTvKO7s4w1acXOCMB/nv7NWT6GvMGzE+U4QVe6HC70JUauyd1pYeG2YvovLBH15kNBUBe7vqhUcWQrHs2cOfeyAemb8agBd2EQiu9hDj5n5smS2wF+ieWBZXiG8MldaEwrJr8f39IxsYLBSty8y+HaFRktX/3AcnJKhtw1FOy+YD0KEnkpaRDqMrjj47ok2qdJlk/AeFftGWAuFrRQvG7kgzpNFBiXsmV7JJv2uLIASHrCzRZtkYIQo5HkMAfR+oWuXAJOrRAUUkHvmcO35J/BOOUK2vq/DOnnNVt5esjYegt1sqH7FMFCr2laVMiDVbnBGX/+ZhPJT/uPeb0xnuSY/vFJ4rexbz36XL99hgqHaJM9OaYLoN3C/zAP1M4MObma4tQyP7+tL9xQmY5yOMz9Qp7NjlWi3uZXgwBslnNJbL4bHGC6QwxZV0MocOnaFWZwDy3+V8MeMUvpUocf3kIQsqRF+GOutBfp1Lc1eta4mwKxDghekAV4RWqcG7+ERN35triEUg79bjO1tCI1sXqGttBgn2GleQKLnIwHy9KmvMJP3qIu0KoXn237tabgcnDb4ILXhEbe008SXkTmXqNjLtwcNODSK/Wro19fcQToXTciJ+ULoc9EZv6Aa3kkGEiEyNrdRAmfn7ZYs0qBo4SlBBKj/AM0orWWL+DqXAq39Nx2RLQ/+vDrkldgbv/bdhp643+X5LHj7enpA+e3KNF6i4py+Ib6YWbhxu6MgXUfkQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4243.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(376002)(346002)(39860400002)(136003)(86362001)(44832011)(31696002)(966005)(6486002)(478600001)(30864003)(186003)(2906002)(36756003)(6916009)(8936002)(2616005)(5660300002)(316002)(6506007)(53546011)(36916002)(6512007)(66476007)(66556008)(66946007)(31686004)(26005)(82960400001)(41300700001)(83380400001)(6666004)(38100700002)(45980500001)(43740500002)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUkwRG5NaGpMMlUzT3M5Y2JROEdaOXNNZ2pwOVVydzRidmVienNoSDNjdnVD?=
 =?utf-8?B?QlNOZTBqTUYwZTAzU1ZLd05YT21WUktydVBFWlV5VkxCR2tKUVo0ZmpOTXFQ?=
 =?utf-8?B?Rm8yNTZOWU5TU2dTRDEyZjA4V00vL29YVzU5UHdJcS9NTXRyK3JBdkU2N3A5?=
 =?utf-8?B?dFVYT2dadnliOXBUZDFibGhtRkYxbTlTcS9DdFFoQ0Y4SHFVejhLUUJpZGdC?=
 =?utf-8?B?WTZ3bGpRakgzZzFJMjluQkxNZTh2Y2pKRXo0R2p1d2UrNmtjeGVSQlI5Rncy?=
 =?utf-8?B?emVBZXFyUVhRQVBWcXlHQTZndGxzZEtKUkxneDVMbDM5MEl0UTZiZnhlVzd0?=
 =?utf-8?B?QnBFSnhnYm9uYlZsR2l6ZWN6bzdyZFNRZ3RXUEVkWXV1QUx5WkcwQ2M4emw3?=
 =?utf-8?B?WTVkYlAzVXpCWGJIemp6Ym1Tb2RYOFczbGhXb2tLR0gyLzQ1MUNNYTBCbFZV?=
 =?utf-8?B?eENIaTJNNnJWM25ZalovWlhFbGhRQUJiL1kzc1N5SlNWbzB6bnBjUncvbHZQ?=
 =?utf-8?B?Ky9DTG0vc0FmcHBic2lKNzd4MjBqcTd0VlJhbENvZFNXVy9kbDNCMTV3amNh?=
 =?utf-8?B?QUg2YVE4ODBEK1RBSWZONXpmLzF5OTZFY1c4RE1SVzRKaDJsUDBLcEN1dkF4?=
 =?utf-8?B?TXp5ZU1IZUlmTG1UcmtGUUorUXk2WUN4Q0dIV0pOZ3NlUDhkK3kvK1RqRUlE?=
 =?utf-8?B?VGE1YTU3YWVwMVB4bEhBVlpCVDRvVFVjazdmd3lBanhrajlPeENDQlJ4NnBv?=
 =?utf-8?B?SUZKcUJQZzM2K3lEMU9IcXBkM1o4VHR3TVdabko4MXlrUjk0QklWVEliNDNS?=
 =?utf-8?B?M1M2RncrUXM3elg5aTQxTGx4aU1CWldkMDZVNURZQjcwUGhxOWRidzRGN2Ry?=
 =?utf-8?B?V2cwRUtaUXBYMTFjWHE2cVdhSG9jU1ptRkJValVaZkh1RXVjUEpBa1hzb0pr?=
 =?utf-8?B?WGdrVWFCZnp2L0xQS0xXdElvVlM0eS9Ra1VkRmEzU0p6N0hxeEJqeWc0MFl6?=
 =?utf-8?B?RXpoT1BiY0s0RGk3UHB1NkNhRnFxbittQjBNdzB0NTdJbFUxWGdrKy9vSXht?=
 =?utf-8?B?cTY5Q0dvMVlKdHdVMS95V3htQ2pERFd0Yjc3SHhSVGFaeGVvRnpCakh0Nlhq?=
 =?utf-8?B?TWJyRnF0SURNMzlzT1RGRXpEaDQySWowbXZ1UWp2ZGQ4Rmp2NStxUnBZNm5Q?=
 =?utf-8?B?QkhXaXZZNllKVE1wbUZOQ3R0UnFJWkEyVkJmV0MwM1ZOc3ZzdmNFWFJVZnFY?=
 =?utf-8?B?TG9FVTFFWmVSc25qQm43QTFhckk0ZEdlZS8xaDFFSHFSMUk3V3ZOSlhSOWVL?=
 =?utf-8?B?YWF1K3ZaRUN5bU4zNG9rMFBUSzNCZk5EMHFGUEVRVTlYcWE0WTU5KzlRaTJX?=
 =?utf-8?B?bXZTQWJkaFd4SVpKQ2V5c04vdW80V2l1T3YzM0xuV3VRL1F1RXNtYWFsK0FZ?=
 =?utf-8?B?dG9XWTNVSTFxNkNKL3BmekFJWUtWQkhYbFhjMG50WHZGS0xOOC93dzF6UjF0?=
 =?utf-8?B?MUtWVnlnbHFUS0lUWWo0UTVBVU90MS9vdzNwZWZrUDFRcnlDYTJCVFR1UTBW?=
 =?utf-8?B?cUJYMm1MR0dDL2dtbEZkYk5NWm9MN2FKT0ZkdWxFSmRmOEJUMnRWdGtSQjdk?=
 =?utf-8?B?N1MrSWxFdWQva3lSWFhFU2JLdmhWUXdaQzVadVFFelUydi9GVi9sN0RQaWRQ?=
 =?utf-8?B?cGxNL2liVnIySVduWmpNdkF6K3JxVnhtN09rSVpiRnZEVDYxa1VOK09OSklU?=
 =?utf-8?B?UXJlREdOQWNWcTZxOHBNU2huTUJRWDdPU3M3TkZLalExdTdPKy9YdjRndVJr?=
 =?utf-8?B?VDNZNzJnYWkyVk90TkU3dWRrOW9NODVvdUQ2QkhUd2tZSjErQ2toT1Z0YVpB?=
 =?utf-8?B?bGVzbGJWSU9VaElrQnltbkRwc2hqMnFXaFVVOW42YUlVN3FPNmluRGpIOGsz?=
 =?utf-8?B?bDJJemltTFY0WURqZHV0NEl0NHNQUnZxTHo5NjFtN3NCMjlKVlhEOE1BaEVP?=
 =?utf-8?B?anVPRGN2VVFWZWZvZGE1NXpIcWNQekc1dVhlUXJEeG5XSHRQdVlSbTE0UmVQ?=
 =?utf-8?B?YkZBSjE1WjA3Tm9SYWhGenJjUXJIUVJRaVp4eHp4UUdjYktrb1lwdDR2U1hJ?=
 =?utf-8?B?ZGtXUWhJUVJCbWVsWUZmQk54REw4eDdSYXlua2Z2Vm93Z3NrVkNrOUw1UHZp?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1920c967-bd38-4000-cd6b-08da62fd11f7
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4243.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 05:20:29.7171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2uw3ffbhhpocPeEM8P/+9HsczHiq5mbBAlw4LxvVpS8lR0rpLEDhaF9wn8nKQRFYo1H+PJ3TFHdAbPNnoHo7FCGafZO0i0tQu4KIBlW4Y7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3076
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Apply_waitboosting_before_fence_wait_=28rev2=29?=
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



On 09.07.2022 04:00, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: Apply waitboosting before fence wait (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/105925/ 
> <https://patchwork.freedesktop.org/series/105925/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11862_full -> Patchwork_105925v2_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_105925v2_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_105925v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (10 -> 13)
> 
> Additional (3): shard-rkl shard-dg1 shard-tglu
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_105925v2_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-apl2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-apl2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>   *
> 
>     igt@kms_vblank@pipe-d-wait-forked-busy-hang:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-tglb8/igt@kms_vblank@pipe-d-wait-forked-busy-hang.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb8/igt@kms_vblank@pipe-d-wait-forked-busy-hang.html>
>         +1 similar issue
> 

These issues are unrelated to the patchset changes

>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen:
> 
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen.html>
>         +1 similar issue
>   *
> 
>     {igt@kms_invalid_mode@clock-too-high@edp-1-pipe-d}:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_invalid_mode@clock-too-high@edp-1-pipe-d.html>
>         +3 similar issues
> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_11862_full and 
> Patchwork_105925v2_full:
> 
> 
>       New IGT tests (1)
> 
>   * igt@kms_legacy_colorkey@basic:
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_105925v2_full that come from 
> known issues:
> 
> 
>       CI changes
> 
> 
>         Issues hit
> 
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk6/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk3/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk7/boot.html>)
>         (i915#4392 <https://gitlab.freedesktop.org/drm/intel/issues/4392>)
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_ctx_persistence@engines-hostile-preempt:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-snb7/igt@gem_ctx_persistence@engines-hostile-preempt.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1099
>         <https://gitlab.freedesktop.org/drm/intel/issues/1099>) +1
>         similar issue
>   *
> 
>     igt@gem_ctx_persistence@hostile:
> 
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@gem_ctx_persistence@hostile.html>
>         (i915#2410 <https://gitlab.freedesktop.org/drm/intel/issues/2410>)
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-snb7/igt@gem_exec_balancer@parallel-balancer.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +26
>         similar issues
>   *
> 
>     igt@gem_exec_balancer@parallel-contexts:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@bcs0:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb1/igt@gem_exec_fair@basic-pace@bcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb4/igt@gem_exec_fair@basic-pace@bcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o
> 
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +2
>         similar issues
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
> 
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl5/igt@gem_lmem_swapping@heavy-verify-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>   *
> 
>     igt@gem_lmem_swapping@smem-oom:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl6/igt@gem_lmem_swapping@smem-oom.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_pxp@create-regular-context-1:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@gem_pxp@create-regular-context-1.html>
>         (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>   *
> 
>     igt@gem_softpin@evict-snoop-interruptible:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@gem_softpin@evict-snoop-interruptible.html>
>         (fdo#109312 <https://bugs.freedesktop.org/show_bug.cgi?id=109312>)
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl5/igt@gem_userptr_blits@vma-merge.html>
>         (i915#3318 <https://gitlab.freedesktop.org/drm/intel/issues/3318>)
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk6/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk5/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>   *
> 
>     igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk9/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb4/igt@i915_pm_dc@dc6-psr.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb7/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@rcs0:
> 
>       o shard-tglb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html>
>         (i915#2681
>         <https://gitlab.freedesktop.org/drm/intel/issues/2681>) +3
>         similar issues
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o shard-skl: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl4/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>   *
> 
>     igt@i915_suspend@debugfs-reader:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl6/igt@i915_suspend@debugfs-reader.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +31
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl5/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +6
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
> 
>     igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
> 
>     igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +2
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>   *
> 
>     igt@kms_chamelium@dp-hpd-after-suspend:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-snb7/igt@kms_chamelium@dp-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>   *
> 
>     igt@kms_chamelium@dp-hpd-fast:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk9/igt@kms_chamelium@dp-hpd-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-audio:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl6/igt@kms_chamelium@hdmi-audio.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-0-25:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl5/igt@kms_color_chamelium@pipe-b-ctm-0-25.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +5
>         similar issues
>   *
> 
>     igt@kms_content_protection@lic:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_content_protection@lic.html>
>         (i915#1063 <https://gitlab.freedesktop.org/drm/intel/issues/1063>)
>   *
> 
>     igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) +1
>         similar issue
> 
>       o
> 
>         shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) +1
>         similar issue
> 
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>   *
> 
>     igt@kms_flip@2x-modeset-vs-vblank-race:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_flip@2x-modeset-vs-vblank-race.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>
>         / i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>)
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@a-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         +1 similar issue
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@b-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +4 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-tiling-4:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html>
>         (i915#5439 <https://gitlab.freedesktop.org/drm/intel/issues/5439>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +99
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +3
>         similar issues
>   *
> 
>     {igt@kms_legacy_colorkey@basic} (NEW):
> 
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-rkl-5/igt@kms_legacy_colorkey@basic.html>
>         (fdo#109315 <https://bugs.freedesktop.org/show_bug.cgi?id=109315>)
>   *
> 
>     igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +1
>         similar issue
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +3 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk7/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk7/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html>
>         (i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888>)
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr@psr2_no_drrs:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb2/igt@kms_psr@psr2_no_drrs.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb7/igt@kms_psr@psr2_no_drrs.html>
>         (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>   *
> 
>     igt@kms_vblank@pipe-d-wait-busy-hang:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk9/igt@kms_vblank@pipe-d-wait-busy-hang.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +16
>         similar issues
>   *
> 
>     igt@kms_writeback@writeback-fb-id:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl6/igt@kms_writeback@writeback-fb-id.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   *
> 
>     igt@prime_nv_api@i915_nv_import_twice:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@prime_nv_api@i915_nv_import_twice.html>
>         (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>   *
> 
>     igt@sw_sync@sync_merge_same:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl5/igt@sw_sync@sync_merge_same.html>
>         (i915#6140 <https://gitlab.freedesktop.org/drm/intel/issues/6140>)
>   *
> 
>     igt@sysfs_clients@fair-1:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl7/igt@sysfs_clients@fair-1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_busy@close-race:
> 
>       o shard-snb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-snb6/igt@gem_busy@close-race.html>
>         (i915#5748
>         <https://gitlab.freedesktop.org/drm/intel/issues/5748>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-snb7/igt@gem_busy@close-race.html>
>   *
> 
>     igt@gem_exec_balancer@parallel-bb-first:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2849
>         <https://gitlab.freedesktop.org/drm/intel/issues/2849>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-forked-all:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked-all.html>
>         (i915#118 <https://gitlab.freedesktop.org/drm/intel/issues/118>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked-all.html>
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl9/igt@gen9_exec_parse@allowed-all.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl4/igt@gen9_exec_parse@allowed-all.html>
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-tglb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-tglb8/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#3953
>         <https://gitlab.freedesktop.org/drm/intel/issues/3953>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html>
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o
> 
>         shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-snb6/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921
>         <https://gitlab.freedesktop.org/drm/intel/issues/3921>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-snb2/igt@i915_selftest@live@hangcheck.html>
> 
>       o
> 
>         shard-tglb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-tglb3/igt@i915_selftest@live@hangcheck.html>
>         (i915#5591
>         <https://gitlab.freedesktop.org/drm/intel/issues/5591>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb3/igt@i915_selftest@live@hangcheck.html>
> 
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html>
>         (i915#2521
>         <https://gitlab.freedesktop.org/drm/intel/issues/2521>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html>
>   *
> 
>     igt@kms_cursor_legacy@short-flip-before-cursor@atomic-transitions-varying-size:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl3/igt@kms_cursor_legacy@short-flip-before-cursor@atomic-transitions-varying-size.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl5/igt@kms_cursor_legacy@short-flip-before-cursor@atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         +4 similar issues
>   *
> 
>     igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html>
>   *
> 
>     igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1.html>
>   *
> 
>     igt@kms_hdr@bpc-switch@pipe-a-dp-1:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl6/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html>
>         (i915#1188
>         <https://gitlab.freedesktop.org/drm/intel/issues/1188>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html>
>   *
> 
>     igt@kms_plane@plane-position-covered@pipe-b-planes:
> 
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-tglb8/igt@kms_plane@plane-position-covered@pipe-b-planes.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-tglb2/igt@kms_plane@plane-position-covered@pipe-b-planes.html>
>   *
> 
>     igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-2:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk7/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-2.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-glk7/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-2.html>
>   *
> 
>     igt@kms_psr@psr2_primary_render:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb5/igt@kms_psr@psr2_primary_render.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb2/igt@kms_psr@psr2_primary_render.html>
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl7/igt@perf@polling-parameterized.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888> /
>         i915#5639
>         <https://gitlab.freedesktop.org/drm/intel/issues/5639>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl7/igt@perf@polling-parameterized.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         (i915#2852 <https://gitlab.freedesktop.org/drm/intel/issues/2852>)
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#2684
>         <https://gitlab.freedesktop.org/drm/intel/issues/2684>) -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#2684 <https://gitlab.freedesktop.org/drm/intel/issues/2684>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105925v2/shard-iclb7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_11862 -> Patchwork_105925v2
> 
> CI-20190529: 20190529
> CI_DRM_11862: ffee806d103b9604db7eb9cd689c098aca1ffa96 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6563: 7d43b49bf10788d4870668f93a800888fc8ab339 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_105925v2: ffee806d103b9604db7eb9cd689c098aca1ffa96 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 
