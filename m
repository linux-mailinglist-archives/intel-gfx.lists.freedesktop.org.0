Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8F63B4894
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 20:00:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52FE26EE38;
	Fri, 25 Jun 2021 18:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B03A06EE37;
 Fri, 25 Jun 2021 17:59:58 +0000 (UTC)
IronPort-SDR: 4RXlafypxRS7TcQ3Lg5ypm6jlm7XDTwWhJY+Ibey7JP0erAbivBSA0l5zyn2xEsFBTn8YV0o/I
 pkBNS9H5PUJw==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="187407062"
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; d="scan'208";a="187407062"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 10:59:55 -0700
IronPort-SDR: SMv9G0LG2py4k8bGmKyB+tevgnwuMRpzoLJlO1r1xis5rgdeiJ98u3lxgYVSMJvKmjafHxGz63
 CFVsqHY/WbVg==
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; d="scan'208";a="418467853"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 10:59:54 -0700
Date: Fri, 25 Jun 2021 10:53:13 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20210625175313.GB13390@sdutt-i7>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-5-matthew.brost@intel.com>
 <761f2063-7fe6-518b-d05e-67f8fadb9a9c@intel.com>
 <20210624154947.GB1629@sdutt-i7>
 <c871b051-59f7-a56a-fba3-261a5450e0b5@intel.com>
 <20210624224119.GA19733@sdutt-i7>
 <1d250e86-1d2e-53b3-4ae1-ef126a05c617@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d250e86-1d2e-53b3-4ae1-ef126a05c617@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 04/47] drm/i915/guc: Add non blocking CTB
 send function
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

On Fri, Jun 25, 2021 at 01:50:21PM +0200, Michal Wajdeczko wrote:
> =

> =

> On 25.06.2021 00:41, Matthew Brost wrote:
> > On Thu, Jun 24, 2021 at 07:02:18PM +0200, Michal Wajdeczko wrote:
> >>
> >>
> >> On 24.06.2021 17:49, Matthew Brost wrote:
> >>> On Thu, Jun 24, 2021 at 04:48:32PM +0200, Michal Wajdeczko wrote:
> >>>>
> >>>>
> >>>> On 24.06.2021 09:04, Matthew Brost wrote:
> >>>>> Add non blocking CTB send function, intel_guc_send_nb. GuC submissi=
on
> >>>>> will send CTBs in the critical path and does not need to wait for t=
hese
> >>>>> CTBs to complete before moving on, hence the need for this new func=
tion.
> >>>>>
> >>>>> The non-blocking CTB now must have a flow control mechanism to ensu=
re
> >>>>> the buffer isn't overrun. A lazy spin wait is used as we believe the
> >>>>> flow control condition should be rare with a properly sized buffer.
> >>>>>
> >>>>> The function, intel_guc_send_nb, is exported in this patch but unus=
ed.
> >>>>> Several patches later in the series make use of this function.
> >>>>>
> >>>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> >>>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> >>>>> ---
> >>>>>  drivers/gpu/drm/i915/gt/uc/intel_guc.h    | 12 +++-
> >>>>>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 77 +++++++++++++++++++=
++--
> >>>>>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  3 +-
> >>>>>  3 files changed, 82 insertions(+), 10 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/d=
rm/i915/gt/uc/intel_guc.h
> >>>>> index 4abc59f6f3cd..24b1df6ad4ae 100644
> >>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> >>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> >>>>> @@ -74,7 +74,15 @@ static inline struct intel_guc *log_to_guc(struc=
t intel_guc_log *log)
> >>>>>  static
> >>>>>  inline int intel_guc_send(struct intel_guc *guc, const u32 *action=
, u32 len)
> >>>>>  {
> >>>>> -	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0);
> >>>>> +	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0, 0);
> >>>>> +}
> >>>>> +
> >>>>> +#define INTEL_GUC_SEND_NB		BIT(31)
> >>>>
> >>>> hmm, this flag really belongs to intel_guc_ct_send() so it should be
> >>>> defined as CTB flag near that function declaration
> >>>>
> >>>
> >>> I can move this up a few lines.
> >>>
> >>>>> +static
> >>>>> +inline int intel_guc_send_nb(struct intel_guc *guc, const u32 *act=
ion, u32 len)
> >>>>> +{
> >>>>> +	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0,
> >>>>> +				 INTEL_GUC_SEND_NB);
> >>>>>  }
> >>>>>  =

