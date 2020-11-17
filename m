Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4CB2B5FF9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 14:00:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E2DC6E1F7;
	Tue, 17 Nov 2020 13:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4726E1F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 13:00:45 +0000 (UTC)
IronPort-SDR: 01dx7qBMEDGkzn0r4Xc1JmLPTnDHU8w671aJmTyDsGiTy7P1sru+uUlHjkIrtOTHzpOZ8GwRSz
 eXGmszmifqvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="171088653"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="171088653"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 05:00:41 -0800
IronPort-SDR: 0PMeYmxVPgXQ8ndFVuj/vBRLNDELXIOJGmXIZdeU/ympzwcWM48j29unl3t5062MTKSw8kisAE
 7aGhtTl3oF3g==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="544042323"
Received: from jgagatko-mobl1.ger.corp.intel.com (HELO [10.252.50.93])
 ([10.252.50.93])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 05:00:40 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
 <20201117113103.21480-9-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f4a5e182-11be-9406-b72b-08cb2f514517@linux.intel.com>
Date: Tue, 17 Nov 2020 13:00:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201117113103.21480-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/28] drm/i915: Lift waiter/signaler
 iterators
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


On 17/11/2020 11:30, Chris Wilson wrote:
> Lift the list iteration defines for traversing the signaler/waiter lists
> into i915_scheduler.h for reuse.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c         | 10 ----------
>   drivers/gpu/drm/i915/i915_scheduler_types.h | 10 ++++++++++
>   2 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a4b8c20d12a9..17cb7060eb29 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1836,16 +1836,6 @@ static void virtual_xfer_context(struct virtual_engine *ve,
>   	}
>   }
>   
> -#define for_each_waiter(p__, rq__) \
> -	list_for_each_entry_lockless(p__, \
> -				     &(rq__)->sched.waiters_list, \
> -				     wait_link)
> -
> -#define for_each_signaler(p__, rq__) \
> -	list_for_each_entry_rcu(p__, \
> -				&(rq__)->sched.signalers_list, \
> -				signal_link)
> -
>   static void defer_request(struct i915_request *rq, struct list_head * const pl)
>   {
>   	LIST_HEAD(list);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index f72e6c397b08..343ed44d5ed4 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -81,4 +81,14 @@ struct i915_dependency {
>   #define I915_DEPENDENCY_WEAK		BIT(2)
>   };
>   
> +#define for_each_waiter(p__, rq__) \
> +	list_for_each_entry_lockless(p__, \
> +				     &(rq__)->sched.waiters_list, \
> +				     wait_link)
> +
> +#define for_each_signaler(p__, rq__) \
> +	list_for_each_entry_rcu(p__, \
> +				&(rq__)->sched.signalers_list, \
> +				signal_link)
> +
>   #endif /* _I915_SCHEDULER_TYPES_H_ */
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
