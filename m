Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 782173D068A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 03:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E6D6E5D4;
	Wed, 21 Jul 2021 01:51:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03006E51A;
 Wed, 21 Jul 2021 01:51:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="272470937"
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="272470937"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 18:51:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="632502342"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 20 Jul 2021 18:51:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 20 Jul 2021 18:51:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 20 Jul 2021 18:51:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 20 Jul 2021 18:51:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDFzaVaGUA5XGH/F6RnrEYOAy7iR9Xif5+uUvmLq7gFPm/ox4jcxJ31NjdZbfdLCCUzBoApxFHLJmyiIVStINGSOybfF5VOA9UQRxO+M9GcvAldkfx1HqtbG7rZbTTao2icx7jMdZAfkGiZ330cirJ1krXZtDepfWdf0xlhcmteqaGydWUJucpjn5xOAHWFVZU3v1sRmT3I8nc3/D14ha8n384avhJagMtQSd0caYoJL6W1q76tEKY+o4EQYdqmTdfnFyVriUbUyW3APBP2v3tZJsWcwMDmd+UF5FfP/cuCNQabIN1xyTevCP9Zg5yII6eZJ8kg8RIGWhSMjD86U8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QJA/RVCyqEGrbEPDzyUh8lVUhcF2FPJvf/1FbfsZXLk=;
 b=aL28FX4sL/Od9NDjXLgmymfhco6UGG1P7cYDouSwJpZGhSblSLK3pCIbz+NCxJuGAtc9bDolC2J9gnl+jpn37R7O+XDHLT/bhTO7l3U90esOmy1WIKBlAdkeeCUZ5TK8fjPFG8JpgDSXmCUwE4twvtlrjhWmMyQkC30v93wZ4ZIEGJTry8gxrffs2PXXPQDJ+13x/HraraGe0q0CCHr/Ayyv8qNzfQ+CW32URCRd5Ym9CyZgunLXsoNvdzpELuZAAhq8+E+f9nl79fOTVVENQ9q5Y8mVElyqiUGDwLBBG+ghdkFchM+4+g+OJ3esjZLheJN5OnxWt7eClCzj66B2PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QJA/RVCyqEGrbEPDzyUh8lVUhcF2FPJvf/1FbfsZXLk=;
 b=veQU88J4SwMdHs+uO9fOBIALmdNscN4it/9p/IUuZsIcR6NLaFxMru+WuQL+p3WiE5NWXdUw24K+3P7yMnfjGGY17CxRg+7SH+fradD4LIURZBlbarR1VG+mAQrIZz7Y+6Bn6Gfk7Ce2b8Iuu+msm4BgkDN9J7FXetPiuJd78MY=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5596.namprd11.prod.outlook.com (2603:10b6:510:eb::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.24; Wed, 21 Jul
 2021 01:51:16 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::c5a8:5a64:9118:95c4]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::c5a8:5a64:9118:95c4%8]) with mapi id 15.20.4331.034; Wed, 21 Jul 2021
 01:51:16 +0000
To: Matthew Brost <matthew.brost@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20210720223921.56160-1-matthew.brost@intel.com>
 <20210720223921.56160-7-matthew.brost@intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <a3eeebf6-3ead-10b3-19ac-8a27b06dc0ba@intel.com>
