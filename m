Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E58B827D37A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 18:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B53A6E52D;
	Tue, 29 Sep 2020 16:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4183989C96
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 16:19:40 +0000 (UTC)
IronPort-SDR: JVNpQy2aKfD7KOmbVCY5Ke5if41XHy36G1J+WWGozK9uQH+qr4Rm6bYdnj/W2AqkE3s8vsGF7/
 O84QYWACEHHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="162292038"
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="162292038"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 09:19:19 -0700
IronPort-SDR: kmD2j9OrfprbTEkf5/AJLA+9DrkfPabYxSAcHc4rPF52zAb8gkR6H6jYzegza6uXU8S3Ue3kzG
 O854bhXa1rXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="345320618"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 29 Sep 2020 09:19:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Sep 2020 19:19:15 +0300
Date: Tue, 29 Sep 2020 19:19:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200929161915.GC6112@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-6-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914210047.11972-6-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v6 05/11] drm/i915/display: Enable HDR for Parade
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

On Tue, Sep 15, 2020 at 02:30:41AM +0530, Uma Shankar wrote:
> Enable HDR for LSPCON based on Parade along with MCA.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Vipin Anand <vipin.anand@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index b0ca494f1110..60863b825cc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -36,6 +36,7 @@
>  #define LSPCON_VENDOR_MCA_OUI 0x0060AD
>  =

>  #define DPCD_MCA_LSPCON_HDR_STATUS	0x70003
> +#define DPCD_PARADE_LSPCON_HDR_STATUS	0x00511
>  =

>  /* AUX addresses to write MCA AVI IF */
>  #define LSPCON_MCA_AVI_IF_WRITE_OFFSET 0x5C0
> @@ -112,16 +113,20 @@ static void lspcon_detect_hdr_capability(struct int=
el_lspcon *lspcon)
>  		container_of(lspcon, struct intel_digital_port, lspcon);
>  	struct drm_device *dev =3D intel_dig_port->base.base.dev;
>  	struct intel_dp *dp =3D lspcon_to_intel_dp(lspcon);
> +	u32 lspcon_hdr_status_reg;
>  	u8 hdr_caps;
>  	int ret;
>  =

> -	/* Enable HDR for MCA based LSPCON devices */
>  	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> -		ret =3D drm_dp_dpcd_read(&dp->aux, DPCD_MCA_LSPCON_HDR_STATUS,
> -				       &hdr_caps, 1);
> +		lspcon_hdr_status_reg =3D DPCD_MCA_LSPCON_HDR_STATUS;
> +	else if (lspcon->vendor =3D=3D LSPCON_VENDOR_PARADE)
> +		lspcon_hdr_status_reg =3D DPCD_PARADE_LSPCON_HDR_STATUS;
>  	else
>  		return;

That could be small helper function.

>  =

> +	ret =3D drm_dp_dpcd_read(&dp->aux, lspcon_hdr_status_reg,
> +			       &hdr_caps, 1);
> +
>  	if (ret < 0) {
>  		drm_dbg_kms(dev, "hdr capability detection failed\n");
>  		lspcon->hdr_supported =3D false;
> @@ -465,14 +470,6 @@ void lspcon_write_infoframe(struct intel_encoder *en=
coder,
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct intel_lspcon *lspcon =3D enc_to_intel_lspcon(encoder);
>  =

> -	/*
> -	 * Supporting HDR on MCA LSPCON
> -	 * Todo: Add support for Parade later
> -	 */
> -	if (type =3D=3D HDMI_PACKET_TYPE_GAMUT_METADATA &&
> -	    lspcon->vendor !=3D LSPCON_VENDOR_MCA)
> -		return;
> -
>  	switch (type) {
>  	case HDMI_INFOFRAME_TYPE_AVI:
>  		if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
