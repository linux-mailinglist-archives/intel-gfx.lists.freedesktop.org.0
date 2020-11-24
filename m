Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5D12C2C9C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 17:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97B5D6E4AA;
	Tue, 24 Nov 2020 16:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7691E6E4AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 16:19:20 +0000 (UTC)
IronPort-SDR: TdT9MEpSqs7SqN0WCjgAgryUYzQzoSGueC57Jwk72lUqthrbgnJRe1N2gltwitYSdXMX85KE6E
 /b3s5lc94/Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="151813099"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="151813099"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 08:19:19 -0800
IronPort-SDR: Hm0kOORZ3Jv9WLXuqjsUnpUHCQZEJTnimFYEzTDiHO6Q/gpyPyWhNOXZR5sQ8Xu23vWCj5b2qw
 u7GtloBqIRLw==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="546888468"
Received: from ipilchin-mobl1.ger.corp.intel.com (HELO [10.254.159.60])
 ([10.254.159.60])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 08:19:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201124114219.29020-1-chris@chris-wilson.co.uk>
 <20201124114219.29020-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f1089ea3-bfa6-1290-f0bd-5214a36e257a@linux.intel.com>
Date: Tue, 24 Nov 2020 16:19:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201124114219.29020-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/16] drm/i915/gt: Move the breadcrumb to
 the signaler if completed upon cancel
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


On 24/11/2020 11:42, Chris Wilson wrote:
> If while we are cancelling the breadcrumb signaling, we find that the
> request is already completed, move it to the irq signaler and let it be
> signaled.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 20 ++++++++++++++++----
>   1 file changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index a24cc1ff08a0..f5f6feed0fa6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -363,6 +363,14 @@ void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
>   	kfree(b);
>   }
>   
> +static void irq_signal_request(struct i915_request *rq,
> +			       struct intel_breadcrumbs *b)
> +{
> +	if (__signal_request(rq) &&
> +	    llist_add(&rq->signal_node, &b->signaled_requests))
> +		irq_work_queue(&b->irq_work);
> +}
> +
>   static void insert_breadcrumb(struct i915_request *rq)
>   {
>   	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
> @@ -380,9 +388,7 @@ static void insert_breadcrumb(struct i915_request *rq)
>   	 * its signal completion.
>   	 */
>   	if (__request_completed(rq)) {
> -		if (__signal_request(rq) &&
> -		    llist_add(&rq->signal_node, &b->signaled_requests))
> -			irq_work_queue(&b->irq_work);
> +		irq_signal_request(rq, b);
>   		return;
>   	}
>   
> @@ -453,6 +459,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
>   
>   void i915_request_cancel_breadcrumb(struct i915_request *rq)
>   {
> +	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
>   	struct intel_context *ce = rq->context;
>   	bool release;
>   
> @@ -461,11 +468,16 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
>   
>   	spin_lock(&ce->signal_lock);
>   	list_del_rcu(&rq->signal_link);
> -	release = remove_signaling_context(rq->engine->breadcrumbs, ce);
> +	release = remove_signaling_context(b, ce);
>   	spin_unlock(&ce->signal_lock);
>   	if (release)
>   		intel_context_put(ce);
>   
> +	if (__request_completed(rq)) {
> +		irq_signal_request(rq, b);
> +		return;

This is a bit unintuitive - irq_signal_request does things conditionally 
based on the signaled flag, but here the return value is ignored and 
reference kept regardless. Which makes me wonder how can the combo of 
the two always dtrt. Because __request_completed is seqno based, which 
can happen before setting the signaled flag. Like if retire races with 
breadcrumbs. Am I missing something?

Regards,

Tvrtko

> +	}
> +
>   	i915_request_put(rq);
>   }
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