Date: Tue, 20 Jul 2021 18:51:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <20210720223921.56160-7-matthew.brost@intel.com>
Content-Language: en-GB
X-ClientProxiedBy: MWHPR21CA0032.namprd21.prod.outlook.com
 (2603:10b6:300:129::18) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.221] (73.157.192.58) by
 MWHPR21CA0032.namprd21.prod.outlook.com (2603:10b6:300:129::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.1 via Frontend
 Transport; Wed, 21 Jul 2021 01:51:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab62509b-9e6f-4ff6-608e-08d94bea0722
X-MS-TrafficTypeDiagnostic: PH0PR11MB5596:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB5596502EF338FD594F9FFEBEBDE39@PH0PR11MB5596.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3HyDlfBwxwX61zEWMSKT4QyegQuSjrzIaR+HbMC4UtqebS8maGx4jeiTFykoz5Q2GUvWT85n23Lf88KRP8fzTfVBQZOsZ7dXULflUxRnrJaVa1XXEfTVnue/Wm8XFUyaOEayCVen4P8GvXaqov7dhsFV7mNHLh392WkB+3kk+Jg34y7kExMwadulgH9xipQYZfaUJgEGj5KmLxAuEKfbmOkgSj7KnxUkn4NOzYx6VayT/kirhPuG9zp6FXxcFBqPpqgQbeCJgJYNGk+3MkEPHvM5E3eH5HR8gFp5YvZfdGbPuGDJNy+uTcvf/Xmc3P8eCQwt+Q+K27BONgp4iKxRuBRlWa+UAP/T7LH1AzgZJu3U4IMzOTJ7R205johBqzj53JP5AV+nDRwgdgVgxtYy5CA2PiId90w8GuJRVcNrdAJSqS12q6T6fHxPDkDyKL0bmKzomG5RYXrQ2w3QrZfaR31g4PPm6OSJBJZ72/V02lm9gkZqa9W0a7y0c/GQISj8Qvff5V0G+jc+wq/NgxuW6Gbm73o5M0V6Ucla3KfYEZT6Dg3RiHGJo5XvVPsjaWHfaTgS3BU0uQlavhgQCWCPLaBR9r/6xg/SYRynWetq88MiF/Ul3W77tuL+Uv6w3zToIkVXi9J2qUv8VY4rJuDRFNcU8ZE9U9ViJemwgdhcedL+C55rCzHTX5fCiIYGQyPPN0JB1e3e+R8hej5BcnuavB5du1/QHucNvN0HJaCrFWrAZmIvS3gn5fd3Vo85r+sv1BrzYZsSsc54Vj0lPKeec8kDLH8gggbhwYVR5Ue0vXY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4326008)(5660300002)(956004)(16576012)(86362001)(31696002)(316002)(508600001)(30864003)(6486002)(38100700002)(36756003)(2616005)(66556008)(450100002)(53546011)(107886003)(66476007)(186003)(83380400001)(31686004)(8936002)(26005)(2906002)(66946007)(8676002)(21314003)(43740500002)(45980500001)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NE5sVTQrcHlzVjE0MlJpU2lodVRUSHVkQlB3OG9PUWoxYmdPN0FYc0liZUlU?=
 =?utf-8?B?MCtjUmRLZWYrRWxSVVJybUV4Tmk4RFNJQWVUMFU2NjZraHhmZUtlbGw4N3Jq?=
 =?utf-8?B?c3lxOUJJN25JamhVeDNqVTl5dWtSaTF0SUV1bjI1ckxMN2srclF3dlVOeGlH?=
 =?utf-8?B?a3hFMjBmY2NRbFI5RFNSUHhZK1pnMXhoQS8vc2J5YzFMWVNpR29QZVhBc2Zz?=
 =?utf-8?B?bTk1RWhjR0ViTU1BQkN1dHI2TnRjeE5pTmxnaVpLSU5pbHhsaW0yVlFkYVh4?=
 =?utf-8?B?NXhwcVBJMlJhWjhsT3BUQUR5aTZhSlVwa1NCSUlMTFlxWVV5ckI5M2dBYTJa?=
 =?utf-8?B?RDhZaTFlQmg2ZmZOUVpjZGs1RnVTNG5pV2ZyMkNkWW0vTENOOEUzWHplcTZq?=
 =?utf-8?B?R0lKazJzZHB0ZXBZUWg0OWw2Mk9iaU9wL1hHT2loVEFVRmc2c05wMWoyWGRn?=
 =?utf-8?B?Z1l0ZFI4NnZmU0V4bXNkUlhTaVhocVZuVEkxVE9EMnF0Q2xna0MxZThQUXpH?=
 =?utf-8?B?L3FRakg2NjAxdUFXV0tHdDUrY0I1a0RsZlA2ekJ6V1htQmFGbktYd3c4Wm51?=
 =?utf-8?B?eHc1aEx4MmllMWpMOWE3bDBaU0tFWkNDYzNuRitFN0ZvcUZiOFlGcTJyUUly?=
 =?utf-8?B?NWJ5RWdNeGdTOHZaNFZTcUttUUduOFp2YjhsS1RkcXgyRGlsSU84akNEY0or?=
 =?utf-8?B?RUhzamg5RWRWaFNXVFQ4dDAxU0pDVGNzMnFjK0xSZmkyYzVqeUtjekh5RzNk?=
 =?utf-8?B?KytNUERNdjQ5Sk1pSTFmQ05RaDUxMVVwM1duKzlDWlVQZ0UrcDAwTGplV1Vj?=
 =?utf-8?B?WVpxZ0hBK3dFbktYTFhGNmY0OHgxYktKU3dXMTJUZVhFck9wZ3k5VEk4THVn?=
 =?utf-8?B?emthcUVNQXNBOHdtLy9namZLSHRMNVNhdS8vVnQ0aTRzdDQ3NUVKMmgzbzdm?=
 =?utf-8?B?c1lTNnozUjJXak5tNW85TVdyeGNzOXl6TnArai9LMnlkTmdScndyRE1mV0Zw?=
 =?utf-8?B?UW9acXp6WmwrcEphdjIxTGNjbC9LN3hDRGJ1aEVzeUNaRmVrK0p1ZHNsczll?=
 =?utf-8?B?T3NkWXI1R3hYcHNhM1VtY0Z5UTgyMFVmWS9yL3luNVVWWkE0YWJjbmh4bDlo?=
 =?utf-8?B?RHlscE5BVHVVRktPSHFJN3dsR3NqSUF4d2E0VmE1bk9ISVU3S1hxbmZMNFVI?=
 =?utf-8?B?SEFKMVhVSnlkL0wySWJESnFOeDNHOVloMWF2TFNiK2UvWk5yaTh2WVJUL2g4?=
 =?utf-8?B?bGZPTUZ3VXdlNUdYOW5xQ2oxWWdCMXhvQTAwdEo4UWVRY3VVMFVmeWZZRGxr?=
 =?utf-8?B?N044UGlQdWVCTzZheUJOYk1WUlVsV3hSL0lrK1JMRVFzRnhuTy93SGhhR2Rr?=
 =?utf-8?B?SURoMC9ld05lUmZHd2R6UTBOV2RBMzFOMmgvNkZOWWE4aVVtYkZEdEIwMVNy?=
 =?utf-8?B?QjdTVnlpY1pRcWs2SS9DY3E5bEt2V0V2VUZmYlhxZWpnb0hrdWVhUUtzT0Zj?=
 =?utf-8?B?c0pJaFhkeHJRcEhWRXhkUzIwQ3BTdTFGeDZvTC9NeS9Bb3VTWE1WQ0M0dnZ6?=
 =?utf-8?B?eW5UZ21MTDRDSkxpZGxiS1NPdXVzTDAxYjR2L1R0NXhIL2FmT2w5TUV1N1JS?=
 =?utf-8?B?dTBmS2pOZEI3YmFNS0ZRV0k4TjFSZFI2MkhrMUtBU05zSjYxekhOeVlkS2RT?=
 =?utf-8?B?QVBVcHpoSHZCVzZ4NnlTclRuazZCRUZaWkt1MmI1eUFVazkxdUtCcXlhZEgw?=
 =?utf-8?Q?UF4uuD5eP2ulskwmw5Bfa0PAD7FIHWbErN7dNRA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab62509b-9e6f-4ff6-608e-08d94bea0722
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2021 01:51:16.5362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xdu0saRZ4nWjj91xmEUsauTKo211YKLWAO8iPY2Fe2Rp3D+CuCBr/T2bqO3sNr9LeKtTHLiIKnBLjEE/hv6R+w8XLqWzFww3O1ojHZJ4SaI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5596
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/18] drm/i915/guc: Implement GuC context
 operations for new inteface
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

