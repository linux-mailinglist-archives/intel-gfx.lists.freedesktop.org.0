Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF223D9B3C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 03:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FBBD6E958;
	Thu, 29 Jul 2021 01:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F926E8BF;
 Thu, 29 Jul 2021 01:51:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212774452"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212774452"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 18:51:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="464900720"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 28 Jul 2021 18:51:38 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 28 Jul 2021 18:51:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 28 Jul 2021 18:51:37 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 28 Jul 2021 18:51:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZqM1zvvhsiSSy25OIn9pelChny5AEDbibUGwtmmK3TxnZ4dOOlMa1D4NOskJ9FT2UTTv6jzw92IeoULjiRPSObeuD998yCpPz84TkJNb1mOdZCQ1T4yo8BxwAcFc0bsS74EcGWFS1P2TEl7tUuoYKAy+bk3dUwhwu8cV4EygKA0dCnm8lIOWQ8K6YtIrY7oAxDTdDPGqZB0iRwVIT+S77RhQmCq2dJSb0YlcC4gcQ5+1b6wfFATp7yUL1rEtTJr/MKrXk5dTn+hAnS6GuYXnbDrCmdSkfNwCM5B4wWKmHp8EAmPyyzPLtlO9vJ6Z7hGbbs/1OVUYz2JMLgQCdEJKjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F1so04JjA/8paOU/2RAKiJpyaB6ckTuvKQQIvWdn6Jg=;
 b=d7qoNQQ+owOpu0w5ninGNqOjoymQ90HtkktPcIiw7XK8Q5YUWTh7ohQF1V4cXnOfruZyivzesv+Xe6LSvc4DqzfsOtgm18ti82i+zHh4QblE2i1MbNPNvEhqzBYD5ysOoo0QcUezv5njnAW3sBDII9tWJkIHB82JVjep/Bbf/rToxh7q4DCaOd7cHmLPVONc8kZNThAWQ5C5W4HCyaOJMNzC9Z0j7bL2OaVSnkGL/SK1DonUu5/cOjDtVnwyXgoMEkrR9qr/cuJ9oZ04zM/k7NojHw8QH8ws7yq+IfymkXWZcGlNWW6pLzAQSarmxoJie7BmPDeU6ncjeOERlGDI8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F1so04JjA/8paOU/2RAKiJpyaB6ckTuvKQQIvWdn6Jg=;
 b=ndncSBmhVY0FvAdDF8Bc98zok7LMsbH26IPFAuQIhwrcFjv2k+OQSPpTm/kZcE3oYf/uC2WXBMVBQ9Dr11/kVCH+GyTgJ4zDykq0xbYT/HCC3qjBHCU/zNvOhDZssrER3r3l9G08Din7xfPSzro18K7Uda92cHU++HhC0hlr4TE=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB3818.namprd11.prod.outlook.com (2603:10b6:5:145::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.31; Thu, 29 Jul 2021 01:51:32 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4017:e7ce:ef66:48d7]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4017:e7ce:ef66:48d7%9]) with mapi id 15.20.4373.020; Thu, 29 Jul 2021
 01:51:32 +0000
To: Matthew Brost <matthew.brost@intel.com>, <igt-dev@lists.freedesktop.org>
References: <20210727152202.9527-1-matthew.brost@intel.com>
 <20210727152202.9527-7-matthew.brost@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e46a72c7-3443-bbcd-273e-6939b743fc2b@intel.com>
