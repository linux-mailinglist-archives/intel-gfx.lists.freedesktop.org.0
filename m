Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A13423AE09
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 22:18:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50FF6E321;
	Mon,  3 Aug 2020 20:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC5C6E0DC
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 20:17:58 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id c19so719101wmd.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Aug 2020 13:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wMtWe8HLd6qhGo0uyNBhMlZkLAgDLyE6yKYxPU9nn14=;
 b=RhZiLPJRHXyOnx+U2VYZmcRIja9AItS2UQD+LQHX2A4ETJDMs4P3kigTqzlhK2x0y3
 VjKzL/H1T7BjZyWoj/IsTUmk/ufZZ3mHZbPa7ohfZbRfC0rcqUCvzkr6Si2+ZCHhdWxr
 Ufu+PRBOMOgigKDXW7bnnuF0w4YkeHWYRZNeqpaDGiLgulw1BDLlRVLK/wUSd7C24oYB
 iZ1P3XKNgJM0wnUjtV3O3UygsmfrvPMkyUt02Ucrcqt7900VmFIbtd4FbuRlXd2jwH4x
 vprDtuhtaeJU/VoogbeBxdEJJksJCzaSjmgxs3ViLU/AsnGHBoILn6LR9FPhG0sOuazM
 HLmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wMtWe8HLd6qhGo0uyNBhMlZkLAgDLyE6yKYxPU9nn14=;
 b=cl532CbDtaNEvAq3nB+A4XexzwMNAqS61hmONmYTQIj/OF+Y+weZwXT+RF9k+kVv1k
 LT5t/6h688RvCr3P4aac45Kr8xmNbgdT3mubAwefTn8osOAh1jsGMdGgiYRPZ/jBKqCo
 GZNm1wu+/ODVnzo9FExBgAK7zgPyKB2ftV0E2Ud355eRmPSnjYerAhC+vMQmTlMM7K5E
 2/ZomrXPxp54ZRaLqOaGvUlRnHbQnB9b0kVbYAhrSlVJkQx86Pi8sQTo4v2G9/nXF0ry
 GyZ2L23pForSkY+RnYJRZ27PRh6Wr5Gtww19pHBNbywx4fZz9q8jXSQeMsN2/opVPOPj
 lGhQ==
X-Gm-Message-State: AOAM531Rl6N0hnfSQwAQWghFX9K3sClZPCzcnGEc2rYh7/1Q0ymSCVAG
 SKFT57v+Pb0K3nbhUtBCSiZyjchtzizVBok2z6RnXWsu
X-Google-Smtp-Source: ABdhPJzGWVbDEEim3BKO1WnIy/VdT5/yItpHCJ8I+NsGGUF7UCuiCsgCz8RvFbDGnhpBdqd/YVVOiuw3PDRkdIh1uB4=
X-Received: by 2002:a1c:b785:: with SMTP id h127mr831347wmf.100.1596485876739; 
 Mon, 03 Aug 2020 13:17:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-35-matthew.auld@intel.com>
 <CAKi4VAJORkqgs=6EaxiHe2nmXVaYT-1EqMCXKGkbc0aH1VYbCQ@mail.gmail.com>
In-Reply-To: <CAKi4VAJORkqgs=6EaxiHe2nmXVaYT-1EqMCXKGkbc0aH1VYbCQ@mail.gmail.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Mon, 3 Aug 2020 13:17:44 -0700
Message-ID: <CAKi4VAJFPh7+2D84rwpuZS9N0B4hrgYb8AiqK4Aqngm9TmhyCg@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [RFC 34/60] drm/i915: introduce kernel
 blitter_context
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Chris Wilson

On Mon, Aug 3, 2020 at 12:59 PM Lucas De Marchi
<lucas.de.marchi@gmail.com> wrote:
>
> On Fri, Jul 10, 2020 at 5:00 AM Matthew Auld <matthew.auld@intel.com> wrote:
> >
> > We may be without a context to perform various internal blitter
> > operations, for example when performing object migration. Piggybacking
> > off the kernel_context is probably a bad idea, since it has other uses.
> >
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 30 +++++++++++++++++---
> >  drivers/gpu/drm/i915/gt/intel_engine_types.h |  1 +
> >  2 files changed, 27 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index dd1a42c4d344..1df94e82550f 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -792,6 +792,7 @@ create_kernel_context(struct intel_engine_cs *engine)
> >         int err;
> >
> >         ce = intel_context_create(engine);
> > +
> >         if (IS_ERR(ce))
> >                 return ce;
> >
> > @@ -845,16 +846,32 @@ static int engine_init_common(struct intel_engine_cs *engine)
> >                 return PTR_ERR(ce);
> >
> >         ret = measure_breadcrumb_dw(ce);
> > -       if (ret < 0)
> > -               goto err_context;
> > +       if (ret < 0) {
> > +               intel_context_put(ce);
>
> I think it's easier to follow the code if the error handling is in one
> place. Since you have to put the context.
> And since create_kernel_context() pins it, don't we have to
> intel_context_unpin() like we are doing
> in intel_engine_cleanup_common()?  Which would also mean to probably
> factor out a `destroy_kernel_context()`
> to always do it, and call from here and from intel_engine_cleanup_common().

We actually had a destroy_kernel_context() and the unpin, but that got dropped
by e6ba76480299 ("drm/i915: Remove i915->kernel_context") .


Wouldn't we hit a GEM_BUG_ON() in the destroy function if we don't unpin it ?

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
