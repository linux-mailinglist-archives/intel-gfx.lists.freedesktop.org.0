Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F4119F4F7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 13:45:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54BD589DBF;
	Mon,  6 Apr 2020 11:45:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F11EB89DBF
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 11:45:10 +0000 (UTC)
IronPort-SDR: izfBCbIGr6wV6ZOszbA7xzS0h7d0m9a659RTirWcPVfKhPSMkadY3Y76TJ6b/fhzy7HyPvTlDK
 3XZjxne+7hVQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 04:45:10 -0700
IronPort-SDR: qHU/okb7m8mBkCM7cr1/4WylnujOh9/s3xEerUiFizBzHu0rqxYirMUUR9kDBJK69RPGMaQCwC
 NMnXmU7KGanA==
X-IronPort-AV: E=Sophos;i="5.72,350,1580803200"; d="scan'208";a="285861008"
Received: from nlevi-mobl.ger.corp.intel.com (HELO [10.251.172.194])
 ([10.251.172.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 04:45:08 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200406091254.17675-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4b025f3f-852b-ed5d-ec24-dd7dd7eb96b4@linux.intel.com>
Date: Mon, 6 Apr 2020 12:45:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200406091254.17675-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Make exclusive awaits on
 i915_active optional
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


On 06/04/2020 10:12, Chris Wilson wrote:
> Later use will require asynchronous waits on the active timelines, but
> will not utilize an async wait on the exclusive channel. Make the await
> on the exclusive fence explicit in the selection flags.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_active.c | 7 ++++---
>   drivers/gpu/drm/i915/i915_active.h | 3 ++-
>   drivers/gpu/drm/i915/i915_perf.c   | 2 +-
>   drivers/gpu/drm/i915/i915_vma.c    | 3 ++-
>   4 files changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 5df7704369fd..d5e24be759f7 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -549,14 +549,15 @@ static int await_active(struct i915_active *ref,
>   {
>   	int err = 0;
>   
> -	/* We must always wait for the exclusive fence! */
> -	if (rcu_access_pointer(ref->excl.fence)) {
> +	if (flags & I915_ACTIVE_AWAIT_EXCL &&
> +	    rcu_access_pointer(ref->excl.fence)) {
>   		err = __await_active(&ref->excl, fn, arg);
>   		if (err)
>   			return err;
>   	}
>   
> -	if (flags & I915_ACTIVE_AWAIT_ALL && i915_active_acquire_if_busy(ref)) {
> +	if (flags & I915_ACTIVE_AWAIT_ACTIVE &&
> +	    i915_active_acquire_if_busy(ref)) {
>   		struct active_node *it, *n;
>   
>   		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index b526d310a585..ffafaa78c494 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -193,7 +193,8 @@ int i915_sw_fence_await_active(struct i915_sw_fence *fence,
>   int i915_request_await_active(struct i915_request *rq,
>   			      struct i915_active *ref,
>   			      unsigned int flags);
> -#define I915_ACTIVE_AWAIT_ALL BIT(0)
> +#define I915_ACTIVE_AWAIT_EXCL BIT(0)
> +#define I915_ACTIVE_AWAIT_ACTIVE BIT(1)
>   
>   int i915_active_acquire(struct i915_active *ref);
>   bool i915_active_acquire_if_busy(struct i915_active *ref);
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 2f78b147bb2d..5cde3e4e7be6 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1948,7 +1948,7 @@ emit_oa_config(struct i915_perf_stream *stream,
>   	if (!IS_ERR_OR_NULL(active)) {
>   		/* After all individual context modifications */
>   		err = i915_request_await_active(rq, active,
> -						I915_ACTIVE_AWAIT_ALL);
> +						I915_ACTIVE_AWAIT_ACTIVE);
>   		if (err)
>   			goto err_add_request;
>   
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 6cc2d9c44015..f0383a68c981 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1167,7 +1167,8 @@ int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
>   	GEM_BUG_ON(!i915_vma_is_pinned(vma));
>   
>   	/* Wait for the vma to be bound before we start! */
> -	err = i915_request_await_active(rq, &vma->active, 0);
> +	err = i915_request_await_active(rq, &vma->active,
> +					I915_ACTIVE_AWAIT_EXCL);
>   	if (err)
>   		return err;
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
