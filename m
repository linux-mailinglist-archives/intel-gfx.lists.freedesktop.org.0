Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DE245C916
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 16:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25156E7EF;
	Wed, 24 Nov 2021 15:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2A0A6E7EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 15:43:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="235246888"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235246888"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 07:43:56 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="509917847"
Received: from moconno1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 07:43:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211124113652.22090-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-12-ville.syrjala@linux.intel.com>
Date: Wed, 24 Nov 2021 17:43:52 +0200
Message-ID: <87pmqplft3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/20] drm/i915/fbc: Move FBC debugfs stuff
 into intel_fbc.c
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

On Wed, 24 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> In order to encapsulate FBC harder let's just move the debugfs
> stuff into intel_fbc.c.

Mmmh, I've kind of moved towards a split where i915_debugfs.c and
intel_display_debugfs.c have all the debugfs boilerplate, while the
implementation files have the guts with struct drm_i915_private *i915
(or something more specific) and struct seq_file *m passed in.

In some ways the split is arbitrary, but I kind of find the debugfs
boilerplate a distraction in the implementation files, and we also skip
building the debugfs files completely for CONFIG_DEBUG_FS=3Dn. I don't
think I'd want to add #ifdefs on that spread around either.


BR,
Jani.



>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  |  50 +-------
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 110 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_fbc.h      |   4 +-
>  3 files changed, 82 insertions(+), 82 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 3e456e595010..572445299b04 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -40,52 +40,6 @@ static int i915_frontbuffer_tracking(struct seq_file *=
m, void *unused)
>  	return 0;
>  }
>=20=20
> -static int i915_fbc_status(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct intel_fbc *fbc =3D &dev_priv->fbc;
> -	intel_wakeref_t wakeref;
> -
> -	if (!HAS_FBC(dev_priv))
> -		return -ENODEV;
> -
> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> -	mutex_lock(&fbc->lock);
> -
> -	if (intel_fbc_is_active(fbc)) {
> -		seq_puts(m, "FBC enabled\n");
> -		seq_printf(m, "Compressing: %s\n",
> -			   yesno(intel_fbc_is_compressing(fbc)));
> -	} else {
> -		seq_printf(m, "FBC disabled: %s\n", fbc->no_fbc_reason);
> -	}
> -
> -	mutex_unlock(&fbc->lock);
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -
> -	return 0;
> -}
> -
> -static int i915_fbc_false_color_get(void *data, u64 *val)
> -{
> -	struct drm_i915_private *dev_priv =3D data;
> -
> -	*val =3D dev_priv->fbc.false_color;
> -
> -	return 0;
> -}
> -
> -static int i915_fbc_false_color_set(void *data, u64 val)
> -{
> -	struct drm_i915_private *dev_priv =3D data;
> -
> -	return intel_fbc_set_false_color(&dev_priv->fbc, val);
> -}
> -
> -DEFINE_SIMPLE_ATTRIBUTE(i915_fbc_false_color_fops,
> -			i915_fbc_false_color_get, i915_fbc_false_color_set,
> -			"%llu\n");
> -
>  static int i915_ips_status(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> @@ -2058,7 +2012,6 @@ static const struct file_operations i915_fifo_under=
run_reset_ops =3D {
>=20=20
>  static const struct drm_info_list intel_display_debugfs_list[] =3D {
>  	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
> -	{"i915_fbc_status", i915_fbc_status, 0},
>  	{"i915_ips_status", i915_ips_status, 0},
>  	{"i915_sr_status", i915_sr_status, 0},
>  	{"i915_opregion", i915_opregion, 0},
> @@ -2083,7 +2036,6 @@ static const struct {
>  	{"i915_pri_wm_latency", &i915_pri_wm_latency_fops},
>  	{"i915_spr_wm_latency", &i915_spr_wm_latency_fops},
>  	{"i915_cur_wm_latency", &i915_cur_wm_latency_fops},
> -	{"i915_fbc_false_color", &i915_fbc_false_color_fops},
>  	{"i915_dp_test_data", &i915_displayport_test_data_fops},
>  	{"i915_dp_test_type", &i915_displayport_test_type_fops},
>  	{"i915_dp_test_active", &i915_displayport_test_active_fops},
> @@ -2110,6 +2062,8 @@ void intel_display_debugfs_register(struct drm_i915=
_private *i915)
>  	drm_debugfs_create_files(intel_display_debugfs_list,
>  				 ARRAY_SIZE(intel_display_debugfs_list),
>  				 minor->debugfs_root, minor);
> +
> +	intel_fbc_debugfs_register(i915);
>  }
>=20=20
>  static int i915_panel_show(struct seq_file *m, void *data)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 00c93040529e..ee4e3186cc9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -600,7 +600,7 @@ static void intel_fbc_hw_deactivate(struct intel_fbc =
*fbc)
>  	fbc->funcs->deactivate(fbc);
>  }
>=20=20
> -bool intel_fbc_is_compressing(struct intel_fbc *fbc)
> +static bool intel_fbc_is_compressing(struct intel_fbc *fbc)
>  {
>  	return fbc->funcs->is_compressing(fbc);
>  }
> @@ -612,36 +612,6 @@ static void intel_fbc_nuke(struct intel_fbc *fbc)
>  	fbc->funcs->nuke(fbc);
>  }
>=20=20
> -int intel_fbc_set_false_color(struct intel_fbc *fbc, bool enable)
> -{
> -	if (!fbc->funcs || !fbc->funcs->set_false_color)
> -		return -ENODEV;
> -
> -	mutex_lock(&fbc->lock);
> -
> -	fbc->false_color =3D enable;
> -
> -	fbc->funcs->set_false_color(fbc, enable);
> -
> -	mutex_unlock(&fbc->lock);
> -
> -	return 0;
> -}
> -
> -/**
> - * intel_fbc_is_active - Is FBC active?
> - * @fbc: The FBC instance
> - *
> - * This function is used to verify the current state of FBC.
> - *
> - * FIXME: This should be tracked in the plane config eventually
> - * instead of queried at runtime for most callers.
> - */
> -bool intel_fbc_is_active(struct intel_fbc *fbc)
> -{
> -	return fbc->active;
> -}
> -
>  static void intel_fbc_activate(struct intel_fbc *fbc)
>  {
>  	intel_fbc_hw_activate(fbc);
> @@ -1691,3 +1661,81 @@ void intel_fbc_init(struct drm_i915_private *i915)
>  	if (intel_fbc_hw_is_active(fbc))
>  		intel_fbc_hw_deactivate(fbc);
>  }
> +
> +static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unuse=
d)
> +{
> +	struct intel_fbc *fbc =3D m->private;
> +	struct drm_i915_private *i915 =3D fbc->i915;
> +	intel_wakeref_t wakeref;
> +
> +	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
> +	mutex_lock(&fbc->lock);
> +
> +	if (fbc->active) {
> +		seq_puts(m, "FBC enabled\n");
> +		seq_printf(m, "Compressing: %s\n",
> +			   yesno(intel_fbc_is_compressing(fbc)));
> +	} else {
> +		seq_printf(m, "FBC disabled: %s\n", fbc->no_fbc_reason);
> +	}
> +
> +	mutex_unlock(&fbc->lock);
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +
> +	return 0;
> +}
> +
> +DEFINE_SHOW_ATTRIBUTE(intel_fbc_debugfs_status);
> +
> +static int intel_fbc_debugfs_false_color_get(void *data, u64 *val)
> +{
> +	struct intel_fbc *fbc =3D data;
> +
> +	*val =3D fbc->false_color;
> +
> +	return 0;
> +}
> +
> +static int intel_fbc_debugfs_false_color_set(void *data, u64 val)
> +{
> +	struct intel_fbc *fbc =3D data;
> +
> +	mutex_lock(&fbc->lock);
> +
> +	fbc->false_color =3D val;
> +
> +	if (fbc->active)
> +		fbc->funcs->set_false_color(fbc, fbc->false_color);
> +
> +	mutex_unlock(&fbc->lock);
> +
> +	return 0;
> +}
> +
> +DEFINE_SIMPLE_ATTRIBUTE(intel_fbc_debugfs_false_color_fops,
> +			intel_fbc_debugfs_false_color_get,
> +			intel_fbc_debugfs_false_color_set,
> +			"%llu\n");
> +
> +static void intel_fbc_debugfs_add(struct intel_fbc *fbc)
> +{
> +	struct drm_i915_private *i915 =3D fbc->i915;
> +	struct drm_minor *minor =3D i915->drm.primary;
> +
> +	debugfs_create_file("i915_fbc_status", 0444,
> +			    minor->debugfs_root, fbc,
> +			    &intel_fbc_debugfs_status_fops);
> +
> +	if (fbc->funcs->set_false_color)
> +		debugfs_create_file("i915_fbc_false_color", 0644,
> +				    minor->debugfs_root, fbc,
> +				    &intel_fbc_debugfs_false_color_fops);
> +}
> +
> +void intel_fbc_debugfs_register(struct drm_i915_private *i915)
> +{
> +	struct intel_fbc *fbc =3D &i915->fbc;
> +
> +	if (HAS_FBC(i915))
> +		intel_fbc_debugfs_add(fbc);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i=
915/display/intel_fbc.h
> index 36e9e5f93bcb..0f5884f1e095 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -18,8 +18,6 @@ struct intel_fbc;
>  struct intel_plane_state;
>=20=20
>  int intel_fbc_atomic_check(struct intel_atomic_state *state);
> -bool intel_fbc_is_active(struct intel_fbc *fbc);
> -bool intel_fbc_is_compressing(struct intel_fbc *fbc);
>  bool intel_fbc_pre_update(struct intel_atomic_state *state,
>  			  struct intel_crtc *crtc);
>  void intel_fbc_post_update(struct intel_atomic_state *state,
> @@ -37,6 +35,6 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
>  		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
>  void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915);
>  void intel_fbc_reset_underrun(struct drm_i915_private *i915);
> -int intel_fbc_set_false_color(struct intel_fbc *fbc, bool enable);
> +void intel_fbc_debugfs_register(struct drm_i915_private *i915);
>=20=20
>  #endif /* __INTEL_FBC_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
