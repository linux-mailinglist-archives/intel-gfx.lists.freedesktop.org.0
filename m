Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 649562B5F5E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 13:51:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2456E1F4;
	Tue, 17 Nov 2020 12:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A5596E1F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 12:51:26 +0000 (UTC)
IronPort-SDR: KAARWL6yQQ2Gkc4KavKwX2Do+3usy8rCijHPBJYzEo7l9Wvi+QFiJ23eanNC6zO3eTt9QXCynb
 4LcyOewMd08Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="255628041"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="255628041"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 04:51:26 -0800
IronPort-SDR: d5GPxuOLgE4cMHfTf3Vs2xPziBrjgaqNUsZ0yy4cVuKn4ZwovA+au2lw5U/mB5/EduLHY9cJou
 3DnUJijF6f8g==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="544040013"
Received: from jgagatko-mobl1.ger.corp.intel.com (HELO [10.252.50.93])
 ([10.252.50.93])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 04:51:25 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
 <20201117113103.21480-7-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1d6c5192-cdf5-0550-1c98-acc4f3abca13@linux.intel.com>
Date: Tue, 17 Nov 2020 12:51:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201117113103.21480-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/28] drm/i915: Lift i915_request_show()
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


On 17/11/2020 11:30, Chris Wilson wrote:
> Extract i915_request_show for reuse in other request chain pretty
> printers.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 47 ++---------------------
>   drivers/gpu/drm/i915/gt/intel_lrc.c       |  2 +-
>   drivers/gpu/drm/i915/gt/intel_lrc.h       |  2 +-
>   drivers/gpu/drm/i915/i915_request.c       | 39 +++++++++++++++++++
>   drivers/gpu/drm/i915/i915_request.h       |  5 +++
>   5 files changed, 50 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 1ed84ee8ce41..c3bb2e9546e6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1294,45 +1294,6 @@ bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
>   	}
>   }
>   
> -static int print_sched_attr(const struct i915_sched_attr *attr,
> -			    char *buf, int x, int len)
> -{
> -	if (attr->priority == I915_PRIORITY_INVALID)
> -		return x;
> -
> -	x += snprintf(buf + x, len - x,
> -		      " prio=%d", attr->priority);
> -
> -	return x;
> -}
> -
> -static void print_request(struct drm_printer *m,
> -			  struct i915_request *rq,
> -			  const char *prefix)
> -{
> -	const char *name = rq->fence.ops->get_timeline_name(&rq->fence);
> -	char buf[80] = "";
> -	int x = 0;
> -
> -	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
> -
> -	drm_printf(m, "%s %llx:%llx%s%s %s @ %dms: %s\n",
> -		   prefix,
> -		   rq->fence.context, rq->fence.seqno,
> -		   i915_request_completed(rq) ? "!" :
> -		   i915_request_started(rq) ? "*" :
> -		   !i915_sw_fence_signaled(&rq->semaphore) ? "&" :
> -		   "",
> -		   test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
> -			    &rq->fence.flags) ? "+" :
> -		   test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
> -			    &rq->fence.flags) ? "-" :
> -		   "",
> -		   buf,
> -		   jiffies_to_msecs(jiffies - rq->emitted_jiffies),
> -		   name);
> -}
> -
>   static struct intel_timeline *get_timeline(struct i915_request *rq)
>   {
>   	struct intel_timeline *tl;
> @@ -1530,7 +1491,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>   					intel_context_is_banned(rq->context) ? "*" : "");
>   			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
>   			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
> -			print_request(m, rq, hdr);
> +			i915_request_show(m, rq, hdr);
>   		}
>   		for (port = execlists->pending; (rq = *port); port++) {
>   			char hdr[160];
> @@ -1544,7 +1505,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>   					intel_context_is_banned(rq->context) ? "*" : "");
>   			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
>   			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
> -			print_request(m, rq, hdr);
> +			i915_request_show(m, rq, hdr);
>   		}
>   		rcu_read_unlock();
>   		execlists_active_unlock_bh(execlists);
> @@ -1688,7 +1649,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
>   	if (rq) {
>   		struct intel_timeline *tl = get_timeline(rq);
>   
> -		print_request(m, rq, "\t\tactive ");
> +		i915_request_show(m, rq, "\t\tactive ");
>   
>   		drm_printf(m, "\t\tring->start:  0x%08x\n",
>   			   i915_ggtt_offset(rq->ring->vma));
> @@ -1726,7 +1687,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
>   		drm_printf(m, "\tDevice is asleep; skipping register dump\n");
>   	}
>   
> -	intel_execlists_show_requests(engine, m, print_request, 8);
> +	intel_execlists_show_requests(engine, m, i915_request_show, 8);
>   
>   	drm_printf(m, "HWSP:\n");
>   	hexdump(m, engine->status_page.addr, PAGE_SIZE);
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 52b84474f93a..a4b8c20d12a9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -5980,7 +5980,7 @@ int intel_virtual_engine_attach_bond(struct intel_engine_cs *engine,
>   void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   				   struct drm_printer *m,
>   				   void (*show_request)(struct drm_printer *m,
> -							struct i915_request *rq,
> +							const struct i915_request *rq,
>   							const char *prefix),
>   				   unsigned int max)
>   {
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
> index c2d287f25497..32e6e204f544 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.h
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
> @@ -106,7 +106,7 @@ void intel_lr_context_reset(struct intel_engine_cs *engine,
>   void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   				   struct drm_printer *m,
>   				   void (*show_request)(struct drm_printer *m,
> -							struct i915_request *rq,
> +							const struct i915_request *rq,
>   							const char *prefix),
>   				   unsigned int max);
>   
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 0e813819b041..cebe07a85625 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1855,6 +1855,45 @@ long i915_request_wait(struct i915_request *rq,
>   	return timeout;
>   }
>   
> +static int print_sched_attr(const struct i915_sched_attr *attr,
> +			    char *buf, int x, int len)
> +{
> +	if (attr->priority == I915_PRIORITY_INVALID)
> +		return x;
> +
> +	x += snprintf(buf + x, len - x,
> +		      " prio=%d", attr->priority);
> +
> +	return x;
> +}
> +
> +void i915_request_show(struct drm_printer *m,
> +		       const struct i915_request *rq,
> +		       const char *prefix)
> +{
> +	const char *name = rq->fence.ops->get_timeline_name((struct dma_fence *)&rq->fence);
> +	char buf[80] = "";
> +	int x = 0;
> +
> +	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
> +
> +	drm_printf(m, "%s %llx:%llx%s%s %s @ %dms: %s\n",

$ grep "llx:%lld" . -r | wc -l
20
$ grep "llx:%llx" . -r | wc -l
3

Bonus points if you make the seqno lld making it 21 to 2, one step 
closer to bliss. ;)

> +		   prefix,
> +		   rq->fence.context, rq->fence.seqno,
> +		   i915_request_completed(rq) ? "!" :
> +		   i915_request_started(rq) ? "*" :
> +		   !i915_sw_fence_signaled(&rq->semaphore) ? "&" :
> +		   "",
> +		   test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
> +			    &rq->fence.flags) ? "+" :
> +		   test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
> +			    &rq->fence.flags) ? "-" :
> +		   "",
> +		   buf,
> +		   jiffies_to_msecs(jiffies - rq->emitted_jiffies),
> +		   name);
> +}
> +
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>   #include "selftests/mock_request.c"
>   #include "selftests/i915_request.c"
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 16b721080195..09609071b725 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -43,6 +43,7 @@
>   
>   struct drm_file;
>   struct drm_i915_gem_object;
> +struct drm_printer;
>   struct i915_request;
>   
>   struct i915_capture_list {
> @@ -369,6 +370,10 @@ long i915_request_wait(struct i915_request *rq,
>   #define I915_WAIT_PRIORITY	BIT(1) /* small priority bump for the request */
>   #define I915_WAIT_ALL		BIT(2) /* used by i915_gem_object_wait() */
>   
> +void i915_request_show(struct drm_printer *m,
> +		       const struct i915_request *rq,
> +		       const char *prefix);
> +
>   static inline bool i915_request_signaled(const struct i915_request *rq)
>   {
>   	/* The request may live longer than its HWSP, so check flags first! */
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
