Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BBF79A69D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F0D10E1A0;
	Mon, 11 Sep 2023 09:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B0D410E07C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 09:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694423783; x=1725959783;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=30R4nT4jTRdwqqvLKnQIf1geZGJ3ae1b2yBpAOf+39c=;
 b=NPJ4hIjXZx9K8+EE43UUmzVPKNBe9a6QlxMhJVtoxeVDE6pxtZsWWs8x
 LhdcCcP7gyQKuEBCRfMRLasMko4m1SFiTEzQ7W8AbBOuQRqpY+C+TYLhG
 8OWAB1kf3RqPZrwwOIg2z9nAPWQylidSVeSvPnaaI9tB6nCfKKfa+Ll8M
 2jzf/kNjRywIjboHyXnb5SMOnpUgN1BDQy/NkhphobkllwcIDsY8W8pPN
 Va5AedpKwnqNYFX4aU//yR4VXT89KUiuXkhJ/v7eNbI1ZlxEQ5esDOBu9
 b2m3cPeN515VYnmAmUy2BV9hP8VMnTlw1z3G+vgULCcjRT5WYObdMRhYZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="358339560"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="358339560"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:16:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="808772041"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="808772041"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 02:16:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:16:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 02:16:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 02:16:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PSQwW3zc+jJ5msCWHUS6PDu+5ey5KYZiUNghPlPC9BIM2haaENOZMx3NjyO9hBdEIpCfklmiPkSL4rEe5t/iFr2y9mHhtdLGyV/J4iL2TIIw0/KCSCIIG4oU40mFhVBkBe2TXyQY0xag27TXuL4on+id9vP9sWiHQIFIpa1uCTkMoavQRtyiXeCfHIjhS8Q1KsvXFgnXRv74RHtpJFSj6ipG2HttbP9dY5mdxoWZV3GoeSXmJJOHaRiZlliP5Mxr0qzsKh6Qeh6pnsiCZsRj6Mso+Ish+XN1u3ZXusKf9Mdg8bknzXykUWvikORI8Umb1hUTvq/zsutZp95A/1uAjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GVjC7mV4TsIGUQvYwRQgVuqP1q6JIFEy9QgR7CuvbaY=;
 b=Jp4g2RwRKXnbbL06PEHBU7pgwvzr6zsozkaCzAd/i6XNjzzYj8OQbxfmPPC6iwvhxnN1NWrlWQjuWMkKkD56CghIH8v1KGPfKFD4elXV/L8Ch+LSRJnVbQfstLHBBzP1sP6WuVVSyQcfMzhgaqpJd4/i2aVnTb5eRtvIA8nW8Nbah4JBsFXU3Jyfzp+Tev97j+oRu1l0GnF5Kx68c5hBjigQ/ecQkY0BRcnhLpO1GAsF81K2fGM2MAZEUeOO/v8dHIx8sG+6IZ05bnFHLyOlX0eBDTYHbUZqx/spXALnLi3vvSmEMPXEaC3xA2EYdogwxGcULrEypj7bjvWnFIEfuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7644.namprd11.prod.outlook.com (2603:10b6:510:26a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Mon, 11 Sep
 2023 09:16:20 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Mon, 11 Sep 2023
 09:16:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/8] drm/i915/audio : Consider fractional vdsc bpp while
 computing tu_data
