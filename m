Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4C222B7D4
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jul 2020 22:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DBE86E85B;
	Thu, 23 Jul 2020 20:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA636E85B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 20:32:54 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id e22so5457898edq.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 13:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ThosFvJgbxSKEBH5L4F7aAfLvMdHb6fnP4ZWXkPJpOs=;
 b=sLTIPeVYxX29UV2klHsqSgBBWMfDbuxDks2Mu2yYfpKdtaToDJx7bY4HoHjPSLVSS6
 WrZbxGvTymyjZnp1v0K7HjQ0sg58Bke+dMs3qrFnohTL1ipI+oM3AtELKz7o13XWREGj
 L9zHiElBTFvWWUAdXAZTtIIf9q+YnTS6SATR/oFzxbwBl4HHozCtlchiIO4XjLCoT+Lv
 qvSTZz6YqWKYrElNJQIQ2rAIXubUj8zLUe/oBoCnbJxK6euaVYi19u2uP7KU9yvfQOib
 Ft+wbwb52SK3aQdlEUHT/dxO6AwkRc7v9gMWMFHPBTFUdJkfEYN5aCPaqJbQgYdVyiW6
 WkUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ThosFvJgbxSKEBH5L4F7aAfLvMdHb6fnP4ZWXkPJpOs=;
 b=R3Z6ni7+W2L7fkpkQ6iB1A8/r4MCI02wzgk14so3q44YBG6wPLWCpbutDIT+CMI5Io
 EEOnyXmenslyR1K0rJtM6OHvZJ/b1xiv/yCL7VeR4ylSn7CCyuf7H/thlfrBwaAaPAB4
 Ca4aqP34XdjFxel6qq3T14l8PEsld5pXQx9+4cPmyucdNfO1YEaaLDQVcQDZKpGx/OvW
 ZJqVied3QXxLj1Y3yiA4VQucTtsjrT+0HdCtaKii5kkGS4SANuf58nrHWxjnrA3szreJ
 D/nF/Gn77+EWDcui6pQl4j75c/iSm62sj5iuZnVuMQ2XotmzjEee4z79cMFeIUNzwN/N
 odIw==
X-Gm-Message-State: AOAM533/aY6unsDGQS1hyC9f6hsCiGRkS/cimplr2h33uBOh0+TVRN6J
 7IkKFghUP3ueDHx9uAgdaIHsqSUxBg8AADWipxY=
X-Google-Smtp-Source: ABdhPJwT4akJlta0cpXrndXYuGhos6OCCW3FQ5NPfPZmL8Lxx0adBzqAev6FmcoXPTND4B5mNbVtIOv8MhT9PVcs0KU=
X-Received: by 2002:a50:fa07:: with SMTP id b7mr5780110edq.298.1595536372819; 
 Thu, 23 Jul 2020 13:32:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
From: Dave Airlie <airlied@gmail.com>
Date: Fri, 24 Jul 2020 06:32:41 +1000
Message-ID: <CAPM=9txAqRB=+DZ4To5911Bx_ZgiTSUGFaHR86YEXm6w+pzHyA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 01/66] drm/i915: Reduce i915_request.lock
 contention for i915_request_wait
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I've got a 66 patch series here, does it have a cover letter I missed?

Does it have a what is the goal of this series? Does it tell the
reviewer where things are headed and why this is a good idea from a
high level.

The problem with these series is they are impossible to review from a
WTF does it do, and it forces people to review at a patch level, but
the high level concepts and implications go unmissed.

There is no world where this will be landing like this in my tree.

Dave.

On Wed, 15 Jul 2020 at 21:52, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Currently, we use i915_request_completed() directly in
> i915_request_wait() and follow up with a manual invocation of
> dma_fence_signal(). This appears to cause a large number of contentions
> on i915_request.lock as when the process is woken up after the fence is
> signaled by an interrupt, we will then try and call dma_fence_signal()
> ourselves while the signaler is still holding the lock.
> dma_fence_is_signaled() has the benefit of checking the
> DMA_FENCE_FLAG_SIGNALED_BIT prior to calling dma_fence_signal() and so
> avoids most of that contention.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_request.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 0b2fe55e6194..bb4eb1a8780e 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1640,7 +1640,7 @@ static bool busywait_stop(unsigned long timeout, unsigned int cpu)
>         return this_cpu != cpu;
>  }
>
> -static bool __i915_spin_request(const struct i915_request * const rq, int state)
> +static bool __i915_spin_request(struct i915_request * const rq, int state)
>  {
>         unsigned long timeout_ns;
>         unsigned int cpu;
> @@ -1673,7 +1673,7 @@ static bool __i915_spin_request(const struct i915_request * const rq, int state)
>         timeout_ns = READ_ONCE(rq->engine->props.max_busywait_duration_ns);
>         timeout_ns += local_clock_ns(&cpu);
>         do {
> -               if (i915_request_completed(rq))
> +               if (dma_fence_is_signaled(&rq->fence))
>                         return true;
>
>                 if (signal_pending_state(state, current))
> @@ -1766,10 +1766,8 @@ long i915_request_wait(struct i915_request *rq,
>          * duration, which we currently lack.
>          */
>         if (IS_ACTIVE(CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT) &&
> -           __i915_spin_request(rq, state)) {
> -               dma_fence_signal(&rq->fence);
> +           __i915_spin_request(rq, state))
>                 goto out;
> -       }
>
>         /*
>          * This client is about to stall waiting for the GPU. In many cases
> @@ -1796,10 +1794,8 @@ long i915_request_wait(struct i915_request *rq,
>         for (;;) {
>                 set_current_state(state);
>
> -               if (i915_request_completed(rq)) {
> -                       dma_fence_signal(&rq->fence);
> +               if (dma_fence_is_signaled(&rq->fence))
>                         break;
> -               }
>
>                 intel_engine_flush_submission(rq->engine);
>
> --
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
