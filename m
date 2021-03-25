Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F20349BFD
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:52:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B16E26EE4E;
	Thu, 25 Mar 2021 21:52:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7B46EE4E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:52:18 +0000 (UTC)
IronPort-SDR: Livmz+PXdhvq3z1jvwUqrQtytq3VSDNjYRZ2mRfEDAbA63QxszBKQZncfBo/zHba6ZpzH3WWCc
 Ia88ZZi6ldEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188737087"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188737087"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:52:18 -0700
IronPort-SDR: z4gdVpeDjUiuIdnFpGWENgiJxspOZ3Q2wjXWr78IH9r3MJ4C2vpsmySc5FljcAWwECc4Oo+1oU
 ab0gxnUDAZOg==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="514816260"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.209.79.105])
 ([10.209.79.105])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:52:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
 <20210301193200.1369-10-daniele.ceraolospurio@intel.com>
 <161481136254.25897.3796869467826514906@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <51fdec59-b46e-b262-1eeb-a688f207957f@intel.com>
Date: Thu, 25 Mar 2021 14:52:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <161481136254.25897.3796869467826514906@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 09/16] drm/i915/pxp: Implement PXP irq
 handler
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



On 3/3/2021 2:42 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-03-01 19:31:53)
>> From: "Huang, Sean Z" <sean.z.huang@intel.com>
>>
>> The HW will generate a teardown interrupt when session termination is
>> required, which requires i915 to submit a terminating batch. Once the HW
>> is done with the termination it will generate another interrupt, at
>> which point it is safe to re-create the session.
> Why do we do the auto recreation after the teardown interrupt?

Just realized I forgot to reply to this. The current design is for the 
arb session to always be running when the device is awake.
We could potentially refcount it via active protected objects, but 
that'll make the flow more complicated.

Daniele

