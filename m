Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42610593A98
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 22:21:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22A59D442B;
	Mon, 15 Aug 2022 20:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com
 [IPv6:2607:f8b0:4864:20::d2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55CBCCD20A
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 20:20:48 +0000 (UTC)
Received: by mail-io1-xd2e.google.com with SMTP id q74so2661513iod.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 13:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=MWIW4K6IdGgn4L2uU+WUleZECNPi9v4Y2bgR5mc08+E=;
 b=gedTMbomlt48HaCXIiV4cUUaOJlT1FukQgiXxmizGn7nm5smBvev2xPW28maK3Klkb
 zfctMAt0DZL2iiCoxBMMg5i/hYG0D766sgiFJBwTkx+9UnWv+uVshNUgmWja9E5R/NIV
 mGiEgPoNH8w1M+3yOODL3YBniq8F/oO3lPSQk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=MWIW4K6IdGgn4L2uU+WUleZECNPi9v4Y2bgR5mc08+E=;
 b=pb6F5Fj9nxgasfByymOF07zzLx294wYlbQ9Om39OoEmMFKX9TMPSuoFjoYMUY6ptdZ
 EBy8aZQmfNmo+K7VHpWINMi8yRamLhzsNUIKW+2u31n9OPxAI7QTW6UIZMufW5gzce6F
 AjGbTTKUs0BZjdPgvZyJXVkxvs0RH+VEje6qW7hrYUDzi56PtuhD18WMWqKBTHI+MxEM
 UeQhMRT1Yq47H+tmLTS+awAUOjJ9xinQaQKQuEioyWyMK5qpkeWScSR6H5shBvP/f9lu
 idRY+JkujVq3wK9VZmrmwIt2NqAKPUYUP9jkOMZ48AWtWy8BogvKhda7fFcab2+xA9+m
 OoGQ==
X-Gm-Message-State: ACgBeo0zVhB/fIo0JJkAEWysH4kYxWEoN0rJuz2jJptIo5kx3yajEPuY
 MBPG7FXJwwJ/c/4tziQBN8lbGGqQ3VkPyYqFzCO1IQ==
X-Google-Smtp-Source: AA6agR6viv4fiUnsiKkJ3KofLKrd2nc76Y0fRXv9i+2mCKV2O5+ROE6tvyVpV2PIdw+8D+Y8xHHoeTW0pSnOuXM8c7s=
X-Received: by 2002:a05:6638:42cd:b0:342:782f:3e02 with SMTP id
 bm13-20020a05663842cd00b00342782f3e02mr7686731jab.42.1660594847542; Mon, 15
 Aug 2022 13:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220810004253.3240393-1-justonli@google.com>
 <3dd74afe-5f2c-32b5-d24f-a7458d3859bb@intel.com>
In-Reply-To: <3dd74afe-5f2c-32b5-d24f-a7458d3859bb@intel.com>
From: Juston Li <justonli@chromium.org>
Date: Mon, 15 Aug 2022 13:20:36 -0700
Message-ID: <CAKhQNHGfrKsPiBb0UHXNpn-PU9hv-YzcJwvV2k+-wO7ZFPnfyw@mail.gmail.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"
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
Cc: intel-gfx@lists.freedesktop.org, Juston Li <justonli@google.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 15, 2022 at 8:36 AM Ceraolo Spurio, Daniele
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
quite a few times.

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
