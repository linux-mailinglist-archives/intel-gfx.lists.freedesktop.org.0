Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E39271D414A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 00:46:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 693C66E3A6;
	Thu, 14 May 2020 22:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426466E3A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 22:46:09 +0000 (UTC)
IronPort-SDR: BB9TnOjxRxr+kAouZSR7iOdqkDjyRUpnJ9X62qrxcBbb+LLcDlkyyjc641oGT/g2IkVslqo+oi
 bdzaedJY4vwg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 15:46:08 -0700
IronPort-SDR: oPfDy+yGag+lWZ8beaSXQFWbt0EB3yq0iShcdZlv+yu/pWHqMFCHCgedShGbnZiQIWcBfkuTUk
 zcFl6A2JyFOw==
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="341772510"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 15:46:08 -0700
Date: Thu, 14 May 2020 15:44:55 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200514224455.GC2129902@intel.com>
References: <20200514154006.4761-1-jani.nikula@intel.com>
 <20200514154006.4761-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514154006.4761-4-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/params: switch to device
 specific parameters
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
Cc: intel-gfx@lists.freedesktop.org,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 14, 2020 at 06:40:06PM +0300, Jani Nikula wrote:
> Start using device specific parameters instead of module parameters for
> most things. The module parameters become the immutable initial values
> for i915 parameters. The device specific parameters in i915->params
> start life as a copy of i915_modparams. Any later changes are only
> reflected in the debugfs.
> =

> The stragglers are:
> =

> * i915.force_probe and i915.modeset. Needed before dev_priv is
>   available. This is fine because the parameters are read-only and never
>   modified.
> =

> * i915.verbose_state_checks. Passing dev_priv to I915_STATE_WARN and
>   I915_STATE_WARN_ON would result in massive and ugly churn. This is
>   handled by not exposing the parameter via debugfs, and leaving the
>   parameter writable in sysfs. This may be fixed up in follow-up work.
> =

> * i915.inject_probe_failure. Only makes sense in terms of the module,
>   not the device. This is handled by not exposing the parameter via
>   debugfs.
> =

