Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1461E47CD
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 17:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 451BF89AB9;
	Wed, 27 May 2020 15:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com
 [IPv6:2607:f8b0:4864:20::c42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B6D889AB9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 15:42:53 +0000 (UTC)
Received: by mail-oo1-xc42.google.com with SMTP id p123so5072243oop.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 08:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XPLyPDJP0fY5JejfZ/hsRX38rlx/Y5RCUCBnkoxcNws=;
 b=j0PwMozrAsHHcRRUFqyFk5d24kfUMfRIjT0vGkCWX97p7KISLMEV+9Ws0tTmUd6jbn
 5DFRH5s75QLKx82cEUFwdazdPpDVrtMw+utdBGmLoAu/7bRmyV9ifRnhwdjqhN3b0tm5
 GFbd+7JYTelZm5Hr01RQXTAesG1SsZXyKtfUE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XPLyPDJP0fY5JejfZ/hsRX38rlx/Y5RCUCBnkoxcNws=;
 b=dn8O6t97roMNGjsQgu+zbuKh0rtpl7Q6twouHEtfdPXXVUrzpU1vGPenUapk6KCf/s
 oVins8gX3Xr3l0DLY3RYTQbg5y4xcxWbJPJL/c0vqd7sqggxPEADWwZ+Q/AATcQIsMZH
 uZtdK0l+SGpFy/mngRzkGlNlgiu0gp2C8dcVBNBdMjrS7tQIRNVJgradqVv3PAs6OMXE
 eYEBYg3ibgbnSGeQbktArmt57PjH9jXabqLQvxRLlUhogGxNoMyv7miOArOqVlPSEhCf
 CdhYJwT/QVIA/g2NbeJPP10/6ayjajai314XWhcX482HGqNDHAL5AGzs1dqsO5jfZnfT
 spZQ==
X-Gm-Message-State: AOAM532rUifJhZEShcxE6HBL2CzcezyM41Roe/Bq2kpZ+fq+Vd0q61+N
 4nRBNdW49g6Z6H1VvlMpxG5/0+nhWXi+/fRWBKgobg==
X-Google-Smtp-Source: ABdhPJz3UMYWp9QhMQc9JXbc/nWy3WqNJRM+GFo+FKX3sheT71oIduSOrO2q9aTqHPjid9T/njjxI6VTrgdeioAyz9Y=
X-Received: by 2002:a05:6820:5b:: with SMTP id
 v27mr3537151oob.85.1590594172522; 
 Wed, 27 May 2020 08:42:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
 <20200527094757.1414174-2-daniel.vetter@ffwll.ch>
In-Reply-To: <20200527094757.1414174-2-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 27 May 2020 17:42:41 +0200
Message-ID: <CAKMK7uHJ2NrhMHEY2rciKmBW0FZ=6wpXm66TViC7cM8r4iRCqg@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/atomic-helper: reset vblank on crtc
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
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 Emil Velikov <emil.velikov@collabora.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 syzbot+0871b14ca2e2fb64f6e3@syzkaller.appspotmail.com,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Jyri Sarha <jsarha@ti.com>, linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Boris Brezillon <bbrezillon@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, zhengbin <zhengbin13@huawei.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 27, 2020 at 11:48 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> Only when vblanks are supported ofc.
>
> Some drivers do this already, but most unfortunately missed it. This
> opens up bugs after driver load, before the crtc is enabled for the
> first time. syzbot spotted this when loading vkms as a secondary
> output. Given how many drivers are buggy it's best to solve this once
> and for all in shared helper code.
>
> Aside from moving the few existing calls to drm_crtc_vblank_reset into
> helpers (i915 doesn't use helpers, so keeps its own) I think the
> regression risk is minimal: atomic helpers already rely on drivers
> calling drm_crtc_vblank_on/off correctly in their hooks when they
> support vblanks. And driver that's failing to handle vblanks after
> this is missing those calls already, and vblanks could only work by
> accident when enabling a CRTC for the first time right after boot.
>
> Big thanks to Tetsuo for helping track down what's going wrong here.
>
> There's only a few drivers which already had the necessary call and
> needed some updating:
> - komeda, atmel and tidss also needed to be changed to call
>   __drm_atomic_helper_crtc_reset() intead of open coding it
> - tegra and msm even had it in the same place already, just code
>   motion, and malidp already uses __drm_atomic_helper_crtc_reset().
>
> Only call left is in i915, which doesn't use drm_mode_config_reset,
> but has its own fastboot infrastructure. So that's the only case where
> we actually want this in the driver still.
>
> I've also reviewed all other drivers which set up vblank support with
> drm_vblank_init. After the previous patch fixing mxsfb all atomic
> drivers do call drm_crtc_vblank_on/off as they should, the remaining
> drivers are either legacy kms or legacy dri1 drivers, so not affected
> by this change to atomic helpers.
>
> Link: https://syzkaller.appspot.com/bug?id=0ba17d70d062b2595e1f061231474800f076c7cb
> Reported-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Reported-by: syzbot+0871b14ca2e2fb64f6e3@syzkaller.appspotmail.com
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Cc: "James (Qian) Wang" <james.qian.wang@arm.com>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Mihail Atanassov <mihail.atanassov@arm.com>
> Cc: Brian Starkey <brian.starkey@arm.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Boris Brezillon <bbrezillon@kernel.org>
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: Jyri Sarha <jsarha@ti.com>
> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Brian Masney <masneyb@onstation.org>
> Cc: Emil Velikov <emil.velikov@collabora.com>
> Cc: zhengbin <zhengbin13@huawei.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: linux-tegra@vger.kernel.org
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

For the atmel part from irc because Sam's isp refused to send out a
mail with this many recipients:

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

Cheers, Daniel

> ---
>  drivers/gpu/drm/arm/display/komeda/komeda_crtc.c | 7 ++-----
>  drivers/gpu/drm/arm/malidp_drv.c                 | 1 -
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c   | 7 ++-----
>  drivers/gpu/drm/drm_atomic_state_helper.c        | 4 ++++
>  drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c        | 2 --
>  drivers/gpu/drm/tegra/dc.c                       | 1 -
>  drivers/gpu/drm/tidss/tidss_crtc.c               | 3 +--
>  drivers/gpu/drm/tidss/tidss_kms.c                | 4 ----
>  8 files changed, 9 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> index 56bd938961ee..f33418d6e1a0 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> @@ -492,10 +492,8 @@ static void komeda_crtc_reset(struct drm_crtc *crtc)
>         crtc->state = NULL;
>
>         state = kzalloc(sizeof(*state), GFP_KERNEL);
> -       if (state) {
> -               crtc->state = &state->base;
> -               crtc->state->crtc = crtc;
> -       }
> +       if (state)
> +               __drm_atomic_helper_crtc_reset(crtc, &state->base);
>  }
>
>  static struct drm_crtc_state *
> @@ -616,7 +614,6 @@ static int komeda_crtc_add(struct komeda_kms_dev *kms,
>                 return err;
>
>         drm_crtc_helper_add(crtc, &komeda_crtc_helper_funcs);
> -       drm_crtc_vblank_reset(crtc);
>
>         crtc->port = kcrtc->master->of_output_port;
>
> diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
> index c2507b7d8512..02904392e370 100644
> --- a/drivers/gpu/drm/arm/malidp_drv.c
> +++ b/drivers/gpu/drm/arm/malidp_drv.c
> @@ -870,7 +870,6 @@ static int malidp_bind(struct device *dev)
>         drm->irq_enabled = true;
>
>         ret = drm_vblank_init(drm, drm->mode_config.num_crtc);
> -       drm_crtc_vblank_reset(&malidp->crtc);
>         if (ret < 0) {
>                 DRM_ERROR("failed to initialise vblank\n");
>                 goto vblank_fail;
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> index 10985134ce0b..ce246b96330b 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> @@ -411,10 +411,8 @@ static void atmel_hlcdc_crtc_reset(struct drm_crtc *crtc)
>         }
>
>         state = kzalloc(sizeof(*state), GFP_KERNEL);
> -       if (state) {
> -               crtc->state = &state->base;
> -               crtc->state->crtc = crtc;
> -       }
> +       if (state)
> +               __drm_atomic_helper_crtc_reset(crtc, &state->base);
>  }
>
>  static struct drm_crtc_state *
> @@ -528,7 +526,6 @@ int atmel_hlcdc_crtc_create(struct drm_device *dev)
>         }
>
>         drm_crtc_helper_add(&crtc->base, &lcdc_crtc_helper_funcs);
> -       drm_crtc_vblank_reset(&crtc->base);
>
>         drm_mode_crtc_set_gamma_size(&crtc->base, ATMEL_HLCDC_CLUT_SIZE);
>         drm_crtc_enable_color_mgmt(&crtc->base, 0, false,
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> index 8fce6a115dfe..843964252239 100644
> --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> @@ -32,6 +32,7 @@
>  #include <drm/drm_device.h>
>  #include <drm/drm_plane.h>
>  #include <drm/drm_print.h>
> +#include <drm/drm_vblank.h>
>  #include <drm/drm_writeback.h>
>
>  #include <linux/slab.h>
> @@ -93,6 +94,9 @@ __drm_atomic_helper_crtc_reset(struct drm_crtc *crtc,
>         if (crtc_state)
>                 __drm_atomic_helper_crtc_state_reset(crtc_state, crtc);
>
> +       if (crtc->dev->num_crtcs)
> +               drm_crtc_vblank_reset(crtc);
> +
>         crtc->state = crtc_state;
>  }
>  EXPORT_SYMBOL(__drm_atomic_helper_crtc_reset);
> diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
> index ca3368c828d0..9606185c284b 100644
> --- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
> +++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
> @@ -1117,8 +1117,6 @@ static void mdp5_crtc_reset(struct drm_crtc *crtc)
>                 mdp5_crtc_destroy_state(crtc, crtc->state);
>
>         __drm_atomic_helper_crtc_reset(crtc, &mdp5_cstate->base);
> -
> -       drm_crtc_vblank_reset(crtc);
>  }
>
>  static const struct drm_crtc_funcs mdp5_crtc_funcs = {
> diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c
> index 83f31c6e891c..9b308b572eac 100644
> --- a/drivers/gpu/drm/tegra/dc.c
> +++ b/drivers/gpu/drm/tegra/dc.c
> @@ -1168,7 +1168,6 @@ static void tegra_crtc_reset(struct drm_crtc *crtc)
>                 tegra_crtc_atomic_destroy_state(crtc, crtc->state);
>
>         __drm_atomic_helper_crtc_reset(crtc, &state->base);
> -       drm_crtc_vblank_reset(crtc);
>  }
>
>  static struct drm_crtc_state *
> diff --git a/drivers/gpu/drm/tidss/tidss_crtc.c b/drivers/gpu/drm/tidss/tidss_crtc.c
> index 89a226912de8..4d01c4af61cd 100644
> --- a/drivers/gpu/drm/tidss/tidss_crtc.c
> +++ b/drivers/gpu/drm/tidss/tidss_crtc.c
> @@ -352,8 +352,7 @@ static void tidss_crtc_reset(struct drm_crtc *crtc)
>                 return;
>         }
>
> -       crtc->state = &tcrtc->base;
> -       crtc->state->crtc = crtc;
> +       __drm_atomic_helper_crtc_reset(crtc, &tcrtc->base);
>  }
>
>  static struct drm_crtc_state *tidss_crtc_duplicate_state(struct drm_crtc *crtc)
> diff --git a/drivers/gpu/drm/tidss/tidss_kms.c b/drivers/gpu/drm/tidss/tidss_kms.c
> index 4b99e9fa84a5..e6ab59eed259 100644
> --- a/drivers/gpu/drm/tidss/tidss_kms.c
> +++ b/drivers/gpu/drm/tidss/tidss_kms.c
> @@ -278,10 +278,6 @@ int tidss_modeset_init(struct tidss_device *tidss)
>         if (ret)
>                 return ret;
>
> -       /* Start with vertical blanking interrupt reporting disabled. */
> -       for (i = 0; i < tidss->num_crtcs; ++i)
> -               drm_crtc_vblank_reset(tidss->crtcs[i]);
> -
>         drm_mode_config_reset(ddev);
>
>         dev_dbg(tidss->dev, "%s done\n", __func__);
> --
> 2.26.2
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
