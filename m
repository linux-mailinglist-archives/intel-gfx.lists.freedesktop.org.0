Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DF77204E4
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 16:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E6310E01F;
	Fri,  2 Jun 2023 14:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A231910E01F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 14:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685717484; x=1717253484;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=46aoR28rmciVz4zQBZrOBx68S1+9Ahtu23R+avVrLr4=;
 b=mvgIwUtCrmMViPKsTVtsnXBgDWxQeiDlMU8cX9mACCJajhpZYOliXfFJ
 JnQQq4yc5+miMIRvHbnmdYgI/1XJu5QTSQmVdVhCzDyb3iyYN6k21uCyP
 g3ziZLXo8Fn4xRgEh7Teho3jb26NzbyxUBhi49fanFiRfnRj5e8d0JaGY
 krv4dK5VQ2HdHQe1YJrA/zy+Q9GVSajIzcYa9lYYVGxpRNs1XQsWd650Y
 6ETEIpbbaeiosmRVLUDrIOfhWToXtTEAcaZZ5ilKBUgcmFlDf9ozisDq5
 TFmVC1SV3xakWPSwMlU39DAK/3mQ2VHyy60HzQfJE9+DNKb0ziSyT+qWM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="335500107"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="335500107"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:51:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="820315587"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="820315587"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:51:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230531134806.23065-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-8-ville.syrjala@linux.intel.com>
Date: Fri, 02 Jun 2023 17:51:19 +0300
Message-ID: <87bkhxex3s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915: Convert HSW/BDW to use
 port_mask for DDI probe
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
> Make HSW/BDW use port_mask for output probing as well.
> To achieve that the strap checks are moved into
> intel_ddi_init() itself. Or should we move them to the
> runtime port_mask init instead? Maybe not since the hardware
> is still there, just not connected to anything.
>
> v2: Account for DDI-E in strap detection
>     Keep to the old CRT->DDI init order
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 29 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 23 +++-------------
>  2 files changed, 33 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 31001b9a29b0..d89a9b85a780 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4657,6 +4657,29 @@ static void intel_ddi_tc_encoder_shutdown_complete=
(struct intel_encoder *encoder
>  #define port_tc_name(port) ((port) - PORT_TC1 + '1')
>  #define tc_port_name(tc_port) ((tc_port) - TC_PORT_1 + '1')
>=20=20
> +static bool port_strap_detected(struct drm_i915_private *i915, enum port=
 port)
> +{
> +	/* straps not used on skl+ */
> +	if (DISPLAY_VER(i915) >=3D 9)
> +		return true;
> +
> +	switch (port) {
> +	case PORT_A:
> +		return intel_de_read(i915, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DET=
ECTED;
> +	case PORT_B:
> +		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDIB_DETECTED;
> +	case PORT_C:
> +		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDIC_DETECTED;
> +	case PORT_D:
> +		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDID_DETECTED;
> +	case PORT_E:
> +		return true; /* no strap for DDI-E */
> +	default:
> +		MISSING_CASE(port);
> +		return false;
> +	}
> +}
> +
>  void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  {
>  	struct intel_digital_port *dig_port;
> @@ -4665,6 +4688,12 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
riv, enum port port)
>  	bool init_hdmi, init_dp;
>  	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>=20=20
> +	if (!port_strap_detected(dev_priv, port)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Port %c strap not detected\n", port_name(port));
> +		return;
> +	}
> +
>  	if (!assert_port_valid(dev_priv, port))
>  		return;

I might have put this check first before the straps, so we get the
invalid port message for bogus ports instead of MISSING_CASE().

Either way,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 12f2e3897595..1ae4854b275e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7387,9 +7387,12 @@ void intel_setup_outputs(struct drm_i915_private *=
dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 9) {
> +	if (HAS_DDI(dev_priv)) {
>  		enum port port;
>=20=20
> +		if (intel_ddi_crt_present(dev_priv))
> +			intel_crt_init(dev_priv);
> +
>  		for_each_port_masked(port, DISPLAY_RUNTIME_INFO(dev_priv)->port_mask)
>  			intel_ddi_init(dev_priv, port);
>=20=20
> @@ -7400,24 +7403,6 @@ void intel_setup_outputs(struct drm_i915_private *=
dev_priv)
>=20=20
>  		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  			vlv_dsi_init(dev_priv);
> -	} else if (HAS_DDI(dev_priv)) {
> -		u32 found;
> -
> -		if (intel_ddi_crt_present(dev_priv))
> -			intel_crt_init(dev_priv);
> -
> -		/* Haswell uses DDI functions to detect digital outputs. */
> -		found =3D intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISP=
LAY_DETECTED;
> -		if (found)
> -			intel_ddi_init(dev_priv, PORT_A);
> -
> -		found =3D intel_de_read(dev_priv, SFUSE_STRAP);
> -		if (found & SFUSE_STRAP_DDIB_DETECTED)
> -			intel_ddi_init(dev_priv, PORT_B);
> -		if (found & SFUSE_STRAP_DDIC_DETECTED)
> -			intel_ddi_init(dev_priv, PORT_C);
> -		if (found & SFUSE_STRAP_DDID_DETECTED)
> -			intel_ddi_init(dev_priv, PORT_D);
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		int found;

--=20
Jani Nikula, Intel Open Source Graphics Center
