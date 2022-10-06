Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5586A5F6BEF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 18:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8284710E324;
	Thu,  6 Oct 2022 16:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8AF10E324
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 16:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665074465; x=1696610465;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WGn/SnX+a+Bj96fpEDfHVfcVrgrISn8n4tZT+E6qcK0=;
 b=mBtH9RkwszFOWETxxDanNPWT8+E30DF2jGPeRdingIcrbQIZb003NIXM
 hQyPul8uhGjsvN47HCzCdsqyXZK4Oyvdg1ozyuIg1B+rAjt5pNW12M2HI
 4A/6z1EwlcPqEb4WUh/POkIxzp1Y7AXxtZPDWxI3iuuGkAaxXOgq7rfXe
 3H4a2lgzHn5sdbg1MJzvDJaWf9jwaiaSqq/2/msNki7cTLiLO5v75qTKE
 Hg2bSXzvCnDCFZTzl2ejDZjYhEDBo0yh+ODOX38at+TgSK7vgGfw0ZZAg
 K1opqcETwuyj1JkuMqOpW0aWL4j07FBpQccgsWbhfqPMlmpQec8ANiY5R g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="305078617"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="305078617"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 09:41:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="687503457"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="687503457"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 06 Oct 2022 09:41:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Oct 2022 19:41:01 +0300
Date: Thu, 6 Oct 2022 19:41:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Yz8FHapUF8BD7kkw@intel.com>
References: <20221006163200.2803722-1-andrzej.hajda@intel.com>
 <20221006163200.2803722-2-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221006163200.2803722-2-andrzej.hajda@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/display: Use drm_device
 alias if defined
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 06, 2022 at 06:31:57PM +0200, Andrzej Hajda wrote:
> Alias is shorter and more readable.

NAK. We want to get rid of these extra 'dev' pointers.

> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c              |  4 ++--
>  drivers/gpu/drm/i915/display/intel_display.c        |  3 +--
>  .../gpu/drm/i915/display/intel_display_debugfs.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c           | 13 +++++--------
>  drivers/gpu/drm/i915/display/intel_opregion.c       |  2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c              |  2 +-
>  7 files changed, 12 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 47f13750f6fa66..bdf874c9f66b00 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	mutex_unlock(&dev->mode_config.mutex);
>  
>  	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
> -		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
> +		drm_err(dev, "DSI fixed mode info missing\n");
>  		goto err;
>  	}
>  
> @@ -2063,7 +2063,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	else
>  		intel_dsi->ports = BIT(port);
>  
> -	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
> +	if (drm_WARN_ON(dev, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
>  		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
>  
>  	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8c3bd9ba0d7481..d49e7aadcec3d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8726,8 +8726,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
>  
>  	intel_gmbus_setup(i915);
>  
> -	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
> -		    INTEL_NUM_PIPES(i915),
> +	drm_dbg_kms(dev, "%d display pipe%s available.\n", INTEL_NUM_PIPES(i915),
>  		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
>  
>  	for_each_pipe(i915, pipe) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 372a5b427e4fbd..03c4d3dc0064fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -998,7 +998,7 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
>  
>  	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
>  
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +	for_each_intel_crtc(dev, crtc) {
>  		struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  		enum pipe pipe = crtc->pipe;
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 352a1b53b63ed6..6bad2e7543c427 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -378,7 +378,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
>  	u32 hpd_retry_bits;
>  
>  	mutex_lock(&dev->mode_config.mutex);
> -	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
> +	drm_dbg_kms(dev, "running encoder hotplug functions\n");
>  
>  	spin_lock_irq(&dev_priv->irq_lock);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index e97e24f690a9f8..fc315fc3457f91 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -847,8 +847,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	}
>  
>  	if (!dev_priv->display.vbt.int_lvds_support) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Internal LVDS support disabled by VBT\n");
> +		drm_dbg_kms(dev, "Internal LVDS support disabled by VBT\n");
>  		return;
>  	}
>  
> @@ -867,12 +866,10 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	pin = GMBUS_PIN_PANEL;
>  	if (!intel_bios_is_lvds_present(dev_priv, &pin)) {
>  		if ((lvds & LVDS_PORT_EN) == 0) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "LVDS is not present in VBT\n");
> +			drm_dbg_kms(dev, "LVDS is not present in VBT\n");
>  			return;
>  		}
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "LVDS is not present in VBT, but enabled anyway\n");
> +		drm_dbg_kms(dev, "LVDS is not present in VBT, but enabled anyway\n");
>  	}
>  
>  	lvds_encoder = kzalloc(sizeof(*lvds_encoder), GFP_KERNEL);
> @@ -993,7 +990,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>  
>  	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
> -	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
> +	drm_dbg_kms(dev, "detected %s-link lvds configuration\n",
>  		    lvds_encoder->is_dual_link ? "dual" : "single");
>  
>  	lvds_encoder->a3_power = lvds & LVDS_A3_POWER_MASK;
> @@ -1001,7 +998,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	return;
>  
>  failed:
> -	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
> +	drm_dbg_kms(dev, "No LVDS modes found, disabling.\n");
>  	drm_connector_cleanup(connector);
>  	drm_encoder_cleanup(encoder);
>  	kfree(lvds_encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index caa07ef34f21ef..ba3666e94fc48d 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -465,7 +465,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
>  	struct opregion_asle *asle = dev_priv->display.opregion.asle;
>  	struct drm_device *dev = &dev_priv->drm;
>  
> -	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
> +	drm_dbg(dev, "bclp = 0x%08x\n", bclp);
>  
>  	if (acpi_video_get_backlight_type() == acpi_backlight_native) {
>  		drm_dbg_kms(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index dee0147a316ce7..fdfe3611e74a76 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1855,7 +1855,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	enum port port;
>  	enum pipe pipe;
>  
> -	drm_dbg_kms(&dev_priv->drm, "\n");
> +	drm_dbg_kms(dev, "\n");
>  
>  	/* There is no detection method for MIPI so rely on VBT */
>  	if (!intel_bios_is_dsi_present(dev_priv, &port))
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
