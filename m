Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E783018F2CF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 11:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7EF89E86;
	Mon, 23 Mar 2020 10:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 348E789E86
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 10:29:47 +0000 (UTC)
IronPort-SDR: dJyVebzUx0EOrKQNzzOTDpQJF3SWn1NfxdMu9A8xnMR7NJ8wVuEH1oAWbf4sYey7SdZSLD4S8r
 PL+z3L6PpHoQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 03:29:44 -0700
IronPort-SDR: rKiNLw62xYF4ia44Vd44OjR5IYQL+wqxEPixsTIPAv0pBqTPf+Cx7oWA+ZzV2dROltNNDVybR9
 BPR9A7vdk2Ig==
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="419456764"
Received: from unknown (HELO [10.252.47.179]) ([10.252.47.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 03:29:43 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200323092841.22240-1-chris@chris-wilson.co.uk>
 <20200323092841.22240-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <92c0e04a-6619-42df-6150-5d815a2781fe@linux.intel.com>
Date: Mon, 23 Mar 2020 10:29:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200323092841.22240-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915: Rely on direct submission to
 the queue
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


On 23/03/2020 09:28, Chris Wilson wrote:
> Drop the pretense of kicking the tasklet (used only for the defunct guc
> submission backend, it should just take ownership of the submit!) and so
> remove the bh-kicking from around submission.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 --
>   drivers/gpu/drm/i915/gt/intel_lrc.c            | 5 +----
>   drivers/gpu/drm/i915/i915_request.c            | 2 --
>   3 files changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 36d069504836..c2bd5accde0c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2348,9 +2348,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
>   		__i915_request_skip(rq);
>   	}
>   
> -	local_bh_disable();
>   	__i915_request_queue(rq, &attr);
> -	local_bh_enable(); /* Kick the execlists tasklet if just scheduled */
>   
>   	/* Try to clean up the client's timeline after submitting the request */
>   	if (prev)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index f09dd87324b9..210f60e14ef4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2891,10 +2891,7 @@ static void __submit_queue_imm(struct intel_engine_cs *engine)
>   	if (reset_in_progress(execlists))
>   		return; /* defer until we restart the engine following reset */
>   
> -	if (execlists->tasklet.func == execlists_submission_tasklet)
> -		__execlists_submission_tasklet(engine);
> -	else
> -		tasklet_hi_schedule(&execlists->tasklet);
> +	__execlists_submission_tasklet(engine);
>   }
>   
>   static void submit_queue(struct intel_engine_cs *engine,
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index c0df71d7d0ff..3388c5b610c5 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1444,9 +1444,7 @@ void i915_request_add(struct i915_request *rq)
>   	if (list_empty(&rq->sched.signalers_list))
>   		attr.priority |= I915_PRIORITY_WAIT;
>   
> -	local_bh_disable();
>   	__i915_request_queue(rq, &attr);
> -	local_bh_enable(); /* Kick the execlists tasklet if just scheduled */
>   
>   	mutex_unlock(&tl->mutex);
>   }
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
