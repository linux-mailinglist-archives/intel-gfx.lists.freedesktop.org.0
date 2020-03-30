Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8398198082
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 18:09:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B846E433;
	Mon, 30 Mar 2020 16:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 418F36E433
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 16:09:13 +0000 (UTC)
IronPort-SDR: dQsFLxrgvOP3HsgwBGtKDlXyTZl+y6tc8671tbFpxgNoWAY4CmACMpeRIcgoS6mm90X7tlPpdl
 owgf1woqe6Kw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 09:09:12 -0700
IronPort-SDR: 7JmpjAPa8SZpHa3H7XxotGWoCeR1Si9xO/Jm2pn2OXGukwnLOsaArQRVgf6y7NCfhhzdXog7iA
 uYDBAqkKGKlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="237393896"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 30 Mar 2020 09:09:11 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6ED145C0C01; Mon, 30 Mar 2020 19:07:34 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200327112212.16046-1-chris@chris-wilson.co.uk>
References: <20200327112212.16046-1-chris@chris-wilson.co.uk>
Date: Mon, 30 Mar 2020 19:07:34 +0300
Message-ID: <87zhbxq115.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Allow for different modes of
 interruptible i915_active_wait
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Allow some users the discretion to not immediately return on a normal
> signal. Hopefully, they will opt to use TASK_KILLABLE instead.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_active.c           |  6 ++++--
>  drivers/gpu/drm/i915/i915_active.h           |  6 +++++-
>  drivers/gpu/drm/i915/selftests/i915_active.c | 10 +++++-----
>  3 files changed, 14 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index a0d31f7bfb42..7b685032cc1e 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -496,7 +496,7 @@ static int flush_lazy_signals(struct i915_active *ref)
>  	return err;
>  }
>  
> -int i915_active_wait(struct i915_active *ref)
> +int __i915_active_wait(struct i915_active *ref, int state)
>  {
>  	int err;

minor gripe: s/state/task_state

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  
> @@ -511,7 +511,9 @@ int i915_active_wait(struct i915_active *ref)
>  	if (err)
>  		return err;
>  
> -	if (wait_var_event_interruptible(ref, i915_active_is_idle(ref)))
> +	if (!i915_active_is_idle(ref) &&
> +	    ___wait_var_event(ref, i915_active_is_idle(ref),
> +			      state, 0, 0, schedule()))
>  		return -EINTR;
>  
>  	flush_work(&ref->work);
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index b3282ae7913c..4f9aa7bab514 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -181,7 +181,11 @@ static inline bool i915_active_has_exclusive(struct i915_active *ref)
>  	return rcu_access_pointer(ref->excl.fence);
>  }
>  
> -int i915_active_wait(struct i915_active *ref);
> +int __i915_active_wait(struct i915_active *ref, int state);
> +static inline int i915_active_wait(struct i915_active *ref)
> +{
> +	return __i915_active_wait(ref, TASK_INTERRUPTIBLE);
> +}
>  
>  int i915_sw_fence_await_active(struct i915_sw_fence *fence,
>  			       struct i915_active *ref,
> diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
> index 54080fb4af4b..4002c984c2e0 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_active.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_active.c
> @@ -153,7 +153,7 @@ static int live_active_wait(void *arg)
>  	if (IS_ERR(active))
>  		return PTR_ERR(active);
>  
> -	i915_active_wait(&active->base);
> +	__i915_active_wait(&active->base, TASK_UNINTERRUPTIBLE);
>  	if (!READ_ONCE(active->retired)) {
>  		struct drm_printer p = drm_err_printer(__func__);
>  
> @@ -228,11 +228,11 @@ static int live_active_barrier(void *arg)
>  	}
>  
>  	i915_active_release(&active->base);
> +	if (err)
> +		goto out;
>  
> -	if (err == 0)
> -		err = i915_active_wait(&active->base);
> -
> -	if (err == 0 && !READ_ONCE(active->retired)) {
> +	__i915_active_wait(&active->base, TASK_UNINTERRUPTIBLE);
> +	if (!READ_ONCE(active->retired)) {
>  		pr_err("i915_active not retired after flushing barriers!\n");
>  		err = -EINVAL;
>  	}
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
