Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA83F3D4417
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jul 2021 02:54:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1187E6FC89;
	Sat, 24 Jul 2021 00:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514F66FC89;
 Sat, 24 Jul 2021 00:54:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="212036403"
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="212036403"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 17:54:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="497479281"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 23 Jul 2021 17:54:09 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 23 Jul 2021 17:54:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 23 Jul 2021 17:54:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 23 Jul 2021 17:54:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iTuaztZ2PLhr7v1HdTlamI8pdoJ1aenyJxGZ2QqJKse0RZYETetBvx1wdca3BordrH9u2vviXaSPt0K+zYB1nw2f6Um4jj9ysANi/LJ9XbkK25j/gWL5KmblQtv5ItFK9zM2S3aEdiB0VQjgh4asXyw79KyUdDAgYXh5h/SR8mWe6ZuYkvho+F958R6IiIx3Kht+88LBdbihXvYsSMmTPzn3w6xJN1a3Qu6g0Af2OU0oCXuVEtVJ6jfWDfZCTcfh6AC9NjQAMrfzQBkZnIUdmb2WfMOmVEGpm2hVuDJMpitWHPSDqnVq2lXJq77QIRvxb2fP8m6XueE+K1JXwKMLNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=chV+alBBjFq+Hs+7rJE48VFNeg7koMGoF+y9nMvixN0=;
 b=Ea1ff9KzXElahB2xGZc4Fkw699OLlOm7VcKUv9nOEveJjyxpfC1F5eDcQ78YIVDxuXxA1iwmuL+u5ph6/cn1U0ZlJ6fVMBUepAyLQwBWwiKnH5jFuC+0oIyZqZcLKGFN4kI1zxYwUU8AeJfPhySqm8WdA6UeIICBY/5usva4n8L2XLFgiG3VxUaCFM8G+jumpdRqfKJnsnvbCDb+xNDJ0WI6BUzszrvGiOfUyazfwfy4H+Ftpy8YMVmR/hOV3lbFoymYpvgS7IGpVcsUlrx1B/4NIoi0VeeJSYmKulzL+XsxOTDTlDC3vRcWgm3H3V+MhR26novcuDi3NcuD22W/wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=chV+alBBjFq+Hs+7rJE48VFNeg7koMGoF+y9nMvixN0=;
 b=D8mwd3KV4bANtrHHtKvkxjSBqkmzKfgIhcmlb8hmI89D6aQxfFjsfH34Z5kwFKC+qgU3dylVFqpa/7N/KB1gVGgwbTl8jdvP1iIBuKiwMfNgJCKczsQAVZaIFey5bZKjLJXG6xB6dmlM52hiI/EkBNPvzHIjNw85qDkWgS9WzTo=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.29; Sat, 24 Jul 2021 00:54:07 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4017:e7ce:ef66:48d7]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4017:e7ce:ef66:48d7%9]) with mapi id 15.20.4352.029; Sat, 24 Jul 2021
 00:54:07 +0000
To: Matthew Brost <matthew.brost@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20210722235426.31831-1-matthew.brost@intel.com>
 <20210722235426.31831-33-matthew.brost@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <b8dec292-b5db-bfe0-813b-60a933a5246d@intel.com>
