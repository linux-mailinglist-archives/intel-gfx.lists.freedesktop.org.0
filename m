Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE14391EDB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 20:18:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F0E6ED9D;
	Wed, 26 May 2021 18:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58E256ED9D;
 Wed, 26 May 2021 18:18:01 +0000 (UTC)
IronPort-SDR: EjbMyQ8bPQh7gNhB663eNvaaMgr+FSfyz8N9Ky41MadGei5Pko6Wgeheyjz0RPLCsWLtVc0Q2L
 rKdr+W91ljGw==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="266429473"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="266429473"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 11:18:00 -0700
IronPort-SDR: l5/tdKJh0tUZptH/nKo5UlzFsxCgVErWxGmKB8ezjUwTh0zlSQJjZvG64Ic4WX2iwu4HbNloeC
 59ObDKn8bU7A==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="443170321"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 11:17:59 -0700
Date: Wed, 26 May 2021 11:10:53 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20210526181053.GA3435@sdutt-i7>
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-37-matthew.brost@intel.com>
 <375b4de4-168f-9c4c-dbb8-f42fd6303628@linux.intel.com>
 <20210525172121.GE14724@sdutt-i7>
 <0f26f76f-e066-fb23-a7b2-784bb8ee771d@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f26f76f-e066-fb23-a7b2-784bb8ee771d@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC PATCH 36/97] drm/i915/guc: Add non blocking
 CTB send function
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 26, 2021 at 09:57:10AM +0100, Tvrtko Ursulin wrote:
> =

> On 25/05/2021 18:21, Matthew Brost wrote:
> > On Tue, May 25, 2021 at 10:21:00AM +0100, Tvrtko Ursulin wrote:
> > > =

> > > On 06/05/2021 20:13, Matthew Brost wrote:
> > > > Add non blocking CTB send function, intel_guc_send_nb. In order to
> > > > support a non blocking CTB send function a spin lock is needed to
> > > > protect the CTB descriptors fields. Also the non blocking call must=
 not
> > > > update the fence value as this value is owned by the blocking call
> > > > (intel_guc_send).
> > > =

> > > Could the commit message say why the non-blocking send function is ne=
eded?
> > > =

> > =

> > Sure. Something like:
> > =

> > 'CTBs will be used in the critical patch of GuC submission and there is
> > no need to wait for each CTB complete before moving on the i915'
> =

> A bit more, like also mentioning the critical path is with interrupts dis=
abled or so. And not just that there is no need to wait but waiting is not =
possible because this or that. So only choice is to do this busy loop send.=
 It's a bit horrible so justification needs to be documented.
> =


Don't I basically say all this? Anyways I'll scrub this comment.

> > > > The blocking CTB now must have a flow control mechanism to ensure t=
he
> > > > buffer isn't overrun. A lazy spin wait is used as we believe the fl=
ow
> > > > control condition should be rare with properly sized buffer.
> > > > =

> > > > The function, intel_guc_send_nb, is exported in this patch but unus=
ed.
> > > > Several patches later in the series make use of this function.
> > > > =

> > > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > > ---
> > > >    drivers/gpu/drm/i915/gt/uc/intel_guc.h    | 12 ++-
> > > >    drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 96 +++++++++++++++++=
++++--
> > > >    drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  7 +-
> > > >    3 files changed, 105 insertions(+), 10 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/d=
rm/i915/gt/uc/intel_guc.h
> > > > index c20f3839de12..4c0a367e41d8 100644
> > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > > > @@ -75,7 +75,15 @@ static inline struct intel_guc *log_to_guc(struc=
t intel_guc_log *log)
> > > >    static
> > > >    inline int intel_guc_send(struct intel_guc *guc, const u32 *acti=
on, u32 len)
> > > >    {
> > > > -	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0);
> > > > +	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0, 0);
> > > > +}
> > > > +
> > > > +#define INTEL_GUC_SEND_NB		BIT(31)
> > > > +static
> > > > +inline int intel_guc_send_nb(struct intel_guc *guc, const u32 *act=
ion, u32 len)
> > > > +{
> > > > +	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0,
> > > > +				 INTEL_GUC_SEND_NB);
> > > >    }
> > > >    static inline int
> > > > @@ -83,7 +91,7 @@ intel_guc_send_and_receive(struct intel_guc *guc,=
 const u32 *action, u32 len,
> > > >    			   u32 *response_buf, u32 response_buf_size)
> > > >    {
> > > >    	return intel_guc_ct_send(&guc->ct, action, len,
> > > > -				 response_buf, response_buf_size);
> > > > +				 response_buf, response_buf_size, 0);
> > > >    }
> > > >    static inline void intel_guc_to_host_event_handler(struct intel_=
guc *guc)
> > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gp=
u/drm/i915/gt/uc/intel_guc_ct.c
> > > > index a76603537fa8..af7314d45a78 100644
> > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > > > @@ -3,6 +3,11 @@
> > > >     * Copyright =A9 2016-2019 Intel Corporation
> > > >     */
> > > > +#include <linux/circ_buf.h>
> > > > +#include <linux/ktime.h>
> > > > +#include <linux/time64.h>
> > > > +#include <linux/timekeeping.h>
> > > > +
> > > >    #include "i915_drv.h"
> > > >    #include "intel_guc_ct.h"
> > > >    #include "gt/intel_gt.h"
> > > > @@ -308,6 +313,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
> > > >    	if (unlikely(err))
> > > >    		goto err_deregister;
> > > > +	ct->requests.last_fence =3D 1;
> > > >    	ct->enabled =3D true;
> > > >    	return 0;
> > > > @@ -343,10 +349,22 @@ static u32 ct_get_next_fence(struct intel_guc=
_ct *ct)
> > > >    	return ++ct->requests.last_fence;
> > > >    }
> > > > +static void write_barrier(struct intel_guc_ct *ct) {
> > > > +	struct intel_guc *guc =3D ct_to_guc(ct);
> > > > +	struct intel_gt *gt =3D guc_to_gt(guc);
> > > > +
> > > > +	if (i915_gem_object_is_lmem(guc->ct.vma->obj)) {
> > > > +		GEM_BUG_ON(guc->send_regs.fw_domains);
> > > > +		intel_uncore_write_fw(gt->uncore, GEN11_SOFT_SCRATCH(0), 0);
> > > =

> > > It's safe to write to this reg? Does it need a comment to explain it?
> > > =

> > =

> > Yes, it is same. IMO 'SCRATCH' in the name is enough documentation.
> =

> Why would it be enough? It requires digging to figure it out since it app=
ears these are some sort of GuC special registers and not generic scratch:
> =

> commit 2d4ed3a988e6b1ff9729d0edd74bf4890571253e
> Author: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Date:   Mon May 27 18:36:05 2019 +0000
> =

>     drm/i915/guc: New GuC scratch registers for Gen11
> =

> If it was a normal scratch then async trashing of those from a random dri=
ver thread isn't per se safe if used from a GPU context running in parallel.
> =

> But then according to bspec they are called VF_SW_FLAG_<n> and not GEN11_=
SOFT_SCRATCH so yeah.
> =


Moved this part into its own patch and added comment indicating why they
are safe to use.

Matt =


> > > > +	} else {
> > > > +		wmb();
> > > > +	}
> > > > +}
> > > > +
> > > >    static int ct_write(struct intel_guc_ct *ct,
> > > >    		    const u32 *action,
> > > >    		    u32 len /* in dwords */,
> > > > -		    u32 fence)
> > > > +		    u32 fence, u32 flags)
> > > >    {
> > > >    	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> > > >    	struct guc_ct_buffer_desc *desc =3D ctb->desc;
> > > > @@ -393,9 +411,13 @@ static int ct_write(struct intel_guc_ct *ct,
> > > >    		 FIELD_PREP(GUC_CTB_MSG_0_NUM_DWORDS, len) |
> > > >    		 FIELD_PREP(GUC_CTB_MSG_0_FENCE, fence);
> > > > -	hxg =3D FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
> > > > -	      FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
> > > > -			 GUC_HXG_REQUEST_MSG_0_DATA0, action[0]);
> > > > +	hxg =3D (flags & INTEL_GUC_SEND_NB) ?
> > > > +		(FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_EVENT) |
> > > > +		 FIELD_PREP(GUC_HXG_EVENT_MSG_0_ACTION |
> > > > +			    GUC_HXG_EVENT_MSG_0_DATA0, action[0])) :
> > > > +		(FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
> > > > +		 FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
> > > > +			    GUC_HXG_REQUEST_MSG_0_DATA0, action[0]));
> > > >    	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
> > > >    		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
> > > > @@ -412,6 +434,12 @@ static int ct_write(struct intel_guc_ct *ct,
> > > >    	}
> > > >    	GEM_BUG_ON(tail > size);
> > > > +	/*
> > > > +	 * make sure H2G buffer update and LRC tail update (if this trigg=
ering a
> > > > +	 * submission) are visable before updating the descriptor tail
> > > > +	 */
> > > > +	write_barrier(ct);
> > > > +
> > > >    	/* now update descriptor */
> > > >    	WRITE_ONCE(desc->tail, tail);
> > > > @@ -466,6 +494,46 @@ static int wait_for_ct_request_update(struct c=
t_request *req, u32 *status)
> > > >    	return err;
> > > >    }
> > > > +static inline bool ctb_has_room(struct intel_guc_ct_buffer *ctb, u=
32 len_dw)
> > > > +{
> > > > +	struct guc_ct_buffer_desc *desc =3D ctb->desc;
> > > > +	u32 head =3D READ_ONCE(desc->head);
> > > > +	u32 space;
> > > > +
> > > > +	space =3D CIRC_SPACE(desc->tail, head, ctb->size);
> > > > +
> > > > +	return space >=3D len_dw;
> > > > +}
> > > > +
> > > > +static int ct_send_nb(struct intel_guc_ct *ct,
> > > > +		      const u32 *action,
> > > > +		      u32 len,
> > > > +		      u32 flags)
> > > > +{
> > > > +	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> > > > +	unsigned long spin_flags;
> > > > +	u32 fence;
> > > > +	int ret;
> > > > +
> > > > +	spin_lock_irqsave(&ctb->lock, spin_flags);
> > > > +
> > > > +	ret =3D ctb_has_room(ctb, len + 1);
> > > > +	if (unlikely(ret))
> > > > +		goto out;
> > > > +
> > > > +	fence =3D ct_get_next_fence(ct);
> > > > +	ret =3D ct_write(ct, action, len, fence, flags);
> > > > +	if (unlikely(ret))
> > > > +		goto out;
> > > > +
> > > > +	intel_guc_notify(ct_to_guc(ct));
> > > > +
> > > > +out:
> > > > +	spin_unlock_irqrestore(&ctb->lock, spin_flags);
> > > > +
> > > > +	return ret;
> > > > +}
> > > > +
> > > >    static int ct_send(struct intel_guc_ct *ct,
> > > >    		   const u32 *action,
> > > >    		   u32 len,
> > > > @@ -473,6 +541,7 @@ static int ct_send(struct intel_guc_ct *ct,
> > > >    		   u32 response_buf_size,
> > > >    		   u32 *status)
> > > >    {
> > > > +	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> > > >    	struct ct_request request;
> > > >    	unsigned long flags;
> > > >    	u32 fence;
> > > > @@ -482,8 +551,20 @@ static int ct_send(struct intel_guc_ct *ct,
> > > >    	GEM_BUG_ON(!len);
> > > >    	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
> > > >    	GEM_BUG_ON(!response_buf && response_buf_size);
> > > > +	might_sleep();
> > > =

> > > Sleep is just cond_resched below or there is more?
> > > =

> > =

> > Yes, the cond_resched.
> > =

> > > > +	/*
> > > > +	 * We use a lazy spin wait loop here as we believe that if the CT
> > > > +	 * buffers are sized correctly the flow control condition should =
be
> > > > +	 * rare.
> > > > +	 */
> > > > +retry:
> > > >    	spin_lock_irqsave(&ct->ctbs.send.lock, flags);
> > > > +	if (unlikely(!ctb_has_room(ctb, len + 1))) {
> > > > +		spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> > > > +		cond_resched();
> > > > +		goto retry;
> > > > +	}
> > > =

> > > If this patch is about adding a non-blocking send function, and below=
 we can
> > > see that it creates a fork:
> > > =

> > > intel_guc_ct_send:
> > > ...
> > > 	if (flags & INTEL_GUC_SEND_NB)
> > > 		return ct_send_nb(ct, action, len, flags);
> > > =

> > >   	ret =3D ct_send(ct, action, len, response_buf, response_buf_size, =
&status);
> > > =

> > > Then why is there a change in ct_send here, which is not the new
> > > non-blocking path?
> > > =

> > =

> > There is not a change to ct_send(), just to intel_guc_ct_send.
> =

> I was doing by the diff which says:
> =

>  static int ct_send(struct intel_guc_ct *ct,
>  		   const u32 *action,
>  		   u32 len,
> @@ -473,6 +541,7 @@ static int ct_send(struct intel_guc_ct *ct,
>  		   u32 response_buf_size,
>  		   u32 *status)
>  {
> +	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
>  	struct ct_request request;
>  	unsigned long flags;
>  	u32 fence;
> @@ -482,8 +551,20 @@ static int ct_send(struct intel_guc_ct *ct,
>  	GEM_BUG_ON(!len);
>  	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
>  	GEM_BUG_ON(!response_buf && response_buf_size);
> +	might_sleep();
> +	/*
> +	 * We use a lazy spin wait loop here as we believe that if the CT
> +	 * buffers are sized correctly the flow control condition should be
> +	 * rare.
> +	 */
> +retry:
>  	spin_lock_irqsave(&ct->ctbs.send.lock, flags);
> +	if (unlikely(!ctb_has_room(ctb, len + 1))) {
> +		spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> +		cond_resched();
> +		goto retry;
> +	}
> =

> So it looks like a change to ct_send to me. Is that wrong?
> =

> Regards,
> =

> Tvrtko
> =

> > As for why intel_guc_ct_send is updated and we don't just a new public
> > function, this was another reviewers suggestion. Again can't make
> > everyone happy.
> > > >    	fence =3D ct_get_next_fence(ct);
> > > >    	request.fence =3D fence;
> > > > @@ -495,7 +576,7 @@ static int ct_send(struct intel_guc_ct *ct,
> > > >    	list_add_tail(&request.link, &ct->requests.pending);
> > > >    	spin_unlock(&ct->requests.lock);
> > > > -	err =3D ct_write(ct, action, len, fence);
> > > > +	err =3D ct_write(ct, action, len, fence, 0);
> > > >    	spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> > > > @@ -537,7 +618,7 @@ static int ct_send(struct intel_guc_ct *ct,
> > > >     * Command Transport (CT) buffer based GuC send function.
> > > >     */
> > > >    int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action=
, u32 len,
> > > > -		      u32 *response_buf, u32 response_buf_size)
> > > > +		      u32 *response_buf, u32 response_buf_size, u32 flags)
> > > >    {
> > > >    	u32 status =3D ~0; /* undefined */
> > > >    	int ret;
> > > > @@ -547,6 +628,9 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, =
const u32 *action, u32 len,
> > > >    		return -ENODEV;
> > > >    	}
> > > > +	if (flags & INTEL_GUC_SEND_NB)
> > > > +		return ct_send_nb(ct, action, len, flags);
> > > > +
> > > >    	ret =3D ct_send(ct, action, len, response_buf, response_buf_siz=
e, &status);
> > > >    	if (unlikely(ret < 0)) {
> > > >    		CT_ERROR(ct, "Sending action %#x failed (err=3D%d status=3D%#X=
)\n",
> > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gp=
u/drm/i915/gt/uc/intel_guc_ct.h
> > > > index 1ae2dde6db93..55ef7c52472f 100644
> > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > > > @@ -9,6 +9,7 @@
> > > >    #include <linux/interrupt.h>
> > > >    #include <linux/spinlock.h>
> > > >    #include <linux/workqueue.h>
> > > > +#include <linux/ktime.h>
> > > >    #include "intel_guc_fwif.h"
> > > > @@ -42,7 +43,6 @@ struct intel_guc_ct_buffer {
> > > >    	bool broken;
> > > >    };
> > > > -
> > > >    /** Top-level structure for Command Transport related data
> > > >     *
> > > >     * Includes a pair of CT buffers for bi-directional communicatio=
n and tracking
> > > > @@ -69,6 +69,9 @@ struct intel_guc_ct {
> > > >    		struct list_head incoming; /* incoming requests */
> > > >    		struct work_struct worker; /* handler for incoming requests */
> > > >    	} requests;
> > > > +
> > > > +	/** @stall_time: time of first time a CTB submission is stalled */
> > > > +	ktime_t stall_time;
> > > =

> > > Unused in this patch.
> > > =

> > =

> > Yea, wrong patch. Will fix.
> > =

> > Matt
> > > >    };
> > > >    void intel_guc_ct_init_early(struct intel_guc_ct *ct);
> > > > @@ -88,7 +91,7 @@ static inline bool intel_guc_ct_enabled(struct in=
tel_guc_ct *ct)
> > > >    }
> > > >    int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action=
, u32 len,
> > > > -		      u32 *response_buf, u32 response_buf_size);
> > > > +		      u32 *response_buf, u32 response_buf_size, u32 flags);
> > > >    void intel_guc_ct_event_handler(struct intel_guc_ct *ct);
> > > >    #endif /* _INTEL_GUC_CT_H_ */
> > > > =

> > > =

> > > Regards,
> > > =

> > > Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
