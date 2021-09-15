Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED4E40C396
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 12:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3724E6E8FE;
	Wed, 15 Sep 2021 10:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B77C76E8FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 10:24:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="202446967"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="202446967"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 03:24:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="544780797"
Received: from vmastnak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.245])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 03:24:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210913144440.23008-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-12-ville.syrjala@linux.intel.com>
Date: Wed, 15 Sep 2021 13:24:32 +0300
Message-ID: <875yv2yw4f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/16] drm/i915: Introduce
 intel_master_crtc()
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

On Mon, 13 Sep 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add a helper to determine the master crtc for bigjoiner usage.
> Also name the variables consistently.

I think this would be a good time to to rename bigjoiner {master, slave}
to {primary, secondary}. The change is coming to bspec too though it's
not there yet.

BR,
Jani.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  6 +--
>  drivers/gpu/drm/i915/display/intel_display.c | 57 +++++++++++---------
>  2 files changed, 33 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 4f7420dda8b5..4fbffce501dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2882,12 +2882,10 @@ static void intel_ddi_post_disable(struct intel_a=
tomic_state *state,
>  	}
>=20=20
>  	if (old_crtc_state->bigjoiner_linked_crtc) {
> -		struct intel_atomic_state *state =3D
> -			to_intel_atomic_state(old_crtc_state->uapi.state);
> -		struct intel_crtc *slave =3D
> +		struct intel_crtc *slave_crtc =3D
>  			old_crtc_state->bigjoiner_linked_crtc;
>  		const struct intel_crtc_state *old_slave_crtc_state =3D
> -			intel_atomic_get_old_crtc_state(state, slave);
> +			intel_atomic_get_old_crtc_state(state, slave_crtc);
>=20=20
>  		intel_crtc_vblank_off(old_slave_crtc_state);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 24214e6249a9..a5450ac9e2d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -227,6 +227,14 @@ is_trans_port_sync_mode(const struct intel_crtc_stat=
e *crtc_state)
>  		is_trans_port_sync_slave(crtc_state);
>  }
>=20=20
> +static struct intel_crtc *intel_master_crtc(const struct intel_crtc_stat=
e *crtc_state)
> +{
> +	if (crtc_state->bigjoiner_slave)
> +		return crtc_state->bigjoiner_linked_crtc;
> +	else
> +		return to_intel_crtc(crtc_state->uapi.crtc);
> +}
> +
>  static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
>  				    enum pipe pipe)
>  {
> @@ -2978,21 +2986,19 @@ static void hsw_set_frame_start_delay(const struc=
t intel_crtc_state *crtc_state)
>  static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *stat=
e,
>  					 const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_crtc *master =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(master->base.dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *master_crtc_state;
> +	struct intel_crtc *master_crtc;
>  	struct drm_connector_state *conn_state;
>  	struct drm_connector *conn;
>  	struct intel_encoder *encoder =3D NULL;
>  	int i;
>=20=20
> -	if (crtc_state->bigjoiner_slave)
> -		master =3D crtc_state->bigjoiner_linked_crtc;
> -
> -	master_crtc_state =3D intel_atomic_get_new_crtc_state(state, master);
> +	master_crtc =3D intel_master_crtc(crtc_state);
> +	master_crtc_state =3D intel_atomic_get_new_crtc_state(state, master_crt=
c);
>=20=20
>  	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
> -		if (conn_state->crtc !=3D &master->base)
> +		if (conn_state->crtc !=3D &master_crtc->base)
>  			continue;
>=20=20
>  		encoder =3D to_intel_encoder(conn_state->best_encoder);
> @@ -3006,10 +3012,10 @@ static void icl_ddi_bigjoiner_pre_enable(struct i=
ntel_atomic_state *state,
>  		/*
>  		 * Enable sequence steps 1-7 on bigjoiner master
>  		 */
> -		intel_encoders_pre_pll_enable(state, master);
> +		intel_encoders_pre_pll_enable(state, master_crtc);
>  		if (master_crtc_state->shared_dpll)
>  			intel_enable_shared_dpll(master_crtc_state);
> -		intel_encoders_pre_enable(state, master);
> +		intel_encoders_pre_enable(state, master_crtc);
>=20=20
>  		/* and DSC on slave */
>  		intel_dsc_enable(NULL, crtc_state);
> @@ -8462,7 +8468,7 @@ verify_crtc_state(struct intel_crtc *crtc,
>  	struct intel_encoder *encoder;
>  	struct intel_crtc_state *pipe_config =3D old_crtc_state;
>  	struct drm_atomic_state *state =3D old_crtc_state->uapi.state;
> -	struct intel_crtc *master =3D crtc;
> +	struct intel_crtc *master_crtc;
>=20=20
>  	__drm_atomic_helper_crtc_destroy_state(&old_crtc_state->uapi);
>  	intel_crtc_free_hw_state(old_crtc_state);
> @@ -8490,10 +8496,9 @@ verify_crtc_state(struct intel_crtc *crtc,
>  			"(expected %i, found %i)\n",
>  			new_crtc_state->hw.active, crtc->active);
>=20=20
> -	if (new_crtc_state->bigjoiner_slave)
> -		master =3D new_crtc_state->bigjoiner_linked_crtc;
> +	master_crtc =3D intel_master_crtc(new_crtc_state);
>=20=20
> -	for_each_encoder_on_crtc(dev, &master->base, encoder) {
> +	for_each_encoder_on_crtc(dev, &master_crtc->base, encoder) {
>  		enum pipe pipe;
>  		bool active;
>=20=20
> @@ -8503,7 +8508,7 @@ verify_crtc_state(struct intel_crtc *crtc,
>  				encoder->base.base.id, active,
>  				new_crtc_state->hw.active);
>=20=20
> -		I915_STATE_WARN(active && master->pipe !=3D pipe,
> +		I915_STATE_WARN(active && master_crtc->pipe !=3D pipe,
>  				"Encoder connected to wrong pipe %c\n",
>  				pipe_name(pipe));
>=20=20
> @@ -9192,13 +9197,13 @@ static int intel_atomic_check_bigjoiner(struct in=
tel_atomic_state *state,
>  					struct intel_crtc_state *new_crtc_state)
>  {
>  	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
> -	struct intel_crtc *slave, *master;
> +	struct intel_crtc *slave_crtc, *master_crtc;
>=20=20
>  	/* slave being enabled, is master is still claiming this crtc? */
>  	if (old_crtc_state->bigjoiner_slave) {
> -		slave =3D crtc;
> -		master =3D old_crtc_state->bigjoiner_linked_crtc;
> -		master_crtc_state =3D intel_atomic_get_new_crtc_state(state, master);
> +		slave_crtc =3D crtc;
> +		master_crtc =3D old_crtc_state->bigjoiner_linked_crtc;
> +		master_crtc_state =3D intel_atomic_get_new_crtc_state(state, master_cr=
tc);
>  		if (!master_crtc_state || !intel_crtc_needs_modeset(master_crtc_state))
>  			goto claimed;
>  	}
> @@ -9206,17 +9211,17 @@ static int intel_atomic_check_bigjoiner(struct in=
tel_atomic_state *state,
>  	if (!new_crtc_state->bigjoiner)
>  		return 0;
>=20=20
> -	slave =3D intel_dsc_get_bigjoiner_secondary(crtc);
> -	if (!slave) {
> +	slave_crtc =3D intel_dsc_get_bigjoiner_secondary(crtc);
> +	if (!slave_crtc) {
>  		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
>  			      "CRTC + 1 to be used, doesn't exist\n",
>  			      crtc->base.base.id, crtc->base.name);
>  		return -EINVAL;
>  	}
>=20=20
> -	new_crtc_state->bigjoiner_linked_crtc =3D slave;
> -	slave_crtc_state =3D intel_atomic_get_crtc_state(&state->base, slave);
> -	master =3D crtc;
> +	new_crtc_state->bigjoiner_linked_crtc =3D slave_crtc;
> +	slave_crtc_state =3D intel_atomic_get_crtc_state(&state->base, slave_cr=
tc);
> +	master_crtc =3D crtc;
>  	if (IS_ERR(slave_crtc_state))
>  		return PTR_ERR(slave_crtc_state);
>=20=20
> @@ -9225,15 +9230,15 @@ static int intel_atomic_check_bigjoiner(struct in=
tel_atomic_state *state,
>  		goto claimed;
>=20=20
>  	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
> -		      slave->base.base.id, slave->base.name);
> +		      slave_crtc->base.base.id, slave_crtc->base.name);
>=20=20
>  	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
>=20=20
>  claimed:
>  	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
>  		      "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
> -		      slave->base.base.id, slave->base.name,
> -		      master->base.base.id, master->base.name);
> +		      slave_crtc->base.base.id, slave_crtc->base.name,
> +		      master_crtc->base.base.id, master_crtc->base.name);
>  	return -EINVAL;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
