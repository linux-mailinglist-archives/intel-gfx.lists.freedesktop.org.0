Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C836878CE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 10:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D307710E4B9;
	Thu,  2 Feb 2023 09:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C506310E4BB;
 Thu,  2 Feb 2023 09:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675330118; x=1706866118;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vqvCC9LCIlouzJ8sYr7Nj1neFZDvumfBnAArdIQ5uIM=;
 b=RVd0q6jSNFKYFBG/Dg1yFQoIS8/pB6Ue0vzJYvvWDBqGiYU7qK580+sC
 jKqgIj133eX0h60eozkbJlZMmRtBaiB2gdmrSyWtySCmVOzSgG633r9wl
 /q0BK6ENn3BpODHbgG/upUvC2r5LAhtLvQfpdnKEcaUlOmTKIAY3qn2On
 wGAaIxjscJGZdwaKgU29gFZcsm3KCFC1mK/EapegmB9vOiM9Q1Be6rpIP
 f9lPsZYZeMmKqCCaxxE/QoaolDeBoqJ16WE0eRzQD872/Ld04kwXi8Oty
 oIM5mB9naNXNExiRwvWSrIoT7PlI1DAqdrvWfqPvm1DPnOycAZVxKLzT5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="312048363"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="312048363"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 01:28:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="695722903"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="695722903"
Received: from mrogowsx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.35.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 01:28:35 -0800
Date: Thu, 2 Feb 2023 10:28:31 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <Y9uCP2ejUJOw/J5t@ashyti-mobl2.lan>
References: <b3d4b882-cb0b-a3c1-2609-6065f379ed15@intel.com>
 <Y9OSyhWHWu8iliP5@ashyti-mobl2.lan>
 <bfe11cf8-87a5-3768-92d5-3415145d8c8f@intel.com>
 <Y9eEX95t1i1YRVOk@ashyti-mobl2.lan> <Y9fXFrJp/N0cit18@intel.com>
 <Y9fsgJd7y6aEt/sT@ashyti-mobl2.lan> <Y9fySWFQwTPC1VAM@intel.com>
 <Y9f+sGkj2/rJpaMD@intel.com> <Y9grflHnhExehDO4@ashyti-mobl2.lan>
 <cd3ff678-30a4-172a-fa68-d4df1636c46e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cd3ff678-30a4-172a-fa68-d4df1636c46e@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pcode: Wait 10 seconds for pcode
 to settle
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi GG,

On Thu, Feb 02, 2023 at 10:22:30AM +0200, Gwan-gyeong Mun wrote:
> Hi Andi,
> 
> You gave a lot of explanations, and confirmed that this patch solves the
> problem, but the root cause of this problem still seems to be unclear.
> 
> In the logs where this problem was reported, the logs were output in the
> following order.
> 
> link
>  : https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1294/bat-atsm-1/igt@i915_module_load@resize-bar.html#dmesg-warnings17324
> 
> [log]
> <7> [268.276586] i915 0000:4d:00.0: [drm:skl_pcode_request [i915]] PCODE
> timeout, retrying with preemption disabled
> ...
> <4> [268.276942] WARNING: CPU: 1 PID: 1678 at
> drivers/gpu/drm/i915/intel_pcode.c:196 skl_pcode_request+0x242/0x260 [i915]
> ...
> <3> [268.329058] i915 0000:4d:00.0: [drm] *ERROR* gt0: intel_pcode_init
> failed -11
> 
> 
> In other words, -EAGAIN was not returned when the first
> skl_pcode_try_request() was executed in the skl_pcode_request() function,
> but the logs confirmed that the _wait_for(COND ...) of the
> skl_pcode_request() function was executed.

I'm not following... how can you say that -EAGAIN was not
returned, it's written explecetly that pcode_init failed with
-11, i.e. -EAGAIN.

Besides if we get as far as to receive "PCODE timeout, retrying
with preemption disabled" isn't it because we failed twice? And
apparently with -EAGAIN?

How can you say from the logs above that this

	if (COND) {
		ret = 0;
		goto out;
	}

has not failed with -EAGAIN? The logs are not telling us how the
calls to __skl_pcode_try_request() failed. I am telling you after
I tested it.

I hope I understood what you are saying. Otherwise, let's have an
offline chat.

Andi

