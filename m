Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D47212275
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 13:40:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3F66EACE;
	Thu,  2 Jul 2020 11:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B016EACC
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 11:40:16 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id 72so23898831otc.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jul 2020 04:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lZHBtAlKw7z1oQPTdUzKwNZteR+BfBoGvnYgD7d6d3g=;
 b=XH4Uy8OAiq7OWF5HliseB4Ml92Z9dattqtbQzA39iCyelSr9nDcOHy97ziW8iu4zKu
 fIgU1W2EL/iSsTndTsTf84olBKRMwrP73mILkopvitRy/r3i+Ma4hJabENE7nDXmB7Yg
 Tc5JotMr478Ob5fl8edER0N0Y4AEAV3V3wJqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lZHBtAlKw7z1oQPTdUzKwNZteR+BfBoGvnYgD7d6d3g=;
 b=XfyetB3H0RERXYTylzNytPMxtCgJQfYSO0Bniz2NwoISH850tITgPxesPaGYFAi4mu
 rsl9mYN5ohtq2quYI49xf1VJuC+HABEl3Cg69EmlV+dUmiYNt1p9Y8Im/1BMeorTFdiq
 qLzPASbfpC7MeCPHLqNIlHv5kXcdO3rk++4sAJyPuLthO4BL8Mt8rtvJj206hNlVaxOj
 aJSaZ3L2mIDDhDMcLXht5ZWyu4uwmdh9tnOpDMVJctPwIG5Py1Xo6f+uqCYFGoj4eFwn
 Xgf8OuCmMblD7lJxGmfCXvOAkTqX78k6LjiQkNQ0Yj5j2zSgVBSGDB5gTUyiV64kyThd
 hpqQ==
X-Gm-Message-State: AOAM530IzNmfw4BSOkgoq/7EKL/ScNQ3/OaqH/tmAJ2jRqRBKJW2jwAm
 Je/NfBIcI9sHbuCp4NIzBxuYgXETyRXoA0IOV6IsaQ==
X-Google-Smtp-Source: ABdhPJxWkcyXPw0DkByhZ4wcDulIL6cPJ+jZRkrMFXqe9XMDcxu44wd4dAJ9kejq7+e6rwQuG9sAA9i6Bwo/o4D+vN8=
X-Received: by 2002:a05:6830:1613:: with SMTP id
 g19mr13534749otr.303.1593690015601; 
 Thu, 02 Jul 2020 04:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
 <20200702112722.GA18036@pendragon.ideasonboard.com>
In-Reply-To: <20200702112722.GA18036@pendragon.ideasonboard.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 2 Jul 2020 13:40:04 +0200
Message-ID: <CAKMK7uGny5Kssrusr5JQSV29WJE62iigD+hx8bgWYAYqhJAiYw@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/atomic-helper: reset vblank on crtc
 reset
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 Emil Velikov <emil.velikov@collabora.com>,
 "open list:DRM DRIVERS FOR RENESAS" <linux-renesas-soc@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Thierry Reding <treding@nvidia.com>,
 syzbot+0871b14ca2e2fb64f6e3@syzkaller.appspotmail.com,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jyri Sarha <jsarha@ti.com>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, zhengbin <zhengbin13@huawei.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 2, 2020 at 1:27 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Daniel,
