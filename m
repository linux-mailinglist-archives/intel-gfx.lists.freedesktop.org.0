Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B212E7D699F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:58:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D32910E5AA;
	Wed, 25 Oct 2023 10:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C936810E5AA;
 Wed, 25 Oct 2023 10:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698231498; x=1729767498;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=yKLEkbUjTvX9F3cS1OLBXTJ8ct6oQ4xF7SbQlUMCpf4=;
 b=iS+TJNvVMD881XgG+0LEhnPiRD1a++SVbwuTJAx36pghgAJSJGhzxiZI
 NLuhFwoP9DAC01fS03I91+LwX1LBnY9jkBl0lfqOpKfF0ae1Ap6xVez1C
 mdpuXn3w+veFDersJjpavMkfmvTjoONshT/ERPqoqNxQhH1l0bHnBhXsO
 FfCLJoNnISgGGYMJk5PA+n8DulZdf9Gov/ycV2o/+t1MlhILk4n+OIVC8
 MwW8w+RQS7v4zIiB7LZq4VgpBVjuNTvlzJ6AhC17xoYP9oHKTLHMfUrFn
 6ZXqK3Wg679u44KO3Soe6qwJZ/t0wHqhMg/5RcA1ElI1HIeHfv0hVjEIF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386166690"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="386166690"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:58:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="902521780"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="902521780"
Received: from lababeix-mobl1.ger.corp.intel.com (HELO [10.249.41.109])
 ([10.249.41.109])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:55:54 -0700
Message-ID: <1dedcd11-ac0c-465e-bbe4-079767f5813e@linux.intel.com>
Date: Wed, 25 Oct 2023 11:58:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231023103328.1495942-1-luciano.coelho@intel.com>
 <cf874768-7951-4dcc-90b1-7f3457c4923e@linux.intel.com>
 <463b540d-fd0d-4988-9ad1-63447a5d6948@linux.intel.com>
 <86c395f6b2e529943007aca94dd0862c1bb0004d.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <86c395f6b2e529943007aca94dd0862c1bb0004d.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/10/2023 11:32, Coelho, Luciano wrote:
> On Wed, 2023-10-25 at 11:25 +0100, Tvrtko Ursulin wrote:
>> On 25/10/2023 11:18, Tvrtko Ursulin wrote:
>>>
>>> On 23/10/2023 11:33, Luca Coelho wrote:
>>>> The uncore code may not always be available (e.g. when we build the
>>>> display code with Xe), so we can't always rely on having the uncore's
>>>> spinlock.
>>>>
>>>> To handle this, split the spin_lock/unlock_irqsave/restore() into
>>>> spin_lock/unlock() followed by a call to local_irq_save/restore() and
>>>> create wrapper functions for locking and unlocking the uncore's
>>>> spinlock.  In these functions, we have a condition check and only
>>>> actually try to lock/unlock the spinlock when I915 is defined, and
>>>> thus uncore is available.
>>>>
>>>> This keeps the ifdefs contained in these new functions and all such
>>>> logic inside the display code.
>>>>
>>>> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>>>> ---
>>>>
>>>> In v2:
>>>>
>>>>      * Renamed uncore_spin_*() to intel_spin_*()
>>>>      * Corrected the order: save, lock, unlock, restore
>>>>
>>>> In v3:
>>>>
>>>>      * Undid the change to pass drm_i915_private instead of the lock
>>>>        itself, since we would have to include i915_drv.h and that pulls
>>>>        in a truckload of other includes.
>>>>
>>>>    drivers/gpu/drm/i915/display/intel_display.h | 20 ++++++++++++++++++++
>>>>    drivers/gpu/drm/i915/display/intel_vblank.c  | 19 ++++++++++++-------
>>>>    2 files changed, 32 insertions(+), 7 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
>>>> b/drivers/gpu/drm/i915/display/intel_display.h
>>>> index 0e5dffe8f018..2a33fcc8ce68 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>>>> @@ -559,4 +559,24 @@ bool assert_port_valid(struct drm_i915_private
>>>> *i915, enum port port);
>>>>    bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
>>>> +/*
>>>> + * The uncore version of the spin lock functions is used to decide
>>>> + * whether we need to lock the uncore lock or not.  This is only
>>>> + * needed in i915, not in Xe.  Keep the decision-making centralized
>>>> + * here.
>>>> + */
>>>> +static inline void intel_spin_lock(spinlock_t *lock)
>>>> +{
>>>> +#ifdef I915
>>>> +    spin_lock(lock);
>>>> +#endif
>>>> +}
>>>> +
>>>> +static inline void intel_spin_unlock(spinlock_t *lock)
>>>> +{
>>>> +#ifdef I915
>>>> +    spin_unlock(lock);
>>>> +#endif
>>>> +}
>>>> +
>>>>    #endif
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
>>>> b/drivers/gpu/drm/i915/display/intel_vblank.c
>>>> index 2cec2abf9746..9b482d648762 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
>>>> @@ -306,7 +306,8 @@ static bool i915_get_crtc_scanoutpos(struct
>>>> drm_crtc *_crtc,
>>>>         * register reads, potentially with preemption disabled, so the
>>>>         * following code must not block on uncore.lock.
>>>>         */
>>>> -    spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>>>> +    local_irq_save(irqflags);
>>>
>>> Does Xe needs interrupts off?
> 
> I'm actually not sure, but this is how it was in the Xe driver code, so
> I kept it.
> 
> 
>>>> +    intel_spin_lock(&dev_priv->uncore.lock);
>>>
>>> My 2p/c is that intel_spin_lock as a name does not work when it is
>>> specifically about the single and specific (uncore) lock. One cannot
>>> call intel_spin_lock(some->other->lock) etc.
> 
> Right, this was changed when I was passing only dev_priv, but I
> couldn't do that wihtout adding i915_drv.h, which was not good
> either... But yeah, this is too generic, while the actual case is not.
> 
> 
>>> Perhaps call it i915_uncore_lock_irqsave(i915, flags) so it is clear it
>>> is only for i915.
> 
> I wanted to avoid "i915", since we also call it when the display is
> used with xe...
> 
> 
>> Or, if the implementation will later gain the #else block for Xe,
>> perhaps intel_uncore_lock_...?
> 
> But still, uncore doesn't exist in Xe, so this is still not good...
> 
> Any other suggestions?

I think it will boil down to the reason uncore lock is held over the 
respective sections ie. the comment in i915_get_crtc_scanoutpos.

If it is timing sensitive to the extent irq off was needed it may apply 
to Xe as well. Likewise the need to use mmio helpers which rely on the 
uncore lock already held. Question of whether there is conceptual 
commonality, will probably drive the best name, or the best approach in 
general.

Regards,

Tvrtko
