Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8FA5946F6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 01:30:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A929D70DE;
	Mon, 15 Aug 2022 23:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97515CE1C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 16:37:10 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id a89so10242168edf.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 09:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=8x71rRl8gr5oTf1B540hBVdj3TdpbJHQ+VT/uZzWgE4=;
 b=li0d36VtqLYUwgrglpp8CX4PuT6GoNQGQAAwP7HsM2Li6wHKpV0Wa1+03SoihB+45v
 HYOHb46438yU2ibw6wEeIuqT6EoBnlE5q5DXRQNsPuNXmfaXwvWnMd0fC7PiU+kW3uzP
 OHHX0v/FgCc57Xvmz+yq0LH1aCfyIoXlgYx6FEV+8ZbjdHt1YODW1TMIuP/oklJUJAZG
 4K4RmLXG6/o6ChwIfeuO99zAy4OTEiOkQMLmSBl8Gn/nq1l2WUPLKuBF5zzlUj1K13rC
 ILYbH8Vww2x0V3EP2J+glXZkOTDrHbjnOOsOXOXQiNecfnnLzni/7cCgsKMyq/Ksytjb
 h02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=8x71rRl8gr5oTf1B540hBVdj3TdpbJHQ+VT/uZzWgE4=;
 b=AEauj5+gYJgtdtgZaaq/wkvMBcebRgabKCcpFcr5c1eZDGQBhVpKDGcu9uWVq6fWAQ
 D9fvJmQotCecHYA96g90iMaZU9ld9PjNfmIzJlXakqX24ZIPmXXoSqvhFeS1gcArj5zf
 q7IGvalww3XpAg4zEqx2/0Gas0QwIVLTqw6X+2TvzAHvYKfC/UICounOkOYXbAz9aPnT
 LfCFsfA6cVEVLt5Ko8lVICuoMhvWahQmKi1ad7ecQ6JsMVFvDXqgTmaKOCNEaSsLE49T
 ThjSnp+4Nosp04/TzcNPdJgKpGDsSpANsmtPT7qFWyk6WPjfa/RgVlntacyL8AHfvAkT
 tfEg==
X-Gm-Message-State: ACgBeo1jrOR9w6li9yuIkBCX0uRAG4XzX5+5z8H8uNfMcjeZULapyv4j
 3rwClRW81RtL1YLib/VETKDxiSHOuLhzysxqkOz7DmyD9lBLhQ==
X-Google-Smtp-Source: AA6agR6Js23TOfGd+Q94DqjJq4A5KvSnmRuGJfKjtVTUBxtXGQgmFsJIdXC7I1XCkMyT11EwqtSdvdVdDwre/3estJE=
X-Received: by 2002:a05:6402:24a4:b0:440:8c0c:8d2b with SMTP id
 q36-20020a05640224a400b004408c0c8d2bmr14811254eda.311.1660581428673; Mon, 15
 Aug 2022 09:37:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220810004253.3240393-1-justonli@google.com>
 <3dd74afe-5f2c-32b5-d24f-a7458d3859bb@intel.com>
In-Reply-To: <3dd74afe-5f2c-32b5-d24f-a7458d3859bb@intel.com>
From: Juston Li <justonli@google.com>
Date: Mon, 15 Aug 2022 09:36:57 -0700
Message-ID: <CAJD9tbz=m2qL7Z-7ywCn_RfMDxSu_yYD56ChFGcxs5RPK1cFqQ@mail.gmail.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 15 Aug 2022 23:30:16 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/pxp: don't start pxp without
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

On Mon, Aug 15, 2022 at 8:35 AM Ceraolo Spurio, Daniele
<daniele.ceraolospurio@intel.com> wrote:
>
>
>
> On 8/9/2022 5:42 PM, Juston Li wrote:
> > pxp will not start correctly until after mei_pxp bind completes and
> > intel_pxp_init_hw() is called.
> >
> > This fixes a race condition during bootup where we observed a small
> > window for pxp commands to be sent before mei_pxp bind completed.
> >
> > Changes since v1:
> > - check pxp_component instead of pxp_component_added (Daniele)
> > - pxp_component needs tee_mutex (Daniele)
> > - return -EAGAIN so caller knows to retry (Daniele)
>
> Sorry for the follow up, but I have reflected on this a bit more and I
> was thinking that maybe it would be better to wait a bit for the
> component to be bound, instead of immediately failing the call. Do you
> have a measure of how long after your failure you see the component bind
> complete? The wait would make sense only if relatively short (< 1s).

No worries, that sounds better.
Media driver does end up allowing it in its retry loop but it's trying
quite a few
times.

The bind happens shortly after, ~ 0.08 seconds.

 2022-08-15T16:27:12.190032Z ERR kernel: [    8.384979] i915
0000:00:02.0: [drm] 1st PXP start no mei_pxp
 2022-08-15T16:27:12.238027Z INFO kernel: [    8.433168] pci
0000:00:16.0: attach allowed to drvr mei_me [trusted device]
 2022-08-15T16:27:12.238046Z INFO kernel: [    8.433222] mei_me
0000:00:16.0: enabling device (0000 -> 0002)
 2022-08-15T16:27:12.255546Z INFO pciguard[953]: INFO pciguard:
[udev_monitor.cc(106)] UdevEvent: pci change ALLOWED mei_me /
sys/devices/pci0000:00/0000:00:16.0
 2022-08-15T16:27:12.262298Z INFO kernel: [    8.457702] mei_pxp
0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: bound
0000:00:02.0 (ops 0xffffffffb6cc6850)
 2022-08-15T16:27:12.264027Z INFO kernel: [    8.458920] mei_hdcp
0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound
0000:00:02.0 (ops 0xffffffffb6cbcce0)

Juston

> Daniele
>
> > Signed-off-by: Juston Li <justonli@google.com>
> > ---
> >   drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
> >   1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > index 15311eaed848..8b395ebc430a 100644
> > --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > @@ -187,6 +187,14 @@ int intel_pxp_start(struct intel_pxp *pxp)
> >       if (!intel_pxp_is_enabled(pxp))
> >               return -ENODEV;
> >
> > +     mutex_lock(&pxp->tee_mutex);
> > +     /* check if mei_pxp is bound */
> > +     if (!pxp->pxp_component) {
> > +             mutex_unlock(&pxp->tee_mutex);
> > +             return -EAGAIN;
> > +     }
> > +     mutex_unlock(&pxp->tee_mutex);
> > +
> >       mutex_lock(&pxp->arb_mutex);
> >
> >       if (pxp->arb_is_valid)
>
