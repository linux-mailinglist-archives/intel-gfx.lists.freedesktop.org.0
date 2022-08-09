Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B19058E3A9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 01:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7B9DC8BA;
	Tue,  9 Aug 2022 23:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A391DC884
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Aug 2022 23:20:33 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id y13so24732729ejp.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Aug 2022 16:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=co6IfSlxwLAAFbnEhNHrrF2swBiFqJ0cviPXQCFprhk=;
 b=kkaKpwbVCAVg55YoXcR7A4rNBLuVO+m9mmmX7FGiguHGUlG6/qrTQugFfFkP0tXamp
 uFsfKSTK5c+negY1uVrWxSPfUcoRaOUiP4NpykEj31IH4hknwY/sqREvT1JCX1g4yMm4
 ZSBDjQtF0drzKo/3PddcWcPq6YpubJ+lrZfsBS/9RnXdUWPOsz32BE5YOnB85lwyVW/+
 T5Srrt6XiEmvAVGffiwiyZc+GXpKOtMePAEDaOMxgrh3vNGjnalMqVbQGZDs5KPd2MtU
 Wdfzki0+ZqzMznCa+u6arG3FpNjh0BqEyDAvbLtRrwkeR8ge6ehDUkD9IQIgkGvL940z
 HU0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=co6IfSlxwLAAFbnEhNHrrF2swBiFqJ0cviPXQCFprhk=;
 b=p3yCWJFEtvxPZftt7oUosWzdWXujyww2NZ8WFBK/L/miA9yiRtxDUwzQ6sRkAzYnMM
 CsbSkcRY8o3k7jiZ4nc2c1z7Tz3W7Wb9ef0veOTmDgLNu9DI5z92fpLurRKyLUaiutc3
 GgBV881ka8Dy72q+wXZ5SkXcAtX1ovLrEmlFbxjB9iBDzVuIzSSAWknkcvdA2x43doqw
 D8aOC3XcurNgLq5Ap6W9eeQPxGHJu1B1tY8oyPKwammw9iB3JmnQ4rTBVsvC4utN5nmG
 l0zHu9rbOcECG/qC2+GcGg/EKa6RqZmfR2CoUCcMcQR9vTIb3D7HtPRUJ9XRw9hlO94k
 B0UQ==
X-Gm-Message-State: ACgBeo0ORfq+TiyXs+9UDkjowMP1j1Db/qY4FafE6w4mDpXl69Ek35XA
 tmj48fjyVxxv64Z29GVVHv2+9+O7egg/9HjzrSvSMg==
X-Google-Smtp-Source: AA6agR4zFOMvUK2YvkA10EaAKN0UMrTvveLlJTito6ddYYL7/8oazXSe+OOTvwN9ndOKCchhDqLIfVfF3y4vjFmUgys=
X-Received: by 2002:a17:907:2e01:b0:730:9ecc:cd28 with SMTP id
 ig1-20020a1709072e0100b007309ecccd28mr18285372ejc.360.1660087231894; Tue, 09
 Aug 2022 16:20:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220809225700.2002634-1-justonli@google.com>
 <281b60de-017b-0b86-d35e-ee7bc619b1db@intel.com>
In-Reply-To: <281b60de-017b-0b86-d35e-ee7bc619b1db@intel.com>
From: Juston Li <justonli@google.com>
Date: Tue, 9 Aug 2022 16:20:20 -0700
Message-ID: <CAJD9tbxbcuz5U3Uu6bdoa=H_zRZCC2b6vrJH8O-dfNGC_S3SeQ@mail.gmail.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: don't start pxp without
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

On Tue, Aug 9, 2022 at 4:10 PM Ceraolo Spurio, Daniele
<daniele.ceraolospurio@intel.com> wrote:
>
>
>
> On 8/9/2022 3:57 PM, Juston Li wrote:
> > pxp will not start correctly until after mei_pxp bind completes and
> > intel_pxp_init_hw() is called.
> >
> > Signed-off-by: Juston Li <justonli@google.com>
> > ---
> >   drivers/gpu/drm/i915/pxp/intel_pxp.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > index 15311eaed848..3ef9e4e1870b 100644
> > --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > @@ -184,7 +184,7 @@ int intel_pxp_start(struct intel_pxp *pxp)
> >   {
> >       int ret = 0;
> >
> > -     if (!intel_pxp_is_enabled(pxp))
> > +     if (!intel_pxp_is_enabled(pxp) || !pxp->pxp_component_added)
>
> pxp_component_added being true only indicates that we've called
> component_add and not if the component is currently bound. For checking
> the current state of the component you can look at the
> pxp->pxp_component pointer, which is set/cleared on component
> bind/unbind. Note that pxp_component has to be accessed under
> pxp->tee_mutex.
>
> Are you actually seeing a scenario where the user manages to submit
> before the bind is complete? the bind is async to i915, but I've always
> seen it complete before control was given to the user to start submitting.
>
> Daniele

Opps! I made a typo sending it out. Indeed when I tested it was with
pxp->component_add.
I did not have pxp->tee_mutex though so I'll add that too.

We moved initialization earlier so it does try to call pxp_start() before mei
finishes binding.

Thanks
Juston

>
> >               return -ENODEV;
> >
> >       mutex_lock(&pxp->arb_mutex);
>