On 7/20/2021 15:39, Matthew Brost wrote:
> Implement GuC context operations which includes GuC specific operations
> alloc, pin, unpin, and destroy.
>
> v2:
>   (Daniel Vetter)
>    - Use msleep_interruptible rather than cond_resched in busy loop
>   (Michal)
>    - Remove C++ style comment
> v3:
>   (Matthew Brost)
>    - Drop GUC_ID_START
>   (John Harrison)
>    - Fix a bunch of typos
>    - Use drm_err rather than drm_dbg for G2H errors
>   (Daniele)
>    - Fix ;; typo
>    - Clean up sched state functions
>    - Add lockdep for guc_id functions
>    - Don't call __release_guc_id when guc_id is invalid
>    - Use MISSING_CASE
>    - Add comment in guc_context_pin
>    - Use shorter path to rpm
>   (Daniele / CI)
>    - Don't call release_guc_id on an invalid guc_id in destroy
>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c       |   5 +
>   drivers/gpu/drm/i915/gt/intel_context_types.h |  22 +-
>   drivers/gpu/drm/i915/gt/intel_lrc_reg.h       |   1 -
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  40 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 667 ++++++++++++++++--
>   drivers/gpu/drm/i915/i915_reg.h               |   1 +
>   drivers/gpu/drm/i915/i915_request.c           |   1 +
>   8 files changed, 686 insertions(+), 55 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index bd63813c8a80..32fd6647154b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -384,6 +384,11 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
>   
>   	mutex_init(&ce->pin_mutex);
>   
> +	spin_lock_init(&ce->guc_state.lock);
> +
> +	ce->guc_id = GUC_INVALID_LRC_ID;
> +	INIT_LIST_HEAD(&ce->guc_id_link);
> +
>   	i915_active_init(&ce->active,
>   			 __intel_context_active, __intel_context_retire, 0);
>   }
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 6d99631d19b9..606c480aec26 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -96,6 +96,7 @@ struct intel_context {
>   #define CONTEXT_BANNED			6
>   #define CONTEXT_FORCE_SINGLE_SUBMISSION	7
>   #define CONTEXT_NOPREEMPT		8
> +#define CONTEXT_LRCA_DIRTY		9
>   
>   	struct {
>   		u64 timeout_us;
> @@ -138,14 +139,29 @@ struct intel_context {
>   
>   	u8 wa_bb_page; /* if set, page num reserved for context workarounds */
>   
> +	struct {
> +		/** lock: protects everything in guc_state */
> +		spinlock_t lock;
> +		/**
> +		 * sched_state: scheduling state of this context using GuC
> +		 * submission
> +		 */
> +		u8 sched_state;
> +	} guc_state;
> +
>   	/* GuC scheduling state flags that do not require a lock. */
>   	atomic_t guc_sched_state_no_lock;
>   
> +	/* GuC LRC descriptor ID */
> +	u16 guc_id;
> +
> +	/* GuC LRC descriptor reference count */
> +	atomic_t guc_id_ref;
> +
>   	/*
> -	 * GuC LRC descriptor ID - Not assigned in this patch but future patches
> -	 * in the series will.
> +	 * GuC ID link - in list when unpinned but guc_id still valid in GuC
>   	 */
> -	u16 guc_id;
> +	struct list_head guc_id_link;
>   };
>   
>   #endif /* __INTEL_CONTEXT_TYPES__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> index 41e5350a7a05..49d4857ad9b7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> @@ -87,7 +87,6 @@
>   #define GEN11_CSB_WRITE_PTR_MASK	(GEN11_CSB_PTR_MASK << 0)
>   
>   #define MAX_CONTEXT_HW_ID	(1 << 21) /* exclusive */
> -#define MAX_GUC_CONTEXT_HW_ID	(1 << 20) /* exclusive */
>   #define GEN11_MAX_CONTEXT_HW_ID	(1 << 11) /* exclusive */
>   /* in Gen12 ID 0x7FF is reserved to indicate idle */
>   #define GEN12_MAX_CONTEXT_HW_ID	(GEN11_MAX_CONTEXT_HW_ID - 1)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 8c7b92f699f1..30773cd699f5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -7,6 +7,7 @@
>   #define _INTEL_GUC_H_
>   
>   #include <linux/xarray.h>
> +#include <linux/delay.h>
>   
>   #include "intel_uncore.h"
>   #include "intel_guc_fw.h"
> @@ -44,6 +45,14 @@ struct intel_guc {
>   		void (*disable)(struct intel_guc *guc);
>   	} interrupts;
>   
> +	/*
> +	 * contexts_lock protects the pool of free guc ids and a linked list of
> +	 * guc ids available to be stolen
> +	 */
> +	spinlock_t contexts_lock;
> +	struct ida guc_ids;
> +	struct list_head guc_id_list;
> +
>   	bool submission_selected;
>   
>   	struct i915_vma *ads_vma;
> @@ -101,6 +110,34 @@ intel_guc_send_and_receive(struct intel_guc *guc, const u32 *action, u32 len,
>   				 response_buf, response_buf_size, 0);
>   }
>   
> +static inline int intel_guc_send_busy_loop(struct intel_guc* guc,
> +					   const u32 *action,
> +					   u32 len,
> +					   bool loop)
> +{
> +	int err;
> +	unsigned int sleep_period_ms = 1;
> +	bool not_atomic = !in_atomic() && !irqs_disabled();
> +
> +	/* No sleeping with spin locks, just busy loop */
> +	might_sleep_if(loop && not_atomic);
> +
> +retry:
> +	err = intel_guc_send_nb(guc, action, len);
> +	if (unlikely(err == -EBUSY && loop)) {
> +		if (likely(not_atomic)) {
> +			if (msleep_interruptible(sleep_period_ms))
> +				return -EINTR;
> +			sleep_period_ms = sleep_period_ms << 1;
> +		} else {
> +			cpu_relax();
> +		}
> +		goto retry;
> +	}
> +
> +	return err;
> +}
> +
>   static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
>   {
>   	intel_guc_ct_event_handler(&guc->ct);
> @@ -202,6 +239,9 @@ static inline void intel_guc_disable_msg(struct intel_guc *guc, u32 mask)
>   int intel_guc_reset_engine(struct intel_guc *guc,
>   			   struct intel_engine_cs *engine);
>   
> +int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
> +					  const u32 *msg, u32 len);
> +
>   void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p);
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 83ec60ea3f89..28ff82c5be45 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -928,6 +928,10 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>   	case INTEL_GUC_ACTION_DEFAULT:
>   		ret = intel_guc_to_host_process_recv_msg(guc, payload, len);
>   		break;
> +	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> +		ret = intel_guc_deregister_done_process_msg(guc, payload,
> +							    len);
> +		break;
>   	default:
>   		ret = -EOPNOTSUPP;
>   		break;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 53b4a5eb4a85..6940b9d62118 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -13,7 +13,9 @@
>   #include "gt/intel_gt.h"
>   #include "gt/intel_gt_irq.h"
>   #include "gt/intel_gt_pm.h"
> +#include "gt/intel_gt_requests.h"
>   #include "gt/intel_lrc.h"
> +#include "gt/intel_lrc_reg.h"
>   #include "gt/intel_mocs.h"
>   #include "gt/intel_ring.h"
>   
> @@ -85,6 +87,72 @@ static inline void clr_context_enabled(struct intel_context *ce)
>   		   &ce->guc_sched_state_no_lock);
>   }
>   
> +/*
> + * Below is a set of functions which control the GuC scheduling state which
> + * require a lock, aside from the special case where the functions are called
> + * from guc_lrc_desc_pin(). In that case it isn't possible for any other code
> + * path to be executing on the context.
> + */
> +#define SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER	BIT(0)
> +#define SCHED_STATE_DESTROYED				BIT(1)
> +static inline void init_sched_state(struct intel_context *ce)
> +{
> +	/* Only should be called from guc_lrc_desc_pin() */
> +	atomic_set(&ce->guc_sched_state_no_lock, 0);
> +	ce->guc_state.sched_state = 0;
> +}
> +
> +static inline bool
> +context_wait_for_deregister_to_register(struct intel_context *ce)
> +{
> +	return ce->guc_state.sched_state &
> +		SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER;
> +}
> +
> +static inline void
> +set_context_wait_for_deregister_to_register(struct intel_context *ce)
> +{
> +	/* Only should be called from guc_lrc_desc_pin() */
> +	ce->guc_state.sched_state |=
> +		SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER;
> +}
> +
> +static inline void
> +clr_context_wait_for_deregister_to_register(struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
> +	ce->guc_state.sched_state &=
> +		~SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER;
> +}
> +
> +static inline bool
> +context_destroyed(struct intel_context *ce)
> +{
> +	return ce->guc_state.sched_state & SCHED_STATE_DESTROYED;
> +}
> +
> +static inline void
> +set_context_destroyed(struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
> +	ce->guc_state.sched_state |= SCHED_STATE_DESTROYED;
> +}
> +
> +static inline bool context_guc_id_invalid(struct intel_context *ce)
> +{
> +	return (ce->guc_id == GUC_INVALID_LRC_ID);
Could have dropped the brackets from this one too.

> +}
> +
> +static inline void set_context_guc_id_invalid(struct intel_context *ce)
> +{
> +	ce->guc_id = GUC_INVALID_LRC_ID;
> +}
> +
> +static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
> +{
> +	return &ce->engine->gt->uc.guc;
> +}
> +
>   static inline struct i915_priolist *to_priolist(struct rb_node *rb)
>   {
>   	return rb_entry(rb, struct i915_priolist, node);
> @@ -155,6 +223,9 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
>   	int len = 0;
>   	bool enabled = context_enabled(ce);
>   
> +	GEM_BUG_ON(!atomic_read(&ce->guc_id_ref));
> +	GEM_BUG_ON(context_guc_id_invalid(ce));
> +
>   	if (!enabled) {
>   		action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET;
>   		action[len++] = ce->guc_id;
> @@ -417,6 +488,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   
>   	xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK_IRQ);
>   
> +	spin_lock_init(&guc->contexts_lock);
> +	INIT_LIST_HEAD(&guc->guc_id_list);
> +	ida_init(&guc->guc_ids);
> +
>   	return 0;
>   }
>   
> @@ -429,9 +504,305 @@ void intel_guc_submission_fini(struct intel_guc *guc)
>   	i915_sched_engine_put(guc->sched_engine);
>   }
>   
> -static int guc_context_alloc(struct intel_context *ce)
> +static inline void queue_request(struct i915_sched_engine *sched_engine,
> +				 struct i915_request *rq,
> +				 int prio)
>   {
> -	return lrc_alloc(ce, ce->engine);
> +	GEM_BUG_ON(!list_empty(&rq->sched.link));
> +	list_add_tail(&rq->sched.link,
> +		      i915_sched_lookup_priolist(sched_engine, prio));
> +	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> +}
> +
> +static int guc_bypass_tasklet_submit(struct intel_guc *guc,
> +				     struct i915_request *rq)
> +{
> +	int ret;
> +
> +	__i915_request_submit(rq);
> +
> +	trace_i915_request_in(rq, 0);
> +
> +	guc_set_lrc_tail(rq);
> +	ret = guc_add_request(guc, rq);
> +	if (ret == -EBUSY)
> +		guc->stalled_request = rq;
> +
> +	return ret;
> +}
> +
> +static void guc_submit_request(struct i915_request *rq)
> +{
> +	struct i915_sched_engine *sched_engine = rq->engine->sched_engine;
> +	struct intel_guc *guc = &rq->engine->gt->uc.guc;
> +	unsigned long flags;
> +
> +	/* Will be called from irq-context when using foreign fences. */
> +	spin_lock_irqsave(&sched_engine->lock, flags);
> +
> +	if (guc->stalled_request || !i915_sched_engine_is_empty(sched_engine))
> +		queue_request(sched_engine, rq, rq_prio(rq));
> +	else if (guc_bypass_tasklet_submit(guc, rq) == -EBUSY)
> +		tasklet_hi_schedule(&sched_engine->tasklet);
> +
> +	spin_unlock_irqrestore(&sched_engine->lock, flags);
> +}
> +
> +static int new_guc_id(struct intel_guc *guc)
> +{
> +	return ida_simple_get(&guc->guc_ids, 0,
> +			      GUC_MAX_LRC_DESCRIPTORS, GFP_KERNEL |
> +			      __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
> +}
> +
> +static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
> +{
> +	if (!context_guc_id_invalid(ce)) {
> +		ida_simple_remove(&guc->guc_ids, ce->guc_id);
> +		reset_lrc_desc(guc, ce->guc_id);
> +		set_context_guc_id_invalid(ce);
> +	}
> +	if (!list_empty(&ce->guc_id_link))
> +		list_del_init(&ce->guc_id_link);
> +}
> +
> +static void release_guc_id(struct intel_guc *guc, struct intel_context *ce)
> +{
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&guc->contexts_lock, flags);
> +	__release_guc_id(guc, ce);
> +	spin_unlock_irqrestore(&guc->contexts_lock, flags);
> +}
> +
> +static int steal_guc_id(struct intel_guc *guc)
> +{
> +	struct intel_context *ce;
> +	int guc_id;
> +
> +	lockdep_assert_held(&guc->contexts_lock);
> +
> +	if (!list_empty(&guc->guc_id_list)) {
> +		ce = list_first_entry(&guc->guc_id_list,
> +				      struct intel_context,
> +				      guc_id_link);
> +
> +		GEM_BUG_ON(atomic_read(&ce->guc_id_ref));
> +		GEM_BUG_ON(context_guc_id_invalid(ce));
> +
> +		list_del_init(&ce->guc_id_link);
> +		guc_id = ce->guc_id;
> +		set_context_guc_id_invalid(ce);
> +		return guc_id;
> +	} else {
> +		return -EAGAIN;
> +	}
> +}
> +
> +static int assign_guc_id(struct intel_guc *guc, u16 *out)
> +{
> +	int ret;
> +
> +	lockdep_assert_held(&guc->contexts_lock);
> +
> +	ret = new_guc_id(guc);
> +	if (unlikely(ret < 0)) {
> +		ret = steal_guc_id(guc);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	*out = ret;
> +	return 0;
> +}
> +
> +#define PIN_GUC_ID_TRIES	4
> +static int pin_guc_id(struct intel_guc *guc, struct intel_context *ce)
> +{
> +	int ret = 0;
> +	unsigned long flags, tries = PIN_GUC_ID_TRIES;
> +
> +	GEM_BUG_ON(atomic_read(&ce->guc_id_ref));
> +
> +try_again:
> +	spin_lock_irqsave(&guc->contexts_lock, flags);
> +
> +	if (context_guc_id_invalid(ce)) {
> +		ret = assign_guc_id(guc, &ce->guc_id);
> +		if (ret)
> +			goto out_unlock;
> +		ret = 1;	/* Indidcates newly assigned guc_id */
> +	}
> +	if (!list_empty(&ce->guc_id_link))
> +		list_del_init(&ce->guc_id_link);
> +	atomic_inc(&ce->guc_id_ref);
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&guc->contexts_lock, flags);
> +
> +	/*
> +	 * -EAGAIN indicates no guc_ids are available, let's retire any
> +	 * outstanding requests to see if that frees up a guc_id. If the first
> +	 * retire didn't help, insert a sleep with the timeslice duration before
> +	 * attempting to retire more requests. Double the sleep period each
> +	 * subsequent pass before finally giving up. The sleep period has max of
> +	 * 100ms and minimum of 1ms.
> +	 */
> +	if (ret == -EAGAIN && --tries) {
> +		if (PIN_GUC_ID_TRIES - tries > 1) {
> +			unsigned int timeslice_shifted =
> +				ce->engine->props.timeslice_duration_ms <<
> +				(PIN_GUC_ID_TRIES - tries - 2);
> +			unsigned int max = min_t(unsigned int, 100,
> +						 timeslice_shifted);
> +
> +			msleep(max_t(unsigned int, max, 1));
> +		}
> +		intel_gt_retire_requests(guc_to_gt(guc));
> +		goto try_again;
> +	}
> +
> +	return ret;
> +}
> +
> +static void unpin_guc_id(struct intel_guc *guc, struct intel_context *ce)
> +{
> +	unsigned long flags;
> +
> +	GEM_BUG_ON(atomic_read(&ce->guc_id_ref) < 0);
> +
> +	spin_lock_irqsave(&guc->contexts_lock, flags);
> +	if (!context_guc_id_invalid(ce) && list_empty(&ce->guc_id_link) &&
> +	    !atomic_read(&ce->guc_id_ref))
> +		list_add_tail(&ce->guc_id_link, &guc->guc_id_list);
> +	spin_unlock_irqrestore(&guc->contexts_lock, flags);
> +}
> +
> +static int __guc_action_register_context(struct intel_guc *guc,
> +					 u32 guc_id,
> +					 u32 offset)
> +{
> +	u32 action[] = {
> +		INTEL_GUC_ACTION_REGISTER_CONTEXT,
> +		guc_id,
> +		offset,
> +	};
> +
> +	return intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action), true);
> +}
> +
> +static int register_context(struct intel_context *ce)
> +{
> +	struct intel_guc *guc = ce_to_guc(ce);
> +	u32 offset = intel_guc_ggtt_offset(guc, guc->lrc_desc_pool) +
> +		ce->guc_id * sizeof(struct guc_lrc_desc);
> +
> +	return __guc_action_register_context(guc, ce->guc_id, offset);
> +}
> +
> +static int __guc_action_deregister_context(struct intel_guc *guc,
> +					   u32 guc_id)
> +{
> +	u32 action[] = {
> +		INTEL_GUC_ACTION_DEREGISTER_CONTEXT,
> +		guc_id,
> +	};
> +
> +	return intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action), true);
> +}
> +
> +static int deregister_context(struct intel_context *ce, u32 guc_id)
> +{
> +	struct intel_guc *guc = ce_to_guc(ce);
> +
> +	return __guc_action_deregister_context(guc, guc_id);
> +}
> +
> +static intel_engine_mask_t adjust_engine_mask(u8 class, intel_engine_mask_t mask)
> +{
> +	switch (class) {
> +	case RENDER_CLASS:
> +		return mask >> RCS0;
> +	case VIDEO_ENHANCEMENT_CLASS:
> +		return mask >> VECS0;
> +	case VIDEO_DECODE_CLASS:
> +		return mask >> VCS0;
> +	case COPY_ENGINE_CLASS:
> +		return mask >> BCS0;
> +	default:
> +		MISSING_CASE(class);
> +		return 0;
> +	}
> +}
> +
> +static void guc_context_policy_init(struct intel_engine_cs *engine,
> +				    struct guc_lrc_desc *desc)
> +{
> +	desc->policy_flags = 0;
> +
> +	desc->execution_quantum = CONTEXT_POLICY_DEFAULT_EXECUTION_QUANTUM_US;
> +	desc->preemption_timeout = CONTEXT_POLICY_DEFAULT_PREEMPTION_TIME_US;
> +}
> +
> +static int guc_lrc_desc_pin(struct intel_context *ce)
> +{
> +	struct intel_engine_cs *engine = ce->engine;
> +	struct intel_runtime_pm *runtime_pm = engine->uncore->rpm;
> +	struct intel_guc *guc = &engine->gt->uc.guc;
> +	u32 desc_idx = ce->guc_id;
> +	struct guc_lrc_desc *desc;
> +	bool context_registered;
> +	intel_wakeref_t wakeref;
> +	int ret = 0;
> +
> +	GEM_BUG_ON(!engine->mask);
> +
> +	/*
> +	 * Ensure LRC + CT vmas are is same region as write barrier is done
> +	 * based on CT vma region.
> +	 */
> +	GEM_BUG_ON(i915_gem_object_is_lmem(guc->ct.vma->obj) !=
> +		   i915_gem_object_is_lmem(ce->ring->vma->obj));
> +
> +	context_registered = lrc_desc_registered(guc, desc_idx);
> +
> +	reset_lrc_desc(guc, desc_idx);
> +	set_lrc_desc_registered(guc, desc_idx, ce);
> +
> +	desc = __get_lrc_desc(guc, desc_idx);
> +	desc->engine_class = engine_class_to_guc_class(engine->class);
> +	desc->engine_submit_mask = adjust_engine_mask(engine->class,
> +						      engine->mask);
> +	desc->hw_context_desc = ce->lrc.lrca;
> +	desc->priority = GUC_CLIENT_PRIORITY_KMD_NORMAL;
> +	desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
> +	guc_context_policy_init(engine, desc);
> +	init_sched_state(ce);
> +
> +	/*
> +	 * The context_lookup xarray is used to determine if the hardware
> +	 * context is currently registered. There are two cases in which it
> +	 * could be registered either the guc_id has been stolen from from
> +	 * another context or the lrc descriptor address of this context has
> +	 * changed. In either case the context needs to be deregistered with the
> +	 * GuC before registering this context.
> +	 */
> +	if (context_registered) {
> +		set_context_wait_for_deregister_to_register(ce);
> +		intel_context_get(ce);
> +
> +		/*
> +		 * If stealing the guc_id, this ce has the same guc_id as the
> +		 * context whose guc_id was stolen.
> +		 */
> +		with_intel_runtime_pm(runtime_pm, wakeref)
> +			ret = deregister_context(ce, ce->guc_id);
> +	} else {
> +		with_intel_runtime_pm(runtime_pm, wakeref)
> +			ret = register_context(ce);
> +	}
> +
> +	return ret;
>   }
>   
>   static int guc_context_pre_pin(struct intel_context *ce,
> @@ -443,36 +814,144 @@ static int guc_context_pre_pin(struct intel_context *ce,
>   
>   static int guc_context_pin(struct intel_context *ce, void *vaddr)
>   {
> +	if (i915_ggtt_offset(ce->state) !=
> +	    (ce->lrc.lrca & CTX_GTT_ADDRESS_MASK))
> +		set_bit(CONTEXT_LRCA_DIRTY, &ce->flags);
> +
> +	/*
> +	 * GuC context gets pinned in guc_request_alloc. See that function for
> +	 * explaination of why.
> +	 */
> +
>   	return lrc_pin(ce, ce->engine, vaddr);
>   }
>   
> +static void guc_context_unpin(struct intel_context *ce)
> +{
> +	struct intel_guc *guc = ce_to_guc(ce);
> +
> +	unpin_guc_id(guc, ce);
> +	lrc_unpin(ce);
> +}
> +
> +static void guc_context_post_unpin(struct intel_context *ce)
> +{
> +	lrc_post_unpin(ce);
> +}
> +
> +static inline void guc_lrc_desc_unpin(struct intel_context *ce)
> +{
> +	struct intel_guc *guc = ce_to_guc(ce);
> +	unsigned long flags;
> +
> +	GEM_BUG_ON(!lrc_desc_registered(guc, ce->guc_id));
> +	GEM_BUG_ON(ce != __get_context(guc, ce->guc_id));
> +
> +	spin_lock_irqsave(&ce->guc_state.lock, flags);
> +	set_context_destroyed(ce);
> +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +
> +	deregister_context(ce, ce->guc_id);
> +}
> +
> +static void guc_context_destroy(struct kref *kref)
> +{
> +	struct intel_context *ce = container_of(kref, typeof(*ce), ref);
> +	struct intel_runtime_pm *runtime_pm = ce->engine->uncore->rpm;
> +	struct intel_guc *guc = ce_to_guc(ce);
> +	intel_wakeref_t wakeref;
> +	unsigned long flags;
> +
> +	/*
> +	 * If the guc_id is invalid this context has been stolen and we can free
> +	 * it immediately. Also can be freed immediately if the context is not
> +	 * registered with the GuC.
> +	 */
> +	if (context_guc_id_invalid(ce)) {
> +		lrc_destroy(kref);
> +		return;
> +	} else if (!lrc_desc_registered(guc, ce->guc_id)) {
> +		release_guc_id(guc, ce);
> +		lrc_destroy(kref);
> +		return;
> +	}
> +
> +	/*
> +	 * We have to acquire the context spinlock and check guc_id again, if it
> +	 * is valid it hasn't been stolen and needs to be deregistered. We
> +	 * delete this context from the list of unpinned guc_ids available to
> +	 * steal to seal a race with guc_lrc_desc_pin(). When the G2H CTB
> +	 * returns indicating this context has been deregistered the guc_id is
> +	 * returned to the pool of available guc_ids.
> +	 */
> +	spin_lock_irqsave(&guc->contexts_lock, flags);
> +	if (context_guc_id_invalid(ce)) {
> +		spin_unlock_irqrestore(&guc->contexts_lock, flags);
> +		lrc_destroy(kref);
> +		return;
> +	}
> +
> +	if (!list_empty(&ce->guc_id_link))
> +		list_del_init(&ce->guc_id_link);
> +	spin_unlock_irqrestore(&guc->contexts_lock, flags);
> +
> +	/*
> +	 * We defer GuC context deregistration until the context is destroyed
> +	 * in order to save on CTBs. With this optimization ideally we only need
> +	 * 1 CTB to register the context during the first pin and 1 CTB to
> +	 * deregister the context when the context is destroyed. Without this
> +	 * optimization, a CTB would be needed every pin & unpin.
> +	 *
> +	 * XXX: Need to acqiure the runtime wakeref as this can be triggered
> +	 * from context_free_worker when runtime wakeref is not held.
> +	 * guc_lrc_desc_unpin requires the runtime as a GuC register is written
> +	 * in H2G CTB to deregister the context. A future patch may defer this
> +	 * H2G CTB if the runtime wakeref is zero.
> +	 */
> +	with_intel_runtime_pm(runtime_pm, wakeref)
> +		guc_lrc_desc_unpin(ce);
> +}
> +
> +static int guc_context_alloc(struct intel_context *ce)
> +{
> +	return lrc_alloc(ce, ce->engine);
> +}
> +
>   static const struct intel_context_ops guc_context_ops = {
>   	.alloc = guc_context_alloc,
>   
>   	.pre_pin = guc_context_pre_pin,
>   	.pin = guc_context_pin,
> -	.unpin = lrc_unpin,
> -	.post_unpin = lrc_post_unpin,
> +	.unpin = guc_context_unpin,
> +	.post_unpin = guc_context_post_unpin,
>   
>   	.enter = intel_context_enter_engine,
>   	.exit = intel_context_exit_engine,
>   
>   	.reset = lrc_reset,
> -	.destroy = lrc_destroy,
> +	.destroy = guc_context_destroy,
>   };
>   
> -static int guc_request_alloc(struct i915_request *request)
> +static bool context_needs_register(struct intel_context *ce, bool new_guc_id)
> +{
> +	return new_guc_id || test_bit(CONTEXT_LRCA_DIRTY, &ce->flags) ||
> +		!lrc_desc_registered(ce_to_guc(ce), ce->guc_id);
> +}
> +
> +static int guc_request_alloc(struct i915_request *rq)
>   {
> +	struct intel_context *ce = rq->context;
> +	struct intel_guc *guc = ce_to_guc(ce);
>   	int ret;
>   
> -	GEM_BUG_ON(!intel_context_is_pinned(request->context));
> +	GEM_BUG_ON(!intel_context_is_pinned(rq->context));
>   
>   	/*
>   	 * Flush enough space to reduce the likelihood of waiting after
>   	 * we start building the request - in which case we will just
>   	 * have to repeat work.
>   	 */
> -	request->reserved_space += GUC_REQUEST_SIZE;
> +	rq->reserved_space += GUC_REQUEST_SIZE;
>   
>   	/*
>   	 * Note that after this point, we have committed to using
> @@ -483,56 +962,47 @@ static int guc_request_alloc(struct i915_request *request)
>   	 */
>   
>   	/* Unconditionally invalidate GPU caches and TLBs. */
> -	ret = request->engine->emit_flush(request, EMIT_INVALIDATE);
> +	ret = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
>   	if (ret)
>   		return ret;
>   
> -	request->reserved_space -= GUC_REQUEST_SIZE;
> -	return 0;
> -}
> -
> -static inline void queue_request(struct i915_sched_engine *sched_engine,
> -				 struct i915_request *rq,
> -				 int prio)
> -{
> -	GEM_BUG_ON(!list_empty(&rq->sched.link));
> -	list_add_tail(&rq->sched.link,
> -		      i915_sched_lookup_priolist(sched_engine, prio));
> -	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> -}
> -
> -static int guc_bypass_tasklet_submit(struct intel_guc *guc,
> -				     struct i915_request *rq)
> -{
> -	int ret;
> -
> -	__i915_request_submit(rq);
> -
> -	trace_i915_request_in(rq, 0);
> -
> -	guc_set_lrc_tail(rq);
> -	ret = guc_add_request(guc, rq);
> -	if (ret == -EBUSY)
> -		guc->stalled_request = rq;
> -
> -	return ret;
> -}
> +	rq->reserved_space -= GUC_REQUEST_SIZE;
>   
> -static void guc_submit_request(struct i915_request *rq)
> -{
> -	struct i915_sched_engine *sched_engine = rq->engine->sched_engine;
> -	struct intel_guc *guc = &rq->engine->gt->uc.guc;
> -	unsigned long flags;
> +	/*
> +	 * Call pin_guc_id here rather than in the pinning step as with
> +	 * dma_resv, contexts can be repeatedly pinned / unpinned trashing the
> +	 * guc_ids and creating horrible race conditions. This is especially bad
> +	 * when guc_ids are being stolen due to over subscription. By the time
> +	 * this function is reached, it is guaranteed that the guc_id will be
> +	 * persistent until the generated request is retired. Thus, sealing these
> +	 * race conditions. It is still safe to fail here if guc_ids are
> +	 * exhausted and return -EAGAIN to the user indicating that they can try
> +	 * again in the future.
> +	 *
> +	 * There is no need for a lock here as the timeline mutex ensures at
> +	 * most one context can be executing this code path at once. The
> +	 * guc_id_ref is incremented once for every request in flight and
> +	 * decremented on each retire. When it is zero, a lock around the
> +	 * increment (in pin_guc_id) is needed to seal a race with unpin_guc_id.
> +	 */
> +	if (atomic_add_unless(&ce->guc_id_ref, 1, 0))
> +		return 0;
>   
> -	/* Will be called from irq-context when using foreign fences. */
> -	spin_lock_irqsave(&sched_engine->lock, flags);
> +	ret = pin_guc_id(guc, ce);	/* returns 1 if new guc_id assigned */
> +	if (unlikely(ret < 0))
> +		return ret;
> +	if (context_needs_register(ce, !!ret)) {
> +		ret = guc_lrc_desc_pin(ce);
> +		if (unlikely(ret)) {	/* unwind */
> +			atomic_dec(&ce->guc_id_ref);
> +			unpin_guc_id(guc, ce);
> +			return ret;
> +		}
> +	}
>   
> -	if (guc->stalled_request || !i915_sched_engine_is_empty(sched_engine))
> -		queue_request(sched_engine, rq, rq_prio(rq));
> -	else if (guc_bypass_tasklet_submit(guc, rq) == -EBUSY)
> -		tasklet_hi_schedule(&sched_engine->tasklet);
> +	clear_bit(CONTEXT_LRCA_DIRTY, &ce->flags);
>   
> -	spin_unlock_irqrestore(&sched_engine->lock, flags);
> +	return 0;
>   }
>   
>   static void sanitize_hwsp(struct intel_engine_cs *engine)
> @@ -606,6 +1076,41 @@ static void guc_set_default_submission(struct intel_engine_cs *engine)
>   	engine->submit_request = guc_submit_request;
>   }
>   
> +static inline void guc_kernel_context_pin(struct intel_guc *guc,
> +					  struct intel_context *ce)
> +{
> +	if (context_guc_id_invalid(ce))
> +		pin_guc_id(guc, ce);
> +	guc_lrc_desc_pin(ce);
> +}
> +
> +static inline void guc_init_lrc_mapping(struct intel_guc *guc)
> +{
> +	struct intel_gt *gt = guc_to_gt(guc);
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +
> +	/* make sure all descriptors are clean... */
> +	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * Some contexts might have been pinned before we enabled GuC
> +	 * submission, so we need to add them to the GuC bookeeping.
> +	 * Also, after a reset the of GuC we want to make sure that the
the of -> of the

> +	 * information shared with GuC is properly reset. The kernel LRCs are
> +	 * not attached to the gem_context, so they need to be added separately.
> +	 *
> +	 * Note: we purposely do not check the return of guc_lrc_desc_pin,
purposefully

Just a bunch of nits, so maybe not worth respinning. I think it needs an 
r-b from Daniele as well, given that he had a bunch of comments on the 
previous rev too. But apart from the nits, looks good to me.

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> +	 * because that function can only fail if a reset is just starting. This
> +	 * is at the end of reset so presumably another reset isn't happening
> +	 * and even it did this code would be run again.
> +	 */
> +
> +	for_each_engine(engine, gt, id)
> +		if (engine->kernel_context)
> +			guc_kernel_context_pin(guc, engine->kernel_context);
> +}
> +
>   static void guc_release(struct intel_engine_cs *engine)
>   {
>   	engine->sanitize = NULL; /* no longer in control, nothing to sanitize */
> @@ -718,6 +1223,7 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
>   
>   void intel_guc_submission_enable(struct intel_guc *guc)
>   {
> +	guc_init_lrc_mapping(guc);
>   }
>   
>   void intel_guc_submission_disable(struct intel_guc *guc)
> @@ -743,3 +1249,62 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
>   {
>   	guc->submission_selected = __guc_submission_selected(guc);
>   }
> +
> +static inline struct intel_context *
> +g2h_context_lookup(struct intel_guc *guc, u32 desc_idx)
> +{
> +	struct intel_context *ce;
> +
> +	if (unlikely(desc_idx >= GUC_MAX_LRC_DESCRIPTORS)) {
> +		drm_err(&guc_to_gt(guc)->i915->drm,
> +			"Invalid desc_idx %u", desc_idx);
> +		return NULL;
> +	}
> +
> +	ce = __get_context(guc, desc_idx);
> +	if (unlikely(!ce)) {
> +		drm_err(&guc_to_gt(guc)->i915->drm,
> +			"Context is NULL, desc_idx %u", desc_idx);
> +		return NULL;
> +	}
> +
> +	return ce;
> +}
> +
> +int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
> +					  const u32 *msg,
> +					  u32 len)
> +{
> +	struct intel_context *ce;
> +	u32 desc_idx = msg[0];
> +
> +	if (unlikely(len < 1)) {
> +		drm_err(&guc_to_gt(guc)->i915->drm, "Invalid length %u", len);
> +		return -EPROTO;
> +	}
> +
> +	ce = g2h_context_lookup(guc, desc_idx);
> +	if (unlikely(!ce))
> +		return -EPROTO;
> +
> +	if (context_wait_for_deregister_to_register(ce)) {
> +		struct intel_runtime_pm *runtime_pm =
> +			&ce->engine->gt->i915->runtime_pm;
> +		intel_wakeref_t wakeref;
> +
> +		/*
> +		 * Previous owner of this guc_id has been deregistered, now safe
> +		 * register this context.
> +		 */
> +		with_intel_runtime_pm(runtime_pm, wakeref)
> +			register_context(ce);
> +		clr_context_wait_for_deregister_to_register(ce);
> +		intel_context_put(ce);
> +	} else if (context_destroyed(ce)) {
> +		/* Context has been destroyed */
> +		release_guc_id(guc, ce);
> +		lrc_destroy(&ce->ref);
> +	}
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 943fe485c662..204c95c39353 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4142,6 +4142,7 @@ enum {
>   	FAULT_AND_CONTINUE /* Unsupported */
>   };
>   
> +#define CTX_GTT_ADDRESS_MASK GENMASK(31, 12)
>   #define GEN8_CTX_VALID (1 << 0)
>   #define GEN8_CTX_FORCE_PD_RESTORE (1 << 1)
>   #define GEN8_CTX_FORCE_RESTORE (1 << 2)
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 09ebea9a0090..ef26724fe980 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -407,6 +407,7 @@ bool i915_request_retire(struct i915_request *rq)
>   	 */
>   	if (!list_empty(&rq->sched.link))
>   		remove_from_engine(rq);
> +	atomic_dec(&rq->context->guc_id_ref);
>   	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
>   
>   	__list_del_entry(&rq->link); /* poison neither prev/next (RCU walks) */

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
