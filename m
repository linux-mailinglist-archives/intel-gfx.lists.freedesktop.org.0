Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA8A7898A7
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Aug 2023 20:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE9510E1A5;
	Sat, 26 Aug 2023 18:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26D3510E1A5
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Aug 2023 18:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693073897; x=1724609897;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mIdGj2iaJO/dCRHDHCopIfcSr7tf8cRj9R4aV6ptGZI=;
 b=WZQ/xXooRPk8lrS2ZXKgPeFgfWrhPpMjDM5IZsAFTYq44NmK2Z+9ckEy
 R/g1J03Of6JZLTjZS/uS46KJS25SFbKywIEBl02+ajnwBck2z0yi/R6lx
 kbKm3eqwHYHObGUnDb5/Qe1O/L+uSB6rAFHJC0+PbgPqLVSciRK9WURg3
 sRac5OVcHd77sGte9kb+Db+LHuz/tYKKU4chKQC3/ru6hzq4uthEUYGoM
 5mMT97NxJRi/lt39caBMMbXmLuNvByDFZKusPV1/9+GklKkDsT+sCduWQ
 ICYr3ln8fBmpMA1Kb1ojK9WkzqOBMnKlUnfeGxBZs7UDu0+UN3RzRXN5Y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10814"; a="355223214"
X-IronPort-AV: E=Sophos;i="6.02,203,1688454000"; d="scan'208";a="355223214"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2023 11:18:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10814"; a="687648680"
X-IronPort-AV: E=Sophos;i="6.02,203,1688454000"; d="scan'208";a="687648680"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 26 Aug 2023 11:18:15 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sat, 26 Aug 2023 11:18:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sat, 26 Aug 2023 11:18:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sat, 26 Aug 2023 11:18:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sat, 26 Aug 2023 11:18:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TdLQjKBLpgsPwNOp9v/7KyN+K6v0/5i1UThGV5Hktma6Flnlqd9jpXtdYGBdL9mYSQoU6z6yfydBk8cQcw6vQhmPc7WH1dlvhcljT6RTaZeRFEMSbp6OgzE0WddwUCbGDITX0hJnQ88dVSiEMCfIiIHgqQus8Ux0r0OejwXzMg+wHVqIMUWbHj/nqL6Ml3L60GK30rOzmSzx2Wlmw2GIRFZER4BmZwlS90gAog0rx68yssk8rYbol/WVoNFmE7X7AzL5SxkxyVEoeLpbCGHER8Xoa9RYET0CUdhjUuUjSyy1zV/JuAZuzEs+WPz0JOqTyrkVJ0vdozevWuOnFES9/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TWZzbiQM6UBVAqEb2zf/atMQ6EbJEsN1maEY7NK7ooQ=;
 b=Jjnz5Qg0Ulq5x9LqsCpbw/nZqfcBiChszb3LPC1pD22TzQtLbuFSYV0uNPQxYasq1zolCPIVox+vjh7lRcsZiMczsy/xwbCmT3Lw2bbuAiwkxy1sn5CW6lr9yTyp/mqOIZf03AzbbLN6dzpkx25X1qN2l951V0v/T2OdX6dr6Hp/LWmHjeHwDfOu8aSeXIKG+62xoKYQpKqjoaJDh5CwrYIbayz+Oc7Oq52+qbXTsj37FYIL6/vQ6wg06XffkloDPX2247o1kG6V0WGSmlTMXdbfBVeMg+cp6s0raxJ4tTju85s0C7qYBn7Av2P230UBNj5IbaX1t/lXFJYQkrBZwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7265.namprd11.prod.outlook.com (2603:10b6:930:98::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.30; Sat, 26 Aug
 2023 18:18:12 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.027; Sat, 26 Aug 2023
 18:18:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/9] drm/i915/dsc/mtl: Add support for
 fractional bpp
