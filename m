Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E53316EFFF2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 05:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C7510E0B9;
	Thu, 27 Apr 2023 03:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9D010E0B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 03:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682567432; x=1714103432;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+/yLVMjM2cGGrFcE4WWXuVAlVYLXvd2C7AbrJr8c3qM=;
 b=LeGnOFYza+bGaGqCy/qgdxwyJPgP6WWgDrKOvjQRxCb00IuJxZjF2nmf
 NGp9ie6oLzTZGM/FvEMq+nMXz8n22czDg5lv7M5P5tW7rxsjY0A1S/U0e
 ekMpRUJP2cxCoJoWAPTYj5QL3tFf02iFOg+FtSHv9+HM8PJ8WFwNj7HRk
 2USXM+NuFzKFyvgx7wUkoce4RD86u9c+SEzCb6d4I0tI0QQLoG9RKp671
 o9dQBrRrLNgwJav/LXjAJp3CBkAZda5dJGIhB9kWUHUFVEVzxO0rbdI4r
 TOmEgsBHyiskGdazNfskbcuMzOZqDJzQN7P2w9mKZ/W4qTu5XhsBItYkx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="412641119"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="412641119"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 20:50:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="805783442"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="805783442"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 26 Apr 2023 20:50:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 20:50:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 20:50:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 20:50:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 20:50:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kupRYz2CrAkNlf530T4H2hJW9Ws8IkLAh9IflXzqOeJgp1nzCgMCjOAnB9Ny3GBb1iJY4TgbXULqBEDUNAc1HonupvQI4pPjxrxC/5zo0CiThFS4aJOX/kCbJTFHJ6YPSg7iMwlJl0rkStdGbNLhzUi9K/bCjQV/avIxSvgpnskijWtg2LjSxSaF8g9O1iiaK2ORj/xsC+YG2uu8Z0yH/ovAeOk5Ek3V/mF5iuKGSjL7BrSkizn1wBCZZYKEwFbkmI3ydSL1mtz2qnuYuWdHFganzJS4D7RoT+xUEu/G7R6tYsNtKT6nJWeViBhB9JfqBx0goldGGzY9u0QB9ln00g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bnik6AJHy4cekLVpIIV/QLvSyDXKHrRSklxUUijzlkI=;
 b=a6HHW9KRpYCdVkrLIy+beLK0lLVuGDMZ7jYQaETkipRkKvaDHe6OV29I8yV8TM0opQPgn9vbSruVhBf7/EO7/3CxxSVOIsLz4K4ffO4GTbRwVJNelVl+ek6RPn5QPSupmAraFGv8YTPwy1nVEDnGCxPPB7KgwwlT3Pl8egQkF8QhlcmqP/j7tfur6C6fnl0+3L2jGUqCqtpLg0U8WuKJ14oOFht7KBxHHdYnuTPc6x9/IxWnUYiApz2OcnRTJ5aIJxqRi25sC7mL1z+JIuAgSywezmHyz5a/wySi9pJnI9vWHtljE0vo0GWAevh3MpWLtE39OpTifhsOZBpzLm7m1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL1PR11MB5351.namprd11.prod.outlook.com (2603:10b6:208:318::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.21; Thu, 27 Apr 2023 03:50:29 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148%7]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 03:50:29 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/13] drm/i915/mtl: C20 port clock
 calculation
