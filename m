Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD0E5458DA
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 01:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4284E113983;
	Thu,  9 Jun 2022 23:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0232113983
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 23:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654818708; x=1686354708;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/Gp+4792a0yLkz7r9t1pJqAVwe6YedhTHuNOwzuLSbw=;
 b=BsE+J8YmjEaDP2Z7WGkUgBjMPoFTveY//rmwAXcvRemqMYVywwRlkC2e
 ZfIkoIiZnXR1N3A21uQHiQu7KKu7TyWi3rUrX961efHc0KAlRpHBikhtz
 SNdp6/PG3YwuyWP+w8UVXuOlEJbRz9KOfVDG8DJskUUKrByRu4ndiZZlt
 zg1DH3X8N5zoWv/P+Mb1euGNfpUSRolObXzs8QPxW+vhhkZBiGqMlw7J3
 DakK8gTZQiGo0cn1vMSENk238DrQGR4FaPxWwstTZElei3TOrHkKtR+oS
 j397b3UL1kvVeNN3nkBmT9H1o7qaantFr3Z708nZnJRjzM+1Y/7v6DvF5 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="277488628"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="277488628"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:51:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="760278255"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 09 Jun 2022 16:51:47 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 9 Jun 2022 16:51:47 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 9 Jun 2022 16:51:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 9 Jun 2022 16:51:46 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 9 Jun 2022 16:51:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WeprGNs4SQXjbxTyslsP9Bjf5qENgSC78qkE73rMFSXgQl+1taPPOoKVvTc+xfPm1ZZD6bKotT+p9Vle5Znip/9zAPgxLO+isHZKnwY7INObOt7BX2bAYr7dh0JB7eh+lJqaK8w3wY0pPKdXkgJIzluKgWgNbVYK294afDlA2JBTqi96RsXazBbSDOwZZdPR1dZ+O9Dmq7rK/dm6YTpDppxC/2aJTCMSURpZGQsd2MaTqx1ACLNKD3dTeDewasjT5adBcZOqlWzK01miDPOM6BfrKC6UxM+tFDulIhgLgkQQHjZpj23krDK8OPy+TMRtXeRk9ztjWBruyDn0/4iWag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jWS/wg6Gp5K8WAR9VbU21tzp8rJXm1qDUoCyweH39nA=;
 b=O5PYYmeIsVSxlqZy+T4knam9gYuqWI7fI0ngmPse6tkYEFGI0Z19AzoJuaq2Sgcw6eKKSmN9rWdezmS9Amfw7ZcIHhtUL0XBG9i1nq0VRZ3KDHZ7lB895YQ4upNNUQ3eLCRg16K8ljcc9DBZCWdiEIanKDmBqRi25JXt7j/nRRFJd9J5GUdMBtzT+FT8hfJ8S+loaKKle80L41YbhBs0C44tY1cZ2ErNVm6kf9steCyOBjtWY9MEa8xSO9Tf4ZAUvXpLEmV84PztCvdGwhZsOhQJ2jORZZinWfaLT347MzWyMVlrEpAJwdVYE2WNEa5NgzFefmjyjREbO1qNTPatVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BL1PR11MB5350.namprd11.prod.outlook.com (2603:10b6:208:31c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.13; Thu, 9 Jun
 2022 23:51:44 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf%2]) with mapi id 15.20.5314.019; Thu, 9 Jun 2022
 23:51:44 +0000
Message-ID: <c7fae973-985b-0bef-155a-8e41a0eb372a@intel.com>
Date: Thu, 9 Jun 2022 16:51:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
References: <20220510221439.448756-1-umesh.nerlige.ramappa@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220510221439.448756-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR13CA0026.namprd13.prod.outlook.com
 (2603:10b6:a03:180::39) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f48ed2a7-f093-495b-69c8-08da4a7301e8
