Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1D23A2096
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 01:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 342926EB5A;
	Wed,  9 Jun 2021 23:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E676EB5A;
 Wed,  9 Jun 2021 23:12:31 +0000 (UTC)
IronPort-SDR: eRYORKlrVLwtpPQz03KVcIoIwMcYZhic5WHmmBbf23Vnhsm/wDFUZFpcEpUJD09Wn+Ykxw5kPm
 u7JUM6ddWByw==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="202164277"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="202164277"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 16:12:28 -0700
IronPort-SDR: dmL33eiyXP4Hmr+LXsTMt0OxXLB/F3C8xmJpGQrShNbFnppMfKpbYSGFA7xYXXvSMc2h0/RlYV
 hrpKVMvfI0mA==
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="450122527"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 16:12:15 -0700
Date: Wed, 9 Jun 2021 16:05:21 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20210609230521.GA5471@sdutt-i7>
References: <375b4de4-168f-9c4c-dbb8-f42fd6303628@linux.intel.com>
 <20210525172121.GE14724@sdutt-i7>
 <0f26f76f-e066-fb23-a7b2-784bb8ee771d@linux.intel.com>
 <20210526181053.GA3435@sdutt-i7>
 <53613c13-1cab-b9bd-3922-0389600773ee@linux.intel.com>
 <20210527143514.GA24720@sdutt-i7>
 <828fe399-5319-78a9-c6e3-c0c027e08e9c@linux.intel.com>
 <20210607173101.GA11968@sdutt-i7>
 <2706c890-5145-4edb-acd1-b9862caba8cf@linux.intel.com>
 <c5917e2c-b2ec-93f1-8cf0-046886f5f709@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c5917e2c-b2ec-93f1-8cf0-046886f5f709@intel.com>
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
Cc: jason.ekstrand@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, daniel.vetter@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 09, 2021 at 03:58:38PM +0200, Michal Wajdeczko wrote:
> =

> =

> On 08.06.2021 10:39, Tvrtko Ursulin wrote:
> > =