> And, I reviewed bpsec in more detail to see if I missed anything related to
> the status and restrictions of the initial GTDRIVER_MAILBOX_INTERFACE
> (PCODE).
> 
> I've reviewed bpsec in detail for the two below where
> GTDRIVER_MAILBOX_INTERFACE is mentioned, but I haven't identified any
> additional constraints other than those described below.
> 
> 
> Pcode Driver Mailbox Spec: 34151
> Driver Initialization Programming Sequence: 33149
> 
> RUN_BUSY: SW may write to the two mailbox registers only when RUN_BUSY is
> cleared (0b)
> 
> My suggestion is that the HW should explain and analyze the root cause of
> the situation where it takes more than 180s for the Busy bit of
> GTDRIVER_MAILBOX_INTERFACE to change to 0.
> 
> And the method of the proposed patch, the newly added line
> "__intel_wait_for_register_fw(uncore, GEN6_PCODE_MAILBOX, GEN6_PCODE_READY,
> 0, 500, 10000, NULL))" succeeded, but the existing method of trying 180s
> with checking intel_uncore_read_fw(uncore,
> GEN6_PCODE_MAILBOX)&GEN6_PCODE_READY) failed. Therefore please review it
> again.
> (Checking the code, it appears that both call usleep_range(wait__, wait__ *
> 2); in __wait_for().)
> 
> Br,
> 
> G.G.
> 
> int skl_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
> 		      u32 reply_mask, u32 reply, int timeout_base_ms)
> {
> 	u32 status;
> 	int ret;
> 
> 	mutex_lock(&uncore->i915->sb_lock);
> 
> #define COND \
> 	skl_pcode_try_request(uncore, mbox, request, reply_mask, reply, &status)
> 
> 	/*
> 	 * Prime the PCODE by doing a request first. Normally it guarantees
> 	 * that a subsequent request, at most @timeout_base_ms later, succeeds.
> 	 * _wait_for() doesn't guarantee when its passed condition is evaluated
> 	 * first, so send the first request explicitly.
> 	 */
> 	if (COND) {
> 		ret = 0;
> 		goto out;
> 	}
> 	ret = _wait_for(COND, timeout_base_ms * 1000, 10, 10);
> 	if (!ret)
> 		goto out;
> 
> 	/*
> 	 * The above can time out if the number of requests was low (2 in the
> 	 * worst case) _and_ PCODE was busy for some reason even after a
> 	 * (queued) request and @timeout_base_ms delay. As a workaround retry
> 	 * the poll with preemption disabled to maximize the number of
> 	 * requests. Increase the timeout from @timeout_base_ms to 50ms to
> 	 * account for interrupts that could reduce the number of these
> 	 * requests, and for any quirks of the PCODE firmware that delays
> 	 * the request completion.
> 	 */
> 	drm_dbg_kms(&uncore->i915->drm,
> 		    "PCODE timeout, retrying with preemption disabled\n");
> 	drm_WARN_ON_ONCE(&uncore->i915->drm, timeout_base_ms > 3);
> 	preempt_disable();
> 	ret = wait_for_atomic(COND, 50);
> 	preempt_enable();
> 
> out:
> 	mutex_unlock(&uncore->i915->sb_lock);
> 	return status ? status : ret;
> #undef COND
> }
> 
> 
> 
> 
> 
> 
> On 1/30/23 10:41 PM, Andi Shyti wrote:
> > Hi Rodrigo,
> > 
> > first of all, thanks for looking into this!
> > 
> > > > > > > > In the call flow invoked by intel_pcode_init(), I've added brief comments
> > > > > > > > where further clarification is needed in this scenario, and a description of
> > > > > > > > the suspicious scenario at the bottom.
> > > > > > > > 
> > > > > > > > -------------------------------------------------------------------------
> > > > > > > > intel_pcode_init()
> > > > > > > >   |
> > > > > > > >   +-> skl_pcode_request(uncore, DG1_PCODE_STATUS,
> > > > > > > >                         DG1_UNCORE_GET_INIT_STATUS,
> > > > > > > >                         DG1_UNCORE_INIT_STATUS_COMPLETE,
> > > > > > > >                         DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
> > > > > > > >         |
> > > > > > > >         +-> skl_pcode_try_request()
> > > > > > > >               |
> > > > > > > >               +->  *status = __snb_pcode_rw(uncore, mbox, &request, NULL,
> > > > > > > >                                             500, 0, true);
> > > > > > > > 
> > > > > > > > -------------------------------------------------------------------------
> > > > > > > > static int __snb_pcode_rw(struct intel_uncore *uncore, u32 mbox,
> > > > > > > > 		          u32 *val, u32 *val1,
> > > > > > > > 			  int fast_timeout_us, int slow_timeout_ms,
> > > > > > > > 			  bool is_read)
> > > > > > > > {
> > > > > > > > ...
> > > > > > > >          /* Before writing a value to the GEN6_PCODE_DATA register,
> > > > > > > >             check if the bit in the GEN6_PCODE_MAILBOX register indicates
> > > > > > > >             BUSY. */
> > > > > > > > 	if (intel_uncore_read_fw(uncore, GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY)
> > > > > > > > 		return -EAGAIN;
> > > > > > > 
> > > > > > > what if we fail here because the punit is still initializing and
> > > > > > > will be ready, say, in 10 seconds?
> > > > > > > 
> > > > > > > GG, without going any further, we fail here! The -EAGAIN we
> > > > > > > receive from the test comes from this point. We don't fail with
> > > > > > > -ETIMEDOUT, but with -EAGAIN and the reason is because the punit
> > > > > > > is not ready to perform the very fist communication and we fail
> > > > > > > the probing.
> > > > > > > 
> > > > > > > It doesn't mean, though, that there is anything wrong, we just
> > > > > > > need to wait a bit before "taking drastic decisions"!
> > > > > > > 
> > > > > > > This patch is suggesting to wait up to 10s for the punit to be
> > > > > > > ready and eventually try to probe again... and, indeed, it works!
> > > > > > 
> > > > > > As GG, what I still don't understand is how this extra 10 seconds
> > > > > > wait helps... have you tried to simple add the 10 to the 180 and
> > > > > > make the code 190 sec instead?
> > > > > 
> > > > > maybe I haven't been able to explain the issue properly.
> > > > > 
> > > > > I can even set that timer to 2hrs and a half and nothing changes
> > > > > because we fail before.
> > > > > 
> > > > > Here it's not a matter of how much do I wait but when do I check
> > > > > the pcode readiness (i.e. signalled by the GEN6_PCODE_READY bit
> > > > > in the GEN6_PCODE_MAILBOX register).
> > > > > 
> > > > > During a normal run we are always sure that communicating with
> > > > > the punit works, because we made it sure during the previous
> > > > > transaction.
> > > > > 
> > > > > During probe there is no previous transaction and we start
> > > > > communicating with the punit without making sure that it is
> > > > > ready. And indeed some times it is not, so that we suppress the
> > > > > probing on purpose instead of giving it another chance.
> > > > > 
> > > > > I admit that the commit message is not written properly and
> > > > > rather misleading, but here it's not at all a matter of how much
> > > > > do I wait.
> > > > 
> > > > The commit message was initially confused because it looks like
> > > > we are just adding a wait, without doing anything....
> > > > 
> > > > But looking to the code we can see that it will wait until
> > > > pcode is ready with a timeout of 10 seconds.
> > > > 
> > > > But if pcode is ready in 10 seconds, why pcode is not ready
> > > > in 190 seconds. We are doing absolutely nothing more that could
> > > > make pcode ready in 10 seconds that won't be in 190.
> > > > 
> > > > This is what we are missing here... The code as is doesn't make
> > > > a lot of sense to us and it looks like it is solving the issue
> > > > by the 10 extra seconds and not by some special status checking.
> > > 
> > > Okay, after an offline talk I am convinced now that we need some
> > > check like this in some place.
> > > 
> > > But the commit message needs be be fully re-written.
> > > 
> > > It needs to be clear that underneath, the pcode communication
> > > functions will do a check for ready without any wait, what will
> > > make desired timeout to never really wait for the pcode done
> > > and prematurely return.
> > > 
> > > at __snb_pcode_rw():
> > > 
> > >   if (intel_uncore_read_fw(uncore, GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY)
> > >                  return -EAGAIN;
> > > 
> > > So, for this reason we need to ensure that pcode is really ready
> > > before we wait.
> > > 
> > > Other options are to handle the EAGAIN return and then wait.
> > > Or even change the __snb_pcode_rw to ensure that it is ready...
> > > 
> > > Something like:
> > > 
> > > -       if (intel_uncore_read_fw(uncore, GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY)
> > > -               return -EAGAIN;
> > > +       if (__intel_wait_for_register_fw(uncore, GEN6_PCODE_MAILBOX,
> > > +                                        GEN6_PCODE_READY, GEN6_PCODE_READY,
> > > +                                        fast_timeout_us,
> > > +                                        slow_timeout_ms,
> > > +                                        NULL))
> > > +               return -ETIMEDOUT;
> > 
> > This works, but the difference is that you are putting it on any
> > call to the __snb_pcode_rw(), even when not necessary.
> > 
> > Putting it in the schema we used in our offline chat, the
> > original implementation was:
> > 
> >   +-----------------------+
> >   | r/w -> check if ready |-> r/w -> cir -> r/w -> cir -> r/w -> ...
> >   +-----------------------+
> >     probe time
> > 
> > (where cir stands for "check if ready"). Because in the first
> > r/w we didn't check the status of the punit we added:
> > 
> >   +-------------------+
> >   | cir -> r/w -> cir |-> r/w -> cir -> r/w -> cir -> r/w -> ...
> >   +-------------------+
> >      probe time
> > 
> > So that we are sure that the first r/w works. What you are
> > suggesting is:
> > 
> >   +-------------------+
> >   | cir -> r/w -> cir |-> cir -> r/w -> cir -> cir -> r/w -> cir ->
> >   --------------------+
> >      probe time
> > 
> > As you can se we have two "check if ready" in a raw, which might
> > be a bit of an overkill, it doesn't hurt much but it would look
> > like:
> > 
> >    if (__intel_wait_for_register_fw())
> >    	return -EAGAIN;
> > 
> >    intel_uncore_write_fw......
> > 
> >    if (__intel_wait_for_register_fw())
> >    	return -TIMEDOUT;
> > 
> > and this for every single snb_pcode_r/w.
> > 
> > Besides some functions might need the first wait, some might not.
> > Check, for example icl_tc_cold_exit() where the -EAGAIN is
> > handled. With your version the retries would be quite ponderous.
> > 
> > I'm sorry, but I can't take your suggestion as it can have major
> > consequences along i915, it requires more changes and and it
> > needs to be carefully tested.
> > 
> > On top of that I like Ashutosh refactoring that is quite an
> > elegant way to gain more flexibility at boot time without any
> > further impact.
> > 
> > > In the best regular case it will not change anything since the wait
> > > for will return 0 immediatelly... in the worst case we would double
> > > the timeout value, but this would be only in this insane case of
> > > 180 seconds anyway and if it goes really really nasty...
> > > 
> > > But anyway, now the motivation and the source of the issue is pretty
> > > clear, I can add my rv-b there, but I really want a better commit msg
> > > at least...
> > 
> > I definitely need to make a better commit message :)
> > 
> > Thanks a lot,
> > Andi
> > 
> > > > 
> > > > > 
> > > > > Thanks, Rodrigo!
> > > > > Andi
> > > > > 
> > > > > > > 
> > > > > > > Andi
> > > > > > > 
> > > > > > > > 
> > > > > > > >          /* write value to GEN6_PCODE_DATA register */
> > > > > > > > 	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA, *val);
> > > > > > > > 
> > > > > > > > 	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA1, val1 ? *val1 : 0);
> > > > > > > > 
> > > > > > > >          /* In this scenario, the value
> > > > > > > >             "DG1_PCODE_STATUS | GEN6_PCODE_READY"
> > > > > > > >             is written to the GEN6_PCODE_MAILBOX register,
> > > > > > > >             so that the Busy status of the GEN6_PCODE_MAILBOX register
> > > > > > > >             can be checked later.
> > > > > > > >             (When the value of the GEN6_PCODE_READY bit of the
> > > > > > > >              GEN6_PCODE_MAILBOX register changes to 0, the operation can
> > > > > > > >              be considered completed.) */
> > > > > > > > 	intel_uncore_write_fw(uncore,
> > > > > > > > 			      GEN6_PCODE_MAILBOX, GEN6_PCODE_READY | mbox);
> > > > > > > > 
> > > > > > > >          /* In this scenario, verify that the BUSY status bit in the
> > > > > > > >             GEN6_PCODE_MAILBOX register turns off for up to 500us. */
> > > > > > > > 	if (__intel_wait_for_register_fw(uncore,
> > > > > > > > 					 GEN6_PCODE_MAILBOX,
> > > > > > > > 					 GEN6_PCODE_READY, 0,
> > > > > > > > 					 fast_timeout_us,
> > > > > > > > 					 slow_timeout_ms,
> > > > > > > > 					 &mbox))
> > > > > > > > 		return -ETIMEDOUT;
> > > > > > > >          /* If there is a failure here, it may be considered that the
> > > > > > > >             "DG1_PCODE_STATUS | GEN6_PCODE_READY" operation was not
> > > > > > > >             completed within 500us */
> > > > > > > > ...
> > > > > > > > }
> > > > > > > > 
> > > > > > > > int skl_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
> > > > > > > > 		      u32 reply_mask, u32 reply, int timeout_base_ms)
> > > > > > > > {
> > > > > > > > 	u32 status;
> > > > > > > > 	int ret;
> > > > > > > > 
> > > > > > > > 	mutex_lock(&uncore->i915->sb_lock);
> > > > > > > > 
> > > > > > > > #define COND \
> > > > > > > > 	skl_pcode_try_request(uncore, mbox, request, reply_mask, reply, &status)
> > > > > > > > 
> > > > > > > >          /* the first trial for skl_pcode_try_request() can return
> > > > > > > >             -EAGAIN or -ETIMEDOUT. And the code did not check the error
> > > > > > > >             code here, so we don't know how far the __snb_pcode_rw()
> > > > > > > >             function went. It is not known whether the pcode_mailbox
> > > > > > > >             status was busy before writing the value to the
> > > > > > > >             GEN6_PCODE_DATA register or after.*/
> > > > > > > > 	if (COND) {
> > > > > > > > 		ret = 0;
> > > > > > > > 		goto out;
> > > > > > > > 	}
> > > > > > > > 
> > > > > > > >          /* In this scenario, skl_pcode_try_request() is invoked every
> > > > > > > >             10us for 180 seconds. When skl_pcode_try_request() returns
> > > > > > > >             -EAGAIN and -ETIMEDOUT by _wait_for(),
> > > > > > > >             -ETIMEDOUT is returned to a variable ret. */
> > > > > > > > 
> > > > > > > > 	ret = _wait_for(COND, timeout_base_ms * 1000, 10, 10);
> > > > > > > > 
> > > > > > > > 	if (!ret)
> > > > > > > > 		goto out;
> > > > > > > > 
> > > > > > > > 	/*
> > > > > > > > 	 * The above can time out if the number of requests was low (2 in the
> > > > > > > > 	 * worst case) _and_ PCODE was busy for some reason even after a
> > > > > > > > 	 * (queued) request and @timeout_base_ms delay. As a workaround retry
> > > > > > > > 	 * the poll with preemption disabled to maximize the number of
> > > > > > > > 	 * requests. Increase the timeout from @timeout_base_ms to 50ms to
> > > > > > > > 	 * account for interrupts that could reduce the number of these
> > > > > > > > 	 * requests, and for any quirks of the PCODE firmware that delays
> > > > > > > > 	 * the request completion.
> > > > > > > > 	 */
> > > > > > > > 	drm_dbg_kms(&uncore->i915->drm,
> > > > > > > > 		    "PCODE timeout, retrying with preemption disabled\n");
> > > > > > > > 	drm_WARN_ON_ONCE(&uncore->i915->drm, timeout_base_ms > 3);
> > > > > > > > 	preempt_disable();
> > > > > > > > 	ret = wait_for_atomic(COND, 50);
> > > > > > > > 
> > > > > > > > 	preempt_enable();
> > > > > > > > 
> > > > > > > > out:
> > > > > > > > 	mutex_unlock(&uncore->i915->sb_lock);
> > > > > > > > 	return status ? status : ret;
> > > > > > > > #undef COND
> > > > > > > > }
> > > > > > > > 
> > > > > > > > ---------------------------------------------------------
> > > > > > > > 
> > > > > > > > If you try skl_pcode_try_request() for 180 seconds in skl_pcode_request(),
> > > > > > > > and the first "intel_uncore_read_fw(uncore, GEN6_PCODE_MAILBOX) &
> > > > > > > > GEN6_PCODE_READY)" call in __snb_pcode_rw() that skl_pcode_try_request()
> > > > > > > > invokes always fails. if then it does not make sense to me why this patch
> > > > > > > > fixes it by just waiting 10 seconds.This is because if it was called with
> > > > > > > > the flow described above, 180 seconds is longer than 10 seconds, so the
> > > > > > > > scenario you mentioned is also covered in the existing code.
> > > > > > > > 
> > > > > > > > To describe in more detail the second scenario I previously commented on:
> > > > > > > > skl_pcode_request() tries skl_pcode_try_request() for 180 seconds
> > > > > > > >   1) In skl_pcode_try_request(), the GEN6_PCODE_MAILBOX register bit is not
> > > > > > > > BUSY, so the value is written to the GEN6_PCODE_DATA1 register.
> > > > > > > >   2) skl_pcode_try_request() returns -ETIMEDOUT value because the operation
> > > > > > > > of 1) does not complete within 500us.
> > > > > > > >   3) Scenario in which the GEN6_PCODE_MAILBOX register bit is checked as BUSY
> > > > > > > > and returns -EAGAIN in the last call of skl_pcode_try_request() invoked by
> > > > > > > > skl_pcode_request()
> > > > > > > > 
> > > > > > > > If the reason why this problem occurred is because of this scenario,
> > > > > > > > shouldn't there be an attempt to increase fast_timeout_us used as an
> > > > > > > > argument of __snb_pcode_rw() to 500us or more when skl_pcode_try_request()
> > > > > > > > returns -ETIMEDOUT?
> > > > > > > > 
> > > > > > > > Br,
> > > > > > > > G.G.
