Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D4F3C2BE0
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 01:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D786E9B6;
	Fri,  9 Jul 2021 23:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD6D66E9AD;
 Fri,  9 Jul 2021 23:53:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="273628233"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="273628233"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 16:53:40 -0700
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="649672378"
Received: from johnharr-mobl1.amr.corp.intel.com (HELO [10.212.142.243])
 ([10.212.142.243])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 16:53:38 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-21-matthew.brost@intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <a11ab4d8-f376-a83e-bb53-4347536ce4eb@intel.com>
Date: Fri, 9 Jul 2021 16:53:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624070516.21893-21-matthew.brost@intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 20/47] drm/i915/guc: Disable semaphores when
 using GuC scheduling
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

On 6/24/2021 00:04, Matthew Brost wrote:
> Semaphores are an optimization and not required for basic GuC submission
> to work properly. Disable until we have time to do the implementation to
> enable semaphores and tune them for performance. Also long direction is
> just to delete semaphores from the i915 so another reason to not enable
> these for GuC submission.
>
> v2: Reword commit message
>
> Cc: John Harrison <john.c.harrison@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
I think the commit description does not really match the patch content. 
The description is valid but the 'disable' is done by simply not setting 
the enable flag (done in the execlist back end and presumably not done 
in the GuC back end). However, what the patch is actually doing seems to 
be fixing bugs with the 'are semaphores enabled' mechanism. I.e. 
correcting pieces of code that used semaphores without checking if they 
are enabled. And presumably this would be broken if someone tried to 
disable semaphores in execlist mode for any reason?

So I think keeping the existing comment text is fine but something 
should be added to explain the actual changes.

John.


> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 7720b8c22c81..5c07e6abf16a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -230,7 +230,8 @@ static void intel_context_set_gem(struct intel_context *ce,
>   		ce->timeline = intel_timeline_get(ctx->timeline);
>   
>   	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
> -	    intel_engine_has_timeslices(ce->engine))
> +	    intel_engine_has_timeslices(ce->engine) &&
> +	    intel_engine_has_semaphores(ce->engine))
>   		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
>   
>   	intel_context_set_watchdog_us(ce, ctx->watchdog.timeout_us);
> @@ -1938,7 +1939,8 @@ static int __apply_priority(struct intel_context *ce, void *arg)
>   	if (!intel_engine_has_timeslices(ce->engine))
>   		return 0;
>   
> -	if (ctx->sched.priority >= I915_PRIORITY_NORMAL)
> +	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
> +	    intel_engine_has_semaphores(ce->engine))
>   		intel_context_set_use_semaphores(ce);
>   	else
>   		intel_context_clear_use_semaphores(ce);

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
