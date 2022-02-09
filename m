Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3322C4AF2D9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:35:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C26210E130;
	Wed,  9 Feb 2022 13:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A94110E130
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 13:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644413745; x=1675949745;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ymLlqP0npZDxHpjYOctdR8gU1I0ytHZI6kzqmu4qOyM=;
 b=PFcQZ8TngfqIclIjiPO1h9ity4GtpClcA+wkOKHq28Xm2HNQSjNpaaHf
 ofw0gQmB+4qkWsKWdPJXJaAXore70vvRkoo2BBQC+UqrKVqAIZXQgU4G/
 cGDC5j3Nvtvi4P+zqkZ69OOzY6T1cYGF9PFJvnsX/frYmX+zUISZFfOif
 GE46z4yQQ+t0SvnkT55Dcifzq7nfo9m07OPPLrVvgUt63AuULy5t1yG7c
 HWYWxiydlPMIRLgeI8+DNdTNxTiAeKHG5C+zei6ZJ7n5Yi7QKF69S8FBl
 XujL/VIskh5JCenJKdjeMec+8lwpWgR1VLHMwLSueJF3egFY1fv+w+QfM g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="312497909"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="312497909"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:35:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="633217376"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:35:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220209113526.7595-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
 <20220209113526.7595-5-ville.syrjala@linux.intel.com>
Date: Wed, 09 Feb 2022 15:35:41 +0200
Message-ID: <87r18cnowi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Extract hsw_ips_get_config()
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

On Wed, 09 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the IPS state readout into hsw_ips.c.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c       | 20 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/hsw_ips.h       |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c | 14 +-------------
>  3 files changed, 22 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i91=
5/display/hsw_ips.c
> index fb34ef615025..38014e0cc9ad 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -249,3 +249,23 @@ int hsw_ips_compute_config(struct intel_atomic_state=
 *state,
>=20=20
>  	return 0;
>  }
> +
> +void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	if (!hsw_crtc_supports_ips(crtc))
> +		return;
> +
> +	if (IS_HASWELL(i915)) {
> +		crtc_state->ips_enabled =3D intel_de_read(i915, IPS_CTL) & IPS_ENABLE;
> +	} else {
> +		/*
> +		 * We cannot readout IPS state on broadwell, set to
> +		 * true so we can set it to a defined state on first
> +		 * commit.
> +		 */
> +		crtc_state->ips_enabled =3D true;
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.h b/drivers/gpu/drm/i91=
5/display/hsw_ips.h
> index d63bdef5100a..4564dee497d7 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.h
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.h
> @@ -21,5 +21,6 @@ bool hsw_crtc_supports_ips(struct intel_crtc *crtc);
>  bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e);
>  int hsw_ips_compute_config(struct intel_atomic_state *state,
>  			   struct intel_crtc *crtc);
> +void hsw_ips_get_config(struct intel_crtc_state *crtc_state);
>=20=20
>  #endif /* __HSW_IPS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 134527981e2b..cdfee4ba1166 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4191,19 +4191,7 @@ static bool hsw_get_pipe_config(struct intel_crtc =
*crtc,
>  			ilk_get_pfit_config(pipe_config);
>  	}
>=20=20
> -	if (hsw_crtc_supports_ips(crtc)) {
> -		if (IS_HASWELL(dev_priv))
> -			pipe_config->ips_enabled =3D intel_de_read(dev_priv,
> -								 IPS_CTL) & IPS_ENABLE;
> -		else {
> -			/*
> -			 * We cannot readout IPS state on broadwell, set to
> -			 * true so we can set it to a defined state on first
> -			 * commit.
> -			 */
> -			pipe_config->ips_enabled =3D true;
> -		}
> -	}
> +	hsw_ips_get_config(pipe_config);
>=20=20
>  	if (pipe_config->cpu_transcoder !=3D TRANSCODER_EDP &&
>  	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {

--=20
Jani Nikula, Intel Open Source Graphics Center
