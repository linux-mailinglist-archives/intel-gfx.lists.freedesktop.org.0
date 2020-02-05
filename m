Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7475A153525
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 17:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA7CD6E9C4;
	Wed,  5 Feb 2020 16:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3CF36E9C4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 16:22:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 08:22:38 -0800
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="224699930"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 05 Feb 2020 08:22:37 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200205121147.1834445-1-chris@chris-wilson.co.uk>
 <20200205121313.1834548-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <637ae604-f50d-7436-eb0b-e69d555e401f@linux.intel.com>
Date: Wed, 5 Feb 2020 16:22:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200205121313.1834548-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Don't leak non-persistent
 requests on changing engines
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



On 05/02/2020 12:13, Chris Wilson wrote:
> If we have a set of active engines marked as being non-persistent, we
> lose track of those if the user replaces those engines with
> I915_CONTEXT_PARAM_ENGINES. As part of our uABI contract is that
> non-persistent requests are terminated if they are no longer being
> tracked by the user's context (in order to prevent a lost request
> causing an untracked and so unstoppable GPU hang), we need to apply the
> same context cancellation upon changing engines.
> 
> Fixes: a0e047156cde ("drm/i915/gem: Make context persistence optional")
> Testcase: XXX
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 52a749691a8d..20f1d3e0221f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1624,11 +1624,18 @@ set_engines(struct i915_gem_context *ctx,
>   
>   replace:
>   	mutex_lock(&ctx->engines_mutex);
> +
> +	/* Flush stale requests off the old engines if required */
> +	if (!i915_gem_context_is_persistent(ctx) ||
> +	    !i915_modparams.enable_hangcheck)
> +		kill_context(ctx);

Is the negative effect of this is legit contexts can't keep submitting 
and changing the map? Only if PREEMPT_TIMEOUT is disabled I think but 
still. Might break legitimate userspace. Not that I offer solutions.. :( 
Banning changing engines once context went non-persistent? That too can 
break someone.

Regards,

Tvrtko

> +
>   	if (args->size)
>   		i915_gem_context_set_user_engines(ctx);
>   	else
>   		i915_gem_context_clear_user_engines(ctx);
>   	set.engines = rcu_replace_pointer(ctx->engines, set.engines, 1);
> +
>   	mutex_unlock(&ctx->engines_mutex);
>   
>   	call_rcu(&set.engines->rcu, free_engines_rcu);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
