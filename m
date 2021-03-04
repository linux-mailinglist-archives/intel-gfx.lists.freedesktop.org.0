Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F230D32C3A3
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 01:32:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB556E446;
	Thu,  4 Mar 2021 00:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C706E44A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 00:32:04 +0000 (UTC)
IronPort-SDR: 3Ls9PLJclWaYGf49x4/8UHYY1Sk/lHA+TxyZo6aqvBPYqnZFLLIjzBR4V/dxdhoInek3H5kQz3
 bg4IRezK4jyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="174426244"
X-IronPort-AV: E=Sophos;i="5.81,221,1610438400"; d="scan'208";a="174426244"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 16:30:02 -0800
IronPort-SDR: ogrZUzuvN1osFSOmHdWqeGxji5GjfiiYXHHuT1qKZfW3jgYar/sH/tAW/YXcCkC0aSE7UrHAB/
 pq9vtgzwuMDw==
X-IronPort-AV: E=Sophos;i="5.81,221,1610438400"; d="scan'208";a="436150721"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.209.95.172])
 ([10.209.95.172])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 16:29:15 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
 <20210301193200.1369-9-daniele.ceraolospurio@intel.com>
 <161480905671.25897.2439316755371407734@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e0461b0d-33ef-0098-551e-65f749c10894@intel.com>
Date: Wed, 3 Mar 2021 16:29:01 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <161480905671.25897.2439316755371407734@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 08/16] drm/i915/pxp: Implement arb
 session teardown
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
Cc: Huang@freedesktop.org, "Huang, Sean Z" <sean.z.huang@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/3/2021 2:04 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-03-01 19:31:52)
>> From: "Huang, Sean Z" <sean.z.huang@intel.com>
>>
>> Teardown is triggered when the display topology changes and no
>> long meets the secure playback requirement, and hardware trashes
>> all the encryption keys for display. Additionally, we want to emit a
>> teardown operation to make sure we're clean on boot and resume
>>
>> v2: emit in the ring, use high prio request (Chris)
>>
>> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> ---
>>   drivers/gpu/drm/i915/Makefile                |   1 +
>>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     | 166 +++++++++++++++++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h     |  15 ++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  38 +++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.h |   1 +
>>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |   5 +-
>>   6 files changed, 225 insertions(+), 1 deletion(-)
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index d6d510e4875e..8b605f326039 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -273,6 +273,7 @@ i915-y += i915_perf.o
>>   # Protected execution platform (PXP) support
>>   i915-$(CONFIG_DRM_I915_PXP) += \
>>          pxp/intel_pxp.o \
>> +       pxp/intel_pxp_cmd.o \
>>          pxp/intel_pxp_session.o \
>>          pxp/intel_pxp_tee.o
>>   
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>> new file mode 100644
>> index 000000000000..ffab09839cd3
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>> @@ -0,0 +1,166 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
>> + */
>> +
>> +#include "intel_pxp.h"
>> +#include "intel_pxp_session.h"
>> +#include "gt/intel_context.h"
>> +#include "gt/intel_engine_pm.h"
>> +#include "gt/intel_gpu_commands.h"
>> +#include "gt/intel_ring.h"
>> +
>> +#include "i915_trace.h"
>> +
>> +/* PXP GPU command definitions */
>> +
>> +/* MI_SET_APPID */
>> +#define   MI_SET_APPID_SESSION_ID(x)    ((x) << 0)
>> +
>> +/* MI_FLUSH_DW */
>> +#define   MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE   BIT(22)
>> +
>> +/* MI_WAIT */
>> +#define   MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG BIT(9)
>> +#define   MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG  BIT(8)
> We've been using REG_BIT() for the explicit (u32) casting.
>
>> +/* CRYPTO_KEY_EXCHANGE */
>> +#define CRYPTO_KEY_EXCHANGE ((0x3 << 29) | (0x01609 << 16))
> #define __INSTR(client) ((client) << INSTR_CLIENT_SHIFT)
>
> #define MI_INSTR(opcode, flags) \
> 	(__INSTR(INSTR_MI_CLIENT) | (opcode) << 23 | (flags))
> #define RC_INTR(foo) (__INSTR(INSTR_RC_CLIENT) | (foo) << 16)
>
> #define CRYPTO_KEY_EXCHANGE RC_INSTR(0x1609)
>
> With a better (foo).
>
>> +
>> +/* stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
>> +#define MFX_WAIT_PXP \
>> +       MFX_WAIT | \
>> +       MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
>> +       MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG;
>> +
>> +static u32 *pxp_emit_session_selection(u32 *cs, u32 idx)
>> +{
>> +       *cs++ = MFX_WAIT_PXP;
> One day someone will proofread bspec.
>
>> +       /* pxp off */
>> +       *cs++ = MI_FLUSH_DW;
>> +       *cs++ = 0;
>> +       *cs++ = 0;
> Hmm. Can the immediate data be dropped? TIL.
>
>> +       /* select session */
>> +       *cs++ = MI_SET_APPID | MI_SET_APPID_SESSION_ID(idx);
>> +
>> +       *cs++ = MFX_WAIT_PXP;
>> +
>> +       /* pxp on */
>> +       *cs++ = MI_FLUSH_DW | MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE;
>> +       *cs++ = 0;
>> +       *cs++ = 0;
> Bspec says "after completion of the flush...", which says to me we
> should not initiate the wait until after the flush, so we would need a
> post-sync op here to stall the CS (or else we may complete the wait
> before the operation is begun). I don't see any programming notes to
> that effect, so could just be my paranoia from handling atomics.

