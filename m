Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C109C41100A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 09:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CBC06E3E5;
	Mon, 20 Sep 2021 07:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF766E3E5;
 Mon, 20 Sep 2021 07:28:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="210161168"
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="210161168"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 00:28:17 -0700
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="473459185"
Received: from gbradyx-mobl2.ger.corp.intel.com (HELO [10.213.235.119])
 ([10.213.235.119])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 00:28:16 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210917233818.33659-1-matthew.brost@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Hugh Dickins <hughd@google.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8c906ac4-c6a3-ee45-970f-07679456fd18@linux.intel.com>
Date: Mon, 20 Sep 2021 08:28:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210917233818.33659-1-matthew.brost@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix blank screen booting crashes
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


On 18/09/2021 00:38, Matthew Brost wrote:
> From: Hugh Dickins <hughd@google.com>
> 
> 5.15-rc1 crashes with blank screen when booting up on two ThinkPads
> using i915.  Bisections converge convincingly, but arrive at different
> and surprising "culprits", none of them the actual culprit.

It is certainly surprising this patch crashed SNB and KBL.

How feasible would it be to make this code just not run when GuC is not 
used? Given the field it adds is called ce->guc_blocked it sounds like a 
natural and preferable thing to do... if possible.

> netconsole (with init_netconsole() hacked to call i915_init() when
> logging has started, instead of by module_init()) tells the story:
> 
> kernel BUG at drivers/gpu/drm/i915/i915_sw_fence.c:245!
> with RSI: ffffffff814d408b pointing to sw_fence_dummy_notify().
> I've been building with CONFIG_CC_OPTIMIZE_FOR_SIZE=y, and that
> function needs to be 4-byte aligned.
> 
> v2:
>   (Jani Nikula)
>    - Change BUG_ON to WARN_ON

However in this case the code would then go on and call into a wrong 
function offset which may be worse than a BUG_ON, no?

> 
> Fixes: 62eaf0ae217d ("drm/i915/guc: Support request cancellation")
> Signed-off-by: Hugh Dickins <hughd@google.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c | 1 +
>   drivers/gpu/drm/i915/i915_sw_fence.c    | 4 +++-
>   2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index ff637147b1a9..f02c2202da9d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -362,6 +362,7 @@ static int __intel_context_active(struct i915_active *active)
>   	return 0;
>   }
>   
> +__aligned(4)	/* Respect the I915_SW_FENCE_MASK */

Hugh suggested __i915_sw_fence_call which I think would be the right 
thing to do.

Regards,

Tvrtko

>   static int sw_fence_dummy_notify(struct i915_sw_fence *sf,
>   				 enum i915_sw_fence_notify state)
>   {
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> index c589a681da77..1217b124c1d0 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> @@ -14,8 +14,10 @@
>   
>   #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
>   #define I915_SW_FENCE_BUG_ON(expr) BUG_ON(expr)
> +#define I915_SW_FENCE_WARN_ON(expr) WARN_ON(expr)
>   #else
>   #define I915_SW_FENCE_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
> +#define I915_SW_FENCE_WARN_ON(expr) BUILD_BUG_ON_INVALID(expr)
>   #endif
>   
>   static DEFINE_SPINLOCK(i915_sw_fence_lock);
> @@ -242,7 +244,7 @@ void __i915_sw_fence_init(struct i915_sw_fence *fence,
>   			  const char *name,
>   			  struct lock_class_key *key)
>   {
> -	BUG_ON(!fn || (unsigned long)fn & ~I915_SW_FENCE_MASK);
> +	I915_SW_FENCE_WARN_ON(!fn || (unsigned long)fn & ~I915_SW_FENCE_MASK);
>   
>   	__init_waitqueue_head(&fence->wait, name, key);
>   	fence->flags = (unsigned long)fn;
> 
