Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C32E3F47E6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 11:45:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDD1A89C0A;
	Mon, 23 Aug 2021 09:45:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06EFE89C0A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 09:45:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="196645230"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="196645230"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 02:45:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="443389435"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga002.jf.intel.com with ESMTP; 23 Aug 2021 02:45:52 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 23 Aug 2021 10:45:51 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.010;
 Mon, 23 Aug 2021 15:15:49 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [v4 4/7] drm/i915/dsi: refine send MIPI DCS command sequence
Thread-Index: AQHXj5B5lWrCZez1fkmS31jZoKNuEKuA51wQ
Date: Mon, 23 Aug 2021 09:45:49 +0000
Message-ID: <403ccafe92b5449986dd4e9bec63c12f@intel.com>
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
 <20210812154237.13911-5-shawn.c.lee@intel.com>
In-Reply-To: <20210812154237.13911-5-shawn.c.lee@intel.com>
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
Subject: Re: [Intel-gfx] [v4 4/7] drm/i915/dsi: refine send MIPI DCS command
 sequence
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
> Subject: [v4 4/7] drm/i915/dsi: refine send MIPI DCS command sequence
>=20
> According to chapter "Sending Commands to the Panel" in bspec #29738 and
> #49188. If driver try to send DCS long pakcet, we have to program TX payl=
oad
> register at first. And configure TX header HW register later.
> DSC long packet would not be sent properly if we don't follow this sequen=
ce.
>=20
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>

Looks Good to me.
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 1780830d9909..60413bbf565f 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1807,11 +1807,6 @@ static ssize_t gen11_dsi_host_transfer(struct
> mipi_dsi_host *host,
>  	if (msg->flags & MIPI_DSI_MSG_USE_LPM)
>  		enable_lpdt =3D true;
>=20
> -	/* send packet header */
> -	ret  =3D dsi_send_pkt_hdr(intel_dsi_host, dsi_pkt, enable_lpdt);
> -	if (ret < 0)
> -		return ret;
> -
>  	/* only long packet contains payload */
>  	if (mipi_dsi_packet_format_is_long(msg->type)) {
>  		ret =3D dsi_send_pkt_payld(intel_dsi_host, dsi_pkt); @@ -
> 1819,6 +1814,11 @@ static ssize_t gen11_dsi_host_transfer(struct
> mipi_dsi_host *host,
>  			return ret;
>  	}
>=20
> +	/* send packet header */
> +	ret  =3D dsi_send_pkt_hdr(intel_dsi_host, dsi_pkt, enable_lpdt);
> +	if (ret < 0)
> +		return ret;
> +
>  	//TODO: add payload receive code if needed
>=20
>  	ret =3D sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
> --
> 2.17.1

