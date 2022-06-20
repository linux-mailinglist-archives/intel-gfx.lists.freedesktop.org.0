Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0CE55122B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:08:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EB3510E135;
	Mon, 20 Jun 2022 08:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CE6110E0F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655712532; x=1687248532;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ceFWQJUzmnRQuVrL4RO6zRBQlAn8BIpTChObSgziNec=;
 b=G+KIWhsJQH8cxfVb3CeOTBfiSP+0cDYVEcToBwmshfit8y3jm6HHLsk3
 5AqOaH1tBMiRABSYWexKw32Dj6zEtuwJBeGcBKG2pBk1wsrZ9837Wl3rH
 LWxVNYKc6E4vb1OeIA0PgoehLsd9R95sziJQJbrPA3oR6h6KP1YOHV1OH
 10SP6OClfVAf1exJ17Xn046a/1xr8FZjmTg8aUJjsu/gWF4DfSmpAtEdA
 /t7MEpBcR048MU2sJLB19qLV0D2jAUhbQPOJuGf2Zoffb2N00bZUAR/tA
 Cl3y9OUR0BpJYyWSCdxdLs80u/8ohg2SPOPrgWAAfCxBncNIoCcDM8eRY A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="268553766"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="268553766"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:08:52 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="643002074"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:08:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: William Tseng <william.tseng@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220620075720.23274-1-william.tseng@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220616050348.24683-1-william.tseng@intel.com>
 <20220620075720.23274-1-william.tseng@intel.com>
Date: Mon, 20 Jun 2022 11:08:47 +0300
Message-ID: <87zgi7u580.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/dsi: add payload receiving code
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
Cc: William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 20 Jun 2022, William Tseng <william.tseng@intel.com> wrote:
> To support Host to read data from Peripheral after
> a DCS read command is sent over DSI.

You keep resending this. Are you changing something? If yes, what?
Where's the changelog?

BR,
Jani.