Thread-Index: AQHZ5G51M/iiByw/m0+16gbO5L6LYbAVWEMg
Date: Mon, 11 Sep 2023 09:16:19 +0000
Message-ID: <SN7PR11MB67506AE87DDB8AAE123F487FE3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-5-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230911050549.763538-5-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7644:EE_
x-ms-office365-filtering-correlation-id: 1fed12c6-a575-401b-ff0c-08dbb2a7c2bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UkNQnfyz57JF8OK87DVRYSkvzBLMQkP6cH94SpC9xX0oROSx+Sf2ZiG6TsLzfYjLQ80Jr6Qk3BHP78eKl+GAM+cBeAZy+67fJCEIn92HalxzjlT1u0aePim6HDyxWj0PYcffrKPqPkBtL+csNDlWP9UsyorUHdOLgKMpMObMm/IhzaOe2jX9WtS2Hy1YifD9NKzUPSHlBDcxV8DeFp7lb0rAJShFigft/O1QpqaqdfgM2ksRWk5r2UQHrq0dlh0rTRGRW2kwsIvFqbIwP1dzFscTAPM9Tq6hEHZt9Lp1jmyhQBpzakZcNsWxiG5umbyW4QebhFABXdRnKn9nuAP43giAorCKQMiz/04MiPTI2/zrJ+N65cdicff/c5QwBJXK6Vdn+s5I7WPh6S6EBldvybTr8GZ4LxDGzBK/gexGiFwHu8didA/+c6PM+A7eeDGF8De0+hYKlzQRDXb0xcyJgD3YEWpufoYVXXxczPT5CONq9fKeD4ZalpBADaV8I/IR4Ov6l26VjDMvuNxfAP0HbTLl6+I9kLtUNC2O7uf7P7LYJIwQrDlUld35yIZexSOk9OjzbDVhPC6+LI2xpgT15vXXplk8ckf7Pm3FLn4oo+E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(136003)(366004)(396003)(1800799009)(186009)(451199024)(66899024)(2906002)(38100700002)(33656002)(5660300002)(82960400001)(52536014)(86362001)(38070700005)(122000001)(4326008)(8676002)(8936002)(55016003)(64756008)(54906003)(316002)(83380400001)(41300700001)(66446008)(66476007)(66556008)(76116006)(9686003)(66946007)(107886003)(26005)(6506007)(7696005)(110136005)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lNtUERztiCAQX2NBhdmxcOmaliY/jnVUBirnC8LlmYl4GhYqXfhNzJSWVP16?=
 =?us-ascii?Q?nhhcHpCFAjKsys3CxW0kbIo7c04sBwOd2SwjnXOXOtiukNZpDpUAqOZ8ayvt?=
 =?us-ascii?Q?q5MpxLvcEu7JbhJcGD7b/D6DLYrfhhelLxIogh+qUNko+V54dW/khx7aqLJr?=
 =?us-ascii?Q?yb6INfEznIqiXd+VxTR2hDWUuDEfOuTMK3+Mx1R7HryXIum1svkyHD7FNGEA?=
 =?us-ascii?Q?fYqFvJRqcTFP3vxyh06Cf3h1dgjpLtcV0w9N56Ce9CGQQyFivPQVY+xeOMmQ?=
 =?us-ascii?Q?p1fBa66Oock99a06jmVfPgLi77t+HvXLufArrvx1bU5htvZipsLmLrFrkZje?=
 =?us-ascii?Q?LHT7o51Fxu+COFjle7hlSRvmfkb0Ssi4fsozbLvxnHVIrpRAecdjSex/Obqj?=
 =?us-ascii?Q?iVUW4PTn5Zd7jwUWFERseAhY89/va2+M2qtQjKcXeKDV3IvmLCgIsjsi5JBL?=
 =?us-ascii?Q?dm/LDujhgF7s1wdihgD7CEHau2KOLdeUYCGFr7HQWphEo5o3VUxBAYyh5oKM?=
 =?us-ascii?Q?59T5MMcsgUqz0aMt80vF0EkmeY/1RVSYdF0ZMBFcWUdRUsKswtpiK4g0RzQK?=
 =?us-ascii?Q?Ci/pSELCnMofPVdCAqIXZBXmcn4fPLDIUFtFL3hUxtaW5Nk9S2VNuAI44s/7?=
 =?us-ascii?Q?4I4of5MPWkKoqUwXuo5qYUIqeAn+HKmmwCjeYpGcxZLvTF+xknwWsi9/ArFV?=
 =?us-ascii?Q?gNU6VVEthbgkeymMQwcGhLP93eBqTXV1zb5Y0sEoBsD1vCUortUJ6BcuiQQT?=
 =?us-ascii?Q?XnDQv4QN/u8JwG4OyPI0cqkQJIAg0m/3FTpq1YrLIX3sZXrwZiQzP7OqG8pk?=
 =?us-ascii?Q?x/NUud2eC9TKMdCRSpc3eoDFivXKCuH0IHDCsod2a7fMcx4AeV7zTcLIA11a?=
 =?us-ascii?Q?uSD5CsG7H+6Y/yvCFUKxgCC9yPD2tBnN8I+lLv3VjU8XjJ3oJJSRiOaU03aJ?=
 =?us-ascii?Q?tLVFG0/sYtavePdzhE3sI60LnJyIchbEf5mENrHjy4nK0r6+sHe3kBQow3OB?=
 =?us-ascii?Q?I67iDbLOvcxK1SG3qu/SQfAPWsanG80cjKWlGaYT6Hbdi5Ag8LAa6ArWyR3Z?=
 =?us-ascii?Q?FYAM/qN5uL/qBMNvhXHBCI/zf5fxNGApzZY4vMB5tZkXBVMwkbMUHlBGLYZ3?=
 =?us-ascii?Q?mGiifKnPhK4Y/Y3QxncchovM52H4UmMTiplKLtzxhK6qhoRcNMmC/477+ndv?=
 =?us-ascii?Q?VBZ6pmDEecuSXW2wPSaFZn2K3OgXV2Yw3xRoe/p1ZLqOfiDMHRQCEjsqVcdx?=
 =?us-ascii?Q?EOtKT/ehUvBccSzg6WasHnCIfIas6hRG3il8lnmUd/04PhFNhbgX+CiKqHmh?=
 =?us-ascii?Q?qy6Wx65F9JF4uhlycnRJG6fArwptL0XgLY3K6v5A7oGTU5mj+5OSubn61OIJ?=
 =?us-ascii?Q?A+qVXRLtL/KP2jIEbMEQUEg1CW7JbZIaYbhIDpEuA2txprg+ebuK9L1WdRhS?=
 =?us-ascii?Q?aUsmTiL6GAEBLwZ5NDr4lRur7H8jZ16ZW6+TeKzNz173Gt4OxcJDPhD8Wimu?=
 =?us-ascii?Q?sEmiAcyrZNR4zcgKuJYgBrj5pV04PKmRqjKxZvKnZNxMC458HC+XvmHSMrL4?=
 =?us-ascii?Q?Zx6BY5lQTXrtVx/WIQks0DWFJfcytFHRGpTOXcHC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fed12c6-a575-401b-ff0c-08dbb2a7c2bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 09:16:19.9369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7I4+iycb84c1yiWIh8hkRcZL5a6YWzlvyOlPSAfWj03Y+GQv92Fl9Js+2aQ/tLoi3oJaqWkErBekD3/H0vJLFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7644
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/audio : Consider fractional
 vdsc bpp while computing tu_data
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

