Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC137A76CB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 11:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 167BA10E469;
	Wed, 20 Sep 2023 09:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DCF510E469
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 09:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695200632; x=1726736632;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/G0/IQFTFSSKvVy8r4FvFf19psAAL9s8kWJlYnZvKLU=;
 b=RYa4jp/wwatzqW1eWQL9p7v4xeq4GLgOryDnBvjz7HTPP6kDL8XYPMxV
 w6kneTKnG2pLmGPu5Q++HnZBF79OH6y5JhWfISusKVsP7sz9rqGFxTdee
 YuKYoMJ5YhEuL5p0tbPJKG3V4petG2JoirsLOLWpB+v/fzXz5zV4KGm13
 SW4JLAda1zJyr6tOv43gpWXo67S6qWErq5Ue04TEo3GbIivrROMBd2kmX
 Hdp4qr16HJ1AoqsfQOnwl8wYOkeDV1AD+NRBGXeRN+anrkZPDBghrJsYr
 AOSoLz8iGwol87j4c8HYAsy/Hbj7P9LV2tx1U8SCyG+IPOtp83BGxypLM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="411110007"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="411110007"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:03:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="1077354581"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="1077354581"
Received: from ptelkov-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.103])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:03:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230918170257.8586-2-nirmoy.das@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-2-nirmoy.das@intel.com>
Date: Wed, 20 Sep 2023 12:03:40 +0300
Message-ID: <87ttrprzbn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Lift runtime-pm acquire
 callbacks out of intel_wakeref.mutex
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
Cc: matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 andi.shyti@intel.com, Chris Wilson <chris.p.wilson@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 18 Sep 2023, Nirmoy Das <nirmoy.das@intel.com> wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
>
> When runtime pm is first woken, it will synchronously call the
> registered callbacks for the device. These callbacks
> may pull in their own forest of locks, which we do not want to
> conflate with the intel_wakeref.mutex. A second minor benefit to
> reducing the coverage of the mutex, is that it will reduce
> contention for frequent sleeps and wakes (such as when being used
> for soft-rc6).
>
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Is this patch a dependency on the subsequent patches in the series? If
yes, what's the rationale? If not, please submit separately. None of
this is is obvious in the commit messages.

> ---
>  drivers/gpu/drm/i915/intel_wakeref.c | 43 ++++++++++++++--------------
>  1 file changed, 21 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
> index 718f2f1b6174..af7b4cb5b4d7 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.c
> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
> @@ -10,21 +10,11 @@
>  #include "intel_wakeref.h"
>  #include "i915_drv.h"
>  
> -static void rpm_get(struct intel_wakeref *wf)
> -{
> -	wf->wakeref = intel_runtime_pm_get(&wf->i915->runtime_pm);
> -}
> -
> -static void rpm_put(struct intel_wakeref *wf)
> -{
> -	intel_wakeref_t wakeref = fetch_and_zero(&wf->wakeref);
> -
> -	intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
> -	INTEL_WAKEREF_BUG_ON(!wakeref);
> -}
> -
>  int __intel_wakeref_get_first(struct intel_wakeref *wf)
>  {
> +	intel_wakeref_t wakeref = intel_runtime_pm_get(&wf->i915->runtime_pm);

No non-trivial function calls in the initializer please.

> +	int err = 0;

Until now err was only for handling error returns. If it's also for
returning success, it should probably be named ret.

> +
>  	/*
>  	 * Treat get/put as different subclasses, as we may need to run
>  	 * the put callback from under the shrinker and do not want to
> @@ -32,41 +22,50 @@ int __intel_wakeref_get_first(struct intel_wakeref *wf)
>  	 * upon acquiring the wakeref.
>  	 */
>  	mutex_lock_nested(&wf->mutex, SINGLE_DEPTH_NESTING);
> -	if (!atomic_read(&wf->count)) {
> -		int err;
>  
> -		rpm_get(wf);
> +	if (likely(!atomic_read(&wf->count))) {

Adding the likely should be a separate patch with rationale, not a
random drive-by change. (And maybe it just should not be added at all.)

> +		INTEL_WAKEREF_BUG_ON(wf->wakeref);
> +		wf->wakeref = fetch_and_zero(&wakeref);

fetch_and_zero() should just die. All it does here is make things more
confusing, not less. Please don't add new users.

The get and put helpers could probably stay, modified, to make this more
readable.

>  
>  		err = wf->ops->get(wf);
>  		if (unlikely(err)) {
> -			rpm_put(wf);
> -			mutex_unlock(&wf->mutex);
> -			return err;
> +			wakeref = xchg(&wf->wakeref, 0);
> +			wake_up_var(&wf->wakeref);

e.g. here this bit is duplicated in ____intel_wakeref_put_last().

> +			goto unlock;
>  		}
>  
>  		smp_mb__before_atomic(); /* release wf->count */
>  	}
>  	atomic_inc(&wf->count);
> +	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
> +
> +unlock:
>  	mutex_unlock(&wf->mutex);
> +	if (unlikely(wakeref))
> +		intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
>  
> -	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
> -	return 0;
> +	return err;
>  }
>  
>  static void ____intel_wakeref_put_last(struct intel_wakeref *wf)
>  {
> +	intel_wakeref_t wakeref = 0;
> +
>  	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
>  	if (unlikely(!atomic_dec_and_test(&wf->count)))
>  		goto unlock;
>  
>  	/* ops->put() must reschedule its own release on error/deferral */
>  	if (likely(!wf->ops->put(wf))) {
> -		rpm_put(wf);
> +		INTEL_WAKEREF_BUG_ON(!wf->wakeref);
> +		wakeref = xchg(&wf->wakeref, 0);
>  		wake_up_var(&wf->wakeref);
>  	}
>  
>  unlock:
>  	mutex_unlock(&wf->mutex);
> +	if (wakeref)
> +		intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
>  }
>  
>  void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)

-- 
Jani Nikula, Intel
