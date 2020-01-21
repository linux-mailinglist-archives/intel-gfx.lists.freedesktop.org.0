Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BD9143BF0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 12:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DA66EC6E;
	Tue, 21 Jan 2020 11:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4849D6EC6E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 11:20:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 03:20:40 -0800
X-IronPort-AV: E=Sophos;i="5.70,345,1574150400"; d="scan'208";a="228787438"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO [10.252.10.247])
 ([10.252.10.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 21 Jan 2020 03:20:39 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200121100927.114886-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <df451345-5332-7e2f-be9b-76b37006dfe6@linux.intel.com>
Date: Tue, 21 Jan 2020 11:20:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200121100927.114886-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Reclaim hanging virtual
 request
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


On 21/01/2020 10:09, Chris Wilson wrote:
> If we encounter a hang on a virtual engine, as we process the hang the
> request may already have been moved back to the virtual engine (we are
> processing the hang on the physical engine). We need to reclaim the
> request from the virtual engine so that the locking is consistent and
> local to the real engine on which we will hold the request for error
> state capturing.
> 
> Fixes: 748317386afb ("drm/i915/execlists: Offline error capture")
> Testcase: igt/gem_exec_balancer/hang
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 20 ++++++++++++++++++++
>   1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 3a30767ff0c4..a0acf1898c1e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2582,6 +2582,26 @@ static void execlists_capture(struct intel_engine_cs *engine)
>   	cap->rq = active_request(cap->rq->context->timeline, cap->rq);
>   	GEM_BUG_ON(!cap->rq);
>   
> +	if (cap->rq->engine != engine) { /* preempted virtual engine */
> +		struct virtual_engine *ve = to_virtual_engine(cap->rq->engine);
> +		unsigned long flags;
> +
> +		/*
> +		 * An unsubmitted request along a virtual engine will
> +		 * remain on the active (this) engine until we are able
> +		 * to process the context switch away (and so mark the
> +		 * context as no longer in flight). That cannot have happened
> +		 * yet, otherwise we would not be hanging!
> +		 */
> +		spin_lock_irqsave(&ve->base.active.lock, flags);
> +		GEM_BUG_ON(intel_context_inflight(cap->rq->context) != engine);
> +		GEM_BUG_ON(ve->request != cap->rq);
> +		ve->request = NULL;
> +		spin_unlock_irqrestore(&ve->base.active.lock, flags);
> +
> +		cap->rq->engine = engine;
> +	}

Conceptually this I think belongs in execlists_hold, not capture. Since 
hold has the responsibility to hold correctly.

Then also, this is all about a race with __unwind_incomplete_requests, 
yes? If so would need to be done under the engine->active.lock or this 
can still happen between now and execlists_hold.

Regards,

Tvrtko

> +
>   	/*
>   	 * Remove the request from the execlists queue, and take ownership
>   	 * of the request. We pass it to our worker who will _slowly_ compress
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
