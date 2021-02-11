Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C45B318B5D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 14:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E576E2EF;
	Thu, 11 Feb 2021 13:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A88B6E2EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 13:03:08 +0000 (UTC)
IronPort-SDR: XwsHNQWvoNnQ8BiVzHZpFBx8MpKgP05ce0hyPjy9Ln20gMCEHyZyliom6l3oKZFta4jaa7ACig
 dLzkqzW79Kjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="178726978"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="178726978"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 05:03:05 -0800
IronPort-SDR: ZyGZlBkFPDa2/jO048+FL1MvSnjsuCHmRjLgBGfuFNmw8Ih/W8rxfR0j4tLFY8e1v/50/d9Tjc
 c4MYIM67tjEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="362497126"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 11 Feb 2021 05:03:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Feb 2021 15:03:01 +0200
Date: Thu, 11 Feb 2021 15:03:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <YCUrBZrCITUBmI2T@intel.com>
References: <20210211114209.23866-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211114209.23866-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Handle lane polarity for
 DDI port
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

On Thu, Feb 11, 2021 at 05:12:09PM +0530, Uma Shankar wrote:
> Lane Reversal is required for some of the DDI ports. This information
> is populated in VBT and driver should read the same and set the
> polarity while enabling the port. This patch handles the same.
> =

> It helps fix a display blankout issue on DP ports on certain
> platforms.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c  |  3 +++
>  3 files changed, 22 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 7118530a1c38..dd51413e7f45 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2674,6 +2674,23 @@ intel_bios_is_lspcon_present(const struct drm_i915=
_private *i915,
>  	return HAS_LSPCON(i915) && child && child->lspcon;
>  }
>  =

> +/**
> + * intel_bios_is_lane_reversal_needed - if lane reversal needed on port
> + * @i915:       i915 device instance
> + * @port:       port to check
> + *
> + * Return true if port requires lane reversal
> + */
> +bool
> +intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
> +				   enum port port)
> +{
> +	const struct child_device_config *child =3D
> +		i915->vbt.ddi_port_info[port].child;
> +
> +	return child && child->lane_reversal;
> +}
> +
>  enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
>  				   enum port port)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index e29e79faa01b..f25190ecfe97 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -241,6 +241,8 @@ bool intel_bios_is_port_hpd_inverted(const struct drm=
_i915_private *i915,
>  				     enum port port);
>  bool intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
>  				  enum port port);
> +bool intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i=
915,
> +					enum port port);
>  enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv, en=
um port port);
>  bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>  			       struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3c4003605f93..2d6906f6995f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4082,6 +4082,9 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  			intel_de_read(dev_priv, DDI_BUF_CTL(port))
>  			& (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
>  =

> +	if (intel_bios_is_lane_reversal_needed(dev_priv, port))
> +		dig_port->saved_port_bits |=3D DDI_BUF_PORT_REVERSAL;
> +

Not a huge fan of saved_port_bits in general but as long as we have it
stuffing this in there seems like the best option.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  	dig_port->dp.output_reg =3D INVALID_MMIO_REG;
>  	dig_port->max_lanes =3D intel_ddi_max_lanes(dig_port);
>  	dig_port->aux_ch =3D intel_bios_port_aux_ch(dev_priv, port);
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
