Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E477965FA8C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 05:03:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A784710E837;
	Fri,  6 Jan 2023 04:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5F8210E837
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 04:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672977797; x=1704513797;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=nwO3JPRHfzQ0w4IUs14aC2jUNWM/f/GVdAe/3SAI2wA=;
 b=gVPizO7lYq2aKufidBxSJb68xf51AzdMJLnS14Mrk7gAx++6ebIrATaS
 NxO8Vr/TzbvfS9PQkD6TAgIfhfKB/6BfULdUit7SMB6UtBQNk8XoPgAhZ
 8wcEcom92ZpRGrnaEQPl8epKFmcSbpBjf/X6XGFu4/4Eq5kDGKtWEaTZ5
 dtB0b+D2lFQwHB7cPgwMwJkBBk0tbn8rXwnrFEE9JYFY2ANnI9XJwQtKO
 hmBKxbWm7F7DQI0yyWQJHUFZk5k1tuwEwZco4UV0jpejRT4pIBlY+nbZf
 TEOtwZE6M4D3rdFlEsaRNiLjH7v3NoCzmj9h/uCeSlcx4Ae3WzeXOeEOw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="310187492"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; 
 d="scan'208,217";a="310187492"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 20:03:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="657771223"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; 
 d="scan'208,217";a="657771223"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 05 Jan 2023 20:03:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 20:03:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 20:03:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 20:03:15 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 20:03:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EE6SbgMaHXDaoc5bFuIecj6bne7kpO1zFmU07V+MM5gv0yqzKY1d/0re3T2q1acZ9He/0HK9Jc7YrN/eSFv7deaWA2PzstjK0ylMEz8EPNK09fAWyktvlMYMtVWyzOUY+65RoqW+pakFxsHdCnjrELXWsGOUcImAjqVPsUfcz8/fSLqA9hHKcAsjsBD+FbQZZFP3BsUgQY7mDsf9t07YS9rQAxd5SzXAFrvJu0jRzbav+1xlm2L1tHVJCz5vco5e6oSgS1IQSmfy7+nXMpolGiH1qX+bU4bqPqYEr3yz9YTm9cvpRXU52Usa6hMxlArDRkSnJu2Gd8Ehgr+S6ZYV7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S3qh40FDB9SL2+SaSldRZVqcK4MO9Ws4EVWBHKXh/VE=;
 b=CF+KZID/F0UgQT25OzyE4BuCN1bx+3jAlMzAK+zl98gPyxGGo5Q74szp89QkySPHz0ZaeFF/EKBZjBE7UW5FYCt7Xg/IpaECjekkzpypU1HyuxD2kZLndm1da9QoMYlG7BhRwO8N9VwLXgvQdVyYUAUU6LY66+hZwkb+x45tRnj8TB/Ipy9dKYVjU8qOcrImNnJ8TaE1EG+1TryV4+jJxhe13CqF6EoXsJyFfe0TjTmXY49GUJvAMopD7E6mbqHf3YIZp7RQMHMmAUG1mWe748wJwmDD0t48RGyFSPwVNuNpEsPe4BeohNDB1vHwJnQZSL26OjnAVG8bHHC9Hpn/tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5320.namprd11.prod.outlook.com (2603:10b6:208:316::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 04:03:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e%7]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 04:03:11 +0000
Content-Type: multipart/alternative;
 boundary="------------f8rbf0IsCVDIV29mj0rHADm4"
Message-ID: <11ca2641-5dfc-742d-fe84-e5fc5a43bd9d@intel.com>
Date: Fri, 6 Jan 2023 09:33:00 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: <intel-gfx@lists.freedesktop.org>, <lakshminarayana.vudum@intel.com>
References: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
 <167293819960.9640.17175701131071496979@emeril.freedesktop.org>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <167293819960.9640.17175701131071496979@emeril.freedesktop.org>
