Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A8A5ED6FC
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 09:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2CEF10E301;
	Wed, 28 Sep 2022 07:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E07810E306
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 07:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664351944; x=1695887944;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=JQr/95TjB5t5jNHxfhJFuiDDmOaRMYAQJeYqFj1c4Pc=;
 b=W27C8Wmdi3A8rVhQyqxiaSWBDtNNBQ2SYgKxwAz+Ropt5ZxNCwVnz8+F
 tXsW/6gd86CU7JCHHdF2UJpVcpjbgNLVecCmKbrmQYbsD1AxyG8HIw3kc
 Qo2QMI+tC5A3qr6udEIeudp3tUd7FBVaZJfKLB1mG1Z/qtioSxIYO+IGf
 XXx12H1q3bwcq2q2WAVhW9g2trYeq3VKQhy8EpDLuA94YZ/S3NNyyLnTs
 NzdDVuaB+3FKnPa1KW1/VFuz1Ffy2rGH44SBWGY+xk1IvfoycoPDK+89R
 lDqJkYi+mPLl4wvopT0uVt9VDjq/8hrkfA5aUkcbDGgbb8NY82zMMXb22 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="363376620"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="363376620"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 00:59:03 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="950604755"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="950604755"
Received: from novermar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.30])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 00:59:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220928060813.23264-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220928060813.23264-1-ville.syrjala@linux.intel.com>
Date: Wed, 28 Sep 2022 10:58:59 +0300
Message-ID: <87k05oyloc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add some debug prints for
 intel_modeset_all_pipes()
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

On Wed, 28 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Print out on which pipes, and for what reason, we are forcing a
> full modeset.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
>  drivers/gpu/drm/i915/display/intel_display.h | 3 ++-
>  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
>  4 files changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index a12e86d92783..ad401357ab66 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2769,7 +2769,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_st=
ate *state)
>  	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
>  					     &new_cdclk_state->actual)) {
>  		/* All pipes must be switched off while we change the cdclk. */
> -		ret =3D intel_modeset_all_pipes(state);
> +		ret =3D intel_modeset_all_pipes(state, "CDCLK change");
>  		if (ret)
>  			return ret;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index eb8eaeb19881..650d37ff76e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5937,7 +5937,8 @@ intel_verify_planes(struct intel_atomic_state *stat=
e)
>  			     plane_state->uapi.visible);
>  }
>=20=20
> -int intel_modeset_all_pipes(struct intel_atomic_state *state)
> +int intel_modeset_all_pipes(struct intel_atomic_state *state,
> +			    const char *reason)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc *crtc;
> @@ -5958,6 +5959,9 @@ int intel_modeset_all_pipes(struct intel_atomic_sta=
te *state)
>  		    drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
>  			continue;
>=20=20
> +		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
> +			    crtc->base.base.id, crtc->base.name, reason);
> +
>  		crtc_state->uapi.mode_changed =3D true;
>=20=20
>  		ret =3D drm_atomic_add_affected_connectors(&state->base,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 884e8e67b17c..2af4a1925063 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -683,7 +683,8 @@ void intel_modeset_driver_remove(struct drm_i915_priv=
ate *i915);
>  void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
>  void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_resume(struct drm_device *dev);
> -int intel_modeset_all_pipes(struct intel_atomic_state *state);
> +int intel_modeset_all_pipes(struct intel_atomic_state *state,
> +			    const char *reason);
>  void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_=
state,
>  					  struct intel_power_domain_mask *old_domains);
>  void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 01b0932757ed..59e4fc6191f1 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2486,7 +2486,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
>=20=20
>  		if (old_dbuf_state->joined_mbus !=3D new_dbuf_state->joined_mbus) {
>  			/* TODO: Implement vblank synchronized MBUS joining changes */
> -			ret =3D intel_modeset_all_pipes(state);
> +			ret =3D intel_modeset_all_pipes(state, "MBUS joining change");
>  			if (ret)
>  				return ret;
>  		}

--=20
Jani Nikula, Intel Open Source Graphics Center