Date: Wed, 28 Jul 2021 18:51:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <20210727152202.9527-7-matthew.brost@intel.com>
Content-Language: en-US
X-ClientProxiedBy: MW4PR03CA0058.namprd03.prod.outlook.com
 (2603:10b6:303:8e::33) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.65] (99.72.232.53) by
 MW4PR03CA0058.namprd03.prod.outlook.com (2603:10b6:303:8e::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.20 via Frontend Transport; Thu, 29 Jul 2021 01:51:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3da3e1f6-a16c-47a3-2acc-08d9523363e1
X-MS-TrafficTypeDiagnostic: DM6PR11MB3818:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB3818C7D7F692214A2DAA6CABF4EB9@DM6PR11MB3818.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FC/wWnl/H/fgckr40EBunY8RT3ZEFDs/mRQMw8NutQoiGtcHIn4eVbq9oZpvYQ7EXdu+GveLOGUd6E++4pKXq/jh3khmLSYZKfvhykdWncl8+07dSNQqC3dBytpjOvn2mKS6tL7zgHkJIwzPIef+Ams9kBxbr1TcJs5t9ndq11EhPlghJHszJN3r3eIAsHmfin/wCkIaLfwfr2W0G/suMBvJaN3LRMAOzaYHhIBho2IVrIkGBqpnbX+iDGxw8whx1agqhpkEysAS9Om/crKH/7vFXtPh4XSVB6ummL/qlrgnXE9aYJV+o0Dga57FCdk0I5SngQYNLrXxGLNCp+WPO2rYz5Sz2rdFY+YgWUHy0qiGj1jvu/5xYKIbg7Ymz/YihxX4Ho+DW5YK4jW3hz9a3i4KjnbJdS/D1xs/JiTWsORYlqgq5uGYxmWZCqN2xqLPRPRFFtf325lQtJXWgNW75+RqkduQrkpqZn7Dc/uIKYMo0qlj6Nu0KBymqbfevLMdKSFtO8YyCspYUURjwJXTHwEVR3iUrQhhJ+7gPyR37VTn6hCD0HnNWV6N3JuupabvuPIpuP607kAUrTFINwzC+kmtvah1UgAhfeRREcF7yDXqu3EGC2eZ1ctt67rSLkVK/DVjEotgGqeiNx6iFXaog2yjONapNBhBXUfVLKUWzNqIYDFRCUzIrblXVT8liCWKQgO6EvwYmdu10lpWoRNTfIDdoH2e0ppdxV0UaVAr5NE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(53546011)(83380400001)(36756003)(8936002)(2906002)(31686004)(956004)(8676002)(2616005)(66476007)(186003)(26005)(16576012)(4326008)(38100700002)(5660300002)(31696002)(86362001)(316002)(450100002)(66556008)(478600001)(66946007)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEN0NHhKOEJ3VmM5cGdFMFkxbkhhTHlSQjUwSFNTL3ZjNm4xTFc3R0d3NHpM?=
 =?utf-8?B?a2YxRGs3cW1QZEhuU3V5Q2lmRGlNWTdrUnlxSndTcEZIZjJLMXVVSTIzZ3hZ?=
 =?utf-8?B?aGZvWXhiTmhGQXVUeWg4VVhyU0dFZWE0U3RtbUh2ZjIwWkV6aUxFSTc3NHRY?=
 =?utf-8?B?R0pMNkw1VVpLQ2lMTzRCOGQ0MHFjaXd3MS9aTEZ1MzZmZU5wVnVDWk9welJn?=
 =?utf-8?B?bUF1RTJmN1c0NlpINmRYM21MOVM5REh4TXY2Z2E3YlVidTVwaEdFb1BoNXlu?=
 =?utf-8?B?YW5RU0IvOHJ3SGJTNDNQRTN1c09uaTRNazdqOW9BdnFTTGtTVlRGejI2Zk1F?=
 =?utf-8?B?Tk8vNnEzdXhWMjFIaGhRdEh3aFpkeVhKOGZqWEpxUnc1VVpqNHVGbExCZzZ3?=
 =?utf-8?B?TEpNb0VaT211ZDFDNzVlSUYxZ1RXdGNxSm1RQmxSWWVYNnVqaEp4ZlltNzdz?=
 =?utf-8?B?NUVaNStGanBKTFhLU2FlNzB0VlNhdEN5cHAvYWtlQnJEQ2VhOEhpOC9kYTZS?=
 =?utf-8?B?eExrZ2R3aEV0NkI2N043MkwzTDVDZGJ4K2hrTGllanhGYUZLYmw0SDVUc2tJ?=
 =?utf-8?B?VFpVNERSbjZsZC9NVkFadnRwM3p6WGZWQXN6QzVjbENrdHJXMzV2Y0ROdFU3?=
 =?utf-8?B?MEhlMHdIbVYvcjRLQzhVOFhiK3g0dHJUR0c2MmEvUW5VYnFWTEtpcVVLdUdh?=
 =?utf-8?B?YlBYMDhzNlA0TzZScnJ5bVQ0Zk0rTjRlUTlNWGx1Q3hCRVIrZmpxZHptbjRo?=
 =?utf-8?B?UE0zcFlEdFF1VFJtdy9XaHc5alhCTmF1cnl6NFpwcU5tbTBBbnhQUmh5YStM?=
 =?utf-8?B?Rk0vdFlWbTBqNjB2Q25xdTlhYWpkcERDNksyR1lPRHozbnYwV0s0cUY5Mmwx?=
 =?utf-8?B?Ry9MMGxEV2hUMHRJZHFSdmhIN2M2cHFtK1pPN2g0T3ZrNytSajNXT0puWUZy?=
 =?utf-8?B?Snk4V2IxZzBnOGphdFc2V3lGcU5EYzlycGlvVHNqRStUYk8raXJWYjNjZEdJ?=
 =?utf-8?B?UDJiQTgyM3NwMzY1enpzOFN6dE5OcFNxR0hBblZ6dGVIUEpXRUlYZWFpb1NY?=
 =?utf-8?B?Y0U3QnpWT1VhdS95eXYvTUhod3FWVVUwbDFVdXdGMDVUWWFKN0kyM0VjdklH?=
 =?utf-8?B?eGpCMjlTZDNhQVgvTUU5RC9pZ0ExVDd5NHM1NDRuUWFWSTBhQ1FPaVJhMTJV?=
 =?utf-8?B?Tm9IeisydHBSaEF5K0NnMWxLMEluK0xPNjBsRS9DQ29NZkpEYk1WM2Z3eENw?=
 =?utf-8?B?S2s3ek0vVW9Wa2FFR2o2SThON2JGV3BEY3djeDd2Q1JubXM0YVEzVHFDd2hD?=
 =?utf-8?B?Ry9GcmVDVjlCbWU5YnFRTThRMEt4T0xtVWt6Y2ZEZGxvSWMwVThrdWRVSkFI?=
 =?utf-8?B?TUpiQWh6dWZHSk00cm5kRFJONlhjUWI0akZVUEV2SnFtdndkZUVGaVJDQk1v?=
 =?utf-8?B?S0xXYnUyVGY5aFFMVE1XZjl5UG1rZ0hhc1ZQbEVxeVIvUFRpUVEyb2FiRkRr?=
 =?utf-8?B?WG9KV3IrejBGYlRLdEhIVnhsNWhkdGNBYWdJUDgwRllMZXlnbHFoQ2UzY1ZV?=
 =?utf-8?B?VFAxaFl5b3JGUkJxcGdHM01yRUNpaDdjVC9LSExwZG5NMktNalozeHU4SFBi?=
 =?utf-8?B?THlCVW4zMEdIUnlsaVMxSzRUQ3hMUkluVTUvTnBYTlFHSThaRm9QMEp0Uldm?=
 =?utf-8?B?NWFYSklibXhxakRWV2crOW5WRjhuSDdCdnVYeFNQck9zRmtycnVlUGpEUUJZ?=
 =?utf-8?Q?osE5Nxt2Xi4mJS49T/3Q060WVny+j76eThWJ4Oj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3da3e1f6-a16c-47a3-2acc-08d9523363e1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 01:51:32.3699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hC5EdclpNIUXL2BPFQW+onvCsG+7zaVrGvYm8RM1sFwcqrFkXgUc/sicFo5jl6FLn75oHKibOG+XCIeGNCQtqyfl0qLPUApC5kxZ7Fst2zc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3818
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 6/7] i915/gem_scheduler:
 Make gem_scheduler understand static priority mapping
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 7/27/2021 8:22 AM, Matthew Brost wrote:
> The i915 currently has 2k visible priority levels which are currently
> unique. This is changing to statically map these 2k levels into 3
> buckets:
>
> low: < 0
> mid: 0
> high: > 0
>
> Update gem_scheduler to understand this. This entails updating promotion
> test to use 3 levels that will map into different buckets and also
> delete a racey check. Also skip any tests that rely on having more than

