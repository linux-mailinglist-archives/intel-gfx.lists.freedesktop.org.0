Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EE13F822C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 07:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9EF889AC9;
	Thu, 26 Aug 2021 05:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F59689AC9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 05:54:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="239866380"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="239866380"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 22:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="684777187"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by fmsmga006.fm.intel.com with ESMTP; 25 Aug 2021 22:54:48 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 26 Aug 2021 06:54:46 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.010;
 Thu, 26 Aug 2021 11:24:45 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [v4 3/7] drm/i915/dsi: wait for header and payload credit
 available
Thread-Index: AQHXj5B3xhtZJuPJ0E+4ha7mgx4eLauFXcVQ
Date: Thu, 26 Aug 2021 05:54:45 +0000
Message-ID: <73675ce3e86b42c9ba70bd95354d17e3@intel.com>
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
 <20210812154237.13911-4-shawn.c.lee@intel.com>
In-Reply-To: <20210812154237.13911-4-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v4 3/7] drm/i915/dsi: wait for header and payload
 credit available
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

> -----Original Message-----
> From: Lee, Shawn C <shawn.c.lee@intel.com>
> Sent: Thursday, August 12, 2021 9:13 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>; Chiou, Cooper
> <cooper.chiou@intel.com>; Tseng, William <william.tseng@intel.com>; Lee,
> Shawn C <shawn.c.lee@intel.com>; Jani Nikula <jani.nikula@linux.intel.com=
>
> Subject: [v4 3/7] drm/i915/dsi: wait for header and payload credit availa=
ble
>=20
> Driver should wait for free header or payload buffer in FIFO.
> It would be good to wait a while for HW to release credit before give it =
up to
> write to HW. Without sending initailize command sets completely. It would
> caused MIPI display can't light up properly.
>=20
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>

Looks good to me.
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 40 ++++++++++++--------------
>  1 file changed, 19 insertions(+), 21 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 43ec7fcd3f5d..1780830d9909 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -54,20 +54,28 @@ static int payload_credits_available(struct
> drm_i915_private *dev_priv,
>  		>> FREE_PLOAD_CREDIT_SHIFT;
>  }
>=20
> -static void wait_for_header_credits(struct drm_i915_private *dev_priv,
> -				    enum transcoder dsi_trans)
> +static bool wait_for_header_credits(struct drm_i915_private *dev_priv,
> +				    enum transcoder dsi_trans, int hdr_credit)
>  {
>  	if (wait_for_us(header_credits_available(dev_priv, dsi_trans) >=3D
> -			MAX_HEADER_CREDIT, 100))
> +			hdr_credit, 100)) {
>  		drm_err(&dev_priv->drm, "DSI header credits not
> released\n");
> +		return false;
> +	}
> +
> +	return true;
>  }
>=20
> -static void wait_for_payload_credits(struct drm_i915_private *dev_priv,
> -				     enum transcoder dsi_trans)
> +static bool wait_for_payload_credits(struct drm_i915_private *dev_priv,
> +				     enum transcoder dsi_trans, int
> payld_credit)
>  {
>  	if (wait_for_us(payload_credits_available(dev_priv, dsi_trans) >=3D
> -			MAX_PLOAD_CREDIT, 100))
> +			payld_credit, 100)) {
>  		drm_err(&dev_priv->drm, "DSI payload credits not
> released\n");
> +		return false;
> +	}
> +
> +	return true;
>  }
>=20
>  static enum transcoder dsi_port_to_transcoder(enum port port) @@ -90,8
> +98,8 @@ static void wait_for_cmds_dispatched_to_panel(struct
> intel_encoder *encoder)
>  	/* wait for header/payload credits to be released */
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		dsi_trans =3D dsi_port_to_transcoder(port);
> -		wait_for_header_credits(dev_priv, dsi_trans);
> -		wait_for_payload_credits(dev_priv, dsi_trans);
> +		wait_for_header_credits(dev_priv, dsi_trans,
> MAX_HEADER_CREDIT);
> +		wait_for_payload_credits(dev_priv, dsi_trans,
> MAX_PLOAD_CREDIT);
>  	}
>=20
>  	/* send nop DCS command */
> @@ -108,7 +116,7 @@ static void
> wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
>  	/* wait for header credits to be released */
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		dsi_trans =3D dsi_port_to_transcoder(port);
> -		wait_for_header_credits(dev_priv, dsi_trans);
> +		wait_for_header_credits(dev_priv, dsi_trans,
> MAX_HEADER_CREDIT);
>  	}
>=20
>  	/* wait for LP TX in progress bit to be cleared */ @@ -126,18 +134,13
> @@ static bool add_payld_to_queue(struct intel_dsi_host *host, const u8
> *data,
>  	struct intel_dsi *intel_dsi =3D host->intel_dsi;
>  	struct drm_i915_private *dev_priv =3D to_i915(intel_dsi-
> >base.base.dev);
>  	enum transcoder dsi_trans =3D dsi_port_to_transcoder(host->port);
> -	int free_credits;
>  	int i, j;
>=20
>  	for (i =3D 0; i < len; i +=3D 4) {
>  		u32 tmp =3D 0;
>=20
> -		free_credits =3D payload_credits_available(dev_priv,
> dsi_trans);
> -		if (free_credits < 1) {
> -			drm_err(&dev_priv->drm,
> -				"Payload credit not available\n");
> +		if (!wait_for_payload_credits(dev_priv, dsi_trans, 1))
>  			return false;
> -		}
>=20
>  		for (j =3D 0; j < min_t(u32, len - i, 4); j++)
>  			tmp |=3D *data++ << 8 * j;
> @@ -155,15 +158,10 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host
> *host,
>  	struct drm_i915_private *dev_priv =3D to_i915(intel_dsi-
> >base.base.dev);
>  	enum transcoder dsi_trans =3D dsi_port_to_transcoder(host->port);
>  	u32 tmp;
> -	int free_credits;
>=20
>  	/* check if header credit available */
> -	free_credits =3D header_credits_available(dev_priv, dsi_trans);
> -	if (free_credits < 1) {
> -		drm_err(&dev_priv->drm,
> -			"send pkt header failed, not enough hdr credits\n");
> +	if (!wait_for_header_credits(dev_priv, dsi_trans, 1))
>  		return -1;
> -	}
>=20
>  	tmp =3D intel_de_read(dev_priv, DSI_CMD_TXHDR(dsi_trans));
>=20
> --
> 2.17.1

