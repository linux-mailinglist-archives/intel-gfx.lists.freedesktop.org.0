Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B741C5A02E4
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 22:37:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3FF2C7F03;
	Wed, 24 Aug 2022 20:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C08110FAC5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 21:15:36 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id w18so11300487qki.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 14:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=q3nQrPdguTPd9O27TrXIDlIOM870kd0JIIJ6PmuluuA=;
 b=EWbe276mLSentV4YG5+OF01S/AYfrw8bSuiIjCz9JxdVoAMWieLstljhcHi8ppkrZH
 0ZJzmDPrKzWaNn8/+QNNSU4uoF6Nsa757XNkCRr2Dzr3aPYq2VL+FnJiPHzAnGoFRT9U
 RtspYledwR/VFX8/OmTyHeSIiQvNYg/9Yqt1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=q3nQrPdguTPd9O27TrXIDlIOM870kd0JIIJ6PmuluuA=;
 b=BLV5a06rRvl5FFC6r7wT9vrk3sRvM7oUzLNqeZaSFycaDLSgbq6qGSy18l4/bJuZ4l
 6VeKqtUb6GDSbGqyQOGN+slGfiYvyYJmtinutBiuTsKiRLEd/NYBHANgWIbWKC5cQf2V
 3NA70pRfWw05+hmASC0rLx3mknbIHeSEuUj7EVO9L6Cv2EwJ0Ip8M4tH/0vHPLuSLJ2K
 xevRrBfvFKYC243CUdTnoQm4197Wl/SYqJFJQhbv9idVRjbbGwoPLb3hFpVTo0FIwKw3
 WvB/74YpPBYEETwZbBvsjlmk1asKd7jSCwbLzuPoH7MG4Wsb8HelDkxEBhT6bmtRQ/05
 JV1A==
X-Gm-Message-State: ACgBeo2IKzhc8S8Bk+Q2pZzdygpMC2JCj4AydFDQulfLn/CJ91ysowSC
 7VjMgJeE8WMMlee+EFTSSANG2XOQ/eUOQK7G+vafMg==
X-Google-Smtp-Source: AA6agR5JR9EDbDOUdkSQjf4lC4HXNM91jKsevFO4ZtbMfuCNmRN4//uP9CXgfxdVuL5rqsHBzbD2lckHCpgv1GfPPyA=
X-Received: by 2002:a05:620a:b1c:b0:6ba:f6ce:85fe with SMTP id
 t28-20020a05620a0b1c00b006baf6ce85femr17548136qkg.195.1661289335506; Tue, 23
 Aug 2022 14:15:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220818174205.2412730-1-justonli@chromium.org>
 <3aeae2e6-ebe3-5241-bfa1-ee36a0d5ec94@intel.com>
In-Reply-To: <3aeae2e6-ebe3-5241-bfa1-ee36a0d5ec94@intel.com>
From: Juston Li <justonli@chromium.org>
Date: Tue, 23 Aug 2022 14:15:23 -0700
Message-ID: <CAKhQNHHoC3e6NjpjRovHnTCe88fiRXU_U08Rw1k+-3pcB3sDYg@mail.gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/pxp: don't start pxp without
 mei_pxp bind
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
Cc: intel-gfx@lists.freedesktop.org, alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 19, 2022 at 4:53 AM Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>
> On 18.08.2022 19:42, Juston Li wrote:
> > pxp will not start correctly until after mei_pxp bind completes and
> > intel_pxp_init_hw() is called.
> > Wait for the bind to complete before proceeding with startup.
> >
> > This fixes a race condition during bootup where we observed a small
> > window for pxp commands to be sent, starting pxp before mei_pxp bind
> > completed.
> >
> > Changes since v2:
> > - wait for pxp_component to bind instead of returning -EAGAIN (Daniele)
> >
> > Changes since v1:
> > - check pxp_component instead of pxp_component_added (Daniele)
> > - pxp_component needs tee_mutex (Daniele)
> > - return -EAGAIN so caller knows to retry (Daniele)
> >
> > Signed-off-by: Juston Li <justonli@chromium.org>
>
> In typical usage of component framework driver postpones initialization
> till component is bound. In such case checking/waiting for component as
> in this patch is not necessary and the code is more straightforward.
> I wonder how it behaves on component unbind.
>
> Anyway:
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Thanks Andrzej!

Any other comments Daniele?
Otherwise, need some help from someone to merge this :)

Thanks
Juston

> Regards
> Andrzej
>
>
> > ---
> >   drivers/gpu/drm/i915/pxp/intel_pxp.c | 15 +++++++++++++++
> >   1 file changed, 15 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > index 15311eaed848..17109c513259 100644
> > --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > @@ -176,6 +176,18 @@ static void pxp_queue_termination(struct intel_pxp *pxp)
> >       spin_unlock_irq(&gt->irq_lock);
> >   }
> >
> > +static bool pxp_component_bound(struct intel_pxp *pxp)
> > +{
> > +     bool bound = false;
> > +
> > +     mutex_lock(&pxp->tee_mutex);
> > +     if (pxp->pxp_component)
> > +             bound = true;
> > +     mutex_unlock(&pxp->tee_mutex);
> > +
> > +     return bound;
> > +}
> > +
> >   /*
> >    * the arb session is restarted from the irq work when we receive the
> >    * termination completion interrupt
> > @@ -187,6 +199,9 @@ int intel_pxp_start(struct intel_pxp *pxp)
> >       if (!intel_pxp_is_enabled(pxp))
> >               return -ENODEV;
> >
> > +     if (wait_for(pxp_component_bound(pxp), 250))
> > +             return -ENXIO;
> > +
> >       mutex_lock(&pxp->arb_mutex);
> >
> >       if (pxp->arb_is_valid)
>
