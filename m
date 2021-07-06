Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5763BDEE9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 23:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B98F893E8;
	Tue,  6 Jul 2021 21:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A828893E8;
 Tue,  6 Jul 2021 21:29:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="207373501"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="207373501"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 14:29:19 -0700
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="491475583"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 14:29:19 -0700
Date: Tue, 6 Jul 2021 14:22:48 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20210706212248.GA16491@sdutt-i7>
References: <20210701171550.49353-1-matthew.brost@intel.com>
 <20210701171550.49353-7-matthew.brost@intel.com>
 <3147114d-4b4b-1a42-c40b-8d8be870e633@intel.com>
 <b7bb636f-edd4-dbc0-a0e6-c00cfbb25cf1@intel.com>
 <e0f48e7b-b7e8-15f5-5ed3-704c89b884d4@intel.com>
 <ef6fb113-c921-0d71-0ced-91194cd18d87@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef6fb113-c921-0d71-0ced-91194cd18d87@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/guc: Optimize CTB writes and
 reads
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

On Tue, Jul 06, 2021 at 09:33:23PM +0200, Michal Wajdeczko wrote:
> =

> =

> On 06.07.2021 21:19, John Harrison wrote:
> > On 7/6/2021 12:12, Michal Wajdeczko wrote:
> >> On 06.07.2021 21:00, John Harrison wrote:
> >>> On 7/1/2021 10:15, Matthew Brost wrote:
> >>>> CTB writes are now in the path of command submission and should be
> >>>> optimized for performance. Rather than reading CTB descriptor values
> >>>> (e.g. head, tail) which could result in accesses across the PCIe bus,
> >>>> store shadow local copies and only read/write the descriptor values
> >>>> when
> >>>> absolutely necessary. Also store the current space in the each chann=
el
> >>>> locally.
> >>>>
> >>>> v2:
> >>>> =A0=A0 (Michel)
> >>>> =A0=A0=A0 - Add additional sanity checks for head / tail pointers
> >>>> =A0=A0=A0 - Use GUC_CTB_HDR_LEN rather than magic 1
> >>>>
> >>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> >>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> >>>> ---
> >>>> =A0=A0 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 88
> >>>> +++++++++++++++--------
> >>>> =A0=A0 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |=A0 6 ++
> >>>> =A0=A0 2 files changed, 65 insertions(+), 29 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>> index a9cb7b608520..5b8b4ff609e2 100644
> >>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>> @@ -130,6 +130,10 @@ static void guc_ct_buffer_desc_init(struct
> >>>> guc_ct_buffer_desc *desc)
> >>>> =A0=A0 static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *c=
tb)
> >>>> =A0=A0 {
> >>>> =A0=A0=A0=A0=A0=A0 ctb->broken =3D false;
> >>>> +=A0=A0=A0 ctb->tail =3D 0;
> >>>> +=A0=A0=A0 ctb->head =3D 0;
> >>>> +=A0=A0=A0 ctb->space =3D CIRC_SPACE(ctb->tail, ctb->head, ctb->size=
);
> >>>> +
> >>>> =A0=A0=A0=A0=A0=A0 guc_ct_buffer_desc_init(ctb->desc);
> >>>> =A0=A0 }
> >>>> =A0=A0 @@ -383,10 +387,8 @@ static int ct_write(struct intel_guc_ct =
*ct,
> >>>> =A0=A0 {
> >>>> =A0=A0=A0=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.sen=
d;
> >>>> =A0=A0=A0=A0=A0=A0 struct guc_ct_buffer_desc *desc =3D ctb->desc;
> >>>> -=A0=A0=A0 u32 head =3D desc->head;
> >>>> -=A0=A0=A0 u32 tail =3D desc->tail;
> >>>> +=A0=A0=A0 u32 tail =3D ctb->tail;
> >>>> =A0=A0=A0=A0=A0=A0 u32 size =3D ctb->size;
> >>>> -=A0=A0=A0 u32 used;
> >>>> =A0=A0=A0=A0=A0=A0 u32 header;
> >>>> =A0=A0=A0=A0=A0=A0 u32 hxg;
> >>>> =A0=A0=A0=A0=A0=A0 u32 *cmds =3D ctb->cmds;
> >>>> @@ -395,25 +397,22 @@ static int ct_write(struct intel_guc_ct *ct,
> >>>> =A0=A0=A0=A0=A0=A0 if (unlikely(desc->status))
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto corrupted;
> >>>> =A0=A0 -=A0=A0=A0 if (unlikely((tail | head) >=3D size)) {
> >>>> +=A0=A0=A0 GEM_BUG_ON(tail > size);
> >>>> +
> >>>> +#ifdef CONFIG_DRM_I915_DEBUG_GUC
> >>>> +=A0=A0=A0 if (unlikely(tail !=3D READ_ONCE(desc->tail))) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Tail was modified %u !=3D %u\n",
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc->tail, ctb->tail);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 desc->status |=3D GUC_CTB_STATUS_MISMATCH;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 goto corrupted;
> >>>> +=A0=A0=A0 }
> >>>> +=A0=A0=A0 if (unlikely((desc->tail | desc->head) >=3D size)) {
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Invalid offsets head=3D=
%u tail=3D%u (size=3D%u)\n",
> >>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 head, tail, size);
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc->head, desc->tail, size);
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc->status |=3D GUC_CTB_STATUS_OVER=
FLOW;
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto corrupted;
> >>>> =A0=A0=A0=A0=A0=A0 }
> >>>> -
> >>>> -=A0=A0=A0 /*
> >>>> -=A0=A0=A0=A0 * tail =3D=3D head condition indicates empty. GuC FW d=
oes not support
> >>>> -=A0=A0=A0=A0 * using up the entire buffer to get tail =3D=3D head m=
eaning full.
> >>>> -=A0=A0=A0=A0 */
> >>>> -=A0=A0=A0 if (tail < head)
> >>>> -=A0=A0=A0=A0=A0=A0=A0 used =3D (size - head) + tail;
> >>>> -=A0=A0=A0 else
> >>>> -=A0=A0=A0=A0=A0=A0=A0 used =3D tail - head;
> >>>> -
> >>>> -=A0=A0=A0 /* make sure there is a space including extra dw for the =
fence */
> >>>> -=A0=A0=A0 if (unlikely(used + len + GUC_CTB_HDR_LEN >=3D size))
> >>>> -=A0=A0=A0=A0=A0=A0=A0 return -ENOSPC;
> >>>> +#endif
> >>>> =A0=A0 =A0=A0=A0=A0=A0 /*
> >>>> =A0=A0=A0=A0=A0=A0=A0 * dw0: CT header (including fence)
> >>>> @@ -454,7 +453,9 @@ static int ct_write(struct intel_guc_ct *ct,
> >>>> =A0=A0=A0=A0=A0=A0 write_barrier(ct);
> >>>> =A0=A0 =A0=A0=A0=A0=A0 /* now update descriptor */
> >>>> +=A0=A0=A0 ctb->tail =3D tail;
> >>>> =A0=A0=A0=A0=A0=A0 WRITE_ONCE(desc->tail, tail);
> >>>> +=A0=A0=A0 ctb->space -=3D len + GUC_CTB_HDR_LEN;
> >>>> =A0=A0 =A0=A0=A0=A0=A0 return 0;
> >>>> =A0=A0 @@ -470,7 +471,7 @@ static int ct_write(struct intel_guc_ct *=
ct,
> >>>> =A0=A0=A0 * @req:=A0=A0=A0 pointer to pending request
> >>>> =A0=A0=A0 * @status:=A0=A0=A0 placeholder for status
> >>>> =A0=A0=A0 *
> >>>> - * For each sent request, Guc shall send bac CT response message.
> >>>> + * For each sent request, GuC shall send back CT response message.
> >>>> =A0=A0=A0 * Our message handler will update status of tracked reques=
t once
> >>>> =A0=A0=A0 * response message with given fence is received. Wait here=
 and
> >>>> =A0=A0=A0 * check for valid response status value.
> >>>> @@ -526,24 +527,35 @@ static inline bool ct_deadlocked(struct
> >>>> intel_guc_ct *ct)
> >>>> =A0=A0=A0=A0=A0=A0 return ret;
> >>>> =A0=A0 }
> >>>> =A0=A0 -static inline bool h2g_has_room(struct intel_guc_ct_buffer *=
ctb,
> >>>> u32 len_dw)
> >>>> +static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
> >>>> =A0=A0 {
> >>>> -=A0=A0=A0 struct guc_ct_buffer_desc *desc =3D ctb->desc;
> >>>> -=A0=A0=A0 u32 head =3D READ_ONCE(desc->head);
> >>>> +=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> >>>> +=A0=A0=A0 u32 head;
> >>>> =A0=A0=A0=A0=A0=A0 u32 space;
> >>>> =A0=A0 -=A0=A0=A0 space =3D CIRC_SPACE(desc->tail, head, ctb->size);
> >>>> +=A0=A0=A0 if (ctb->space >=3D len_dw)
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return true;
> >>>> +
> >>>> +=A0=A0=A0 head =3D READ_ONCE(ctb->desc->head);
> >>>> +=A0=A0=A0 if (unlikely(head > ctb->size)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Corrupted descriptor head=3D%u =
tail=3D%u size=3D%u\n",
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ctb->desc->head, ctb->desc->ta=
il, ctb->size);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 ctb->desc->status |=3D GUC_CTB_STATUS_OVERFLO=
W;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 ctb->broken =3D true;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 return false;
> >>>> +=A0=A0=A0 }
> >>>> +
> >>>> +=A0=A0=A0 space =3D CIRC_SPACE(ctb->tail, head, ctb->size);
> >>>> +=A0=A0=A0 ctb->space =3D space;
> >>>> =A0=A0 =A0=A0=A0=A0=A0 return space >=3D len_dw;
> >>>> =A0=A0 }
> >>>> =A0=A0 =A0 static int has_room_nb(struct intel_guc_ct *ct, u32 len_d=
w)
> >>>> =A0=A0 {
> >>>> -=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> >>>> -
> >>>> =A0=A0=A0=A0=A0=A0 lockdep_assert_held(&ct->ctbs.send.lock);
> >>>> =A0=A0 -=A0=A0=A0 if (unlikely(!h2g_has_room(ctb, len_dw))) {
> >>>> +=A0=A0=A0 if (unlikely(!h2g_has_room(ct, len_dw))) {
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (ct->stall_time =3D=3D KTIME_MAX)
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ct->stall_time =3D ktime_=
get();
> >>>> =A0=A0 @@ -613,7 +625,7 @@ static int ct_send(struct intel_guc_ct *c=
t,
> >>>> =A0=A0=A0=A0=A0=A0=A0 */
> >>>> =A0=A0 retry:
> >>>> =A0=A0=A0=A0=A0=A0 spin_lock_irqsave(&ctb->lock, flags);
> >>>> -=A0=A0=A0 if (unlikely(!h2g_has_room(ctb, len + GUC_CTB_HDR_LEN))) {
> >>>> +=A0=A0=A0 if (unlikely(!h2g_has_room(ct, len + GUC_CTB_HDR_LEN))) {
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (ct->stall_time =3D=3D KTIME_MAX)
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ct->stall_time =3D ktime_=
get();
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 spin_unlock_irqrestore(&ctb->lock, fl=
ags);
> >>>> @@ -733,7 +745,7 @@ static int ct_read(struct intel_guc_ct *ct, stru=
ct
> >>>> ct_incoming_msg **msg)
> >>>> =A0=A0 {
> >>>> =A0=A0=A0=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.rec=
v;
> >>>> =A0=A0=A0=A0=A0=A0 struct guc_ct_buffer_desc *desc =3D ctb->desc;
> >>>> -=A0=A0=A0 u32 head =3D desc->head;
> >>>> +=A0=A0=A0 u32 head =3D ctb->head;
> >>>> =A0=A0=A0=A0=A0=A0 u32 tail =3D desc->tail;
> >>>> =A0=A0=A0=A0=A0=A0 u32 size =3D ctb->size;
> >>>> =A0=A0=A0=A0=A0=A0 u32 *cmds =3D ctb->cmds;
> >>>> @@ -748,12 +760,29 @@ static int ct_read(struct intel_guc_ct *ct,
> >>>> struct ct_incoming_msg **msg)
> >>>> =A0=A0=A0=A0=A0=A0 if (unlikely(desc->status))
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto corrupted;
> >>>> =A0=A0 -=A0=A0=A0 if (unlikely((tail | head) >=3D size)) {
> >>>> +=A0=A0=A0 GEM_BUG_ON(head > size);

This is driver owned field so I think a GEM_BUG_ON is correct as if this
blows the driver apart we have a bug in the i915. =


> >>> Is the BUG_ON necessary given that both options below do the same che=
ck
> >>> but as a corrupted buffer test (with subsequent recovery by GT reset?)
> >>> rather than killing the driver.
> >> "head" and "size" are now fully owned by the driver.
> >> BUGON here is to make sure driver is coded correctly.
> > The point is that both sides of the #if below also validate head. So
> =

> but not the same "head"
> =

> under DEBUG we are validating the one from descriptor (together with
> tail) - and that should be recoverable as if this fails it was clearly
> not our fault.
> =

> but under non-DEBUG we were attempting to validate again the local one,
> pretending that this is recoverable, but it is not, as this is our fault
> (elsewhere in i915 we don't attempt to recover from obvious coding errors=
).
>
> > first there is a BUG_ON, then there is the same test but without blowing
> > the driver apart. One or the other is not required. My vote would be to
> > keep the recoverable test rather than the BUG_ON.
> =

> IMHO we should keep GEMBUGON and drop redundant check in non-DEBUG.
> =

> But let Matt decide.
>

I think I'll drop the testing of the head value and keep the BUG_ON.

Matt
 =

> Michal
> =

> > =

> > John.
> > =

> >>
> >>>> +
> >>>> +#ifdef CONFIG_DRM_I915_DEBUG_GUC
> >>>> +=A0=A0=A0 if (unlikely(head !=3D READ_ONCE(desc->head))) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Head was modified %u !=3D %u\n",
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc->head, ctb->head);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 desc->status |=3D GUC_CTB_STATUS_MISMATCH;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 goto corrupted;
> >>>> +=A0=A0=A0 }
> >>>> +=A0=A0=A0 if (unlikely((desc->tail | desc->head) >=3D size)) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Invalid offsets head=3D%u tail=
=3D%u (size=3D%u)\n",
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 head, tail, size);
> >>>> +=A0=A0=A0=A0=A0=A0=A0 desc->status |=3D GUC_CTB_STATUS_OVERFLOW;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 goto corrupted;
> >>>> +=A0=A0=A0 }
> >>>> +#else
> >>>> +=A0=A0=A0 if (unlikely((tail | ctb->head) >=3D size)) {
> >>> Could just be 'head' rather than 'ctb->head'.
> >> or drop "ctb->head" completely since this is driver owned field and
> >> above you already have BUGON to test it
> >>
> >> Michal
> >>
> >>> John.
> >>>
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Invalid offsets head=3D=
%u tail=3D%u (size=3D%u)\n",
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 head, tail, size);
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc->status |=3D GUC_CTB_STATUS_OVER=
FLOW;
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto corrupted;
> >>>> =A0=A0=A0=A0=A0=A0 }
> >>>> +#endif
> >>>> =A0=A0 =A0=A0=A0=A0=A0 /* tail =3D=3D head condition indicates empty=
 */
> >>>> =A0=A0=A0=A0=A0=A0 available =3D tail - head;
> >>>> @@ -803,6 +832,7 @@ static int ct_read(struct intel_guc_ct *ct, stru=
ct
> >>>> ct_incoming_msg **msg)
> >>>> =A0=A0=A0=A0=A0=A0 }
> >>>> =A0=A0=A0=A0=A0=A0 CT_DEBUG(ct, "received %*ph\n", 4 * len, (*msg)->=
msg);
> >>>> =A0=A0 +=A0=A0=A0 ctb->head =3D head;
> >>>> =A0=A0=A0=A0=A0=A0 /* now update descriptor */
> >>>> =A0=A0=A0=A0=A0=A0 WRITE_ONCE(desc->head, head);
> >>>> =A0=A0 diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> >>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> >>>> index bee03794c1eb..edd1bba0445d 100644
> >>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> >>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> >>>> @@ -33,6 +33,9 @@ struct intel_guc;
> >>>> =A0=A0=A0 * @desc: pointer to the buffer descriptor
> >>>> =A0=A0=A0 * @cmds: pointer to the commands buffer
> >>>> =A0=A0=A0 * @size: size of the commands buffer in dwords
> >>>> + * @head: local shadow copy of head in dwords
> >>>> + * @tail: local shadow copy of tail in dwords
> >>>> + * @space: local shadow copy of space in dwords
> >>>> =A0=A0=A0 * @broken: flag to indicate if descriptor data is broken
> >>>> =A0=A0=A0 */
> >>>> =A0=A0 struct intel_guc_ct_buffer {
> >>>> @@ -40,6 +43,9 @@ struct intel_guc_ct_buffer {
> >>>> =A0=A0=A0=A0=A0=A0 struct guc_ct_buffer_desc *desc;
> >>>> =A0=A0=A0=A0=A0=A0 u32 *cmds;
> >>>> =A0=A0=A0=A0=A0=A0 u32 size;
> >>>> +=A0=A0=A0 u32 tail;
> >>>> +=A0=A0=A0 u32 head;
> >>>> +=A0=A0=A0 u32 space;
> >>>> =A0=A0=A0=A0=A0=A0 bool broken;
> >>>> =A0=A0 };
> >>>> =A0=A0 =

> > =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