Can you elaborate on why the check is racey? I'm sure you've already 
explained it to me in the past but can't spot it right now.

> 3 priority levels.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   lib/i915/gem_scheduler.c       | 13 ++++++++++
>   lib/i915/gem_scheduler.h       |  1 +
>   tests/i915/gem_exec_schedule.c | 47 ++++++++++++++++++++--------------
>   3 files changed, 42 insertions(+), 19 deletions(-)
>
> diff --git a/lib/i915/gem_scheduler.c b/lib/i915/gem_scheduler.c
> index cdddf42ad..bec2e485a 100644
> --- a/lib/i915/gem_scheduler.c
> +++ b/lib/i915/gem_scheduler.c
> @@ -90,6 +90,19 @@ bool gem_scheduler_has_ctx_priority(int fd)
>   		I915_SCHEDULER_CAP_PRIORITY;
>   }
>   
> +/**
> + * gem_scheduler_has_ctx_priority:

s/ctx/static/

LGTM apart from this.

Daniele

> + * @fd: open i915 drm file descriptor
> + *
> + * Feature test macro to query whether the driver supports priority assigned
> + * from user space are statically mapping into 3 buckets.
> + */
> +bool gem_scheduler_has_static_priority(int fd)
> +{
> +	return gem_scheduler_capability(fd) &
> +		I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP;
> +}
> +
>   /**
>    * gem_scheduler_has_preemption:
>    * @fd: open i915 drm file descriptor
> diff --git a/lib/i915/gem_scheduler.h b/lib/i915/gem_scheduler.h
> index d43e84bd2..b00804f70 100644
> --- a/lib/i915/gem_scheduler.h
> +++ b/lib/i915/gem_scheduler.h
> @@ -29,6 +29,7 @@
>   unsigned gem_scheduler_capability(int fd);
>   bool gem_scheduler_enabled(int fd);
>   bool gem_scheduler_has_ctx_priority(int fd);
> +bool gem_scheduler_has_static_priority(int fd);
>   bool gem_scheduler_has_preemption(int fd);
>   bool gem_scheduler_has_semaphores(int fd);
>   bool gem_scheduler_has_engine_busy_stats(int fd);
> diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
> index e5fb45982..f03842478 100644
> --- a/tests/i915/gem_exec_schedule.c
> +++ b/tests/i915/gem_exec_schedule.c
> @@ -1344,8 +1344,7 @@ static void reorder(int fd, const intel_ctx_cfg_t *cfg,
>   static void promotion(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
>   {
>   	IGT_CORK_FENCE(cork);
> -	uint32_t result, dep;
> -	uint32_t result_read, dep_read;
> +	uint32_t result, dep, dep_read;
>   	const intel_ctx_t *ctx[3];
>   	int fence;
>   
> @@ -1353,10 +1352,10 @@ static void promotion(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
>   	gem_context_set_priority(fd, ctx[LO]->id, MIN_PRIO);
>   
>   	ctx[HI] = intel_ctx_create(fd, cfg);
> -	gem_context_set_priority(fd, ctx[HI]->id, 0);
> +	gem_context_set_priority(fd, ctx[HI]->id, MAX_PRIO);
>   
>   	ctx[NOISE] = intel_ctx_create(fd, cfg);
> -	gem_context_set_priority(fd, ctx[NOISE]->id, MIN_PRIO/2);
> +	gem_context_set_priority(fd, ctx[NOISE]->id, 0);
>   
>   	result = gem_create(fd, 4096);
>   	dep = gem_create(fd, 4096);
> @@ -1383,11 +1382,9 @@ static void promotion(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
>   	dep_read = __sync_read_u32(fd, dep, 0);
>   	gem_close(fd, dep);
>   
> -	result_read = __sync_read_u32(fd, result, 0);
>   	gem_close(fd, result);
>   
>   	igt_assert_eq_u32(dep_read, ctx[HI]->id);
> -	igt_assert_eq_u32(result_read, ctx[NOISE]->id);
>   
>   	intel_ctx_destroy(fd, ctx[NOISE]);
>   	intel_ctx_destroy(fd, ctx[LO]);
> @@ -2963,19 +2960,25 @@ igt_main
>   			test_each_engine_store("preempt-other-chain", fd, ctx, e)
>   				preempt_other(fd, &ctx->cfg, e->flags, CHAIN);
>   
> -			test_each_engine_store("preempt-queue", fd, ctx, e)
> -				preempt_queue(fd, &ctx->cfg, e->flags, 0);
> +			test_each_engine_store("preempt-engines", fd, ctx, e)
> +				preempt_engines(fd, e, 0);
>   
> -			test_each_engine_store("preempt-queue-chain", fd, ctx, e)
> -				preempt_queue(fd, &ctx->cfg, e->flags, CHAIN);
> -			test_each_engine_store("preempt-queue-contexts", fd, ctx, e)
> -				preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS);
> +			igt_subtest_group {
> +				igt_fixture {
> +					igt_require(!gem_scheduler_has_static_priority(fd));
> +				}
>   
> -			test_each_engine_store("preempt-queue-contexts-chain", fd, ctx, e)
> -				preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS | CHAIN);
> +				test_each_engine_store("preempt-queue", fd, ctx, e)
> +					preempt_queue(fd, &ctx->cfg, e->flags, 0);
>   
> -			test_each_engine_store("preempt-engines", fd, ctx, e)
> -				preempt_engines(fd, e, 0);
> +				test_each_engine_store("preempt-queue-chain", fd, ctx, e)
> +					preempt_queue(fd, &ctx->cfg, e->flags, CHAIN);
> +				test_each_engine_store("preempt-queue-contexts", fd, ctx, e)
> +					preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS);
> +
> +				test_each_engine_store("preempt-queue-contexts-chain", fd, ctx, e)
> +					preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS | CHAIN);
> +			}
>   
>   			igt_subtest_group {
>   				igt_hang_t hang;
> @@ -3017,11 +3020,17 @@ igt_main
>   		test_each_engine_store("wide", fd, ctx, e)
>   			wide(fd, &ctx->cfg, e->flags);
>   
> -		test_each_engine_store("reorder-wide", fd, ctx, e)
> -			reorder_wide(fd, &ctx->cfg, e->flags);
> -
>   		test_each_engine_store("smoketest", fd, ctx, e)
>   			smoketest(fd, &ctx->cfg, e->flags, 5);
> +
> +		igt_subtest_group {
> +			igt_fixture {
> +				igt_require(!gem_scheduler_has_static_priority(fd));
> +			}
> +
> +			test_each_engine_store("reorder-wide", fd, ctx, e)
> +				reorder_wide(fd, &ctx->cfg, e->flags);
> +		}
>   	}
>   
>   	igt_subtest_group {

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
