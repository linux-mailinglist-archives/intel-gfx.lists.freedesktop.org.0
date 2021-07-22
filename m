Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B46C53D2704
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 17:48:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4B7A6EA83;
	Thu, 22 Jul 2021 15:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7116ECC8;
 Thu, 22 Jul 2021 15:48:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="233489168"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="233489168"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 08:48:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="496990957"
Received: from dut151-iclu.fm.intel.com ([10.105.23.43])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 08:48:16 -0700
Date: Thu, 22 Jul 2021 15:48:14 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20210722154814.GA20858@DUT151-ICLU.fm.intel.com>
References: <20210716201724.54804-1-matthew.brost@intel.com>
 <20210716201724.54804-7-matthew.brost@intel.com>
 <2a40e75b-55ce-acb8-533e-6c5c21c7910e@intel.com>
 <20210720040400.GA23029@sdutt-i7>
 <dd809d70-1ed2-7013-7580-734ce752e87a@intel.com>
 <80f1194e-b93c-019f-c793-cfa21be26a1c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80f1194e-b93c-019f-c793-cfa21be26a1c@intel.com>
Subject: Re: [Intel-gfx] [PATCH 06/51] drm/i915/guc: Implement GuC context
 operations for new inteface
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 09:57:00AM +0200, Michal Wajdeczko wrote:
> =

> =

> On 22.07.2021 01:51, Daniele Ceraolo Spurio wrote:
> > =

> > =

> > On 7/19/2021 9:04 PM, Matthew Brost wrote:
> >> On Mon, Jul 19, 2021 at 05:51:46PM -0700, Daniele Ceraolo Spurio wrote:
> >>>
> >>> On 7/16/2021 1:16 PM, Matthew Brost wrote:
> >>>> Implement GuC context operations which includes GuC specific operati=
ons
> >>>> alloc, pin, unpin, and destroy.
> >>>>
> >>>> v2:
> >>>> =A0=A0 (Daniel Vetter)
> >>>> =A0=A0=A0 - Use msleep_interruptible rather than cond_resched in bus=
y loop
> >>>> =A0=A0 (Michal)
> >>>> =A0=A0=A0 - Remove C++ style comment
> >>>>
> >>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> >>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> >>>> ---
> >>>> =A0=A0 drivers/gpu/drm/i915/gt/intel_context.c=A0=A0=A0=A0=A0=A0 |=
=A0=A0 5 +
> >>>> =A0=A0 drivers/gpu/drm/i915/gt/intel_context_types.h |=A0 22 +-
> >>>> =A0=A0 drivers/gpu/drm/i915/gt/intel_lrc_reg.h=A0=A0=A0=A0=A0=A0 |=
=A0=A0 1 -
> >>>> =A0=A0 drivers/gpu/drm/i915/gt/uc/intel_guc.h=A0=A0=A0=A0=A0=A0=A0 |=
=A0 40 ++
> >>>> =A0=A0 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c=A0=A0=A0=A0 |=A0=A0=
 4 +
