Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7EE1EC631
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 02:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51706E48B;
	Wed,  3 Jun 2020 00:19:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C096E487;
 Wed,  3 Jun 2020 00:19:17 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B2B362A4;
 Wed,  3 Jun 2020 02:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591143555;
 bh=Q7cmx3U5XTa4YcMMmjWZL/HdX08vsw/IQkR1dckQirw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AFGvM8veUrIpYhcroj/SNQzhUALp9qC39sc1pZoTHMEA8a9uxZlDoHHCEbMYxcMj8
 OMgVQCHFz6Ad0su+lezIfTudB5jA6WG4w88iwvtSOrTc3U/cHLKnSO3BfY6yfpUvZ6
 YMok+gJCTg9hmVya497TzJXCnmyFIK6ZjcxkgQTk=
Date: Wed, 3 Jun 2020 03:19:00 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200603001900.GV6547@pendragon.ideasonboard.com>
References: <20200602095140.36678-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602095140.36678-1-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/atomic-helper: reset vblank on crtc
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
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 Emil Velikov <emil.velikov@collabora.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Thierry Reding <treding@nvidia.com>,
 syzbot+0871b14ca2e2fb64f6e3@syzkaller.appspotmail.com,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Jyri Sarha <jsarha@ti.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Boris Brezillon <bbrezillon@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, zhengbin <zhengbin13@huawei.com>,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniel,

Thank you for the patch.

May I remind you about the -v option to git-format-patch ? :-) Seriously
speaking, it really helps review.