X-ClientProxiedBy: PN3PR01CA0178.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5320:EE_
X-MS-Office365-Filtering-Correlation-Id: e054840a-05d4-4586-76e7-08daef9aed71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e+HkUrYnkQ0wCfq/1H3Uj1haAfcxjCOblQqKhpPo9U1fFMBmLYmkp4a3ytHa5ztunSYFLsoDsIWcqaJ1foPQ+d3eF/nHBYKAQY1NZ0SYvDzR7HoD9MmPY4ROXaXFsbl7hGEuuc+pP64OnBhqcaRN8J8LL9849P2sXLsOBYZ+5AEb5VBtLMUev1QKT/lGgWIP1pN5Wxsj/deg9AayZ67Xb16vpwEwbFeRLfScNik1mrKg4dpiDYaDc2hyro+l1AQBfztdUZPcnRt54pAKh3/1BHTpDGdIdr1gtGfYyX7Bnxw+Zex0RLluv6dn2X9/nHA2ZGH8wJ1eHdVvyWvyENHBNCZmWKOLa7IX4vbbZcXR/7I8ro2IrlAiP3AEuNTC1BCnyP0gqbxRAPaUQb3fSpqUAsGp2Zk3mrk0zZUdF/PmN3JmpXiuadAIObISdon3dQggtQjoSNwHgUcgWjyO/kN7X3cxc/VDUrph+2T1faVsgQ/Eea9XN6kU+E0py7WC8os0Ik+jPp4rTPHXgodeRcuN+jljJckltNINFnr44eyC6wRag+1fQe+7SNmjo0YOi+txBv9e/9OtStQyUBg/lV7mb/bGbXs2cW9LkSijBkO5y4w/5MT38pUzWDtEsrtzE1rQOXYBGhsJj06GKJ0te79z/mkWea26Ec35d/i+XOSNwlJYnOmPcOzcf5/mU7FA1lAf6+DfETkaU0z/eDKdAtz1JHn/7fnlnuVCPAezTt6cwBSAmy8rttGfjC6v32PTwB8RTgYsieImD48w2I7ZbBJV6A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(136003)(39860400002)(396003)(346002)(451199015)(55236004)(186003)(6512007)(2616005)(82960400001)(26005)(53546011)(166002)(38100700002)(30864003)(31696002)(86362001)(83380400001)(36756003)(21615005)(31686004)(8936002)(5660300002)(41300700001)(66556008)(66946007)(6666004)(478600001)(316002)(66476007)(40265005)(6486002)(6506007)(33964004)(2906002)(966005)(6636002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEdIU1d0Vk44TUhaNCtSVFJaZ1ZLREt5bTlUdUs5eEhORGN0ZkMzbjlOWVI0?=
 =?utf-8?B?M1g4dVVsMW90L1c3dXNPZjJYOWhHSjVCNGRINzVUL0tMbWg5U2s3RU0xOFp5?=
 =?utf-8?B?SHJ4d1RZU1orZ3JsOU42ZTdxczg0WDRqOGVrVVdERVBCc0dBMEFwZ0QxNG90?=
 =?utf-8?B?eFlQOTNHcE9LMm1EWWlQVklkZ2p4eEZ5OXlMS09MZEZoK1YwSVFjbXJ2WmpD?=
 =?utf-8?B?M1dTVE8zNHZ3cEI5MWJHM09uZzZIU09TWG83K05mN2wyUWVpNk1iOFRlR3Y1?=
 =?utf-8?B?LzZhRlpqQk5rWnh4bWdTTUxpNXN1czFMY2xGY2hmWFJwUC9GZWpQZ29DdEFs?=
 =?utf-8?B?WHgvNm9WY0M4WGRpc3BHT0dsS3hONjRxb2pXa2pqMTdQbE5peFVZL3hkZUdV?=
 =?utf-8?B?T3E0NmxTaUVvUXRCZkl0MmZHbGR1Yk9uR05pNm8yUm95dlpzMmsxS1B3RU53?=
 =?utf-8?B?Tnl0cVYremFLSzJ2MHBwR09LeVkwaHhEUmx0ekxXWnVmZmV6Smg5U0dUWDI2?=
 =?utf-8?B?UDJBclluMlZja29QTTlqSnRoTUJiWUtkVVZqTHBaQlpETkVmanp5L0cycGNF?=
 =?utf-8?B?YXdsdDQ4L3RHV1hJdlF0VGNIQ2o5RW1wYVFHTGRBR3RCZHlJV2h0a2VlOVJi?=
 =?utf-8?B?bjlzRUdyOGZYTXE4RHUvVUNNV3VoTWt1RHBEanJZUEtGdC9wMTZuKzQra0Qr?=
 =?utf-8?B?NVlhZldFMWtUdXJJMkNUVHJTWGJERitXb0xsQmFjb0g0T25SaDhDanBlWldY?=
 =?utf-8?B?aDdPVzlyQ1lEblJ5M3VxRkpabjJESW9qR0tCVlVib1c5VkVsZGpNTy9kMVRW?=
 =?utf-8?B?M2tEN1RaUFNxc3BweGlIWld5ZzhiU0ZqMXJjVE9QZWpTR0hqY1p3SDYyYnhU?=
 =?utf-8?B?OWZzdlFDcy8wSEVkd3RmWVVmU2lUeEtPaDYzMzRDZzE5S2Y1emQxYVZ4VFhx?=
 =?utf-8?B?NDVzd1pNVUVDZWpJNzdDOWhrdHZySVgzblhtZU9BTEQrNkZMZnpWMlMyVVZJ?=
 =?utf-8?B?THp5T0tVNEswNGFpanJpUE12dVFDWi9JbUVDdlFWMW5BYkM0d2w3Y2tJVG15?=
 =?utf-8?B?Q2t1WDRYZGk1VXY0ZkxlS0pNR2VtOUg5OGw1REdMRTk4czYyZkYxVjJTeXUw?=
 =?utf-8?B?WmR5bk9iMFU1TkVnd1ZBMkdPejVsRy9zRU1WZ0pseHlCMXBPUDlobW9qMjZH?=
 =?utf-8?B?YnNkcTJIcjU5aEJTdlZ2OXpGM1FsUFlxQUJqQ2tpTVFDVTVRTFNZNk0rdWJ0?=
 =?utf-8?B?WGFydlJ1ZjZUL0xtYnF2ZzdscVlkM0J4ajNnZi9NOHNJWkNVL29ZSGpjaEZK?=
 =?utf-8?B?UGR6ZTFIVE9KWXYvK0ZjdVJVbUZmMG1RcC9RN0tZZ25kV2p1aldjclo2ZG9h?=
 =?utf-8?B?Z0lzT0lCQk0veVZzNjVJWm5OZHlSZVpxWlljZ3gyUENzQkdpd2VyWU53REQx?=
 =?utf-8?B?bzZoTk1mU0hTRGN3bk1hanhnbGRwM01ObEttQnU0ZitYa2orNG1mNXNBT2o0?=
 =?utf-8?B?TjdBNWtZc0R6VXoyZkpreHdPY25aTUpzQVJDaXp4clRnOGhtcnhJcEJEMVVO?=
 =?utf-8?B?MHI1blRGUzV5UGFGWGdWblJzdnQzV3hXUjBBYmFZc3hWUFV2dmsvY3JEUHhz?=
 =?utf-8?B?Tm9ybmdoSGZuSTBCWG5DeXRPQ3ZZQ2tZV0hibndVWDhKMzlKcU1TUGQ0MmtF?=
 =?utf-8?B?SWZOWTgrVSs3YnFDazMrTXBQS2hFYW5Wc0h4M01saTlRRjdIRXlMRVRFbEJN?=
 =?utf-8?B?cjdXZjlqUmMyYWxBYmtuaHorY21adm1pUXYrT0hDS1lJdVpldDlkN0wxRHg1?=
 =?utf-8?B?eHlPSVd1NGptU2dVemk5ekVieXJOQTR3WFVTRG1aVU1iKytMbWZmbVBiZVcv?=
 =?utf-8?B?R2hBWEZQZkxUQW0wbFhKRlY4RllOTXNWcGRaTVZnSGwvS3dJUCtudEF0L3U4?=
 =?utf-8?B?VEwzd25UVjdZUlRUdjMvWjQzOGtEWHlxdVQwcnlTZUpJSFBDZ2lHSHJzd0NN?=
 =?utf-8?B?K2RNeDNtNVRvMEx5RUZwK01zQkgxVlF1ZTJxN2lJWWl5SWcrU3FJKzlrbVFH?=
 =?utf-8?B?UlBRWm1WSGNEQlI0aGhLMTJNTC9JT0RYam00djIvQVdWRFEybUVXbnNTZ3Q3?=
 =?utf-8?B?aCtrY3RRMDMwWlNsMlJHSEtXWkJtRHpWeXZnQ3FXSlJEanN6S3k2OFZVVGhE?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e054840a-05d4-4586-76e7-08daef9aed71
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2023 04:03:11.7109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4nXdRdoyT1kWBTsq5h2QF3XLnwqQy5RwM2QH90sEenP5dc1j5mbuFbHUW2khNKmb023NAVkIHAhyEBLpZh0cvbgWkLmhuELROBhPLP1fTb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5320
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRGVm?=
 =?utf-8?q?eature_Interlace_modes_for_Display_=3E=3D_12_=28rev3=29?=
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

--------------f8rbf0IsCVDIV29mj0rHADm4
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Lakshmi,

Below failure is not related to the patch, but due to existing issue : 
https://gitlab.freedesktop.org/drm/intel/-/issues/6179


        Possible regressions

  * igt@gem_exec_suspend@basic-s3@smem:
      o fi-rkl-11600: NOTRUN -> INCOMPLETE
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html>


Regards,

Ankit


On 1/5/2023 10:33 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Defeature Interlace modes for Display >= 12 (rev3)
> *URL:* 	https://patchwork.freedesktop.org/series/109773/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12548 -> Patchwork_109773v3
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_109773v3 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_109773v3, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/index.html
>
>
>     Participating hosts (43 -> 42)
>
> Additional (2): bat-dg2-11 fi-rkl-11600
> Missing (3): bat-atsm-1 fi-snb-2520m fi-pnv-d510
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_109773v3:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_exec_suspend@basic-s3@smem:
>       o fi-rkl-11600: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html>
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o {bat-dg2-8}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/bat-dg2-8/igt@i915_selftest@live@hangcheck.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-dg2-8/igt@i915_selftest@live@hangcheck.html>
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o {bat-adlm-1}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/bat-adlm-1/igt@i915_suspend@basic-s3-without-i915.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-adlm-1/igt@i915_suspend@basic-s3-without-i915.html>
>         +1 similar issue
>
>
>     Known issues
>
> Here are the changes found in Patchwork_109773v3 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@debugfs_test@basic-hwmon:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html>
>         (i915#7456 <https://gitlab.freedesktop.org/drm/intel/issues/7456>)
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@gem_lmem_swapping@basic.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@gem_tiled_pread_basic.html>
>         (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>  *
>
>     igt@i915_pm_backlight@basic-brightness:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html>
>         (i915#7561 <https://gitlab.freedesktop.org/drm/intel/issues/7561>)
>  *
>
>     igt@i915_pm_rpm@basic-rte:
>
>       o bat-adlp-4: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html>
>         (i915#7077 <https://gitlab.freedesktop.org/drm/intel/issues/7077>)
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o fi-rkl-11600: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html>
>         (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>)
>  *
>
>     igt@kms_chamelium@hdmi-edid-read:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html>
>         (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109285> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>  *
>
>     igt@kms_psr@primary_page_flip:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@kms_psr@primary_page_flip.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         similar issues
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>  *
>
>     igt@prime_vgem@basic-read:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@prime_vgem@basic-read.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3291
>         <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         similar issues
>  *
>
>     igt@prime_vgem@basic-userptr:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@prime_vgem@basic-userptr.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3301
>         <https://gitlab.freedesktop.org/drm/intel/issues/3301> /
>         i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>  *
>
>     igt@runner@aborted:
>
>       o bat-adlp-4: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-adlp-4/igt@runner@aborted.html>
>         (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>
>         Possible fixes
>
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o fi-apl-guc: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334
>         <https://gitlab.freedesktop.org/drm/intel/issues/5334>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>  *
>
>     igt@i915_selftest@live@migrate:
>
>       o {bat-adlp-9}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/bat-adlp-9/igt@i915_selftest@live@migrate.html>
>         (i915#7699
>         <https://gitlab.freedesktop.org/drm/intel/issues/7699>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-adlp-9/igt@i915_selftest@live@migrate.html>
>  *
>
>     igt@i915_selftest@live@mman:
>
>       o fi-rkl-guc: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/fi-rkl-guc/igt@i915_selftest@live@mman.html>
>         (i915#6794
>         <https://gitlab.freedesktop.org/drm/intel/issues/6794>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-guc/igt@i915_selftest@live@mman.html>
>  *
>
>     igt@i915_selftest@live@reset:
>
>       o {bat-rpls-1}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/bat-rpls-1/igt@i915_selftest@live@reset.html>
>         (i915#4983
>         <https://gitlab.freedesktop.org/drm/intel/issues/4983>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-rpls-1/igt@i915_selftest@live@reset.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12548 -> Patchwork_109773v3
>
> CI-20190529: 20190529
> CI_DRM_12548: 6e2f76c3e3ff7aa7be8812900b4b3bf13c056ed0 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7110: db10a19b94d1d7ae5ba62eb48d52c47ccb27766f @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_109773v3: 6e2f76c3e3ff7aa7be8812900b4b3bf13c056ed0 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 3f296a19e8f4 drm/i915/display: Prune Interlace modes for Display >=12
> 992979f0f92d drm/i915/display: Drop check for doublescan mode in modevalid
>
--------------f8rbf0IsCVDIV29mj0rHADm4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi Lakshmi,</p>
    <p>Below failure is not related to the patch, but due to existing
      issue : <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/6179">https://gitlab.freedesktop.org/drm/intel/-/issues/6179</a><br>
    </p>
    <h4>Possible regressions</h4>
    <ul>
      <li>igt@gem_exec_suspend@basic-s3@smem:
        <ul>
          <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a></li>
        </ul>
      </li>
    </ul>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Ankit<br>
    </p>
    <p><br>
    </p>
    <p></p>
    <div class="moz-cite-prefix">On 1/5/2023 10:33 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:167293819960.9640.17175701131071496979@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Defeature Interlace modes for Display &gt;= 12 (rev3)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/109773/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/109773/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12548 -&gt;
        Patchwork_109773v3</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_109773v3
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_109773v3, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/index.html</a></p>
      <h2>Participating hosts (43 -&gt; 42)</h2>
      <p>Additional (2): bat-dg2-11 fi-rkl-11600 <br>
        Missing (3): bat-atsm-1 fi-snb-2520m fi-pnv-d510 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_109773v3:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@gem_exec_suspend@basic-s3@smem:
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>{bat-dg2-8}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/bat-dg2-8/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-dg2-8/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">DMESG-FAIL</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>{bat-adlm-1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/bat-adlm-1/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-adlm-1/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">DMESG-WARN</a> +1 similar issue</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_109773v3 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@debugfs_test@basic-hwmon:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456" moz-do-not-send="true">i915#7456</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-send="true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@gem_lmem_swapping@basic.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_basic:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@gem_tiled_pread_basic.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282" moz-do-not-send="true">i915#3282</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_backlight@basic-brightness:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561" moz-do-not-send="true">i915#7561</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@basic-rte:</p>
          <ul>
            <li>bat-adlp-4: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077" moz-do-not-send="true">i915#7077</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375" moz-do-not-send="true">fdo#103375</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-edid-read:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103" moz-do-not-send="true">i915#4103</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285" moz-do-not-send="true">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098" moz-do-not-send="true">i915#4098</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@primary_page_flip:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@kms_psr@primary_page_flip.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072" moz-do-not-send="true">i915#1072</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send="true">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098" moz-do-not-send="true">i915#4098</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-read:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@prime_vgem@basic-read.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295" moz-do-not-send="true">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291" moz-do-not-send="true">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708" moz-do-not-send="true">i915#3708</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-userptr:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-11600/igt@prime_vgem@basic-userptr.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295" moz-do-not-send="true">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301" moz-do-not-send="true">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708" moz-do-not-send="true">i915#3708</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-adlp-4/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>fi-apl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334" moz-do-not-send="true">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@migrate:</p>
          <ul>
            <li>{bat-adlp-9}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/bat-adlp-9/igt@i915_selftest@live@migrate.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699" moz-do-not-send="true">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-adlp-9/igt@i915_selftest@live@migrate.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@mman:</p>
          <ul>
            <li>fi-rkl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/fi-rkl-guc/igt@i915_selftest@live@mman.html" moz-do-not-send="true">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794" moz-do-not-send="true">i915#6794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/fi-rkl-guc/igt@i915_selftest@live@mman.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@reset:</p>
          <ul>
            <li>{bat-rpls-1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12548/bat-rpls-1/igt@i915_selftest@live@reset.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983" moz-do-not-send="true">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v3/bat-rpls-1/igt@i915_selftest@live@reset.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12548 -&gt; Patchwork_109773v3</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12548: 6e2f76c3e3ff7aa7be8812900b4b3bf13c056ed0 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7110: db10a19b94d1d7ae5ba62eb48d52c47ccb27766f @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_109773v3: 6e2f76c3e3ff7aa7be8812900b4b3bf13c056ed0 @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>3f296a19e8f4 drm/i915/display: Prune Interlace modes for
        Display &gt;=12<br>
        992979f0f92d drm/i915/display: Drop check for doublescan mode in
        modevalid</p>
    </blockquote>
  </body>
</html>

--------------f8rbf0IsCVDIV29mj0rHADm4--
