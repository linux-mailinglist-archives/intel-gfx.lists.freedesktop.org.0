Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CED15737C81
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 09:48:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20BEE10E0A2;
	Wed, 21 Jun 2023 07:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E08010E0A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 07:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687333722; x=1718869722;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=HjB4Sk+t8Zuj6qzyjo3tqLpTqbx2BfZCpM1O8lUJjgg=;
 b=HtA0RRKiQsTyG9YqVjqjSlzf4qbzbBOhVRk2gPWbqS/JtVMYk6+GkelF
 DyjymBkBZyi8RKnQ+RkGEtHKAKVQgWOKk0qLS1dp6GzNSH8T4evWL/r2u
 056cZzCbZCpYIC3NObaVoXXG27/32mVXi9ZGwGDiwURoeBQ2JvPu0EUuP
 08Jgu4jGrUnZa33kVamdANHMIRPRWw5yzaiLcUz9P/yfrkXj+AVc1iSj3
 T+fOPlKWxJ5pawp4lMrkQKnuhmMf8xnJZ5KfCDrp0kAS1eqiiu9W1tH8l
 ECUNDAcKj4uqm1mxuA2Vv21MUK9ZIHo+G56oXAH1Fs2y8IncBZ/m+nr3g g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="389538801"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="389538801"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:46:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="888557007"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="888557007"
Received: from dafnaroz-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.122])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:46:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230620173242.26923-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
 <20230620173242.26923-3-ville.syrjala@linux.intel.com>
Date: Wed, 21 Jun 2023 10:46:46 +0300
Message-ID: <87cz1pfeah.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915: Only populate aux_ch is
 really needed
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

On Tue, 20 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Mixing VBT based AUX CH with platform defaults seems like
> a recipe for conflicts. Let's only populate AUX CH if we
> absolutely need it, that is only if we are dealing with
> a DP output or a TC port (which need it due to some power
> well shenanigans).
>
> TODO: double check that real VBTs do in fact populate
>       the AUX CH for HDMI TC legacy ports...
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c  |  1 -
>  drivers/gpu/drm/i915/display/intel_ddi.c | 12 +++++++++++-
>  2 files changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index c1fd13bdc9d2..634b14116d9d 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -775,6 +775,5 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>=20=20
>  	intel_infoframe_init(dig_port);
>=20=20
> -	dig_port->aux_ch =3D intel_dp_aux_ch(intel_encoder);
>  	intel_hdmi_init_connector(dig_port, intel_connector);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 6cb24a472a9b..662b5ceef3c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4676,6 +4676,14 @@ static bool port_strap_detected(struct drm_i915_pr=
ivate *i915, enum port port)
>  	}
>  }
>=20=20
> +static bool need_aux_ch(struct intel_encoder *encoder, bool init_dp)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> +
> +	return init_dp || intel_phy_is_tc(i915, phy);
> +}
> +
>  void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  {
>  	struct intel_digital_port *dig_port;
> @@ -4929,7 +4937,9 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>=20=20
>  	dig_port->dp.output_reg =3D INVALID_MMIO_REG;
>  	dig_port->max_lanes =3D intel_ddi_max_lanes(dig_port);
> -	dig_port->aux_ch =3D intel_dp_aux_ch(encoder);
> +
> +	if (need_aux_ch(encoder, init_dp))
> +		dig_port->aux_ch =3D intel_dp_aux_ch(encoder);
>=20=20
>  	if (intel_phy_is_tc(dev_priv, phy)) {
>  		bool is_legacy =3D

--=20
Jani Nikula, Intel Open Source Graphics Center
