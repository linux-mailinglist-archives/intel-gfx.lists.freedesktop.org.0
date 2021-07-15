Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961303C94C3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 02:06:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C37B6E4C4;
	Thu, 15 Jul 2021 00:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3256E4BB;
 Thu, 15 Jul 2021 00:06:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="232269739"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="232269739"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 17:06:23 -0700
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="494694830"
Received: from dut031-tgly.fm.intel.com ([10.105.19.16])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 17:06:23 -0700
Date: Thu, 15 Jul 2021 00:06:22 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20210715000622.GA17733@DUT031-TGLY.fm.intel.com>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-22-matthew.brost@intel.com>
 <f9ff96b7-45b4-c385-6360-4485e88b6b1a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9ff96b7-45b4-c385-6360-4485e88b6b1a@intel.com>
Subject: Re: [Intel-gfx] [PATCH 21/47] drm/i915/guc: Ensure G2H response has
 space in buffer
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 13, 2021 at 11:36:05AM -0700, John Harrison wrote:
> On 6/24/2021 00:04, Matthew Brost wrote:
> > Ensure G2H response has space in the buffer before sending H2G CTB as
> > the GuC can't handle any backpressure on the G2H interface.
> > 
> > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 13 +++-
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 76 +++++++++++++++----
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  4 +-
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  4 +
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 13 ++--
> >   5 files changed, 87 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > index b43ec56986b5..24e7a924134e 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > @@ -95,11 +95,17 @@ inline int intel_guc_send(struct intel_guc *guc, const u32 *action, u32 len)
> >   }
> >   #define INTEL_GUC_SEND_NB		BIT(31)
> > +#define INTEL_GUC_SEND_G2H_DW_SHIFT	0
> > +#define INTEL_GUC_SEND_G2H_DW_MASK	(0xff << INTEL_GUC_SEND_G2H_DW_SHIFT)
> > +#define MAKE_SEND_FLAGS(len) \
> > +	({GEM_BUG_ON(!FIELD_FIT(INTEL_GUC_SEND_G2H_DW_MASK, len)); \
> > +	(FIELD_PREP(INTEL_GUC_SEND_G2H_DW_MASK, len) | INTEL_GUC_SEND_NB);})
> >   static
> > -inline int intel_guc_send_nb(struct intel_guc *guc, const u32 *action, u32 len)
> > +inline int intel_guc_send_nb(struct intel_guc *guc, const u32 *action, u32 len,
> > +			     u32 g2h_len_dw)
> >   {
> >   	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0,
> > -				 INTEL_GUC_SEND_NB);
> > +				 MAKE_SEND_FLAGS(g2h_len_dw));
> >   }
> >   static inline int
> > @@ -113,6 +119,7 @@ intel_guc_send_and_receive(struct intel_guc *guc, const u32 *action, u32 len,
> >   static inline int intel_guc_send_busy_loop(struct intel_guc* guc,
> >   					   const u32 *action,
> >   					   u32 len,
> > +					   u32 g2h_len_dw,
> >   					   bool loop)
> >   {
> >   	int err;
> > @@ -121,7 +128,7 @@ static inline int intel_guc_send_busy_loop(struct intel_guc* guc,
> >   	might_sleep_if(loop && (!in_atomic() && !irqs_disabled()));
> >   retry:
> > -	err = intel_guc_send_nb(guc, action, len);
> > +	err = intel_guc_send_nb(guc, action, len, g2h_len_dw);
> >   	if (unlikely(err == -EBUSY && loop)) {
> >   		if (likely(!in_atomic() && !irqs_disabled()))
> >   			cond_resched();
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > index 7491f041859e..a60970e85635 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > @@ -73,6 +73,7 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
> >   #define CTB_DESC_SIZE		ALIGN(sizeof(struct guc_ct_buffer_desc), SZ_2K)
> >   #define CTB_H2G_BUFFER_SIZE	(SZ_4K)
> >   #define CTB_G2H_BUFFER_SIZE	(4 * CTB_H2G_BUFFER_SIZE)
> > +#define G2H_ROOM_BUFFER_SIZE	(PAGE_SIZE)
> Any particular reason why PAGE_SIZE instead of SZ_4K? I'm not seeing
> anything in the code that is actually related to page sizes. Seems like
> '(CTB_G2H_BUFFER_SIZE / 4)' would be a more correct way to express it.
> Unless I'm missing something about how it's used?
> 

Yes, CTB_G2H_BUFFER_SIZE / 4 is better.

Matt

> John.
> 
> 
> >   struct ct_request {
> >   	struct list_head link;
> > @@ -129,23 +130,27 @@ static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc)
> >   static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
> >   {
> > +	u32 space;
> > +
> >   	ctb->broken = false;
> >   	ctb->tail = 0;
> >   	ctb->head = 0;
> > -	ctb->space = CIRC_SPACE(ctb->tail, ctb->head, ctb->size);
> > +	space = CIRC_SPACE(ctb->tail, ctb->head, ctb->size) - ctb->resv_space;
> > +	atomic_set(&ctb->space, space);
> >   	guc_ct_buffer_desc_init(ctb->desc);
> >   }
> >   static void guc_ct_buffer_init(struct intel_guc_ct_buffer *ctb,
> >   			       struct guc_ct_buffer_desc *desc,
> > -			       u32 *cmds, u32 size_in_bytes)
> > +			       u32 *cmds, u32 size_in_bytes, u32 resv_space)
> >   {
> >   	GEM_BUG_ON(size_in_bytes % 4);
> >   	ctb->desc = desc;
> >   	ctb->cmds = cmds;
> >   	ctb->size = size_in_bytes / 4;
> > +	ctb->resv_space = resv_space / 4;
> >   	guc_ct_buffer_reset(ctb);
> >   }
> > @@ -226,6 +231,7 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
> >   	struct guc_ct_buffer_desc *desc;
> >   	u32 blob_size;
> >   	u32 cmds_size;
> > +	u32 resv_space;
> >   	void *blob;
> >   	u32 *cmds;
> >   	int err;
> > @@ -250,19 +256,23 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
> >   	desc = blob;
> >   	cmds = blob + 2 * CTB_DESC_SIZE;
> >   	cmds_size = CTB_H2G_BUFFER_SIZE;
> > -	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u\n", "send",
> > -		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size);
> > +	resv_space = 0;
> > +	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u/%u\n", "send",
> > +		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
> > +		 resv_space);
> > -	guc_ct_buffer_init(&ct->ctbs.send, desc, cmds, cmds_size);
> > +	guc_ct_buffer_init(&ct->ctbs.send, desc, cmds, cmds_size, resv_space);
> >   	/* store pointers to desc and cmds for recv ctb */
> >   	desc = blob + CTB_DESC_SIZE;
> >   	cmds = blob + 2 * CTB_DESC_SIZE + CTB_H2G_BUFFER_SIZE;
> >   	cmds_size = CTB_G2H_BUFFER_SIZE;
> > -	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u\n", "recv",
> > -		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size);
> > +	resv_space = G2H_ROOM_BUFFER_SIZE;
> > +	CT_DEBUG(ct, "%s desc %#tx cmds %#tx size %u/%u\n", "recv",
> > +		 ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
> > +		 resv_space);
> > -	guc_ct_buffer_init(&ct->ctbs.recv, desc, cmds, cmds_size);
> > +	guc_ct_buffer_init(&ct->ctbs.recv, desc, cmds, cmds_size, resv_space);
> >   	return 0;
> >   }
> > @@ -458,7 +468,7 @@ static int ct_write(struct intel_guc_ct *ct,
> >   	/* now update descriptor */
> >   	ctb->tail = tail;
> >   	WRITE_ONCE(desc->tail, tail);
> > -	ctb->space -= len + 1;
> > +	atomic_sub(len + 1, &ctb->space);
> >   	return 0;
> > @@ -521,13 +531,34 @@ static inline bool ct_deadlocked(struct intel_guc_ct *ct)
> >   	return ret;
> >   }
> > +static inline bool g2h_has_room(struct intel_guc_ct *ct, u32 g2h_len_dw)
> > +{
> > +	struct intel_guc_ct_buffer *ctb = &ct->ctbs.recv;
> > +
> > +	/*
> > +	 * We leave a certain amount of space in the G2H CTB buffer for
> > +	 * unexpected G2H CTBs (e.g. logging, engine hang, etc...)
> > +	 */
> > +	return !g2h_len_dw || atomic_read(&ctb->space) >= g2h_len_dw;
> > +}
> > +
> > +static inline void g2h_reserve_space(struct intel_guc_ct *ct, u32 g2h_len_dw)
> > +{
> > +	lockdep_assert_held(&ct->ctbs.send.lock);
> > +
> > +	GEM_BUG_ON(!g2h_has_room(ct, g2h_len_dw));
> > +
> > +	if (g2h_len_dw)
> > +		atomic_sub(g2h_len_dw, &ct->ctbs.recv.space);
> > +}
> > +
> >   static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
> >   {
> >   	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> >   	u32 head;
> >   	u32 space;
> > -	if (ctb->space >= len_dw)
> > +	if (atomic_read(&ctb->space) >= len_dw)
> >   		return true;
> >   	head = READ_ONCE(ctb->desc->head);
> > @@ -540,16 +571,16 @@ static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
> >   	}
> >   	space = CIRC_SPACE(ctb->tail, head, ctb->size);
> > -	ctb->space = space;
> > +	atomic_set(&ctb->space, space);
> >   	return space >= len_dw;
> >   }
> > -static int has_room_nb(struct intel_guc_ct *ct, u32 len_dw)
> > +static int has_room_nb(struct intel_guc_ct *ct, u32 h2g_dw, u32 g2h_dw)
> >   {
> >   	lockdep_assert_held(&ct->ctbs.send.lock);
> > -	if (unlikely(!h2g_has_room(ct, len_dw))) {
> > +	if (unlikely(!h2g_has_room(ct, h2g_dw) || !g2h_has_room(ct, g2h_dw))) {
> >   		if (ct->stall_time == KTIME_MAX)
> >   			ct->stall_time = ktime_get();
> > @@ -563,6 +594,9 @@ static int has_room_nb(struct intel_guc_ct *ct, u32 len_dw)
> >   	return 0;
> >   }
> > +#define G2H_LEN_DW(f) \
> > +	FIELD_GET(INTEL_GUC_SEND_G2H_DW_MASK, f) ? \
> > +	FIELD_GET(INTEL_GUC_SEND_G2H_DW_MASK, f) + GUC_CTB_HXG_MSG_MIN_LEN : 0
> >   static int ct_send_nb(struct intel_guc_ct *ct,
> >   		      const u32 *action,
> >   		      u32 len,
> > @@ -570,12 +604,13 @@ static int ct_send_nb(struct intel_guc_ct *ct,
> >   {
> >   	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> >   	unsigned long spin_flags;
> > +	u32 g2h_len_dw = G2H_LEN_DW(flags);
> >   	u32 fence;
> >   	int ret;
> >   	spin_lock_irqsave(&ctb->lock, spin_flags);
> > -	ret = has_room_nb(ct, len + 1);
> > +	ret = has_room_nb(ct, len + 1, g2h_len_dw);
> >   	if (unlikely(ret))
> >   		goto out;
> > @@ -584,6 +619,7 @@ static int ct_send_nb(struct intel_guc_ct *ct,
> >   	if (unlikely(ret))
> >   		goto out;
> > +	g2h_reserve_space(ct, g2h_len_dw);
> >   	intel_guc_notify(ct_to_guc(ct));
> >   out:
> > @@ -965,10 +1001,22 @@ static void ct_incoming_request_worker_func(struct work_struct *w)
> >   static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming_msg *request)
> >   {
> >   	const u32 *hxg = &request->msg[GUC_CTB_MSG_MIN_LEN];
> > +	u32 action = FIELD_GET(GUC_HXG_EVENT_MSG_0_ACTION, hxg[0]);
> >   	unsigned long flags;
> >   	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]) != GUC_HXG_TYPE_EVENT);
> > +	/*
> > +	 * Adjusting the space must be done in IRQ or deadlock can occur as the
> > +	 * CTB processing in the below workqueue can send CTBs which creates a
> > +	 * circular dependency if the space was returned there.
> > +	 */
> > +	switch (action) {
> > +	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
> > +	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> > +		atomic_add(request->size, &ct->ctbs.recv.space);
> > +	}
> > +
> >   	spin_lock_irqsave(&ct->requests.lock, flags);
> >   	list_add_tail(&request->link, &ct->requests.incoming);
> >   	spin_unlock_irqrestore(&ct->requests.lock, flags);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > index 9924335e2ee6..660bf37238e2 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > @@ -33,6 +33,7 @@ struct intel_guc;
> >    * @desc: pointer to the buffer descriptor
> >    * @cmds: pointer to the commands buffer
> >    * @size: size of the commands buffer in dwords
> > + * @resv_space: reserved space in buffer in dwords
> >    * @head: local shadow copy of head in dwords
> >    * @tail: local shadow copy of tail in dwords
> >    * @space: local shadow copy of space in dwords
> > @@ -43,9 +44,10 @@ struct intel_guc_ct_buffer {
> >   	struct guc_ct_buffer_desc *desc;
> >   	u32 *cmds;
> >   	u32 size;
> > +	u32 resv_space;
> >   	u32 tail;
> >   	u32 head;
> > -	u32 space;
> > +	atomic_t space;
> >   	bool broken;
> >   };
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> > index 4e4edc368b77..94bb1ca6f889 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> > @@ -17,6 +17,10 @@
> >   #include "abi/guc_communication_ctb_abi.h"
> >   #include "abi/guc_messages_abi.h"
> > +/* Payload length only i.e. don't include G2H header length */
> > +#define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET	2
> > +#define G2H_LEN_DW_DEREGISTER_CONTEXT		1
> > +
> >   #define GUC_CONTEXT_DISABLE		0
> >   #define GUC_CONTEXT_ENABLE		1
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 010e46dd6b16..ef24758c4266 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -260,6 +260,7 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
> >   	struct intel_context *ce = rq->context;
> >   	u32 action[3];
> >   	int len = 0;
> > +	u32 g2h_len_dw = 0;
> >   	bool enabled = context_enabled(ce);
> >   	GEM_BUG_ON(!atomic_read(&ce->guc_id_ref));
> > @@ -271,13 +272,13 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
> >   		action[len++] = GUC_CONTEXT_ENABLE;
> >   		set_context_pending_enable(ce);
> >   		intel_context_get(ce);
> > +		g2h_len_dw = G2H_LEN_DW_SCHED_CONTEXT_MODE_SET;
> >   	} else {
> >   		action[len++] = INTEL_GUC_ACTION_SCHED_CONTEXT;
> >   		action[len++] = ce->guc_id;
> >   	}
> > -	err = intel_guc_send_nb(guc, action, len);
> > -
> > +	err = intel_guc_send_nb(guc, action, len, g2h_len_dw);
> >   	if (!enabled && !err) {
> >   		set_context_enabled(ce);
> >   	} else if (!enabled) {
> > @@ -730,7 +731,7 @@ static int __guc_action_register_context(struct intel_guc *guc,
> >   		offset,
> >   	};
> > -	return intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action), true);
> > +	return intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action), 0, true);
> >   }
> >   static int register_context(struct intel_context *ce)
> > @@ -750,7 +751,8 @@ static int __guc_action_deregister_context(struct intel_guc *guc,
> >   		guc_id,
> >   	};
> > -	return intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action), true);
> > +	return intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action),
> > +					G2H_LEN_DW_DEREGISTER_CONTEXT, true);
> >   }
> >   static int deregister_context(struct intel_context *ce, u32 guc_id)
> > @@ -889,7 +891,8 @@ static void __guc_context_sched_disable(struct intel_guc *guc,
> >   	intel_context_get(ce);
> > -	intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action), true);
> > +	intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action),
> > +				 G2H_LEN_DW_SCHED_CONTEXT_MODE_SET, true);
> >   }
> >   static u16 prep_context_pending_disable(struct intel_context *ce)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
