Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB592C4537
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:30:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814676EA2B;
	Wed, 25 Nov 2020 16:30:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA136EA2B
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:30:52 +0000 (UTC)
IronPort-SDR: 2y/WZ8q7rh28AqgA9ngVz6q8XSpr8TWaa+iNXqbb+9PC+COSMDd4zF6X7xEvUrG+Rsa+tDHDYR
 fm5int90GyWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168652223"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="168652223"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:30:52 -0800
IronPort-SDR: 1qx1sh4+ZENfKqcSXyLtUVjphDGt9BxMr5vWkKka8Bm+Akgm5a4AiAEqP7kAaqSSSWjIqFdOiV
 jf4Dmh57MZTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="403336171"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 25 Nov 2020 08:30:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:30:49 +0200
Date: Wed, 25 Nov 2020 18:30:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125163049.GR6112@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
 <20201103152834.12727-2-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152834.12727-2-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v9 01/12] drm/i915/display: Add HDR Capability
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

On Tue, Nov 03, 2020 at 08:58:23PM +0530, Uma Shankar wrote:
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

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_lspcon.c   | 28 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.h   |  1 +
>  3 files changed, 30 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index f6f0626649e0..25b2db337174 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1417,6 +1417,7 @@ struct intel_lspcon {
>  	bool active;
>  	enum drm_lspcon_mode mode;
>  	enum lspcon_vendor vendor;
> +	bool hdr_supported;

Can be packed next to the other bool.

>  };
>  =

>  struct intel_digital_port {
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index e37d45e531df..076b21885a30 100644
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
> +		drm_dbg_kms(dev, "hdr capability detection failed\n");

"hdr" vs. "HDR" elsewhere.

> +		lspcon->hdr_supported =3D false;
> +		return;

Pointless return?

> +	} else if (hdr_caps & 0x1) {
> +		drm_dbg_kms(dev, "lspcon capable of HDR\n");

"lspcon" vs. "LSPCON"

No idea about the magic dpcd reg, but otherwise seems sane enough.
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

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
