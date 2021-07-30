Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD663DB017
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 02:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3EC6EE9C;
	Fri, 30 Jul 2021 00:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4D706EE9B;
 Fri, 30 Jul 2021 00:00:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="276777404"
X-IronPort-AV: E=Sophos;i="5.84,280,1620716400"; d="scan'208";a="276777404"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 17:00:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,280,1620716400"; d="scan'208";a="567403979"
Received: from dut151-iclu.fm.intel.com ([10.105.23.43])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 17:00:12 -0700
Date: Fri, 30 Jul 2021 00:00:10 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20210730000010.GA58337@DUT151-ICLU.fm.intel.com>
References: <20210727182057.78409-1-matthew.brost@intel.com>
 <20210727182057.78409-2-matthew.brost@intel.com>
 <be3caf10-93d7-bc72-21bc-00d7e4d57630@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be3caf10-93d7-bc72-21bc-00d7e4d57630@intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/1] i915/gem_scheduler:
 Ensure submission order in manycontexts
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 29, 2021 at 04:54:08PM -0700, John Harrison wrote:
> On 7/27/2021 11:20, Matthew Brost wrote:
> > With GuC submission contexts can get reordered (compared to submission
> > order), if contexts get reordered the sequential nature of the batches
> > releasing the next batch's semaphore in function timesliceN() get broken
> > resulting in the test taking much longer than if should. e.g. Every
> > contexts needs to be timesliced to release the next batch. Corking the
> > first submission until all the batches have been submitted should ensure
> > submission order.
> > 
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   tests/i915/gem_exec_schedule.c | 16 +++++++++++++++-
> >   1 file changed, 15 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
> > index f03842478..41f2591a5 100644
> > --- a/tests/i915/gem_exec_schedule.c
> > +++ b/tests/i915/gem_exec_schedule.c
> > @@ -597,12 +597,13 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
> >   	struct drm_i915_gem_execbuffer2 execbuf  = {
> >   		.buffers_ptr = to_user_pointer(&obj),
> >   		.buffer_count = 1,
> > -		.flags = engine | I915_EXEC_FENCE_OUT,
> > +		.flags = engine | I915_EXEC_FENCE_OUT | I915_EXEC_FENCE_SUBMIT,
> >   	};
> >   	uint32_t *result =
> >   		gem_mmap__device_coherent(i915, obj.handle, 0, sz, PROT_READ);
> >   	const intel_ctx_t *ctx;
> >   	int fence[count];
> > +	IGT_CORK_FENCE(cork);
> >   	/*
> >   	 * Create a pair of interlocking batches, that ping pong
> > @@ -614,6 +615,17 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
> >   	igt_require(gem_scheduler_has_timeslicing(i915));
> >   	igt_require(intel_gen(intel_get_drm_devid(i915)) >= 8);
> > +	/*
> > +	 * With GuC submission contexts can get reordered (compared to
> > +	 * submission order), if contexts get reordered the sequential
> > +	 * nature of the batches releasing the next batch's semaphore gets
> > +	 * broken resulting in the test taking much longer than it should (e.g.
> > +	 * every context needs to be timesliced to release the next batch).
> > +	 * Corking the first submission until all batches have been
> > +	 * submitted should ensure submission order.
> > +	 */
> > +	execbuf.rsvd2 = igt_cork_plug(&cork, i915);
> > +
> >   	/* No coupling between requests; free to timeslice */
> >   	for (int i = 0; i < count; i++) {
> > @@ -624,8 +636,10 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
> >   		intel_ctx_destroy(i915, ctx);
> >   		fence[i] = execbuf.rsvd2 >> 32;
> > +		execbuf.rsvd2 >>= 32;
> This means you are passing fence_out[A] as fenc_in[B]? I.e. this patch is
> also changing the behaviour to make each batch dependent upon the previous

This is a submission fence, it just ensures they get submitted in order.
Corking the first request + the fence, ensures all the requests get
submitted basically at the same time compared to execbuf IOCTL time
without it.

> one. That change is not mentioned in the new comment. It is also the exact

Yea, I could explain this better. Will fix.

Matt

> opposite of the comment immediately above the loop - 'No coupling between
> requests'.
> 
> John.
> 
> 
> >   	}
> > +	igt_cork_unplug(&cork);
> >   	gem_sync(i915, obj.handle);
> >   	gem_close(i915, obj.handle);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
