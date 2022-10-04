Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A375D5F3FCA
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 11:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26CD310E2B3;
	Tue,  4 Oct 2022 09:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF0810E2B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 09:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664876101; x=1696412101;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=sIWsBGFK9Ek1gkeCRei1v0xwaMthiuwD3BHGB1xzbbY=;
 b=JX8HESS9ayVGQtvDnNxIIPyrJ55GvrqNR5iygI7qvJ54wD3faaBvCDqe
 trbZdbFbEZMSpuGfMMaoGESTiHTnP2XeEcBQHjt7/hBQITzC9co9RjPxK
 s3+x/5W/0NJ2hlSDamXghrupxm55IiAWAEsEYQA97IHAlKQixsj1hfrcl
 3xGqh3nWK3J6RACUORKfirfXXxIUM2lgrHnBHuS9qhcu0TcgME5fL5xRq
 Eb3Az0KT8+D7sMBGO0f6LMydShx6+95YdZTNBOVsvIuFuHaQjFDs1um0D
 RPR/z37npQVzZcS51LdftBH6U3RjoKGJdMEBO1VcUFKqeO4EBqyl5tD7h A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="389158785"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="389158785"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 02:34:42 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="952708348"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="952708348"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 02:34:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220926191341.5495-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
 <20220926191341.5495-4-ville.syrjala@linux.intel.com>
Date: Tue, 04 Oct 2022 12:34:38 +0300
Message-ID: <87zgecszip.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: Introduce
 for_each_shared_dpll()
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

On Mon, 26 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No one really cares how we store the shared_dplls. Currently
> it happens to be an array, but we could change that to a more
> flexible scheme at some point. Hide the implementation details
> behind an iterator macro.
>
> The slight downside is the pll variable moving out of the
> loop scope, but maybe someday soon we'll start to convert
> everything over to having declarations within for-statements...
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  |  5 +--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 38 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 ++
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |  4 +-
>  4 files changed, 25 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index c5f47df0f362..c85f60f0ced8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -932,6 +932,7 @@ static int i915_shared_dplls_info(struct seq_file *m,=
 void *unused)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
>  	struct drm_device *dev =3D &dev_priv->drm;
> +	struct intel_shared_dpll *pll;
>  	int i;
>=20=20
>  	drm_modeset_lock_all(dev);
> @@ -940,9 +941,7 @@ static int i915_shared_dplls_info(struct seq_file *m,=
 void *unused)
