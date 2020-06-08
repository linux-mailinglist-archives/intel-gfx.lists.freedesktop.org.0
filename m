Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E7F1F13BF
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 09:44:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8039E89F8B;
	Mon,  8 Jun 2020 07:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E16F89F8B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 07:44:06 +0000 (UTC)
IronPort-SDR: 5AvPqIZ+9PCekeMR5UiBeJGqN/x/eYHj/fnbsFq+Sg3z6JNIV0Ok/lNkQ1xQa8tGTg83s3R8y2
 veefsIN76lQA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 00:44:05 -0700
IronPort-SDR: RASg9PiHV+XNKF1bhYYl+22Pkz0dybZJH0iz439OyNYVj5i1GE1Em9HAShesqjbpTl6WcSImVi
 LGDJXS6V3vBw==
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="417948498"
Received: from unknown (HELO [10.249.47.110]) ([10.249.47.110])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 00:44:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9f995ee6-5f93-088d-47d6-5431076de596@linux.intel.com>
Date: Mon, 8 Jun 2020 08:44:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/28] drm/i915: Adjust the sentinel assert
 to match implementation
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


On 07/06/2020 23:20, Chris Wilson wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Sentinels are supposed to be last reqeusts in the elsp queue, not the
> only one, so adjust the assert accordingly.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 14 +++-----------
>   1 file changed, 3 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index d55a5e0466e5..db8a170b0e5c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1635,9 +1635,9 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
>   		ccid = ce->lrc.ccid;
>   
>   		/*
> -		 * Sentinels are supposed to be lonely so they flush the
> -		 * current exection off the HW. Check that they are the
> -		 * only request in the pending submission.
> +		 * Sentinels are supposed to be the last request so they flush
> +		 * the current exection off the HW. Check that they are the only
> +		 * request in the pending submission.
>   		 */
>   		if (sentinel) {
>   			GEM_TRACE_ERR("%s: context:%llx after sentinel in pending[%zd]\n",
> @@ -1646,15 +1646,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
>   				      port - execlists->pending);
>   			return false;
>   		}
> -
>   		sentinel = i915_request_has_sentinel(rq);

FWIW I was changing it to "sentinel |= ..." so it keeps working if we 
decide to use more than 2 elsp ports on Icelake one day.

Regards,

Tvrtko

> -		if (sentinel && port != execlists->pending) {
> -			GEM_TRACE_ERR("%s: sentinel context:%llx not in prime position[%zd]\n",
> -				      engine->name,
> -				      ce->timeline->fence_context,
> -				      port - execlists->pending);
> -			return false;
> -		}
>   
>   		/* Hold tightly onto the lock to prevent concurrent retires! */
>   		if (!spin_trylock_irqsave(&rq->lock, flags))
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
