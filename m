Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D04FB3B8B31
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 02:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23B6B6EAA3;
	Thu,  1 Jul 2021 00:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BB26E09C;
 Thu,  1 Jul 2021 00:25:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="206626828"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="206626828"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 17:25:37 -0700
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="489756616"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 17:25:37 -0700
Date: Wed, 30 Jun 2021 17:19:01 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20210701001901.GA24965@sdutt-i7>
References: <20210627231439.138612-1-matthew.brost@intel.com>
 <20210627231439.138612-5-matthew.brost@intel.com>
 <24adbae6-61b7-7c8e-5034-7419a3a5dfa7@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24adbae6-61b7-7c8e-5034-7419a3a5dfa7@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/guc: Add non blocking CTB send
 function
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

On Thu, Jul 01, 2021 at 12:52:58AM +0200, Michal Wajdeczko wrote:
> =

> =

> On 28.06.2021 01:14, Matthew Brost wrote:
> > Add non blocking CTB send function, intel_guc_send_nb. GuC submission
> > will send CTBs in the critical path and does not need to wait for these
> > CTBs to complete before moving on, hence the need for this new function.
> > =

> > The non-blocking CTB now must have a flow control mechanism to ensure
> > the buffer isn't overrun. A lazy spin wait is used as we believe the
> > flow control condition should be rare with a properly sized buffer.
> > =

> > The function, intel_guc_send_nb, is exported in this patch but unused.
> > Several patches later in the series make use of this function.
> > =

> > v2:
> >  (Michal)
> >   - Use define for H2G room calculations
> >   - Move INTEL_GUC_SEND_NB define
> >  (Daniel Vetter)
> >   - Use msleep_interruptible rather than cond_resched
> > =

> > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >  .../gt/uc/abi/guc_communication_ctb_abi.h     |  3 +-
> >  drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 11 ++-
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 90 +++++++++++++++++--
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  4 +-
> >  4 files changed, 94 insertions(+), 14 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h=
 b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> > index e933ca02d0eb..99e1fad5ca20 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> > @@ -79,7 +79,8 @@ static_assert(sizeof(struct guc_ct_buffer_desc) =3D=
=3D 64);
> >   *  +---+-------+-----------------------------------------------------=
---------+
> >   */
> >  =

> > -#define GUC_CTB_MSG_MIN_LEN			1u
> > +#define GUC_CTB_HDR_LEN				1u
> > +#define GUC_CTB_MSG_MIN_LEN			GUC_CTB_HDR_LEN
> =

> if you insist to use dedicated macro for the CTB header len then to be
> consistent you need rename header bitfield macros as well, thus
> sections/tables will look like:
>

Kernel doc can't link to defines, right? So what does it matter? =


This example is also a reason why I think the kernel doc included is too
verbose to hand generate. Either we auto-gen this or just don't include
it.
 =

> /**
>  * DOC: CTB Message
>  *
>  *  +---+-------+-------------------------------------+
>  *  |   | Bits  | Description                         |
>  *  +=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D+
>  *  | 0 |  31:0 | `CTB Header`_                       |
>  *  +---+-------+-------------------------------------+
>  *  | 1 |  31:0 |  +-------------------------------+  |
>  *  +---+-------+  |                               |  |
>  *  |...|       |  |  CTB Payload                  |  |
>  *  +---+-------+  |                               |  |
>  *  | n |  31:0 |  +-------------------------------+  |
>  *  +---+-------+-------------------------------------+
>  */
> =

> /**
>  * DOC: CTB Header
>  *
>  *  +---+-------+-------------------------------------+
>  *  |   | Bits  | Description                         |
>  *  +=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D+
>  *  | 0 | 31:16 | **FENCE** - ...                     |
>  *  |   +-------+-------------------------------------+
>  *  |   | 15:12 | **FORMAT** - ...                    |
>  *  |   +-------+-------------------------------------+
>  *  |   |  11:8 | **RESERVED**                        |
>  *  |   +-------+-------------------------------------+
>  *  |   |   7:0 | **NUM_DWORDS** - ...                |
>  *  +---+-------+-------------------------------------+
>  */
> =

