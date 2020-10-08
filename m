Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BC72872DE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 12:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCF076E0AA;
	Thu,  8 Oct 2020 10:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E4B6E0AA
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 10:54:37 +0000 (UTC)
IronPort-SDR: L50JSAsV/MrnujgidwtmFk3iUscSP98JFCFOqiI5brNUtlJIS8VJcPPE/Gboi9BKKLNR2Ba4fS
 UXNTBCVVH9RA==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="145181889"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="145181889"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 03:54:37 -0700
IronPort-SDR: 2r6CF8TYNRbaZAOaUpbfP8GK/tnSvxK8GeSRYqX7FirUWPjRIwC4E2hsgxLtYBErm5fyBGVHnq
 7K0cCsEd9hew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="388767301"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 08 Oct 2020 03:54:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Oct 2020 13:54:34 +0300
Date: Thu, 8 Oct 2020 13:54:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201008105434.GL6112@intel.com>
References: <20201006130654.331-1-uma.shankar@intel.com>
 <20201006130654.331-2-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006130654.331-2-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v7 01/10] drm/i915/display: Add HDR Capability
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

On Tue, Oct 06, 2020 at 06:36:45PM +0530, Uma Shankar wrote:
> LSPCON firmware exposes HDR capability through LPCON_CAPABILITIES
> DPCD register. LSPCON implementations capable of supporting
> HDR set HDR_CAPABILITY bit in LSPCON_CAPABILITIES to 1. This patch
> reads the same, detects the HDR capability and adds this to
> intel_lspcon struct.
> =

> v2: Addressed Jani Nikula's review comment and fixed the HDR
>     capability detection logic
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_lspcon.c   | 30 +++++++++++++++++++
>  2 files changed, 31 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index d5dc18cb8c39..fb8cfc0981d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1398,6 +1398,7 @@ struct intel_lspcon {
>  	bool active;
>  	enum drm_lspcon_mode mode;
>  	enum lspcon_vendor vendor;
> +	bool hdr_supported;
>  };
>  =

>  struct intel_digital_port {
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index ee95fc353a56..f92962195698 100644
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
> @@ -104,6 +106,32 @@ static bool lspcon_detect_vendor(struct intel_lspcon=
 *lspcon)
>  	return true;
>  }
>  =

> +static void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
> +{
> +	struct intel_digital_port *intel_dig_port =3D
> +		container_of(lspcon, struct intel_digital_port, lspcon);

s/intel_dig_port/dig_port/ to conform with
commit 7801f3b792b0 ("drm/i915/display: prefer dig_port to reference intel_=
digital_port")

> +	struct drm_device *dev =3D intel_dig_port->base.base.dev;
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
> +		drm_dbg_kms(dev, "hdr capability detection failed\n");
> +		lspcon->hdr_supported =3D false;
> +		return;
> +	} else if (hdr_caps & 0x1) {
> +		drm_dbg_kms(dev, "lspcon capable of HDR\n");
> +		lspcon->hdr_supported =3D true;
> +	}
> +}
> +
>  static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon =
*lspcon)
>  {
>  	enum drm_lspcon_mode current_mode;
> @@ -554,6 +582,8 @@ static bool lspcon_init(struct intel_digital_port *di=
g_port)
>  		return false;
>  	}
>  =

> +	lspcon_detect_hdr_capability(lspcon);
> +

This is now too late since we do this after registering the connector.
Need to move this to the init stage, but lspcon detection requires hpd
detection logic to be enabled, so once I get the hpd init order sorted
we need to do this after intel_hpd_init() but before the connector
is registered. Hmm, maybe we can actually do it from connector's
.late_register() hook?

>  	connector->ycbcr_420_allowed =3D true;
>  	lspcon->active =3D true;
>  	DRM_DEBUG_KMS("Success: LSPCON init\n");
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