Thread-Index: AQHZ1PIvly8x2ZIrzEuT+6SXcw6VV6/848eA
Date: Sat, 26 Aug 2023 18:18:11 +0000
Message-ID: <SN7PR11MB6750E957C7B87FEB5221D25EE3E2A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
 <20230822121033.597447-7-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230822121033.597447-7-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7265:EE_
x-ms-office365-filtering-correlation-id: f163f7ce-5ced-4a95-4d7e-08dba660cea7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qNAhzT+o6MhljoSGQcnOmSugASSFgw9AjfAf3E2bMMoFhZCfIuFcSIjmCAGH/BXF6NkoJBI36fK9Y4YKf+EAsqf49iTTEVhynw1LDeOkf9gX3wGhfv1HthOT9gUoKks81u9K0zt8rC6/Qpj1xfGtQ/9DlTWlRFyLX6hLbO7LRrF+gvzkhR2iimeOTghHQjFNp8yWVtQZ+h/W11UCJCeqCgOp1xH3naqbgkb5RaYsTkBSqIOpvNjs26TqJHUBsD9THXKpmL/7ka+Poy1fFnPW76gN5eOnz0YMiRO1zaX8ucU1bwI98T6/AaE9zQEW3Te37C2kPM+BcMdAegbREl6TXeM9BaeioeFN/rV8dwgjuVRsanmTNJnYWSgd+alM56ssC1aOjUqeTO4b6LuG/qygca40RzaGIZ9M8HZ8EZbMS0WQVAjXD8V6K016x6898szuPbFll9YRS6fKDFf4T6FfaT+nMzCSaXvMwW3m3WQtOU/RRv8jqo3FiTdlXlEZ1w/FwVTm2Uj+M+k4jAFvgIZcOgSzZ2wOmDLnI2hKx5wDkrxz0ANc3S7TZjYdCFW0TwmrxnFk6Ff7ewn2eyw6X4fsickbKtOIJAoT/mcW8Pbxj8FsH5RP5BiBYZ7PtFRlZbPR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(346002)(39860400002)(136003)(376002)(451199024)(1800799009)(186009)(83380400001)(55016003)(9686003)(478600001)(26005)(52536014)(5660300002)(2906002)(8936002)(8676002)(82960400001)(38070700005)(38100700002)(122000001)(110136005)(66946007)(76116006)(86362001)(66556008)(66476007)(71200400001)(64756008)(41300700001)(7696005)(6506007)(66446008)(316002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KsK7sRJEoU3vVKC7FKJowQw/HI3U/vA0puMQ6Aj46cL/H8nvzzkvYjvvM/ea?=
 =?us-ascii?Q?7WIkzobbEoYpm2HV/H3GiSdf/cFPSU39uK6Qnzwe/L74aZkayQzdmMWiI02b?=
 =?us-ascii?Q?f+kmelDqWuVMW6RU1RAg2T28nzIAgPeav8nrsPBa8EPnsrEJl7FpdeweQxZ7?=
 =?us-ascii?Q?D3Z2yzEwUlcQhl8MDOFONlRriuuaCWcKNDO2zLnaZShQ4v3ukA53fHagcNQu?=
 =?us-ascii?Q?7xjE8+9Y9oW/pzBZsQKli/FYQpZDvVLfp6VL7RCBPA3Xk4JF0cMXp5bo9wIs?=
 =?us-ascii?Q?2t2qRif5Rjc7mXXgDAjBGdM112Ephv+B1pH4vZEkk3Sxjymko4bOeuEru3KD?=
 =?us-ascii?Q?v4Wox4Sn7cXdkzoaaXtxPQwYVGtzAFtSDwhyVeebU1e3f3qtjE2ObwgkhtUt?=
 =?us-ascii?Q?EHMwql0gmLI8PqJcc+h9Xq7vdPSdEJ2AL6QAFsmHauXPeGHzhHZ69f4ChNGO?=
 =?us-ascii?Q?pC3PHIpTrz9M/wU97uZ1K2Ysj8Td4mPHEAI3NKb/0GNkbA3H3DK2CfRPpM9L?=
 =?us-ascii?Q?FZ/CGoQPLpCGscAffOMqlvUklI12ToiUndXVP2WqDcPBlU9e5O9Vk/1pl2ez?=
 =?us-ascii?Q?JEoGa96HhUXcQu2bAleG92GLPDO1+hS0kF5ovbWsUw7jQG8Ay64nir0XLGtf?=
 =?us-ascii?Q?ieYEDLZ/SXaKATUyTmUL02x3FqnLZMoKkot52iyl2zvQQp8wxLBrOlCn5BTy?=
 =?us-ascii?Q?QgDg1Y2aKAuwr8qwyGgFAMazh9Ouk7i7rBSRfYjduwD04HDQOwDEMPEnX+6X?=
 =?us-ascii?Q?FELulMYQVopJFj0rJ/wGK1wyGsSjRSjTZTroeLrU2+FsLcl7QFK3V3pD1p7d?=
 =?us-ascii?Q?IytUr7Fd9qqZUgUJ8WYhQzEEniBHAAD3P8/+oETyCmKpbtj4WijffsB6y10e?=
 =?us-ascii?Q?nP59LYMuPKL8/AmpEylA4YLWb9zBGSW9lp7UPAkErX0ECecXaMRt2wuC+/aQ?=
 =?us-ascii?Q?OIFSdNh5kOSxO/iCaM/T+G9j9Urj+XA8Yc0/fBhPwZufZTVhMDYdfBhSID5P?=
 =?us-ascii?Q?5ZC5vTK6Fb4BBgzzIu0Gn54Q4H6TbQCLLe15u2KyCQgkxo0m1v6JgQPT5Q45?=
 =?us-ascii?Q?u6mgMaISiTxx+ly+Qcc6DvbKpPCyLwN9hpNXzTZLfjORJhnn+CzqsbXcfKaO?=
 =?us-ascii?Q?jqAS1oA5tZm0A4FXtAE7dvPJjew0KS+TPs4XjTeQhFSVuD1jedq0mOf2Bg7G?=
 =?us-ascii?Q?+Li/Cq9RaWsUrlw7KRNZIbPLQ6fvV6dBXO2lGYDW9VclBfcZcvUAqXN1CUII?=
 =?us-ascii?Q?liEYT7Br0B2c1Zpacp5bNriwHdLbaAet3Di2mCjZYSrqsum+ChlK/gxXLG+P?=
 =?us-ascii?Q?u9Q8QJlP8ID9vrCO8hiTvJM3e3OTTwNTaxDQhFshOs8h6uav35AQ889gDZwh?=
 =?us-ascii?Q?/rtvX1qkKV7XbsRri5zqx26OA53mvoNC6OvxRBnwgO1X5vmBY/Y5ErCt+zvs?=
 =?us-ascii?Q?eYuTz5hmBbf+4A/kvpsObe3Ux5ZxPcEf8NlHD80Cepubk6yAjNT+iGg5g31+?=
 =?us-ascii?Q?NdzGIpcb8UcJ3ijVYrLtAx2795HynfPQ9vg2PsxcqUevqqPuH69S8i/OndTt?=
 =?us-ascii?Q?HmVKogW8FzxAb0RY3L3rbfS/gDkH0ja4wKpfChgc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f163f7ce-5ced-4a95-4d7e-08dba660cea7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2023 18:18:11.6654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fhv+Ce1u2fxhAMT1ht2Wy70lN6DTOYYj1knMIS966gcuzG+WrTd0cWkL3yRAblh3P4xsQY/PrrlBVpKSOVFPRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7265
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/dsc/mtl: Add support for
 fractional bpp
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

> Subject: [Intel-gfx] [PATCH 6/9] drm/i915/dsc/mtl: Add support for fracti=
onal
> bpp
>=20
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
>=20
> Consider the fractional bpp while reading the qp values.
>=20
> v2: Use helpers for fractional, integral bits of bits_per_pixel.
>=20
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_qp_tables.c    |  3 ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 23 +++++++++++++++----
>  2 files changed, 18 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c
> b/drivers/gpu/drm/i915/display/intel_qp_tables.c
> index 543cdc46aa1d..600c815e37e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
> +++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
> @@ -34,9 +34,6 @@
>   * These qp tables are as per the C model
>   * and it has the rows pointing to bpps which increment
>   * in steps of 0.5
> - * We do not support fractional bpps as of today,
> - * hence we would skip the fractional bpps during
> - * our references for qp calclulations.
>   */
>  static const u8
> rc_range_minqp444_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP444_8BPC
> _MAX_NUM_BPP] =3D {
>  	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, =
diff --git
> a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 2dc6ea82c024..4bd570fb0ab2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -77,8 +77,9 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config
> *vdsc_cfg, int buf,  static void  calculate_rc_params(struct drm_dsc_conf=
ig
> *vdsc_cfg)  {
> +	int fractional_bits =3D dsc_fractional_compressed_bpp(vdsc_cfg-
> >bits_per_pixel);
> +	int bpp =3D dsc_integral_compressed_bpp(vdsc_cfg->bits_per_pixel);
>  	int bpc =3D vdsc_cfg->bits_per_component;
> -	int bpp =3D vdsc_cfg->bits_per_pixel >> 4;
>  	int qp_bpc_modifier =3D (bpc - 8) * 2;
>  	int uncompressed_bpg_rate;
>  	int first_line_bpg_offset;
> @@ -148,7 +149,13 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>  		static const s8 ofs_und8[] =3D {
>  			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
>  		};
> -
> +	/*
> +	 * For 420 format since bits_per_pixel (bpp) is set to target bpp * 2,
> +	 * QP table values for target bpp 4.0 to 4.4375 (rounded to 4.0) are
> +	 * actually for bpp 8 to 8.875 (rounded to 4.0 * 2 i.e 8).
> +	 * Similarly values for target bpp 4.5 to 4.8375 (rounded to 4.5)
> +	 * are for bpp 9 to 9.875 (rounded to 4.5 * 2 i.e 9), and so on.
> +	 */
>  		bpp_i  =3D bpp - 8;
>  		for (buf_i =3D 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
>  			u8 range_bpg_offset;
> @@ -191,7 +198,14 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>  			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
>  		};
>=20
> -		bpp_i  =3D (2 * (bpp - 6));
> +		/*
> +		 * QP table rows have values in increment of 0.5.
> +		 * So 6.0 bpp to 6.4375 will have index 0, 6.5 to 6.9375 will
> have index 1,
> +		 * and so on.
> +		 * 0.5 represented as 0x8 in U6.4 format.
> +		 */
> +		bpp_i  =3D ((bpp - 6) + (fractional_bits < 0x8 ? 0 : 1));

Can we have a the 0x8 as a #define rather than a direct comparison to 0x8

Also isn't what was previously present doing the same thing
Sure fractional bits weren't taken into consideration but they would still =
fall in the same
Index. Anyways the bpp taken is the integer part so I thing no change is re=
quired to the formula.

> +
>  		for (buf_i =3D 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
>  			u8 range_bpg_offset;
>=20
> @@ -279,8 +293,7 @@ int intel_dsc_compute_params(struct intel_crtc_state
> *pipe_config)
>  	/* Gen 11 does not support VBR */
>  	vdsc_cfg->vbr_enable =3D false;
>=20
> -	/* Gen 11 only supports integral values of bpp */
> -	vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;
> +	vdsc_cfg->bits_per_pixel =3D pipe_config->dsc.compressed_bpp;
>=20
>  	/*
>  	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
> --
> 2.40.1

