Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C5C14A5E9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 15:21:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469E96EBBD;
	Mon, 27 Jan 2020 14:21:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09EB6EBBB
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 14:21:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 06:20:30 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="221748067"
Received: from lodierna-mobl.ger.corp.intel.com (HELO [10.252.22.225])
 ([10.252.22.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 27 Jan 2020 06:20:29 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200126102346.1877661-1-chris@chris-wilson.co.uk>
 <20200126102346.1877661-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4892b5c6-b52c-1628-3b99-f809382650e4@linux.intel.com>
Date: Mon, 27 Jan 2020 14:20:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200126102346.1877661-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Tighten atomicity of
 i915_active_acquire vs i915_active_release
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


On 26/01/2020 10:23, Chris Wilson wrote:
> As we use a mutex to serialise the first acquire (as it may be a lengthy
> operation), but only an atomic decrement for the release, we have to
> be careful in case a second thread races and completes both
> acquire/release as the first finishes its acquire.
> 
> Thread A			Thread B
> i915_active_acquire		i915_active_acquire
>    atomic_read() == 0		  atomic_read() == 0
>    mutex_lock()			  mutex_lock()
> 				  atomic_read() == 0
> 				    ref->active();
> 				  atomic_inc()
> 				  mutex_unlock()
>    atomic_read() == 1
> 				i915_active_release
> 				  atomic_dec_and_test() -> 0
> 				    ref->retire()
>    atomic_inc() -> 1
>    mutex_unlock()
> 
> So thread A has acquired the ref->active_count but since the ref was
> still active at the time, it did not initialise it. By switching the
> check inside the mutex to an atomic increment only if already active, we
> close the race.
> 
> Fixes: c9ad602feabe ("drm/i915: Split i915_active.mutex into an irq-safe spinlock for the rbtree")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_active.c | 16 +++++++++-------
>   1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index ace55d5d4ca7..9d6830885d2e 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -416,13 +416,15 @@ int i915_active_acquire(struct i915_active *ref)
>   	if (err)
>   		return err;
>   
> -	if (!atomic_read(&ref->count) && ref->active)
> -		err = ref->active(ref);
> -	if (!err) {
> -		spin_lock_irq(&ref->tree_lock); /* vs __active_retire() */
> -		debug_active_activate(ref);
> -		atomic_inc(&ref->count);
> -		spin_unlock_irq(&ref->tree_lock);
> +	if (likely(!i915_active_acquire_if_busy(ref))) {
> +		if (ref->active)
> +			err = ref->active(ref);
> +		if (!err) {
> +			spin_lock_irq(&ref->tree_lock); /* __active_retire() */
> +			debug_active_activate(ref);
> +			atomic_inc(&ref->count);
> +			spin_unlock_irq(&ref->tree_lock);
> +		}
>   	}
>   
>   	mutex_unlock(&ref->mutex);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
