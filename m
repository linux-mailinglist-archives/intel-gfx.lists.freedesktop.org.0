Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BCA1CA950
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 13:13:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98346EB0C;
	Fri,  8 May 2020 11:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DECBB6EB0C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 11:13:15 +0000 (UTC)
IronPort-SDR: O3QWhLJK3mFwZ87eg5C7j/mQGLdtOlvD89DJ4DbP+ZPlCJJ3gbJ1LViJupcMcfvW9alL4QDGM2
 XYGo5IqBcnfQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 04:13:15 -0700
IronPort-SDR: /iRS0/I4TK2HPlakeyX6PFCkQsLxgxTU5PBiWzmGviVZ7itnzK+MiLVP3bROTqv+M41O5h+W5N
 5blqBrHvAH5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,367,1583222400"; d="scan'208";a="339685866"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 08 May 2020 04:13:15 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3B8E75C1DC1; Fri,  8 May 2020 14:11:06 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158893259277.11903.5165216768500522569@build.alporthouse.com>
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
 <87lfm2ycj2.fsf@gaia.fi.intel.com>
 <158893259277.11903.5165216768500522569@build.alporthouse.com>
Date: Fri, 08 May 2020 14:11:06 +0300
Message-ID: <87d07ey94l.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2020-05-08 10:57:37)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > While we ordinarily do not skip submit-fences due to the accompanying
>> > hook that we want to callback on execution, a submit-fence on the same
>> > timeline is meaningless.
>> >
>> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/i915_request.c | 3 +++
>> >  1 file changed, 3 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
>> > index 589739bfee25..be2ce9065a29 100644
>> > --- a/drivers/gpu/drm/i915/i915_request.c
>> > +++ b/drivers/gpu/drm/i915/i915_request.c
>> > @@ -1242,6 +1242,9 @@ i915_request_await_execution(struct i915_request *rq,
>> >                       continue;
>> >               }
>> >  
>> > +             if (fence->context == rq->fence.context)
>> > +                     continue;
>> > +
>> >               /*
>> >                * We don't squash repeated fence dependencies here as we
>> >                * want to run our callback in all cases.
>> 
>> The comment in here makes me nervous. Is this skipping on same context
>> other than squashing?
>
> The hooks we have only apply between timelines, so skipping isn't an
> issue. Suppressing the wait ensures that
>
> syncobj-future-submit-past:
> 	I915_EXEC_FENCE_WAIT |
> 	I915_EXEC_FENCE_WAIT_SUBMIT |
> 	I915_EXEC_FENCE_SIGNAL
>
> is a no-op. That is if you declare that request should wait for itself
> to be submitted before it is submitted, we correctly conclude that is
> degenerate and a no-op. We can generalise that to realise that waiting for
> any fence along the same timeline to be submitted before we are
> submitted is guaranteed by the timeline itself, and so all are no-ops.

The last sentence nails it.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
