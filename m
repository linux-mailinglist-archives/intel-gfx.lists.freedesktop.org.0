Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F106140CF0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:45:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E529B6F5BF;
	Fri, 17 Jan 2020 14:45:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F776F5BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 14:45:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:45:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="220743714"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 17 Jan 2020 06:45:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2020 16:45:09 +0200
Date: Fri, 17 Jan 2020 16:45:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200117144509.GN13686@intel.com>
References: <cover.1579270868.git.jani.nikula@intel.com>
 <da8ca144020fe165af33992661568d0586a2fdeb.1579270868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da8ca144020fe165af33992661568d0586a2fdeb.1579270868.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/bios: add
 intel_bios_hdmi_level_shift()
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

On Fri, Jan 17, 2020 at 04:29:22PM +0200, Jani Nikula wrote:
> Don't access i915->vbt.ddi_port_info[] directly.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_bios.h |  1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c  | 14 ++++++--------
>  3 files changed, 16 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index b231fafc03ca..50bff4e7d5c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2569,3 +2569,12 @@ int intel_bios_max_tmds_clock(struct intel_encoder=
 *encoder)
>  =

>  	return i915->vbt.ddi_port_info[encoder->port].max_tmds_clock;
>  }
> +
> +int intel_bios_hdmi_level_shift(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	const struct ddi_vbt_port_info *info =3D
> +		&i915->vbt.ddi_port_info[encoder->port];
> +
> +	return info->hdmi_level_shift_set ? info->hdmi_level_shift : -1;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 519e983ee9e7..c6cc413bf8ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -248,5 +248,6 @@ bool intel_bios_get_dsc_params(struct intel_encoder *=
encoder,
>  			       struct intel_crtc_state *crtc_state,
>  			       int dsc_max_bpc);
>  int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
> +int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
>  =

>  #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 32ea3c7e8b62..cfaa64df9892 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -944,11 +944,11 @@ tgl_get_combo_buf_trans(struct drm_i915_private *de=
v_priv, int type, int rate,
>  	return tgl_combo_phy_ddi_translations_dp_hbr;
>  }
>  =

> -static int intel_ddi_hdmi_level(struct drm_i915_private *dev_priv, enum =
port port)
> +static int intel_ddi_hdmi_level(struct intel_encoder *encoder)
>  {
> -	struct ddi_vbt_port_info *port_info =3D &dev_priv->vbt.ddi_port_info[po=
rt];
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	int n_entries, level, default_entry;
> -	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> @@ -987,9 +987,8 @@ static int intel_ddi_hdmi_level(struct drm_i915_priva=
te *dev_priv, enum port por
>  	if (WARN_ON_ONCE(n_entries =3D=3D 0))
>  		return 0;
>  =

> -	if (port_info->hdmi_level_shift_set)
> -		level =3D port_info->hdmi_level_shift;
> -	else
> +	level =3D intel_bios_hdmi_level_shift(encoder);
> +	if (level < 0)
>  		level =3D default_entry;
>  =

>  	if (WARN_ON_ONCE(level >=3D n_entries))
> @@ -3665,8 +3664,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel_=
encoder *encoder,
>  	struct intel_digital_port *intel_dig_port =3D enc_to_dig_port(encoder);
>  	struct intel_hdmi *intel_hdmi =3D &intel_dig_port->hdmi;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	enum port port =3D encoder->port;
> -	int level =3D intel_ddi_hdmi_level(dev_priv, port);
> +	int level =3D intel_ddi_hdmi_level(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  =

>  	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
