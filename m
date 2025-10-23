Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61544C00F01
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 14:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3895F10E3D8;
	Thu, 23 Oct 2025 12:00:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZTQoVYvs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A172D10E3D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Oct 2025 12:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761220807; x=1792756807;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=XldnpPH12MX05TNYldaprH41Y9WQm8lMOonl9OmUANU=;
 b=ZTQoVYvsziVY/+wWLqQdk89N8tdgKcs60F+TtvoZiAVqn5vMkyZk7R0b
 rkZkBhg9S6bHq9GyxgcbObUBE5I3jbR18O8r+T25+AyaV2mN8LhlPKm0b
 bPsfM8VZ9v5j6uRbyFetxjriw58zp0GX+PbYAPUzal4Ei++H6Kf1Hs/18
 eYvauxwURmxMPlFX7emAR7icZ+/0pz0Lok6eDoA5bjeuo30u4SrxHYYqt
 Id8mbpMzPpumZ2PYk5EJwT4MaES/tahYowmenb+gcEf1kiO7DjTP85zxv
 9AgpQYlw/nxXjHX9mEWtcloMxabaYFwuIkGQqdlXINX4tGl1B8JZej8n4 g==;
X-CSE-ConnectionGUID: 5x0mAGX9SRilHivz/2UjrA==
X-CSE-MsgGUID: Cj0JsP/DSv6VbHTs4yCXFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63482861"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="63482861"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 05:00:06 -0700
X-CSE-ConnectionGUID: ZW6G4ZhPSbCqnIf4Vy82BA==
X-CSE-MsgGUID: 4/zkBP+tTq6aUOtEY5QIZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="184620738"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 05:00:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/rps: convert rps interface to struct drm_device
In-Reply-To: <8a821106-5e6c-4c52-813a-ff5cb6f46b00@ursulin.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251023074536.850332-1-jani.nikula@intel.com>
 <4b33f6ee-3e73-4b46-8638-811db6d8dfb8@ursulin.net>
 <6b663098ad7777fbb87cc954d11b68b4f911d44e@intel.com>
 <8a821106-5e6c-4c52-813a-ff5cb6f46b00@ursulin.net>
Date: Thu, 23 Oct 2025 15:00:02 +0300
Message-ID: <eec229b65bdbc99ea38d085fdadae6b8fa714b3a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 23 Oct 2025, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
> On 23/10/2025 09:55, Jani Nikula wrote:
>> On Thu, 23 Oct 2025, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
>>> On 23/10/2025 08:45, Jani Nikula wrote:
>>>> Reduce the display dependency on struct drm_i915_private and i915_drv.h
>>>> by converting the rps interface to struct drm_device.
>>>>
>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>> ---
>>>>    .../gpu/drm/i915/display/intel_display_rps.c   | 12 +++++-------
>>>>    drivers/gpu/drm/i915/gt/intel_rps.c            | 18 +++++++++++++++=
+--
>>>>    drivers/gpu/drm/i915/gt/intel_rps.h            |  7 ++++---
>>>>    3 files changed, 25 insertions(+), 12 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/driver=
s/gpu/drm/i915/display/intel_display_rps.c
>>>> index 82ea1ec482e4..8bf0f8cb6574 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_rps.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
>>>> @@ -3,12 +3,14 @@
>>>>     * Copyright =C2=A9 2023 Intel Corporation
>>>>     */
>>>>=20=20=20=20
>>>> +#include <linux/dma-fence.h>
>>>> +
>>>>    #include <drm/drm_crtc.h>
>>>>    #include <drm/drm_vblank.h>
>>>>=20=20=20=20
>>>>    #include "gt/intel_rps.h"
>>>> -#include "i915_drv.h"
>>>>    #include "i915_reg.h"
>>>> +#include "i915_request.h"
>>>>    #include "intel_display_core.h"
>>>>    #include "intel_display_irq.h"
>>>>    #include "intel_display_rps.h"
>>>> @@ -77,12 +79,10 @@ void intel_display_rps_mark_interactive(struct int=
el_display *display,
>>>>    					struct intel_atomic_state *state,
>>>>    					bool interactive)
>>>>    {
>>>> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>>>> -
>>>>    	if (state->rps_interactive =3D=3D interactive)
>>>>    		return;
>>>>=20=20=20=20
>>>> -	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
>>>> +	intel_rps_mark_interactive(display->drm, interactive);
>>>>    	state->rps_interactive =3D interactive;
>>>>    }
>>>>=20=20=20=20
>>>> @@ -102,7 +102,5 @@ void ilk_display_rps_disable(struct intel_display =
*display)
>>>>=20=20=20=20
>>>>    void ilk_display_rps_irq_handler(struct intel_display *display)
>>>>    {
>>>> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>>>> -
>>>> -	gen5_rps_irq_handler(&to_gt(i915)->rps);
>>>> +	gen5_rps_irq_handler(display->drm);
>>>>    }
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i91=
5/gt/intel_rps.c
>>>> index b01c837ab646..a2c502609d96 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>>>> @@ -782,7 +782,7 @@ static void gen6_rps_set_thresholds(struct intel_r=
ps *rps, u8 val)
>>>>    	mutex_unlock(&rps->power.mutex);
>>>>    }
>>>>=20=20=20=20
>>>> -void intel_rps_mark_interactive(struct intel_rps *rps, bool interacti=
ve)
>>>> +static void _intel_rps_mark_interactive(struct intel_rps *rps, bool i=
nteractive)
>>>>    {
>>>>    	GT_TRACE(rps_to_gt(rps), "mark interactive: %s\n",
>>>>    		 str_yes_no(interactive));
>>>> @@ -798,6 +798,13 @@ void intel_rps_mark_interactive(struct intel_rps =
*rps, bool interactive)
>>>>    	mutex_unlock(&rps->power.mutex);
>>>>    }
>>>>=20=20=20=20
>>>> +void intel_rps_mark_interactive(struct drm_device *drm, bool interact=
ive)
>>>> +{
>>>> +	struct drm_i915_private *i915 =3D to_i915(drm);
>>>> +
>>>> +	_intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
>>>> +}
>>>> +
>>>>    static int gen6_rps_set(struct intel_rps *rps, u8 val)
>>>>    {
>>>>    	struct intel_uncore *uncore =3D rps_to_uncore(rps);
>>>> @@ -1953,7 +1960,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps,=
 u32 pm_iir)