> > On 07/06/2021 18:31, Matthew Brost wrote:
> >> On Thu, May 27, 2021 at 04:11:50PM +0100, Tvrtko Ursulin wrote:
> >>>
> >>> On 27/05/2021 15:35, Matthew Brost wrote:
> >>>> On Thu, May 27, 2021 at 11:02:24AM +0100, Tvrtko Ursulin wrote:
> >>>>>
> >>>>> On 26/05/2021 19:10, Matthew Brost wrote:
> >>>>>
> >>>>> [snip]
> >>>>>
> >>>>>>>>>> +static int ct_send_nb(struct intel_guc_ct *ct,
> >>>>>>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const u32 *action,
> >>>>>>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 len,
> >>>>>>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 flags)
> >>>>>>>>>> +{
> >>>>>>>>>> +=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> >>>>>>>>>> +=A0=A0=A0 unsigned long spin_flags;
> >>>>>>>>>> +=A0=A0=A0 u32 fence;
> >>>>>>>>>> +=A0=A0=A0 int ret;
> >>>>>>>>>> +
> >>>>>>>>>> +=A0=A0=A0 spin_lock_irqsave(&ctb->lock, spin_flags);
> >>>>>>>>>> +
> >>>>>>>>>> +=A0=A0=A0 ret =3D ctb_has_room(ctb, len + 1);
> >>>>>>>>>> +=A0=A0=A0 if (unlikely(ret))
> >>>>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 goto out;
> >>>>>>>>>> +
> >>>>>>>>>> +=A0=A0=A0 fence =3D ct_get_next_fence(ct);
> >>>>>>>>>> +=A0=A0=A0 ret =3D ct_write(ct, action, len, fence, flags);
> >>>>>>>>>> +=A0=A0=A0 if (unlikely(ret))
> >>>>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 goto out;
> >>>>>>>>>> +
> >>>>>>>>>> +=A0=A0=A0 intel_guc_notify(ct_to_guc(ct));
> >>>>>>>>>> +
> >>>>>>>>>> +out:
> >>>>>>>>>> +=A0=A0=A0 spin_unlock_irqrestore(&ctb->lock, spin_flags);
> >>>>>>>>>> +
> >>>>>>>>>> +=A0=A0=A0 return ret;
> >>>>>>>>>> +}
> >>>>>>>>>> +
> >>>>>>>>>> =A0=A0=A0=A0=A0 static int ct_send(struct intel_guc_ct *ct,
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const u32 *ac=
tion,
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 len,
> >>>>>>>>>> @@ -473,6 +541,7 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 response_=
buf_size,
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *status)
> >>>>>>>>>> =A0=A0=A0=A0=A0 {
> >>>>>>>>>> +=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 struct ct_request request;
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 unsigned long flags;
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 fence;
> >>>>>>>>>> @@ -482,8 +551,20 @@ static int ct_send(struct intel_guc_ct *c=
t,
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(!len);
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_M=
ASK);
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(!response_buf && respon=
se_buf_size);
> >>>>>>>>>> +=A0=A0=A0 might_sleep();
> >>>>>>>>>
> >>>>>>>>> Sleep is just cond_resched below or there is more?
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>> Yes, the cond_resched.
> >>>>>>>>
> >>>>>>>>>> +=A0=A0=A0 /*
> >>>>>>>>>> +=A0=A0=A0=A0 * We use a lazy spin wait loop here as we believ=
e that
> >>>>>>>>>> if the CT
> >>>>>>>>>> +=A0=A0=A0=A0 * buffers are sized correctly the flow control c=
ondition
> >>>>>>>>>> should be
> >>>>>>>>>> +=A0=A0=A0=A0 * rare.
> >>>>>>>>>> +=A0=A0=A0=A0 */
> >>>>>>>>>> +retry:
> >>>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 spin_lock_irqsave(&ct->ctbs.send.l=
ock, flags);
> >>>>>>>>>> +=A0=A0=A0 if (unlikely(!ctb_has_room(ctb, len + 1))) {
> >>>>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 spin_unlock_irqrestore(&ct->ctbs.send.l=
ock, flags);
> >>>>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 cond_resched();
> >>>>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 goto retry;
> >>>>>>>>>> +=A0=A0=A0 }
> >>>>>>>>>
> >>>>>>>>> If this patch is about adding a non-blocking send function, and
> >>>>>>>>> below we can
> >>>>>>>>> see that it creates a fork:
> >>>>>>>>>
> >>>>>>>>> intel_guc_ct_send:
> >>>>>>>>> ...
> >>>>>>>>> =A0=A0=A0=A0if (flags & INTEL_GUC_SEND_NB)
> >>>>>>>>> =A0=A0=A0=A0=A0=A0=A0 return ct_send_nb(ct, action, len, flags);
> >>>>>>>>>
> >>>>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0 ret =3D ct_send(ct, action, len, respo=
nse_buf,
> >>>>>>>>> response_buf_size, &status);
> >>>>>>>>>
> >>>>>>>>> Then why is there a change in ct_send here, which is not the new
> >>>>>>>>> non-blocking path?
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>> There is not a change to ct_send(), just to intel_guc_ct_send.
> >>>>>>>
> >>>>>>> I was doing by the diff which says:
> >>>>>>>
> >>>>>>> =A0=A0=A0 static int ct_send(struct intel_guc_ct *ct,
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const u32 *action,
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 len,
> >>>>>>> @@ -473,6 +541,7 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 response_buf_size,
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *status)
> >>>>>>> =A0=A0=A0 {
> >>>>>>> +=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.send;
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0 struct ct_request request;
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0 unsigned long flags;
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0 u32 fence;
> >>>>>>> @@ -482,8 +551,20 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(!len);
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(!response_buf && response_buf_si=
ze);
> >>>>>>> +=A0=A0=A0 might_sleep();
> >>>>>>> +=A0=A0=A0 /*
> >>>>>>> +=A0=A0=A0=A0 * We use a lazy spin wait loop here as we believe t=
hat if
> >>>>>>> the CT
> >>>>>>> +=A0=A0=A0=A0 * buffers are sized correctly the flow control cond=
ition
> >>>>>>> should be
> >>>>>>> +=A0=A0=A0=A0 * rare.
> >>>>>>> +=A0=A0=A0=A0 */
> >>>>>>> +retry:
> >>>>>>> =A0=A0=A0=A0=A0=A0=A0 spin_lock_irqsave(&ct->ctbs.send.lock, flag=
s);
> >>>>>>> +=A0=A0=A0 if (unlikely(!ctb_has_room(ctb, len + 1))) {
> >>>>>>> +=A0=A0=A0=A0=A0=A0=A0 spin_unlock_irqrestore(&ct->ctbs.send.lock=
, flags);
> >>>>>>> +=A0=A0=A0=A0=A0=A0=A0 cond_resched();
> >>>>>>> +=A0=A0=A0=A0=A0=A0=A0 goto retry;
> >>>>>>> +=A0=A0=A0 }
> >>>>>>>
> >>>>>>> So it looks like a change to ct_send to me. Is that wrong?
> >>>>>
> >>>>> What about this part - is the patch changing the blocking ct_send
> >>>>> or not,
> >>>>> and if it is why?
> >>>>>
> >>>>
> >>>> Yes, ct_send() changes. Sorry for the confusion.
> >>>>
> >>>> This function needs to be updated to account for the H2G space and
> >>>> backoff if no space is available.
> >>>
> >>> Since this one is the sleeping path, it probably can and needs to be
> >>> smarter
> >>> than having a cond_resched busy loop added. Like sleep and get woken
> >>> up when
> >>> there is space. Otherwise it can degenerate to busy looping via
> >>> contention
> >>> with the non-blocking path.
> >>>
> >>
> >> That screams over enginerring a simple problem to me. If the CT channel
> >> is full we are really in trouble anyways - i.e. the performance is goi=
ng
> >> to terrible as we overwhelmed the GuC with traffic. That being said,
> > =

> > Performance of what would be terrible? Something relating to submitting
> > new jobs to the GPU I guess. Or something SRIOV related as you hint bel=
ow.
> > =

> > But there is no real reason why CPU cycles/power should suffer if GuC is
> > busy.
> > =

> > Okay, if it can't happen in real world then it's possibly passable as a
> =

> if that can't happen in real world, then maybe we can just return
> -ENOSPC/-EBUSY to report that 'unexpected' case, instead of hiding it
> behind silent busy loop ?
> =


No. This is a blocking call, hence it is ok for the function block if it
doesn't have space /w a timeout.

Matt

> > design of a communication interface. But to me it leaves a bad taste and
> > a doubt that there is this other aspect of the real world. And that is
> > when the unexpected happens. Even the most trivial things like a bug in
> > GuC firmware causes the driver to busy spin in there. So not much
> > happening on the machine but CPU cores pinned burning cycles in this
> > code. It's just lazy and not robust design. "Bug #nnnnn - High CPU usage
> > and GUI blocked - Solution: Upgrade GuC firmware and _reboot_ the
> > machine". Oh well..
> > =

> > At least I think the commit message should spell out clearly that a busy
> > looping path is being added to the sleeping send as a downside of
> > implementation choices. Still, for the record, I object to the design.
> > =

> > Regards,
> > =

> > Tvrtko
> > =

> >> IGTs can do this but that really isn't a real world use case. For the
> >> real world, this buffer is large enough that it won't ever be full hen=
ce
> >> the comment + lazy spin loop.
> >>
> >> Next, it isn't like we get an interrupt or something when space
> >> becomes available so how would we wake this thread? Could we come up
> >> with a convoluted scheme where we insert ops that generated an interru=
pt
> >> at regular intervals, probably? Would it be super complicated, totally
> >> unnecessary, and gain use nothing - absolutely.
> >>
> >> Lastly, blocking CTBs really shouldn't ever be used. Certainly the
> >> submission code doesn't use these. I think SRIOV might, but those can
> >> probably be reworked too to use non-blocking. At some point we might
> >> want to scrub the driver and just delete the blocking path.
> >>
> >> Matt
> >>
> >>> Regards,
> >>
> >>>
> >>> Tvrtko
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