>
>> v2: use struct completion instead of bool (Chris)
>>
>> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> ---
>>   drivers/gpu/drm/i915/Makefile                |   1 +
>>   drivers/gpu/drm/i915/gt/intel_gt_irq.c       |   7 +
>>   drivers/gpu/drm/i915/i915_reg.h              |   1 +
>>   drivers/gpu/drm/i915/pxp/intel_pxp.c         |  34 +++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp.h         |  16 ++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     | 151 +++++++++++++++++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.h     |  33 ++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c |   9 +-
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.h |   1 +
>>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  10 +-
>>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |   8 +
>>   11 files changed, 268 insertions(+), 3 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index 8b605f326039..5e9bd34dec38 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -274,6 +274,7 @@ i915-y += i915_perf.o
>>   i915-$(CONFIG_DRM_I915_PXP) += \
>>          pxp/intel_pxp.o \
>>          pxp/intel_pxp_cmd.o \
>> +       pxp/intel_pxp_irq.o \
>>          pxp/intel_pxp_session.o \
>>          pxp/intel_pxp_tee.o
>>   
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> index d29126c458ba..0d3585efe2b8 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> @@ -13,6 +13,7 @@
>>   #include "intel_lrc_reg.h"
>>   #include "intel_uncore.h"
>>   #include "intel_rps.h"
>> +#include "pxp/intel_pxp_irq.h"
>>   
>>   static void guc_irq_handler(struct intel_guc *guc, u16 iir)
>>   {
>> @@ -64,6 +65,9 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
>>          if (instance == OTHER_GTPM_INSTANCE)
>>                  return gen11_rps_irq_handler(&gt->rps, iir);
>>   
>> +       if (instance == OTHER_KCR_INSTANCE)
>> +               return intel_pxp_irq_handler(&gt->pxp, iir);
>> +
>>          WARN_ONCE(1, "unhandled other interrupt instance=0x%x, iir=0x%x\n",
>>                    instance, iir);
>>   }
>> @@ -190,6 +194,9 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
>>          intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK,  ~0);
>>          intel_uncore_write(uncore, GEN11_GUC_SG_INTR_ENABLE, 0);
>>          intel_uncore_write(uncore, GEN11_GUC_SG_INTR_MASK,  ~0);
>> +
>> +       intel_uncore_write(uncore, GEN11_CRYPTO_RSVD_INTR_ENABLE, 0);
>> +       intel_uncore_write(uncore, GEN11_CRYPTO_RSVD_INTR_MASK,  ~0);
>>   }
>>   
>>   void gen11_gt_irq_postinstall(struct intel_gt *gt)
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index e5dd0203991b..97a6d0c638ec 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -7958,6 +7958,7 @@ enum {
>>   /* irq instances for OTHER_CLASS */
>>   #define OTHER_GUC_INSTANCE     0
>>   #define OTHER_GTPM_INSTANCE    1
>> +#define OTHER_KCR_INSTANCE     4
>>   
>>   #define GEN11_INTR_IDENTITY_REG(x)     _MMIO(0x190060 + ((x) * 4))
>>   
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> index cbec9395bde9..0ca1c2c16972 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> @@ -2,7 +2,9 @@
>>   /*
>>    * Copyright(c) 2020 Intel Corporation.
>>    */
>> +#include <linux/workqueue.h>
>>   #include "intel_pxp.h"
>> +#include "intel_pxp_irq.h"
>>   #include "intel_pxp_tee.h"
>>   #include "gt/intel_context.h"
>>   #include "i915_drv.h"
>> @@ -67,12 +69,23 @@ void intel_pxp_init(struct intel_pxp *pxp)
>>   
>>          mutex_init(&pxp->mutex);
>>   
>> +       /*
>> +        * we'll use the completion to check if there is a termination pending,
>> +        * so we start it as completed and we reinit it when a termination
>> +        * is triggered.
>> +        */
>> +       init_completion(&pxp->termination);
>> +       complete_all(&pxp->termination);
>> +
>>          kcr_pxp_enable(gt);
>>   
>>          ret = create_vcs_context(pxp);
>>          if (ret)
>>                  goto out_kcr;
>>   
>> +       intel_pxp_irq_init(pxp);
>> +       intel_pxp_irq_enable(pxp);
>> +
>>          ret = intel_pxp_tee_component_init(pxp);
>>          if (ret)
>>                  goto out_context;
>> @@ -94,10 +107,31 @@ void intel_pxp_fini(struct intel_pxp *pxp)
>>          if (!intel_pxp_is_enabled(pxp))
>>                  return;
>>   
>> +       intel_pxp_irq_disable(pxp);
>> +
>>          intel_pxp_tee_component_fini(pxp);
>>   
>>          destroy_vcs_context(pxp);
>>   
>>          kcr_pxp_disable(gt);
>> +}
>>   
>> +int intel_pxp_wait_for_termination_completion(struct intel_pxp *pxp)
>> +{
>> +       int ret;
>> +
>> +       if (!intel_pxp_is_enabled(pxp))
>> +               return 0;
>> +
>> +       ret = wait_for_completion_timeout(&pxp->termination,
>> +                                         msecs_to_jiffies(100));
>> +
>> +       /* the wait returns 0 on failure */
>> +       if (ret)
>> +               ret = 0;
>> +       else
>> +               ret = -ETIMEDOUT;
>> +
>> +       return ret;
>>   }
>> +
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> index 3bede9306481..89cf66c9bef3 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> @@ -9,6 +9,15 @@
>>   #include "gt/intel_gt_types.h"
>>   #include "intel_pxp_types.h"
>>   
>> +#define GEN12_DISPLAY_PXP_STATE_TERMINATED_INTERRUPT BIT(1)
>> +#define GEN12_DISPLAY_APP_TERMINATED_PER_FW_REQ_INTERRUPT BIT(2)
>> +#define GEN12_DISPLAY_STATE_RESET_COMPLETE_INTERRUPT BIT(3)
>> +
>> +#define GEN12_PXP_INTERRUPTS \
>> +       (GEN12_DISPLAY_PXP_STATE_TERMINATED_INTERRUPT | \
>> +        GEN12_DISPLAY_APP_TERMINATED_PER_FW_REQ_INTERRUPT | \
>> +        GEN12_DISPLAY_STATE_RESET_COMPLETE_INTERRUPT)
>> +
>>   static inline struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>>   {
>>          return container_of(pxp, struct intel_gt, pxp);
>> @@ -27,6 +36,8 @@ static inline bool intel_pxp_is_active(const struct intel_pxp *pxp)
>>   #ifdef CONFIG_DRM_I915_PXP
>>   void intel_pxp_init(struct intel_pxp *pxp);
>>   void intel_pxp_fini(struct intel_pxp *pxp);
>> +
>> +int intel_pxp_wait_for_termination_completion(struct intel_pxp *pxp);
>>   #else
>>   static inline void intel_pxp_init(struct intel_pxp *pxp)
>>   {
>> @@ -35,6 +46,11 @@ static inline void intel_pxp_init(struct intel_pxp *pxp)
>>   static inline void intel_pxp_fini(struct intel_pxp *pxp)
>>   {
>>   }
>> +
>> +static inline int intel_pxp_wait_for_termination_completion(struct intel_pxp *pxp)
>> +{
>> +       return 0;
>> +}
>>   #endif
>>   
>>   #endif /* __INTEL_PXP_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
>> new file mode 100644
>> index 000000000000..40115bf0b6bb
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
>> @@ -0,0 +1,151 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright(c) 2020 Intel Corporation.
>> + */
>> +#include <linux/workqueue.h>
>> +#include "intel_pxp.h"
>> +#include "intel_pxp_irq.h"
>> +#include "intel_pxp_session.h"
>> +#include "gt/intel_gt_irq.h"
>> +#include "i915_irq.h"
>> +#include "i915_reg.h"
>> +
>> +static int pxp_terminate(struct intel_pxp *pxp)
>> +{
>> +       int ret = 0;
>> +
>> +       mutex_lock(&pxp->mutex);
>> +
>> +       pxp->global_state_attacked = true;
>> +
>> +       ret = intel_pxp_arb_terminate_session_with_global_terminate(pxp);
>> +
>> +       mutex_unlock(&pxp->mutex);
>> +
>> +       return ret;
>> +}
>> +
>> +static int pxp_terminate_complete(struct intel_pxp *pxp)
>> +{
>> +       int ret = 0;
>> +
>> +       mutex_lock(&pxp->mutex);
>> +
>> +       if (pxp->global_state_attacked) {
>> +               pxp->global_state_attacked = false;
>> +
>> +               /* Re-create the arb session after teardown handle complete */
>> +               ret = intel_pxp_create_arb_session(pxp);
>> +       }
>> +
>> +       mutex_unlock(&pxp->mutex);
>> +
>> +       complete_all(&pxp->termination);
>> +
>> +       return ret;
>> +}
>> +
>> +static void intel_pxp_irq_work(struct work_struct *work)
>> +{
>> +       struct intel_pxp *pxp = container_of(work, typeof(*pxp), irq_work);
>> +       struct intel_gt *gt = pxp_to_gt(pxp);
>> +       u32 events = 0;
>> +
>> +       spin_lock_irq(&gt->irq_lock);
>> +       events = fetch_and_zero(&pxp->current_events);
>> +       spin_unlock_irq(&gt->irq_lock);
>> +
>> +       if (!events)
>> +               return;
>> +
>> +       if (events & (GEN12_DISPLAY_PXP_STATE_TERMINATED_INTERRUPT |
>> +                     GEN12_DISPLAY_APP_TERMINATED_PER_FW_REQ_INTERRUPT))
>> +               pxp_terminate(pxp);
>> +
>> +       if (events & GEN12_DISPLAY_STATE_RESET_COMPLETE_INTERRUPT)
>> +               pxp_terminate_complete(pxp);
>> +
>> +       /*
>> +        * we expect the terminate complete to arrive quickly after emitting
>> +        * the terminate, so check back on it
>> +        */
>> +       if (pxp->irq_enabled)
>> +               queue_work(system_unbound_wq, &pxp->irq_work);
>> +}
>> +
>> +/**
>> + * intel_pxp_irq_handler - Handles PXP interrupts.
>> + * @pxp: pointer to pxp struct
>> + * @iir: interrupt vector
>> + */
>> +void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
>> +{
>> +       struct intel_gt *gt = pxp_to_gt(pxp);
>> +
>> +       if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
>> +               return;
>> +
>> +       lockdep_assert_held(&gt->irq_lock);
>> +
>> +       if (unlikely(!iir))
>> +               return;
>> +
>> +       /* immediately mark PXP as inactive on termination */
>> +       if (iir & (GEN12_DISPLAY_PXP_STATE_TERMINATED_INTERRUPT |
>> +                  GEN12_DISPLAY_APP_TERMINATED_PER_FW_REQ_INTERRUPT))
>> +               intel_pxp_mark_termination_in_progress(pxp);
>> +
>> +       pxp->current_events |= iir;
>> +       queue_work(system_unbound_wq, &pxp->irq_work);
>> +}
>> +
>> +static inline void __pxp_set_interrupts(struct intel_gt *gt, u32 interrupts)
>> +{
>> +       struct intel_uncore *uncore = gt->uncore;
>> +       const u32 mask = interrupts << 16;
>> +
>> +       intel_uncore_write(uncore, GEN11_CRYPTO_RSVD_INTR_ENABLE, mask);
>> +       intel_uncore_write(uncore, GEN11_CRYPTO_RSVD_INTR_MASK,  ~mask);
>> +}
>> +
>> +static inline void pxp_irq_reset(struct intel_gt *gt)
>> +{
>> +       spin_lock_irq(&gt->irq_lock);
>> +       gen11_gt_reset_one_iir(gt, 0, GEN11_KCR);
>> +       spin_unlock_irq(&gt->irq_lock);
>> +}
>> +
>> +void intel_pxp_irq_init(struct intel_pxp *pxp)
>> +{
>> +       INIT_WORK(&pxp->irq_work, intel_pxp_irq_work);
>> +}
>> +
>> +void intel_pxp_irq_enable(struct intel_pxp *pxp)
>> +{
>> +       struct intel_gt *gt = pxp_to_gt(pxp);
>> +
>> +       spin_lock_irq(&gt->irq_lock);
>> +       if (!pxp->irq_enabled) {
>> +               WARN_ON_ONCE(gen11_gt_reset_one_iir(gt, 0, GEN11_KCR));
>> +               __pxp_set_interrupts(gt, GEN12_PXP_INTERRUPTS);
>> +               pxp->irq_enabled = true;
>> +       }
>> +       spin_unlock_irq(&gt->irq_lock);
>> +}
>> +
>> +void intel_pxp_irq_disable(struct intel_pxp *pxp)
>> +{
>> +       struct intel_gt *gt = pxp_to_gt(pxp);
>> +
>> +       spin_lock_irq(&gt->irq_lock);
>> +
>> +       pxp->irq_enabled = false;
>> +       __pxp_set_interrupts(gt, 0);
>> +
>> +       spin_unlock_irq(&gt->irq_lock);
>> +       intel_synchronize_irq(gt->i915);
>> +
>> +       pxp_irq_reset(gt);
>> +
>> +       flush_work(&pxp->irq_work);
>> +}
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
>> new file mode 100644
>> index 000000000000..7a875831636d
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
>> @@ -0,0 +1,33 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
>> + */
>> +
>> +#ifndef __INTEL_PXP_IRQ_H__
>> +#define __INTEL_PXP_IRQ_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct intel_pxp;
>> +
>> +#ifdef CONFIG_DRM_I915_PXP
>> +void intel_pxp_irq_init(struct intel_pxp *pxp);
>> +void intel_pxp_irq_enable(struct intel_pxp *pxp);
>> +void intel_pxp_irq_disable(struct intel_pxp *pxp);
>> +void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir);
>> +#else
>> +void intel_pxp_irq_init(struct intel_pxp *pxp)
>> +{
>> +}
>> +void intel_pxp_irq_enable(struct intel_pxp *pxp)
>> +{
>> +}
>> +void intel_pxp_irq_disable(struct intel_pxp *pxp)
>> +{
>> +}
>> +static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
>> +{
>> +}
>> +#endif
>> +
>> +#endif /* __INTEL_PXP_IRQ_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> index ddbfac75686a..488006a0cf39 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> @@ -99,8 +99,6 @@ int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp)
>>   
>>          lockdep_assert_held(&pxp->mutex);
>>   
>> -       pxp->arb_is_in_play = false;
>> -
>>          /* terminate the hw sessions */
>>          ret = intel_pxp_submit_session_termination(pxp, ARB_SESSION);
>>          if (ret) {
>> @@ -118,3 +116,10 @@ int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp)
>>   
>>          return ret;
>>   }
>> +
>> +void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp)
>> +{
>> +       pxp->arb_is_in_play = false;
>> +       reinit_completion(&pxp->termination);
>> +}
>> +
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
>> index 07c97df7a509..931169f795ab 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
>> @@ -13,5 +13,6 @@ struct intel_pxp;
>>   bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp);
>>   int intel_pxp_create_arb_session(struct intel_pxp *pxp);
>>   int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp);
>> +void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
>>   
>>   #endif /* __INTEL_PXP_SESSION_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> index fd9a69248dd8..b84f675c588e 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> @@ -99,9 +99,17 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>>          mutex_lock(&pxp->mutex);
>>   
>>          /* Create arb session only if tee is ready, during system boot or sleep/resume */
>> -       if (intel_pxp_arb_session_is_in_play(pxp))
>> +       if (intel_pxp_arb_session_is_in_play(pxp)) {
>> +               intel_pxp_mark_termination_in_progress(pxp);
>>                  ret = intel_pxp_arb_terminate_session_with_global_terminate(pxp);
>>   
>> +               if (!ret) {
>> +                       mutex_unlock(&pxp->mutex);
>> +                       ret = intel_pxp_wait_for_termination_completion(pxp);
>> +                       mutex_lock(&pxp->mutex);
> * shivers
>
> This does not give off warm fuzzy feeling about the locking.
> It's clear why you had to drop the lock to avoid blocking the interrupt
> bh (the worker), but it's not actually clear that the locking needs to
> be like that.
>
> Oh well, s/if/while/ to cover the lock dropping.
> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
