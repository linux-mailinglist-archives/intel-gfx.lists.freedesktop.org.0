Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A19591E7F66
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 15:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E476E8FE;
	Fri, 29 May 2020 13:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592F66E8FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 13:57:31 +0000 (UTC)
IronPort-SDR: N/w9ufDqO3rYYZeorfpBRDYtG35xq3aUp7kRymaNSUXlyyRbXz9yc8WN2EDSQqloLQb5LbwLh8
 qjr4eGyZky5g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 06:57:30 -0700
IronPort-SDR: lIHOvhSmUqZ2antAAFNTUU2trEynXh/Rt51h45HfxOV3yqSxDzO8yvOZk9rU6FSg1SQiTa8oGD
 EQj68RMeP62A==
X-IronPort-AV: E=Sophos;i="5.73,448,1583222400"; d="scan'208";a="443396709"
Received: from esperlin-mobl.ger.corp.intel.com (HELO [10.214.231.68])
 ([10.214.231.68])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 06:57:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200529085809.23691-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <29f8bbf0-08eb-47a6-d8ed-f6310b7a7598@linux.intel.com>
Date: Fri, 29 May 2020 14:57:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200529085809.23691-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add a few asserts around
 handling of i915_request_is_active()
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


On 29/05/2020 09:58, Chris Wilson wrote:
> Let's assert that we only call the execute callbacks on making the
> request active, and that we do not execute the request without calling
> the callbacks.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 0d810a62ff46..e5aba6824e26 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -192,6 +192,7 @@ static void __notify_execute_cb(struct i915_request *rq)
>   
>   	lockdep_assert_held(&rq->lock);
>   
> +	GEM_BUG_ON(!i915_request_is_active(rq));
>   	if (llist_empty(&rq->execute_cb))
>   		return;
>   
> @@ -518,15 +519,15 @@ bool __i915_request_submit(struct i915_request *request)
>   	if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags)) {
>   		list_move_tail(&request->sched.link, &engine->active.requests);
>   		clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
> +		__notify_execute_cb(request);
>   	}
> +	GEM_BUG_ON(!llist_empty(&request->execute_cb));
>   
>   	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
>   	    !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &request->fence.flags) &&
>   	    !i915_request_enable_breadcrumb(request))
>   		intel_engine_signal_breadcrumbs(engine);
>   
> -	__notify_execute_cb(request);
> -
>   	spin_unlock(&request->lock);
>   
>   	return result;
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