Better be paranoid, I'll add a post-sync op

>
>> +       *cs++ = MFX_WAIT_PXP;
> Fwiw, the bspec language would seem to imply that nothing should happen
> with this wait at this point. Perhaps more reason to make the pxp-on
> MI_FLUSH_DW be synchronous. (Though we will have a sync point at the
> breadcrumb, so meh.)
>
>> +
>> +       return cs;
>> +}
>> +
>> +static u32 *pxp_emit_inline_termination(u32 *cs)
>> +{
>> +       /* session inline termination */
>> +       *cs++ = CRYPTO_KEY_EXCHANGE;
>> +       *cs++ = 0;
>> +
>> +       return cs;
>> +}
>> +
>> +static u32 *pxp_emit_wait(u32 *cs)
>> +{
>> +       /* wait for cmds to go through */
>> +       *cs++ = MFX_WAIT_PXP;
>> +       *cs++ = 0;
>> +
>> +       return cs;
>> +}
>> +
>> +/*
>> + * if we ever need to terminate more than one session, we can submit multiple
>> + * selections and terminations back-to-back with a single wait at the end
>> + */
>> +#define SELECTION_LEN 10
>> +#define TERMINATION_LEN 2
>> +#define WAIT_LEN 2
> Dwords lengths ok.
>
>> +#define __SESSION_TERMINATION_LEN (SELECTION_LEN + TERMINATION_LEN)
>> +#define SESSION_TERMINATION_LEN(x) (__SESSION_TERMINATION_LEN * (x) + WAIT_LEN)
>> +
>> +static struct i915_request *pxp_request_create(struct intel_context *ce)
>> +{
>> +       struct i915_request *rq;
>> +
>> +       intel_context_enter(ce);
>> +       rq = __i915_request_create(ce, GFP_KERNEL);
>> +       intel_context_exit(ce);
>> +
>> +       return rq;
>> +}
>> +
>> +static void pxp_request_commit(struct i915_request *rq)
>> +{
>> +       struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
>> +
>> +       trace_i915_request_add(rq);
>> +       __i915_request_commit(rq);
>> +       __i915_request_queue(rq, &attr);
>> +}
>> +
>> +int intel_pxp_submit_session_termination(struct intel_pxp *pxp, u32 id)
>> +{
>> +       struct i915_request *rq;
>> +       struct intel_context *ce = pxp->ce;
>> +       u32 *cs;
>> +       int err;
>> +
>> +       if (!intel_pxp_is_enabled(pxp))
>> +               return 0;
>> +
>> +       intel_engine_pm_get(ce->engine);
> As you are not using the engine->kernel_context, you can leave this out
> and the normal intel_context_enter() acquire of the wakeref will cover
> you.
>
> You could then use the normal i915_request_create(), but we would still
> have the custom i915_request_add, which would absorb the mutex_unlock so
> would not look so unbalanced.

will change

>> +       mutex_lock(&ce->timeline->mutex);
>> +
>> +       rq = pxp_request_create(ce);
>> +       if (IS_ERR(rq)) {
>> +               mutex_unlock(&ce->timeline->mutex);
>> +               err = PTR_ERR(rq);
>> +               goto out_pm;
>> +       }
>> +
>> +       if (ce->engine->emit_init_breadcrumb) {
>> +               err = ce->engine->emit_init_breadcrumb(rq);
>> +               if (err)
>> +                       goto out_rq;
>> +       }
>> +
>> +       cs = intel_ring_begin(rq, SESSION_TERMINATION_LEN(1));
>> +       if (IS_ERR(cs)) {
>> +               err = PTR_ERR(cs);
>> +               goto out_rq;
>> +       }
>> +
>> +       cs = pxp_emit_session_selection(cs, id);
>> +       cs = pxp_emit_inline_termination(cs);
> I would wrap this pair with
>
> 	cs = pxp_emit_session_termination(cs, id);

Agreed

> so the correspondence with SESSION_TERMINATION_LEN() is clearer and I'd
> be tempted then to add the WAIT_LEN explicitly.

ok

>> +       cs = pxp_emit_wait(cs);
>> +
>> +       intel_ring_advance(rq, cs);
> Fwiw, this would be a good excuse to decouple invalidate/flush from the
> breadcrumbs. Later, much later.
>
>> +
>> +out_rq:
>> +       i915_request_get(rq);
>> +
>> +       if (unlikely(err))
>> +               i915_request_set_error_once(rq, err);
>> +
>> +       pxp_request_commit(rq);
>> +
>> +       mutex_unlock(&ce->timeline->mutex);
>> +
>> +       if (!err && i915_request_wait(rq, 0, HZ / 5) < 0)
>> +               err = -ETIME;
> "intel_pxp_submit_session_termination" does not imply synchronous
> behaviour to me.
>
> intel_pxp_terminate_session() ?

agreed

>> +
>> +       i915_request_put(rq);
>> +
>> +out_pm:
>> +       intel_engine_pm_put(ce->engine);
>> +
>> +       return err;
>> +}
>> +
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
>> new file mode 100644
>> index 000000000000..7c33b66f0812
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
>> @@ -0,0 +1,15 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
>> + */
>> +
>> +#ifndef __INTEL_PXP_CMD_H__
>> +#define __INTEL_PXP_CMD_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct intel_pxp;
>> +
>> +int intel_pxp_submit_session_termination(struct intel_pxp *pxp, u32 idx);
>> +
>> +#endif /* __INTEL_PXP_CMD_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> index 6abc59a63e51..ddbfac75686a 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> @@ -7,6 +7,7 @@
>>   #include "i915_drv.h"
>>   
>>   #include "intel_pxp.h"
>> +#include "intel_pxp_cmd.h"
>>   #include "intel_pxp_session.h"
>>   #include "intel_pxp_tee.h"
>>   #include "intel_pxp_types.h"
>> @@ -15,6 +16,9 @@
>>   
>>   #define GEN12_KCR_SIP _MMIO(0x32260) /* KCR hwdrm session in play 0-31 */
>>   
>> +/* PXP global terminate register for session termination */
>> +#define PXP_GLOBAL_TERMINATE _MMIO(0x320f8)
>> +
>>   static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
>>   {
>>          struct intel_gt *gt = pxp_to_gt(pxp);
>> @@ -80,3 +84,37 @@ int intel_pxp_create_arb_session(struct intel_pxp *pxp)
>>   
>>          return 0;
>>   }
>> +
>> +/**
>> + * intel_pxp_arb_terminate_session_with_global_terminate - Terminate the arb hw
> terminate_session_and_global ? Just to remove the repetition?
agreed

>> + * session.
>> + * @pxp: pointer to pxp struct.
>> + *
>> + * Return: 0 if terminate is successful, error code otherwise
>> + */
>> +int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp)
>> +{
>> +       int ret;
>> +       struct intel_gt *gt = pxp_to_gt(pxp);
>> +
>> +       lockdep_assert_held(&pxp->mutex);
>> +
>> +       pxp->arb_is_in_play = false;
>> +
>> +       /* terminate the hw sessions */
>> +       ret = intel_pxp_submit_session_termination(pxp, ARB_SESSION);
>> +       if (ret) {
>> +               drm_err(&gt->i915->drm, "Failed to submit session termination\n");
>> +               return ret;
>> +       }
> Should arb_is_in_play not be updated until after successful termination?

That's a consequence of when I started using arb_is_in_play to mean that 
the session was valid and usable. As mentioned on the other patch I'll 
rename it.

>
>> +       ret = pxp_wait_for_session_state(pxp, ARB_SESSION, false);
>> +       if (ret) {
>> +               drm_err(&gt->i915->drm, "Session state did not clear\n");
>> +               return ret;
>> +       }
>> +
>> +       intel_uncore_write(gt->uncore, PXP_GLOBAL_TERMINATE, 1);
> Are we happy that this is instantaneous and doesn't need an ack/wait?

it's not, but we get an interrupt when the termination is complete.

Daniele

>
>> +       return ret;
>> +}
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
>> index 6fc4a2370c44..07c97df7a509 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
>> @@ -12,5 +12,6 @@ struct intel_pxp;
>>   
>>   bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp);
>>   int intel_pxp_create_arb_session(struct intel_pxp *pxp);
>> +int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp);
>>   
>>   #endif /* __INTEL_PXP_SESSION_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> index dc3850b372c5..fd9a69248dd8 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> @@ -99,7 +99,10 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>>          mutex_lock(&pxp->mutex);
>>   
>>          /* Create arb session only if tee is ready, during system boot or sleep/resume */
>> -       if (!intel_pxp_arb_session_is_in_play(pxp))
>> +       if (intel_pxp_arb_session_is_in_play(pxp))
>> +               ret = intel_pxp_arb_terminate_session_with_global_terminate(pxp);
>> +
>> +       if (!ret)
>>                  ret = intel_pxp_create_arb_session(pxp);
>>   
>>          mutex_unlock(&pxp->mutex);
>> -- 
>> 2.29.2
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
