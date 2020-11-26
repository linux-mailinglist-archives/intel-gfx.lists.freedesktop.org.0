Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A772C593D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 17:26:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3DF6E994;
	Thu, 26 Nov 2020 16:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3D0E6E994
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 16:26:28 +0000 (UTC)
IronPort-SDR: M8Pfo6SxeQ7YJn7uYW77ZuaSu93HIgPU0UH7OOXHZp/w0SBsEV1UukuQKBxth7i5DSP9l0HtH4
 L4bM8EC0fGKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="151559897"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="151559897"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 08:26:25 -0800
IronPort-SDR: uWSDCtEFFBMK0DAt83vniKM5cxBAxcC32nUnANcjx+SU1Tcs5GxFtrrXV8g3hN6zoJWXMNqA/S
 q/adbz7J9mZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="343982543"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 26 Nov 2020 08:26:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Nov 2020 18:26:22 +0200
Date: Thu, 26 Nov 2020 18:26:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201126162622.GE6112@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
 <20201126081445.29759-2-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126081445.29759-2-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v11 01/13] drm/i915/display: Add HDR Capability
 detection for LSPCON
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

On Thu, Nov 26, 2020 at 01:44:33PM +0530, Uma Shankar wrote:
> LSPCON firmware exposes HDR capability through LPCON_CAPABILITIES
> DPCD register. LSPCON implementations capable of supporting
> HDR set HDR_CAPABILITY bit in LSPCON_CAPABILITIES to 1. This patch
> reads the same, detects the HDR capability and adds this to
> intel_lspcon struct.
> =

> v2: Addressed Jani Nikula's review comment and fixed the HDR
>     capability detection logic
> =

> v3: Deferred HDR detection from lspcon_init (Ville)
> =

> v4: Addressed Ville's minor review comments, added his RB.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Reviewed-by: Ville Syrj=E4 <ville.syrjala@linux.intel.com>

Wrong name

> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_lspcon.c   | 27 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.h   |  1 +
>  3 files changed, 29 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index ce82d654d0f2..5a949218dd3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1450,6 +1450,7 @@ enum lspcon_vendor {
>  =

>  struct intel_lspcon {
>  	bool active;
> +	bool hdr_supported;
>  	enum drm_lspcon_mode mode;
>  	enum lspcon_vendor vendor;
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index e37d45e531df..3065727015a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -35,6 +35,8 @@
>  #define LSPCON_VENDOR_PARADE_OUI 0x001CF8
>  #define LSPCON_VENDOR_MCA_OUI 0x0060AD
>  =

> +#define DPCD_MCA_LSPCON_HDR_STATUS	0x70003
> +
>  /* AUX addresses to write MCA AVI IF */
>  #define LSPCON_MCA_AVI_IF_WRITE_OFFSET 0x5C0
>  #define LSPCON_MCA_AVI_IF_CTRL 0x5DF
> @@ -104,6 +106,31 @@ static bool lspcon_detect_vendor(struct intel_lspcon=
 *lspcon)
>  	return true;
>  }
>  =

> +void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
> +{
> +	struct intel_digital_port *dig_port =3D
> +		container_of(lspcon, struct intel_digital_port, lspcon);
> +	struct drm_device *dev =3D dig_port->base.base.dev;
> +	struct intel_dp *dp =3D lspcon_to_intel_dp(lspcon);
> +	u8 hdr_caps;
> +	int ret;
> +
> +	/* Enable HDR for MCA based LSPCON devices */
> +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> +		ret =3D drm_dp_dpcd_read(&dp->aux, DPCD_MCA_LSPCON_HDR_STATUS,
> +				       &hdr_caps, 1);
> +	else
> +		return;
> +
> +	if (ret < 0) {
> +		drm_dbg_kms(dev, "HDR capability detection failed\n");
> +		lspcon->hdr_supported =3D false;
> +	} else if (hdr_caps & 0x1) {
> +		drm_dbg_kms(dev, "LSPCON capable of HDR\n");
> +		lspcon->hdr_supported =3D true;
> +	}
> +}
> +
>  static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon =
*lspcon)
>  {
>  	enum drm_lspcon_mode current_mode;
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/dr=
m/i915/display/intel_lspcon.h
> index b03dcb7076d8..a19b3564c635 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -15,6 +15,7 @@ struct intel_digital_port;
>  struct intel_encoder;
>  struct intel_lspcon;
>  =

> +void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
>  void lspcon_resume(struct intel_digital_port *dig_port);
>  void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
>  void lspcon_write_infoframe(struct intel_encoder *encoder,
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