>  		   dev_priv->display.dpll.ref_clks.nssc,
>  		   dev_priv->display.dpll.ref_clks.ssc);
>=20=20
> -	for (i =3D 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
> -		struct intel_shared_dpll *pll =3D &dev_priv->display.dpll.shared_dplls=
[i];
> -
> +	for_each_shared_dpll(dev_priv, pll, i) {
>  		seq_printf(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,

Only noticed it here, but the loop variable i is no longer the DPLL
number, right? No place should actually use i for anything other than
the looping.

This should probably be fixed in an earlier patch.

BR,
Jani.

>  			   pll->info->id);
>  		seq_printf(m, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 25e6f7a427b0..3dd414d663f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -110,14 +110,12 @@ static void
>  intel_atomic_duplicate_dpll_state(struct drm_i915_private *dev_priv,
>  				  struct intel_shared_dpll_state *shared_dpll)
>  {
> +	struct intel_shared_dpll *pll;
>  	int i;
>=20=20
>  	/* Copy shared dpll state */
> -	for (i =3D 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
> -		struct intel_shared_dpll *pll =3D &dev_priv->display.dpll.shared_dplls=
[i];
> -
> +	for_each_shared_dpll(dev_priv, pll, i)
>  		shared_dpll[pll->index] =3D pll->state;
> -	}
>  }
>=20=20
>  static struct intel_shared_dpll_state *
> @@ -149,11 +147,10 @@ struct intel_shared_dpll *
>  intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
>  			    enum intel_dpll_id id)
>  {
> +	struct intel_shared_dpll *pll;
>  	int i;
>=20=20
> -	for (i =3D 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
> -		struct intel_shared_dpll *pll =3D &dev_priv->display.dpll.shared_dplls=
[i];
> -
> +	for_each_shared_dpll(dev_priv, pll, i) {
>  		if (pll->info->id =3D=3D id)
>  			return pll;
>  	}
> @@ -311,12 +308,11 @@ void intel_disable_shared_dpll(const struct intel_c=
rtc_state *crtc_state)
>  static unsigned long
>  intel_dpll_mask_all(struct drm_i915_private *i915)
>  {
> +	struct intel_shared_dpll *pll;
>  	unsigned long dpll_mask =3D 0;
>  	int i;
>=20=20
> -	for (i =3D 0; i < i915->display.dpll.num_shared_dpll; i++) {
> -		struct intel_shared_dpll *pll =3D &i915->display.dpll.shared_dplls[i];
> -
> +	for_each_shared_dpll(i915, pll, i) {
>  		drm_WARN_ON(&i915->drm, dpll_mask & BIT(pll->info->id));
>=20=20
>  		dpll_mask |=3D BIT(pll->info->id);
> @@ -449,16 +445,14 @@ void intel_shared_dpll_swap_state(struct intel_atom=
ic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_shared_dpll_state *shared_dpll =3D state->shared_dpll;
> +	struct intel_shared_dpll *pll;
>  	int i;
>=20=20
>  	if (!state->dpll_set)
>  		return;
>=20=20
> -	for (i =3D 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
> -		struct intel_shared_dpll *pll =3D &dev_priv->display.dpll.shared_dplls=
[i];
> -
> +	for_each_shared_dpll(dev_priv, pll, i)
>  		swap(pll->state, shared_dpll[pll->index]);
> -	}
>  }
>=20=20
>  static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *dev_priv,
> @@ -4431,10 +4425,11 @@ void intel_dpll_update_ref_clks(struct drm_i915_p=
rivate *i915)
>=20=20
>  void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
>  {
> +	struct intel_shared_dpll *pll;
>  	int i;
>=20=20
> -	for (i =3D 0; i < i915->display.dpll.num_shared_dpll; i++)
> -		readout_dpll_hw_state(i915, &i915->display.dpll.shared_dplls[i]);
> +	for_each_shared_dpll(i915, pll, i)
> +		readout_dpll_hw_state(i915, pll);
>  }
>=20=20
>  static void sanitize_dpll_state(struct drm_i915_private *i915,
> @@ -4458,10 +4453,11 @@ static void sanitize_dpll_state(struct drm_i915_p=
rivate *i915,
>=20=20
>  void intel_dpll_sanitize_state(struct drm_i915_private *i915)
>  {
> +	struct intel_shared_dpll *pll;
>  	int i;
>=20=20
> -	for (i =3D 0; i < i915->display.dpll.num_shared_dpll; i++)
> -		sanitize_dpll_state(i915, &i915->display.dpll.shared_dplls[i]);
> +	for_each_shared_dpll(i915, pll, i)
> +		sanitize_dpll_state(i915, pll);
>  }
>=20=20
>  /**
> @@ -4571,9 +4567,9 @@ void intel_shared_dpll_state_verify(struct intel_cr=
tc *crtc,
>=20=20
>  void intel_shared_dpll_verify_disabled(struct drm_i915_private *i915)
>  {
> +	struct intel_shared_dpll *pll;
>  	int i;
>=20=20
> -	for (i =3D 0; i < i915->display.dpll.num_shared_dpll; i++)
> -		verify_single_dpll_state(i915, &i915->display.dpll.shared_dplls[i],
> -					 NULL, NULL);
> +	for_each_shared_dpll(i915, pll, i)
> +		verify_single_dpll_state(i915, pll, NULL, NULL);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index b8dce4e9ac54..d419f4f98d28 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -36,6 +36,10 @@
>  	(void) (&__a =3D=3D &__b);			\
>  	__a > __b ? (__a - __b) : (__b - __a); })
>=20=20
> +#define for_each_shared_dpll(__i915, __pll, __i) \
> +	for ((__i) =3D 0; (__i) < (__i915)->display.dpll.num_shared_dpll && \
> +		     ((__pll) =3D &(__i915)->display.dpll.shared_dplls[(__i)]); (__i)+=
+)
> +
>  enum tc_port;
>  struct drm_i915_private;
>  struct intel_atomic_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gp=
u/drm/i915/display/intel_pch_refclk.c
> index 4db4b8d57e21..bb4e70aa9f6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -497,6 +497,7 @@ static void lpt_init_pch_refclk(struct drm_i915_priva=
te *dev_priv)
>  static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_encoder *encoder;
> +	struct intel_shared_dpll *pll;
>  	int i;
>  	u32 val, final;
>  	bool has_lvds =3D false;
> @@ -532,8 +533,7 @@ static void ilk_init_pch_refclk(struct drm_i915_priva=
te *dev_priv)
>  	}
>=20=20
>  	/* Check if any DPLLs are using the SSC source */
> -	for (i =3D 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
> -		struct intel_shared_dpll *pll =3D &dev_priv->display.dpll.shared_dplls=
[i];
> +	for_each_shared_dpll(dev_priv, pll, i) {
>  		u32 temp;
>=20=20
>  		temp =3D intel_de_read(dev_priv, PCH_DPLL(pll->info->id));

--=20
Jani Nikula, Intel Open Source Graphics Center