> >>>>>  static inline int
> >>>>> @@ -82,7 +90,7 @@ intel_guc_send_and_receive(struct intel_guc *guc,=
 const u32 *action, u32 len,
> >>>>>  			   u32 *response_buf, u32 response_buf_size)
> >>>>>  {
> >>>>>  	return intel_guc_ct_send(&guc->ct, action, len,
> >>>>> -				 response_buf, response_buf_size);
> >>>>> +				 response_buf, response_buf_size, 0);
> >>>>>  }
> >>>>>  =

> >>>>>  static inline void intel_guc_to_host_event_handler(struct intel_gu=
c *guc)
> >>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gp=
u/drm/i915/gt/uc/intel_guc_ct.c
> >>>>> index a17215920e58..c9a65d05911f 100644
> >>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>>> @@ -3,6 +3,11 @@
> >>>>>   * Copyright =A9 2016-2019 Intel Corporation
> >>>>>   */
> >>>>>  =

> >>>>> +#include <linux/circ_buf.h>
> >>>>> +#include <linux/ktime.h>
> >>>>> +#include <linux/time64.h>
> >>>>> +#include <linux/timekeeping.h>
> >>>>> +
> >>>>>  #include "i915_drv.h"
> >>>>>  #include "intel_guc_ct.h"
> >>>>>  #include "gt/intel_gt.h"
> >>>>> @@ -373,7 +378,7 @@ static void write_barrier(struct intel_guc_ct *=
ct)
> >>>>>  static int ct_write(struct intel_guc_ct *ct,
> >>>>>  		    const u32 *action,
> >>>>>  		    u32 len /* in dwords */,
> >>>>> -		    u32 fence)
> >>>>> +		    u32 fence, u32 flags)
> >>>>>  {
> >>>>>  	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> >>>>>  	struct guc_ct_buffer_desc *desc =3D ctb->desc;
> >>>>> @@ -421,9 +426,13 @@ static int ct_write(struct intel_guc_ct *ct,
> >>>>>  		 FIELD_PREP(GUC_CTB_MSG_0_NUM_DWORDS, len) |
> >>>>>  		 FIELD_PREP(GUC_CTB_MSG_0_FENCE, fence);
> >>>>>  =

> >>>>> -	hxg =3D FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
> >>>>> -	      FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
> >>>>> -			 GUC_HXG_REQUEST_MSG_0_DATA0, action[0]);
> >>>>> +	hxg =3D (flags & INTEL_GUC_SEND_NB) ?
> >>>>> +		(FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_EVENT) |
> >>>>> +		 FIELD_PREP(GUC_HXG_EVENT_MSG_0_ACTION |
> >>>>> +			    GUC_HXG_EVENT_MSG_0_DATA0, action[0])) :
> >>>>> +		(FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
> >>>>> +		 FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
> >>>>> +			    GUC_HXG_REQUEST_MSG_0_DATA0, action[0]));
> >>>>
> >>>> or as we already switched to accept and return whole HXG messages in
> >>>> guc_send_mmio() maybe we should do the same for CTB variant too and
> >>>> instead of using extra flag just let caller to prepare proper HXG he=
ader
> >>>> with HXG_EVENT type and then in CTB code just look at this type to m=
ake
> >>>> decision which code path to use
> >>>>
> >>>
> >>> Not sure I follow. Anyways could this be done in a follow up by you if
> >>> want this change.
> >>>  =

> >>>> note that existing callers should not be impacted, as full HXG header
> >>>> for the REQUEST message looks exactly the same as "action" code alon=
e.
> >>>>
> >>>>>  =

> >>>>>  	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
> >>>>>  		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
> >>>>> @@ -498,6 +507,46 @@ static int wait_for_ct_request_update(struct c=
t_request *req, u32 *status)
> >>>>>  	return err;
> >>>>>  }
> >>>>>  =