> #define GUC_CTB_HDR_0_FENCE			(0xffff << 16)
> #define GUC_CTB_HDR_0_FORMAT			(0xf << 12)
> #define   GUC_CTB_FORMAT_HXG			0u
> #define GUC_CTB_HDR_0_RESERVED			(0xf << 8)
> #define GUC_CTB_HDR_0_NUM_DWORDS		(0xff << 0)
> #define   GUC_CTB_MAX_DWORDS			255u
> =

> #define GUC_CTB_MSG_MIN_LEN	GUC_CTB_HDR_LEN
> #define GUC_CTB_MSG_MAX_LEN	(GUC_CTB_HDR_LEN + GUC_CTB_MAX_DWORDS)
> =

> =

> alternatively leave ABI defs as-as and just move your HDR definition out
> of ABI headers to inteL_guc_fwif.h as:
> =

> #define GUC_CTB_HDR_LEN GUC_CTB_MSG_MIN_LEN

This is backwards. The minimum length of a message is the header length.

> =

> =

> >  #define GUC_CTB_MSG_MAX_LEN			256u
> >  #define GUC_CTB_MSG_0_FENCE			(0xffff << 16)
> >  #define GUC_CTB_MSG_0_FORMAT			(0xf << 12)
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i=
915/gt/uc/intel_guc.h
> > index 4abc59f6f3cd..efc690fc8fb1 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > @@ -74,7 +74,14 @@ static inline struct intel_guc *log_to_guc(struct in=
tel_guc_log *log)
> >  static
> >  inline int intel_guc_send(struct intel_guc *guc, const u32 *action, u3=
2 len)
> >  {
> > -	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0);
> > +	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0, 0);
> > +}
> > +
> > +static
> > +inline int intel_guc_send_nb(struct intel_guc *guc, const u32 *action,=
 u32 len)
> > +{
> > +	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0,
> > +				 INTEL_GUC_SEND_NB);
> >  }
> >  =

> >  static inline int
> > @@ -82,7 +89,7 @@ intel_guc_send_and_receive(struct intel_guc *guc, con=
st u32 *action, u32 len,
> >  			   u32 *response_buf, u32 response_buf_size)
> >  {
> >  	return intel_guc_ct_send(&guc->ct, action, len,
> > -				 response_buf, response_buf_size);
> > +				 response_buf, response_buf_size, 0);
> >  }
> >  =

> >  static inline void intel_guc_to_host_event_handler(struct intel_guc *g=
uc)
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/dr=
m/i915/gt/uc/intel_guc_ct.c
> > index 43e03aa2dde8..90ee95a240e8 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > @@ -3,6 +3,11 @@
> >   * Copyright =A9 2016-2019 Intel Corporation
> >   */
> >  =

> > +#include <linux/circ_buf.h>
> =

> > +#include <linux/ktime.h>
> > +#include <linux/time64.h>
> > +#include <linux/timekeeping.h>
> =

> these headers should likely be part of patch 5/7
> =


Yes, will fix.

