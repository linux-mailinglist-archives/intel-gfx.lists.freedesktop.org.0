Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A56317AA030
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 22:33:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3700710E608;
	Thu, 21 Sep 2023 20:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE8910E608
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 20:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695328420; x=1726864420;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XjnKzQ2/eKfkgPnwBt4WdNUMMXHm6rlaldUkQ4PmylQ=;
 b=Aat8hzysCkZuw38+KaBuDYOlxYsAs6hfEntJxxTv9gegVJKwECJs4isR
 +UaWVLNVPkM4t5hdvzdj0qBnb1Ebg5K+DQQ57AOVQdFxUDiia3Dtl2hRR
 7hAnDunLcZCH4gzjrPmenUUWjU+V/GT1VA7ekZSkUbFk5gIooODoLENYV
 u9SIMoOVxfGHgG4f7UhX7mwq8NmoWml9Y9Qd7vFG2NgqS2tRiBdkrIKrK
 ebganTF7UkNG0sBPQ9QJuQVKva+NocA7o1ttzVyKYSYQ3Oi0xl9UbI313
 dyIwihb0abpLMItGgHDC8g4TIK7QTaVCpQv7oB1NFzVHG64mVbwDeqNEB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379532468"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379532468"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 13:33:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="837445307"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="837445307"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 13:33:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 13:33:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 13:33:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 13:33:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 13:33:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hqqJGAjV79uMRJApFBWE1Vhbfr0v2PBGq+9PjP3JmrSu0uGfizHDuNrJwhViVJrPNxB7Gmu+OW2f7EnaIxVtvW9CODSl7gv5WKAyZ/r4Z125oSznu1+RZ8evNlvq+IovIj5dmufykli9z8qiTibX+WX/VL3gAsRRQhhSz6dfVFtOjrEcqrEuOL0bIK29feLq8grF1aTceqsvdm9oqcrXbPgEcCxxcgt1L3J/scnvejG2sJvTodbtBqahFQg6rZHIs16nZZTMmyFy0qo0TPd2RaxvkYce1ytUAs/+9LJikL11ipy+vTI7jwGw7C24cEZezWWyi6ztuN+rNeCV2bzreA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OIrJ3gMV4XpWW1QAGjSCIYAbb60Hy9c2BB0Y2X8WrDw=;
 b=YDGqQVtYZTORxXN0rN5COpO2zewCRLb0MyEAkowk/Htw6XGb53E8whj1MIc9tk84PnaSNhb7ic/IoPc+YjgEkOfhDW6lLRZPNBbzz0Vvgl9lsXcEXctXbQVhLTGiwhfEsJTZaTLFmGvW+uRqEg8yHVGp9fkCaXuzgQQB23v6Dg0l43fDYRJqYQhU+W7AsRpKhePNrPXOJTtfVbK4rHn91x3HmUhUvPyeirrPKxxnnKobJpjw+WZdcV7DG6hpblDzL4t78JXbYhXvOeB96RJzWyVZs+izAzDlgqBm1iHrH8HaUWMy6S9T/OAMSP3WXiiL9DBYz52wiP8M5nQreiENwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB7168.namprd11.prod.outlook.com (2603:10b6:510:1e9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Thu, 21 Sep
 2023 20:33:19 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%6]) with mapi id 15.20.6792.022; Thu, 21 Sep 2023
 20:33:18 +0000
