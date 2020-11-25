Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A837E2C4556
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1F36EA05;
	Wed, 25 Nov 2020 16:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EF26EA05
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:36:22 +0000 (UTC)
IronPort-SDR: LdM4pbeRTcxK4UFvS27Swdb32PGN1kMsMndGctmrAuPZ9Y8LCsQk1kVeIGpKMS/5MiOzpwomSF
 qeUvE+h8Be+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="236295021"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="236295021"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:36:21 -0800
IronPort-SDR: Cs89kQpCI1c5xV+nMd0GNV2hZCl5pPrFZaL9q8oQsk98oIU829peZEZomdnYLKijrMx2GICFg/
 OqIrefODXkIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="359226931"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 25 Nov 2020 08:36:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:36:18 +0200
Date: Wed, 25 Nov 2020 18:36:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125163618.GS6112@intel.com>
References: <20201103152834.12727-4-uma.shankar@intel.com>
 <20201104073053.32318-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104073053.32318-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v10 03/12] drm/i915/display: Attach HDR property
 for capable Gen9 devices
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 04, 2020 at 01:00:53PM +0530, Uma Shankar wrote:
> Attach HDR property for Gen9 devices with MCA LSPCON
> chips.
> =

> v2: Cleaned HDR property attachment logic based on capability
> as per Jani Nikula's suggestion.
> =

> v3: Fixed the HDR property attachment logic as per the new changes
> by Kai-Feng to align with lspcon detection failure on some devices.
> =

> v4: Add HDR proprty in late_register to handle lspcon detection,
> as suggested by Ville.
> =

> v5: Init Lspcon only if advertized from BIOS.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 14 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
>  3 files changed, 16 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index cf09aca7607b..07eda10f8add 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6714,6 +6714,8 @@ intel_dp_connector_register(struct drm_connector *c=
onnector)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->dev);
>  	struct intel_dp *intel_dp =3D intel_attached_dp(to_intel_connector(conn=
ector));
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	struct intel_lspcon *lspcon =3D &dig_port->lspcon;
>  	int ret;
>  =

>  	ret =3D intel_connector_register(connector);
> @@ -6727,6 +6729,18 @@ intel_dp_connector_register(struct drm_connector *=
connector)
>  	ret =3D drm_dp_aux_register(&intel_dp->aux);
>  	if (!ret)
>  		drm_dp_cec_register_connector(&intel_dp->aux, connector);
> +
> +	if (!intel_bios_is_lspcon_present(i915, dig_port->base.port))
> +		return ret;
> +
> +	if (lspcon_init(dig_port)) {
> +		lspcon_detect_hdr_capability(lspcon);
> +		if (lspcon->hdr_supported)

Kinda messy having all these ifs for this little thing.
Probsbly should do a followup to clean up all this lspcon
init/resume stuff to be less convoluted.

> +			drm_object_attach_property(&connector->base,
> +						   connector->dev->mode_config.hdr_output_metadata_property,
> +						   0);

Assuming this doesn't trip up the
"can't attach props to registered connectors" checks

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +	}
> +
>  	return ret;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 46565ae555b1..336494b60d11 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -553,7 +553,7 @@ void lspcon_wait_pcon_mode(struct intel_lspcon *lspco=
n)
>  	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
>  }
>  =

> -static bool lspcon_init(struct intel_digital_port *dig_port)
> +bool lspcon_init(struct intel_digital_port *dig_port)
>  {
>  	struct intel_dp *dp =3D &dig_port->dp;
>  	struct intel_lspcon *lspcon =3D &dig_port->lspcon;
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/dr=
m/i915/display/intel_lspcon.h
> index 98043ba50dd4..42ccb21c908f 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -15,6 +15,7 @@ struct intel_digital_port;
>  struct intel_encoder;
>  struct intel_lspcon;
>  =

> +bool lspcon_init(struct intel_digital_port *dig_port);
>  void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
>  void lspcon_resume(struct intel_digital_port *dig_port);
>  void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
