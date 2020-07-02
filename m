Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5123921202B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 11:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C269E6EAB3;
	Thu,  2 Jul 2020 09:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 825E66E21C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 09:41:14 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id 18so23653400otv.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jul 2020 02:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J/onxFxSQfkPVqT98m71VRkkpOV9Qwy8gKdSjs+5y54=;
 b=k3oQpfFF5JEMu8tKtAYU0Oa2fCMAHRyfCTDplCswLmK+fSvg5jrPlLTMSoVNHOeWbM
 RCQbKCNPRhyNNwmZbEcLknx0iB8pHEVH7B8X1g9Obzzhk8walRb1YGKTp6WBRwqeiqEb
 0Hy3Oaf0PTbjzS2S3YzKI96yCH6Q/BPMhHRoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J/onxFxSQfkPVqT98m71VRkkpOV9Qwy8gKdSjs+5y54=;
 b=l4su5gawfjVFktFzHT9hSh30pF/tAMEAImzTDbb+/SMZ1W8wt98VdSSqI4Ss2CPmis
 JNCQEyPQL3Gc6Qgp9t5cQoqvAvrdbAbXSAGRek92R0qMMzN9FstxTiPoZ0WBSFbaGWah
 AqdOoIf1Rt7jbmN4mZwBDg8Pmhy6rM+6XAMnySKBZ7eLbPVYTBOGdq6d0Uo0b+MQjJEr
 hbvPkSVWFRa1Mzulqohb4rwUqjQ/7j0G2KvDuFXFNg+Q8kNmAENlz0yJ9e/P6lRcQ3pI
 MAefWCgBB88OhK3xtg+gG39DmQh3oTrHqB8sh0bmsw+sBd+00iblTnVvTL5DWyWTF7Ni
 NANg==
X-Gm-Message-State: AOAM533Vkm9K8ZwavG75nA9JRtCqtEryy6itjfxKhNQOYk4VFAsOr0gb
 piaYDuoDgPVfQx4MD8L9NX5rpb6MDeY+H7RZtz+sV3uJ
X-Google-Smtp-Source: ABdhPJxQD/Bx0RMbgg86kx7Ic8zqhKFESB0e2lWRU6GIjLq9lV8mGh1lU/Cct71c+84biFK2Ohw1f9KAw2ClvS1FTlk=
X-Received: by 2002:a05:6830:1d0:: with SMTP id
 r16mr14069797ota.188.1593682873859; 
 Thu, 02 Jul 2020 02:41:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
 <20200612160056.2082681-3-daniel.vetter@ffwll.ch>
 <20200624072531.GU20149@phenom.ffwll.local>
In-Reply-To: <20200624072531.GU20149@phenom.ffwll.local>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 2 Jul 2020 11:41:02 +0200
Message-ID: <CAKMK7uGn3vBQzBehQuF36dmjTm3ocGekPPFMFNc40xK8hx1Gzg@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/imx: Use
 __drm_atomic_helper_crtc_reset
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 24, 2020 at 9:25 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Fri, Jun 12, 2020 at 06:00:51PM +0200, Daniel Vetter wrote:
> > Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
> > which means vblank state isn't ill-defined and fail-y at driver load
> > before the first modeset on each crtc.
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: NXP Linux Team <linux-imx@nxp.com>
> > Cc: linux-arm-kernel@lists.infradead.org
>
> Ping for some ack/review on this pls.

Still looking for an ack here so I can land this entire pile.
-Daniel

>
> Thanks, Daniel
>
> > ---
> >  drivers/gpu/drm/imx/ipuv3-crtc.c | 21 ++++++++-------------
> >  1 file changed, 8 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/imx/ipuv3-crtc.c b/drivers/gpu/drm/imx/ipuv3-crtc.c
> > index 63c0284f8b3c..02c2f848f2d1 100644
> > --- a/drivers/gpu/drm/imx/ipuv3-crtc.c
> > +++ b/drivers/gpu/drm/imx/ipuv3-crtc.c
> > @@ -109,20 +109,15 @@ static void imx_drm_crtc_reset(struct drm_crtc *crtc)
> >  {
> >       struct imx_crtc_state *state;
> >
> > -     if (crtc->state) {
> > -             if (crtc->state->mode_blob)
> > -                     drm_property_blob_put(crtc->state->mode_blob);
> > -
> > -             state = to_imx_crtc_state(crtc->state);
> > -             memset(state, 0, sizeof(*state));
> > -     } else {
> > -             state = kzalloc(sizeof(*state), GFP_KERNEL);
> > -             if (!state)
> > -                     return;
> > -             crtc->state = &state->base;
> > -     }
> > +     if (crtc->state)
> > +             __drm_atomic_helper_crtc_destroy_state(crtc->state);
> >
> > -     state->base.crtc = crtc;
> > +     kfree(to_imx_crtc_state(crtc->state));
> > +     crtc->state = NULL;
> > +
> > +     state = kzalloc(sizeof(*state), GFP_KERNEL);
> > +     if (state)
> > +             __drm_atomic_helper_crtc_reset(crtc, &state->base);
> >  }
> >
> >  static struct drm_crtc_state *imx_drm_crtc_duplicate_state(struct drm_crtc *crtc)
> > --
> > 2.26.2
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
