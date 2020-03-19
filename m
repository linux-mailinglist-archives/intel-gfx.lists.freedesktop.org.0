Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D15E18B864
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 14:53:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E196E096;
	Thu, 19 Mar 2020 13:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3CF16E096
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 13:53:39 +0000 (UTC)
IronPort-SDR: k7bIakHR/Rpsfhxjo/5gQF8uAfXgt/1pNsov4gBe9wBQs9N0MsvFkz8d4jvkQyYne1BvmOBAJg
 k1TT9fGp9xqA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 06:53:38 -0700
IronPort-SDR: ZwSch/uYGCC+QZav2qBRYhgYFZ3UPwZ1tN6bZt2ZPyRneer8FYrCsc1P4Vm/ZYzqnKOxS+TlsQ
 VKVAI7AFrkIw==
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="291631571"
Received: from amgotede-mobl.ger.corp.intel.com (HELO [10.254.158.140])
 ([10.254.158.140])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 06:53:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b324ad7c-5355-4242-6d61-4769605386e2@linux.intel.com>
Date: Thu, 19 Mar 2020 13:53:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200319091943.7815-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Prefer '%ps' for printing
 function symbol names
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


On 19/03/2020 09:19, Chris Wilson wrote:
> %pS includes the offset, which is useful for return addresses but noise
> when we are pretty printing a known (and expected) function entry point.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_sw_fence.c          | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_active.c  | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_request.c | 2 +-
>   3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> index a3d38e089b6e..7daf81f55c90 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> @@ -421,7 +421,7 @@ static void timer_i915_sw_fence_wake(struct timer_list *t)
>   	if (!fence)
>   		return;
>   
> -	pr_notice("Asynchronous wait on fence %s:%s:%llx timed out (hint:%pS)\n",
> +	pr_notice("Asynchronous wait on fence %s:%s:%llx timed out (hint:%ps)\n",
>   		  cb->dma->ops->get_driver_name(cb->dma),
>   		  cb->dma->ops->get_timeline_name(cb->dma),
>   		  cb->dma->seqno,
> diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
> index 68bbb1580162..54080fb4af4b 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_active.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_active.c
> @@ -277,7 +277,7 @@ static struct intel_engine_cs *node_to_barrier(struct active_node *it)
>   
>   void i915_active_print(struct i915_active *ref, struct drm_printer *m)
>   {
> -	drm_printf(m, "active %pS:%pS\n", ref->active, ref->retire);
> +	drm_printf(m, "active %ps:%ps\n", ref->active, ref->retire);
>   	drm_printf(m, "\tcount: %d\n", atomic_read(&ref->count));
>   	drm_printf(m, "\tpreallocated barriers? %s\n",
>   		   yesno(!llist_empty(&ref->preallocated_barriers)));
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index f89d9c42f1fa..7ac9616de9d8 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -1233,7 +1233,7 @@ static int live_parallel_engines(void *arg)
>   		struct igt_live_test t;
>   		unsigned int idx;
>   
> -		snprintf(name, sizeof(name), "%pS", fn);
> +		snprintf(name, sizeof(name), "%ps", fn);
>   		err = igt_live_test_begin(&t, i915, __func__, name);
>   		if (err)
>   			break;
> 

Reviewed-by: Tvrtko ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