>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c      | 75 +++++++++++++++++++--
>  drivers/gpu/drm/i915/display/icl_dsi_regs.h | 13 ++++
>  2 files changed, 83 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 19bf717fd4cb..b2aa3c7902f3 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -201,6 +201,69 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *h=
ost,
>  	return 0;
>  }
>=20=20
> +static int dsi_read_pkt_payld(struct intel_dsi_host *host,
> +			      u8 *rx_buf, size_t rx_len)
> +{
> +	struct intel_dsi *intel_dsi =3D host->intel_dsi;
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_dsi->base.base.dev);
> +	enum transcoder dsi_trans =3D dsi_port_to_transcoder(host->port);
> +	u32 tmp, /*hdr_data, */payld_data;
> +	u32 payld_dw;
> +	size_t payld_read;
> +	u8 i;
> +
> +	/* step2: place a BTA reque */
> +	/* check if header credit available */
> +	if (!wait_for_header_credits(dev_priv, dsi_trans, 1)) {
> +		drm_err(&dev_priv->drm, "not ready to recive payload\n");
> +		return -EBUSY;
> +	}
> +
> +	/* place BTA request */
> +	tmp =3D intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans));
> +	tmp |=3D LINK_BTA;
> +	intel_de_write(dev_priv, DSI_LP_MSG(dsi_trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans));
> +
> +	/* step2a:  */
> +	/* step2ai: set Turn-Around Timeout */
> +	tmp =3D intel_de_read(dev_priv, DSI_TA_TO(dsi_trans));
> +	tmp &=3D ~TA_TIMEOUT_VALUE_MASK;
> +	tmp |=3D TA_TIMEOUT_VALUE(intel_dsi->turn_arnd_val);
> +	intel_de_write(dev_priv, DSI_TA_TO(dsi_trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_TA_TO(dsi_trans));
> +
> +	/* step2aii: set maximum allowed time */
> +	tmp =3D intel_de_read(dev_priv, DSI_LPRX_HOST_TO(dsi_trans));
> +	tmp &=3D ~LPRX_TIMEOUT_VALUE_MASK;
> +	tmp |=3D LPRX_TIMEOUT_VALUE(intel_dsi->lp_rx_timeout);
> +	intel_de_write(dev_priv, DSI_LPRX_HOST_TO(dsi_trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_LPRX_HOST_TO(dsi_trans));
> +
> +	/* step4a: wait and read payload */
> +	if (wait_for_us(((intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans)) &
> +		NUMBER_RX_PLOAD_DW_MASK) >> NUMBER_RX_PLOAD_DW_SHIFT) > 0, 100000)) {
> +		drm_err(&dev_priv->drm, "DSI fails to receive payload\n");
> +		return -EBUSY;
> +	}
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans));
> +	payld_dw =3D (tmp & NUMBER_RX_PLOAD_DW_MASK) >> NUMBER_RX_PLOAD_DW_SHIF=
T;
> +	payld_read =3D min(rx_len, (size_t)(4 * payld_dw));
> +
> +	for (i =3D 0; i < payld_read; i++) {
> +		if ((i % 4) =3D=3D 0)
> +			payld_data =3D intel_de_read(dev_priv, DSI_CMD_RXPYLD(dsi_trans));
> +
> +		*(rx_buf + i) =3D (payld_data >> (8 * (i % 4))) & 0xff;
> +	}
> +
> +	return (int)payld_read;
> +}
> +
>  void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1078,8 +1141,8 @@ static void gen11_dsi_setup_timeouts(struct intel_e=
ncoder *encoder,
>  	mul =3D 8 * 1000000;
>  	hs_tx_timeout =3D DIV_ROUND_UP(intel_dsi->hs_tx_timeout * mul,
>  				     divisor);
> -	lp_rx_timeout =3D DIV_ROUND_UP(intel_dsi->lp_rx_timeout * mul, divisor);
> -	ta_timeout =3D DIV_ROUND_UP(intel_dsi->turn_arnd_val * mul, divisor);
> +	lp_rx_timeout =3D intel_dsi->lp_rx_timeout;
> +	ta_timeout =3D intel_dsi->turn_arnd_val;
>=20=20
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		dsi_trans =3D dsi_port_to_transcoder(port);
> @@ -1837,9 +1900,11 @@ static ssize_t gen11_dsi_host_transfer(struct mipi=
_dsi_host *host,
>  	if (ret < 0)
>  		return ret;
>=20=20
> -	//TODO: add payload receive code if needed
> -
> -	ret =3D sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
> +	/* add payload receive code if needed */
> +	if (msg->rx_buf && msg->rx_len > 0)
> +		ret =3D dsi_read_pkt_payld(intel_dsi_host, msg->rx_buf, msg->rx_len);
> +	else
> +		ret =3D sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
>=20=20
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/dr=
m/i915/display/icl_dsi_regs.h
> index f78f28b8dd94..a77a49b42d60 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> +++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> @@ -251,6 +251,18 @@
>  #define  NUMBER_RX_PLOAD_DW_MASK	(0xff << 0)
>  #define  NUMBER_RX_PLOAD_DW_SHIFT	0
>=20=20
> +#define _DSI_CMD_RXHDR_0		0x6b0e0
> +#define _DSI_CMD_RXHDR_1		0x6b8e0
> +#define DSI_CMD_RXHDR(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_CMD_RXHDR_0,\
> +						  _DSI_CMD_RXHDR_1)
> +
> +#define _DSI_CMD_RXPYLD_0		0x6b0e4
> +#define _DSI_CMD_RXPYLD_1		0x6b8e4
> +#define DSI_CMD_RXPYLD(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_CMD_RXPYLD_0,\
> +						  _DSI_CMD_RXPYLD_1)
> +
>  #define _DSI_CMD_TXCTL_0		0x6b0d0
>  #define _DSI_CMD_TXCTL_1		0x6b8d0
>  #define DSI_CMD_TXCTL(tc)		_MMIO_DSI(tc,	\
> @@ -294,6 +306,7 @@
>  #define  LPTX_IN_PROGRESS		(1 << 17)
>  #define  LINK_IN_ULPS			(1 << 16)
>  #define  LINK_ULPS_TYPE_LP11		(1 << 8)
> +#define  LINK_BTA			(1 << 1)
>  #define  LINK_ENTER_ULPS		(1 << 0)
>=20=20
>  /* DSI timeout registers */

--=20
Jani Nikula, Intel Open Source Graphics Center