> Cc: Juha-Pekka Heikkil=E4 <juha-pekka.heikkila@intel.com>
> Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     |  6 ++---
>  drivers/gpu/drm/i915/display/intel_crt.c      |  4 ++--
>  drivers/gpu/drm/i915/display/intel_csr.c      |  6 ++---
>  drivers/gpu/drm/i915/display/intel_display.c  | 12 +++++-----
>  .../drm/i915/display/intel_display_debugfs.c  |  2 +-
>  .../drm/i915/display/intel_display_power.c    | 14 ++++++------
>  drivers/gpu/drm/i915/display/intel_dp.c       |  8 ++++---
>  .../drm/i915/display/intel_dp_aux_backlight.c |  4 ++--
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 12 +++++-----
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  4 ++--
>  drivers/gpu/drm/i915/display/intel_opregion.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    |  4 ++--
>  drivers/gpu/drm/i915/display/intel_psr.c      |  6 ++---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   |  4 ++--
>  .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  3 ++-
>  drivers/gpu/drm/i915/gt/intel_reset.c         |  6 ++---
>  .../drm/i915/gt/selftest_engine_heartbeat.c   |  6 ++---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 15 ++++++++-----
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +++-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 20 ++++++++---------
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 22 ++++++++++---------
>  drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
>  drivers/gpu/drm/i915/i915_debugfs_params.c    |  7 +-----
>  drivers/gpu/drm/i915/i915_drv.c               |  9 ++++++--
>  drivers/gpu/drm/i915/i915_drv.h               |  5 ++++-
>  drivers/gpu/drm/i915/i915_getparam.c          |  2 +-
>  drivers/gpu/drm/i915/i915_gpu_error.c         |  4 ++--
>  drivers/gpu/drm/i915/intel_gvt.c              |  8 +++----
>  drivers/gpu/drm/i915/intel_region_lmem.c      |  6 ++---
>  drivers/gpu/drm/i915/intel_uncore.c           |  8 +++----
>  30 files changed, 114 insertions(+), 101 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 839124647202..ec8af2b7bf01 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -479,7 +479,7 @@ parse_sdvo_panel_data(struct drm_i915_private *dev_pr=
iv,
>  	struct drm_display_mode *panel_fixed_mode;
>  	int index;
>  =

> -	index =3D i915_modparams.vbt_sdvo_panel_type;
> +	index =3D dev_priv->params.vbt_sdvo_panel_type;
>  	if (index =3D=3D -2) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Ignore SDVO panel mode from BIOS VBT tables.\n");
> @@ -829,9 +829,9 @@ parse_edp(struct drm_i915_private *dev_priv, const st=
ruct bdb_header *bdb)
>  		u8 vswing;
>  =

>  		/* Don't read from VBT if module parameter has valid value*/
> -		if (i915_modparams.edp_vswing) {
> +		if (dev_priv->params.edp_vswing) {
>  			dev_priv->vbt.edp.low_vswing =3D
> -				i915_modparams.edp_vswing =3D=3D 1;
> +				dev_priv->params.edp_vswing =3D=3D 1;
>  		} else {
>  			vswing =3D (edp->edp_vswing_preemph >> (panel_type * 4)) & 0xF;
>  			dev_priv->vbt.edp.low_vswing =3D vswing =3D=3D 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 2f5b9a4baafd..5b4510ce5693 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -833,7 +833,7 @@ intel_crt_detect(struct drm_connector *connector,
>  		    connector->base.id, connector->name,
>  		    force);
>  =

> -	if (i915_modparams.load_detect_test) {
> +	if (dev_priv->params.load_detect_test) {
>  		wakeref =3D intel_display_power_get(dev_priv,
>  						  intel_encoder->power_domain);
>  		goto load_detect;
> @@ -889,7 +889,7 @@ intel_crt_detect(struct drm_connector *connector,
>  		else if (INTEL_GEN(dev_priv) < 4)
>  			status =3D intel_crt_load_detect(crt,
>  				to_intel_crtc(connector->state->crtc)->pipe);
> -		else if (i915_modparams.load_detect_test)
> +		else if (dev_priv->params.load_detect_test)
>  			status =3D connector_status_disconnected;
>  		else
>  			status =3D connector_status_unknown;
> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i=
915/display/intel_csr.c
> index 3112572cfb7d..8c481270a160 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.c
> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> @@ -713,15 +713,15 @@ void intel_csr_ucode_init(struct drm_i915_private *=
dev_priv)
>  		csr->max_fw_size =3D BXT_CSR_MAX_FW_SIZE;
>  	}
>  =

> -	if (i915_modparams.dmc_firmware_path) {
> -		if (strlen(i915_modparams.dmc_firmware_path) =3D=3D 0) {
> +	if (dev_priv->params.dmc_firmware_path) {
> +		if (strlen(dev_priv->params.dmc_firmware_path) =3D=3D 0) {
>  			csr->fw_path =3D NULL;
>  			drm_info(&dev_priv->drm,
>  				 "Disabling CSR firmware and runtime PM\n");
>  			return;
>  		}
>  =

> -		csr->fw_path =3D i915_modparams.dmc_firmware_path;
> +		csr->fw_path =3D dev_priv->params.dmc_firmware_path;
>  		/* Bypass version check for firmware override. */
>  		csr->required_version =3D 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ab621926def1..507ab78b9f3b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4879,7 +4879,7 @@ void intel_prepare_reset(struct drm_i915_private *d=
ev_priv)
>  	int ret;
>  =

>  	/* reset doesn't touch the display */
> -	if (!i915_modparams.force_reset_modeset_test &&
> +	if (!dev_priv->params.force_reset_modeset_test &&
>  	    !gpu_reset_clobbers_display(dev_priv))
>  		return;
>  =

> @@ -7869,7 +7869,7 @@ bool hsw_crtc_state_ips_capable(const struct intel_=
crtc_state *crtc_state)
>  	if (!hsw_crtc_supports_ips(crtc))
>  		return false;
>  =

> -	if (!i915_modparams.enable_ips)
> +	if (!dev_priv->params.enable_ips)
>  		return false;
>  =

>  	if (crtc_state->pipe_bpp > 24)
> @@ -8140,8 +8140,8 @@ static void intel_panel_sanitize_ssc(struct drm_i91=
5_private *dev_priv)
>  =

>  static bool intel_panel_use_ssc(struct drm_i915_private *dev_priv)
>  {
> -	if (i915_modparams.panel_use_ssc >=3D 0)
> -		return i915_modparams.panel_use_ssc !=3D 0;
> +	if (dev_priv->params.panel_use_ssc >=3D 0)
> +		return dev_priv->params.panel_use_ssc !=3D 0;
>  	return dev_priv->vbt.lvds_use_ssc
>  		&& !(dev_priv->quirks & QUIRK_LVDS_SSC_DISABLE);
>  }
> @@ -13571,8 +13571,8 @@ pipe_config_mismatch(bool fastset, const struct i=
ntel_crtc *crtc,
>  =

>  static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>  {
> -	if (i915_modparams.fastboot !=3D -1)
> -		return i915_modparams.fastboot;
> +	if (dev_priv->params.fastboot !=3D -1)
> +		return dev_priv->params.fastboot;
>  =

>  	/* Enable fastboot by default on Skylake and newer */
>  	if (INTEL_GEN(dev_priv) >=3D 9)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 70525623bcdf..87db7e906621 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -125,7 +125,7 @@ static int i915_ips_status(struct seq_file *m, void *=
unused)
>  	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
>  =

>  	seq_printf(m, "Enabled by kernel parameter: %s\n",
> -		   yesno(i915_modparams.enable_ips));
> +		   yesno(dev_priv->params.enable_ips));
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 8) {
>  		seq_puts(m, "Currently: unknown\n");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 49998906cc61..ad6729ba90ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4322,7 +4322,7 @@ static u32 get_allowed_dc_mask(const struct drm_i91=
5_private *dev_priv,
>  		mask =3D 0;
>  	}
>  =

> -	if (!i915_modparams.disable_power_well)
> +	if (!dev_priv->params.disable_power_well)
>  		max_dc =3D 0;
>  =

>  	if (enable_dc >=3D 0 && enable_dc <=3D max_dc) {
> @@ -4408,11 +4408,11 @@ int intel_power_domains_init(struct drm_i915_priv=
ate *dev_priv)
>  	struct i915_power_domains *power_domains =3D &dev_priv->power_domains;
>  	int err;
>  =

> -	i915_modparams.disable_power_well =3D
> +	dev_priv->params.disable_power_well =3D
>  		sanitize_disable_power_well_option(dev_priv,
> -						   i915_modparams.disable_power_well);
> +						   dev_priv->params.disable_power_well);
>  	dev_priv->csr.allowed_dc_mask =3D
> -		get_allowed_dc_mask(dev_priv, i915_modparams.enable_dc);
> +		get_allowed_dc_mask(dev_priv, dev_priv->params.enable_dc);
>  =

>  	dev_priv->csr.target_dc_state =3D
>  		sanitize_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
> @@ -5375,7 +5375,7 @@ void intel_power_domains_init_hw(struct drm_i915_pr=
ivate *i915, bool resume)
>  		intel_display_power_get(i915, POWER_DOMAIN_INIT);
>  =

>  	/* Disable power support if the user asked so. */
> -	if (!i915_modparams.disable_power_well)
> +	if (!i915->params.disable_power_well)
>  		intel_display_power_get(i915, POWER_DOMAIN_INIT);
>  	intel_power_domains_sync_hw(i915);
>  =

> @@ -5399,7 +5399,7 @@ void intel_power_domains_driver_remove(struct drm_i=
915_private *i915)
>  		fetch_and_zero(&i915->power_domains.wakeref);
>  =

>  	/* Remove the refcount we took to keep power well support disabled. */
> -	if (!i915_modparams.disable_power_well)
> +	if (!i915->params.disable_power_well)
>  		intel_display_power_put_unchecked(i915, POWER_DOMAIN_INIT);
>  =

>  	intel_display_power_flush_work_sync(i915);
> @@ -5488,7 +5488,7 @@ void intel_power_domains_suspend(struct drm_i915_pr=
ivate *i915,
>  	 * Even if power well support was disabled we still want to disable
>  	 * power wells if power domains must be deinitialized for suspend.
>  	 */
> -	if (!i915_modparams.disable_power_well)
> +	if (!i915->params.disable_power_well)
>  		intel_display_power_put_unchecked(i915, POWER_DOMAIN_INIT);
>  =

>  	intel_display_power_flush_work(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 408c3c1c5e81..dec0cdce0e68 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4745,7 +4745,9 @@ intel_dp_sink_can_mst(struct intel_dp *intel_dp)
>  static bool
>  intel_dp_can_mst(struct intel_dp *intel_dp)
>  {
> -	return i915_modparams.enable_dp_mst &&
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +
> +	return i915->params.enable_dp_mst &&
>  		intel_dp->can_mst &&
>  		intel_dp_sink_can_mst(intel_dp);
>  }
> @@ -4762,13 +4764,13 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>  		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
>  		    encoder->base.base.id, encoder->base.name,
>  		    yesno(intel_dp->can_mst), yesno(sink_can_mst),
> -		    yesno(i915_modparams.enable_dp_mst));
> +		    yesno(i915->params.enable_dp_mst));
>  =

>  	if (!intel_dp->can_mst)
>  		return;
>  =

>  	intel_dp->is_mst =3D sink_can_mst &&
> -		i915_modparams.enable_dp_mst;
> +		i915->params.enable_dp_mst;
>  =

>  	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
>  					intel_dp->is_mst);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/driv=
ers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 0722540d64ad..acbd7eb66cbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -348,7 +348,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_co=
nnector *intel_connector)
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(intel_connector->encoder);
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  =

> -	if (i915_modparams.enable_dpcd_backlight =3D=3D 0 ||
> +	if (i915->params.enable_dpcd_backlight =3D=3D 0 ||
>  	    !intel_dp_aux_display_control_capable(intel_connector))
>  		return -ENODEV;
>  =

> @@ -358,7 +358,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_co=
nnector *intel_connector)
>  	 */
>  	if (i915->vbt.backlight.type !=3D
>  	    INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
> -	    i915_modparams.enable_dpcd_backlight !=3D 1 &&
> +	    i915->params.enable_dpcd_backlight !=3D 1 &&
>  	    !drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
>  			      DP_QUIRK_FORCE_DPCD_BACKLIGHT)) {
>  		drm_info(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 1c26673acb2d..30649e17cfb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -740,7 +740,7 @@ static bool intel_fbc_can_enable(struct drm_i915_priv=
ate *dev_priv)
>  		return false;
>  	}
>  =

> -	if (!i915_modparams.enable_fbc) {
> +	if (!dev_priv->params.enable_fbc) {
>  		fbc->no_fbc_reason =3D "disabled per module param or by default";
>  		return false;
>  	}
> @@ -1017,7 +1017,7 @@ static void __intel_fbc_post_update(struct intel_cr=
tc *crtc)
>  =

>  	fbc->flip_pending =3D false;
>  =

> -	if (!i915_modparams.enable_fbc) {
> +	if (!dev_priv->params.enable_fbc) {
>  		intel_fbc_deactivate(dev_priv, "disabled at runtime per module param");
>  		__intel_fbc_disable(dev_priv);
>  =

> @@ -1370,8 +1370,8 @@ void intel_fbc_handle_fifo_underrun_irq(struct drm_=
i915_private *dev_priv)
>   */
>  static int intel_sanitize_fbc_option(struct drm_i915_private *dev_priv)
>  {
> -	if (i915_modparams.enable_fbc >=3D 0)
> -		return !!i915_modparams.enable_fbc;
> +	if (dev_priv->params.enable_fbc >=3D 0)
> +		return !!dev_priv->params.enable_fbc;
>  =

>  	if (!HAS_FBC(dev_priv))
>  		return 0;
> @@ -1415,9 +1415,9 @@ void intel_fbc_init(struct drm_i915_private *dev_pr=
iv)
>  	if (need_fbc_vtd_wa(dev_priv))
>  		mkwrite_device_info(dev_priv)->display.has_fbc =3D false;
>  =

> -	i915_modparams.enable_fbc =3D intel_sanitize_fbc_option(dev_priv);
> +	dev_priv->params.enable_fbc =3D intel_sanitize_fbc_option(dev_priv);
>  	drm_dbg_kms(&dev_priv->drm, "Sanitized enable_fbc value: %d\n",
> -		    i915_modparams.enable_fbc);
> +		    dev_priv->params.enable_fbc);
>  =

>  	if (!HAS_FBC(dev_priv)) {
>  		fbc->no_fbc_reason =3D "unsupported by this chipset";
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 872f2a489339..1888611244db 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -784,8 +784,8 @@ static bool compute_is_dual_link_lvds(struct intel_lv=
ds_encoder *lvds_encoder)
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  =

>  	/* use the module option value if specified */
> -	if (i915_modparams.lvds_channel_mode > 0)
> -		return i915_modparams.lvds_channel_mode =3D=3D 2;
> +	if (dev_priv->params.lvds_channel_mode > 0)
> +		return dev_priv->params.lvds_channel_mode =3D=3D 2;
>  =

>  	/* single channel LVDS is limited to 112 MHz */
>  	if (lvds_encoder->attached_connector->panel.fixed_mode->clock > 112999)
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
> index cc6b00959586..de995362f428 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -801,7 +801,7 @@ static int intel_load_vbt_firmware(struct drm_i915_pr=
ivate *dev_priv)
>  {
>  	struct intel_opregion *opregion =3D &dev_priv->opregion;
>  	const struct firmware *fw =3D NULL;
> -	const char *name =3D i915_modparams.vbt_firmware;
> +	const char *name =3D dev_priv->params.vbt_firmware;
>  	int ret;
>  =

>  	if (!name || !*name)
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index aa931f9f0d6a..c6d1876b3e8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -531,10 +531,10 @@ static u32 intel_panel_compute_brightness(struct in=
tel_connector *connector,
>  =

>  	drm_WARN_ON(&dev_priv->drm, panel->backlight.max =3D=3D 0);
>  =

> -	if (i915_modparams.invert_brightness < 0)
> +	if (dev_priv->params.invert_brightness < 0)
>  		return val;
>  =

> -	if (i915_modparams.invert_brightness > 0 ||
> +	if (dev_priv->params.invert_brightness > 0 ||
>  	    dev_priv->quirks & QUIRK_INVERT_BRIGHTNESS) {
>  		return panel->backlight.max - val + panel->backlight.min;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index b7a2c102648a..c84a2ed19f7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -83,7 +83,7 @@ static bool psr_global_enabled(struct drm_i915_private =
*i915)
>  {
>  	switch (i915->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
>  	case I915_PSR_DEBUG_DEFAULT:
> -		return i915_modparams.enable_psr;
> +		return i915->params.enable_psr;
>  	case I915_PSR_DEBUG_DISABLE:
>  		return false;
>  	default:
> @@ -1450,9 +1450,9 @@ void intel_psr_init(struct drm_i915_private *dev_pr=
iv)
>  		 */
>  		dev_priv->hsw_psr_mmio_adjust =3D _SRD_CTL_EDP - _HSW_EDP_PSR_BASE;
>  =

> -	if (i915_modparams.enable_psr =3D=3D -1)
> +	if (dev_priv->params.enable_psr =3D=3D -1)
>  		if (INTEL_GEN(dev_priv) < 9 || !dev_priv->vbt.psr.enable)
> -			i915_modparams.enable_psr =3D 0;
> +			dev_priv->params.enable_psr =3D 0;
>  =

>  	/* Set link_standby x link_off defaults */
>  	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_context.c
> index 900ea8b7fc8f..1d980dd6b186 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -650,7 +650,7 @@ static void context_close(struct i915_gem_context *ct=
x)
>  	 * context close.
>  	 */
>  	if (!i915_gem_context_is_persistent(ctx) ||
> -	    !i915_modparams.enable_hangcheck)
> +	    !ctx->i915->params.enable_hangcheck)
>  		kill_context(ctx);
>  =

>  	i915_gem_context_put(ctx);
> @@ -667,7 +667,7 @@ static int __context_set_persistence(struct i915_gem_=
context *ctx, bool state)
>  		 * reset] are allowed to survive past termination. We require
>  		 * hangcheck to ensure that the persistent requests are healthy.
>  		 */
> -		if (!i915_modparams.enable_hangcheck)
> +		if (!ctx->i915->params.enable_hangcheck)
>  			return -EINVAL;
>  =

>  		i915_gem_context_set_persistence(ctx);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/g=
pu/drm/i915/gt/intel_engine_heartbeat.c
> index 5136c8bf112d..1ed4c95b2ea6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -4,6 +4,7 @@
>   * Copyright =A9 2019 Intel Corporation
>   */
>  =

> +#include "i915_drv.h"
>  #include "i915_request.h"
>  =

>  #include "intel_context.h"
> @@ -117,7 +118,7 @@ static void heartbeat(struct work_struct *wrk)
>  		goto unlock;
>  =

>  	idle_pulse(engine, rq);
> -	if (i915_modparams.enable_hangcheck)
> +	if (engine->i915->params.enable_hangcheck)
>  		engine->heartbeat.systole =3D i915_request_get(rq);
>  =

>  	__i915_request_commit(rq);
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915=
/gt/intel_reset.c
> index 39070b514e65..0156f1f5c736 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -638,7 +638,7 @@ int __intel_gt_reset(struct intel_gt *gt, intel_engin=
e_mask_t engine_mask)
>  =

>  bool intel_has_gpu_reset(const struct intel_gt *gt)
>  {
> -	if (!i915_modparams.reset)
> +	if (!gt->i915->params.reset)
>  		return NULL;
>  =

>  	return intel_get_gpu_reset(gt);
> @@ -646,7 +646,7 @@ bool intel_has_gpu_reset(const struct intel_gt *gt)
>  =

>  bool intel_has_reset_engine(const struct intel_gt *gt)
>  {
> -	if (i915_modparams.reset < 2)
> +	if (gt->i915->params.reset < 2)
>  		return false;
>  =

>  	return INTEL_INFO(gt->i915)->has_reset_engine;
> @@ -1038,7 +1038,7 @@ void intel_gt_reset(struct intel_gt *gt,
>  	awake =3D reset_prepare(gt);
>  =

>  	if (!intel_has_gpu_reset(gt)) {
> -		if (i915_modparams.reset)
> +		if (gt->i915->params.reset)
>  			drm_err(&gt->i915->drm, "GPU reset not supported\n");
>  		else
>  			drm_dbg(&gt->i915->drm, "GPU reset disabled\n");
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/driver=
s/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> index 697114dd1f47..9f04c54c4d0f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> @@ -386,11 +386,11 @@ int intel_heartbeat_live_selftests(struct drm_i915_=
private *i915)
>  	if (intel_gt_is_wedged(&i915->gt))
>  		return 0;
>  =

> -	saved_hangcheck =3D i915_modparams.enable_hangcheck;
> -	i915_modparams.enable_hangcheck =3D INT_MAX;
> +	saved_hangcheck =3D i915->params.enable_hangcheck;
> +	i915->params.enable_hangcheck =3D INT_MAX;
>  =

>  	err =3D intel_gt_live_subtests(tests, &i915->gt);
>  =

> -	i915_modparams.enable_hangcheck =3D saved_hangcheck;
> +	i915->params.enable_hangcheck =3D saved_hangcheck;
>  	return err;
>  }
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm=
/i915/gt/uc/intel_guc_log.c
> index fb10f3597ea5..9bbe8a795cb8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -424,25 +424,28 @@ static void guc_log_capture_logs(struct intel_guc_l=
og *log)
>  =

>  static u32 __get_default_log_level(struct intel_guc_log *log)
>  {
> +	struct intel_guc *guc =3D log_to_guc(log);
> +	struct drm_i915_private *i915 =3D guc_to_gt(guc)->i915;
> +
>  	/* A negative value means "use platform/config default" */
> -	if (i915_modparams.guc_log_level < 0) {
> +	if (i915->params.guc_log_level < 0) {
>  		return (IS_ENABLED(CONFIG_DRM_I915_DEBUG) ||
>  			IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) ?
>  			GUC_LOG_LEVEL_MAX : GUC_LOG_LEVEL_NON_VERBOSE;
>  	}
>  =

> -	if (i915_modparams.guc_log_level > GUC_LOG_LEVEL_MAX) {
> +	if (i915->params.guc_log_level > GUC_LOG_LEVEL_MAX) {
>  		DRM_WARN("Incompatible option detected: %s=3D%d, %s!\n",
> -			 "guc_log_level", i915_modparams.guc_log_level,
> +			 "guc_log_level", i915->params.guc_log_level,
>  			 "verbosity too high");
>  		return (IS_ENABLED(CONFIG_DRM_I915_DEBUG) ||
>  			IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) ?
>  			GUC_LOG_LEVEL_MAX : GUC_LOG_LEVEL_DISABLED;
>  	}
>  =

> -	GEM_BUG_ON(i915_modparams.guc_log_level < GUC_LOG_LEVEL_DISABLED);
> -	GEM_BUG_ON(i915_modparams.guc_log_level > GUC_LOG_LEVEL_MAX);
> -	return i915_modparams.guc_log_level;
> +	GEM_BUG_ON(i915->params.guc_log_level < GUC_LOG_LEVEL_DISABLED);
> +	GEM_BUG_ON(i915->params.guc_log_level > GUC_LOG_LEVEL_MAX);
> +	return i915->params.guc_log_level;
>  }
>  =

>  int intel_guc_log_create(struct intel_guc_log *log)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/=
gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 94eb63f309ce..fdfeb4b9b0f5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -660,10 +660,12 @@ void intel_guc_submission_disable(struct intel_guc =
*guc)
>  =

>  static bool __guc_submission_selected(struct intel_guc *guc)
>  {
> +	struct drm_i915_private *i915 =3D guc_to_gt(guc)->i915;
> +
>  	if (!intel_guc_submission_is_supported(guc))
>  		return false;
>  =

> -	return i915_modparams.enable_guc & ENABLE_GUC_SUBMISSION;
> +	return i915->params.enable_guc & ENABLE_GUC_SUBMISSION;
>  }
>  =

>  void intel_guc_submission_init_early(struct intel_guc *guc)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915=
/gt/uc/intel_uc.c
> index f518fe05c6f9..1c2d6358826c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -47,15 +47,15 @@ static void __confirm_options(struct intel_uc *uc)
>  =

>  	drm_dbg(&i915->drm,
>  		"enable_guc=3D%d (guc:%s submission:%s huc:%s)\n",
> -		i915_modparams.enable_guc,
> +		i915->params.enable_guc,
>  		yesno(intel_uc_wants_guc(uc)),
>  		yesno(intel_uc_wants_guc_submission(uc)),
>  		yesno(intel_uc_wants_huc(uc)));
>  =

> -	if (i915_modparams.enable_guc =3D=3D -1)
> +	if (i915->params.enable_guc =3D=3D -1)
>  		return;
>  =

> -	if (i915_modparams.enable_guc =3D=3D 0) {
> +	if (i915->params.enable_guc =3D=3D 0) {
>  		GEM_BUG_ON(intel_uc_wants_guc(uc));
>  		GEM_BUG_ON(intel_uc_wants_guc_submission(uc));
>  		GEM_BUG_ON(intel_uc_wants_huc(uc));
> @@ -65,25 +65,25 @@ static void __confirm_options(struct intel_uc *uc)
>  	if (!intel_uc_supports_guc(uc))
>  		drm_info(&i915->drm,
>  			 "Incompatible option enable_guc=3D%d - %s\n",
> -			 i915_modparams.enable_guc, "GuC is not supported!");
> +			 i915->params.enable_guc, "GuC is not supported!");
>  =

> -	if (i915_modparams.enable_guc & ENABLE_GUC_LOAD_HUC &&
> +	if (i915->params.enable_guc & ENABLE_GUC_LOAD_HUC &&
>  	    !intel_uc_supports_huc(uc))
>  		drm_info(&i915->drm,
>  			 "Incompatible option enable_guc=3D%d - %s\n",
> -			 i915_modparams.enable_guc, "HuC is not supported!");
> +			 i915->params.enable_guc, "HuC is not supported!");
>  =

> -	if (i915_modparams.enable_guc & ENABLE_GUC_SUBMISSION &&
> +	if (i915->params.enable_guc & ENABLE_GUC_SUBMISSION &&
>  	    !intel_uc_supports_guc_submission(uc))
>  		drm_info(&i915->drm,
>  			 "Incompatible option enable_guc=3D%d - %s\n",
> -			 i915_modparams.enable_guc, "GuC submission is N/A");
> +			 i915->params.enable_guc, "GuC submission is N/A");
>  =

> -	if (i915_modparams.enable_guc & ~(ENABLE_GUC_SUBMISSION |
> +	if (i915->params.enable_guc & ~(ENABLE_GUC_SUBMISSION |
>  					  ENABLE_GUC_LOAD_HUC))
>  		drm_info(&i915->drm,
>  			 "Incompatible option enable_guc=3D%d - %s\n",
> -			 i915_modparams.enable_guc, "undocumented flag");
> +			 i915->params.enable_guc, "undocumented flag");
>  }
>  =

>  void intel_uc_init_early(struct intel_uc *uc)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i=
915/gt/uc/intel_uc_fw.c
> index e1caae93996d..ef777e207f5c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -114,6 +114,7 @@ struct __packed uc_fw_platform_requirement {
>  static void
>  __uc_fw_auto_select(struct intel_uc_fw *uc_fw, enum intel_platform p, u8=
 rev)
>  {
> +	struct drm_i915_private *i915 =3D __uc_fw_to_gt(uc_fw)->i915;
>  	static const struct uc_fw_platform_requirement fw_blobs[] =3D {
>  		INTEL_UC_FIRMWARE_DEFS(MAKE_FW_LIST, GUC_FW_BLOB, HUC_FW_BLOB)
>  	};
> @@ -151,35 +152,36 @@ __uc_fw_auto_select(struct intel_uc_fw *uc_fw, enum=
 intel_platform p, u8 rev)
>  	}
>  =

>  	/* We don't want to enable GuC/HuC on pre-Gen11 by default */
> -	if (i915_modparams.enable_guc =3D=3D -1 && p < INTEL_ICELAKE)
> +	if (i915->params.enable_guc =3D=3D -1 && p < INTEL_ICELAKE)
>  		uc_fw->path =3D NULL;
>  }
>  =

> -static const char *__override_guc_firmware_path(void)
> +static const char *__override_guc_firmware_path(struct drm_i915_private =
*i915)
>  {
> -	if (i915_modparams.enable_guc & (ENABLE_GUC_SUBMISSION |
> -					 ENABLE_GUC_LOAD_HUC))
> -		return i915_modparams.guc_firmware_path;
> +	if (i915->params.enable_guc & (ENABLE_GUC_SUBMISSION |
> +				       ENABLE_GUC_LOAD_HUC))
> +		return i915->params.guc_firmware_path;
>  	return "";
>  }
>  =

> -static const char *__override_huc_firmware_path(void)
> +static const char *__override_huc_firmware_path(struct drm_i915_private =
*i915)
>  {
> -	if (i915_modparams.enable_guc & ENABLE_GUC_LOAD_HUC)
> -		return i915_modparams.huc_firmware_path;
> +	if (i915->params.enable_guc & ENABLE_GUC_LOAD_HUC)
> +		return i915->params.huc_firmware_path;
>  	return "";
>  }
>  =

>  static void __uc_fw_user_override(struct intel_uc_fw *uc_fw)
>  {
> +	struct drm_i915_private *i915 =3D __uc_fw_to_gt(uc_fw)->i915;
>  	const char *path =3D NULL;
>  =

>  	switch (uc_fw->type) {
>  	case INTEL_UC_FW_TYPE_GUC:
> -		path =3D __override_guc_firmware_path();
> +		path =3D __override_guc_firmware_path(i915);
>  		break;
>  	case INTEL_UC_FW_TYPE_HUC:
> -		path =3D __override_huc_firmware_path();
> +		path =3D __override_huc_firmware_path(i915);
>  		break;
>  	}
>  =

> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index 8e98df6a3045..9c190c7d8f74 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -64,7 +64,7 @@ static int i915_capabilities(struct seq_file *m, void *=
data)
>  	intel_driver_caps_print(&i915->caps, &p);
>  =

>  	kernel_param_lock(THIS_MODULE);
> -	i915_params_dump(&i915_modparams, &p);
> +	i915_params_dump(&i915->params, &p);
>  	kernel_param_unlock(THIS_MODULE);
>  =

>  	return 0;
> diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm=
/i915/i915_debugfs_params.c
> index 62b2c5f0495d..4e2b077692cb 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs_params.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
> @@ -138,9 +138,6 @@ static ssize_t i915_param_charp_write(struct file *fi=
le,
>  	char **s =3D m->private;
>  	char *new, *old;
>  =

> -	/* FIXME: remove locking after params aren't the module params */
> -	kernel_param_lock(THIS_MODULE);
> -
>  	old =3D *s;
>  	new =3D strndup_user(ubuf, PAGE_SIZE);
>  	if (IS_ERR(new)) {
> @@ -152,8 +149,6 @@ static ssize_t i915_param_charp_write(struct file *fi=
le,
>  =

>  	kfree(old);
>  out:
> -	kernel_param_unlock(THIS_MODULE);
> -
>  	return len;
>  }
>  =

> @@ -229,7 +224,7 @@ _i915_param_create_file(struct dentry *parent, const =
char *name,
>  struct dentry *i915_debugfs_params(struct drm_i915_private *i915)
>  {
>  	struct drm_minor *minor =3D i915->drm.primary;
> -	struct i915_params *params =3D &i915_modparams;
> +	struct i915_params *params =3D &i915->params;
>  	struct dentry *dir;
>  =

>  	dir =3D debugfs_create_dir("i915_params", minor->debugfs_root);
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 34ee12f3f02d..67102dc26fce 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -501,6 +501,8 @@ static void i915_driver_late_release(struct drm_i915_=
private *dev_priv)
>  =

>  	cpu_latency_qos_remove_request(&dev_priv->sb_qos);
>  	mutex_destroy(&dev_priv->sb_lock);
> +
> +	i915_params_free(&dev_priv->params);
>  }
>  =

>  /**
> @@ -915,6 +917,9 @@ i915_driver_create(struct pci_dev *pdev, const struct=
 pci_device_id *ent)
>  	i915->drm.pdev =3D pdev;
>  	pci_set_drvdata(pdev, i915);
>  =

> +	/* Device parameters start as a copy of module parameters. */
> +	i915_params_copy(&i915->params, &i915_modparams);
> +
>  	/* Setup the write-once "constant" device info */
>  	device_info =3D mkwrite_device_info(i915);
>  	memcpy(device_info, match_info, sizeof(*device_info));
> @@ -948,7 +953,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>  		return PTR_ERR(i915);
>  =

>  	/* Disable nuclear pageflip by default on pre-ILK */
> -	if (!i915_modparams.nuclear_pageflip && match_info->gen < 5)
> +	if (!i915->params.nuclear_pageflip && match_info->gen < 5)
>  		i915->drm.driver_features &=3D ~DRIVER_ATOMIC;
>  =

>  	/*
> @@ -958,7 +963,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>  	if (IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)) {
>  		if (INTEL_GEN(i915) >=3D 9 && i915_selftest.live < 0 &&
> -		    i915_modparams.fake_lmem_start) {
> +		    i915->params.fake_lmem_start) {
>  			mkwrite_device_info(i915)->memory_regions =3D
>  				REGION_SMEM | REGION_LMEM | REGION_STOLEN;
>  			mkwrite_device_info(i915)->is_dgfx =3D true;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index a378d52341e6..32e899c52ed9 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -829,6 +829,9 @@ struct drm_i915_private {
>  	/* FIXME: Device release actions should all be moved to drmm_ */
>  	bool do_release;
>  =

> +	/* i915 device parameters */
> +	struct i915_params params;
> +
>  	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
>  	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
>  	struct intel_driver_caps caps;
> @@ -1658,7 +1661,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->pipe_mask !=3D 0)
>  =

>  /* Only valid when HAS_DISPLAY() is true */
> -#define INTEL_DISPLAY_ENABLED(dev_priv) (WARN_ON(!HAS_DISPLAY(dev_priv))=
, !i915_modparams.disable_display)
> +#define INTEL_DISPLAY_ENABLED(dev_priv) (WARN_ON(!HAS_DISPLAY(dev_priv))=
, !dev_priv->params.disable_display)
>  =

>  static inline bool intel_vtd_active(void)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/=
i915_getparam.c
> index 54fce81d5724..c4a1fac9eb93 100644
> --- a/drivers/gpu/drm/i915/i915_getparam.c
> +++ b/drivers/gpu/drm/i915/i915_getparam.c
> @@ -80,7 +80,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *d=
ata,
>  			return -ENODEV;
>  		break;
>  	case I915_PARAM_HAS_GPU_RESET:
> -		value =3D i915_modparams.enable_hangcheck &&
> +		value =3D i915->params.enable_hangcheck &&
>  			intel_has_gpu_reset(&i915->gt);
>  		if (value && intel_has_reset_engine(&i915->gt))
>  			value =3D 2;
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915=
/i915_gpu_error.c
> index eec292d06f11..866166ada10e 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1698,7 +1698,7 @@ static void capture_gen(struct i915_gpu_coredump *e=
rror)
>  	error->reset_count =3D i915_reset_count(&i915->gpu_error);
>  	error->suspend_count =3D i915->suspend_count;
>  =

> -	i915_params_copy(&error->params, &i915_modparams);
> +	i915_params_copy(&error->params, &i915->params);
>  	memcpy(&error->device_info,
>  	       INTEL_INFO(i915),
>  	       sizeof(error->device_info));
> @@ -1713,7 +1713,7 @@ i915_gpu_coredump_alloc(struct drm_i915_private *i9=
15, gfp_t gfp)
>  {
>  	struct i915_gpu_coredump *error;
>  =

> -	if (!i915_modparams.error_capture)
> +	if (!i915->params.error_capture)
>  		return NULL;
>  =

>  	error =3D kzalloc(sizeof(*error), gfp);
> diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/inte=
l_gvt.c
> index 21b91313cc5d..d9bb9a759740 100644
> --- a/drivers/gpu/drm/i915/intel_gvt.c
> +++ b/drivers/gpu/drm/i915/intel_gvt.c
> @@ -64,7 +64,7 @@ static bool is_supported_device(struct drm_i915_private=
 *dev_priv)
>   */
>  void intel_gvt_sanitize_options(struct drm_i915_private *dev_priv)
>  {
> -	if (!i915_modparams.enable_gvt)
> +	if (!dev_priv->params.enable_gvt)
>  		return;
>  =

>  	if (intel_vgpu_active(dev_priv)) {
> @@ -80,7 +80,7 @@ void intel_gvt_sanitize_options(struct drm_i915_private=
 *dev_priv)
>  =

>  	return;
>  bail:
> -	i915_modparams.enable_gvt =3D 0;
> +	dev_priv->params.enable_gvt =3D 0;
>  }
>  =

>  /**
> @@ -100,7 +100,7 @@ int intel_gvt_init(struct drm_i915_private *dev_priv)
>  	if (i915_inject_probe_failure(dev_priv))
>  		return -ENODEV;
>  =

> -	if (!i915_modparams.enable_gvt) {
> +	if (!dev_priv->params.enable_gvt) {
>  		drm_dbg(&dev_priv->drm,
>  			"GVT-g is disabled by kernel params\n");
>  		return 0;
> @@ -121,7 +121,7 @@ int intel_gvt_init(struct drm_i915_private *dev_priv)
>  	return 0;
>  =

>  bail:
> -	i915_modparams.enable_gvt =3D 0;
> +	dev_priv->params.enable_gvt =3D 0;
>  	return 0;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/intel_region_lmem.c b/drivers/gpu/drm/i=
915/intel_region_lmem.c
> index 14b59b899c9b..40d8f1a95df6 100644
> --- a/drivers/gpu/drm/i915/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/intel_region_lmem.c
> @@ -76,7 +76,7 @@ region_lmem_init(struct intel_memory_region *mem)
>  {
>  	int ret;
>  =

> -	if (i915_modparams.fake_lmem_start) {
> +	if (mem->i915->params.fake_lmem_start) {
>  		ret =3D init_fake_lmem_bar(mem);
>  		GEM_BUG_ON(ret);
>  	}
> @@ -111,12 +111,12 @@ intel_setup_fake_lmem(struct drm_i915_private *i915)
>  	resource_size_t start;
>  =

>  	GEM_BUG_ON(i915_ggtt_has_aperture(&i915->ggtt));
> -	GEM_BUG_ON(!i915_modparams.fake_lmem_start);
> +	GEM_BUG_ON(!i915->params.fake_lmem_start);
>  =

>  	/* Your mappable aperture belongs to me now! */
>  	mappable_end =3D pci_resource_len(pdev, 2);
>  	io_start =3D pci_resource_start(pdev, 2),
> -	start =3D i915_modparams.fake_lmem_start;
> +	start =3D i915->params.fake_lmem_start;
>  =

>  	mem =3D intel_memory_region_create(i915,
>  					 start,
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/i=
ntel_uncore.c
> index a61cb8ca4d50..fb08b24e92c8 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1185,7 +1185,7 @@ __unclaimed_reg_debug(struct intel_uncore *uncore,
>  		     read ? "read from" : "write to",
>  		     i915_mmio_reg_offset(reg)))
>  		/* Only report the first N failures */
> -		i915_modparams.mmio_debug--;
> +		uncore->i915->params.mmio_debug--;
>  }
>  =

>  static inline void
> @@ -1194,7 +1194,7 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
>  		    const bool read,
>  		    const bool before)
>  {
> -	if (likely(!i915_modparams.mmio_debug))
> +	if (likely(!uncore->i915->params.mmio_debug))
>  		return;
>  =

>  	/* interrupts are disabled and re-enabled around uncore->lock usage */
> @@ -2093,12 +2093,12 @@ intel_uncore_arm_unclaimed_mmio_detection(struct =
intel_uncore *uncore)
>  		goto out;
>  =

>  	if (unlikely(check_for_unclaimed_mmio(uncore))) {
> -		if (!i915_modparams.mmio_debug) {
> +		if (!uncore->i915->params.mmio_debug) {
>  			drm_dbg(&uncore->i915->drm,
>  				"Unclaimed register detected, "
>  				"enabling oneshot unclaimed register reporting. "
>  				"Please use i915.mmio_debug=3DN for more information.\n");
> -			i915_modparams.mmio_debug++;
> +			uncore->i915->params.mmio_debug++;
>  		}
>  		uncore->debug->unclaimed_mmio_check--;
>  		ret =3D true;
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
