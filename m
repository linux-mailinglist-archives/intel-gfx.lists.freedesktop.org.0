Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC2B34EEA1
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 19:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 647EB6E920;
	Tue, 30 Mar 2021 17:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06FC46E920
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Mar 2021 17:00:50 +0000 (UTC)
IronPort-SDR: 8N75JXgbbp3bJ4sDCx7/wFsKpsswxn9CzhALza12ZZwEELfLu220eAN6hnS86rCkAbaRcu1Q4z
 6iYg358B5vKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="191285736"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="191285736"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 10:00:50 -0700
IronPort-SDR: xlW75/Q8ESeAK1hg+frggUI+0UbMbCxNbj9k+rV1mDXI2TQVfsp9j99ZhZmdCRJho/FRjBH96G
 BV1oQrKyGdIQ==
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="393679616"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.205])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 10:00:50 -0700
Date: Tue, 30 Mar 2021 10:00:52 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210330170052.GC4484@InViCtUs>
References: <20210322205805.62205-1-jose.souza@intel.com>
 <20210322205805.62205-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322205805.62205-3-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915: skip display
 initialization when there is no display
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
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 22, 2021 at 01:58:05PM -0700, Jos=E9 Roberto de Souza wrote:
> Display features should not be initialized or de-initialized when there
> is no display. Skip modeset initialization, output setup, plane, crtc,
> encoder, connector registration, display cdclk and rawclk
> initialization, display core initialization, etc.
> =

> Skip the functionality at as high level as possible, and remove any
> redundant checks. If the functionality is conditional to *other* display
> checks, do not add more. If the un-initialization has checks for
> initialization, do not add more.
> =

> We explicitly do not care about any GMCH/VLV/CHV code paths, as they've
> always had and will have display.
> =

> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 44 +++++++++++++++----
>  .../drm/i915/display/intel_display_power.c    | 36 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  6 +++
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |  3 --
>  drivers/gpu/drm/i915/display/intel_hotplug.c  | 12 +++++
>  drivers/gpu/drm/i915/display/intel_pps.c      |  5 ++-
>  drivers/gpu/drm/i915/i915_drv.c               | 28 +++++++++---
>  drivers/gpu/drm/i915/i915_suspend.c           |  6 +++
>  8 files changed, 120 insertions(+), 20 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7b38b9a38b85..b10bf7e06ee7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1613,6 +1613,9 @@ u32 intel_plane_fb_max_stride(struct drm_i915_priva=
te *dev_priv,
>  	struct intel_crtc *crtc;
>  	struct intel_plane *plane;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return 0;
> +
>  	/*
>  	 * We assume the primary plane for pipe A has
>  	 * the highest stride limits of them all,
> @@ -4629,6 +4632,9 @@ int intel_display_suspend(struct drm_device *dev)
>  	struct drm_atomic_state *state;
>  	int ret;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return 0;
> +
>  	state =3D drm_atomic_helper_suspend(dev);
>  	ret =3D PTR_ERR_OR_ZERO(state);
>  	if (ret)
> @@ -12239,6 +12245,9 @@ static const struct drm_mode_config_funcs intel_m=
ode_funcs =3D {
>   */
>  void intel_init_display_hooks(struct drm_i915_private *dev_priv)
>  {
> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	intel_init_cdclk_hooks(dev_priv);
>  	intel_init_audio_hooks(dev_priv);
>  =

> @@ -12281,8 +12290,12 @@ void intel_init_display_hooks(struct drm_i915_pr=
ivate *dev_priv)
>  =

>  void intel_modeset_init_hw(struct drm_i915_private *i915)
>  {
> -	struct intel_cdclk_state *cdclk_state =3D
> -		to_intel_cdclk_state(i915->cdclk.obj.state);
> +	struct intel_cdclk_state *cdclk_state;
> +
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
> +	cdclk_state =3D to_intel_cdclk_state(i915->cdclk.obj.state);
>  =

>  	intel_update_cdclk(i915);
>  	intel_dump_cdclk_config(&i915->cdclk.hw, "Current CDCLK");
> @@ -12598,6 +12611,9 @@ int intel_modeset_init_noirq(struct drm_i915_priv=
ate *i915)
>  	/* FIXME: completely on the wrong abstraction layer */
>  	intel_power_domains_init_hw(i915, false);
>  =

> +	if (!HAS_DISPLAY(i915))
> +		return 0;
> +
>  	intel_csr_ucode_init(i915);
>  =

>  	i915->modeset_wq =3D alloc_ordered_workqueue("i915_modeset", 0);
> @@ -12648,6 +12664,9 @@ int intel_modeset_init_nogem(struct drm_i915_priv=
ate *i915)
>  	struct intel_crtc *crtc;
>  	int ret;
>  =

> +	if (!HAS_DISPLAY(i915))
> +		return 0;
> +
>  	intel_init_pm(i915);
>  =

>  	intel_panel_sanitize_ssc(i915);
> @@ -12660,13 +12679,11 @@ int intel_modeset_init_nogem(struct drm_i915_pr=
ivate *i915)
>  		    INTEL_NUM_PIPES(i915),
>  		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
>  =

> -	if (HAS_DISPLAY(i915)) {
> -		for_each_pipe(i915, pipe) {
> -			ret =3D intel_crtc_init(i915, pipe);
> -			if (ret) {
> -				intel_mode_config_cleanup(i915);
> -				return ret;
> -			}
> +	for_each_pipe(i915, pipe) {
> +		ret =3D intel_crtc_init(i915, pipe);
> +		if (ret) {
> +			intel_mode_config_cleanup(i915);
> +			return ret;
>  		}
>  	}
>  =

> @@ -13602,6 +13619,9 @@ void intel_display_resume(struct drm_device *dev)
>  	struct drm_modeset_acquire_ctx ctx;
>  	int ret;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	dev_priv->modeset_restore_state =3D NULL;
>  	if (state)
>  		state->acquire_ctx =3D &ctx;
> @@ -13651,6 +13671,9 @@ static void intel_hpd_poll_fini(struct drm_i915_p=
rivate *i915)
>  /* part #1: call before irq uninstall */
>  void intel_modeset_driver_remove(struct drm_i915_private *i915)
>  {
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
>  	flush_workqueue(i915->flip_wq);
>  	flush_workqueue(i915->modeset_wq);
>  =

> @@ -13661,6 +13684,9 @@ void intel_modeset_driver_remove(struct drm_i915_=
private *i915)
>  /* part #2: call after irq uninstall */
>  void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
>  {
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
>  	/*
>  	 * Due to the hpd irq storm handling the hotplug work can re-arm the
>  	 * poll handlers. Hence disable polling after hpd handling is shut down.
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index e6a3b3e6b1f7..efacd6aba3d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -821,6 +821,9 @@ static void gen9_sanitize_dc_state(struct drm_i915_pr=
ivate *dev_priv)
>  {
>  	u32 val;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	val =3D intel_de_read(dev_priv, DC_STATE_EN) & gen9_dc_mask(dev_priv);
>  =

>  	drm_dbg_kms(&dev_priv->drm,
> @@ -857,6 +860,9 @@ static void gen9_set_dc_state(struct drm_i915_private=
 *dev_priv, u32 state)
>  	u32 val;
>  	u32 mask;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm,
>  			     state & ~dev_priv->csr.allowed_dc_mask))
>  		state &=3D dev_priv->csr.allowed_dc_mask;
> @@ -1181,6 +1187,9 @@ static void gen9_disable_dc_states(struct drm_i915_=
private *dev_priv)
>  =

>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	dev_priv->display.get_cdclk(dev_priv, &cdclk_config);
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>  	drm_WARN_ON(&dev_priv->drm,
> @@ -4533,6 +4542,9 @@ static u32 get_allowed_dc_mask(const struct drm_i91=
5_private *dev_priv,
>  	int requested_dc;
>  	int max_dc;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return 0;
> +
>  	if (IS_DG1(dev_priv))
>  		max_dc =3D 3;
>  	else if (INTEL_GEN(dev_priv) >=3D 12)
> @@ -5125,6 +5137,9 @@ static void skl_display_core_init(struct drm_i915_p=
rivate *dev_priv,
>  	/* enable PCH reset handshake */
>  	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	/* enable PG1 and Misc I/O */
>  	mutex_lock(&power_domains->lock);
>  =

> @@ -5149,6 +5164,9 @@ static void skl_display_core_uninit(struct drm_i915=
_private *dev_priv)
>  	struct i915_power_domains *power_domains =3D &dev_priv->power_domains;
>  	struct i915_power_well *well;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	gen9_disable_dc_states(dev_priv);
>  =

>  	gen9_dbuf_disable(dev_priv);
> @@ -5189,6 +5207,9 @@ static void bxt_display_core_init(struct drm_i915_p=
rivate *dev_priv, bool resume
>  	 */
>  	intel_pch_reset_handshake(dev_priv, false);
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	/* Enable PG1 */
>  	mutex_lock(&power_domains->lock);
>  =

> @@ -5210,6 +5231,9 @@ static void bxt_display_core_uninit(struct drm_i915=
_private *dev_priv)
>  	struct i915_power_domains *power_domains =3D &dev_priv->power_domains;
>  	struct i915_power_well *well;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	gen9_disable_dc_states(dev_priv);
>  =

>  	gen9_dbuf_disable(dev_priv);
> @@ -5243,6 +5267,9 @@ static void cnl_display_core_init(struct drm_i915_p=
rivate *dev_priv, bool resume
>  	/* 1. Enable PCH Reset Handshake */
>  	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	/* 2-3. */
>  	intel_combo_phy_init(dev_priv);
>  =

> @@ -5270,6 +5297,9 @@ static void cnl_display_core_uninit(struct drm_i915=
_private *dev_priv)
>  	struct i915_power_domains *power_domains =3D &dev_priv->power_domains;
>  	struct i915_power_well *well;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	gen9_disable_dc_states(dev_priv);
>  =

>  	/* 1. Disable all display engine functions -> aready done */
> @@ -5384,6 +5414,9 @@ static void icl_display_core_init(struct drm_i915_p=
rivate *dev_priv,
>  	/* 1. Enable PCH reset handshake. */
>  	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	/* 2. Initialize all combo phys */
>  	intel_combo_phy_init(dev_priv);
>  =

> @@ -5428,6 +5461,9 @@ static void icl_display_core_uninit(struct drm_i915=
_private *dev_priv)
>  	struct i915_power_domains *power_domains =3D &dev_priv->power_domains;
>  	struct i915_power_well *well;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	gen9_disable_dc_states(dev_priv);
>  =

>  	/* 1. Disable all display engine functions -> aready done */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 1400c5b44c83..fc00bacd00c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5427,6 +5427,9 @@ void intel_dp_mst_suspend(struct drm_i915_private *=
dev_priv)
>  {
>  	struct intel_encoder *encoder;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	for_each_intel_encoder(&dev_priv->drm, encoder) {
>  		struct intel_dp *intel_dp;
>  =

> @@ -5447,6 +5450,9 @@ void intel_dp_mst_resume(struct drm_i915_private *d=
ev_priv)
>  {
>  	struct intel_encoder *encoder;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	for_each_intel_encoder(&dev_priv->drm, encoder) {
>  		struct intel_dp *intel_dp;
>  		int ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm=
/i915/display/intel_gmbus.c
> index 0c952e1d720e..5ee599d20050 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -845,9 +845,6 @@ int intel_gmbus_setup(struct drm_i915_private *dev_pr=
iv)
>  	unsigned int pin;
>  	int ret;
>  =

> -	if (!HAS_DISPLAY(dev_priv))
> -		return 0;
> -
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		dev_priv->gpio_mmio_base =3D VLV_DISPLAY_BASE;
>  	else if (!HAS_GMCH(dev_priv))
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index f46a1b7190b8..47c85ac97c87 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -595,6 +595,9 @@ void intel_hpd_init(struct drm_i915_private *dev_priv)
>  {
>  	int i;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	for_each_hpd_pin(i) {
>  		dev_priv->hotplug.stats[i].count =3D 0;
>  		dev_priv->hotplug.stats[i].state =3D HPD_ENABLED;
> @@ -670,6 +673,9 @@ static void i915_hpd_poll_init_work(struct work_struc=
t *work)
>   */
>  void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
>  {
> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	WRITE_ONCE(dev_priv->hotplug.poll_enabled, true);
>  =

>  	/*
> @@ -702,6 +708,9 @@ void intel_hpd_poll_enable(struct drm_i915_private *d=
ev_priv)
>   */
>  void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
>  {
> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	WRITE_ONCE(dev_priv->hotplug.poll_enabled, false);
>  	schedule_work(&dev_priv->hotplug.poll_init_work);
>  }
> @@ -718,6 +727,9 @@ void intel_hpd_init_work(struct drm_i915_private *dev=
_priv)
>  =

>  void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
>  {
> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	spin_lock_irq(&dev_priv->irq_lock);
>  =

>  	dev_priv->hotplug.long_port_mask =3D 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 932f56951914..e1aacd25c9d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -319,6 +319,9 @@ void intel_pps_reset_all(struct drm_i915_private *dev=
_priv)
>  			  IS_GEN9_LP(dev_priv))))
>  		return;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	/*
>  	 * We can't grab pps_mutex here due to deadlock with power_domain
>  	 * mutex when power_domain functions are called while holding pps_mutex.
> @@ -1378,7 +1381,7 @@ void intel_pps_unlock_regs_wa(struct drm_i915_priva=
te *dev_priv)
>  	int pps_num;
>  	int pps_idx;
>  =

> -	if (HAS_DDI(dev_priv))
> +	if (!HAS_DISPLAY(dev_priv) || HAS_DDI(dev_priv))
>  		return;
>  	/*
>  	 * This w/a is needed at least on CPT/PPT, but to be sure apply it
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 64edcab59fe1..ee27962a6044 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -977,8 +977,12 @@ static int i915_driver_open(struct drm_device *dev, =
struct drm_file *file)
>   */
>  static void i915_driver_lastclose(struct drm_device *dev)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(dev);
> +
>  	intel_fbdev_restore_mode(dev);
> -	vga_switcheroo_process_delayed_switch();
> +
> +	if (HAS_DISPLAY(i915))
> +		vga_switcheroo_process_delayed_switch();
>  }
>  =

>  static void i915_driver_postclose(struct drm_device *dev, struct drm_fil=
e *file)
> @@ -999,6 +1003,9 @@ static void intel_suspend_encoders(struct drm_i915_p=
rivate *dev_priv)
>  	struct drm_device *dev =3D &dev_priv->drm;
>  	struct intel_encoder *encoder;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	drm_modeset_lock_all(dev);
>  	for_each_intel_encoder(dev, encoder)
>  		if (encoder->suspend)
> @@ -1011,6 +1018,9 @@ static void intel_shutdown_encoders(struct drm_i915=
_private *dev_priv)
>  	struct drm_device *dev =3D &dev_priv->drm;
>  	struct intel_encoder *encoder;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	drm_modeset_lock_all(dev);
>  	for_each_intel_encoder(dev, encoder)
>  		if (encoder->shutdown)
> @@ -1026,9 +1036,11 @@ void i915_driver_shutdown(struct drm_i915_private =
*i915)
>  =

>  	i915_gem_suspend(i915);
>  =

> -	drm_kms_helper_poll_disable(&i915->drm);
> +	if (HAS_DISPLAY(i915)) {
> +		drm_kms_helper_poll_disable(&i915->drm);
>  =

> -	drm_atomic_helper_shutdown(&i915->drm);
> +		drm_atomic_helper_shutdown(&i915->drm);
> +	}
>  =

>  	intel_dp_mst_suspend(i915);
>  =

> @@ -1084,8 +1096,8 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	/* We do a lot of poking in a lot of registers, make sure they work
>  	 * properly. */
>  	intel_power_domains_disable(dev_priv);
> -
> -	drm_kms_helper_poll_disable(dev);
> +	if (HAS_DISPLAY(dev_priv))
> +		drm_kms_helper_poll_disable(dev);
>  =

>  	pci_save_state(pdev);
>  =

> @@ -1232,7 +1244,8 @@ static int i915_drm_resume(struct drm_device *dev)
>  	 */
>  	intel_runtime_pm_enable_interrupts(dev_priv);
>  =

> -	drm_mode_config_reset(dev);
> +	if (HAS_DISPLAY(dev_priv))
> +		drm_mode_config_reset(dev);
>  =

>  	i915_gem_resume(dev_priv);
>  =

> @@ -1245,7 +1258,8 @@ static int i915_drm_resume(struct drm_device *dev)
>  	intel_display_resume(dev);
>  =

>  	intel_hpd_poll_disable(dev_priv);
> -	drm_kms_helper_poll_enable(dev);
> +	if (HAS_DISPLAY(dev_priv))
> +		drm_kms_helper_poll_enable(dev);
>  =

>  	intel_opregion_resume(dev_priv);
>  =

> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i=
915_suspend.c
> index 0bc7b49f843c..5fcc32821e18 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -87,6 +87,9 @@ void i915_save_display(struct drm_i915_private *dev_pri=
v)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	/* Display arbitration control */
>  	if (INTEL_GEN(dev_priv) <=3D 4)
>  		dev_priv->regfile.saveDSPARB =3D intel_de_read(dev_priv, DSPARB);
> @@ -102,6 +105,9 @@ void i915_restore_display(struct drm_i915_private *de=
v_priv)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	intel_restore_swf(dev_priv);
>  =

>  	if (IS_GEN(dev_priv, 4))
> -- =

> 2.31.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