Thread-Index: AQHZc4YYYPq/2KIVIEKQPsxR3gnOP68+jFYg
Date: Thu, 27 Apr 2023 03:50:28 +0000
Message-ID: <DM6PR11MB31777776E754EB42E29A0D5BBA6A9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-5-mika.kahola@intel.com>
In-Reply-To: <20230420124050.3617608-5-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|BL1PR11MB5351:EE_
x-ms-office365-filtering-correlation-id: c62b92e0-c454-4c2b-de01-08db46d28ab4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dPp4LlsFq4j+NQdbAD/57yES7Wd73E5aytzXTx+zF3+0pH1jE24EuimUSGG+6+bYy6/CDECUomOLHhRCKCaKYv12BBlEM8wftp79K9t8yspqyb/96H2+vyb0qi49KZl2Sl2c8Kg/h3uAnaOPbTdfHnYUJ1XeGSZMXVF2AMkrCyiUKddniQ3PNmGTYaZN+TVLeIB2Ao1MXloSHtnHABJHLaFaRS0YqXTV9ndfgxCjzAhY0iOKgvackJij/F6jOGi2nzNjycsBCFX+rzrX2GYnfLF1IKQJAmVeDL69vwrYvb7dOmhLHXdb98jMat9xxmKglrVvyIVhMobyRIIvNpy2vOowlcSTo7PmPcWdN32UYYryU8tJ5Sz0a1ihG4Ci9suP6m2LttOcO7wnWbbuQb+PWntWZlaJU7PMLFIMRKom150PEPgz3+mnuaznEm6b52M73KyE47ulYUdZwal+ugYKIf3m2yZTPx27TntKBomZ7Y5uX9qQ/6IrzThWhXNBlEOgOOsGrKyJv1rTNq15T3hAdS16dlj+u9UlRXhzK/E1ZDeG1qif4HcQou40Ngq8XKynG8CZS7Ep2CXhx/GcXBJqnC+L8MvokPlo4v6kGcjKvbNfLG8MmC+wTvp6iDnIG7+G
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(39860400002)(396003)(366004)(451199021)(83380400001)(186003)(6506007)(9686003)(53546011)(26005)(55236004)(316002)(66476007)(64756008)(86362001)(66446008)(66946007)(76116006)(66556008)(2906002)(38070700005)(82960400001)(38100700002)(41300700001)(55016003)(122000001)(110136005)(478600001)(33656002)(71200400001)(8676002)(8936002)(7696005)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?05e5dp4kmaIl0WsZmYSRNL3Ro2BfoJdrAqQ11Z3HcTu7vpmR0WVwTPL3tH4M?=
 =?us-ascii?Q?pSdu9VnkI57eAoVYlQMz/bcBfmqwYTCAMbGMz7NvaZYcwlkBB0g/9eI9x4H1?=
 =?us-ascii?Q?NfUHLtzzroR+dsmR6JKauCk7j+8t/TOV+jmQ7+rx0LHd4nHqYx82quA0GzNv?=
 =?us-ascii?Q?nB6ewTOWH5FpW2ni/qLowb4ZU31wzHlRQFmtkba0jT+oh3N9egDvpGS8g0fd?=
 =?us-ascii?Q?pR2HsbZVKvemN+FJ9VK7jh5SRx8SVPTk8LdT9KgPzx7K4uNNNxTzk80uWfeY?=
 =?us-ascii?Q?wMUwkoAC+YWdUVUXwJIEjK6LU0t7Z6Fegd6Zz/VPH+MHFQQmk/VvoIjI+MR0?=
 =?us-ascii?Q?R0FO7u99BeP2WIdzNNzptch3UkleEfbHUHRYkaWuJoUt3bh5jXXNEbm0drpo?=
 =?us-ascii?Q?hmmPXZefa3UBfGWjVNsE6hdccjBqd6VnniMMeTehdWRtvE9qq+SYXrbMpj1v?=
 =?us-ascii?Q?Pa85xQaPeLvWQvbD+ksYVT4RGwAwSjiOIzJg2it+AjUaUuLDrVsiGy0pCGJn?=
 =?us-ascii?Q?xCjnMPrjns4tEL91Dsa5GDEgK6oSUGfSMPNDN90In6dlmexYNjJW8d9e3gVL?=
 =?us-ascii?Q?rm/X7PysGDwMo3NyjH6l0k/rT+UQ+N0HejZ6KKStyfMftROLHkY9k1VaX+UN?=
 =?us-ascii?Q?XM4oCsDCk2agElmxtdvHSaJoO54P2gqsxs5xaO3hLQPZ7YznDw0B4HVyzt1c?=
 =?us-ascii?Q?PyxsqStOrkOYwUJGC/gMmIEntTmIQX78Zdqfiydmikk3DrIp4h+5Z68OOJHh?=
 =?us-ascii?Q?iuEizclBkESXtbLhsUUAtWkboQNHeS3qm8aUCmgq7IehKC53Ec/8shRnGOfb?=
 =?us-ascii?Q?I+m8d9Jbq16JMv2l3YBituuMvhUs0IPsgYRbj3BJIL3Nvi2JguXIcyR2f/o1?=
 =?us-ascii?Q?XpDDrTvD4R7aRiATgxVvAD0zFEF66TWBaH7a7rMhIlnxaClmFK2yZuxjoldP?=
 =?us-ascii?Q?Py4IC8z0FKNL6v77awfCGED0u6f/UcRMQarJKpAL3WIrjCnnOWttFZBN3tGy?=
 =?us-ascii?Q?bceC1+i1WRfoiskSFYDC7S7UkVEYr00eQfC2GmYgC2RRXSnDAQipQnpRiyw1?=
 =?us-ascii?Q?8vIofQDexUATr6SmDMMl7ZLrUNOXWcj1cypzQvlrEYS0dXGpQQfZ2b8CCwtE?=
 =?us-ascii?Q?EEEp7BAVM1bxM2oKt3vY6FXHpvvuJncyJF9tQr0p6GuKv2kV54hASsYoOHfV?=
 =?us-ascii?Q?bPG+lkipXnUFWfacAPVGu+1Rl3vC61cG9yJgKsUKrVE6fVqJLc5seQ2qADKB?=
 =?us-ascii?Q?O+YshgXXCMtTxQecRpTclqtSv/vDfMesNN3GpgLDUT1tTVhE9EU+DK3u67UD?=
 =?us-ascii?Q?nYXe+HgtdYlwPgCGaq4iGtVMX8QRKAAOK5G/kVDqdlE2kAwlG59AERvkj5u7?=
 =?us-ascii?Q?ktuT2LMl7DzlLZbOlurrHFnmvZHkOabQlZkzjSzDShq7PuSjdEcnc3QEZSop?=
 =?us-ascii?Q?u0PJ8UtFiKNt+yd1h5FCZqCbzrJvA4KoSV7oT+QPe+UjKxoxWD9sjEE6045j?=
 =?us-ascii?Q?jMzcyId5WIT3Atb3ZAaRVXGRH2Joco4pKXRYvYR2CXqRfpnJZ+IM1qUU48Q4?=
 =?us-ascii?Q?YHuUM+IfYgG9pF0CeJ2ysZBJv9FfD+vnqHpeQMCF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c62b92e0-c454-4c2b-de01-08db46d28ab4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2023 03:50:28.7121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZoVaAyuzCYL/AvGeqFjSGdjDFiJi9Jg5vuQHM/BKOPOwwoY8H/7XQ4C+XdagrHDSir1XJjjLfMUYLYROwPGBVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5351
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/mtl: C20 port clock
 calculation
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Thursday, April 20, 2023 6:11 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 04/13] drm/i915/mtl: C20 port clock calculati=
on
>=20
> Calculate port clock with C20 phy.
>=20
> BSpec: 64568
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 45 +++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +
> .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  4 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +
>  5 files changed, 55 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 144474540ef4..f7720acaf58c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2274,6 +2274,51 @@ int intel_c10pll_calc_port_clock(struct
> intel_encoder *encoder,
>  	return tmpclk;
>  }
>=20
> +int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
> +				 const struct intel_c20pll_state *pll_state) {
> +	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
> +	unsigned int multiplier, refclk =3D 38400;
> +	unsigned int tx_clk_div;
> +	unsigned int ref_clk_mpllb_div;
> +	unsigned int fb_clk_div4_en;
> +	unsigned int ref, vco;
> +	unsigned int tx_rate_mult;
> +	unsigned int tx_rate =3D REG_FIELD_GET(C20_PHY_TX_RATE,
> +pll_state->tx[0]);
> +
> +	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
> +		tx_rate_mult =3D 1;
> +		frac_en =3D REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state-
> >mpllb[6]);
> +		frac_quot =3D pll_state->mpllb[8];
> +		frac_rem =3D  pll_state->mpllb[9];
> +		frac_den =3D  pll_state->mpllb[7];
> +		multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK,
> pll_state->mpllb[0]);
> +		tx_clk_div =3D REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK,
> pll_state->mpllb[0]);
> +		ref_clk_mpllb_div =3D
> REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
> +		fb_clk_div4_en =3D 0;
> +	} else {
> +		tx_rate_mult =3D 2;
> +		frac_en =3D REG_FIELD_GET(C20_MPLLA_FRACEN, pll_state-
> >mplla[6]);
> +		frac_quot =3D pll_state->mplla[8];
> +		frac_rem =3D  pll_state->mplla[9];
> +		frac_den =3D  pll_state->mplla[7];
> +		multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK,
> pll_state->mplla[0]);
> +		tx_clk_div =3D REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK,
> pll_state->mplla[1]);
> +		ref_clk_mpllb_div =3D
> REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mplla[6]);
> +		fb_clk_div4_en =3D REG_FIELD_GET(C20_FB_CLK_DIV4_EN,
> pll_state->mplla[0]);
> +	}
> +
> +	if (frac_en)
> +		frac =3D frac_quot + DIV_ROUND_CLOSEST(frac_rem,
> frac_den);
> +	else
> +		frac =3D 0;
> +
> +	ref =3D DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1 <<
> ref_clk_mpllb_div);
> +	vco =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(ref, (multiplier << (17
> - 2))
> ++ frac) >> 17, 10);
> +
> +	return vco << tx_rate_mult >> tx_clk_div >> tx_rate; }
> +
>  static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  					 const struct intel_crtc_state
> *crtc_state,
>  					 bool lane_reversal)
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index c643aae27bac..83bd3500091b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -34,6 +34,8 @@ void intel_c20pll_readout_hw_state(struct
> intel_encoder *encoder,
>  				   struct intel_c20pll_state *pll_state);  void
> intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
>  				const struct intel_c20pll_state *hw_state);
> +int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
> +				 const struct intel_c20pll_state *pll_state);
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
> int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock=
);
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 6fcb1680fb54..a5e5bee24533 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -195,17 +195,21 @@
>  #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
>  #define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
>  #define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
> +#define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
>  #define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
>  #define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
>  #define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
>  #define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
>  #define   C20_MPLLA_FRACEN		REG_BIT(14)
> +#define   C20_FB_CLK_DIV4_EN		REG_BIT(13)
>  #define   C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
>  #define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
>  #define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
>  #define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
>  #define   C20_MPLLB_FRACEN		REG_BIT(13)
> +#define   C20_REF_CLK_MPLLB_DIV_MASK	REG_GENMASK(12, 10)
>  #define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
> +#define   C20_PHY_USE_MPLLB		REG_BIT(7)
>=20
>  #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx) (0x303D +
> (idx))
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d414dd8c26bf..8e6d6afca400 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3856,13 +3856,13 @@ static void mtl_ddi_get_config(struct
> intel_encoder *encoder,
>  	if (intel_is_c10phy(i915, phy)) {
>  		intel_c10pll_readout_hw_state(encoder, &crtc_state-
> >cx0pll_state.c10);
>  		intel_c10pll_dump_hw_state(i915, &crtc_state-
> >cx0pll_state.c10);
> +		crtc_state->port_clock =3D
> intel_c10pll_calc_port_clock(encoder,
> +&crtc_state->cx0pll_state.c10);
>  	} else {
>  		intel_c20pll_readout_hw_state(encoder, &crtc_state-
> >cx0pll_state.c20);
>  		intel_c20pll_dump_hw_state(i915, &crtc_state-
> >cx0pll_state.c20);
> +		crtc_state->port_clock =3D
> intel_c20pll_calc_port_clock(encoder,
> +&crtc_state->cx0pll_state.c20);
>  	}
>=20
> -	crtc_state->port_clock =3D intel_c10pll_calc_port_clock(encoder,
> &crtc_state->cx0pll_state.c10);
> -
>  	intel_ddi_get_config(encoder, crtc_state);  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index a9fbef0fa817..ca0f362a40e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1014,6 +1014,8 @@ static int mtl_crtc_compute_clock(struct
> intel_atomic_state *state,
>  	/* TODO: Do the readback via intel_compute_shared_dplls() */
>  	if (intel_is_c10phy(i915, phy))
>  		crtc_state->port_clock =3D
> intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
> +	else
> +		crtc_state->port_clock =3D
> intel_c20pll_calc_port_clock(encoder,
> +&crtc_state->cx0pll_state.c20);
>=20
>  	crtc_state->hw.adjusted_mode.crtc_clock =3D
> intel_crtc_dotclock(crtc_state);
>=20
> --
> 2.34.1