Date: Thu, 21 Sep 2023 16:33:14 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZQyoiuuJtwOuNTu2@intel.com>
References: <20230921160637.3862597-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230921160637.3862597-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0300.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB7168:EE_
X-MS-Office365-Filtering-Correlation-Id: 5dd2c7c7-b748-4efd-0e69-08dbbae1fd2e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GZRaK/3SFZnlga2wKm8pnWnFWNjhHIYsVPDBDUZqxwVvAfv/J/hhA9cjakWhWVEOC85OcD+3cO7Yjt13f3RfrtNrfNoxGIk6aUjDWG3b8XKjjh10suAiMeuJAEQZ2Mk1QLUnacm1Wru81erGNRyH4nSWCjCQe47N0/q7tZX1+FJlmxDzsAeldOHn2axSNPj2oeXLhoDcwYVRGvZgN2KaofoBfXwXjhQFT6vQ2Qp1gDy82KsbNtdBtKwHG20wizoQkFrYP8x9VZCQiDg9bR6zAGjKbvguP4Ypcz0PcOHs++UZCnJ6+c491J7UK65UMg3ybd7MMgsJrA3Vuaohn64dm+l7rls4ogdyFXATQ2Lw4ow+6qHR/VWH5MTAPbO9N7t8APPpLSTgr98iKK+vyAhCOtIwFRGygZWgQemYxEPxUGEDU72iS8M3K54soWvE9DEP9mhkKjh0FyPhcsQHjy5dPfF0QmKb1/4hf8OI0f7J7oOThzjcxgy8P8MAW4yhSjypQ0gKgB+M2IBBboNHrn0hFDDXg28WK5yXk0nXNTuX8HL5TuYPH2ewb+sTfBZlzlhz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(366004)(376002)(346002)(1800799009)(186009)(451199024)(6506007)(37006003)(5660300002)(41300700001)(44832011)(4326008)(8676002)(6862004)(8936002)(66556008)(66476007)(66946007)(82960400001)(6636002)(316002)(83380400001)(38100700002)(2906002)(2616005)(478600001)(26005)(86362001)(6486002)(6666004)(6512007)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LT837vSgPxvQ0vWZyiq1DiaZD4i6m6dSm5I+NPddgXbZonpveSjxGFzGwgBd?=
 =?us-ascii?Q?WWJyURFEZr8SFUrEZMWizweb8l7uHV1UA19oqRdu5Sx8uWn6hLLVU3g4K9uV?=
 =?us-ascii?Q?FPCZlUCBoMpdnazsrI2Iud94Mrn1/1O/LRIA1yiAZ9xYZ/g5N7+X3qZnE9jE?=
 =?us-ascii?Q?wrrm2kGQO1BLIt8m67diH6Bs3q0liSW+UKMV+gkX4sRPWd4WZlbR4EFmHJdo?=
 =?us-ascii?Q?mYpnmSHFEE+og3Zg8T/CAWYAQLVTq7BuHd2bUwygLkDT4+P2kfAGSWkxWOhl?=
 =?us-ascii?Q?Nb91mU/VQtJzSXOZ5Zt74UDA0GcSycfRHMHZesFdt2ZAfxxWPky/PwzAiMe+?=
 =?us-ascii?Q?keQhR8tqXbZRGs29kZD8gkV26PJ1Yrjh3O9xrES8510b6ddYQ89bkGCi1N2e?=
 =?us-ascii?Q?Xy/H6E44OTXyFX33KB4tnSVYDpgsQ7QF7pPsRbj1sqOLx92Rr6ArsIH3pVjV?=
 =?us-ascii?Q?8yuLaOT1mr5Sy2P32rwf0dodYbl5uYYhMzF1eAFtDcRdkNufgt+Zb1WRc8V3?=
 =?us-ascii?Q?AAfvYz8sJuty2JSve3aMbjunwSyvbAwGM8pr26zDj7Sxm0opvx5t9Vm/f8sF?=
 =?us-ascii?Q?GxHVt1qQiADBJD1TArfuvPWFeZodNYx0FhyjOrmU9B3N0ZnLSAVmUIpydSoo?=
 =?us-ascii?Q?1B1KQmAZLQSO/xTCE/m6uzLSzwPTqoInRDv/C3aSUCI+ckAkbNBwdQVw/ztr?=
 =?us-ascii?Q?91W+WvAWjgMHqgFephW5aYELlc3i18Ol92QaNeUfHpnGv363igsKMavz1Zhh?=
 =?us-ascii?Q?hxXr8AZs9Mtg4cnCQR6oapemYm09EkGgdKI7LrNN9M4uxqahElOEfdphU0J6?=
 =?us-ascii?Q?jgVkSqYm1AxxCs/LFSByStV7juRT5/bzBlmzbG2754k/UZBK113OWp44/sCF?=
 =?us-ascii?Q?58aRExyFQHO/1jbzdDq5q4kEU88auzWGkTo1K1W6l8KEMbtLkLM0s9t3pqPB?=
 =?us-ascii?Q?IMTw6topoztbYx6krdZyfZ51+Nq9leBzvV/Z87Cb81xLNaQ7BFKZT3yfeu4y?=
 =?us-ascii?Q?paeZQKLyhEzT7IqdKZT0bFduxOW4yp19u+i5KHvySlGP5LYcmkGnRX0LzAwE?=
 =?us-ascii?Q?vwTCuG6FSB3l+e6dHOs9vE/Q1MMZ0ZVvhtTW0ZHtLoj/9IC3/Fy4wOWHCyz2?=
 =?us-ascii?Q?/u5y/0xA0vHZ7KvbqCF2Tf/9BfodMgzeZ8xi43Vi9q1uucxmMBTKjL3pA4j7?=
 =?us-ascii?Q?BZPtVraYqy4SaSGXNaLzv/CFCeS5xj20PBl4tNNuMOkGDcylsx/Ag8Iix4r1?=
 =?us-ascii?Q?UShV5zEy1LzrAKWOAjXinObEnMY9wCmj1r3o10kg7btVLC6DAQlGwYNt3Qbp?=
 =?us-ascii?Q?iUsezaNOasJRY+tJ+V4xahQWzo0PQATqdVBTQOu6/7BKdAq5DTG2ZcuVWBO9?=
 =?us-ascii?Q?ismUY/2t7G1DEoHDR+83AO4Aq7oo209A5AHJwrTZHwZ56AkOhmxh7n89r+N5?=
 =?us-ascii?Q?Zccv0kK3B+KWtQOLSlpKmpuoGlt/XODU/SHRaxHsy1EbCjfKVBCzxYAOvU6+?=
 =?us-ascii?Q?l5cHtGls1jS8IeDjODOt9g844Hi05uTj5UhOXKQ3cOUJ+WSxnJ7IDJRZTRb9?=
 =?us-ascii?Q?2hycs1M/PZ1kXbyUBam6pyvBeGLf9dGv9NZC98mq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dd2c7c7-b748-4efd-0e69-08dbbae1fd2e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 20:33:18.4937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QA555RXPz84LmWANl5PCYupG2gXjgnQ6wHv7zKgEWs4RHZNdtqb1SLLQoHWWVKO1HCO6Y/kTPwvbXqM56NoBWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7168
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: remove inlines from
 i915_gem_execbuffer.c
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 21, 2023 at 07:06:37PM +0300, Jani Nikula wrote:
> Just let the compiler decide what's best. Turns out absolutely nothing
> changes in the output with the inlines removed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> ---
> 
> The same should really be done for most inlines in .c files. *wink wink*

