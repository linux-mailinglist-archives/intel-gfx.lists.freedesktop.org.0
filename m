Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C6CA30C0D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 13:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2831F10E214;
	Tue, 11 Feb 2025 12:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UMckZVAh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DDDF10E1A9;
 Tue, 11 Feb 2025 12:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739278284; x=1770814284;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vPKVOP0JRacOxxMQbqYIW6Dcs8O+G7luMYu20POPNnQ=;
 b=UMckZVAhRK/29iL6Jw9l8HaJkSGom6LH0q8XxzoNz5AHqoVKrv4pE63V
 oRtZEHEDh6AzY7vlD8lrvljOQnxDOwqQo5msaOZmYe45K5ulOUHc04u7v
 ZsN5iZcLcC0r1PgiNkff1ATw3uvIO9+yB0CFTdgTEajbvn6R9JMfpyfn8
 seSXjF41iowqVpS8Q2qZbMT3jkQfLY5Csx3zl2BUCXKNiChadCWu5h1JT
 xF+/4D6Cb6WOkP9h6mOt0/BJQUQ2EU60wHPq6vS8+0u3+Ee66Mbm5pXXM
 2F315ogtYST5Pox9deJmkTjzNtU8UW7OfoUfl8Hp05a2AOOgEENnLWD0R w==;
X-CSE-ConnectionGUID: +5WSi8ZVR5Kn9AOZ1aitFg==
X-CSE-MsgGUID: ez9XdQmcRzq+K9xFJvDBxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="27494209"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="27494209"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 04:51:23 -0800
X-CSE-ConnectionGUID: KXRfhBxKQcCrRCXZneMfLQ==
X-CSE-MsgGUID: eQkl+LC+R9KWkl6nDvgTKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117692627"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 04:51:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 1/9] drm/i915/display_debug_fs: Use intel_display
 wherever possible
In-Reply-To: <20250211104857.3501566-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
 <20250211104857.3501566-2-suraj.kandpal@intel.com>
