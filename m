Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0337A2C2E27
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 18:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61BFA6E4C5;
	Tue, 24 Nov 2020 17:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48F0B6E4C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 17:13:07 +0000 (UTC)
IronPort-SDR: NivaqmbGES643rO7tgb7H0m9jTK8BwyLRp1u2RdGPO7zInjDknHWZaxifx07TrPEUtbfdp/B+9
 2Q9jti/MaxkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="169419721"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="169419721"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 09:13:06 -0800
IronPort-SDR: ff+5NRp5iYsWZa0SfZLkaj4R5mYInNwwiaVDspIKQ42s5rzXbm+rtzuErW03bB3YxU2L6rsLH2
 3E1XRQAkGlnw==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="546909528"
Received: from ipilchin-mobl1.ger.corp.intel.com (HELO [10.254.159.60])
 ([10.254.159.60])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 09:13:05 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201124114219.29020-1-chris@chris-wilson.co.uk>
 <20201124114219.29020-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a94f4727-84b2-8a3d-d4a1-eeeae0c369db@linux.intel.com>
Date: Tue, 24 Nov 2020 17:13:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201124114219.29020-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/16] drm/i915/gt: Decouple completed
 requests on unwind
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
> Since the introduction of preempt-to-busy, requests can complete in the
> background, even while they are not on the engine->active.requests list.
> As such, the engine->active.request list itself is not in strict
> retirement order, and we have to scan the entire list while unwinding to
> not miss any. However, if the request is completed we currently leave it
> on the list [until retirement], but we could just as simply remove it
> and stop treating it as active. We would only have to then traverse it
> once while unwinding in quick succession.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 6 ++++--
>   drivers/gpu/drm/i915/i915_request.c | 3 ++-
>   2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 30aa59fb7271..cf11cbac241b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1116,8 +1116,10 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
>   	list_for_each_entry_safe_reverse(rq, rn,
>   					 &engine->active.requests,
>   					 sched.link) {
> -		if (i915_request_completed(rq))
> -			continue; /* XXX */
> +		if (i915_request_completed(rq)) {
> +			list_del_init(&rq->sched.link);
> +			continue;
> +		}
>   
>   		__i915_request_unsubmit(rq);
>   
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 8d7d29c9e375..a9db1376b996 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -321,7 +321,8 @@ bool i915_request_retire(struct i915_request *rq)
>   	 * after removing the breadcrumb and signaling it, so that we do not
>   	 * inadvertently attach the breadcrumb to a completed request.
>   	 */
> -	remove_from_engine(rq);
> +	if (!list_empty(&rq->sched.link))
> +		remove_from_engine(rq);

The list_empty check is unlocked so is list_del_init in 
remove_from_engine safe on potentially already unlinked request or it 
needs to re-check under the lock?

Regards,

Tvrtko

>   	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
>   
>   	__list_del_entry(&rq->link); /* poison neither prev/next (RCU walks) */
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
