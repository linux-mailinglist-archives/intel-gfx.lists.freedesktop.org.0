Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E025914B30C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 11:52:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5106EDB4;
	Tue, 28 Jan 2020 10:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C44CF6EDB4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 10:52:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 02:52:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,373,1574150400"; d="scan'208";a="217580237"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 28 Jan 2020 02:52:38 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B80C25C1E0F; Tue, 28 Jan 2020 12:51:51 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200127231540.3302516-1-chris@chris-wilson.co.uk>
References: <20200127231540.3302516-1-chris@chris-wilson.co.uk>
Date: Tue, 28 Jan 2020 12:51:51 +0200
Message-ID: <87ftfzn9a0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Skip capturing errors from
 internal contexts
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> We don't want to report errors on the internal contexts to userspace,
> suppressing their own, so treat them as simulated errors. These mostly
> arise inside selftests and so are simulated anyway. For the rest, we can
> rely on the normal debug channels in CI.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 594341e27a47..0f67bef83106 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1228,7 +1228,7 @@ static bool record_context(struct i915_gem_context_coredump *e,
>  {
>  	struct i915_gem_context *ctx;
>  	struct task_struct *task;
> -	bool capture;
> +	bool simulated;
>  
>  	rcu_read_lock();
>  	ctx = rcu_dereference(rq->context->gem_context);
> @@ -1236,7 +1236,7 @@ static bool record_context(struct i915_gem_context_coredump *e,
>  		ctx = NULL;
>  	rcu_read_unlock();
>  	if (!ctx)
> -		return false;
> +		return true;
>  
>  	rcu_read_lock();
>  	task = pid_task(ctx->pid, PIDTYPE_PID);
> @@ -1250,10 +1250,10 @@ static bool record_context(struct i915_gem_context_coredump *e,
>  	e->guilty = atomic_read(&ctx->guilty_count);
>  	e->active = atomic_read(&ctx->active_count);
>  
> -	capture = i915_gem_context_no_error_capture(ctx);
> +	simulated = i915_gem_context_no_error_capture(ctx);
>  
>  	i915_gem_context_put(ctx);
> -	return capture;
> +	return simulated;
>  }
>  
>  struct intel_engine_capture_vma {
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
