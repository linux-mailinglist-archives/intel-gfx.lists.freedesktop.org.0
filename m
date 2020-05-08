Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9131CA7F5
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 12:10:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A2F6E153;
	Fri,  8 May 2020 10:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 359E86E153
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 10:10:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21148913-1500050 for multiple; Fri, 08 May 2020 11:09:55 +0100
MIME-Version: 1.0
In-Reply-To: <87lfm2ycj2.fsf@gaia.fi.intel.com>
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
 <87lfm2ycj2.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158893259277.11903.5165216768500522569@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 08 May 2020 11:09:52 +0100
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Ignore submit-fences on the
 same timeline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-05-08 10:57:37)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > While we ordinarily do not skip submit-fences due to the accompanying
> > hook that we want to callback on execution, a submit-fence on the same
> > timeline is meaningless.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_request.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 589739bfee25..be2ce9065a29 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -1242,6 +1242,9 @@ i915_request_await_execution(struct i915_request *rq,
> >                       continue;
> >               }
> >  
> > +             if (fence->context == rq->fence.context)
> > +                     continue;
> > +
> >               /*
> >                * We don't squash repeated fence dependencies here as we
> >                * want to run our callback in all cases.
> 
> The comment in here makes me nervous. Is this skipping on same context
> other than squashing?

The hooks we have only apply between timelines, so skipping isn't an
issue. Suppressing the wait ensures that

syncobj-future-submit-past:
	I915_EXEC_FENCE_WAIT |
	I915_EXEC_FENCE_WAIT_SUBMIT |
	I915_EXEC_FENCE_SIGNAL

is a no-op. That is if you declare that request should wait for itself
to be submitted before it is submitted, we correctly conclude that is
degenerate and a no-op. We can generalise that to realise that waiting for
any fence along the same timeline to be submitted before we are
submitted is guaranteed by the timeline itself, and so all are no-ops.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
