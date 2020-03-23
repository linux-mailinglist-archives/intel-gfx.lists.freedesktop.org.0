Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BBB18F470
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 13:24:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C9589F49;
	Mon, 23 Mar 2020 12:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A75C89F49
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 12:24:37 +0000 (UTC)
IronPort-SDR: Lvmn7WPFaAyRszR4gWAlRUNoB7YB35dwW0Wt4Xrb1ZwxZnB+P53U2B1qZKsJ0BP7N0fTXjPR9n
 LNOrVZftc4xw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 05:24:36 -0700
IronPort-SDR: BNco6ybH7wXF3rIYoJuI7edwsxdqYu2BE2dveT0AK+PVKFTpH2CbswX3+XGI+WijAN2BZR3BDa
 1HdDrIWSKrIw==
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="419484530"
Received: from unknown (HELO [10.252.47.179]) ([10.252.47.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 05:24:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200323092841.22240-3-chris@chris-wilson.co.uk>
 <20200323103221.14444-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3e57ad5a-80a0-4060-888b-9cdf617daa09@linux.intel.com>
Date: Mon, 23 Mar 2020 12:24:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200323103221.14444-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extend intel_wakeref to support
 delayed puts
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


On 23/03/2020 10:32, Chris Wilson wrote:
> In some cases we want to hold onto the wakeref for a little after the
> last user so that we can avoid having to drop and then immediately
> reacquire it. Allow the last user to specify if they would like to keep
> the wakeref alive for a short hysteresis.
> 
> v2: Embrace bitfield.h for adjustable flags.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_pm.h   |  6 ++++++
>   drivers/gpu/drm/i915/gt/intel_gt_requests.c |  2 +-
>   drivers/gpu/drm/i915/intel_wakeref.c        | 12 ++++++-----
>   drivers/gpu/drm/i915/intel_wakeref.h        | 22 ++++++++++++++++++---
>   4 files changed, 33 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.h b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> index e52c2b0cb245..418df0a13145 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> @@ -37,6 +37,12 @@ static inline void intel_engine_pm_put_async(struct intel_engine_cs *engine)
>   	intel_wakeref_put_async(&engine->wakeref);
>   }
>   
> +static inline void intel_engine_pm_put_delay(struct intel_engine_cs *engine,
> +					     unsigned long delay)
> +{
> +	intel_wakeref_put_delay(&engine->wakeref, delay);
> +}
> +
>   static inline void intel_engine_pm_flush(struct intel_engine_cs *engine)
>   {
>   	intel_wakeref_unlock_wait(&engine->wakeref);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index 24c99d0838af..835ec184763e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -38,7 +38,7 @@ static bool flush_submission(struct intel_gt *gt)
>   	for_each_engine(engine, gt, id) {
>   		intel_engine_flush_submission(engine);
>   		active |= flush_work(&engine->retire_work);
> -		active |= flush_work(&engine->wakeref.work);
> +		active |= flush_delayed_work(&engine->wakeref.work);
>   	}
>   
>   	return active;
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
> index 8fbf6f4d3f26..dfd87d082218 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.c
> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
> @@ -70,11 +70,12 @@ static void ____intel_wakeref_put_last(struct intel_wakeref *wf)
>   
>   void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
>   {
> -	INTEL_WAKEREF_BUG_ON(work_pending(&wf->work));
> +	INTEL_WAKEREF_BUG_ON(delayed_work_pending(&wf->work));
>   
>   	/* Assume we are not in process context and so cannot sleep. */
>   	if (flags & INTEL_WAKEREF_PUT_ASYNC || !mutex_trylock(&wf->mutex)) {
> -		schedule_work(&wf->work);
> +		mod_delayed_work(system_wq, &wf->work,
> +				 FIELD_GET(INTEL_WAKEREF_PUT_DELAY, flags));
>   		return;
>   	}
>   
> @@ -83,7 +84,7 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
>   
>   static void __intel_wakeref_put_work(struct work_struct *wrk)
>   {
> -	struct intel_wakeref *wf = container_of(wrk, typeof(*wf), work);
> +	struct intel_wakeref *wf = container_of(wrk, typeof(*wf), work.work);
>   
>   	if (atomic_add_unless(&wf->count, -1, 1))
>   		return;
> @@ -104,8 +105,9 @@ void __intel_wakeref_init(struct intel_wakeref *wf,
>   	atomic_set(&wf->count, 0);
>   	wf->wakeref = 0;
>   
> -	INIT_WORK(&wf->work, __intel_wakeref_put_work);
> -	lockdep_init_map(&wf->work.lockdep_map, "wakeref.work", &key->work, 0);
> +	INIT_DELAYED_WORK(&wf->work, __intel_wakeref_put_work);
> +	lockdep_init_map(&wf->work.work.lockdep_map,
> +			 "wakeref.work", &key->work, 0);
>   }
>   
>   int intel_wakeref_wait_for_idle(struct intel_wakeref *wf)
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
> index 7d1e676b71ef..545c8f277c46 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.h
> +++ b/drivers/gpu/drm/i915/intel_wakeref.h
> @@ -8,6 +8,7 @@
>   #define INTEL_WAKEREF_H
>   
>   #include <linux/atomic.h>
> +#include <linux/bitfield.h>
>   #include <linux/bits.h>
>   #include <linux/lockdep.h>
>   #include <linux/mutex.h>
> @@ -41,7 +42,7 @@ struct intel_wakeref {
>   	struct intel_runtime_pm *rpm;
>   	const struct intel_wakeref_ops *ops;
>   
> -	struct work_struct work;
> +	struct delayed_work work;
>   };
>   
>   struct intel_wakeref_lockclass {
> @@ -117,6 +118,11 @@ intel_wakeref_get_if_active(struct intel_wakeref *wf)
>   	return atomic_inc_not_zero(&wf->count);
>   }
>   
> +enum {
> +	INTEL_WAKEREF_PUT_ASYNC_BIT = 0,
> +	__INTEL_WAKEREF_PUT_LAST_BIT__
> +};
> +
>   /**
>    * intel_wakeref_put_flags: Release the wakeref
>    * @wf: the wakeref
> @@ -134,7 +140,9 @@ intel_wakeref_get_if_active(struct intel_wakeref *wf)
>    */
>   static inline void
>   __intel_wakeref_put(struct intel_wakeref *wf, unsigned long flags)
> -#define INTEL_WAKEREF_PUT_ASYNC BIT(0)
> +#define INTEL_WAKEREF_PUT_ASYNC BIT(INTEL_WAKEREF_PUT_ASYNC_BIT)
> +#define INTEL_WAKEREF_PUT_DELAY \
> +	GENMASK(BITS_PER_LONG - 1, __INTEL_WAKEREF_PUT_LAST_BIT__)
>   {
>   	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
>   	if (unlikely(!atomic_add_unless(&wf->count, -1, 1)))
> @@ -154,6 +162,14 @@ intel_wakeref_put_async(struct intel_wakeref *wf)
>   	__intel_wakeref_put(wf, INTEL_WAKEREF_PUT_ASYNC);
>   }
>   
> +static inline void
> +intel_wakeref_put_delay(struct intel_wakeref *wf, unsigned long delay)
> +{
> +	__intel_wakeref_put(wf,
> +			    INTEL_WAKEREF_PUT_ASYNC |
> +			    FIELD_PREP(INTEL_WAKEREF_PUT_DELAY, delay));
> +}
> +
>   /**
>    * intel_wakeref_lock: Lock the wakeref (mutex)
>    * @wf: the wakeref
> @@ -194,7 +210,7 @@ intel_wakeref_unlock_wait(struct intel_wakeref *wf)
>   {
>   	mutex_lock(&wf->mutex);
>   	mutex_unlock(&wf->mutex);
> -	flush_work(&wf->work);
> +	flush_delayed_work(&wf->work);
>   }
>   
>   /**
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
