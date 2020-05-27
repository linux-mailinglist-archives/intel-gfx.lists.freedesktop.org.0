Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 579341E3E8B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 12:05:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA689897E8;
	Wed, 27 May 2020 10:05:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE9C8897E8
 for <Intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 10:05:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21307375-1500050 for multiple; Wed, 27 May 2020 11:05:17 +0100
MIME-Version: 1.0
In-Reply-To: <34f248f6-264b-e5ae-e084-ce4ab402457b@linux.intel.com>
References: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
 <159057120157.30979.18380265534198859105@build.alporthouse.com>
 <34f248f6-264b-e5ae-e084-ce4ab402457b@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <159057391682.30979.18092667555874979619@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 27 May 2020 11:05:16 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Special handling for bonded
 requests
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
Cc: Xiaogang Li <xiaogang.li@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-05-27 10:36:31)
> 
> On 27/05/2020 10:20, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-05-27 09:53:22)
> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>
> >> Our generic mechanism for specifying aligned request start,
> >> I915_EXEC_FENCE_SUBMIT, has a bit too relaxed rules when it comes to the
> >> actual use case of media scalability on Tigerlake.
> >>
> >> While the submit fence can provide the aligned start, the  actual media
> >> pipeline expects that execution remains in lockstep from then onwards.
> >> Otherwise the hardware cannot handle well one of the pair getting
> >> preempted leading to GPU hangs and corrupted media playback.
> >>
> >> This puts us in a difficult position where the only visible solution,
> >> which does not involve adding new uapi, is to give more meaning to the
> >> generic submit fence. At least when used between the video engines.
> >>
> >> The special semantics this patch applies in that case are two fold. First
> >> is that both of the aligned pairs will be marked as non-preemptable and
> >> second is ensuring both are not sharing ELSP ports with any other context.
> >>
> >> Non-preemptable property will ensure that once the start has been aligned
> >> the requests remain executing until completion.
> >>
> >> Single port ELSP property will ensure there are no possible inversions
> >> between different independent pairs of aligned requests.
> > 
> > Nak.
> > 
> >> Going forward we can think of introducing new uapi to request this
> >> behaviour as a separate, more explicit flag, and at that point retire this
> >> semi-generic special handling.
> > 
> > As CI will say, such behaviour will already need a new flag. Forcing
> > no-preemption should be a privileged flag, so I would expect some
> > acknowledge that this is a HW problem that we have to workaround.
> 
> I don't know how hw exactly works so from my side it's only empirical.
> 
> I agree new flag is needed but we also need a fix ASAP for TGL. And I 
> don't think we can add new uapi in a reasonable time frame here. We 
> would need the ctx set_parallel extension with a dont-preempt flag and 
> multi-batch execbuf. And a lot of work in media-driver which will not be 
> ready for TGL. I don't think a flag at the I915_EXEC_FENCE_SUBMIT level 
> is a solution.

I'm going to say the starting point is to remove the
I915_ENGINE_HAS_PREEMPTION flag from vcs*. That way the tests that
require preemption will skip. Sadly that's the level of our current API.

> >> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >> Suggested-by: Xiaogang Li <xiaogang.li@intel.com>
> >> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> >> ---
> >>   drivers/gpu/drm/i915/gt/intel_context.h |  2 +-
> >>   drivers/gpu/drm/i915/gt/intel_lrc.c     | 46 +++++++++++++++++++++----
> >>   2 files changed, 41 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> >> index 07be021882cc..576d11c0cdd9 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> >> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> >> @@ -212,7 +212,7 @@ intel_context_force_single_submission(const struct intel_context *ce)
> >>   static inline void
> >>   intel_context_set_single_submission(struct intel_context *ce)
> >>   {
> >> -       __set_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ce->flags);
> >> +       set_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ce->flags);
> >>   }
> >>   
> >>   static inline bool
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >> index 3214a4ecc31a..88cf20fd92c8 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >> @@ -1734,8 +1734,7 @@ static void execlists_submit_ports(struct intel_engine_cs *engine)
> >>   
> >>   static bool ctx_single_port_submission(const struct intel_context *ce)
> >>   {
> >> -       return (IS_ENABLED(CONFIG_DRM_I915_GVT) &&
> >> -               intel_context_force_single_submission(ce));
> >> +       return intel_context_force_single_submission(ce);
> >>   }
> >>   
> >>   static bool can_merge_ctx(const struct intel_context *prev,
> >> @@ -4929,9 +4928,41 @@ static void execlists_park(struct intel_engine_cs *engine)
> >>          cancel_timer(&engine->execlists.preempt);
> >>   }
> >>   
> >> +static void
> >> +mark_bonded_pair(struct i915_request *rq, struct i915_request *signal)
> >> +{
> >> +       /*
> >> +        * Give (temporary) special meaning to a pair requests with requested
> >> +        * aligned start along the video engines.
> >> +        *
> >> +        * They should be non-preemptable and have all ELSP ports to themselves
> >> +        * to avoid any deadlocks caused by inversions.
> > 
> > This sentence needs expanding, because you are implying that this is an
> > issue we need to address in the code. If there is a deadlock resulting
> > from incorrect submission ordering, that is a bug in the code.
> 
> If we add no-preempt I think we have to have single elsp because there 
> is no ordering between unrelated pairs and then elsp inversion certainly 
> sounds like a deadlock.

You don't have a deadlock between unrelated pairs :)

> 
> ctx-A: vcs0 + vcs1
> ctx-B: vcs0 + vcs1
> 
> There is no ordering between A and B but we'd have to pick same port for 
> both pairs of A and B respectively. I don't see that we can do that 
> since all four submissions are async.
> 
> Regards,
> 
> Tvrtko
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