> > +
> >  #include "i915_drv.h"
> >  #include "intel_guc_ct.h"
> >  #include "gt/intel_gt.h"
> > @@ -373,7 +378,7 @@ static void write_barrier(struct intel_guc_ct *ct)
> >  static int ct_write(struct intel_guc_ct *ct,
> >  		    const u32 *action,
> >  		    u32 len /* in dwords */,
> > -		    u32 fence)
> > +		    u32 fence, u32 flags)
> >  {
> >  	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> >  	struct guc_ct_buffer_desc *desc =3D ctb->desc;
> > @@ -409,7 +414,7 @@ static int ct_write(struct intel_guc_ct *ct,
> >  		used =3D tail - head;
>                 ^^^^
> code above for blocking path is likely calculating free space in old
> fashion, while below you are using CIRC_BUF ...
> =

> so maybe switch to use circ_buf could be done as separate earlier step
> (not part of intro of non-blocking send) so then below use of CIRC_BUF
> in non-blocking path will look natural
>

This is existing code that deleted 2 patches from now. I don't think we
need to rework it to just delete it.
 =

> >  =

> >  	/* make sure there is a space including extra dw for the fence */
> =

> this extra DW is now "header" not just fence
> =


Correct but existing code, right? We should've fixed this with the CTB
interface change boondoggle. I suppose I'll fix this if I respin.

> > -	if (unlikely(used + len + 1 >=3D size))
> > +	if (unlikely(used + len + GUC_CTB_HDR_LEN >=3D size))
> >  		return -ENOSPC;
> >  =

> >  	/*
> > @@ -421,9 +426,13 @@ static int ct_write(struct intel_guc_ct *ct,
> >  		 FIELD_PREP(GUC_CTB_MSG_0_NUM_DWORDS, len) |
> >  		 FIELD_PREP(GUC_CTB_MSG_0_FENCE, fence);
> >  =

> > -	hxg =3D FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
> > -	      FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
> > -			 GUC_HXG_REQUEST_MSG_0_DATA0, action[0]);
> > +	hxg =3D (flags & INTEL_GUC_SEND_NB) ?
> > +		(FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_EVENT) |
> > +		 FIELD_PREP(GUC_HXG_EVENT_MSG_0_ACTION |
> > +			    GUC_HXG_EVENT_MSG_0_DATA0, action[0])) :
> > +		(FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
> > +		 FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
> > +			    GUC_HXG_REQUEST_MSG_0_DATA0, action[0]));
> >  =

> >  	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
> >  		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
> > @@ -500,6 +509,48 @@ static int wait_for_ct_request_update(struct ct_re=
quest *req, u32 *status)
> >  	return err;
> >  }
> >  =

> > +static inline bool h2g_has_room(struct intel_guc_ct_buffer *ctb, u32 l=
en_dw)
> =

> why h2g prefix ? function is taking pure *ctb, so maybe:
>

This was called ctb_has_room in the prior to this rev. You literally
suggested this change in previous revs comments. A follow up patch
basically does what you suggest below once we start checking the g2h
credits too.
 =

> =

> static bool ctb_has_room(struct intel_guc_ct_buffer *ctb, u32 len_dw)
> { ... }
> =

> static bool ct_can_send(struct intel_guc_ct *ct, u32 len_dw)
> {
> 	return ctb_has_room(&ct->ctbs.send, len_dw + CTB_HDR_LEN);
> }
> =

> =

> as we use send/recv, not h2g/g2h and to avoid mistakes add extra header
> len here (not by caller - same as in call to ct_write)
>

Don't agree. I prefer h2g / g2h here. Send and recv and both relative to
the observer while h2g / g2h are not.
 =

> > +{
> > +	struct guc_ct_buffer_desc *desc =3D ctb->desc;
> > +	u32 head =3D READ_ONCE(desc->head);
> > +	u32 space;
> > +
> > +	space =3D CIRC_SPACE(desc->tail, head, ctb->size);
> > +
> > +	return space >=3D len_dw;
> > +}
> > +
> > +static int ct_send_nb(struct intel_guc_ct *ct,
> > +		      const u32 *action,
> > +		      u32 len,
> > +		      u32 flags)
> > +{
> > +	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> > +	unsigned long spin_flags;
> > +	u32 fence;
> > +	int ret;
> > +
> > +	spin_lock_irqsave(&ctb->lock, spin_flags);
> > +
> > +	ret =3D h2g_has_room(ctb, len + GUC_CTB_HDR_LEN);
> > +	if (unlikely(!ret)) {
> > +		ret =3D -EBUSY;
> > +		goto out;
> > +	}
> > +
> > +	fence =3D ct_get_next_fence(ct);
> > +	ret =3D ct_write(ct, action, len, fence, flags);
> > +	if (unlikely(ret))
> > +		goto out;
> > +
> > +	intel_guc_notify(ct_to_guc(ct));
> > +
> > +out:
> > +	spin_unlock_irqrestore(&ctb->lock, spin_flags);
> > +
> > +	return ret;
> > +}
> > +
> >  static int ct_send(struct intel_guc_ct *ct,
> >  		   const u32 *action,
> >  		   u32 len,
> > @@ -507,8 +558,10 @@ static int ct_send(struct intel_guc_ct *ct,
> >  		   u32 response_buf_size,
> >  		   u32 *status)
> >  {
> > +	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> >  	struct ct_request request;
> >  	unsigned long flags;
> > +	unsigned int sleep_period_ms =3D 1;
> >  	u32 fence;
> >  	int err;
> >  =

> > @@ -516,8 +569,24 @@ static int ct_send(struct intel_guc_ct *ct,
> >  	GEM_BUG_ON(!len);
> >  	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
> >  	GEM_BUG_ON(!response_buf && response_buf_size);
> > +	might_sleep();
> > +
> > +	/*
> > +	 * We use a lazy spin wait loop here as we believe that if the CT
> > +	 * buffers are sized correctly the flow control condition should be
> > +	 * rare.
> > +	 */
> > +retry:
> > +	spin_lock_irqsave(&ctb->lock, flags);
> > +	if (unlikely(!h2g_has_room(ctb, len + GUC_CTB_HDR_LEN))) {
> > +		spin_unlock_irqrestore(&ctb->lock, flags);
> >  =

> > -	spin_lock_irqsave(&ct->ctbs.send.lock, flags);
> > +		if (msleep_interruptible(sleep_period_ms))
> > +			return -EINTR;
> > +		sleep_period_ms =3D sleep_period_ms << 1;
> > +
> > +		goto retry;
> > +	}
> =

> I'm still not convinced that this chunk should be exactly in the same
> patch that adds non-blocking path, it's not that with very first use of
> one NB call we will hit such problem
>

Once you have non-blocking calls the credits can be exhausted.
 =

> so IMHO it can be done earlier, in by anticipating such problem, or
> later as fix for potential problem due to stress
>

What?
 =

> note that in the commit message you admitted that new NB variant is not
> used yet, so we can't be hit
>

If we introduce a function that can cause a problem for another function
we likely should make both work in a single patch.
 =

> in other words, try to make patches focused on one item at the time.
>

This patch is quite simple and all the changes follow together. For
example if you did a 'git blame' on the above lines and the changes were
only by themselves it wouldn't make any sense at all. With the patch as
is it makes sense.
 =

> >  =

> >  	fence =3D ct_get_next_fence(ct);
> >  	request.fence =3D fence;
> > @@ -529,9 +598,9 @@ static int ct_send(struct intel_guc_ct *ct,
> >  	list_add_tail(&request.link, &ct->requests.pending);
> >  	spin_unlock(&ct->requests.lock);
> >  =

> > -	err =3D ct_write(ct, action, len, fence);
> > +	err =3D ct_write(ct, action, len, fence, 0);
> >  =

> > -	spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> > +	spin_unlock_irqrestore(&ctb->lock, flags);
> >  =

> >  	if (unlikely(err))
> >  		goto unlink;
> > @@ -571,7 +640,7 @@ static int ct_send(struct intel_guc_ct *ct,
> >   * Command Transport (CT) buffer based GuC send function.
> >   */
> >  int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 =
len,
> > -		      u32 *response_buf, u32 response_buf_size)
> > +		      u32 *response_buf, u32 response_buf_size, u32 flags)
> >  {
> >  	u32 status =3D ~0; /* undefined */
> >  	int ret;
> > @@ -581,6 +650,9 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, cons=
t u32 *action, u32 len,
> >  		return -ENODEV;
> >  	}
> >  =

> > +	if (flags & INTEL_GUC_SEND_NB)
> > +		return ct_send_nb(ct, action, len, flags);
> > +
> >  	ret =3D ct_send(ct, action, len, response_buf, response_buf_size, &st=
atus);
> >  	if (unlikely(ret < 0)) {
> >  		CT_ERROR(ct, "Sending action %#x failed (err=3D%d status=3D%#X)\n",
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/dr=
m/i915/gt/uc/intel_guc_ct.h
> > index 1ae2dde6db93..f6a4d5b33467 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > @@ -42,7 +42,6 @@ struct intel_guc_ct_buffer {
> >  	bool broken;
> >  };
> >  =

> > -
> >  /** Top-level structure for Command Transport related data
> >   *
> >   * Includes a pair of CT buffers for bi-directional communication and =
tracking
> > @@ -87,8 +86,9 @@ static inline bool intel_guc_ct_enabled(struct intel_=
guc_ct *ct)
> >  	return ct->enabled;
> >  }
> >  =

> > +#define INTEL_GUC_SEND_NB		BIT(31)
> =

> INTEL_GUC_CT_SEND_NB ?
>          ^^^^
> =


I guess, but does it really matter? I could see it either way.

Again please sign off with your name when done with your comments so I
know if it is your last comment.

Matt
 =


> >  int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 =
len,
> > -		      u32 *response_buf, u32 response_buf_size);
> > +		      u32 *response_buf, u32 response_buf_size, u32 flags);
> >  void intel_guc_ct_event_handler(struct intel_guc_ct *ct);
> >  =

> >  #endif /* _INTEL_GUC_CT_H_ */
> > =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
