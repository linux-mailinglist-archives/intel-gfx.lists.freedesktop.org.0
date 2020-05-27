Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFAB1E39AC
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 08:51:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D8716E286;
	Wed, 27 May 2020 06:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF98B6E286
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 06:51:49 +0000 (UTC)
IronPort-SDR: L0vrVD7BqLb/KFzZr1cov1yxBZwVhv9oWO6aIJ7XkcAZzTOyoWeT8Jim3zNT273mriDuxQiVc/
 974uJ+nngS2Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 23:51:48 -0700
IronPort-SDR: YgC8K4lL5za3ulxKhq5vuJ6x/QuV1TbK7QWht+PqFEEoiDfueiPGfAztB53kjxRjtpWWdnEA+q
 IPtUqUMW8LdQ==
X-IronPort-AV: E=Sophos;i="5.73,440,1583222400"; d="scan'208";a="414097552"
Received: from gkazakev-mobl1.ger.corp.intel.com (HELO [10.214.254.180])
 ([10.214.254.180])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 23:51:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200526090753.11329-1-chris@chris-wilson.co.uk>
 <20200526090753.11329-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2f6be936-043d-23f7-873f-6c2228f2abe5@linux.intel.com>
Date: Wed, 27 May 2020 07:51:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200526090753.11329-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Do not schedule normal
 requests immediately along virtual
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/05/2020 10:07, Chris Wilson wrote:
> When we push a virtual request onto the HW, we update the rq->engine to
> point to the physical engine. A request that is then submitted by the
> user that waits upon the virtual engine, but along the physical engine
> in use, will then see that it is due to be submitted to the same engine
> and take a shortcut (and be queued without waiting for the completion
> fence). However, the virtual request may be preempted (either by higher
> priority users, or by timeslicing) and removed from the physical engine
> to be migrated over to one of its siblings. The dependent normal request
> however is oblivious to the removal of the virtual request and remains
> queued to execute on HW, believing that once it reaches the head of its
> queue all of its predecessors will have completed executing!
> 
> v2: Beware restriction of signal->execution_mask prior to submission.
> 
> Fixes: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")
> Testcase: igt/gem_exec_balancer/sliced
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.3+
> ---
>   drivers/gpu/drm/i915/i915_request.c | 25 +++++++++++++++++++++----
>   1 file changed, 21 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 33bbad623e02..0b07ccc7e9bc 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1237,6 +1237,25 @@ i915_request_await_execution(struct i915_request *rq,
>   	return 0;
>   }
>   
> +static int
> +await_request_submit(struct i915_request *to, struct i915_request *from)
> +{
> +	/*
> +	 * If we are waiting on a virtual engine, then it may be
> +	 * constrained to execute on a single engine *prior* to submission.
> +	 * When it is submitted, it will be first submitted to the virtual
> +	 * engine and then passed to the physical engine. We cannot allow
> +	 * the waiter to be submitted immediately to the physical engine
> +	 * as it may then bypass the virtual request.
> +	 */
> +	if (to->engine == READ_ONCE(from->engine))
> +		return i915_sw_fence_await_sw_fence_gfp(&to->submit,
> +							&from->submit,
> +							I915_FENCE_GFP);
> +	else
> +		return __i915_request_await_execution(to, from, NULL);

If I am following correctly this branch will be the virtual <-> physical 
or virtual <-> virtual dependency on the same physical engine. Why is 
await_execution sufficient in this case? Is there something preventing 
timeslicing between the two (not wanted right!) once from start 
execution (not finishes).

Regards,

Tvrtko

> +}
> +
>   static int
>   i915_request_await_request(struct i915_request *to, struct i915_request *from)
>   {
> @@ -1258,10 +1277,8 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
>   			return ret;
>   	}
>   
> -	if (to->engine == READ_ONCE(from->engine))
> -		ret = i915_sw_fence_await_sw_fence_gfp(&to->submit,
> -						       &from->submit,
> -						       I915_FENCE_GFP);
> +	if (is_power_of_2(to->execution_mask | READ_ONCE(from->execution_mask)))
> +		ret = await_request_submit(to, from);
>   	else
>   		ret = emit_semaphore_wait(to, from, I915_FENCE_GFP);
>   	if (ret < 0)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