>
> Thank you for the patch.
>
> On Fri, Jun 12, 2020 at 06:00:49PM +0200, Daniel Vetter wrote:
> > Only when vblanks are supported ofc.
> >
> > Some drivers do this already, but most unfortunately missed it. This
> > opens up bugs after driver load, before the crtc is enabled for the
> > first time. syzbot spotted this when loading vkms as a secondary
> > output. Given how many drivers are buggy it's best to solve this once
> > and for all in shared helper code.
> >
> > Aside from moving the few existing calls to drm_crtc_vblank_reset into
> > helpers (i915 doesn't use helpers, so keeps its own) I think the
> > regression risk is minimal: atomic helpers already rely on drivers
> > calling drm_crtc_vblank_on/off correctly in their hooks when they
> > support vblanks. And driver that's failing to handle vblanks after
> > this is missing those calls already, and vblanks could only work by
> > accident when enabling a CRTC for the first time right after boot.
> >
> > Big thanks to Tetsuo for helping track down what's going wrong here.
> >
> > There's only a few drivers which already had the necessary call and
> > needed some updating:
> > - komeda, atmel and tidss also needed to be changed to call
> >   __drm_atomic_helper_crtc_reset() intead of open coding it
> > - tegra and msm even had it in the same place already, just code
> >   motion, and malidp already uses __drm_atomic_helper_crtc_reset().
>
> Should you mention rcar-du and omapdrm here ?

Uh yes need to mention them too here, and how exactly they're a bit
different. Will shuffle that from the v4: block below when applying.

> > Only call left is in i915, which doesn't use drm_mode_config_reset,
> > but has its own fastboot infrastructure. So that's the only case where
> > we actually want this in the driver still.
> >
> > I've also reviewed all other drivers which set up vblank support with
> > drm_vblank_init. After the previous patch fixing mxsfb all atomic
> > drivers do call drm_crtc_vblank_on/off as they should, the remaining
> > drivers are either legacy kms or legacy dri1 drivers, so not affected
> > by this change to atomic helpers.
> >
> > v2: Use the drm_dev_has_vblank() helper.
> >
> > v3: Laurent pointed out that omap and rcar-du used drm_crtc_vblank_off
> > instead of drm_crtc_vblank_reset. Adjust them too.
> >
> > v4: Laurent noticed that rcar-du and omap open-code their crtc reset
> > and hence would actually be broken by this patch now. So fix them up
> > by reusing the helpers, which brings the drm_crtc_vblank_reset() back.
> >
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> > Acked-by: Liviu Dudau <liviu.dudau@arm.com>
> > Acked-by: Thierry Reding <treding@nvidia.com>
> > Link: https://syzkaller.appspot.com/bug?id=0ba17d70d062b2595e1f061231474800f076c7cb
> > Reported-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> > Reported-by: syzbot+0871b14ca2e2fb64f6e3@syzkaller.appspotmail.com
> > Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> > Cc: "James (Qian) Wang" <james.qian.wang@arm.com>
> > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > Cc: Mihail Atanassov <mihail.atanassov@arm.com>
> > Cc: Brian Starkey <brian.starkey@arm.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Boris Brezillon <bbrezillon@kernel.org>
> > Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> > Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Cc: Jonathan Hunter <jonathanh@nvidia.com>
> > Cc: Jyri Sarha <jsarha@ti.com>
> > Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > Cc: Rob Clark <robdclark@gmail.com>
> > Cc: Sean Paul <seanpaul@chromium.org>
> > Cc: Brian Masney <masneyb@onstation.org>
> > Cc: Emil Velikov <emil.velikov@collabora.com>
> > Cc: zhengbin <zhengbin13@huawei.com>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: linux-tegra@vger.kernel.org
> > Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-renesas-soc@vger.kernel.org
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/arm/display/komeda/komeda_crtc.c | 7 ++-----
> >  drivers/gpu/drm/arm/malidp_drv.c                 | 1 -
> >  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c   | 7 ++-----
> >  drivers/gpu/drm/drm_atomic_state_helper.c        | 4 ++++
> >  drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c        | 2 --
> >  drivers/gpu/drm/omapdrm/omap_crtc.c              | 8 +++++---
> >  drivers/gpu/drm/omapdrm/omap_drv.c               | 4 ----
> >  drivers/gpu/drm/rcar-du/rcar_du_crtc.c           | 6 +-----
> >  drivers/gpu/drm/tegra/dc.c                       | 1 -
> >  drivers/gpu/drm/tidss/tidss_crtc.c               | 3 +--
> >  drivers/gpu/drm/tidss/tidss_kms.c                | 4 ----
> >  11 files changed, 15 insertions(+), 32 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> > index 56bd938961ee..f33418d6e1a0 100644
> > --- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> > @@ -492,10 +492,8 @@ static void komeda_crtc_reset(struct drm_crtc *crtc)
> >       crtc->state = NULL;
> >
> >       state = kzalloc(sizeof(*state), GFP_KERNEL);
> > -     if (state) {
> > -             crtc->state = &state->base;
> > -             crtc->state->crtc = crtc;
> > -     }
> > +     if (state)
> > +             __drm_atomic_helper_crtc_reset(crtc, &state->base);
> >  }
> >
> >  static struct drm_crtc_state *
> > @@ -616,7 +614,6 @@ static int komeda_crtc_add(struct komeda_kms_dev *kms,
> >               return err;
> >
> >       drm_crtc_helper_add(crtc, &komeda_crtc_helper_funcs);
> > -     drm_crtc_vblank_reset(crtc);
> >
> >       crtc->port = kcrtc->master->of_output_port;
> >
> > diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
> > index 6feda7cb37a6..c9e1ee84b4e8 100644
> > --- a/drivers/gpu/drm/arm/malidp_drv.c
> > +++ b/drivers/gpu/drm/arm/malidp_drv.c
> > @@ -861,7 +861,6 @@ static int malidp_bind(struct device *dev)
> >       drm->irq_enabled = true;
> >
> >       ret = drm_vblank_init(drm, drm->mode_config.num_crtc);
> > -     drm_crtc_vblank_reset(&malidp->crtc);
> >       if (ret < 0) {
> >               DRM_ERROR("failed to initialise vblank\n");
> >               goto vblank_fail;
> > diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> > index 10985134ce0b..ce246b96330b 100644
> > --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> > +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> > @@ -411,10 +411,8 @@ static void atmel_hlcdc_crtc_reset(struct drm_crtc *crtc)
> >       }
> >
> >       state = kzalloc(sizeof(*state), GFP_KERNEL);
> > -     if (state) {
> > -             crtc->state = &state->base;
> > -             crtc->state->crtc = crtc;
> > -     }
> > +     if (state)
> > +             __drm_atomic_helper_crtc_reset(crtc, &state->base);
> >  }
> >
> >  static struct drm_crtc_state *
> > @@ -528,7 +526,6 @@ int atmel_hlcdc_crtc_create(struct drm_device *dev)
> >       }
> >
> >       drm_crtc_helper_add(&crtc->base, &lcdc_crtc_helper_funcs);
> > -     drm_crtc_vblank_reset(&crtc->base);
> >
> >       drm_mode_crtc_set_gamma_size(&crtc->base, ATMEL_HLCDC_CLUT_SIZE);
> >       drm_crtc_enable_color_mgmt(&crtc->base, 0, false,
> > diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> > index 8fce6a115dfe..9ad74045158e 100644
> > --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> > @@ -32,6 +32,7 @@
> >  #include <drm/drm_device.h>
> >  #include <drm/drm_plane.h>
> >  #include <drm/drm_print.h>
> > +#include <drm/drm_vblank.h>
> >  #include <drm/drm_writeback.h>
> >
> >  #include <linux/slab.h>
> > @@ -93,6 +94,9 @@ __drm_atomic_helper_crtc_reset(struct drm_crtc *crtc,
> >       if (crtc_state)
> >               __drm_atomic_helper_crtc_state_reset(crtc_state, crtc);
> >
> > +     if (drm_dev_has_vblank(crtc->dev))
> > +             drm_crtc_vblank_reset(crtc);
> > +
> >       crtc->state = crtc_state;
> >  }
> >  EXPORT_SYMBOL(__drm_atomic_helper_crtc_reset);
> > diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
> > index e152016a6a7d..c39dad151bb6 100644
> > --- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
> > +++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
> > @@ -1117,8 +1117,6 @@ static void mdp5_crtc_reset(struct drm_crtc *crtc)
> >               mdp5_crtc_destroy_state(crtc, crtc->state);
> >
> >       __drm_atomic_helper_crtc_reset(crtc, &mdp5_cstate->base);
> > -
> > -     drm_crtc_vblank_reset(crtc);
> >  }
> >
> >  static const struct drm_crtc_funcs mdp5_crtc_funcs = {
> > diff --git a/drivers/gpu/drm/omapdrm/omap_crtc.c b/drivers/gpu/drm/omapdrm/omap_crtc.c
> > index fce7e944a280..6d40914675da 100644
> > --- a/drivers/gpu/drm/omapdrm/omap_crtc.c
> > +++ b/drivers/gpu/drm/omapdrm/omap_crtc.c
> > @@ -697,14 +697,16 @@ static int omap_crtc_atomic_get_property(struct drm_crtc *crtc,
> >
> >  static void omap_crtc_reset(struct drm_crtc *crtc)
> >  {
> > +     struct omap_crtc_state *state;
> > +
> >       if (crtc->state)
> >               __drm_atomic_helper_crtc_destroy_state(crtc->state);
> >
> >       kfree(crtc->state);
> > -     crtc->state = kzalloc(sizeof(struct omap_crtc_state), GFP_KERNEL);
> >
> > -     if (crtc->state)
> > -             crtc->state->crtc = crtc;
> > +     state = kzalloc(sizeof(*state), GFP_KERNEL);
> > +     if (state)
> > +             __drm_atomic_helper_crtc_reset(crtc, &state->base);
> >  }
> >
> >  static struct drm_crtc_state *
> > diff --git a/drivers/gpu/drm/omapdrm/omap_drv.c b/drivers/gpu/drm/omapdrm/omap_drv.c
> > index 242d28281784..4526967978b7 100644
> > --- a/drivers/gpu/drm/omapdrm/omap_drv.c
> > +++ b/drivers/gpu/drm/omapdrm/omap_drv.c
> > @@ -595,7 +595,6 @@ static int omapdrm_init(struct omap_drm_private *priv, struct device *dev)
> >  {
> >       const struct soc_device_attribute *soc;
> >       struct drm_device *ddev;
> > -     unsigned int i;
> >       int ret;
> >
> >       DBG("%s", dev_name(dev));
> > @@ -642,9 +641,6 @@ static int omapdrm_init(struct omap_drm_private *priv, struct device *dev)
> >               goto err_cleanup_modeset;
> >       }
> >
> > -     for (i = 0; i < priv->num_pipes; i++)
> > -             drm_crtc_vblank_off(priv->pipes[i].crtc);
> > -
> >       omap_fbdev_init(ddev);
> >
> >       drm_kms_helper_poll_init(ddev);
> > diff --git a/drivers/gpu/drm/rcar-du/rcar_du_crtc.c b/drivers/gpu/drm/rcar-du/rcar_du_crtc.c
> > index d73e88ddecd0..fe86a3e67757 100644
> > --- a/drivers/gpu/drm/rcar-du/rcar_du_crtc.c
> > +++ b/drivers/gpu/drm/rcar-du/rcar_du_crtc.c
> > @@ -975,8 +975,7 @@ static void rcar_du_crtc_reset(struct drm_crtc *crtc)
> >       state->crc.source = VSP1_DU_CRC_NONE;
> >       state->crc.index = 0;
> >
> > -     crtc->state = &state->state;
> > -     crtc->state->crtc = crtc;
> > +     __drm_atomic_helper_crtc_reset(crtc, &state->state);
> >  }
> >
> >  static int rcar_du_crtc_enable_vblank(struct drm_crtc *crtc)
> > @@ -1271,9 +1270,6 @@ int rcar_du_crtc_create(struct rcar_du_group *rgrp, unsigned int swindex,
> >
> >       drm_crtc_helper_add(crtc, &crtc_helper_funcs);
> >
> > -     /* Start with vertical blanking interrupt reporting disabled. */
> > -     drm_crtc_vblank_off(crtc);
> > -
>
> Could this cause an issue, as the interrupt handler can now be
> registered with the interrupt left enabled in the hardware after a
> reboot, while drm_crtc_vblank_off() would disable it ? It's something
> that should likely be handled elsewhere in the driver, with all
> interrupts disabled explicitly early in probe, and I don't think the
> driver handles enabled interrupts very well today, so it's not a blocker
> for me:

Atomic helpers, specifically the reset helpers I'm adjusting here
assume that at driver load time everything is completely off. They
_only_ reset the sw state.

If you want to have more smooth takeover (flicker-free boot eventually
even), or have some hw that's not getting reset as part of power-up or
driver load, then that would be for the driver to handle. I think we
recently had a discussion about what would need to be added to make
atomic helpers support take-over of actual hw state at driver load.
And yes if that's the case, then you'd need a different flow here to
make sure vblank state is matching crtc state (e.g. i915 does that).

Wrt this case here specifically drm_handle_vblank needs to handle
races anyway, so it's robust against being called when the vblanks are
disabled in software. So I don't think you'll have any serious problem
here.

Actual hw irq enable/disable is only done around drm_vblank_get/put
(well with some delay), so I don't think that would have changed
anything for you wrt actually getting an interrupt or not.

So tldr; I think just drm_vblank_reset here fits the best with overall
helpers we have.

> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
> I would however appreciate your thoughts on this topic, to know if my
> understanding is correct (and if this issue could affect other drivers).

Thanks a lot for your review, I'll apply the entire bunch later today.
-Daniel

>
> >       /* Register the interrupt handler. */
> >       if (rcar_du_has(rcdu, RCAR_DU_FEATURE_CRTC_IRQ_CLOCK)) {
> >               /* The IRQ's are associated with the CRTC (sw)index. */
> > diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c
> > index 83f31c6e891c..9b308b572eac 100644
> > --- a/drivers/gpu/drm/tegra/dc.c
> > +++ b/drivers/gpu/drm/tegra/dc.c
> > @@ -1168,7 +1168,6 @@ static void tegra_crtc_reset(struct drm_crtc *crtc)
> >               tegra_crtc_atomic_destroy_state(crtc, crtc->state);
> >
> >       __drm_atomic_helper_crtc_reset(crtc, &state->base);
> > -     drm_crtc_vblank_reset(crtc);
> >  }
> >
> >  static struct drm_crtc_state *
> > diff --git a/drivers/gpu/drm/tidss/tidss_crtc.c b/drivers/gpu/drm/tidss/tidss_crtc.c
> > index 89a226912de8..4d01c4af61cd 100644
> > --- a/drivers/gpu/drm/tidss/tidss_crtc.c
> > +++ b/drivers/gpu/drm/tidss/tidss_crtc.c
> > @@ -352,8 +352,7 @@ static void tidss_crtc_reset(struct drm_crtc *crtc)
> >               return;
> >       }
> >
> > -     crtc->state = &tcrtc->base;
> > -     crtc->state->crtc = crtc;
> > +     __drm_atomic_helper_crtc_reset(crtc, &tcrtc->base);
> >  }
> >
> >  static struct drm_crtc_state *tidss_crtc_duplicate_state(struct drm_crtc *crtc)
> > diff --git a/drivers/gpu/drm/tidss/tidss_kms.c b/drivers/gpu/drm/tidss/tidss_kms.c
> > index 4b99e9fa84a5..e6ab59eed259 100644
> > --- a/drivers/gpu/drm/tidss/tidss_kms.c
> > +++ b/drivers/gpu/drm/tidss/tidss_kms.c
> > @@ -278,10 +278,6 @@ int tidss_modeset_init(struct tidss_device *tidss)
> >       if (ret)
> >               return ret;
> >
> > -     /* Start with vertical blanking interrupt reporting disabled. */
> > -     for (i = 0; i < tidss->num_crtcs; ++i)
> > -             drm_crtc_vblank_reset(tidss->crtcs[i]);
> > -
> >       drm_mode_config_reset(ddev);
> >
> >       dev_dbg(tidss->dev, "%s done\n", __func__);
>
> --
> Regards,
>
> Laurent Pinchart



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
