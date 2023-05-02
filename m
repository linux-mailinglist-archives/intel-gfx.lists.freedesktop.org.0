Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 848F26F4A32
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 21:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF1C10E03E;
	Tue,  2 May 2023 19:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA7310E07C;
 Tue,  2 May 2023 19:16:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 405F962023;
 Tue,  2 May 2023 19:16:18 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.55.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id E1D23C433EF;
 Tue,  2 May 2023 19:16:15 +0000 (UTC)
Date: Tue, 2 May 2023 15:16:14 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <ZFFhfsU83EftqhTD@rdvivi-mobl4>
References: <20230425192624.168640-1-jose.souza@intel.com>
 <20230425192624.168640-12-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230425192624.168640-12-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 11/15] drm/i915: Initialize dkl_phy spin
 lock from display code path
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 25, 2023 at 12:26:20PM -0700, José Roberto de Souza wrote:
> drm/i915: Initialize dkl_phy spin lock from display code path

double subject!

but I realized that this ended up in drm-intel-next like this as well
so I kept in here as well...

> 
> Start moving the initialization of display locks from
> i915_driver_early_probe().
> Display locks should be initialized from display-only code paths.
> 
> It was also agreed that if a variable is only used in one file, it
> should be initialized only in that file, so intel_dkl_phy_init() was
> added.
> 
> v2:
> - added intel_display_locks_init()
> 
> v3:
> - rebased
> 
> v4:
> - dropped intel_display_locks_init()
> 
> v5:
> - moved intel_dkl_phy_init() to the beginning of file
> 
> Cc: intel-gfx@lists.freedesktop.org
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20230420170558.35398-1-jose.souza@intel.com
> (cherry picked from commit bfa010f608491036327db20aad1d15e28da0189e)
> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 2 ++
>  drivers/gpu/drm/i915/display/intel_dkl_phy.c        | 9 +++++++++
>  drivers/gpu/drm/i915/display/intel_dkl_phy.h        | 1 +
>  drivers/gpu/drm/i915/i915_driver.c                  | 1 -
>  4 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 92c624f6d2ae7..95669ad1a7975 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -30,6 +30,7 @@
>  #include "intel_display_driver.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
> +#include "intel_dkl_phy.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dpll.h"
> @@ -177,6 +178,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
>  
> +	intel_dkl_phy_init(i915);
>  	intel_color_init_hooks(i915);
>  	intel_init_cdclk_hooks(i915);
>  	intel_audio_hooks_init(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> index 57cc3edba0163..a001232ad445e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> @@ -11,6 +11,15 @@
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  
> +/**
> + * intel_dkl_phy_init - initialize Dekel PHY
> + * @i915: i915 device instance
> + */
> +void intel_dkl_phy_init(struct drm_i915_private *i915)
> +{
> +	spin_lock_init(&i915->display.dkl.phy_lock);
> +}
> +
>  static void
>  dkl_phy_set_hip_idx(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.h b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
> index 570ee36f9386f..5956ec3e940b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
> @@ -12,6 +12,7 @@
>  
>  struct drm_i915_private;
>  
> +void intel_dkl_phy_init(struct drm_i915_private *i915);
>  u32
>  intel_dkl_phy_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg);
>  void
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index decaff25c36cf..a4e11a3c1842f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -225,7 +225,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	mutex_init(&dev_priv->display.wm.wm_mutex);
>  	mutex_init(&dev_priv->display.pps.mutex);
>  	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> -	spin_lock_init(&dev_priv->display.dkl.phy_lock);
>  
>  	i915_memcpy_init_early(dev_priv);
>  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> -- 
> 2.40.0
> 
