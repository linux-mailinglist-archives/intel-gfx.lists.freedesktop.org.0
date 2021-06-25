Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467713B48D3
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 20:33:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DA56EE36;
	Fri, 25 Jun 2021 18:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39D166EE22;
 Fri, 25 Jun 2021 18:33:39 +0000 (UTC)
IronPort-SDR: ZTd/xzfQlazQgJ6ikc66WYbbTo5Drx0xIw39v/UPAWaVLp1hFFi08QA04m9wYeZAazEg9Ap0xm
 LFPYhKlV37OQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="205898287"
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; d="scan'208";a="205898287"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 11:33:37 -0700
IronPort-SDR: Rn+xBHqn1DCgup3e4rGDpSWxH/SJAOiiERYvx1HZUyMu10kT5FfOKVmuhTMIhnafgI//Mh3y4T
 bbwaMyz6cY9g==
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; d="scan'208";a="455527273"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 11:33:37 -0700
Date: Fri, 25 Jun 2021 11:26:56 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20210625182654.GA18715@sdutt-i7>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-7-matthew.brost@intel.com>
 <a44cf19c-d84d-6408-5571-b9a35bb2b3ce@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a44cf19c-d84d-6408-5571-b9a35bb2b3ce@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 06/47] drm/i915/guc: Optimize CTB writes and
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 25, 2021 at 03:09:29PM +0200, Michal Wajdeczko wrote:
> 
> 
> On 24.06.2021 09:04, Matthew Brost wrote:
> > CTB writes are now in the path of command submission and should be
> > optimized for performance. Rather than reading CTB descriptor values
> > (e.g. head, tail) which could result in accesses across the PCIe bus,
> > store shadow local copies and only read/write the descriptor values when
> > absolutely necessary. Also store the current space in the each channel
> > locally.
> > 
> > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 76 ++++++++++++++---------
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  6 ++
> >  2 files changed, 51 insertions(+), 31 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > index 27ec30b5ef47..1fd5c69358ef 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > @@ -130,6 +130,10 @@ static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc)
> >  static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
> >  {
> >  	ctb->broken = false;
> > +	ctb->tail = 0;
> > +	ctb->head = 0;
> > +	ctb->space = CIRC_SPACE(ctb->tail, ctb->head, ctb->size);
> > +
> >  	guc_ct_buffer_desc_init(ctb->desc);
> >  }
> >  
> > @@ -383,10 +387,8 @@ static int ct_write(struct intel_guc_ct *ct,
> >  {
> >  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> >  	struct guc_ct_buffer_desc *desc = ctb->desc;
> > -	u32 head = desc->head;
> > -	u32 tail = desc->tail;
> > +	u32 tail = ctb->tail;
> >  	u32 size = ctb->size;
> > -	u32 used;
> >  	u32 header;
> >  	u32 hxg;
> >  	u32 *cmds = ctb->cmds;
> > @@ -398,25 +400,14 @@ static int ct_write(struct intel_guc_ct *ct,
> >  	if (unlikely(desc->status))
> >  		goto corrupted;
> >  
> > -	if (unlikely((tail | head) >= size)) {
> > +#ifdef CONFIG_DRM_I915_DEBUG_GUC
> 
> since we are caching tail, we may want to check if it's sill correct:
> 
> 	tail = READ_ONCE(desc->tail);
> 	if (unlikely(tail != ctb->tail)) {
>   		CT_ERROR(ct, "Tail was modified %u != %u\n",
> 			 tail, ctb->tail);
>   		desc->status |= GUC_CTB_STATUS_MISMATCH;
>   		goto corrupted;
> 	}
> 
> and since we own the tail then we can be more strict:
> 
> 	GEM_BUG_ON(tail > size);
> 
> and then finally just check GuC head:
> 
> 	head = READ_ONCE(desc->head);
> 	if (unlikely(head >= size)) {
> 		...
> 

Sure, but still hidden behind CONFIG_DRM_I915_DEBUG_GUC, right?

> > +	if (unlikely((desc->tail | desc->head) >= size)) {
> >  		CT_ERROR(ct, "Invalid offsets head=%u tail=%u (size=%u)\n",
> > -			 head, tail, size);
> > +			 desc->head, desc->tail, size);
> >  		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> >  		goto corrupted;
> >  	}
> > -
> > -	/*
> > -	 * tail == head condition indicates empty. GuC FW does not support
> > -	 * using up the entire buffer to get tail == head meaning full.
> > -	 */
> > -	if (tail < head)
> > -		used = (size - head) + tail;
> > -	else
> > -		used = tail - head;
> > -
> > -	/* make sure there is a space including extra dw for the fence */
> > -	if (unlikely(used + len + 1 >= size))
> > -		return -ENOSPC;
> > +#endif
> >  
> >  	/*
> >  	 * dw0: CT header (including fence)
> > @@ -457,7 +448,9 @@ static int ct_write(struct intel_guc_ct *ct,
> >  	write_barrier(ct);
> >  
> >  	/* now update descriptor */
> > +	ctb->tail = tail;
> >  	WRITE_ONCE(desc->tail, tail);
> > +	ctb->space -= len + 1;
> 
> this magic "1" is likely GUC_CTB_MSG_MIN_LEN, right ?
>

Yes.
 
> >  
> >  	return 0;
> >  
> > @@ -473,7 +466,7 @@ static int ct_write(struct intel_guc_ct *ct,
> >   * @req:	pointer to pending request
> >   * @status:	placeholder for status
> >   *
> > - * For each sent request, Guc shall send bac CT response message.
> > + * For each sent request, GuC shall send back CT response message.
> >   * Our message handler will update status of tracked request once
> >   * response message with given fence is received. Wait here and
> >   * check for valid response status value.
> > @@ -520,24 +513,35 @@ static inline bool ct_deadlocked(struct intel_guc_ct *ct)
> >  	return ret;
> >  }
> >  
> > -static inline bool h2g_has_room(struct intel_guc_ct_buffer *ctb, u32 len_dw)
> > +static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
> >  {
> > -	struct guc_ct_buffer_desc *desc = ctb->desc;
> > -	u32 head = READ_ONCE(desc->head);
> > +	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> > +	u32 head;
> >  	u32 space;
> >  
> > -	space = CIRC_SPACE(desc->tail, head, ctb->size);
> > +	if (ctb->space >= len_dw)
> > +		return true;
> > +
> > +	head = READ_ONCE(ctb->desc->head);
> > +	if (unlikely(head > ctb->size)) {
> > +		CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u size=%u\n",
> > +			  ctb->desc->head, ctb->desc->tail, ctb->size);
> > +		ctb->desc->status |= GUC_CTB_STATUS_OVERFLOW;
> > +		ctb->broken = true;
> > +		return false;
> > +	}
> > +
> > +	space = CIRC_SPACE(ctb->tail, head, ctb->size);
> > +	ctb->space = space;
> 
> maybe here we could mark stall_time ?
> 
>  	if (space >= len_dw)
> 		return true;
> 
> 	if (ct->stall_time == KTIME_MAX)
> 		ct->stall_time = ktime_get();
> 	return false;
>

No. See my eariler comment [1] about why I'd rather leave this to the
caller. 

[1] https://patchwork.freedesktop.org/patch/440703/?series=91840&rev=1

> >  
> >  	return space >= len_dw;
> 
> btw, maybe to avoid filling CTB to the last dword, this should be
> 
> 	space > len_dw
> 

CIRC_SPACE leaves an extra DW already.

> note the earlier comment:
> 
> /*
>  * tail == head condition indicates empty. GuC FW does not support
>  * using up the entire buffer to get tail == head meaning full.
>  */
>

Yes, again CIRC_SPACE uses this same algorithm.

Matt
 
> >  }
> >  
> >  static int has_room_nb(struct intel_guc_ct *ct, u32 len_dw)
> >  {
> > -	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> > -
> >  	lockdep_assert_held(&ct->ctbs.send.lock);
> >  
> > -	if (unlikely(!h2g_has_room(ctb, len_dw))) {
> > +	if (unlikely(!h2g_has_room(ct, len_dw))) {
> >  		if (ct->stall_time == KTIME_MAX)
> >  			ct->stall_time = ktime_get();
> >  
> > @@ -606,10 +610,10 @@ static int ct_send(struct intel_guc_ct *ct,
> >  	 */
> >  retry:
> >  	spin_lock_irqsave(&ct->ctbs.send.lock, flags);
> > -	if (unlikely(!h2g_has_room(ctb, len + 1))) {
> > +	if (unlikely(!h2g_has_room(ct, len + 1))) {
> >  		if (ct->stall_time == KTIME_MAX)
> >  			ct->stall_time = ktime_get();
> > -		spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> > +		spin_unlock_irqrestore(&ctb->lock, flags);
> >  
> >  		if (unlikely(ct_deadlocked(ct)))
> >  			return -EIO;
> > @@ -632,7 +636,7 @@ static int ct_send(struct intel_guc_ct *ct,
> >  
> >  	err = ct_write(ct, action, len, fence, 0);
> >  
> > -	spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> > +	spin_unlock_irqrestore(&ctb->lock, flags);
> >  
> >  	if (unlikely(err))
> >  		goto unlink;
> > @@ -720,7 +724,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
> >  {
> >  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.recv;
> >  	struct guc_ct_buffer_desc *desc = ctb->desc;
> > -	u32 head = desc->head;
> > +	u32 head = ctb->head;
> >  	u32 tail = desc->tail;
> >  	u32 size = ctb->size;
> >  	u32 *cmds = ctb->cmds;
> > @@ -735,12 +739,21 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
> >  	if (unlikely(desc->status))
> >  		goto corrupted;
> >  
> > -	if (unlikely((tail | head) >= size)) {
> > +#ifdef CONFIG_DRM_I915_DEBUG_GUC
> 
> as above we may want to check if our cached head was not modified
> 
> > +	if (unlikely((desc->tail | desc->head) >= size)) {
> >  		CT_ERROR(ct, "Invalid offsets head=%u tail=%u (size=%u)\n",
> >  			 head, tail, size);
> >  		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> >  		goto corrupted;
> >  	}
> > +#else
> > +	if (unlikely((tail | ctb->head) >= size)) {
> > +		CT_ERROR(ct, "Invalid offsets head=%u tail=%u (size=%u)\n",
> > +			 head, tail, size);
> > +		desc->status |= GUC_CTB_STATUS_OVERFLOW;
> > +		goto corrupted;
> > +	}
> > +#endif
> >  
> >  	/* tail == head condition indicates empty */
> >  	available = tail - head;
> > @@ -790,6 +803,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
> >  	}
> >  	CT_DEBUG(ct, "received %*ph\n", 4 * len, (*msg)->msg);
> >  
> > +	ctb->head = head;
> >  	/* now update descriptor */
> >  	WRITE_ONCE(desc->head, head);
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > index 55ef7c52472f..9924335e2ee6 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > @@ -33,6 +33,9 @@ struct intel_guc;
> >   * @desc: pointer to the buffer descriptor
> >   * @cmds: pointer to the commands buffer
> >   * @size: size of the commands buffer in dwords
> > + * @head: local shadow copy of head in dwords
> > + * @tail: local shadow copy of tail in dwords
> > + * @space: local shadow copy of space in dwords
> >   * @broken: flag to indicate if descriptor data is broken
> >   */
> >  struct intel_guc_ct_buffer {
> > @@ -40,6 +43,9 @@ struct intel_guc_ct_buffer {
> >  	struct guc_ct_buffer_desc *desc;
> >  	u32 *cmds;
> >  	u32 size;
> > +	u32 tail;
> > +	u32 head;
> > +	u32 space;
> 
> in later patch this is changing to atomic_t
> maybe we can start with it ?
> 
> >  	bool broken;
> >  };
> >  
> > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