Date: Tue, 11 Feb 2025 14:51:17 +0200
Message-ID: <878qqc3are.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Use struct intel_display wherever possible in intel_display_debug_fs.c
> to reduce the use of drm_i915_private.
>
> --v2
> -Rebase
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 158 +++++++++---------
>  1 file changed, 81 insertions(+), 77 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 89e5eea90be8..d85924caa26e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -68,17 +68,17 @@ static int intel_display_caps(struct seq_file *m, void *data)
>  
>  static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
>  {
> -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_display *display = node_to_intel_display(m->private);
>  
> -	spin_lock(&dev_priv->display.fb_tracking.lock);
> +	spin_lock(&display->fb_tracking.lock);
>  
>  	seq_printf(m, "FB tracking busy bits: 0x%08x\n",
> -		   dev_priv->display.fb_tracking.busy_bits);
> +		   display->fb_tracking.busy_bits);
>  
>  	seq_printf(m, "FB tracking flip bits: 0x%08x\n",
> -		   dev_priv->display.fb_tracking.flip_bits);
> +		   display->fb_tracking.flip_bits);
>  
> -	spin_unlock(&dev_priv->display.fb_tracking.lock);
> +	spin_unlock(&display->fb_tracking.lock);
>  
>  	return 0;
>  }
> @@ -86,25 +86,25 @@ static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
>  static int i915_sr_status(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> -	struct intel_display *display = &dev_priv->display;
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	intel_wakeref_t wakeref;
>  	bool sr_enabled = false;
>  
>  	wakeref = intel_display_power_get(display, POWER_DOMAIN_INIT);
>  
> -	if (DISPLAY_VER(dev_priv) >= 9)
> +	if (DISPLAY_VER(display) >= 9)
>  		/* no global SR status; inspect per-plane WM */;
>  	else if (HAS_PCH_SPLIT(dev_priv))
> -		sr_enabled = intel_de_read(dev_priv, WM1_LP_ILK) & WM_LP_ENABLE;
> +		sr_enabled = intel_de_read(display, WM1_LP_ILK) & WM_LP_ENABLE;
>  	else if (IS_I965GM(dev_priv) || IS_G4X(dev_priv) ||
>  		 IS_I945G(dev_priv) || IS_I945GM(dev_priv))
> -		sr_enabled = intel_de_read(dev_priv, FW_BLC_SELF) & FW_BLC_SELF_EN;
> +		sr_enabled = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
>  	else if (IS_I915GM(dev_priv))
> -		sr_enabled = intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
> +		sr_enabled = intel_de_read(display, INSTPM) & INSTPM_SELF_EN;
>  	else if (IS_PINEVIEW(dev_priv))
> -		sr_enabled = intel_de_read(dev_priv, DSPFW3(dev_priv)) & PINEVIEW_SELF_REFRESH_EN;
> +		sr_enabled = intel_de_read(display, DSPFW3(dev_priv)) & PINEVIEW_SELF_REFRESH_EN;
>  	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		sr_enabled = intel_de_read(dev_priv, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
> +		sr_enabled = intel_de_read(display, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
>  
>  	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
>  
> @@ -115,12 +115,12 @@ static int i915_sr_status(struct seq_file *m, void *unused)
>  
>  static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
>  {
> -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	struct intel_framebuffer *fbdev_fb = NULL;
>  	struct drm_framebuffer *drm_fb;
>  
>  #ifdef CONFIG_DRM_FBDEV_EMULATION
> -	fbdev_fb = intel_fbdev_framebuffer(dev_priv->display.fbdev.fbdev);
> +	fbdev_fb = intel_fbdev_framebuffer(display->fbdev.fbdev);
>  	if (fbdev_fb) {
>  		seq_printf(m, "fbcon size: %d x %d, depth %d, %d bpp, modifier 0x%llx, refcount %d, obj ",
>  			   fbdev_fb->base.width,
> @@ -134,8 +134,8 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
>  	}
>  #endif
>  
> -	mutex_lock(&dev_priv->drm.mode_config.fb_lock);
> -	drm_for_each_fb(drm_fb, &dev_priv->drm) {
> +	mutex_lock(&display->drm->mode_config.fb_lock);
> +	drm_for_each_fb(drm_fb, display->drm) {
>  		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
>  		if (fb == fbdev_fb)
>  			continue;
> @@ -150,7 +150,7 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
>  		intel_bo_describe(m, intel_fb_bo(&fb->base));
>  		seq_putc(m, '\n');
>  	}
> -	mutex_unlock(&dev_priv->drm.mode_config.fb_lock);
> +	mutex_unlock(&display->drm->mode_config.fb_lock);
>  
>  	return 0;
>  }
> @@ -179,14 +179,14 @@ static void intel_encoder_info(struct seq_file *m,
>  			       struct intel_crtc *crtc,
>  			       struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	struct drm_connector_list_iter conn_iter;
>  	struct drm_connector *connector;
>  
>  	seq_printf(m, "\t[ENCODER:%d:%s]: connectors:\n",
>  		   encoder->base.base.id, encoder->base.name);
>  
> -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	drm_for_each_connector_iter(connector, &conn_iter) {
>  		const struct drm_connector_state *conn_state =
>  			connector->state;
> @@ -391,10 +391,10 @@ static void intel_plane_hw_info(struct seq_file *m, struct intel_plane *plane)
>  
>  static void intel_plane_info(struct seq_file *m, struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	struct intel_plane *plane;
>  
> -	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> +	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
>  		seq_printf(m, "\t[PLANE:%d:%s]: type=%s\n",
>  			   plane->base.base.id, plane->base.name,
>  			   plane_type(plane->base.type));
> @@ -537,7 +537,7 @@ static void crtc_updates_add(struct intel_crtc *crtc)
>  
>  static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	struct drm_printer p = drm_seq_file_printer(m);
>  	const struct intel_crtc_state *crtc_state =
>  		to_intel_crtc_state(crtc->base.state);
> @@ -571,7 +571,7 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  
>  	intel_vdsc_state_dump(&p, 1, crtc_state);
>  
> -	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
> +	for_each_intel_encoder_mask(display->drm, encoder,
>  				    crtc_state->uapi.encoder_mask)
>  		intel_encoder_info(m, crtc, encoder);
>  
> @@ -586,6 +586,7 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  
>  static int i915_display_info(struct seq_file *m, void *unused)
>  {
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
>  	struct intel_crtc *crtc;
>  	struct drm_connector *connector;
> @@ -594,22 +595,22 @@ static int i915_display_info(struct seq_file *m, void *unused)
>  
>  	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
>  
> -	drm_modeset_lock_all(&dev_priv->drm);
> +	drm_modeset_lock_all(display->drm);
>  
>  	seq_printf(m, "CRTC info\n");
>  	seq_printf(m, "---------\n");
> -	for_each_intel_crtc(&dev_priv->drm, crtc)
> +	for_each_intel_crtc(display->drm, crtc)
>  		intel_crtc_info(m, crtc);
>  
>  	seq_printf(m, "\n");
>  	seq_printf(m, "Connector info\n");
>  	seq_printf(m, "--------------\n");
> -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	drm_for_each_connector_iter(connector, &conn_iter)
>  		intel_connector_info(m, connector);
>  	drm_connector_list_iter_end(&conn_iter);
>  
> -	drm_modeset_unlock_all(&dev_priv->drm);
> +	drm_modeset_unlock_all(display->drm);
>  
>  	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
>  
> @@ -618,11 +619,11 @@ static int i915_display_info(struct seq_file *m, void *unused)
>  
>  static int i915_display_capabilities(struct seq_file *m, void *unused)
>  {
> -	struct drm_i915_private *i915 = node_to_i915(m->private);
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	struct drm_printer p = drm_seq_file_printer(m);
>  
> -	intel_display_device_info_print(DISPLAY_INFO(i915),
> -					DISPLAY_RUNTIME_INFO(i915), &p);
> +	intel_display_device_info_print(DISPLAY_INFO(display),
> +					DISPLAY_RUNTIME_INFO(display), &p);
>  
>  	return 0;
>  }
> @@ -630,15 +631,16 @@ static int i915_display_capabilities(struct seq_file *m, void *unused)
>  static int i915_shared_dplls_info(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	struct drm_printer p = drm_seq_file_printer(m);
>  	struct intel_shared_dpll *pll;
>  	int i;
>  
> -	drm_modeset_lock_all(&dev_priv->drm);
> +	drm_modeset_lock_all(display->drm);
>  
>  	drm_printf(&p, "PLL refclks: non-SSC: %d kHz, SSC: %d kHz\n",
> -		   dev_priv->display.dpll.ref_clks.nssc,
> -		   dev_priv->display.dpll.ref_clks.ssc);
> +		   display->dpll.ref_clks.nssc,
> +		   display->dpll.ref_clks.ssc);
>  
>  	for_each_shared_dpll(dev_priv, pll, i) {
>  		drm_printf(&p, "DPLL%i: %s, id: %i\n", pll->index,
> @@ -649,25 +651,25 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
>  		drm_printf(&p, " tracked hardware state:\n");
>  		intel_dpll_dump_hw_state(dev_priv, &p, &pll->state.hw_state);
>  	}
> -	drm_modeset_unlock_all(&dev_priv->drm);
> +	drm_modeset_unlock_all(display->drm);
>  
>  	return 0;
>  }
>  
>  static int i915_ddb_info(struct seq_file *m, void *unused)
>  {
> -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	struct skl_ddb_entry *entry;
>  	struct intel_crtc *crtc;
>  
> -	if (DISPLAY_VER(dev_priv) < 9)
> +	if (DISPLAY_VER(display) < 9)
>  		return -ENODEV;
>  
> -	drm_modeset_lock_all(&dev_priv->drm);
> +	drm_modeset_lock_all(display->drm);
>  
>  	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
>  
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  		enum pipe pipe = crtc->pipe;
> @@ -687,16 +689,16 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
>  			   entry->end, skl_ddb_entry_size(entry));
>  	}
>  
> -	drm_modeset_unlock_all(&dev_priv->drm);
> +	drm_modeset_unlock_all(display->drm);
>  
>  	return 0;
>  }
>  
>  static bool
> -intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
> +intel_lpsp_power_well_enabled(struct intel_display *display,
>  			      enum i915_power_well_id power_well_id)
>  {
> -	struct intel_display *display = &i915->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	intel_wakeref_t wakeref;
>  	bool is_enabled;
>  
> @@ -710,15 +712,16 @@ intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
>  
>  static int i915_lpsp_status(struct seq_file *m, void *unused)
>  {
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	struct drm_i915_private *i915 = node_to_i915(m->private);
>  	bool lpsp_enabled = false;
>  
> -	if (DISPLAY_VER(i915) >= 13 || IS_DISPLAY_VER(i915, 9, 10)) {
> -		lpsp_enabled = !intel_lpsp_power_well_enabled(i915, SKL_DISP_PW_2);
> -	} else if (IS_DISPLAY_VER(i915, 11, 12)) {
> -		lpsp_enabled = !intel_lpsp_power_well_enabled(i915, ICL_DISP_PW_3);
> +	if (DISPLAY_VER(display) >= 13 || IS_DISPLAY_VER(display, 9, 10)) {
> +		lpsp_enabled = !intel_lpsp_power_well_enabled(display, SKL_DISP_PW_2);
> +	} else if (IS_DISPLAY_VER(display, 11, 12)) {
> +		lpsp_enabled = !intel_lpsp_power_well_enabled(display, ICL_DISP_PW_3);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> -		lpsp_enabled = !intel_lpsp_power_well_enabled(i915, HSW_DISP_PW_GLOBAL);
> +		lpsp_enabled = !intel_lpsp_power_well_enabled(display, HSW_DISP_PW_GLOBAL);
>  	} else {
>  		seq_puts(m, "LPSP: not supported\n");
>  		return 0;
> @@ -731,13 +734,13 @@ static int i915_lpsp_status(struct seq_file *m, void *unused)
>  
>  static int i915_dp_mst_info(struct seq_file *m, void *unused)
>  {
> -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_display *display = node_to_intel_display(m->private);
>  	struct intel_encoder *intel_encoder;
>  	struct intel_digital_port *dig_port;
>  	struct drm_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
>  
> -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	drm_for_each_connector_iter(connector, &conn_iter) {
>  		if (connector->connector_type != DRM_MODE_CONNECTOR_DisplayPort)
>  			continue;
> @@ -765,7 +768,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
>  			       const char __user *ubuf,
>  			       size_t cnt, loff_t *ppos)
>  {
> -	struct drm_i915_private *dev_priv = filp->private_data;
> +	struct intel_display *display = filp->private_data;
>  	struct intel_crtc *crtc;
>  	int ret;
>  	bool reset;
> @@ -777,7 +780,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
>  	if (!reset)
>  		return cnt;
>  
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		struct drm_crtc_commit *commit;
>  		struct intel_crtc_state *crtc_state;
>  
> @@ -794,7 +797,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
>  		}
>  
>  		if (!ret && crtc_state->hw.active) {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(display->drm,
>  				    "Re-arming FIFO underruns on pipe %c\n",
>  				    pipe_name(crtc->pipe));
>  
> @@ -807,7 +810,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
>  			return ret;
>  	}
>  
> -	intel_fbc_reset_underrun(&dev_priv->display);
> +	intel_fbc_reset_underrun(display);
>  
>  	return cnt;
>  }
> @@ -839,7 +842,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  	struct drm_minor *minor = i915->drm.primary;
>  
>  	debugfs_create_file("i915_fifo_underrun_reset", 0644, minor->debugfs_root,
> -			    to_i915(minor->dev), &i915_fifo_underrun_reset_ops);
> +			    to_intel_display(minor->dev), &i915_fifo_underrun_reset_ops);

Please don't inline to_intel_display(minor->dev), add a separate local
variable instead. Eventually we'll pass display to
intel_display_debugfs_register(), the local variable will get removed,
and this place doesn't need to be changed.

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  
>  	drm_debugfs_create_files(intel_display_debugfs_list,
>  				 ARRAY_SIZE(intel_display_debugfs_list),
> @@ -860,8 +863,9 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  static int i915_lpsp_capability_show(struct seq_file *m, void *data)
>  {
>  	struct intel_connector *connector = m->private;
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_encoder *encoder = intel_attached_encoder(connector);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	int connector_type = connector->base.connector_type;
>  	bool lpsp_capable = false;
>  
> @@ -871,19 +875,19 @@ static int i915_lpsp_capability_show(struct seq_file *m, void *data)
>  	if (connector->base.status != connector_status_connected)
>  		return -ENODEV;
>  
> -	if (DISPLAY_VER(i915) >= 13)
> +	if (DISPLAY_VER(display) >= 13)
>  		lpsp_capable = encoder->port <= PORT_B;
> -	else if (DISPLAY_VER(i915) >= 12)
> +	else if (DISPLAY_VER(display) >= 12)
>  		/*
>  		 * Actually TGL can drive LPSP on port till DDI_C
>  		 * but there is no physical connected DDI_C on TGL sku's,
>  		 * even driver is not initializing DDI_C port for gen12.
>  		 */
>  		lpsp_capable = encoder->port <= PORT_B;
> -	else if (DISPLAY_VER(i915) == 11)
> +	else if (DISPLAY_VER(display) == 11)
>  		lpsp_capable = (connector_type == DRM_MODE_CONNECTOR_DSI ||
>  				connector_type == DRM_MODE_CONNECTOR_eDP);
> -	else if (IS_DISPLAY_VER(i915, 9, 10))
> +	else if (IS_DISPLAY_VER(display, 9, 10))
>  		lpsp_capable = (encoder->port == PORT_A &&
>  				(connector_type == DRM_MODE_CONNECTOR_DSI ||
>  				 connector_type == DRM_MODE_CONNECTOR_eDP ||
> @@ -900,7 +904,7 @@ DEFINE_SHOW_ATTRIBUTE(i915_lpsp_capability);
>  static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
>  {
>  	struct intel_connector *connector = m->private;
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct drm_crtc *crtc;
>  	struct intel_dp *intel_dp;
>  	struct drm_modeset_acquire_ctx ctx;
> @@ -912,7 +916,7 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
>  
>  	do {
>  		try_again = false;
> -		ret = drm_modeset_lock(&i915->drm.mode_config.connection_mutex,
> +		ret = drm_modeset_lock(&display->drm->mode_config.connection_mutex,
>  				       &ctx);
>  		if (ret) {
>  			if (ret == -EDEADLK && !drm_modeset_backoff(&ctx)) {
> @@ -973,7 +977,7 @@ static ssize_t i915_dsc_fec_support_write(struct file *file,
>  {
>  	struct seq_file *m = file->private_data;
>  	struct intel_connector *connector = m->private;
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_encoder *encoder = intel_attached_encoder(connector);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	bool dsc_enable = false;
> @@ -982,14 +986,14 @@ static ssize_t i915_dsc_fec_support_write(struct file *file,
>  	if (len == 0)
>  		return 0;
>  
> -	drm_dbg(&i915->drm,
> +	drm_dbg(display->drm,
>  		"Copied %zu bytes from user to force DSC\n", len);
>  
>  	ret = kstrtobool_from_user(ubuf, len, &dsc_enable);
>  	if (ret < 0)
>  		return ret;
>  
> -	drm_dbg(&i915->drm, "Got %s for DSC Enable\n",
> +	drm_dbg(display->drm, "Got %s for DSC Enable\n",
>  		(dsc_enable) ? "true" : "false");
>  	intel_dp->force_dsc_en = dsc_enable;
>  
> @@ -1016,7 +1020,7 @@ static const struct file_operations i915_dsc_fec_support_fops = {
>  static int i915_dsc_bpc_show(struct seq_file *m, void *data)
>  {
>  	struct intel_connector *connector = m->private;
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_encoder *encoder = intel_attached_encoder(connector);
>  	struct drm_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
> @@ -1025,7 +1029,7 @@ static int i915_dsc_bpc_show(struct seq_file *m, void *data)
>  	if (!encoder)
>  		return -ENODEV;
>  
> -	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
> +	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
>  	if (ret)
>  		return ret;
>  
> @@ -1038,7 +1042,7 @@ static int i915_dsc_bpc_show(struct seq_file *m, void *data)
>  	crtc_state = to_intel_crtc_state(crtc->state);
>  	seq_printf(m, "Input_BPC: %d\n", crtc_state->dsc.config.bits_per_component);
>  
> -out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> +out:	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>  
>  	return ret;
>  }
> @@ -1082,7 +1086,7 @@ static const struct file_operations i915_dsc_bpc_fops = {
>  static int i915_dsc_output_format_show(struct seq_file *m, void *data)
>  {
>  	struct intel_connector *connector = m->private;
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_encoder *encoder = intel_attached_encoder(connector);
>  	struct drm_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
> @@ -1091,7 +1095,7 @@ static int i915_dsc_output_format_show(struct seq_file *m, void *data)
>  	if (!encoder)
>  		return -ENODEV;
>  
> -	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
> +	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
>  	if (ret)
>  		return ret;
>  
> @@ -1105,7 +1109,7 @@ static int i915_dsc_output_format_show(struct seq_file *m, void *data)
>  	seq_printf(m, "DSC_Output_Format: %s\n",
>  		   intel_output_format_name(crtc_state->output_format));
>  
> -out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> +out:	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>  
>  	return ret;
>  }
> @@ -1149,7 +1153,7 @@ static const struct file_operations i915_dsc_output_format_fops = {
>  static int i915_dsc_fractional_bpp_show(struct seq_file *m, void *data)
>  {
>  	struct intel_connector *connector = m->private;
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_encoder *encoder = intel_attached_encoder(connector);
>  	struct drm_crtc *crtc;
>  	struct intel_dp *intel_dp;
> @@ -1158,7 +1162,7 @@ static int i915_dsc_fractional_bpp_show(struct seq_file *m, void *data)
>  	if (!encoder)
>  		return -ENODEV;
>  
> -	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
> +	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
>  	if (ret)
>  		return ret;
>  
> @@ -1173,7 +1177,7 @@ static int i915_dsc_fractional_bpp_show(struct seq_file *m, void *data)
>  		   str_yes_no(intel_dp->force_dsc_fractional_bpp_en));
>  
>  out:
> -	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>  
>  	return ret;
>  }
> @@ -1184,8 +1188,8 @@ static ssize_t i915_dsc_fractional_bpp_write(struct file *file,
>  {
>  	struct seq_file *m = file->private_data;
>  	struct intel_connector *connector = m->private;
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_encoder *encoder = intel_attached_encoder(connector);
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	bool dsc_fractional_bpp_enable = false;
>  	int ret;
> @@ -1193,14 +1197,14 @@ static ssize_t i915_dsc_fractional_bpp_write(struct file *file,
>  	if (len == 0)
>  		return 0;
>  
> -	drm_dbg(&i915->drm,
> +	drm_dbg(display->drm,
>  		"Copied %zu bytes from user to force fractional bpp for DSC\n", len);
>  
>  	ret = kstrtobool_from_user(ubuf, len, &dsc_fractional_bpp_enable);
>  	if (ret < 0)
>  		return ret;
>  
> -	drm_dbg(&i915->drm, "Got %s for DSC Fractional BPP Enable\n",
> +	drm_dbg(display->drm, "Got %s for DSC Fractional BPP Enable\n",
>  		(dsc_fractional_bpp_enable) ? "true" : "false");
>  	intel_dp->force_dsc_fractional_bpp_en = dsc_fractional_bpp_enable;
>  
> @@ -1329,7 +1333,7 @@ static const struct file_operations i915_joiner_fops = {
>   */
>  void intel_connector_debugfs_add(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct dentry *root = connector->base.debugfs_entry;
>  	int connector_type = connector->base.connector_type;
>  
> @@ -1344,7 +1348,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	intel_alpm_lobf_debugfs_add(connector);
>  	intel_dp_link_training_debugfs_add(connector);
>  
> -	if (DISPLAY_VER(i915) >= 11 &&
> +	if (DISPLAY_VER(display) >= 11 &&
>  	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst_port) ||
>  	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
>  		debugfs_create_file("i915_dsc_fec_support", 0644, root,

-- 
Jani Nikula, Intel
