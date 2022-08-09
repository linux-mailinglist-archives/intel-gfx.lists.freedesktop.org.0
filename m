Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C576158E3C2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 01:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B9C1DD174;
	Tue,  9 Aug 2022 23:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA21DDD131
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Aug 2022 23:30:46 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id m4so24853592ejr.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Aug 2022 16:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=5+QIKoDBMfHtOcv5LiUf6ac5bXCxkMFJClX9P2ZeEYw=;
 b=oe6XV7es093YhJZLS53GOeMisbIuOY9BlpSOKfhUDikba+VUZ6EXpvAwwNIjQH1wJO
 u4GVyOXoWKUOqOTkTtW2UfmvsMpwrf2zBj6RLoheIOPtLf7282CsNN0anGTzYznLvXUB
 Iv9XDmAfIfUwTjmObxHpf7kucNNhca34bLR4dxOZM41wkwH82BAzFXvVQqivZiuW2Ew3
 sQf56X0BHbbKvbFTmuDZIRDO3KlTQ6PEHajW/WELe1SGULWMBHHnMfY4VJpb7YzSn+MZ
 HHtc4y0r476cYq8pGchvj9oRKIdqwnnNYkGYIxeJAeo9LtKKZ54RDqAGNxHQJhfh4fBI
 CwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=5+QIKoDBMfHtOcv5LiUf6ac5bXCxkMFJClX9P2ZeEYw=;
 b=DSV3cUmB4pvDhc6TfVXnVkXrzosMTnmfzYxzaNS+QcCFNBpQaDeIagqCUkixKLbual
 yFa+URciBS4pD4zF3QMjZ7/IZzG9ObB+SsSQlkTNxu5DFADLnn3ZoIMKWAk4bsAts8Kh
 jC5s2pmpbvLRWliRpUtAKqMfndTiOGKfQ1XA/biYecE/puXv2ieSNXQSZ0cdu5h9w2s0
 SuwZQd8zx3BU8Vs5HFZ7ESFjaNLDABB1BOPVig3D0HRfOCAJ0obLIPSRLF9BIwVvGROb
 cuEiHKNdb2k9Nm+Iqo8/D+oX5SjgcYd8pLVQizRfb0NwySs3s1vlapvU0I+GT/DArgWO
 xWWQ==
X-Gm-Message-State: ACgBeo04R7WKV+WVbz8/HtV56DUg9L0+RuxISixioguKx6EngN4qaZKB
 yFvDLHgDKx2rqBY7P+k96OO6BP6QbZBwiCk602r+/Q==
X-Google-Smtp-Source: AA6agR4h19TQQH0JxkyxUz57jyXm3T3FbOKDhwJnpSTpkOyLMWHAQ2xtlnzHJwX0BvzpLBPxs+sgxyJRjzhq5fJOi4Q=
X-Received: by 2002:a17:907:3111:b0:730:6535:b3fb with SMTP id
 wl17-20020a170907311100b007306535b3fbmr17652856ejb.490.1660087844675; Tue, 09
 Aug 2022 16:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220809225700.2002634-1-justonli@google.com>
 <281b60de-017b-0b86-d35e-ee7bc619b1db@intel.com>
 <CAJD9tbxbcuz5U3Uu6bdoa=H_zRZCC2b6vrJH8O-dfNGC_S3SeQ@mail.gmail.com>
 <1268e30a-78fb-d988-ef1a-e059d2ddbada@intel.com>
In-Reply-To: <1268e30a-78fb-d988-ef1a-e059d2ddbada@intel.com>
From: Juston Li <justonli@google.com>
Date: Tue, 9 Aug 2022 16:30:32 -0700
Message-ID: <CAJD9tbxNGgU6uQBhYGu5CnqVDmxo=zEepo627jhfL7Jo4iH4Hw@mail.gmail.com>
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

On Tue, Aug 9, 2022 at 4:23 PM Ceraolo Spurio, Daniele
<daniele.ceraolospurio@intel.com> wrote:
>
>
>
> On 8/9/2022 4:20 PM, Juston Li wrote:
> > On Tue, Aug 9, 2022 at 4:10 PM Ceraolo Spurio, Daniele
> > <daniele.ceraolospurio@intel.com> wrote:
> >>
> >>
> >> On 8/9/2022 3:57 PM, Juston Li wrote:
> >>> pxp will not start correctly until after mei_pxp bind completes and
> >>> intel_pxp_init_hw() is called.
> >>>
> >>> Signed-off-by: Juston Li <justonli@google.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/pxp/intel_pxp.c | 2 +-
> >>>    1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> >>> index 15311eaed848..3ef9e4e1870b 100644
> >>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> >>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> >>> @@ -184,7 +184,7 @@ int intel_pxp_start(struct intel_pxp *pxp)
> >>>    {
> >>>        int ret = 0;
> >>>
> >>> -     if (!intel_pxp_is_enabled(pxp))
> >>> +     if (!intel_pxp_is_enabled(pxp) || !pxp->pxp_component_added)
> >> pxp_component_added being true only indicates that we've called
> >> component_add and not if the component is currently bound. For checking
> >> the current state of the component you can look at the
> >> pxp->pxp_component pointer, which is set/cleared on component
> >> bind/unbind. Note that pxp_component has to be accessed under
> >> pxp->tee_mutex.
> >>
> >> Are you actually seeing a scenario where the user manages to submit
> >> before the bind is complete? the bind is async to i915, but I've always
> >> seen it complete before control was given to the user to start submitting.
> >>
> >> Daniele
> > Opps! I made a typo sending it out. Indeed when I tested it was with
> > pxp->component_add.
> > I did not have pxp->tee_mutex though so I'll add that too.
> >
> > We moved initialization earlier so it does try to call pxp_start() before mei
> > finishes binding.
>
> I'd also suggest to use a different error code if that is the case, so
> userspace can differentiate between !enabled and !ready and only retry
> in the latter case.

Sounds good, I think I'll use -EAGAIN

Thanks!
Juston

> Daniele
>
> >
> > Thanks
> > Juston
> >
> >>>                return -ENODEV;
> >>>
> >>>        mutex_lock(&pxp->arb_mutex);
>