On Tue, Jun 02, 2020 at 11:51:38AM +0200, Daniel Vetter wrote:
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
> v2: Use the drm_dev_has_vblank() helper.
> 
> v3: Laurent pointed out that omap and rcar-du used drm_crtc_vblank_off
> instead of drm_crtc_vblank_reset. Adjust them too.
> 
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> Acked-by: Liviu Dudau <liviu.dudau@arm.com>
> Acked-by: Thierry Reding <treding@nvidia.com>
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
> ---
>  drivers/gpu/drm/arm/display/komeda/komeda_crtc.c | 7 ++-----
>  drivers/gpu/drm/arm/malidp_drv.c                 | 1 -
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c   | 7 ++-----
>  drivers/gpu/drm/drm_atomic_state_helper.c        | 4 ++++
>  drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c        | 2 --
>  drivers/gpu/drm/omapdrm/omap_drv.c               | 3 ---
>  drivers/gpu/drm/rcar-du/rcar_du_crtc.c           | 3 ---
>  drivers/gpu/drm/tegra/dc.c                       | 1 -
>  drivers/gpu/drm/tidss/tidss_crtc.c               | 3 +--
>  drivers/gpu/drm/tidss/tidss_kms.c                | 4 ----
>  10 files changed, 9 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> index 56bd938961ee..f33418d6e1a0 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> @@ -492,10 +492,8 @@ static void komeda_crtc_reset(struct drm_crtc *crtc)
>  	crtc->state = NULL;
>  
>  	state = kzalloc(sizeof(*state), GFP_KERNEL);
> -	if (state) {
> -		crtc->state = &state->base;
> -		crtc->state->crtc = crtc;
> -	}
> +	if (state)
> +		__drm_atomic_helper_crtc_reset(crtc, &state->base);
>  }
>  
>  static struct drm_crtc_state *
> @@ -616,7 +614,6 @@ static int komeda_crtc_add(struct komeda_kms_dev *kms,
>  		return err;
>  
>  	drm_crtc_helper_add(crtc, &komeda_crtc_helper_funcs);
> -	drm_crtc_vblank_reset(crtc);
>  
>  	crtc->port = kcrtc->master->of_output_port;
>  
> diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
> index c2507b7d8512..02904392e370 100644
> --- a/drivers/gpu/drm/arm/malidp_drv.c
> +++ b/drivers/gpu/drm/arm/malidp_drv.c
> @@ -870,7 +870,6 @@ static int malidp_bind(struct device *dev)
>  	drm->irq_enabled = true;
>  
>  	ret = drm_vblank_init(drm, drm->mode_config.num_crtc);
> -	drm_crtc_vblank_reset(&malidp->crtc);
>  	if (ret < 0) {
>  		DRM_ERROR("failed to initialise vblank\n");
>  		goto vblank_fail;
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> index 10985134ce0b..ce246b96330b 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> @@ -411,10 +411,8 @@ static void atmel_hlcdc_crtc_reset(struct drm_crtc *crtc)
>  	}
>  
>  	state = kzalloc(sizeof(*state), GFP_KERNEL);
> -	if (state) {
> -		crtc->state = &state->base;
> -		crtc->state->crtc = crtc;
> -	}
> +	if (state)
> +		__drm_atomic_helper_crtc_reset(crtc, &state->base);
>  }
>  
>  static struct drm_crtc_state *
> @@ -528,7 +526,6 @@ int atmel_hlcdc_crtc_create(struct drm_device *dev)
>  	}
>  
>  	drm_crtc_helper_add(&crtc->base, &lcdc_crtc_helper_funcs);
> -	drm_crtc_vblank_reset(&crtc->base);
>  
>  	drm_mode_crtc_set_gamma_size(&crtc->base, ATMEL_HLCDC_CLUT_SIZE);
>  	drm_crtc_enable_color_mgmt(&crtc->base, 0, false,
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> index 8fce6a115dfe..9ad74045158e 100644
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
>  	if (crtc_state)
>  		__drm_atomic_helper_crtc_state_reset(crtc_state, crtc);
>  
> +	if (drm_dev_has_vblank(crtc->dev))
> +		drm_crtc_vblank_reset(crtc);
> +
>  	crtc->state = crtc_state;
>  }
>  EXPORT_SYMBOL(__drm_atomic_helper_crtc_reset);
> diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
> index ca3368c828d0..9606185c284b 100644
> --- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
> +++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
> @@ -1117,8 +1117,6 @@ static void mdp5_crtc_reset(struct drm_crtc *crtc)
>  		mdp5_crtc_destroy_state(crtc, crtc->state);
>  
>  	__drm_atomic_helper_crtc_reset(crtc, &mdp5_cstate->base);
> -
> -	drm_crtc_vblank_reset(crtc);
>  }
>  
>  static const struct drm_crtc_funcs mdp5_crtc_funcs = {
> diff --git a/drivers/gpu/drm/omapdrm/omap_drv.c b/drivers/gpu/drm/omapdrm/omap_drv.c
> index 242d28281784..7a7066cded79 100644
> --- a/drivers/gpu/drm/omapdrm/omap_drv.c
> +++ b/drivers/gpu/drm/omapdrm/omap_drv.c
> @@ -642,9 +642,6 @@ static int omapdrm_init(struct omap_drm_private *priv, struct device *dev)
>  		goto err_cleanup_modeset;
>  	}
>  
> -	for (i = 0; i < priv->num_pipes; i++)
> -		drm_crtc_vblank_off(priv->pipes[i].crtc);
> -
>  	omap_fbdev_init(ddev);
>  
>  	drm_kms_helper_poll_init(ddev);
> diff --git a/drivers/gpu/drm/rcar-du/rcar_du_crtc.c b/drivers/gpu/drm/rcar-du/rcar_du_crtc.c
> index d73e88ddecd0..e2959e32fd19 100644
> --- a/drivers/gpu/drm/rcar-du/rcar_du_crtc.c
> +++ b/drivers/gpu/drm/rcar-du/rcar_du_crtc.c
> @@ -1271,9 +1271,6 @@ int rcar_du_crtc_create(struct rcar_du_group *rgrp, unsigned int swindex,
>  
>  	drm_crtc_helper_add(crtc, &crtc_helper_funcs);
>  
> -	/* Start with vertical blanking interrupt reporting disabled. */
> -	drm_crtc_vblank_off(crtc);
> -

I'm sure I've added this code for a good reason, I would have sworn that
vblank would be either broken or would complain very loudly without this
call. I've however tested this patch, and haven't noticed any
regression. Has something changed since I've added the call to
drm_crtc_vblank_off() in the rcar-du driver ? It can't be
__drm_atomic_helper_crtc_reset() handling it, as the rcar-du driver has
a custom CRTC reset handler that doesn't call
__drm_atomic_helper_crtc_reset(). If it works without calling
drm_crtc_vblank_off() or drm_crtc_vblank_reset(), what's the purpose of
drm_crtc_vblank_reset() ?

/me is very puzzled

>  	/* Register the interrupt handler. */
>  	if (rcar_du_has(rcdu, RCAR_DU_FEATURE_CRTC_IRQ_CLOCK)) {
>  		/* The IRQ's are associated with the CRTC (sw)index. */
> diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c
> index 83f31c6e891c..9b308b572eac 100644
> --- a/drivers/gpu/drm/tegra/dc.c
> +++ b/drivers/gpu/drm/tegra/dc.c
> @@ -1168,7 +1168,6 @@ static void tegra_crtc_reset(struct drm_crtc *crtc)
>  		tegra_crtc_atomic_destroy_state(crtc, crtc->state);
>  
>  	__drm_atomic_helper_crtc_reset(crtc, &state->base);
> -	drm_crtc_vblank_reset(crtc);
>  }
>  
>  static struct drm_crtc_state *
> diff --git a/drivers/gpu/drm/tidss/tidss_crtc.c b/drivers/gpu/drm/tidss/tidss_crtc.c
> index 89a226912de8..4d01c4af61cd 100644
> --- a/drivers/gpu/drm/tidss/tidss_crtc.c
> +++ b/drivers/gpu/drm/tidss/tidss_crtc.c
> @@ -352,8 +352,7 @@ static void tidss_crtc_reset(struct drm_crtc *crtc)
>  		return;
>  	}
>  
> -	crtc->state = &tcrtc->base;
> -	crtc->state->crtc = crtc;
> +	__drm_atomic_helper_crtc_reset(crtc, &tcrtc->base);
>  }
>  
>  static struct drm_crtc_state *tidss_crtc_duplicate_state(struct drm_crtc *crtc)
> diff --git a/drivers/gpu/drm/tidss/tidss_kms.c b/drivers/gpu/drm/tidss/tidss_kms.c
> index 4b99e9fa84a5..e6ab59eed259 100644
> --- a/drivers/gpu/drm/tidss/tidss_kms.c
> +++ b/drivers/gpu/drm/tidss/tidss_kms.c
> @@ -278,10 +278,6 @@ int tidss_modeset_init(struct tidss_device *tidss)
>  	if (ret)
>  		return ret;
>  
> -	/* Start with vertical blanking interrupt reporting disabled. */
> -	for (i = 0; i < tidss->num_crtcs; ++i)
> -		drm_crtc_vblank_reset(tidss->crtcs[i]);
> -
>  	drm_mode_config_reset(ddev);
>  
>  	dev_dbg(tidss->dev, "%s done\n", __func__);

-- 
Regards,

Laurent Pinchart
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