> >>>> =A0=A0 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 666
> >>>> ++++++++++++++++--
> >>>> =A0=A0 drivers/gpu/drm/i915/i915_reg.h=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 |=A0=A0 1 +
> >>>> =A0=A0 drivers/gpu/drm/i915/i915_request.c=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 |=A0=A0 1 +
> >>>> =A0=A0 8 files changed, 685 insertions(+), 55 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c
> >>>> b/drivers/gpu/drm/i915/gt/intel_context.c
> >>>> index bd63813c8a80..32fd6647154b 100644
> >>>> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> >>>> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> >>>> @@ -384,6 +384,11 @@ intel_context_init(struct intel_context *ce,
> >>>> struct intel_engine_cs *engine)
> >>>> =A0=A0=A0=A0=A0=A0 mutex_init(&ce->pin_mutex);
> >>>> +=A0=A0=A0 spin_lock_init(&ce->guc_state.lock);
> >>>> +
> >>>> +=A0=A0=A0 ce->guc_id =3D GUC_INVALID_LRC_ID;
> >>>> +=A0=A0=A0 INIT_LIST_HEAD(&ce->guc_id_link);
> >>>> +
> >>>> =A0=A0=A0=A0=A0=A0 i915_active_init(&ce->active,
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 __intel_context_active=
, __intel_context_retire, 0);
> >>>> =A0=A0 }
> >>>> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h
> >>>> b/drivers/gpu/drm/i915/gt/intel_context_types.h
> >>>> index 6d99631d19b9..606c480aec26 100644
> >>>> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> >>>> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> >>>> @@ -96,6 +96,7 @@ struct intel_context {
> >>>> =A0=A0 #define CONTEXT_BANNED=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 6
> >>>> =A0=A0 #define CONTEXT_FORCE_SINGLE_SUBMISSION=A0=A0=A0 7
> >>>> =A0=A0 #define CONTEXT_NOPREEMPT=A0=A0=A0=A0=A0=A0=A0 8
> >>>> +#define CONTEXT_LRCA_DIRTY=A0=A0=A0=A0=A0=A0=A0 9
> >>>> =A0=A0=A0=A0=A0=A0 struct {
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u64 timeout_us;
> >>>> @@ -138,14 +139,29 @@ struct intel_context {
> >>>> =A0=A0=A0=A0=A0=A0 u8 wa_bb_page; /* if set, page num reserved for c=
ontext
> >>>> workarounds */
> >>>> +=A0=A0=A0 struct {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 /** lock: protects everything in guc_state */
> >>>> +=A0=A0=A0=A0=A0=A0=A0 spinlock_t lock;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 /**
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0 * sched_state: scheduling state of this co=
ntext using GuC
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0 * submission
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0=A0=A0=A0=A0 u8 sched_state;
> >>>> +=A0=A0=A0 } guc_state;
> >>>> +
> >>>> =A0=A0=A0=A0=A0=A0 /* GuC scheduling state flags that do not require=
 a lock. */
> >>>> =A0=A0=A0=A0=A0=A0 atomic_t guc_sched_state_no_lock;
> >>>> +=A0=A0=A0 /* GuC LRC descriptor ID */
> >>>> +=A0=A0=A0 u16 guc_id;
> >>>> +
> >>>> +=A0=A0=A0 /* GuC LRC descriptor reference count */
> >>>> +=A0=A0=A0 atomic_t guc_id_ref;
> >>>> +
> >>>> =A0=A0=A0=A0=A0=A0 /*
> >>>> -=A0=A0=A0=A0 * GuC LRC descriptor ID - Not assigned in this patch b=
ut
> >>>> future patches
> >>>> -=A0=A0=A0=A0 * in the series will.
> >>>> +=A0=A0=A0=A0 * GuC ID link - in list when unpinned but guc_id still=
 valid
> >>>> in GuC
> >>>> =A0=A0=A0=A0=A0=A0=A0 */
> >>>> -=A0=A0=A0 u16 guc_id;
> >>>> +=A0=A0=A0 struct list_head guc_id_link;
> >>>> =A0=A0 };
> >>>> =A0=A0 #endif /* __INTEL_CONTEXT_TYPES__ */
> >>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> >>>> b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> >>>> index 41e5350a7a05..49d4857ad9b7 100644
> >>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> >>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> >>>> @@ -87,7 +87,6 @@
> >>>> =A0=A0 #define GEN11_CSB_WRITE_PTR_MASK=A0=A0=A0 (GEN11_CSB_PTR_MASK=
 << 0)
> >>>> =A0=A0 #define MAX_CONTEXT_HW_ID=A0=A0=A0 (1 << 21) /* exclusive */
> >>>> -#define MAX_GUC_CONTEXT_HW_ID=A0=A0=A0 (1 << 20) /* exclusive */
> >>>> =A0=A0 #define GEN11_MAX_CONTEXT_HW_ID=A0=A0=A0 (1 << 11) /* exclusi=
ve */
> >>>> =A0=A0 /* in Gen12 ID 0x7FF is reserved to indicate idle */
> >>>> =A0=A0 #define GEN12_MAX_CONTEXT_HW_ID=A0=A0=A0 (GEN11_MAX_CONTEXT_H=
W_ID - 1)
> >>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> >>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> >>>> index 8c7b92f699f1..30773cd699f5 100644
> >>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> >>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> >>>> @@ -7,6 +7,7 @@
> >>>> =A0=A0 #define _INTEL_GUC_H_
> >>>> =A0=A0 #include <linux/xarray.h>
> >>>> +#include <linux/delay.h>
> >>>> =A0=A0 #include "intel_uncore.h"
> >>>> =A0=A0 #include "intel_guc_fw.h"
> >>>> @@ -44,6 +45,14 @@ struct intel_guc {
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 void (*disable)(struct intel_guc *guc=
);
> >>>> =A0=A0=A0=A0=A0=A0 } interrupts;
> >>>> +=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0 * contexts_lock protects the pool of free guc ids and =
a linked
> >>>> list of
> >>>> +=A0=A0=A0=A0 * guc ids available to be stolen
> >>>> +=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0 spinlock_t contexts_lock;
> >>>> +=A0=A0=A0 struct ida guc_ids;
> >>>> +=A0=A0=A0 struct list_head guc_id_list;
> >>>> +
> >>>> =A0=A0=A0=A0=A0=A0 bool submission_selected;
> >>>> =A0=A0=A0=A0=A0=A0 struct i915_vma *ads_vma;
> >>>> @@ -101,6 +110,34 @@ intel_guc_send_and_receive(struct intel_guc
> >>>> *guc, const u32 *action, u32 len,
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 response_b=
uf, response_buf_size, 0);
> >>>> =A0=A0 }
> >>>> +static inline int intel_guc_send_busy_loop(struct intel_guc* guc,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
const u32 *action,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
u32 len,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
bool loop)
> >>>> +{
> >>>> +=A0=A0=A0 int err;
> >>>> +=A0=A0=A0 unsigned int sleep_period_ms =3D 1;
> >>>> +=A0=A0=A0 bool not_atomic =3D !in_atomic() && !irqs_disabled();
> >>>> +
> >>>> +=A0=A0=A0 /* No sleeping with spin locks, just busy loop */
> >>>> +=A0=A0=A0 might_sleep_if(loop && not_atomic);
> >>>> +
> >>>> +retry:
> >>>> +=A0=A0=A0 err =3D intel_guc_send_nb(guc, action, len);
> >>>> +=A0=A0=A0 if (unlikely(err =3D=3D -EBUSY && loop)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 if (likely(not_atomic)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (msleep_interruptible(sleep_pe=
riod_ms))
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINTR;
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sleep_period_ms =3D sleep_period_=
ms << 1;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 } else {
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cpu_relax();
> >>> Potentially something we can change later, but if we're in atomic
> >>> context we
> >>> can't keep looping without a timeout while we get -EBUSY, we need to
> >>> bail
> >>> out early.
> >>>
> >> Eventually intel_guc_send_nb will pop with a different return code aft=
er
> >> 1 second I think if the GuC is hung.
> > =

> > I know, the point is that 1 second is too long in atomic context. This
> > has to either complete quick in atomic or be forked off to a worker. Can
> > fix as a follow up.
> =

> if we implement fallback to a worker, then maybe we can get rid of this
> busy loop completely, as it was supposed to be only needed for rare
> cases when CTBs were full due to unlikely congestion either caused by us

Right. That last project I worked on we had a circular buffer to
communicate with the HW and fell back to kthread (or workqueue?) when
the buffer the was full. We likely could do something like that but if
we have malloc memory that gets tricky if we are atomic contexts. This
is good one to write down and revisit a bit later.

Matt

> (host driver didn't read G2H on time or filled up H2G faster than GuC
> could proceed it) or GuC actual failure (no H2G processing at all).
> =

> Michal
> =

> > =

> > Daniele
> > =

> >> =A0
> >>>> +=A0=A0=A0=A0=A0=A0=A0 }
> >>>> +=A0=A0=A0=A0=A0=A0=A0 goto retry;
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 return err;
> >>>> +}
> >>>> +
> >>>> =A0=A0 static inline void intel_guc_to_host_event_handler(struct
> >>>> intel_guc *guc)
> >>>> =A0=A0 {
> >>>> =A0=A0=A0=A0=A0=A0 intel_guc_ct_event_handler(&guc->ct);
> >>>> @@ -202,6 +239,9 @@ static inline void intel_guc_disable_msg(struct
> >>>> intel_guc *guc, u32 mask)
> >>>> =A0=A0 int intel_guc_reset_engine(struct intel_guc *guc,
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_eng=
ine_cs *engine);
> >>>> +int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 con=
st u32 *msg, u32 len);
> >>>> +
> >>>> =A0=A0 void intel_guc_load_status(struct intel_guc *guc, struct
> >>>> drm_printer *p);
> >>>> =A0=A0 #endif
> >>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>> index 83ec60ea3f89..28ff82c5be45 100644
> >>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>> @@ -928,6 +928,10 @@ static int ct_process_request(struct
> >>>> intel_guc_ct *ct, struct ct_incoming_msg *r
> >>>> =A0=A0=A0=A0=A0=A0 case INTEL_GUC_ACTION_DEFAULT:
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D intel_guc_to_host_process_rec=
v_msg(guc, payload, len);
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
> >>>> +=A0=A0=A0 case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> >>>> +=A0=A0=A0=A0=A0=A0=A0 ret =3D intel_guc_deregister_done_process_msg=
(guc, payload,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 len);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 break;
> >>>> =A0=A0=A0=A0=A0=A0 default:
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D -EOPNOTSUPP;
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
> >>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> >>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> >>>> index 53b4a5eb4a85..a47b3813b4d0 100644
> >>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> >>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> >>>> @@ -13,7 +13,9 @@
> >>>> =A0=A0 #include "gt/intel_gt.h"
> >>>> =A0=A0 #include "gt/intel_gt_irq.h"
> >>>> =A0=A0 #include "gt/intel_gt_pm.h"
> >>>> +#include "gt/intel_gt_requests.h"
> >>>> =A0=A0 #include "gt/intel_lrc.h"
> >>>> +#include "gt/intel_lrc_reg.h"
> >>>> =A0=A0 #include "gt/intel_mocs.h"
> >>>> =A0=A0 #include "gt/intel_ring.h"
> >>>> @@ -85,6 +87,73 @@ static inline void clr_context_enabled(struct
> >>>> intel_context *ce)
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &ce->guc_sched_state_no_lock=
);
> >>>> =A0=A0 }
> >>>> +/*
> >>>> + * Below is a set of functions which control the GuC scheduling
> >>>> state which
> >>>> + * require a lock, aside from the special case where the functions
> >>>> are called
> >>>> + * from guc_lrc_desc_pin(). In that case it isn't possible for any
> >>>> other code
> >>>> + * path to be executing on the context.
> >>>> + */
> >>> Is there a reason to avoid taking the lock in guc_lrc_desc_pin, even
> >>> if it
> >>> isn't strictly needed? I'd prefer to avoid the asymmetry in the locki=
ng
> >> If this code is called from releasing a fence a circular dependency is
> >> created. Once we move the DRM scheduler the locking becomes way easier
> >> and we clean this up then. We already have task for locking clean up.
> >>
> >>> scheme if possible, as that might case trouble if thing change in the
> >>> future.
> >> Again this is temporary code, so I think we can live with this until t=
he
> >> DRM scheduler lands.
> >>
> >>>> +#define SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER=A0=A0=A0 BIT(0)
> >>>> +#define SCHED_STATE_DESTROYED=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 BIT(1)
> >>>> +static inline void init_sched_state(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 /* Only should be called from guc_lrc_desc_pin() */
> >>>> +=A0=A0=A0 atomic_set(&ce->guc_sched_state_no_lock, 0);
> >>>> +=A0=A0=A0 ce->guc_state.sched_state =3D 0;
> >>>> +}
> >>>> +
> >>>> +static inline bool
> >>>> +context_wait_for_deregister_to_register(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 return (ce->guc_state.sched_state &
> >>>> +=A0=A0=A0=A0=A0=A0=A0 SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER);
> >>> No need for (). Below as well.
> >>>
> >> Yep.
> >>
> >>>> +}
> >>>> +
> >>>> +static inline void
> >>>> +set_context_wait_for_deregister_to_register(struct intel_context *c=
e)
> >>>> +{
> >>>> +=A0=A0=A0 /* Only should be called from guc_lrc_desc_pin() */
> >>>> +=A0=A0=A0 ce->guc_state.sched_state |=3D
> >>>> +=A0=A0=A0=A0=A0=A0=A0 SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER;
> >>>> +}
> >>>> +
> >>>> +static inline void
> >>>> +clr_context_wait_for_deregister_to_register(struct intel_context *c=
e)
> >>>> +{
> >>>> +=A0=A0=A0 lockdep_assert_held(&ce->guc_state.lock);
> >>>> +=A0=A0=A0 ce->guc_state.sched_state =3D
> >>>> +=A0=A0=A0=A0=A0=A0=A0 (ce->guc_state.sched_state &
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0 ~SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGIST=
ER);
> >>> nit: can also use
> >>>
> >>> ce->guc_state.sched_state &=3D
> >>> =A0=A0=A0=A0~SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER
> >>>
> >> Yep.
> >> =A0
> >>>> +}
> >>>> +
> >>>> +static inline bool
> >>>> +context_destroyed(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 return (ce->guc_state.sched_state & SCHED_STATE_DESTROYED=
);
> >>>> +}
> >>>> +
> >>>> +static inline void
> >>>> +set_context_destroyed(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 lockdep_assert_held(&ce->guc_state.lock);
> >>>> +=A0=A0=A0 ce->guc_state.sched_state |=3D SCHED_STATE_DESTROYED;
> >>>> +}
> >>>> +
> >>>> +static inline bool context_guc_id_invalid(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 return (ce->guc_id =3D=3D GUC_INVALID_LRC_ID);
> >>>> +}
> >>>> +
> >>>> +static inline void set_context_guc_id_invalid(struct intel_context
> >>>> *ce)
> >>>> +{
> >>>> +=A0=A0=A0 ce->guc_id =3D GUC_INVALID_LRC_ID;
> >>>> +}
> >>>> +
> >>>> +static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 return &ce->engine->gt->uc.guc;
> >>>> +}
> >>>> +
> >>>> =A0=A0 static inline struct i915_priolist *to_priolist(struct rb_nod=
e *rb)
> >>>> =A0=A0 {
> >>>> =A0=A0=A0=A0=A0=A0 return rb_entry(rb, struct i915_priolist, node);
> >>>> @@ -155,6 +224,9 @@ static int guc_add_request(struct intel_guc
> >>>> *guc, struct i915_request *rq)
> >>>> =A0=A0=A0=A0=A0=A0 int len =3D 0;
> >>>> =A0=A0=A0=A0=A0=A0 bool enabled =3D context_enabled(ce);
> >>>> +=A0=A0=A0 GEM_BUG_ON(!atomic_read(&ce->guc_id_ref));
> >>>> +=A0=A0=A0 GEM_BUG_ON(context_guc_id_invalid(ce));
> >>>> +
> >>>> =A0=A0=A0=A0=A0=A0 if (!enabled) {
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 action[len++] =3D INTEL_GUC_ACTION_SC=
HED_CONTEXT_MODE_SET;
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 action[len++] =3D ce->guc_id;
> >>>> @@ -417,6 +489,10 @@ int intel_guc_submission_init(struct intel_guc
> >>>> *guc)
> >>>> =A0=A0=A0=A0=A0=A0 xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK=
_IRQ);
> >>>> +=A0=A0=A0 spin_lock_init(&guc->contexts_lock);
> >>>> +=A0=A0=A0 INIT_LIST_HEAD(&guc->guc_id_list);
> >>>> +=A0=A0=A0 ida_init(&guc->guc_ids);
> >>>> +
> >>>> =A0=A0=A0=A0=A0=A0 return 0;
> >>>> =A0=A0 }
> >>>> @@ -429,9 +505,303 @@ void intel_guc_submission_fini(struct
> >>>> intel_guc *guc)
> >>>> =A0=A0=A0=A0=A0=A0 i915_sched_engine_put(guc->sched_engine);
> >>>> =A0=A0 }
> >>>> -static int guc_context_alloc(struct intel_context *ce)
> >>>> +static inline void queue_request(struct i915_sched_engine
> >>>> *sched_engine,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct i915_reques=
t *rq,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 int prio)
> >>>> =A0=A0 {
> >>>> -=A0=A0=A0 return lrc_alloc(ce, ce->engine);
> >>>> +=A0=A0=A0 GEM_BUG_ON(!list_empty(&rq->sched.link));
> >>>> +=A0=A0=A0 list_add_tail(&rq->sched.link,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 i915_sched_lookup_priolist(=
sched_engine, prio));
> >>>> +=A0=A0=A0 set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> >>>> +}
> >>>> +
> >>>> +static int guc_bypass_tasklet_submit(struct intel_guc *guc,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct=
 i915_request *rq)