> >>>>> +static inline bool h2g_has_room(struct intel_guc_ct_buffer *ctb, u=
32 len_dw)
> >>>>> +{
> >>>>> +	struct guc_ct_buffer_desc *desc =3D ctb->desc;
> >>>>> +	u32 head =3D READ_ONCE(desc->head);
> >>>>> +	u32 space;
> >>>>> +
> >>>>> +	space =3D CIRC_SPACE(desc->tail, head, ctb->size);
> >>>>> +
> >>>>> +	return space >=3D len_dw;
> >>>>
> >>>> here you are returning true(1) as has room
> >>>>
> >>>
> >>> See below.
> >>>  =

> >>>>> +}
> >>>>> +
> >>>>> +static int ct_send_nb(struct intel_guc_ct *ct,
> >>>>> +		      const u32 *action,
> >>>>> +		      u32 len,
> >>>>> +		      u32 flags)
> >>>>> +{
> >>>>> +	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> >>>>> +	unsigned long spin_flags;
> >>>>> +	u32 fence;
> >>>>> +	int ret;
> >>>>> +
> >>>>> +	spin_lock_irqsave(&ctb->lock, spin_flags);
> >>>>> +
> >>>>> +	ret =3D h2g_has_room(ctb, len + 1);
> >>>>
> >>>> but here you treat "1" it as en error
> >>>>
> >>>
> >>> Yes, this patch is broken but fixed in a follow up one. Regardless I'=
ll
> >>> fix this patch in place.
> >>>
> >>>> and this "1" is GUC_HXG_MSG_MIN_LEN, right ?
> >>>>
> >>>
> >>> Not exactly. This is following how ct_send() uses the action + len
> >>> field. Action[0] field goes in the HXG header and extra + 1 is for the
> >>> CT header.
> >>
> >> well, "len" already counts "action" so by treating input as full HXG
> >> message (including HXG header) will make it cleaner
> >>
> > =

> > Yes, I know. See above. To me GUC_HXG_MSG_MIN_LEN makes zero sense and
> > it is worse than adding + 1. This + 1 accounts for the CT header not the
> > HXG header. If any we add a new define, GUC_CT_HDR_LEN, and add that.
> =

> you mean GUC_CTB_MSG_MIN_LEN ? it's already there [1]
> =


Kinda? I think we should have a define GUC_CTB_HDR_LEN which is 1 and
GUC_CTB_MSG_MIN_LEN is defined as GUC_CTB_HDR_LEN. 'GUC_CTB_HDR_LEN'
makes it clear that the + 1 is referring to the header. I've done this
branch of these patches already.

Matt

> [1]
> https://cgit.freedesktop.org/drm/drm-tip/tree/drivers/gpu/drm/i915/gt/uc/=
abi/guc_communication_ctb_abi.h#n82
> =

> > =

> > Matt
> > =

> >> we can try do it later but by doing it right now we would avoid
> >> introducing this send_nb() function and deprecating them long term aga=
in
> >>
> >>>
> >>>>> +	if (unlikely(ret))
> >>>>> +		goto out;
> >>>>> +
> >>>>> +	fence =3D ct_get_next_fence(ct);
> >>>>> +	ret =3D ct_write(ct, action, len, fence, flags);
> >>>>> +	if (unlikely(ret))
> >>>>> +		goto out;
> >>>>> +
> >>>>> +	intel_guc_notify(ct_to_guc(ct));
> >>>>> +
> >>>>> +out:
> >>>>> +	spin_unlock_irqrestore(&ctb->lock, spin_flags);
> >>>>> +
> >>>>> +	return ret;
> >>>>> +}
> >>>>> +
> >>>>>  static int ct_send(struct intel_guc_ct *ct,
> >>>>>  		   const u32 *action,
> >>>>>  		   u32 len,
> >>>>> @@ -505,6 +554,7 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>  		   u32 response_buf_size,
> >>>>>  		   u32 *status)
> >>>>>  {
> >>>>> +	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> >>>>>  	struct ct_request request;
> >>>>>  	unsigned long flags;
> >>>>>  	u32 fence;
> >>>>> @@ -514,8 +564,20 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>  	GEM_BUG_ON(!len);
> >>>>>  	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
> >>>>>  	GEM_BUG_ON(!response_buf && response_buf_size);
> >>>>> +	might_sleep();
> >>>>>  =

> >>>>> +	/*
> >>>>> +	 * We use a lazy spin wait loop here as we believe that if the CT
> >>>>> +	 * buffers are sized correctly the flow control condition should =
be
> >>>>> +	 * rare.
> >>>>
> >>>> shouldn't we at least try to log such cases with RATE_LIMITED to find
> >>>> out how "rare" it is, or if really unlikely just return -EBUSY as in
> >>>> case of non-blocking send ?
> >>>>
> >>>
> >>> Definitely not return -EBUSY as this a blocking call. Perhaps we can =
log
> >>
> >> blocking calls still can fail for various reasons, full CTB is one of
> >> them, and if we return error (now broken) for non-blocking variant then
> >> we should do the same for blocking variant as well and let the caller
> >> decide about next steps
> >>
> >>> this, but IGTs likely can hit rather easily. It really is only
> >>> interesting if real workloads hit this. Regardless that can be a foll=
ow
> >>> up.
> >>
> >> if we hide retry in a silent loop then we will not find it out if we h=
it
> >> this condition (IGT or real WL) or not
> >>
> >>>
> >>> Matt
> >>>  =

> >>>>> +	 */
> >>>>> +retry:
> >>>>>  	spin_lock_irqsave(&ct->ctbs.send.lock, flags);
> >>>>> +	if (unlikely(!h2g_has_room(ctb, len + 1))) {
> >>>>> +		spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> >>>>> +		cond_resched();
> >>>>> +		goto retry;
> >>>>> +	}
> >>>>>  =

> >>>>>  	fence =3D ct_get_next_fence(ct);
> >>>>>  	request.fence =3D fence;
> >>>>> @@ -527,7 +589,7 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>  	list_add_tail(&request.link, &ct->requests.pending);
> >>>>>  	spin_unlock(&ct->requests.lock);
> >>>>>  =

> >>>>> -	err =3D ct_write(ct, action, len, fence);
> >>>>> +	err =3D ct_write(ct, action, len, fence, 0);
> >>>>>  =

> >>>>>  	spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> >>>>>  =

> >>>>> @@ -569,7 +631,7 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>   * Command Transport (CT) buffer based GuC send function.
> >>>>>   */
> >>>>>  int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, =
u32 len,
> >>>>> -		      u32 *response_buf, u32 response_buf_size)
> >>>>> +		      u32 *response_buf, u32 response_buf_size, u32 flags)
> >>>>>  {
> >>>>>  	u32 status =3D ~0; /* undefined */
> >>>>>  	int ret;
> >>>>> @@ -579,6 +641,9 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, =
const u32 *action, u32 len,
> >>>>>  		return -ENODEV;
> >>>>>  	}
> >>>>>  =