Indeed!

> ---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 7d04ec740fd1..683fd8d3151c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -321,7 +321,7 @@ static int eb_pin_engine(struct i915_execbuffer *eb, bool throttle);
>  static void eb_unpin_engine(struct i915_execbuffer *eb);
>  static void eb_capture_release(struct i915_execbuffer *eb);
>  
> -static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
> +static bool eb_use_cmdparser(const struct i915_execbuffer *eb)
>  {
>  	return intel_engine_requires_cmd_parser(eb->context->engine) ||
>  		(intel_engine_using_cmd_parser(eb->context->engine) &&
> @@ -433,7 +433,7 @@ static u64 eb_pin_flags(const struct drm_i915_gem_exec_object2 *entry,
>  	return pin_flags;
>  }
>  
> -static inline int
> +static int
>  eb_pin_vma(struct i915_execbuffer *eb,
>  	   const struct drm_i915_gem_exec_object2 *entry,
>  	   struct eb_vma *ev)
> @@ -486,7 +486,7 @@ eb_pin_vma(struct i915_execbuffer *eb,
>  	return 0;
>  }
>  
> -static inline void
> +static void
>  eb_unreserve_vma(struct eb_vma *ev)
>  {
>  	if (unlikely(ev->flags & __EXEC_OBJECT_HAS_FENCE))
> @@ -548,7 +548,7 @@ eb_validate_vma(struct i915_execbuffer *eb,
>  	return 0;
>  }
>  
> -static inline bool
> +static bool
>  is_batch_buffer(struct i915_execbuffer *eb, unsigned int buffer_idx)
>  {
>  	return eb->args->flags & I915_EXEC_BATCH_FIRST ?
> @@ -628,8 +628,8 @@ eb_add_vma(struct i915_execbuffer *eb,
>  	return 0;
>  }
>  
> -static inline int use_cpu_reloc(const struct reloc_cache *cache,
> -				const struct drm_i915_gem_object *obj)
> +static int use_cpu_reloc(const struct reloc_cache *cache,
> +			 const struct drm_i915_gem_object *obj)
>  {
>  	if (!i915_gem_object_has_struct_page(obj))
>  		return false;
> @@ -1107,7 +1107,7 @@ static void eb_destroy(const struct i915_execbuffer *eb)
>  		kfree(eb->buckets);
>  }
>  
> -static inline u64
> +static u64
>  relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
>  		  const struct i915_vma *target)
>  {
> @@ -1128,19 +1128,19 @@ static void reloc_cache_init(struct reloc_cache *cache,
>  	cache->node.flags = 0;
>  }
>  
> -static inline void *unmask_page(unsigned long p)
> +static void *unmask_page(unsigned long p)
>  {
>  	return (void *)(uintptr_t)(p & PAGE_MASK);
>  }
>  
> -static inline unsigned int unmask_flags(unsigned long p)
> +static unsigned int unmask_flags(unsigned long p)
>  {
>  	return p & ~PAGE_MASK;
>  }
>  
>  #define KMAP 0x4 /* after CLFLUSH_FLAGS */
>  
> -static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
> +static struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
>  {
>  	struct drm_i915_private *i915 =
>  		container_of(cache, struct i915_execbuffer, reloc_cache)->i915;
> -- 
> 2.39.2
> 
