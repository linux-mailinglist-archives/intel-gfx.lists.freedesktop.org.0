Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A17720428
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 16:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA7E10E0A7;
	Fri,  2 Jun 2023 14:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9093810E0A7
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 14:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685715603; x=1717251603;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=d5JW1I+CocganXZHZR+OfNyWpVxBdfPJnVAYux17qTk=;
 b=JjIFBQhSTp74q1aXotALOy68C1OapWuwYK4KbwIunhKtpa1z/oFlzqJg
 2TUdbPP09Ei/G8zu5d4/j762592p7gHbjimvv8SARt59msgUxJWcMxBm9
 WL4xwyW0ACprd1w344589blbu3KHhreVGyxHxjtuUbHqPB6yh0qPv9Nlu
 9dDn/cg3fVPhfDLpUe7lH2wZnQPZoF455g8yCCTnA8Ik0GZmO+Gny036P
 4KU7rnURPSbYwqiPBrEst/72hsi127m2sok3uJZHv8uzp2q2uajRNOmKN
 SLBSdX8n/T2K3zZqVC5Ubsj8ptdlAwJQgCcNYzrJzk4JHB/DK4B1pK2v2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="340504854"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="340504854"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:20:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="777687855"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="777687855"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:20:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230531134806.23065-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-5-ville.syrjala@linux.intel.com>
Date: Fri, 02 Jun 2023 17:19:58 +0300
Message-ID: <87jzwmdjzl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 4/7] drm/i915: Assert that the port being
 initialized is valid
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

On Wed, 31 May 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Sprinkle some asserts to catch any mishaps in the port_mask
> vs. output init.
>
> For DDI/DP/HDMI/SDVO I decided that we want to bail out for
> an invalid port since those are the encoder types where
> we might want consider driving the whole thing from the VBT
> child device list, and bogus VBTs could be a real issue
> (if for no other reason than the i915.vbt_firmware).
>
> For DVO and HSW/BDW CRT port I just threw the assert in
> there for good measure.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I've got increasingly mixed feelings about the assert_* naming,
including in the existing functions, because "assert" feels like it's
only there for debug builds.

Regardless, they should be all renamed in one go instead of forking
another naming lineage right here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c        | 3 +++
>  drivers/gpu/drm/i915/display/g4x_hdmi.c      | 3 +++
>  drivers/gpu/drm/i915/display/intel_crt.c     | 2 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 3 +++
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_display.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_dvo.c     | 2 ++
>  drivers/gpu/drm/i915/display/intel_sdvo.c    | 3 +++
>  8 files changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 112d91d81fdc..c58a3f249a01 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1259,6 +1259,9 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  	struct drm_encoder *encoder;
>  	struct intel_connector *intel_connector;
>=20=20
> +	if (!assert_port_valid(dev_priv, port))
> +		return false;
> +
>  	devdata =3D intel_bios_encoder_data_lookup(dev_priv, port);
>=20=20
>  	/* FIXME bail? */
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 5c187e6e0472..59704939c111 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -667,6 +667,9 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>  	struct intel_encoder *intel_encoder;
>  	struct intel_connector *intel_connector;
>=20=20
> +	if (!assert_port_valid(dev_priv, port))
> +		return;
> +
>  	devdata =3D intel_bios_encoder_data_lookup(dev_priv, port);
>=20=20
>  	/* FIXME bail? */
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 673c03646696..643acf90e6d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -1062,6 +1062,8 @@ void intel_crt_init(struct drm_i915_private *dev_pr=
iv)
>  	}
>=20=20
>  	if (HAS_DDI(dev_priv)) {
> +		assert_port_valid(dev_priv, PORT_E);
> +
>  		crt->base.port =3D PORT_E;
>  		crt->base.get_config =3D hsw_crt_get_config;
>  		crt->base.get_hw_state =3D intel_ddi_get_hw_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index d1a9a3cf94b5..31001b9a29b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4665,6 +4665,9 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  	bool init_hdmi, init_dp;
>  	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>=20=20
> +	if (!assert_port_valid(dev_priv, port))
> +		return;
> +
>  	/*
>  	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
>  	 * have taken over some of the PHYs and made them unavailable to the
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 4f158c428937..d3fc498c82c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7371,6 +7371,12 @@ static bool intel_ddi_crt_present(struct drm_i915_=
private *dev_priv)
>  	return true;
>  }
>=20=20
> +bool assert_port_valid(struct drm_i915_private *i915, enum port port)
> +{
> +	return !drm_WARN(&i915->drm, !(DISPLAY_RUNTIME_INFO(i915)->port_mask & =
BIT(port)),
> +			 "Platform does not support port %c\n", port_name(port));
> +}
> +
>  void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_encoder *encoder;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index c744c021af23..53ca0e4e2357 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -539,6 +539,8 @@ void assert_transcoder(struct drm_i915_private *dev_p=
riv,
>  #define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
>  #define assert_transcoder_disabled(d, t) assert_transcoder(d, t, false)
>=20=20
> +bool assert_port_valid(struct drm_i915_private *i915, enum port port);
> +
>  /*
>   * Use I915_STATE_WARN(x) (rather than WARN() and WARN_ON()) for hw stat=
e sanity
>   * checks to check for unexpected conditions which may not necessarily b=
e a user
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index 9884678743b6..b386894c3a6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -509,6 +509,8 @@ void intel_dvo_init(struct drm_i915_private *i915)
>  		return;
>  	}
>=20=20
> +	assert_port_valid(i915, intel_dvo->dev.port);
> +
>  	encoder->type =3D INTEL_OUTPUT_DVO;
>  	encoder->power_domain =3D POWER_DOMAIN_PORT_OTHER;
>  	encoder->port =3D intel_dvo->dev.port;
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 34ee9dd82a78..6ed613558cf8 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -3330,6 +3330,9 @@ bool intel_sdvo_init(struct drm_i915_private *dev_p=
riv,
>  	struct intel_sdvo *intel_sdvo;
>  	int i;
>=20=20
> +	if (!assert_port_valid(dev_priv, port))
> +		return false;
> +
>  	assert_sdvo_port_valid(dev_priv, port);
>=20=20
>  	intel_sdvo =3D kzalloc(sizeof(*intel_sdvo), GFP_KERNEL);

--=20
Jani Nikula, Intel Open Source Graphics Center