X-MS-TrafficTypeDiagnostic: BL1PR11MB5350:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BL1PR11MB5350561AD9072064124782F7F4A79@BL1PR11MB5350.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JgXNrbRFU7CIruYZgypwraGpzFj5xX9s/8maIDBxvkXIEp1vMtPE0FPApBNG+LDb1WWq5io9jJwWcGn8NQSYt9VxRtqz2ruHVQqXRIvHxbEMFCtzezund2Wepm2xRZ4NaGba32UPsraU7gbukqM/KXP07e59sxKNSto42rFRxoIPYs+FbH4Ncm3nurceV/WFKWIf4T1CXa8qrkgG9lzduoO5TejW9I+Naavbex7CTk/d05jwiu/8g4WR6iBCm5mGJrTGEnjGz5jS7LEds1Pxe1m6ODqSzswhJkj+D1AbZRlj3j3eVywy1+zBypQ8FNg881+/Uqnr0asc3seruhzya77STG/eFuzsb8/2ATrDBwGXEo7MnT5xVaUBc/x7k2URN0F3jZVycpC3lPxPsmXULwyzN3FOZwq89bPCmvhqmQWYJnzC8+w11MTcn3hylffkaAG+lRl2sY8d4/gQKG2IGHKd3hcW2K1NS7fSP2rQirrM2XsPkM+gpQiaEPmfwDCQzpqjwu7YaPreHxUwDVH97aLQyKHbIJ0uK5JUU53+V25fkax1DeKvt4Axd04/+oTn17RIiytxwLnexS583i8vpln/4SDu0PsVrf4ChLRok6BxDAtHlX0V5UGOzrEWXW8OEw6LEGuLyEDA4WBHpuuCCW5fyfTNgUFlHIMJOciXaHWOTMhRgIKywdlsBp/ic7i0g8s6k2AuGLFZmUfOH03l8tW62pNkCoq4+B31377TzkU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(186003)(82960400001)(38100700002)(6506007)(6666004)(26005)(316002)(110136005)(53546011)(31696002)(6512007)(6486002)(508600001)(2616005)(2906002)(30864003)(66556008)(8676002)(66946007)(66476007)(5660300002)(36756003)(8936002)(31686004)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDM5Zkl3dHFFSDNiSU50SXRHMUdzMW1NdkRIQnMyYjRrWjNGako5OHExdFN0?=
 =?utf-8?B?UWY1Vndqd1BPL3FtRFZBOW9YWmdCWm9NUUREOUNOL0cvMjBocEpJczZ2QjZN?=
 =?utf-8?B?blpJVk1JdXdxMFlyUmZ4cjZHQUplYm1MZ2F6Y0dmWlhOdXZNczZQcy9XWW9J?=
 =?utf-8?B?eFpCRVQvUmdDTWg5cS9pckRaTUc0RmI5SDYzdU5KclA1S2U5TXBwOTJRRzBE?=
 =?utf-8?B?TWE3ck9aQURaWUtJUmZ6N3JJM3pMeTRIWXA2VnNXUHRKRjFNQmNwZ05OKzEx?=
 =?utf-8?B?clg2ZVdvQ2VVLzNVRSt5djF3cHNxTWprWUJQbjM2a054OEdKQ2VLVXlLNkhi?=
 =?utf-8?B?bVVDd1Y2dmQ2bUU5WjRMS2x5QzRjUDZLVGRGVS9wN09YUzdHWXREbm1tbk1Y?=
 =?utf-8?B?akQySmU2MXFZaVVFY1Z5R1hNb1UzaHh1RkVTdkNJc3BINUU3WkF4VkhBdUZZ?=
 =?utf-8?B?OWYwQUt1RUkvajJzSnVhbzVUQUt2SjkxdXF1VnQ0VnYrNklndWF1T1JlRGMz?=
 =?utf-8?B?VzZXUjdrcnFXVGpIckxPU0JpN3VJNW4rdHVwd09XVGhxZUVYWjQ5MHdORkV0?=
 =?utf-8?B?dmRUbllsVm5oMk9ES3V2VWNYOVZIbW9veDF1enA0TFlJd2tCVkhhbnpqbDAy?=
 =?utf-8?B?N2NTRklSbTNtYmJnZUxYNFhHOWplNEV1MFcrall3SStGQWhrVitaVjRRd002?=
 =?utf-8?B?OXI3NXV2WE4xMFpES3R0a2VYTnFNQ201ajNFQmY2bDZTN09zOWtva1dXZGM5?=
 =?utf-8?B?Y2xLRnd4TnVWRVVLcCtUUThoWnp1WHdxSVdleGFkckVlMExMZy9SRHJ5N1lW?=
 =?utf-8?B?TGM4ZHdweXBZZm1McmdkVGhraFZLYkovbndSdkJZT3Z3MFFrWFZPb3FLM09M?=
 =?utf-8?B?cENIWW9mRUlBdDFrVnRWNTJZQjlSOFdFTFZud1ZXY1dtZ1dnc2cwZzh4ZmhR?=
 =?utf-8?B?SG5keHVKb0NSYUNlV3NYcThjckZ4bXRTYjBmV1BWa3FLWHl4VDhWeVd6dkhE?=
 =?utf-8?B?THNZNGlzcEROd2RMcEdERU5yc3NBTmtLdk5UT0dIZG1ZVGx1Mms2SU9aYmE1?=
 =?utf-8?B?eFFWSWNjeDk4S2FETy85dG1yNll2cGZKQnhuNFY4L3RyMXJML2dFMncvMmwr?=
 =?utf-8?B?amRndWZxcDM4ZHdhSTU4VzhyUG50N2QyT05pRktDRjB5M2s4WmlndDd6YmJn?=
 =?utf-8?B?N21aemowZlpmeFkzKy9BK2NaSzFvYXdvNzZ5VUlJR3laTXFpQS9LWTVZazJF?=
 =?utf-8?B?SjJzOFRlZERKNXYrTTFpeWs1OFZvZW9xQ1hLbnl2Umx1bHVFN2RGeS9iSzZQ?=
 =?utf-8?B?akZFQlZ3Z01KVkxNV0M3WFZHckt3cE5hbytOc1ZnRWphL0JEK1FwM3Z3RUFy?=
 =?utf-8?B?bFhBOXlreHBoeWFhTzBUbUdxNFgzZVZBMmk2RzlqRUljYW1aR0tlNFZ3czJw?=
 =?utf-8?B?STY1YmdEcytZWlZPZ1ErWmRZVWdNWlpnbmdEbjZUT3U1dlJsMy9aY0NHaFpK?=
 =?utf-8?B?eVhxQ0xyZ1RqaktFUzg4V0pFUU9pa1I3RFdQaWZLd05zQzZpeElLbU50R21m?=
 =?utf-8?B?K1pOOGhJZmFVdVFzbGprcDZ4YjN6VGd2b1RaVjFyVllJNkhSY3ZNRkkvM2VG?=
 =?utf-8?B?N3FRdFpPQm5iL1Nhajk3YlNNNTlnalBFdkN1YjZReVdJQ2kvQ0NzWjhxd3dr?=
 =?utf-8?B?L1IxSlFtbzhNN2x0U1U4WUtvbno0Sk1TdThYK0twenJMSkV5bzBZa0FpM3Vr?=
 =?utf-8?B?NHVwUmRhQkVFcW5NTGMrZ1QzNDF0NjNjN0svVGV0RGRtZGRMc3ZnZ1RVSVpJ?=
 =?utf-8?B?NEtRbnFSMC92YWtLaDRmYzYxL21CeEo1VlhEQXJsZXYxLzZ4MUI1UytYN3Yw?=
 =?utf-8?B?RTJ1N1NuQVhPbkRxMmVFWHpSRDQvSk5oa21ITWZ2ZFRUb0JLREI3OTZlMERG?=
 =?utf-8?B?a1hLQ2dlMVhYcEJ5ckhoUXRrM0NORHhZTXRDdGNWN1RKWVIzOG9vVmlrQXYw?=
 =?utf-8?B?cWlxVS8veGtITENqZ0tEdm1YRlVudGhSbWJ2anBmZVF0WjNlK2dlRGJ5UGNR?=
 =?utf-8?B?T0crNUNqUEJhb1l4Vm5ZVk9WTkdzZG9jNlZJQ01WRWF2djBqK1NrV1pabW5L?=
 =?utf-8?B?WHcyamlKL1JSRGMzTTlJSjJsaHNkMnVleWErUW1CWkNoc2V0ZjNYRGE2SWx3?=
 =?utf-8?B?U2NpUkU5d2ZkUTB4dnpxTFNFb21mQUJZMXN6b1VvSW5DanAwWjNHbGJXVUh1?=
 =?utf-8?B?T293SFJUWEh4azQxYTBQcUR2VGZpaTZoeFd5NCtJSXhudnR3cDI5ZUpiOVda?=
 =?utf-8?B?c0tMSU1RREVpR2xmdEIxWG81VDY2MlJsQWxmTmlJME1VK0xDcFAwaXBTVDFm?=
 =?utf-8?Q?mpfUWvBDcwlr6YoHNps5FTO7craGUpLkjtzcz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f48ed2a7-f093-495b-69c8-08da4a7301e8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2022 23:51:44.3017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oa+GGrawsVoER2bJPBn9pjsm1Zo6WfBnqcffai/eiAmx8ftQuvdKE78NBZkbsa6tJSd6tFrQCpea8P2U1l4csExEbOzVPzkBJlUKrRuOEGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5350
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/reset: Add additional steps for
 Wa_22011802037 for execlist backend
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