>>>>    			"Command parser error, pm_iir 0x%08x\n", pm_iir);
>>>>    }
>>>>=20=20=20=20
>>>> -void gen5_rps_irq_handler(struct intel_rps *rps)
>>>> +static void _gen5_rps_irq_handler(struct intel_rps *rps)
>>>>    {
>>>>    	struct intel_uncore *uncore =3D rps_to_uncore(rps);
>>>>    	u32 busy_up, busy_down, max_avg, min_avg;
>>>> @@ -1987,6 +1994,13 @@ void gen5_rps_irq_handler(struct intel_rps *rps)
>>>>    	spin_unlock(&mchdev_lock);
>>>>    }
>>>>=20=20=20=20
>>>> +void gen5_rps_irq_handler(struct drm_device *drm)
>>>> +{
>>>> +	struct drm_i915_private *i915 =3D to_i915(drm);
>>>> +
>>>> +	_gen5_rps_irq_handler(&to_gt(i915)->rps);
>>>> +}
>>>> +
>>>>    void intel_rps_init_early(struct intel_rps *rps)
>>>>    {
>>>>    	mutex_init(&rps->lock);
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i91=
5/gt/intel_rps.h
>>>> index 92fb01f5a452..c817a70fb3aa 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
>>>> @@ -9,8 +9,9 @@
>>>>    #include "intel_rps_types.h"
>>>>    #include "i915_reg_defs.h"
>>>>=20=20=20=20
>>>> -struct i915_request;
>>>> +struct drm_device;
>>>>    struct drm_printer;
>>>> +struct i915_request;
>>>>=20=20=20=20
>>>>    #define GT_FREQUENCY_MULTIPLIER 50
>>>>    #define GEN9_FREQ_SCALER 3
>>>> @@ -33,7 +34,7 @@ u32 intel_rps_get_boost_frequency(struct intel_rps *=
rps);
>>>>    int intel_rps_set_boost_frequency(struct intel_rps *rps, u32 freq);
>>>>=20=20=20=20
>>>>    int intel_rps_set(struct intel_rps *rps, u8 val);
>>>> -void intel_rps_mark_interactive(struct intel_rps *rps, bool interacti=
ve);
>>>> +void intel_rps_mark_interactive(struct drm_device *drm, bool interact=
ive);
>>>
>>> This one breaks the design a bit since RPS is supposed to be per GT. On
>>> the other hand intel_display_rps_mark_interactive is the only caller so
>>> if it only wants to care about the primary GT thats probably okay.
>>>
>>> Presumably you don't want a for_each_gt in the display code either.
>>>
>>> Would it work to put a helper which did it for you somewhere one level
>>> up from per gt (gt/) components? Sounds like for the end goal of proper
>>> abstraction that would be the way. Getting rid of the #ifdef from
>>> intel_display_rps.h and each driver would then implement the required
>>> hooks to do what they want.
>>=20
>> See [1]. We might add display->parent->rps, and call the hooks via
>> that. But even so, they'll need interfaces that are independent of gt,
>> so something like the patch at hand will be needed. I don't particularly
>> care if the functions on i915 core side are in gt/ or somewhere else.
>
> Okay, but from my point of view intel_rps_mark_interactive() should=20
> remain taking rps. This is the design of all components under gt/ and I=20
> do not think we should break it for this case. So for me a new helper=20
> somewhere one level above gt/ sounds like the way to go. That one is=20
> then perfectly fine to operate on the device.

Okay.

> Pull out existing=20
> intel_display_rps_mark_interactive() out from display and rename to=20
> something like intel_display_mark_interactive(). As a first step. Xe can=
=20
> stub it out in compat headers rather than #ifdefs in the display code.

intel_display_rps_mark_interactive() needs to remain in display, because
it handles display structures. struct drm_device is the abstraction
between display and i915 core.

Looks like the whole thing is going to have to wait for [1] to land, and
we'll add the function pointers there, which will then have some
functions that do exactly the same thing as the wrappers I added here
do, but will have to find a new location for them somewhere in i915 core
that is not gt/.


BR,
Jani.

>
> Regards,
>
> Tvrtko
>> [1] https://lore.kernel.org/r/20251022085548.876150-2-jouni.hogander@int=
el.com
>>=20
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>>    int intel_gpu_freq(struct intel_rps *rps, int val);
>>>>    int intel_freq_opcode(struct intel_rps *rps, int val);
>>>> @@ -64,7 +65,7 @@ bool rps_read_mask_mmio(struct intel_rps *rps, i915_=
reg_t reg32, u32 mask);
>>>>=20=20=20=20
>>>>    void gen6_rps_frequency_dump(struct intel_rps *rps, struct drm_prin=
ter *p);
>>>>=20=20=20=20
>>>> -void gen5_rps_irq_handler(struct intel_rps *rps);
>>>> +void gen5_rps_irq_handler(struct drm_device *drm);
>>>>    void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
>>>>    void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
>>>>=20=20=20=20
>>>
>>=20
>

--=20
Jani Nikula, Intel
