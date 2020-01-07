Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F1E13249A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 12:15:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8215389DD2;
	Tue,  7 Jan 2020 11:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E4589DD2
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 11:15:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 03:15:42 -0800
X-IronPort-AV: E=Sophos;i="5.69,406,1571727600"; d="scan'208";a="215516851"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO [10.251.83.12])
 ([10.251.83.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 Jan 2020 03:15:41 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191222233558.2201901-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bffc4098-183d-59af-cf74-09e96bb4063d@linux.intel.com>
Date: Tue, 7 Jan 2020 11:15:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191222233558.2201901-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark the GEM context link as RCU
 protected
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


On 22/12/2019 23:35, Chris Wilson wrote:
> The only protection for intel_context.gem_cotext is granted by RCU, so
> annotate it as a rcu protected pointer and carefully dereference it in
> the few occasions we need to use it.
> 
> Fixes: 9f3ccd40acf4 ("drm/i915: Drop GEM context as a direct link from i915_request")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  5 ++-
>   drivers/gpu/drm/i915/gt/intel_context_types.h |  2 +-
>   drivers/gpu/drm/i915/gt/intel_reset.c         | 26 +++++++++---
>   .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
>   drivers/gpu/drm/i915/i915_gpu_error.c         | 40 ++++++++++++-------
>   drivers/gpu/drm/i915/i915_request.c           |  6 +--
>   drivers/gpu/drm/i915/i915_request.h           |  8 ++++
>   7 files changed, 62 insertions(+), 27 deletions(-)
> 

[snip]

>   
>   static void engine_record_requests(struct intel_engine_cs *engine,
> @@ -1298,28 +1304,34 @@ static void error_record_engine_execlists(const struct intel_engine_cs *engine,
>   static bool record_context(struct drm_i915_error_context *e,
>   			   const struct i915_request *rq)
>   {
> -	const struct i915_gem_context *ctx = rq->context->gem_context;
> +	struct i915_gem_context *ctx;
> +	struct task_struct *task;
> +	bool capture;
>   
> +	rcu_read_lock();
> +	ctx = rcu_dereference(rq->context->gem_context);
> +	if (ctx && !kref_get_unless_zero(&ctx->ref))
> +		ctx = NULL;
> +	rcu_read_unlock();
>   	if (!ctx)
>   		return false;
>   
> -	if (ctx->pid) {
> -		struct task_struct *task;
> -
> -		rcu_read_lock();
> -		task = pid_task(ctx->pid, PIDTYPE_PID);
> -		if (task) {
> -			strcpy(e->comm, task->comm);
> -			e->pid = task->pid;
> -		}
> -		rcu_read_unlock();
> +	rcu_read_lock();
> +	task = pid_task(ctx->pid, PIDTYPE_PID);
> +	if (task) {
> +		strcpy(e->comm, task->comm);
> +		e->pid = task->pid;
>   	}
> +	rcu_read_unlock();

Why is this rcu_read_lock section needed? The first one obtained the 
reference to the context so should be good.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