> >>>>> +	if (flags & INTEL_GUC_SEND_NB)
> >>>>> +		return ct_send_nb(ct, action, len, flags);
> >>>>> +
> >>>>>  	ret =3D ct_send(ct, action, len, response_buf, response_buf_size,=
 &status);
> >>>>>  	if (unlikely(ret < 0)) {
> >>>>>  		CT_ERROR(ct, "Sending action %#x failed (err=3D%d status=3D%#X)\=
n",
> >>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gp=
u/drm/i915/gt/uc/intel_guc_ct.h
> >>>>> index 1ae2dde6db93..eb69263324ba 100644
> >>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> >>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> >>>>> @@ -42,7 +42,6 @@ struct intel_guc_ct_buffer {
> >>>>>  	bool broken;
> >>>>>  };
> >>>>>  =

> >>>>> -
> >>>>>  /** Top-level structure for Command Transport related data
> >>>>>   *
> >>>>>   * Includes a pair of CT buffers for bi-directional communication =
and tracking
> >>>>> @@ -88,7 +87,7 @@ static inline bool intel_guc_ct_enabled(struct in=
tel_guc_ct *ct)
> >>>>>  }
> >>>>>  =

> >>>>>  int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, =
u32 len,
> >>>>> -		      u32 *response_buf, u32 response_buf_size);
> >>>>> +		      u32 *response_buf, u32 response_buf_size, u32 flags);
> >>>>>  void intel_guc_ct_event_handler(struct intel_guc_ct *ct);
> >>>>>  =

> >>>>>  #endif /* _INTEL_GUC_CT_H_ */
> >>>>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