Date: Fri, 23 Jul 2021 17:54:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <20210722235426.31831-33-matthew.brost@intel.com>
Content-Language: en-US
X-ClientProxiedBy: MW3PR05CA0020.namprd05.prod.outlook.com
 (2603:10b6:303:2b::25) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.65] (99.72.232.53) by
 MW3PR05CA0020.namprd05.prod.outlook.com (2603:10b6:303:2b::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.7 via Frontend Transport; Sat, 24 Jul 2021 00:54:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 860d61de-0993-43d8-f3fd-08d94e3d8a64
X-MS-TrafficTypeDiagnostic: DM6PR11MB2890:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB2890AB9B201E647FF9931894F4E69@DM6PR11MB2890.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1360;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AwbsjztiU+/vzMO5IvCrmXRjR2F+na74aMyK/RpuwVCFta23azamDJk23xcP2UMhkT4pCK5FcRDJV42BoNNqzTrkYOFDS6NVmlW5p/01wrsoiDyFiCkhLugdK9srDdec4WXY99R7Hf/1e2VLix2UeEd3F5N920a9S5ugBwRm0AVTCu5Us0pGO/ctfNhZharta3esqNV08DTuwOUtkX62/vwAjCRLR8aQyLRsPyl1nxpQAwDKFRtFjYCgFq6apxNTkJcxPUeeVykCLxqFOfgkY2eOM3Nu9YPNuvOmNg1pH4O+bv2V9vywWoV2CxwClcPDyUkj+Gqds+iU3f9Edf0zGFTTjd3v0O9r2733J3v0JlYdBsEVk8a48CdsNSW+XVJaYBOXHPCmdPHDGj6Jwi6WQPidT2SLMDZfK4Gh9BdDgWQhx4efJExA6cq7LasTCRVq9y2X0Tn8qdLi9ECIewncvA4NFicOiggqADxrKoO+/MB7clKrZyPohStdtEwzMRUy0XAMyCnwZ08RY6P5DLn0VlDvl7m+xKteI0K41MGtBcNucKpMvBHK2rx5WytG4ELIMUapsHEbxX3mOmQZnpNSGZCitElByphqu5UoQ5fQQzQPH9mkFJOneJ4qjbEHu459+nNQYq2wbH1+UFbieAliThL5BI0Ip5bvc+EHoEtr5vNNoBlTx/rp/M0nOdQPhdFF75GlQmtUNB0VUc96BrjDAeQVG3eld/FuyhdtglSe4iY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(39860400002)(396003)(136003)(366004)(36756003)(6486002)(8936002)(186003)(956004)(83380400001)(66476007)(8676002)(31696002)(86362001)(31686004)(53546011)(2906002)(26005)(450100002)(30864003)(66556008)(38100700002)(16576012)(316002)(66946007)(2616005)(5660300002)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3YzeHVmcEVORk1SaUwwQ0t3d3l2MUdOQWVudkhsYVJoNUJ4ZVVlNWVNVGNy?=
 =?utf-8?B?RUF5SUFjRkdMeFF6ZUJJMWVENCtDeVljckdieGw4TGhIZHA5cDB0UnI2a0FU?=
 =?utf-8?B?VUpDNkpqNHBwdUQ2K09hSVhPN0NiYjd1dW14R0MzZkY5UkxQMXp1c09WaXNX?=
 =?utf-8?B?UHFlSmhMNzNqc29BUmRaMlk5TWpuV2RrZkJGWWRXU05UQnBMTWNuTWZLOFVZ?=
 =?utf-8?B?czdWTGEwaUlwdHFzOHYvdjZ0NjNhTHA5cU16MFpuRkxMZmRKK3lSQ0pCMWlu?=
 =?utf-8?B?VldGUlVYR3pGYy83aHVVUkE1ZGpzemlBOWlBeFBXNk9PblpCNW5BZitzMm8z?=
 =?utf-8?B?UlhLeEdYSHZ3VUxDeXU1V201MXc5d1NWRnlYVzNCbm10M29LQ0RkNndOTFpu?=
 =?utf-8?B?VFQrR2cwTDZSdlBjalZ2UFZzTnpxOHQ4MStIbHdqZWZ6dUd2QjhzNjJBc240?=
 =?utf-8?B?bjk4ODM1ZGEybHhDUWZidFJtaitrUGlBMzY5MlRPdHk4bml2Vm5iM3c3d2pY?=
 =?utf-8?B?UmhJK3VWdjl0S3l6T3U1ejRvaElDQkNkb0V1d3lVYmFuSW9nY1RTckJRaWtm?=
 =?utf-8?B?dzBWa0Jpa2ZXSE9xdG4wVUQ5eWZnM3hTSG42MHRFWG5iSzBPZHJIK1lWKzJW?=
 =?utf-8?B?UHYyT2RXYUs4UEZpUkN6bkJtemE4N3liK1E4cDJubmhqOEhCQ0x0dnRuMFBn?=
 =?utf-8?B?b0VaWWsvUEJKK2UyRDJSM0xrd3JXRDEwaFFnZ1lITW1TVEFpUjJEdmFiZ1dK?=
 =?utf-8?B?dmU5UjZUOTcwd1FQMWR6M0ppZHNmd0U3Znd6Z2J3aG41cWlZdEFtaGZkVVBJ?=
 =?utf-8?B?RkNUTkdrbFp1YUcweERVeFBVWElpazBZcGVkVlI5MEdlaFZsK1FJNGxRc2Qy?=
 =?utf-8?B?b0JBR28zdGFSWTNwc1A2L3h6QXdHMmRsYjZHQXN2bFBENlYvTUtTTHM5UWlL?=
 =?utf-8?B?OEx5S1pmQS9rRVE3Z3A2TXhYcXZ1Q01ROGNncTF0ZmVVOG44cnQreGVKb0Fz?=
 =?utf-8?B?eXcwbEZveFdMZFRXbVY1ai9RcXdwclJ5NVRqTlRla040d2hPejdKcjBOMU9q?=
 =?utf-8?B?OSt1MURMa1c3bURXWVhLelVFUFBRUHRHQmJYRXgzRlpxVkRZL1pVRVdZUWN1?=
 =?utf-8?B?K3E3bGZLRmZlTEI1K2NqeFV6aGh4d0kzZHozOVB1MHJaWUlEVDFaelBjNDdT?=
 =?utf-8?B?eVNsV1VFa3lLbkZEaWtvMVdXUHVWNWlFQU9kSGV0SFI5MVI5eW03UGhwZkJx?=
 =?utf-8?B?WktDZHpDQmNmS29ac3l0YzlJTDVQditsR21qa0RoNmpJMGxIUGhwcmZXM002?=
 =?utf-8?B?L1IxSGdSTGZkMXBMeVZnM2o1YlZmbVZtZWw1SjAzSmVzQ3FSSTI3Uzd2RVdS?=
 =?utf-8?B?anhrd2ozZmlRLzRTdlJST2w2UkxGU1o0OHZ6M3lmc3k4aThJT3ptbWpBQnRt?=
 =?utf-8?B?dUxvNld3dUIrVThNeS9YVWdaMmQzaHU5Q3hubTZwRysrR1ZlcGZQNzlDVXow?=
 =?utf-8?B?N0h2djhXTTdrTUtSd3YrK1pwNHY4QXJVbW9sYTFLMEFKcHd4SEVqWi9pdUZi?=
 =?utf-8?B?Y0tJNDlOSFEwdUFyQUhXSlRjSmFMbjZrU0xkaUhLSHcraG9SMUNWMGtRcklo?=
 =?utf-8?B?M0ZHMTdhalFSUnhOSjcwUWxhNFN5ZlhyeWJNYWJLc251Z2wzeXJNV3FGWUlO?=
 =?utf-8?B?ODRScGgyTVVFSHc3L3E3azd5SFAxSXRRVmFaU2VwcE4xWWVGSCsyRFVpK2pK?=
 =?utf-8?Q?670dPgcl1jubGF/QKqOFpHFGEid8BxgNMYdoNDi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 860d61de-0993-43d8-f3fd-08d94e3d8a64
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2021 00:54:07.5103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V9i8jLEtGLSzfx8KX80ZB8oDGIA4rX8Jg+TkQ1uDpjfIOUZeFH0vGqCznLM4SfFNTJPy7kwCiz9UWmUhJdUC+Q7B/ux0NLnpw0s8IDMn+aU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2890
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 32/33] drm/i915/guc: Implement GuC priority
 management
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 7/22/2021 4:54 PM, Matthew Brost wrote:
> Implement a simple static mapping algorithm of the i915 priority levels
> (int, -1k to 1k exposed to user) to the 4 GuC levels. Mapping is as
> follows:
>
> i915 level < 0          -> GuC low level     (3)
> i915 level == 0         -> GuC normal level  (2)
> i915 level < INT_MAX    -> GuC high level    (1)
> i915 level == INT_MAX   -> GuC highest level (0)
>
> We believe this mapping should cover the UMD use cases (3 distinct user
> levels + 1 kernel level).
>
> In addition to static mapping, a simple counter system is attached to
> each context tracking the number of requests inflight on the context at
> each level. This is needed as the GuC levels are per context while in
> the i915 levels are per request.
>
> v2:
>   (Daniele)
>    - Add BUILD_BUG_ON to enforce ordering of priority levels
>    - Add missing lockdep to guc_prio_fini
>    - Check for return before setting context registered flag
>    - Map DISPLAY priority or higher to highest guc prio
>    - Update comment for guc_prio
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   |   3 +
>   drivers/gpu/drm/i915/gt/intel_context_types.h |   9 +-
>   drivers/gpu/drm/i915/gt/intel_engine_user.c   |   4 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 214 +++++++++++++++++-
>   drivers/gpu/drm/i915/i915_request.c           |   5 +
>   drivers/gpu/drm/i915/i915_request.h           |   9 +
>   drivers/gpu/drm/i915/i915_scheduler.c         |   7 +
>   drivers/gpu/drm/i915/i915_scheduler_types.h   |  12 +
>   drivers/gpu/drm/i915/i915_trace.h             |  17 +-
>   include/uapi/drm/i915_drm.h                   |   9 +
>   10 files changed, 283 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 2007dc6f6b99..209cf265bf74 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -245,6 +245,9 @@ static void signal_irq_work(struct irq_work *work)
>   			llist_entry(signal, typeof(*rq), signal_node);
>   		struct list_head cb_list;
>   
> +		if (rq->engine->sched_engine->retire_inflight_request_prio)
> +			rq->engine->sched_engine->retire_inflight_request_prio(rq);
> +
>   		spin_lock(&rq->lock);
>   		list_replace(&rq->fence.cb_list, &cb_list);
>   		__dma_fence_signal__timestamp(&rq->fence, timestamp);
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 005a64f2afa7..fe555551c2d2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -18,8 +18,9 @@
>   #include "intel_engine_types.h"
>   #include "intel_sseu.h"
>   
> -#define CONTEXT_REDZONE POISON_INUSE
> +#include "uc/intel_guc_fwif.h"
>   
> +#define CONTEXT_REDZONE POISON_INUSE
>   DECLARE_EWMA(runtime, 3, 8);
>   
>   struct i915_gem_context;
> @@ -191,6 +192,12 @@ struct intel_context {
>   
>   	/* GuC context blocked fence */
>   	struct i915_sw_fence guc_blocked;
> +
> +	/*
> +	 * GuC priority management
> +	 */
> +	u8 guc_prio;
> +	u32 guc_prio_count[GUC_CLIENT_PRIORITY_NUM];
>   };
>   
>   #endif /* __INTEL_CONTEXT_TYPES__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index 84142127ebd8..8f8bea08e734 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -11,6 +11,7 @@
>   #include "intel_engine.h"
>   #include "intel_engine_user.h"
>   #include "intel_gt.h"
> +#include "uc/intel_guc_submission.h"
>   
>   struct intel_engine_cs *
>   intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, u8 instance)
> @@ -115,6 +116,9 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
>   			disabled |= (I915_SCHEDULER_CAP_ENABLED |
>   				     I915_SCHEDULER_CAP_PRIORITY);
>   
> +		if (intel_uc_uses_guc_submission(&i915->gt.uc))
> +			enabled |= I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP;
> +
>   		for (i = 0; i < ARRAY_SIZE(map); i++) {
>   			if (engine->flags & BIT(map[i].engine))
>   				enabled |= BIT(map[i].sched);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 58506d2781e8..a323befb9753 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -81,7 +81,8 @@ guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count);
>    */
>   #define SCHED_STATE_NO_LOCK_ENABLED			BIT(0)
>   #define SCHED_STATE_NO_LOCK_PENDING_ENABLE		BIT(1)
> -#define SCHED_STATE_NO_LOCK_BLOCKED_SHIFT		2
> +#define SCHED_STATE_NO_LOCK_REGISTERED			BIT(2)
> +#define SCHED_STATE_NO_LOCK_BLOCKED_SHIFT		3
>   #define SCHED_STATE_NO_LOCK_BLOCKED \
>   	BIT(SCHED_STATE_NO_LOCK_BLOCKED_SHIFT)
>   #define SCHED_STATE_NO_LOCK_BLOCKED_MASK \
> @@ -145,6 +146,24 @@ static inline void decr_context_blocked(struct intel_context *ce)
>   		   &ce->guc_sched_state_no_lock);
>   }
>   
> +static inline bool context_registered(struct intel_context *ce)
> +{
> +	return (atomic_read(&ce->guc_sched_state_no_lock) &
> +		SCHED_STATE_NO_LOCK_REGISTERED);
> +}
> +
> +static inline void set_context_registered(struct intel_context *ce)
> +{
> +	atomic_or(SCHED_STATE_NO_LOCK_REGISTERED,
> +		  &ce->guc_sched_state_no_lock);
> +}
> +
> +static inline void clr_context_registered(struct intel_context *ce)
> +{
> +	atomic_and((u32)~SCHED_STATE_NO_LOCK_REGISTERED,
> +		   &ce->guc_sched_state_no_lock);
> +}
> +
>   /*
>    * Below is a set of functions which control the GuC scheduling state which
>    * require a lock, aside from the special case where the functions are called
> @@ -1092,6 +1111,7 @@ static int steal_guc_id(struct intel_guc *guc)
>   
>   		list_del_init(&ce->guc_id_link);
>   		guc_id = ce->guc_id;
> +		clr_context_registered(ce);
>   		set_context_guc_id_invalid(ce);
>   		return guc_id;
>   	} else {
> @@ -1201,10 +1221,15 @@ static int register_context(struct intel_context *ce, bool loop)
>   	struct intel_guc *guc = ce_to_guc(ce);
>   	u32 offset = intel_guc_ggtt_offset(guc, guc->lrc_desc_pool) +
>   		ce->guc_id * sizeof(struct guc_lrc_desc);
> +	int ret;
>   
>   	trace_intel_context_register(ce);
>   
> -	return __guc_action_register_context(guc, ce->guc_id, offset, loop);
> +	ret = __guc_action_register_context(guc, ce->guc_id, offset, loop);
> +	if (likely(!ret))
> +		set_context_registered(ce);
> +
> +	return ret;
>   }
>   
>   static int __guc_action_deregister_context(struct intel_guc *guc,
> @@ -1260,6 +1285,8 @@ static void guc_context_policy_init(struct intel_engine_cs *engine,
>   	desc->preemption_timeout = engine->props.preempt_timeout_ms * 1000;
>   }
>   
> +static inline u8 map_i915_prio_to_guc_prio(int prio);
> +
>   static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
>   {
>   	struct intel_engine_cs *engine = ce->engine;
> @@ -1267,6 +1294,8 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
>   	struct intel_guc *guc = &engine->gt->uc.guc;
>   	u32 desc_idx = ce->guc_id;
>   	struct guc_lrc_desc *desc;
> +	const struct i915_gem_context *ctx;
> +	int prio = I915_CONTEXT_DEFAULT_PRIORITY;
>   	bool context_registered;
>   	intel_wakeref_t wakeref;
>   	int ret = 0;
> @@ -1282,6 +1311,12 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
>   
>   	context_registered = lrc_desc_registered(guc, desc_idx);
>   
> +	rcu_read_lock();
> +	ctx = rcu_dereference(ce->gem_context);
> +	if (ctx)
> +		prio = ctx->sched.priority;
> +	rcu_read_unlock();
> +
>   	reset_lrc_desc(guc, desc_idx);
>   	set_lrc_desc_registered(guc, desc_idx, ce);
>   
> @@ -1290,7 +1325,8 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
>   	desc->engine_submit_mask = adjust_engine_mask(engine->class,
>   						      engine->mask);
>   	desc->hw_context_desc = ce->lrc.lrca;
> -	desc->priority = GUC_CLIENT_PRIORITY_KMD_NORMAL;
> +	ce->guc_prio = map_i915_prio_to_guc_prio(prio);
> +	desc->priority = ce->guc_prio;
>   	desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
>   	guc_context_policy_init(engine, desc);
>   	init_sched_state(ce);
> @@ -1679,11 +1715,17 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
>   	GEM_BUG_ON(ce != __get_context(guc, ce->guc_id));
>   	GEM_BUG_ON(context_enabled(ce));
>   
> +	clr_context_registered(ce);
>   	deregister_context(ce, ce->guc_id, true);
>   }
>   
>   static void __guc_context_destroy(struct intel_context *ce)
>   {
> +	GEM_BUG_ON(ce->guc_prio_count[GUC_CLIENT_PRIORITY_KMD_HIGH] ||
> +		   ce->guc_prio_count[GUC_CLIENT_PRIORITY_HIGH] ||
> +		   ce->guc_prio_count[GUC_CLIENT_PRIORITY_KMD_NORMAL] ||
> +		   ce->guc_prio_count[GUC_CLIENT_PRIORITY_NORMAL]);
> +
>   	lrc_fini(ce);
>   	intel_context_fini(ce);
>   
> @@ -1777,15 +1819,124 @@ static int guc_context_alloc(struct intel_context *ce)
>   	return lrc_alloc(ce, ce->engine);
>   }
>   
> +static void guc_context_set_prio(struct intel_guc *guc,
> +				 struct intel_context *ce,
> +				 u8 prio)
> +{
> +	u32 action[] = {
> +		INTEL_GUC_ACTION_SET_CONTEXT_PRIORITY,
> +		ce->guc_id,
> +		prio,
> +	};
> +
> +	GEM_BUG_ON(prio < GUC_CLIENT_PRIORITY_KMD_HIGH ||
> +		   prio > GUC_CLIENT_PRIORITY_NORMAL);
> +
> +	if (ce->guc_prio == prio || submission_disabled(guc) ||
> +	    !context_registered(ce))
> +		return;
> +
> +	guc_submission_send_busy_loop(guc, action, ARRAY_SIZE(action), 0, true);
> +
> +	ce->guc_prio = prio;
> +	trace_intel_context_set_prio(ce);
> +}
> +
> +static inline u8 map_i915_prio_to_guc_prio(int prio)
> +{
> +	if (prio == I915_PRIORITY_NORMAL)
> +		return GUC_CLIENT_PRIORITY_KMD_NORMAL;
> +	else if (prio < I915_PRIORITY_NORMAL)
> +		return GUC_CLIENT_PRIORITY_NORMAL;
> +	else if (prio < I915_PRIORITY_DISPLAY)
> +		return GUC_CLIENT_PRIORITY_HIGH;
> +	else
> +		return GUC_CLIENT_PRIORITY_KMD_HIGH;
> +}
> +
> +static inline void add_context_inflight_prio(struct intel_context *ce,
> +					     u8 guc_prio)
> +{
> +	lockdep_assert_held(&ce->guc_active.lock);
> +	GEM_BUG_ON(guc_prio >= ARRAY_SIZE(ce->guc_prio_count));
> +
> +	++ce->guc_prio_count[guc_prio];
> +
> +	/* Overflow protection */
> +	GEM_WARN_ON(!ce->guc_prio_count[guc_prio]);
> +}
> +
> +static inline void sub_context_inflight_prio(struct intel_context *ce,
> +					     u8 guc_prio)
> +{
> +	lockdep_assert_held(&ce->guc_active.lock);
> +	GEM_BUG_ON(guc_prio >= ARRAY_SIZE(ce->guc_prio_count));
> +
> +	/* Underflow protection */
> +	GEM_WARN_ON(!ce->guc_prio_count[guc_prio]);
> +
> +	--ce->guc_prio_count[guc_prio];
> +}
> +
> +static inline void update_context_prio(struct intel_context *ce)
> +{
> +	struct intel_guc *guc = &ce->engine->gt->uc.guc;
> +	int i;
> +
> +	BUILD_BUG_ON(GUC_CLIENT_PRIORITY_KMD_HIGH != 0);
> +	BUILD_BUG_ON(GUC_CLIENT_PRIORITY_KMD_HIGH > GUC_CLIENT_PRIORITY_NORMAL);
> +
> +	lockdep_assert_held(&ce->guc_active.lock);
> +
> +	for (i = 0; i < ARRAY_SIZE(ce->guc_prio_count); ++i) {
> +		if (ce->guc_prio_count[i]) {
> +			guc_context_set_prio(guc, ce, i);
> +			break;
> +		}
> +	}
> +}
> +
> +static inline bool new_guc_prio_higher(u8 old_guc_prio, u8 new_guc_prio)
> +{
> +	/* Lower value is higher priority */
> +	return new_guc_prio < old_guc_prio;
> +}
> +
>   static void add_to_context(struct i915_request *rq)
>   {
>   	struct intel_context *ce = rq->context;
> +	u8 new_guc_prio = map_i915_prio_to_guc_prio(rq_prio(rq));
> +
> +	GEM_BUG_ON(rq->guc_prio == GUC_PRIO_FINI);
>   
>   	spin_lock(&ce->guc_active.lock);
>   	list_move_tail(&rq->sched.link, &ce->guc_active.requests);
> +
> +	if (rq->guc_prio == GUC_PRIO_INIT) {
> +		rq->guc_prio = new_guc_prio;
> +		add_context_inflight_prio(ce, rq->guc_prio);
> +	} else if (new_guc_prio_higher(rq->guc_prio, new_guc_prio)) {
> +		sub_context_inflight_prio(ce, rq->guc_prio);
> +		rq->guc_prio = new_guc_prio;
> +		add_context_inflight_prio(ce, rq->guc_prio);
> +	}
> +	update_context_prio(ce);
> +
>   	spin_unlock(&ce->guc_active.lock);
>   }
>   
> +static void guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_active.lock);
> +
> +	if (rq->guc_prio != GUC_PRIO_INIT &&
> +	    rq->guc_prio != GUC_PRIO_FINI) {
> +		sub_context_inflight_prio(ce, rq->guc_prio);
> +		update_context_prio(ce);
> +	}
> +	rq->guc_prio = GUC_PRIO_FINI;
> +}
> +
>   static void remove_from_context(struct i915_request *rq)
>   {
>   	struct intel_context *ce = rq->context;
> @@ -1798,6 +1949,8 @@ static void remove_from_context(struct i915_request *rq)
>   	/* Prevent further __await_execution() registering a cb, then flush */
>   	set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
>   
> +	guc_prio_fini(rq, ce);
> +
>   	spin_unlock_irq(&ce->guc_active.lock);
>   
>   	atomic_dec(&ce->guc_id_ref);
> @@ -2079,6 +2232,39 @@ static void guc_init_breadcrumbs(struct intel_engine_cs *engine)
>   	}
>   }
>   
> +static void guc_bump_inflight_request_prio(struct i915_request *rq,
> +					   int prio)
> +{
> +	struct intel_context *ce = rq->context;
> +	u8 new_guc_prio = map_i915_prio_to_guc_prio(prio);
> +
> +	/* Short circuit function */
> +	if (prio < I915_PRIORITY_NORMAL ||
> +	    (rq->guc_prio == GUC_PRIO_FINI) ||
> +	    (rq->guc_prio != GUC_PRIO_INIT &&
> +	     !new_guc_prio_higher(rq->guc_prio, new_guc_prio)))
> +		return;
> +
> +	spin_lock(&ce->guc_active.lock);
> +	if (rq->guc_prio != GUC_PRIO_FINI) {
> +		if (rq->guc_prio != GUC_PRIO_INIT)
> +			sub_context_inflight_prio(ce, rq->guc_prio);
> +		rq->guc_prio = new_guc_prio;
> +		add_context_inflight_prio(ce, rq->guc_prio);
> +		update_context_prio(ce);
> +	}
> +	spin_unlock(&ce->guc_active.lock);
> +}
> +
> +static void guc_retire_inflight_request_prio(struct i915_request *rq)
> +{
> +	struct intel_context *ce = rq->context;
> +
> +	spin_lock(&ce->guc_active.lock);
> +	guc_prio_fini(rq, ce);
> +	spin_unlock(&ce->guc_active.lock);
> +}
> +
>   static void sanitize_hwsp(struct intel_engine_cs *engine)
>   {
>   	struct intel_timeline *tl;
> @@ -2303,6 +2489,10 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
>   		guc->sched_engine->disabled = guc_sched_engine_disabled;
>   		guc->sched_engine->private_data = guc;
>   		guc->sched_engine->destroy = guc_sched_engine_destroy;
> +		guc->sched_engine->bump_inflight_request_prio =
> +			guc_bump_inflight_request_prio;
> +		guc->sched_engine->retire_inflight_request_prio =
> +			guc_retire_inflight_request_prio;
>   		tasklet_setup(&guc->sched_engine->tasklet,
>   			      guc_submission_tasklet);
>   	}
> @@ -2680,6 +2870,22 @@ void intel_guc_submission_print_info(struct intel_guc *guc,
>   	drm_printf(p, "\n");
>   }
>   
> +static inline void guc_log_context_priority(struct drm_printer *p,
> +					    struct intel_context *ce)
> +{
> +	int i;
> +
> +	drm_printf(p, "\t\tPriority: %d\n",
> +		   ce->guc_prio);
> +	drm_printf(p, "\t\tNumber Requests (lower index == higher priority)\n");
> +	for (i = GUC_CLIENT_PRIORITY_KMD_HIGH;
> +	     i < GUC_CLIENT_PRIORITY_NUM; ++i) {
> +		drm_printf(p, "\t\tNumber requests in priority band[%d]: %d\n",
> +			   i, ce->guc_prio_count[i]);
> +	}
> +	drm_printf(p, "\n");
> +}
> +
>   void intel_guc_submission_print_context_info(struct intel_guc *guc,
>   					     struct drm_printer *p)
>   {
> @@ -2702,6 +2908,8 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
>   		drm_printf(p, "\t\tSchedule State: 0x%x, 0x%x\n\n",
>   			   ce->guc_state.sched_state,
>   			   atomic_read(&ce->guc_sched_state_no_lock));
> +
> +		guc_log_context_priority(p, ce);
>   	}
>   }
>   
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 541a20371502..1f1d4a6a0eff 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -114,6 +114,9 @@ static void i915_fence_release(struct dma_fence *fence)
>   {
>   	struct i915_request *rq = to_request(fence);
>   
> +	GEM_BUG_ON(rq->guc_prio != GUC_PRIO_INIT &&
> +		   rq->guc_prio != GUC_PRIO_FINI);
> +
>   	/*
>   	 * The request is put onto a RCU freelist (i.e. the address
>   	 * is immediately reused), mark the fences as being freed now.
> @@ -924,6 +927,8 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
>   
>   	rq->rcustate = get_state_synchronize_rcu(); /* acts as smp_mb() */
>   
> +	rq->guc_prio = GUC_PRIO_INIT;
> +
>   	/* We bump the ref for the fence chain */
>   	i915_sw_fence_reinit(&i915_request_get(rq)->submit);
>   	i915_sw_fence_reinit(&i915_request_get(rq)->semaphore);
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index ac0e3326c067..e6a0e0ebc9aa 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -293,6 +293,15 @@ struct i915_request {
>   	 */
>   	struct list_head guc_fence_link;
>   
> +	/**
> +	 * Priority level while the request is inflight. Differs from i915
> +	 * scheduler priority. See comment above
> +	 * I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP for details.
> +	 */
> +#define	GUC_PRIO_INIT	0xff
> +#define	GUC_PRIO_FINI	0xfe
> +	u8 guc_prio;
> +
>   	I915_SELFTEST_DECLARE(struct {
>   		struct list_head link;
>   		unsigned long delay;
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 28dd887eb1be..17843c204356 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -241,6 +241,9 @@ static void __i915_schedule(struct i915_sched_node *node,
>   	/* Fifo and depth-first replacement ensure our deps execute before us */
>   	sched_engine = lock_sched_engine(node, sched_engine, &cache);
>   	list_for_each_entry_safe_reverse(dep, p, &dfs, dfs_link) {
> +		struct i915_request *from = container_of(dep->signaler,
> +							 struct i915_request,
> +							 sched);
>   		INIT_LIST_HEAD(&dep->dfs_link);
>   
>   		node = dep->signaler;
> @@ -254,6 +257,10 @@ static void __i915_schedule(struct i915_sched_node *node,
>   		GEM_BUG_ON(node_to_request(node)->engine->sched_engine !=
>   			   sched_engine);
>   
> +		/* Must be called before changing the nodes priority */
> +		if (sched_engine->bump_inflight_request_prio)
> +			sched_engine->bump_inflight_request_prio(from, prio);
> +
>   		WRITE_ONCE(node->attr.priority, prio);
>   
>   		/*
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index eaef233e9080..b0a1b58c7893 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -179,6 +179,18 @@ struct i915_sched_engine {
>   	void	(*kick_backend)(const struct i915_request *rq,
>   				int prio);
>   
> +	/**
> +	 * @bump_inflight_request_prio: update priority of an inflight request
> +	 */
> +	void	(*bump_inflight_request_prio)(struct i915_request *rq,
> +					      int prio);
> +
> +	/**
> +	 * @retire_inflight_request_prio: indicate request is retired to
> +	 * priority tracking
> +	 */
> +	void	(*retire_inflight_request_prio)(struct i915_request *rq);
> +
>   	/**
>   	 * @schedule: adjust priority of request
>   	 *
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
> index 9613a7c19661..806ad688274b 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -904,6 +904,7 @@ DECLARE_EVENT_CLASS(intel_context,
>   			     __field(int, pin_count)
>   			     __field(u32, sched_state)
>   			     __field(u32, guc_sched_state_no_lock)
> +			     __field(u8, guc_prio)
>   			     ),
>   
>   		    TP_fast_assign(
> @@ -912,12 +913,19 @@ DECLARE_EVENT_CLASS(intel_context,
>   			   __entry->sched_state = ce->guc_state.sched_state;
>   			   __entry->guc_sched_state_no_lock =
>   			   atomic_read(&ce->guc_sched_state_no_lock);
> +			   __entry->guc_prio = ce->guc_prio;
>   			   ),
>   
> -		    TP_printk("guc_id=%d, pin_count=%d sched_state=0x%x,0x%x",
> +		    TP_printk("guc_id=%d, pin_count=%d sched_state=0x%x,0x%x, guc_prio=%u",
>   			      __entry->guc_id, __entry->pin_count,
>   			      __entry->sched_state,
> -			      __entry->guc_sched_state_no_lock)
> +			      __entry->guc_sched_state_no_lock,
> +			      __entry->guc_prio)
> +);
> +
> +DEFINE_EVENT(intel_context, intel_context_set_prio,
> +	     TP_PROTO(struct intel_context *ce),
> +	     TP_ARGS(ce)
>   );
>   
>   DEFINE_EVENT(intel_context, intel_context_reset,
> @@ -1017,6 +1025,11 @@ trace_i915_request_out(struct i915_request *rq)
>   {
>   }
>   
> +static inline void
> +trace_intel_context_set_prio(struct intel_context *ce)
> +{
> +}
> +
>   static inline void
>   trace_intel_context_reset(struct intel_context *ce)
>   {
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 0aea82657cdc..7d9819dc49c8 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -572,6 +572,15 @@ typedef struct drm_i915_irq_wait {
>   #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
>   #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
>   #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
> +/*
> + * Indicates the 2k user priority levels are statically mapped into 3 buckets as
> + * follows:
> + *
> + * -1k to -1	Low priority
> + * 0		Normal priority
> + * 1 to 1k	Highest priority
> + */
> +#define   I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP	(1ul << 5)
>   
>   #define I915_PARAM_HUC_STATUS		 42
>   

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
