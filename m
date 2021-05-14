Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 507C0380FA6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 20:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59ABF6F40A;
	Fri, 14 May 2021 18:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 872536F406
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 18:19:27 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id v5so24594948edc.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 11:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xQAcmm0gNblP9FomD04PgmLgubYaVV0e48xZxC9anTE=;
 b=py6NkYBM//RW43ozdVdCsjiQrtS40/CwqL8VHHWxbU+vlGgTo1Auo9bi+TwVYeArLc
 jDOVWdK3c/3fOAETyDWYy5p51FoMIi9/UNw5NjwWQpZ+bSJQ2NGT4lu2gGIvhonXSNs0
 Jx3zNF8SUKvwkAih/RlUTVJZKMR471YgGu9x8xGx01r3BOhjNCg7Cak9SjOhjUWo8mAO
 6QKBtvZQtCG93HD1OjJM6XRSOL+Jw4N6oVyXfmlmMZrk2EPwHxyNCUA6gu7vQuW5js0R
 UFIsa+/tFwuCfuRoqB4GHAN+wyVXjR+GxE8XRWAK45tlSg5pXGBRs7dD0XAOs6fuHovd
 u6Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xQAcmm0gNblP9FomD04PgmLgubYaVV0e48xZxC9anTE=;
 b=m8ExlwP+YhjxOKwewlPdfoZ2CjpPZtQ5eP0UjxrVETRi98kZ93yGUbVN2WgSNEpvn7
 0K9hkvcklPP1b7smrdPA8maqJhpg1xDIsvx6bvhK+aXbe6vRzp5F8Rk5Sde1atYjFyMr
 CWGgRM9y1Ai1gp7IRchrSFM1osZedAyJh6GJcuhX1Wuj/8Mn8X06dC78Y9qxRYi7So7I
 UQX8NB2SDwqUh55WYVGKksF3VZ2aJO+v7zdbDP/IwLhh61NpVauNF506yw64u0HEo7ln
 kfAo+xbjixE0ffSughL8COyGItuF+RLfO9WLgYXJaGMZsOr1x4raBwffk1vWgUFYoCGs
 YOng==
X-Gm-Message-State: AOAM533TaeW6VykCMv5u8Fom7symbEmEzmYxg1rfgK8Qtm4xaOVo7wyQ
 DqNNgtAVN5mY3Ab2rlUmlYCSkuiMP8ZoywIEB+hE8g==
X-Google-Smtp-Source: ABdhPJysFoewttlsttQUVAIXIa2kZoWiDXboq7E2ciSwj5bTZy5lLtzMjlA4VYTImkZo2k8fDdGYwMPzLePaWnEUeIc=
X-Received: by 2002:aa7:db93:: with SMTP id u19mr15884855edt.227.1621016366070; 
 Fri, 14 May 2021 11:19:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210503155748.1961781-1-jason@jlekstrand.net>
 <20210503155748.1961781-11-jason@jlekstrand.net>
 <YJEMJ0TF6vLmPo5d@phenom.ffwll.local>
In-Reply-To: <YJEMJ0TF6vLmPo5d@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 14 May 2021 13:19:14 -0500
Message-ID: <CAOFGe97rHt90pqDnR+QdGsNTeeRJfKDftQKdpAf=hdTtQLj8kw@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 10/27] drm/i915/gem: Remove engine
 auto-magic with FENCE_SUBMIT
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 4, 2021 at 3:56 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Mon, May 03, 2021 at 10:57:31AM -0500, Jason Ekstrand wrote:
> > Even though FENCE_SUBMIT is only documented to wait until the request in
> > the in-fence starts instead of waiting until it completes, it has a bit
> > more magic than that.  If FENCE_SUBMIT is used to submit something to a
> > balanced engine, we would wait to assign engines until the primary
> > request was ready to start and then attempt to assign it to a different
> > engine than the primary.  There is an IGT test which exercises this by
> > submitting a primary batch to a specific VCS and then using FENCE_SUBMIT
> > to submit a secondary which can run on any VCS and have i915 figure out
> > which VCS to run it on such that they can run in parallel.
> >
> > However, this functionality has never been used in the real world.  The
> > media driver (the only user of FENCE_SUBMIT) always picks exactly two
> > physical engines to bond and never asks us to pick which to use.
>
> Maybe reference the specific igt you're break (and removing in the igt
> series to match this) here. Just for the record and all that.

Done.

> -Daniel
>
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c  |  2 +-
> >  drivers/gpu/drm/i915/gt/intel_engine_types.h    |  7 -------
> >  .../drm/i915/gt/intel_execlists_submission.c    | 17 -----------------
> >  3 files changed, 1 insertion(+), 25 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index d640bba6ad9ab..efb2fa3522a42 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -3474,7 +3474,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
> >               if (args->flags & I915_EXEC_FENCE_SUBMIT)
> >                       err = i915_request_await_execution(eb.request,
> >                                                          in_fence,
> > -                                                        eb.engine->bond_execute);
> > +                                                        NULL);
> >               else
> >                       err = i915_request_await_dma_fence(eb.request,
> >                                                          in_fence);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index 883bafc449024..68cfe5080325c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -446,13 +446,6 @@ struct intel_engine_cs {
> >        */
> >       void            (*submit_request)(struct i915_request *rq);
> >
> > -     /*
> > -      * Called on signaling of a SUBMIT_FENCE, passing along the signaling
> > -      * request down to the bonded pairs.
> > -      */
> > -     void            (*bond_execute)(struct i915_request *rq,
> > -                                     struct dma_fence *signal);
> > -
> >       /*
> >        * Call when the priority on a request has changed and it and its
> >        * dependencies may need rescheduling. Note the request itself may
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 14378b28169b7..635d6d2494d26 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -3547,22 +3547,6 @@ static void virtual_submit_request(struct i915_request *rq)
> >       spin_unlock_irqrestore(&ve->base.active.lock, flags);
> >  }
> >
> > -static void
> > -virtual_bond_execute(struct i915_request *rq, struct dma_fence *signal)
> > -{
> > -     intel_engine_mask_t allowed, exec;
> > -
> > -     allowed = ~to_request(signal)->engine->mask;
> > -
> > -     /* Restrict the bonded request to run on only the available engines */
> > -     exec = READ_ONCE(rq->execution_mask);
> > -     while (!try_cmpxchg(&rq->execution_mask, &exec, exec & allowed))
> > -             ;
> > -
> > -     /* Prevent the master from being re-run on the bonded engines */
> > -     to_request(signal)->execution_mask &= ~allowed;
> > -}
> > -
> >  struct intel_context *
> >  intel_execlists_create_virtual(struct intel_engine_cs **siblings,
> >                              unsigned int count)
> > @@ -3616,7 +3600,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
> >
> >       ve->base.schedule = i915_schedule;
> >       ve->base.submit_request = virtual_submit_request;
> > -     ve->base.bond_execute = virtual_bond_execute;
> >
> >       INIT_LIST_HEAD(virtual_queue(ve));
> >       ve->base.execlists.queue_priority_hint = INT_MIN;
> > --
> > 2.31.1
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
