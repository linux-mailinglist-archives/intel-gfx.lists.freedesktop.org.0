Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08567223B17
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 14:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9386E14B;
	Fri, 17 Jul 2020 12:04:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A808F6E14B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 12:04:39 +0000 (UTC)
IronPort-SDR: AhuqZqA+BEqgbIA0goOaJNXKhzNixAetiUAKIErBXap+9N9HXoUYAYmeXUNSwd14UVM/JNSBlW
 7RsjNB4YsGFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="167707865"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="167707865"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 05:04:39 -0700
IronPort-SDR: fxTa3asSkDyVX99z7XswRqB7lEWjwM2S/3frkHBKa+beclxIWxp9ikQq+Jehly7JZGEJn1vkIU
 ab+672Ji+jGQ==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460827131"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 05:04:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <acb3d846-d671-2081-c28d-d8b822a93942@linux.intel.com>
Date: Fri, 17 Jul 2020 13:04:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/66] drm/i915: Skip taking acquire mutex
 for no ref->active callback
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


On 15/07/2020 12:50, Chris Wilson wrote:
> If no active callback is defined for i915_active, we do not need to
> serialise its enabling with the mutex. We still do only want to call the
> debug activate once, and must still serialise with a concurrent retire.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_active.c | 25 ++++++++++++++++---------
>   1 file changed, 16 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index d960d0be5bd2..841b5c30950a 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -416,6 +416,14 @@ bool i915_active_acquire_if_busy(struct i915_active *ref)
>   	return atomic_add_unless(&ref->count, 1, 0);
>   }
>   
> +static void __i915_active_activate(struct i915_active *ref)
> +{
> +	spin_lock_irq(&ref->tree_lock); /* __active_retire() */
> +	if (!atomic_fetch_inc(&ref->count))
> +		debug_active_activate(ref);
> +	spin_unlock_irq(&ref->tree_lock);
> +}
> +
>   int i915_active_acquire(struct i915_active *ref)
>   {
>   	int err;
> @@ -423,23 +431,22 @@ int i915_active_acquire(struct i915_active *ref)
>   	if (i915_active_acquire_if_busy(ref))
>   		return 0;
>   
> +	if (!ref->active) {
> +		__i915_active_activate(ref);
> +		return 0;
> +	}
> +
>   	err = mutex_lock_interruptible(&ref->mutex);
>   	if (err)
>   		return err;
>   
>   	if (likely(!i915_active_acquire_if_busy(ref))) {
> -		if (ref->active)
> -			err = ref->active(ref);
> -		if (!err) {
> -			spin_lock_irq(&ref->tree_lock); /* __active_retire() */
> -			debug_active_activate(ref);
> -			atomic_inc(&ref->count);
> -			spin_unlock_irq(&ref->tree_lock);
> -		}
> +		err = ref->active(ref);
> +		if (!err)
> +			__i915_active_activate(ref);
>   	}
>   
>   	mutex_unlock(&ref->mutex);
> -

Blank line was nice there.

>   	return err;
>   }
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