> Subject: [PATCH 4/8] drm/i915/audio : Consider fractional vdsc bpp while
> computing tu_data
>=20
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>=20
> MTL+ supports fractional compressed bits_per_pixel, with precision of
> 1/16. This compressed bpp is stored in U6.4 format.
> Accommodate the precision during calculation of transfer unit data for
> hblank_early calculation.
>=20
> v2:
> -Fixed tu_data calculation while dealing with U6.4 format. (Stan)
>=20

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index aa93ccd6c2aa..cfbaa7006905 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -521,14 +521,14 @@ static unsigned int calc_hblank_early_prog(struct
> intel_encoder *encoder,
>  	unsigned int link_clks_available, link_clks_required;
>  	unsigned int tu_data, tu_line, link_clks_active;
>  	unsigned int h_active, h_total, hblank_delta, pixel_clk;
> -	unsigned int fec_coeff, cdclk, vdsc_bpp;
> +	unsigned int fec_coeff, cdclk, vdsc_bppx16;
>  	unsigned int link_clk, lanes;
>  	unsigned int hblank_rise;
>=20
>  	h_active =3D crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	h_total =3D crtc_state->hw.adjusted_mode.crtc_htotal;
>  	pixel_clk =3D crtc_state->hw.adjusted_mode.crtc_clock;
> -	vdsc_bpp =3D to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
> +	vdsc_bppx16 =3D crtc_state->dsc.compressed_bpp_x16;
>  	cdclk =3D i915->display.cdclk.hw.cdclk;
>  	/* fec=3D 0.972261, using rounding multiplier of 1000000 */
>  	fec_coeff =3D 972261;
> @@ -536,10 +536,10 @@ static unsigned int calc_hblank_early_prog(struct
> intel_encoder *encoder,
>  	lanes =3D crtc_state->lane_count;
>=20
>  	drm_dbg_kms(&i915->drm, "h_active =3D %u link_clk =3D %u :"
> -		    "lanes =3D %u vdsc_bpp =3D %u cdclk =3D %u\n",
> -		    h_active, link_clk, lanes, vdsc_bpp, cdclk);
> +		    "lanes =3D %u vdsc_bppx16 =3D %u cdclk =3D %u\n",
> +		    h_active, link_clk, lanes, vdsc_bppx16, cdclk);
>=20
> -	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bpp || !cdclk))
> +	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bppx16 ||
> +!cdclk))
>  		return 0;
>=20
>  	link_clks_available =3D (h_total - h_active) * link_clk / pixel_clk - 2=
8; @@
> -551,8 +551,8 @@ static unsigned int calc_hblank_early_prog(struct
> intel_encoder *encoder,
>  		hblank_delta =3D DIV64_U64_ROUND_UP(mul_u32_u32(5 *
> (link_clk + cdclk), pixel_clk),
>  						  mul_u32_u32(link_clk,
> cdclk));
>=20
> -	tu_data =3D div64_u64(mul_u32_u32(pixel_clk * vdsc_bpp * 8, 1000000),
> -			    mul_u32_u32(link_clk * lanes, fec_coeff));
> +	tu_data =3D div64_u64(mul_u32_u32(pixel_clk * vdsc_bppx16 * 8,
> 1000000),
> +			    mul_u32_u32(link_clk * lanes * 16, fec_coeff));
>  	tu_line =3D div64_u64(h_active * mul_u32_u32(link_clk, fec_coeff),
>  			    mul_u32_u32(64 * pixel_clk, 1000000));
>  	link_clks_active  =3D (tu_line - 1) * 64 + tu_data;
> --
> 2.25.1

