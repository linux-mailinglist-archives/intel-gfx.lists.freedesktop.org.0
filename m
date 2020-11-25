Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E436A2C4577
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D596EA40;
	Wed, 25 Nov 2020 16:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79BC96EA40
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:42:18 +0000 (UTC)
IronPort-SDR: KdB9wQT5Zfx5jisDixQpfdhLE/1/R2HKCMgvqY8+hm91Os+L6ZnBi0VmcANvqVT+3TnY3VI6jJ
 mde+CN531SuQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="169603728"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="169603728"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:42:17 -0800
IronPort-SDR: yeTwf5ZaUzpn0LAIW/3jliS78I6dakZCbVULI5fT3MHDucM/yQ7FB7TKBVPj9w1rfWIg7KNXlb
 eFv0UG6v3uog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="333049064"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 25 Nov 2020 08:42:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:42:10 +0200
Date: Wed, 25 Nov 2020 18:42:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125164210.GV6112@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
 <20201103152834.12727-8-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152834.12727-8-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v9 07/12] drm/i915/display: Enable HDR for Parade
 based lspcon
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
Cc: intel-gfx@lists.freedesktop.org, Vipin Anand <vipin.anand@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 03, 2020 at 08:58:29PM +0530, Uma Shankar wrote:
> Enable HDR for LSPCON based on Parade along with MCA.
> =

> v2: Added a helper for status reg as suggested by Ville.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Vipin Anand <vipin.anand@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 19831f5e51bf..0cd3e0853cbf 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -36,6 +36,7 @@
>  #define LSPCON_VENDOR_MCA_OUI 0x0060AD
>  =

>  #define DPCD_MCA_LSPCON_HDR_STATUS	0x70003
> +#define DPCD_PARADE_LSPCON_HDR_STATUS	0x00511

More magic I know nothing about. But if it works it works.

>  =

>  /* AUX addresses to write MCA AVI IF */
>  #define LSPCON_MCA_AVI_IF_WRITE_OFFSET 0x5C0
> @@ -106,21 +107,27 @@ static bool lspcon_detect_vendor(struct intel_lspco=
n *lspcon)
>  	return true;
>  }
>  =

> +static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
> +{
> +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> +		return DPCD_MCA_LSPCON_HDR_STATUS;
> +	else
> +		return DPCD_PARADE_LSPCON_HDR_STATUS;
> +}
> +
>  void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
>  {
>  	struct intel_digital_port *dig_port =3D
>  		container_of(lspcon, struct intel_digital_port, lspcon);
>  	struct drm_device *dev =3D dig_port->base.base.dev;
>  	struct intel_dp *dp =3D lspcon_to_intel_dp(lspcon);
> +	u32 lspcon_hdr_status_reg;
>  	u8 hdr_caps;
>  	int ret;
>  =

> -	/* Enable HDR for MCA based LSPCON devices */
> -	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> -		ret =3D drm_dp_dpcd_read(&dp->aux, DPCD_MCA_LSPCON_HDR_STATUS,
> -				       &hdr_caps, 1);
> -	else
> -		return;
> +	lspcon_hdr_status_reg =3D get_hdr_status_reg(lspcon);

This extra variable seems rather pointless.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +	ret =3D drm_dp_dpcd_read(&dp->aux, lspcon_hdr_status_reg,
> +			       &hdr_caps, 1);
>  =

>  	if (ret < 0) {
>  		drm_dbg_kms(dev, "hdr capability detection failed\n");
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