> >>>> +{
> >>>> +=A0=A0=A0 int ret;
> >>>> +
> >>>> +=A0=A0=A0 __i915_request_submit(rq);
> >>>> +
> >>>> +=A0=A0=A0 trace_i915_request_in(rq, 0);
> >>>> +
> >>>> +=A0=A0=A0 guc_set_lrc_tail(rq);
> >>>> +=A0=A0=A0 ret =3D guc_add_request(guc, rq);
> >>>> +=A0=A0=A0 if (ret =3D=3D -EBUSY)
> >>>> +=A0=A0=A0=A0=A0=A0=A0 guc->stalled_request =3D rq;
> >>>> +
> >>>> +=A0=A0=A0 return ret;
> >>>> +}
> >>>> +
> >>>> +static void guc_submit_request(struct i915_request *rq)
> >>>> +{
> >>>> +=A0=A0=A0 struct i915_sched_engine *sched_engine =3D rq->engine->sc=
hed_engine;
> >>>> +=A0=A0=A0 struct intel_guc *guc =3D &rq->engine->gt->uc.guc;
> >>>> +=A0=A0=A0 unsigned long flags;
> >>>> +
> >>>> +=A0=A0=A0 /* Will be called from irq-context when using foreign fen=
ces. */
> >>>> +=A0=A0=A0 spin_lock_irqsave(&sched_engine->lock, flags);
> >>>> +
> >>>> +=A0=A0=A0 if (guc->stalled_request ||
> >>>> !i915_sched_engine_is_empty(sched_engine))
> >>>> +=A0=A0=A0=A0=A0=A0=A0 queue_request(sched_engine, rq, rq_prio(rq));
> >>>> +=A0=A0=A0 else if (guc_bypass_tasklet_submit(guc, rq) =3D=3D -EBUSY)
> >>>> +=A0=A0=A0=A0=A0=A0=A0 tasklet_hi_schedule(&sched_engine->tasklet);
> >>>> +
> >>>> +=A0=A0=A0 spin_unlock_irqrestore(&sched_engine->lock, flags);
> >>>> +}
> >>>> +
> >>>> +#define GUC_ID_START=A0=A0=A0 64=A0=A0=A0 /* First 64 guc_ids reser=
ved */
> >>>> +static int new_guc_id(struct intel_guc *guc)
> >>>> +{
> >>>> +=A0=A0=A0 return ida_simple_get(&guc->guc_ids, GUC_ID_START,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 GUC_MAX_LRC_DES=
CRIPTORS, GFP_KERNEL |
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 __GFP_RETRY_MAY=
FAIL | __GFP_NOWARN);
> >>>> +}
> >>>> +
> >>>> +static void __release_guc_id(struct intel_guc *guc, struct
> >>>> intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 if (!context_guc_id_invalid(ce)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 ida_simple_remove(&guc->guc_ids, ce->guc_id);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 reset_lrc_desc(guc, ce->guc_id);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 set_context_guc_id_invalid(ce);
> >>>> +=A0=A0=A0 }
> >>>> +=A0=A0=A0 if (!list_empty(&ce->guc_id_link))
> >>>> +=A0=A0=A0=A0=A0=A0=A0 list_del_init(&ce->guc_id_link);
> >>>> +}
> >>>> +
> >>>> +static void release_guc_id(struct intel_guc *guc, struct
> >>>> intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 unsigned long flags;
> >>>> +
> >>>> +=A0=A0=A0 spin_lock_irqsave(&guc->contexts_lock, flags);
> >>>> +=A0=A0=A0 __release_guc_id(guc, ce);
> >>>> +=A0=A0=A0 spin_unlock_irqrestore(&guc->contexts_lock, flags);
> >>>> +}
> >>>> +
> >>>> +static int steal_guc_id(struct intel_guc *guc)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_context *ce;
> >>>> +=A0=A0=A0 int guc_id;
> >>>> +
> >>>> +=A0=A0=A0 if (!list_empty(&guc->guc_id_list)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 ce =3D list_first_entry(&guc->guc_id_list,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 str=
uct intel_context,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 guc=
_id_link);
> >>>> +
> >>>> +=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(atomic_read(&ce->guc_id_ref));
> >>>> +=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(context_guc_id_invalid(ce));
> >>>> +
> >>>> +=A0=A0=A0=A0=A0=A0=A0 list_del_init(&ce->guc_id_link);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 guc_id =3D ce->guc_id;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 set_context_guc_id_invalid(ce);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return guc_id;
> >>>> +=A0=A0=A0 } else {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return -EAGAIN;
> >>>> +=A0=A0=A0 }
> >>>> +}
> >>>> +
> >>>> +static int assign_guc_id(struct intel_guc *guc, u16 *out)
> >>>> +{
> >>>> +=A0=A0=A0 int ret;
> >>>> +
> >>>> +=A0=A0=A0 ret =3D new_guc_id(guc);
> >>>> +=A0=A0=A0 if (unlikely(ret < 0)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 ret =3D steal_guc_id(guc);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 if (ret < 0)
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 *out =3D ret;
> >>>> +=A0=A0=A0 return 0;
> >>> Is it worth adding spinlock_held asserts for guc->contexts_lock in
> >>> these ID
> >>> functions? Doubles up as a documentation of what locking we expect.
> >>>
> >> Never a bad idea to have asserts in the code. Will add.
> >>
> >>>> +}
> >>>> +
> >>>> +#define PIN_GUC_ID_TRIES=A0=A0=A0 4
> >>>> +static int pin_guc_id(struct intel_guc *guc, struct intel_context *=
ce)
> >>>> +{
> >>>> +=A0=A0=A0 int ret =3D 0;
> >>>> +=A0=A0=A0 unsigned long flags, tries =3D PIN_GUC_ID_TRIES;
> >>>> +
> >>>> +=A0=A0=A0 GEM_BUG_ON(atomic_read(&ce->guc_id_ref));
> >>>> +
> >>>> +try_again:
> >>>> +=A0=A0=A0 spin_lock_irqsave(&guc->contexts_lock, flags);
> >>>> +
> >>>> +=A0=A0=A0 if (context_guc_id_invalid(ce)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 ret =3D assign_guc_id(guc, &ce->guc_id);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto out_unlock;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 ret =3D 1;=A0=A0=A0 /* Indidcates newly assig=
ned guc_id */
> >>>> +=A0=A0=A0 }
> >>>> +=A0=A0=A0 if (!list_empty(&ce->guc_id_link))
> >>>> +=A0=A0=A0=A0=A0=A0=A0 list_del_init(&ce->guc_id_link);
> >>>> +=A0=A0=A0 atomic_inc(&ce->guc_id_ref);
> >>>> +
> >>>> +out_unlock:
> >>>> +=A0=A0=A0 spin_unlock_irqrestore(&guc->contexts_lock, flags);
> >>>> +
> >>>> +=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0 * -EAGAIN indicates no guc_ids are available, let's re=
tire any
> >>>> +=A0=A0=A0=A0 * outstanding requests to see if that frees up a guc_i=
d. If
> >>>> the first
> >>>> +=A0=A0=A0=A0 * retire didn't help, insert a sleep with the timeslice
> >>>> duration before
> >>>> +=A0=A0=A0=A0 * attempting to retire more requests. Double the sleep=
 period
> >>>> each
> >>>> +=A0=A0=A0=A0 * subsequent pass before finally giving up. The sleep =
period
> >>>> has max of
> >>>> +=A0=A0=A0=A0 * 100ms and minimum of 1ms.
> >>>> +=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0 if (ret =3D=3D -EAGAIN && --tries) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 if (PIN_GUC_ID_TRIES - tries > 1) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 unsigned int timeslice_shifted =
=3D
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ce->engine->props.tim=
eslice_duration_ms <<
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (PIN_GUC_ID_TRIES - t=
ries - 2);
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 unsigned int max =3D min_t(unsign=
ed int, 100,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 timeslice_shifted);
> >>>> +
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 msleep(max_t(unsigned int, max, 1=
));
> >>>> +=A0=A0=A0=A0=A0=A0=A0 }
> >>>> +=A0=A0=A0=A0=A0=A0=A0 intel_gt_retire_requests(guc_to_gt(guc));
> >>>> +=A0=A0=A0=A0=A0=A0=A0 goto try_again;
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 return ret;
> >>>> +}
> >>>> +
> >>>> +static void unpin_guc_id(struct intel_guc *guc, struct
> >>>> intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 unsigned long flags;
> >>>> +
> >>>> +=A0=A0=A0 GEM_BUG_ON(atomic_read(&ce->guc_id_ref) < 0);
> >>>> +
> >>>> +=A0=A0=A0 spin_lock_irqsave(&guc->contexts_lock, flags);
> >>>> +=A0=A0=A0 if (!context_guc_id_invalid(ce) && list_empty(&ce->guc_id=
_link) &&
> >>>> +=A0=A0=A0=A0=A0=A0=A0 !atomic_read(&ce->guc_id_ref))
> >>>> +=A0=A0=A0=A0=A0=A0=A0 list_add_tail(&ce->guc_id_link, &guc->guc_id_=
list);
> >>>> +=A0=A0=A0 spin_unlock_irqrestore(&guc->contexts_lock, flags);
> >>>> +}
> >>>> +
> >>>> +static int __guc_action_register_context(struct intel_guc *guc,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 gu=
c_id,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 of=
fset)
> >>>> +{
> >>>> +=A0=A0=A0 u32 action[] =3D {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 INTEL_GUC_ACTION_REGISTER_CONTEXT,
> >>>> +=A0=A0=A0=A0=A0=A0=A0 guc_id,
> >>>> +=A0=A0=A0=A0=A0=A0=A0 offset,
> >>>> +=A0=A0=A0 };
> >>>> +
> >>>> +=A0=A0=A0 return intel_guc_send_busy_loop(guc, action,
> >>>> ARRAY_SIZE(action), true);
> >>>> +}
> >>>> +
> >>>> +static int register_context(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_guc *guc =3D ce_to_guc(ce);
> >>>> +=A0=A0=A0 u32 offset =3D intel_guc_ggtt_offset(guc, guc->lrc_desc_p=
ool) +
> >>>> +=A0=A0=A0=A0=A0=A0=A0 ce->guc_id * sizeof(struct guc_lrc_desc);
> >>>> +
> >>>> +=A0=A0=A0 return __guc_action_register_context(guc, ce->guc_id, off=
set);
> >>>> +}
> >>>> +
> >>>> +static int __guc_action_deregister_context(struct intel_guc *guc,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
u32 guc_id)
> >>>> +{
> >>>> +=A0=A0=A0 u32 action[] =3D {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 INTEL_GUC_ACTION_DEREGISTER_CONTEXT,
> >>>> +=A0=A0=A0=A0=A0=A0=A0 guc_id,
> >>>> +=A0=A0=A0 };
> >>>> +
> >>>> +=A0=A0=A0 return intel_guc_send_busy_loop(guc, action,
> >>>> ARRAY_SIZE(action), true);
> >>>> +}
> >>>> +
> >>>> +static int deregister_context(struct intel_context *ce, u32 guc_id)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_guc *guc =3D ce_to_guc(ce);
> >>>> +
> >>>> +=A0=A0=A0 return __guc_action_deregister_context(guc, guc_id);
> >>>> +}
> >>>> +
> >>>> +static intel_engine_mask_t adjust_engine_mask(u8 class,
> >>>> intel_engine_mask_t mask)
> >>>> +{
> >>>> +=A0=A0=A0 switch (class) {
> >>>> +=A0=A0=A0 case RENDER_CLASS:
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return mask >> RCS0;
> >>>> +=A0=A0=A0 case VIDEO_ENHANCEMENT_CLASS:
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return mask >> VECS0;
> >>>> +=A0=A0=A0 case VIDEO_DECODE_CLASS:
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return mask >> VCS0;
> >>>> +=A0=A0=A0 case COPY_ENGINE_CLASS:
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return mask >> BCS0;
> >>>> +=A0=A0=A0 default:
> >>>> +=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON("Invalid Class");
> >>> we usually use MISSING_CASE for this type of errors.
> >> As soon as start talking in logical space (series immediatly after this
> >> gets merged) this function gets deleted but will fix.
> >>
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return 0;
> >>>> +=A0=A0=A0 }
> >>>> +}
> >>>> +
> >>>> +static void guc_context_policy_init(struct intel_engine_cs *engine,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct gu=
c_lrc_desc *desc)
> >>>> +{
> >>>> +=A0=A0=A0 desc->policy_flags =3D 0;
> >>>> +
> >>>> +=A0=A0=A0 desc->execution_quantum =3D
> >>>> CONTEXT_POLICY_DEFAULT_EXECUTION_QUANTUM_US;
> >>>> +=A0=A0=A0 desc->preemption_timeout =3D
> >>>> CONTEXT_POLICY_DEFAULT_PREEMPTION_TIME_US;
> >>>> +}
> >>>> +
> >>>> +static int guc_lrc_desc_pin(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_runtime_pm *runtime_pm =3D
> >>>> +=A0=A0=A0=A0=A0=A0=A0 &ce->engine->gt->i915->runtime_pm;
> >>> If you move this after the engine var below you can skip the ce->engi=
ne
> >>> jump. Also, you can shorten the pointer chasing by using
> >>> engine->uncore->rpm.
> >>>
> >> Sure.
> >>
> >>>> +=A0=A0=A0 struct intel_engine_cs *engine =3D ce->engine;
> >>>> +=A0=A0=A0 struct intel_guc *guc =3D &engine->gt->uc.guc;
> >>>> +=A0=A0=A0 u32 desc_idx =3D ce->guc_id;
> >>>> +=A0=A0=A0 struct guc_lrc_desc *desc;
> >>>> +=A0=A0=A0 bool context_registered;
> >>>> +=A0=A0=A0 intel_wakeref_t wakeref;
> >>>> +=A0=A0=A0 int ret =3D 0;
> >>>> +
> >>>> +=A0=A0=A0 GEM_BUG_ON(!engine->mask);
> >>>> +
> >>>> +=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0 * Ensure LRC + CT vmas are is same region as write bar=
rier is
> >>>> done
> >>>> +=A0=A0=A0=A0 * based on CT vma region.
> >>>> +=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0 GEM_BUG_ON(i915_gem_object_is_lmem(guc->ct.vma->obj) !=3D
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 i915_gem_object_is_lmem(ce->ring->vm=
a->obj));
> >>>> +
> >>>> +=A0=A0=A0 context_registered =3D lrc_desc_registered(guc, desc_idx);
> >>>> +
> >>>> +=A0=A0=A0 reset_lrc_desc(guc, desc_idx);
> >>>> +=A0=A0=A0 set_lrc_desc_registered(guc, desc_idx, ce);
> >>>> +
> >>>> +=A0=A0=A0 desc =3D __get_lrc_desc(guc, desc_idx);
> >>>> +=A0=A0=A0 desc->engine_class =3D engine_class_to_guc_class(engine->=
class);
> >>>> +=A0=A0=A0 desc->engine_submit_mask =3D adjust_engine_mask(engine->c=
lass,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 engine->mask);
> >>>> +=A0=A0=A0 desc->hw_context_desc =3D ce->lrc.lrca;
> >>>> +=A0=A0=A0 desc->priority =3D GUC_CLIENT_PRIORITY_KMD_NORMAL;
> >>>> +=A0=A0=A0 desc->context_flags =3D CONTEXT_REGISTRATION_FLAG_KMD;
> >>>> +=A0=A0=A0 guc_context_policy_init(engine, desc);
> >>>> +=A0=A0=A0 init_sched_state(ce);
> >>>> +
> >>>> +=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0 * The context_lookup xarray is used to determine if th=
e hardware
> >>>> +=A0=A0=A0=A0 * context is currently registered. There are two cases=
 in
> >>>> which it
> >>>> +=A0=A0=A0=A0 * could be regisgered either the guc_id has been stole=
 from from
> >>> typo regisgered
> >>>
> >> John got this one. Fixed.
> >> =A0
> >>>> +=A0=A0=A0=A0 * another context or the lrc descriptor address of this
> >>>> context has
> >>>> +=A0=A0=A0=A0 * changed. In either case the context needs to be dere=
gistered
> >>>> with the
> >>>> +=A0=A0=A0=A0 * GuC before registering this context.
> >>>> +=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0 if (context_registered) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 set_context_wait_for_deregister_to_register(c=
e);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 intel_context_get(ce);
> >>>> +
> >>>> +=A0=A0=A0=A0=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0 * If stealing the guc_id, this ce has the =
same guc_id as the
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0 * context whos guc_id was stole.
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0=A0=A0=A0=A0 with_intel_runtime_pm(runtime_pm, wakeref)
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D deregister_context(ce, ce=
->guc_id);
> >>>> +=A0=A0=A0 } else {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 with_intel_runtime_pm(runtime_pm, wakeref)
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D register_context(ce);
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 return ret;
> >>>> =A0=A0 }
> >>>> =A0=A0 static int guc_context_pre_pin(struct intel_context *ce,
> >>>> @@ -443,36 +813,139 @@ static int guc_context_pre_pin(struct
> >>>> intel_context *ce,
> >>>> =A0=A0 static int guc_context_pin(struct intel_context *ce, void *va=
ddr)
> >>>> =A0=A0 {
> >>>> +=A0=A0=A0 if (i915_ggtt_offset(ce->state) !=3D
> >>>> +=A0=A0=A0=A0=A0=A0=A0 (ce->lrc.lrca & CTX_GTT_ADDRESS_MASK))
> >>>> +=A0=A0=A0=A0=A0=A0=A0 set_bit(CONTEXT_LRCA_DIRTY, &ce->flags);
> >>> Shouldn't this be set after lrc_pin()? I can see ce->lrc.lrca being
> >>> re-assigned in there; it looks like it can only change if the context=
 is
> >>> new, but for future-proofing IMO better to re-order here.
> >>>
> >> No this is right. ce->state is assigned in lr_pre_pin and ce->lrc.lrca=
 is
> >> assigned in lrc_pin. To catch the change you have to check between
> >> those two functions.
> >>
> >>>> +
> >>>> =A0=A0=A0=A0=A0=A0 return lrc_pin(ce, ce->engine, vaddr);
> >>> Could use a comment to say that the GuC context pinning call is delay=
ed
> >>> until request alloc and to look at the comment in the latter function
> >>> for
> >>> details (or move the explanation here and refer here from request
> >>> alloc).
> >>>
> >> Yes.
> >> =A0
> >>>> =A0=A0 }
> >>>> +static void guc_context_unpin(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_guc *guc =3D ce_to_guc(ce);
> >>>> +
> >>>> +=A0=A0=A0 unpin_guc_id(guc, ce);
> >>>> +=A0=A0=A0 lrc_unpin(ce);
> >>>> +}
> >>>> +
> >>>> +static void guc_context_post_unpin(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 lrc_post_unpin(ce);
> >>> why do we need this function? we can just pass lrc_post_unpin to the =
ops
> >>> (like we already do).
> >>>
> >> We don't before style reasons I think having a GuC specific wrapper is
> >> correct.
> >>
> >>>> +}
> >>>> +
> >>>> +static inline void guc_lrc_desc_unpin(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_engine_cs *engine =3D ce->engine;
> >>>> +=A0=A0=A0 struct intel_guc *guc =3D &engine->gt->uc.guc;
> >>>> +=A0=A0=A0 unsigned long flags;
> >>>> +
> >>>> +=A0=A0=A0 GEM_BUG_ON(!lrc_desc_registered(guc, ce->guc_id));
> >>>> +=A0=A0=A0 GEM_BUG_ON(ce !=3D __get_context(guc, ce->guc_id));
> >>>> +
> >>>> +=A0=A0=A0 spin_lock_irqsave(&ce->guc_state.lock, flags);
> >>>> +=A0=A0=A0 set_context_destroyed(ce);
> >>>> +=A0=A0=A0 spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> >>>> +
> >>>> +=A0=A0=A0 deregister_context(ce, ce->guc_id);
> >>>> +}
> >>>> +
> >>>> +static void guc_context_destroy(struct kref *kref)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_context *ce =3D container_of(kref, typeof(*c=
e), ref);
> >>>> +=A0=A0=A0 struct intel_runtime_pm *runtime_pm =3D
> >>>> &ce->engine->gt->i915->runtime_pm;
> >>> same as above, going through engine->uncore->rpm is shorter
> >>>
> >> Sure.
> >> =A0
> >>>> +=A0=A0=A0 struct intel_guc *guc =3D &ce->engine->gt->uc.guc;
> >>>> +=A0=A0=A0 intel_wakeref_t wakeref;
> >>>> +=A0=A0=A0 unsigned long flags;
> >>>> +
> >>>> +=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0 * If the guc_id is invalid this context has been stole=
n and we
> >>>> can free
> >>>> +=A0=A0=A0=A0 * it immediately. Also can be freed immediately if the=
 context
> >>>> is not
> >>>> +=A0=A0=A0=A0 * registered with the GuC.
> >>>> +=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0 if (context_guc_id_invalid(ce) ||
> >>>> +=A0=A0=A0=A0=A0=A0=A0 !lrc_desc_registered(guc, ce->guc_id)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 release_guc_id(guc, ce);
> >>> it feels a bit weird that we call release_guc_id in the case where
> >>> the id is
> >>> invalid. The code handles it fine, but still the flow doesn't feel
> >>> clean.
> >>> Not a blocker.
> >>>
> >> I understand. Let's see if this can get cleaned up at some point.
> >>
> >>>> +=A0=A0=A0=A0=A0=A0=A0 lrc_destroy(kref);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return;
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0 * We have to acquire the context spinlock and check gu=
c_id
> >>>> again, if it
> >>>> +=A0=A0=A0=A0 * is valid it hasn't been stolen and needs to be dereg=
istered. We
> >>>> +=A0=A0=A0=A0 * delete this context from the list of unpinned guc_ids
> >>>> available to
> >>>> +=A0=A0=A0=A0 * stole to seal a race with guc_lrc_desc_pin(). When t=
he G2H CTB
> >>>> +=A0=A0=A0=A0 * returns indicating this context has been deregistere=
d the
> >>>> guc_id is
> >>>> +=A0=A0=A0=A0 * returned to the pool of available guc_ids.
> >>>> +=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0 spin_lock_irqsave(&guc->contexts_lock, flags);
> >>>> +=A0=A0=A0 if (context_guc_id_invalid(ce)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 __release_guc_id(guc, ce);
> >>> But here the call to __release_guc_id is unneded, right? the ce
> >>> doesn't own
> >>> the ID anymore and both the steal and the release function already cl=
ean
> >>> ce->guc_id_link, so there should be nothing left to clean.
> >>>
> >> This is dead code. Will delete.
> >>
> >>>> +=A0=A0=A0=A0=A0=A0=A0 spin_unlock_irqrestore(&guc->contexts_lock, f=
lags);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 lrc_destroy(kref);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return;
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 if (!list_empty(&ce->guc_id_link))
> >>>> +=A0=A0=A0=A0=A0=A0=A0 list_del_init(&ce->guc_id_link);
> >>>> +=A0=A0=A0 spin_unlock_irqrestore(&guc->contexts_lock, flags);
> >>>> +
> >>>> +=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0 * We defer GuC context deregistration until the contex=
t is
> >>>> destroyed
> >>>> +=A0=A0=A0=A0 * in order to save on CTBs. With this optimization ide=
ally we
> >>>> only need
> >>>> +=A0=A0=A0=A0 * 1 CTB to register the context during the first pin a=
nd 1 CTB to
> >>>> +=A0=A0=A0=A0 * deregister the context when the context is destroyed.
> >>>> Without this
> >>>> +=A0=A0=A0=A0 * optimization, a CTB would be needed every pin & unpi=
n.
> >>>> +=A0=A0=A0=A0 *
> >>>> +=A0=A0=A0=A0 * XXX: Need to acqiure the runtime wakeref as this can=
 be
> >>>> triggered
> >>>> +=A0=A0=A0=A0 * from context_free_worker when not runtime wakeref is=
 held.
> >>>> +=A0=A0=A0=A0 * guc_lrc_desc_unpin requires the runtime as a GuC reg=
ister is
> >>>> written
> >>>> +=A0=A0=A0=A0 * in H2G CTB to deregister the context. A future patch=
 may
> >>>> defer this
> >>>> +=A0=A0=A0=A0 * H2G CTB if the runtime wakeref is zero.
> >>>> +=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0 with_intel_runtime_pm(runtime_pm, wakeref)
> >>>> +=A0=A0=A0=A0=A0=A0=A0 guc_lrc_desc_unpin(ce);
> >>>> +}
> >>>> +
> >>>> +static int guc_context_alloc(struct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 return lrc_alloc(ce, ce->engine);
> >>>> +}
> >>>> +
> >>>> =A0=A0 static const struct intel_context_ops guc_context_ops =3D {
> >>>> =A0=A0=A0=A0=A0=A0 .alloc =3D guc_context_alloc,
> >>>> =A0=A0=A0=A0=A0=A0 .pre_pin =3D guc_context_pre_pin,
> >>>> =A0=A0=A0=A0=A0=A0 .pin =3D guc_context_pin,
> >>>> -=A0=A0=A0 .unpin =3D lrc_unpin,
> >>>> -=A0=A0=A0 .post_unpin =3D lrc_post_unpin,
> >>>> +=A0=A0=A0 .unpin =3D guc_context_unpin,
> >>>> +=A0=A0=A0 .post_unpin =3D guc_context_post_unpin,
> >>>> =A0=A0=A0=A0=A0=A0 .enter =3D intel_context_enter_engine,
> >>>> =A0=A0=A0=A0=A0=A0 .exit =3D intel_context_exit_engine,
> >>>> =A0=A0=A0=A0=A0=A0 .reset =3D lrc_reset,
> >>>> -=A0=A0=A0 .destroy =3D lrc_destroy,
> >>>> +=A0=A0=A0 .destroy =3D guc_context_destroy,
> >>>> =A0=A0 };
> >>>> -static int guc_request_alloc(struct i915_request *request)
> >>>> +static bool context_needs_register(struct intel_context *ce, bool
> >>>> new_guc_id)
> >>>> =A0=A0 {
> >>>> +=A0=A0=A0 return new_guc_id || test_bit(CONTEXT_LRCA_DIRTY, &ce->fl=
ags) ||
> >>>> +=A0=A0=A0=A0=A0=A0=A0 !lrc_desc_registered(ce_to_guc(ce), ce->guc_i=
d);
> >>>> +}
> >>>> +
> >>>> +static int guc_request_alloc(struct i915_request *rq)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_context *ce =3D rq->context;
> >>>> +=A0=A0=A0 struct intel_guc *guc =3D ce_to_guc(ce);
> >>>> =A0=A0=A0=A0=A0=A0 int ret;
> >>>> -=A0=A0=A0 GEM_BUG_ON(!intel_context_is_pinned(request->context));
> >>>> +=A0=A0=A0 GEM_BUG_ON(!intel_context_is_pinned(rq->context));
> >>>> =A0=A0=A0=A0=A0=A0 /*
> >>>> =A0=A0=A0=A0=A0=A0=A0 * Flush enough space to reduce the likelihood =
of waiting after
> >>>> =A0=A0=A0=A0=A0=A0=A0 * we start building the request - in which cas=
e we will just
> >>>> =A0=A0=A0=A0=A0=A0=A0 * have to repeat work.
> >>>> =A0=A0=A0=A0=A0=A0=A0 */
> >>>> -=A0=A0=A0 request->reserved_space +=3D GUC_REQUEST_SIZE;
> >>>> +=A0=A0=A0 rq->reserved_space +=3D GUC_REQUEST_SIZE;
> >>>> =A0=A0=A0=A0=A0=A0 /*
> >>>> =A0=A0=A0=A0=A0=A0=A0 * Note that after this point, we have committe=
d to using
> >>>> @@ -483,56 +956,47 @@ static int guc_request_alloc(struct
> >>>> i915_request *request)
> >>>> =A0=A0=A0=A0=A0=A0=A0 */
> >>>> =A0=A0=A0=A0=A0=A0 /* Unconditionally invalidate GPU caches and TLBs=
. */
> >>>> -=A0=A0=A0 ret =3D request->engine->emit_flush(request, EMIT_INVALID=
ATE);
> >>>> +=A0=A0=A0 ret =3D rq->engine->emit_flush(rq, EMIT_INVALIDATE);
> >>>> =A0=A0=A0=A0=A0=A0 if (ret)
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> >>>> -=A0=A0=A0 request->reserved_space -=3D GUC_REQUEST_SIZE;
> >>>> -=A0=A0=A0 return 0;
> >>>> -}
> >>>> +=A0=A0=A0 rq->reserved_space -=3D GUC_REQUEST_SIZE;
> >>>> -static inline void queue_request(struct i915_sched_engine
> >>>> *sched_engine,
> >>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct i915_reques=
t *rq,
> >>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 int prio)
> >>>> -{
> >>>> -=A0=A0=A0 GEM_BUG_ON(!list_empty(&rq->sched.link));
> >>>> -=A0=A0=A0 list_add_tail(&rq->sched.link,
> >>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 i915_sched_lookup_priolist(=
sched_engine, prio));
> >>>> -=A0=A0=A0 set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> >>>> -}
> >>>> -
> >>>> -static int guc_bypass_tasklet_submit(struct intel_guc *guc,
> >>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct=
 i915_request *rq)
> >>>> -{
> >>>> -=A0=A0=A0 int ret;
> >>>> -
> >>>> -=A0=A0=A0 __i915_request_submit(rq);
> >>>> -
> >>>> -=A0=A0=A0 trace_i915_request_in(rq, 0);
> >>>> -
> >>>> -=A0=A0=A0 guc_set_lrc_tail(rq);
> >>>> -=A0=A0=A0 ret =3D guc_add_request(guc, rq);
> >>>> -=A0=A0=A0 if (ret =3D=3D -EBUSY)
> >>>> -=A0=A0=A0=A0=A0=A0=A0 guc->stalled_request =3D rq;
> >>>> -
> >>>> -=A0=A0=A0 return ret;
> >>>> -}
> >>>> -
> >>>> -static void guc_submit_request(struct i915_request *rq)
> >>>> -{
> >>>> -=A0=A0=A0 struct i915_sched_engine *sched_engine =3D rq->engine->sc=
hed_engine;
> >>>> -=A0=A0=A0 struct intel_guc *guc =3D &rq->engine->gt->uc.guc;
> >>>> -=A0=A0=A0 unsigned long flags;
> >>>> +=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0 * Call pin_guc_id here rather than in the pinning step=
 as with
> >>>> +=A0=A0=A0=A0 * dma_resv, contexts can be repeatedly pinned / unpinn=
ed
> >>>> trashing the
> >>>> +=A0=A0=A0=A0 * guc_ids and creating horrible race conditions. This =
is
> >>>> especially bad
> >>>> +=A0=A0=A0=A0 * when guc_ids are being stolen due to over subscripti=
on. By
> >>>> the time
> >>>> +=A0=A0=A0=A0 * this function is reached, it is guaranteed that the =
guc_id
> >>>> will be
> >>>> +=A0=A0=A0=A0 * persistent until the generated request is retired. T=
hus,
> >>>> sealing these
> >>>> +=A0=A0=A0=A0 * race conditions. It is still safe to fail here if gu=
c_ids are
> >>>> +=A0=A0=A0=A0 * exhausted and return -EAGAIN to the user indicating =
that
> >>>> they can try
> >>>> +=A0=A0=A0=A0 * again in the future.
> >>>> +=A0=A0=A0=A0 *
> >>>> +=A0=A0=A0=A0 * There is no need for a lock here as the timeline mut=
ex
> >>>> ensures at
> >>>> +=A0=A0=A0=A0 * most one context can be executing this code path at =
once. The
> >>>> +=A0=A0=A0=A0 * guc_id_ref is incremented once for every request in =
flight and
> >>>> +=A0=A0=A0=A0 * decremented on each retire. When it is zero, a lock =
around the
> >>>> +=A0=A0=A0=A0 * increment (in pin_guc_id) is needed to seal a race w=
ith
> >>>> unpin_guc_id.
> >>>> +=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0 if (atomic_add_unless(&ce->guc_id_ref, 1, 0))
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return 0;
> >>>> -=A0=A0=A0 /* Will be called from irq-context when using foreign fen=
ces. */
> >>>> -=A0=A0=A0 spin_lock_irqsave(&sched_engine->lock, flags);
> >>>> +=A0=A0=A0 ret =3D pin_guc_id(guc, ce);=A0=A0=A0 /* returns 1 if new=
 guc_id
> >>>> assigned */
> >>>> +=A0=A0=A0 if (unlikely(ret < 0))
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return ret;;
> >>> typo ";;"
> >>>
> >> Yep.
> >>
> >>>> +=A0=A0=A0 if (context_needs_register(ce, !!ret)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 ret =3D guc_lrc_desc_pin(ce);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 if (unlikely(ret)) {=A0=A0=A0 /* unwind */
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 atomic_dec(&ce->guc_id_ref);
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 unpin_guc_id(guc, ce);
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 }
> >>>> +=A0=A0=A0 }
> >>>> -=A0=A0=A0 if (guc->stalled_request ||
> >>>> !i915_sched_engine_is_empty(sched_engine))
> >>>> -=A0=A0=A0=A0=A0=A0=A0 queue_request(sched_engine, rq, rq_prio(rq));
> >>>> -=A0=A0=A0 else if (guc_bypass_tasklet_submit(guc, rq) =3D=3D -EBUSY)
> >>>> -=A0=A0=A0=A0=A0=A0=A0 tasklet_hi_schedule(&sched_engine->tasklet);
> >>>> +=A0=A0=A0 clear_bit(CONTEXT_LRCA_DIRTY, &ce->flags);
> >>>
> >>> Might be worth moving the pinning to a separate function to keep the
> >>> request_alloc focused on the request. Can be done as a follow up.
> >>>
> >> Sure. Let me see how that looks in a follow up.
> >> =A0
> >>>> -=A0=A0=A0 spin_unlock_irqrestore(&sched_engine->lock, flags);
> >>>> +=A0=A0=A0 return 0;
> >>>> =A0=A0 }
> >>>> =A0=A0 static void sanitize_hwsp(struct intel_engine_cs *engine)
> >>>> @@ -606,6 +1070,46 @@ static void guc_set_default_submission(struct
> >>>> intel_engine_cs *engine)
> >>>> =A0=A0=A0=A0=A0=A0 engine->submit_request =3D guc_submit_request;
> >>>> =A0=A0 }
> >>>> +static inline void guc_kernel_context_pin(struct intel_guc *guc,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 str=
uct intel_context *ce)
> >>>> +{
> >>>> +=A0=A0=A0 if (context_guc_id_invalid(ce))
> >>>> +=A0=A0=A0=A0=A0=A0=A0 pin_guc_id(guc, ce);
> >>>> +=A0=A0=A0 guc_lrc_desc_pin(ce);
> >>>> +}
> >>>> +
> >>>> +static inline void guc_init_lrc_mapping(struct intel_guc *guc)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_gt *gt =3D guc_to_gt(guc);
> >>>> +=A0=A0=A0 struct intel_engine_cs *engine;
> >>>> +=A0=A0=A0 enum intel_engine_id id;
> >>>> +
> >>>> +=A0=A0=A0 /* make sure all descriptors are clean... */
> >>>> +=A0=A0=A0 xa_destroy(&guc->context_lookup);
> >>>> +
> >>>> +=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0 * Some contexts might have been pinned before we enabl=
ed GuC
> >>>> +=A0=A0=A0=A0 * submission, so we need to add them to the GuC bookee=
ping.
> >>>> +=A0=A0=A0=A0 * Also, after a reset the GuC we want to make sure tha=
t the
> >>>> information
> >>>> +=A0=A0=A0=A0 * shared with GuC is properly reset. The kernel lrcs a=
re not
> >>>> attached
> >>>> +=A0=A0=A0=A0 * to the gem_context, so they need to be added separat=
ely.
> >>>> +=A0=A0=A0=A0 *
> >>>> +=A0=A0=A0=A0 * Note: we purposely do not check the error return of
> >>>> +=A0=A0=A0=A0 * guc_lrc_desc_pin, because that function can only fai=
l in two
> >>>> cases.
> >>>> +=A0=A0=A0=A0 * One, if there aren't enough free IDs, but we're guar=
anteed
> >>>> to have
> >>>> +=A0=A0=A0=A0 * enough here (we're either only pinning a handful of =
lrc on
> >>>> first boot
> >>>> +=A0=A0=A0=A0 * or we're re-pinning lrcs that were already pinned be=
fore the
> >>>> reset).
> >>>> +=A0=A0=A0=A0 * Two, if the GuC has died and CTBs can't make forward=
 progress.
> >>>> +=A0=A0=A0=A0 * Presumably, the GuC should be alive as this function=
 is
> >>>> called on
> >>>> +=A0=A0=A0=A0 * driver load or after a reset. Even if it is dead, an=
other
> >>>> full GPU
> >>>> +=A0=A0=A0=A0 * reset will be triggered and this function would be c=
alled
> >>>> again.
> >>>> +=A0=A0=A0=A0 */
> >>>> +
> >>>> +=A0=A0=A0 for_each_engine(engine, gt, id)
> >>>> +=A0=A0=A0=A0=A0=A0=A0 if (engine->kernel_context)
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 guc_kernel_context_pin(guc, engin=
e->kernel_context);
> >>>> +}
> >>>> +
> >>>> =A0=A0 static void guc_release(struct intel_engine_cs *engine)
> >>>> =A0=A0 {
> >>>> =A0=A0=A0=A0=A0=A0 engine->sanitize =3D NULL; /* no longer in contro=
l, nothing to
> >>>> sanitize */
> >>>> @@ -718,6 +1222,7 @@ int intel_guc_submission_setup(struct
> >>>> intel_engine_cs *engine)
> >>>> =A0=A0 void intel_guc_submission_enable(struct intel_guc *guc)
> >>>> =A0=A0 {
> >>>> +=A0=A0=A0 guc_init_lrc_mapping(guc);
> >>>> =A0=A0 }
> >>>> =A0=A0 void intel_guc_submission_disable(struct intel_guc *guc)
> >>>> @@ -743,3 +1248,62 @@ void intel_guc_submission_init_early(struct
> >>>> intel_guc *guc)
> >>>> =A0=A0 {
> >>>> =A0=A0=A0=A0=A0=A0 guc->submission_selected =3D __guc_submission_sel=
ected(guc);
> >>>> =A0=A0 }
> >>>> +
> >>>> +static inline struct intel_context *
> >>>> +g2h_context_lookup(struct intel_guc *guc, u32 desc_idx)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_context *ce;
> >>>> +
> >>>> +=A0=A0=A0 if (unlikely(desc_idx >=3D GUC_MAX_LRC_DESCRIPTORS)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 drm_dbg(&guc_to_gt(guc)->i915->drm,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "Invalid desc_idx %u", desc_idx);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return NULL;
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 ce =3D __get_context(guc, desc_idx);
> >>>> +=A0=A0=A0 if (unlikely(!ce)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 drm_dbg(&guc_to_gt(guc)->i915->drm,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "Context is NULL, desc_idx %u", d=
esc_idx);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return NULL;
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 return ce;
> >>>> +}
> >>>> +
> >>>> +int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 con=
st u32 *msg,
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32=
 len)
> >>>> +{
> >>>> +=A0=A0=A0 struct intel_context *ce;
> >>>> +=A0=A0=A0 u32 desc_idx =3D msg[0];
> >>>> +
> >>>> +=A0=A0=A0 if (unlikely(len < 1)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 drm_dbg(&guc_to_gt(guc)->i915->drm, "Invalid =
length %u", len);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return -EPROTO;
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 ce =3D g2h_context_lookup(guc, desc_idx);
> >>>> +=A0=A0=A0 if (unlikely(!ce))
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return -EPROTO;
> >>>> +
> >>>> +=A0=A0=A0 if (context_wait_for_deregister_to_register(ce)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 struct intel_runtime_pm *runtime_pm =3D
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &ce->engine->gt->i915->runtime_pm;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 intel_wakeref_t wakeref;
> >>>> +
> >>>> +=A0=A0=A0=A0=A0=A0=A0 /*
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0 * Previous owner of this guc_id has been d=
eregistered, now
> >>>> safe
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0 * register this context.
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0 */
> >>>> +=A0=A0=A0=A0=A0=A0=A0 with_intel_runtime_pm(runtime_pm, wakeref)
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 register_context(ce);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 clr_context_wait_for_deregister_to_register(c=
e);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 intel_context_put(ce);
> >>>> +=A0=A0=A0 } else if (context_destroyed(ce)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 /* Context has been destroyed */
> >>>> +=A0=A0=A0=A0=A0=A0=A0 release_guc_id(guc, ce);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 lrc_destroy(&ce->ref);
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 return 0;
> >>>> +}
> >>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> >>>> b/drivers/gpu/drm/i915/i915_reg.h
> >>>> index 943fe485c662..204c95c39353 100644
> >>>> --- a/drivers/gpu/drm/i915/i915_reg.h
> >>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
> >>>> @@ -4142,6 +4142,7 @@ enum {
> >>>> =A0=A0=A0=A0=A0=A0 FAULT_AND_CONTINUE /* Unsupported */
> >>>> =A0=A0 };
> >>>> +#define CTX_GTT_ADDRESS_MASK GENMASK(31, 12)
> >>>> =A0=A0 #define GEN8_CTX_VALID (1 << 0)
> >>>> =A0=A0 #define GEN8_CTX_FORCE_PD_RESTORE (1 << 1)
> >>>> =A0=A0 #define GEN8_CTX_FORCE_RESTORE (1 << 2)
> >>>> diff --git a/drivers/gpu/drm/i915/i915_request.c
> >>>> b/drivers/gpu/drm/i915/i915_request.c
> >>>> index 86b4c9f2613d..b48c4905d3fc 100644
> >>>> --- a/drivers/gpu/drm/i915/i915_request.c
> >>>> +++ b/drivers/gpu/drm/i915/i915_request.c
> >>>> @@ -407,6 +407,7 @@ bool i915_request_retire(struct i915_request *rq)
> >>>> =A0=A0=A0=A0=A0=A0=A0 */
> >>>> =A0=A0=A0=A0=A0=A0 if (!list_empty(&rq->sched.link))
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 remove_from_engine(rq);
> >>>> +=A0=A0=A0 atomic_dec(&rq->context->guc_id_ref);
> >>> Does this work/make sense=A0 if GuC is disabled?
> >>>
> >> It doesn't matter if the GuC is disabled as this var isn't used if it
> >> is. A following patch adds a vfunc here and pushes this in the GuC
> >> backend.
> >>
> >> Matt
> >>
> >>> Daniele
> >>>
> >>>> =A0=A0=A0=A0=A0=A0 GEM_BUG_ON(!llist_empty(&rq->execute_cb));
> >>>> =A0=A0=A0=A0=A0=A0 __list_del_entry(&rq->link); /* poison neither pr=
ev/next (RCU
> >>>> walks) */
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