On 5/10/2022 3:14 PM, Nerlige Ramappa, Umesh wrote:
> From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
> For execlists backend, current implementation of Wa_22011802037 is to
> stop the CS before doing a reset of the engine. This WA was further
> extended to wait for any pending MI FORCE WAKEUPs before issuing a
> reset. Add the extended steps in the execlist path of reset.
>
> In addition, extend the WA to gen11.
>
> v2: (Tvrtko)
> - Clarify comments, commit message, fix typos
> - Use IS_GRAPHICS_VER for gen 11/12 checks
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Fixes: f6aa0d713c88 ("drm/i915: Add Wa_22011802037 force cs halt")
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h        |  2 +
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 85 ++++++++++++++++++-
>   .../drm/i915/gt/intel_execlists_submission.c  |  7 ++
>   .../gpu/drm/i915/gt/intel_ring_submission.c   |  7 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 81 ++----------------
>   6 files changed, 107 insertions(+), 79 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 1431f1e9dbee..04e435bce79b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -201,6 +201,8 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine);
>   int intel_engine_stop_cs(struct intel_engine_cs *engine);
>   void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine);
>   
> +void intel_engine_wait_for_pending_mi_fw(struct intel_engine_cs *engine);
> +
>   void intel_engine_set_hwsp_writemask(struct intel_engine_cs *engine, u32 mask);
>   
>   u64 intel_engine_get_active_head(const struct intel_engine_cs *engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 14c6ddbbfde8..9943cf9655b2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1282,10 +1282,10 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
>   	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
>   
>   	/*
> -	 * Wa_22011802037 : gen12, Prior to doing a reset, ensure CS is
> +	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
>   	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>   	 */
> -	if (GRAPHICS_VER(engine->i915) == 12)
> +	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
>   		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
>   				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
>   
> @@ -1308,6 +1308,18 @@ int intel_engine_stop_cs(struct intel_engine_cs *engine)
>   		return -ENODEV;
>   
>   	ENGINE_TRACE(engine, "\n");
> +	/*
> +	 * TODO: Find out why occasionally stopping the CS times out. Seen
> +	 * especially with gem_eio tests.
> +	 *
> +	 * Occasionally trying to stop the cs times out, but does not adversely
> +	 * affect functionality. The timeout is set as a config parameter that
> +	 * defaults to 100ms. In most cases the follow up operation is to wait
> +	 * for pending MI_FORCE_WAKES. The assumption is that this timeout is
> +	 * sufficient for any pending MI_FORCEWAKEs to complete. Once root
> +	 * caused, the caller must check and handle the return from this
> +	 * function.
> +	 */
>   	if (__intel_engine_stop_cs(engine, 1000, stop_timeout(engine))) {
>   		ENGINE_TRACE(engine,
>   			     "timed out on STOP_RING -> IDLE; HEAD:%04x, TAIL:%04x\n",
> @@ -1334,6 +1346,75 @@ void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine)
>   	ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
>   }
>   
> +static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
> +{
> +	static const i915_reg_t _reg[I915_NUM_ENGINES] = {
> +		[RCS0] = MSG_IDLE_CS,
> +		[BCS0] = MSG_IDLE_BCS,
> +		[VCS0] = MSG_IDLE_VCS0,
> +		[VCS1] = MSG_IDLE_VCS1,
> +		[VCS2] = MSG_IDLE_VCS2,
> +		[VCS3] = MSG_IDLE_VCS3,
> +		[VCS4] = MSG_IDLE_VCS4,
> +		[VCS5] = MSG_IDLE_VCS5,
> +		[VCS6] = MSG_IDLE_VCS6,
> +		[VCS7] = MSG_IDLE_VCS7,
> +		[VECS0] = MSG_IDLE_VECS0,
> +		[VECS1] = MSG_IDLE_VECS1,
> +		[VECS2] = MSG_IDLE_VECS2,
> +		[VECS3] = MSG_IDLE_VECS3,
> +		[CCS0] = MSG_IDLE_CS,
> +		[CCS1] = MSG_IDLE_CS,
> +		[CCS2] = MSG_IDLE_CS,
> +		[CCS3] = MSG_IDLE_CS,
> +	};
> +	u32 val;
> +
> +	if (!_reg[engine->id].reg)
> +		return 0;
> +
> +	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
> +
> +	/* bits[29:25] & bits[13:9] >> shift */
> +	return (val & (val >> 16) & MSG_IDLE_FW_MASK) >> MSG_IDLE_FW_SHIFT;
> +}
> +
> +static void __gpm_wait_for_fw_complete(struct intel_gt *gt, u32 fw_mask)
> +{
> +	int ret;
> +
> +	/* Ensure GPM receives fw up/down after CS is stopped */
> +	udelay(1);
> +
> +	/* Wait for forcewake request to complete in GPM */
> +	ret =  __intel_wait_for_register_fw(gt->uncore,
> +					    GEN9_PWRGT_DOMAIN_STATUS,
> +					    fw_mask, fw_mask, 5000, 0, NULL);
> +
> +	/* Ensure CS receives fw ack from GPM */
> +	udelay(1);
> +
> +	if (ret)
> +		GT_TRACE(gt, "Failed to complete pending forcewake %d\n", ret);
> +}
> +
> +/*
> + * Wa_22011802037:gen12: In addition to stopping the cs, we need to wait for any
> + * pending MI_FORCE_WAKEUP requests that the CS has initiated to complete. The
> + * pending status is indicated by bits[13:9] (masked by bits[29:25]) in the
> + * MSG_IDLE register. There's one MSG_IDLE register per reset domain. Since we
> + * are concerned only with the gt reset here, we use a logical OR of pending
> + * forcewakeups from all reset domains and then wait for them to complete by
> + * querying PWRGT_DOMAIN_STATUS.
> + */
> +void intel_engine_wait_for_pending_mi_fw(struct intel_engine_cs *engine)
> +{
> +	u32 fw_pending = __cs_pending_mi_force_wakes(engine);
> +
> +	if (fw_pending)
> +		__gpm_wait_for_fw_complete(engine->gt, fw_pending);
> +}
> +
>   static u32
>   read_subslice_reg(const struct intel_engine_cs *engine,
>   		  int slice, int subslice, i915_reg_t reg)
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 86f7a9ac1c39..2caa1af77064 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2958,6 +2958,13 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>   	ring_set_paused(engine, 1);
>   	intel_engine_stop_cs(engine);
>   
> +	/*
> +	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> +	 * to wait for any pending mi force wakeups
> +	 */
> +	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> +		intel_engine_wait_for_pending_mi_fw(engine);
> +
>   	engine->execlists.reset_ccid = active_ccid(engine);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 5423bfd301ad..a7808eff33c5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -323,6 +323,13 @@ static void reset_prepare(struct intel_engine_cs *engine)
>   	ENGINE_TRACE(engine, "\n");
>   	intel_engine_stop_cs(engine);
>   
> +	/*
> +	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> +	 * to wait for any pending mi force wakeups
> +	 */
> +	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> +		intel_engine_wait_for_pending_mi_fw(engine);
> +

Ringbuffer submission is not supported on gen 11 and 12, so no need for 
this.
With this removed:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

>   	if (!stop_ring(engine)) {
>   		/* G45 ring initialization often fails to reset head to zero */
>   		ENGINE_TRACE(engine,
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 2c4ad4a65089..8c6885f43d1a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -310,8 +310,8 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   	if (IS_DG2(gt->i915))
>   		flags |= GUC_WA_DUAL_QUEUE;
>   
> -	/* Wa_22011802037: graphics version 12 */
> -	if (GRAPHICS_VER(gt->i915) == 12)
> +	/* Wa_22011802037: graphics version 11/12 */
> +	if (IS_GRAPHICS_VER(gt->i915, 11, 12))
>   		flags |= GUC_WA_PRE_PARSER;
>   
>   	/* Wa_16011777198:dg2 */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 75291e9846c5..9b21c7345ffd 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1527,87 +1527,18 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
>   	lrc_update_regs(ce, engine, head);
>   }
>   
> -static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
> -{
> -	static const i915_reg_t _reg[I915_NUM_ENGINES] = {
> -		[RCS0] = MSG_IDLE_CS,
> -		[BCS0] = MSG_IDLE_BCS,
> -		[VCS0] = MSG_IDLE_VCS0,
> -		[VCS1] = MSG_IDLE_VCS1,
> -		[VCS2] = MSG_IDLE_VCS2,
> -		[VCS3] = MSG_IDLE_VCS3,
> -		[VCS4] = MSG_IDLE_VCS4,
> -		[VCS5] = MSG_IDLE_VCS5,
> -		[VCS6] = MSG_IDLE_VCS6,
> -		[VCS7] = MSG_IDLE_VCS7,
> -		[VECS0] = MSG_IDLE_VECS0,
> -		[VECS1] = MSG_IDLE_VECS1,
> -		[VECS2] = MSG_IDLE_VECS2,
> -		[VECS3] = MSG_IDLE_VECS3,
> -		[CCS0] = MSG_IDLE_CS,
> -		[CCS1] = MSG_IDLE_CS,
> -		[CCS2] = MSG_IDLE_CS,
> -		[CCS3] = MSG_IDLE_CS,
> -	};
> -	u32 val;
> -
> -	if (!_reg[engine->id].reg)
> -		return 0;
> -
> -	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
> -
> -	/* bits[29:25] & bits[13:9] >> shift */
> -	return (val & (val >> 16) & MSG_IDLE_FW_MASK) >> MSG_IDLE_FW_SHIFT;
> -}
> -
> -static void __gpm_wait_for_fw_complete(struct intel_gt *gt, u32 fw_mask)
> -{
> -	int ret;
> -
> -	/* Ensure GPM receives fw up/down after CS is stopped */
> -	udelay(1);
> -
> -	/* Wait for forcewake request to complete in GPM */
> -	ret =  __intel_wait_for_register_fw(gt->uncore,
> -					    GEN9_PWRGT_DOMAIN_STATUS,
> -					    fw_mask, fw_mask, 5000, 0, NULL);
> -
> -	/* Ensure CS receives fw ack from GPM */
> -	udelay(1);
> -
> -	if (ret)
> -		GT_TRACE(gt, "Failed to complete pending forcewake %d\n", ret);
> -}
> -
> -/*
> - * Wa_22011802037:gen12: In addition to stopping the cs, we need to wait for any
> - * pending MI_FORCE_WAKEUP requests that the CS has initiated to complete. The
> - * pending status is indicated by bits[13:9] (masked by bits[ 29:25]) in the
> - * MSG_IDLE register. There's one MSG_IDLE register per reset domain. Since we
> - * are concerned only with the gt reset here, we use a logical OR of pending
> - * forcewakeups from all reset domains and then wait for them to complete by
> - * querying PWRGT_DOMAIN_STATUS.
> - */
>   static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
>   {
> -	u32 fw_pending;
> -
> -	if (GRAPHICS_VER(engine->i915) != 12)
> +	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
>   		return;
>   
> -	/*
> -	 * Wa_22011802037
> -	 * TODO: Occasionally trying to stop the cs times out, but does not
> -	 * adversely affect functionality. The timeout is set as a config
> -	 * parameter that defaults to 100ms. Assuming that this timeout is
> -	 * sufficient for any pending MI_FORCEWAKEs to complete, ignore the
> -	 * timeout returned here until it is root caused.
> -	 */
>   	intel_engine_stop_cs(engine);
>   
> -	fw_pending = __cs_pending_mi_force_wakes(engine);
> -	if (fw_pending)
> -		__gpm_wait_for_fw_complete(engine->gt, fw_pending);
> +	/*
> +	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> +	 * to wait for any pending mi force wakeups
> +	 */
> +	intel_engine_wait_for_pending_mi_fw(engine);
>   }
>   
>   static void guc_reset_nop(struct intel_engine_cs *engine)

