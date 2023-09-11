Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 333AA79A698
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 735BA10E07C;
	Mon, 11 Sep 2023 09:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CA3710E07C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 09:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694423594; x=1725959594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VxLzTnozZycbSWXeLFko9vUrktO9d6oHsauv7JZJpvY=;
 b=bIVtJjLXyzqwAMXkzbXigs6tx7vf7poLOY4HpSZ6E28Hz5Xd5xdKoGKY
 yihjtcc9/fjFYEuCgQlf1H8cxFeSGcMw7QCrondVdz2nUB7PkK4+ZP5GQ
 3vFknJ+zPT0ojWixFMAz9sW0PtxjTP/XdyYJNLEvqyiEGpBWdPaQWItjS
 HK1PSc0yhcot8qMCKjA3XzT9z7spHG9Q4Gvim+DEDSpqbMMg51tl22Ozw
 BVMNDwA74g21YxuK/Z5uhwkFZe/NQd1qFASgL5rYh6O8wZ4a+7u2FYQcg
 YBWwfDyE1V0MYG2qNiaHjYX+UUrYOVLIeR4oDbHZAyXXOpWSSa0JQugJf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="377949800"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="377949800"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:13:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="866864795"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="866864795"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 02:13:12 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:13:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:13:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 02:13:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 02:13:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=La7xipjK/rMVgVPfuSL5EJvhpcXsiD+rqxXZ5i7zu+vtvy1TtGjv8AmX9YK8H/njTgN44MAAUdEs1bNigc1tZWff9G+Ur/mkzKQSmqT30D8Wo77i1v+2+LvWnId8YZ4D5ds3XZONWAoipYd+ORYm5vO4m25OgGUZnnfbn4R5uBHArr9fVTL2OeNo/jTPO3YTsZxQ5f/1yAooHOC3eWbnLqtfls5pJgq2BD2xJSHyrJgXDObpj3HrvEXl0v/AwFzLLjwH4W2uHRUSFxdvRKL1SuRcDWpjY+j4a2lBohv8H1LxvWw6R3OPhcMQg++EZJfw6cbwrtCeZvcNa9mwVdYs1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Hs7Y16zbvc1K9VeHWxcZMxSIXNn9ya55UTYi5aRxHA=;
 b=MVkuA844454hErLiMLKUNdmiPTMrdNlgLEWkp/lUpRhmXsqtLj2QLYV/QducaeQDN321F/9HO1+Pvr1Acnd0Kzd0O75q21WiKmLtV/XNIdtDZm0Y7B4FxNCpsbU+OTYtcbx28FLeFRbHzQ4FPdhFi/fvzs0W7DZmvUjelOFtlJyJZat3ShvC/V40ycyIL1yg48YRrFEsxW+1bC9cHl5dhTn1U2iBgU+mo+3gcOP0K67ep+ucxSBEpjWbB2MrVqsY9mkvy4BjByAiZBPFZym1T0iryKOrwOeUROye2CezMAyGumThLMb0rKy9MVpBdWbWDcq7BobWrMM6EWgZFJwcjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB4589.namprd11.prod.outlook.com (2603:10b6:806:9a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Mon, 11 Sep
 2023 09:13:08 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Mon, 11 Sep 2023
 09:13:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/8] drm/i915/display: Store compressed bpp in U6.4 format
Thread-Index: AQHZ5G51lJptsI5ZnEWtbIBMJ2ErS7AVUfhQ
Date: Mon, 11 Sep 2023 09:13:07 +0000
Message-ID: <SN7PR11MB67505DD1563CACEA47B05F53E3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-3-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230911050549.763538-3-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB4589:EE_
x-ms-office365-filtering-correlation-id: f7b72afe-a325-45e6-ff4e-08dbb2a75048
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mp3x4kbLikXRpKyUTXC2LjpTNdnSbZuTD0j3QqN+dUGiycDzdI0e+x28Bb73uxM4Njc9ZiTYhNgd0R0j8w3l63xbuukwEEy2RYVGpSY0gUlQwZvFVgd8ucAspp8dsuxvyhMeW3tpZi24eMMZCxTK/ubeJsVXC/cQFM7g3OpwTYYQXFloYx+Ul0offP92Ugdmjff7xEpHB/d2YPrEAvEVYLicUzZQqupCuy+iFhYMj4h7sv9EAzFsk0OuQkLmQDBX/CGsusdvpJ2pkIeimbzgU9NDhIee0ldyM9cPOvjtpTlO68jWHwdTAei7S0BC6czqwS7355gXgZF3gVylev+xDXFF9kv91f4phw/Be/WCV5nCKdFba2MJ9ZeIiyS3YWxBx+UdY/UwI2HEKifMa9KlsTwJeo+iAUIfVSjhKZbgg4mlY62QwZouRT1jZSHDcP49ZWUInPgZ521zKHMWfRngTwhcvvm0wmjLgwsFdIIZD6QlpmVmN0uCBlvnZypZCWfQdH1WP/ZZmRDxSwausX2FfF/3MVyapDtjJBED/QLP8xdi0GRZZtmTqAwUJ1rRG/o8YXNrE4ydD7PkS76tq3mOXbAPpupK+rqWSCRNQ46Qgp8Pp/PA1GH7IBzibnG32YNg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(396003)(366004)(39860400002)(186009)(1800799009)(451199024)(122000001)(66899024)(71200400001)(7696005)(6506007)(41300700001)(82960400001)(86362001)(38100700002)(38070700005)(33656002)(55016003)(107886003)(30864003)(2906002)(9686003)(83380400001)(478600001)(110136005)(52536014)(316002)(76116006)(8936002)(8676002)(4326008)(5660300002)(26005)(66946007)(66556008)(66476007)(66446008)(64756008)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6laZG/RmL4xkFcP/BZCcYO5P/eq0lp+kV7X8D53nA8nIf2XSjAxP1W12R0kk?=
 =?us-ascii?Q?lyQ0k5az4hLkYStSHNFmmE0mzf3Je+J//zfM7Mea2Y6cAAUI8AunrtVv65w8?=
 =?us-ascii?Q?iaTMUoKOorkTfxu6XzOCG+d2x3jaWRn8Hl7+w3jylj0Mavzy5sITCGi1AY48?=
 =?us-ascii?Q?UZ1uv/1708bCHXuFn5YtTpRbDHtAwxuTLY2vwSSo1SzrmncXlINiGSTObOa0?=
 =?us-ascii?Q?7/kLBSY6eGgWZRvi2d8WMyGN4ybVvd3pyfwxgAqDxOyCzX2YjLGIa8M7UF+B?=
 =?us-ascii?Q?9r9boezsxyBC+IDHPlvoEhJ3XdNyNqJ6Ditiid+eVPJx1AthX9Jc1mwCx6Zn?=
 =?us-ascii?Q?N7eH8YRXyj+L878oofnDbIkdXd3TpjvZdpp13DsoB1BxCiRjmTExgPrplWsP?=
 =?us-ascii?Q?DKyqcy3Fw1WkliaXmBRrD8hwixPFWoN0un5A522+x8fHmWTnIp7olO5ndXmG?=
 =?us-ascii?Q?5X1O6gqcKJ5B5G2KisdO5BYMpYfRPFyi6ijoN/Y9i6NI2HYIsOnS/0DTb5o6?=
 =?us-ascii?Q?fMEAQdbMmNfTwxd5UgGsAY9V+gldaiM+ml4m5L2mHahnnFL5AvGnTNwHKF66?=
 =?us-ascii?Q?xmWpL5k0cAvGuG5sjmJIRKqyNqFOTQ1VGx2ZLy4xSy217kMoWhD6r4h993fx?=
 =?us-ascii?Q?OaG/ND99KPnx2qK0jk3dodQRG53Ulz6WSp2MRufqQBAkiQmRVoUw9sh7CSC4?=
 =?us-ascii?Q?Z8UAV1/TCTQz/G6jJ1XlT9nBfnNEnp3atgc4PnJMq35N2FuUU4Uoghgcxjl3?=
 =?us-ascii?Q?n2a5tnyQXHnJXCKKScq+QNIP+b6+k63y+cyinzeMfHuLU35LakgB3NbGzFbn?=
 =?us-ascii?Q?7JCl959Sv/YXQ87SqnbBiJqHAoD/vF1gHjYlvufhJpk6j98Zzm36Cc0PVqKH?=
 =?us-ascii?Q?JpHETm+LBzoJkN8YdJfMxWH2ZD0AJLPvMlyHEAji/sV8UtTM2dkJvVDEchzM?=
 =?us-ascii?Q?YJd0yBikSNdK2AlqRCbvckm199etyFdeamsyqHnpdpmiRZi7AZYzPSzElQ22?=
 =?us-ascii?Q?F+bf+8kBerLNmc8uzMx6tyUWTFaHb16oSKJSejgSgQT1o9r+YfNZoxZ4vASp?=
 =?us-ascii?Q?Do714dEVwdkHoV6P32FX7EQAvhlO9Pf8vKVo0zn+i20xqEYYnC3BiuBiuvIH?=
 =?us-ascii?Q?aYUer5e4P4yffBTIxK4jBKSzSOG3P45jblNueEMUxnWtRPhtl0ubL3EjajNz?=
 =?us-ascii?Q?KHkx5CZGZiu7oSKGxtdW9PiD617xmSzoN/fBTsjbfqORXMcPVMXQCkasT76b?=
 =?us-ascii?Q?67izjQiZK/irppg+d1CEroBcysV4DqHOcqfLB2ddglecYlrOaxr3baCEGwnA?=
 =?us-ascii?Q?CLNltIYqFxiarOsvO1zQSU0c4hZ4wq+HvOa3olCo6x27XjnLMBAUYhl9D2Ks?=
 =?us-ascii?Q?eNCaP1DD6BbFz5hJ6KxKaBCSUyhdvy2F3G6HUA8SWi2i2Thod8LOVSk+PG9a?=
 =?us-ascii?Q?ZLqLTnJGKzehe+ErJG00QjTtpuCV0GV5EYTjT0AEWcda+sFBL0/rKdBV2dJK?=
 =?us-ascii?Q?F17cV2+v79zNF0AYA48+fpZ8h+3d/57F1Hl3gxl0+HdVg504TkmJSULUuORf?=
 =?us-ascii?Q?yYvpB9bou4i3XOVYVADKle5RxahrVC/zYASCLHe7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7b72afe-a325-45e6-ff4e-08dbb2a75048
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 09:13:07.8962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5eI9Yf1rLWUYwzDkpQQa4iSLVQhvp/zOldcNN4Hpk3wT2zZ0vCVHWgPg5zBeePOwz2/wfIZ2KJg3sowAI7hs4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/display: Store compressed bpp
 in U6.4 format
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

> Subject: [PATCH 2/8] drm/i915/display: Store compressed bpp in U6.4 forma=
t
>=20
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>=20
> DSC parameter bits_per_pixel is stored in U6.4 format.
> The 4 bits represent the fractional part of the bpp.
> Currently we use compressed_bpp member of dsc structure to store only the
> integral part of the bits_per_pixel.
> To store the full bits_per_pixel along with the fractional part, compress=
ed_bpp
> is changed to store bpp in U6.4 formats. Intergral part is retrieved by s=
imply
> right shifting the member compressed_bpp by 4.
>=20
> v2:
> -Use to_bpp_int, to_bpp_frac_dec, to_bpp_x16 helpers while dealing  with
> compressed bpp. (Suraj) -Fix comment styling. (Suraj)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 10 ++++----
>  drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     |  4 +--
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  .../drm/i915/display/intel_display_types.h    | 18 ++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 25 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 18 ++++++-------
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +--
>  9 files changed, 52 insertions(+), 33 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ad6488e9c2b2..df98f35bbcda 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -330,7 +330,7 @@ static int afe_clk(struct intel_encoder *encoder,
>  	int bpp;
>=20
>  	if (crtc_state->dsc.compression_enable)
> -		bpp =3D crtc_state->dsc.compressed_bpp;
> +		bpp =3D to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
>  	else
>  		bpp =3D mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
>=20
> @@ -860,7 +860,7 @@ gen11_dsi_set_transcoder_timings(struct
> intel_encoder *encoder,
>  	 * compressed and non-compressed bpp.
>  	 */
>  	if (crtc_state->dsc.compression_enable) {
> -		mul =3D crtc_state->dsc.compressed_bpp;
> +		mul =3D to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
>  		div =3D mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
>  	}
>=20
> @@ -884,7 +884,7 @@ gen11_dsi_set_transcoder_timings(struct
> intel_encoder *encoder,
>  		int bpp, line_time_us, byte_clk_period_ns;
>=20
>  		if (crtc_state->dsc.compression_enable)
> -			bpp =3D crtc_state->dsc.compressed_bpp;
> +			bpp =3D to_bpp_int(crtc_state-
> >dsc.compressed_bpp_x16);
>  		else
>  			bpp =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> >pixel_format);
>=20
> @@ -1451,8 +1451,8 @@ static void gen11_dsi_get_timings(struct
> intel_encoder *encoder,
>  	struct drm_display_mode *adjusted_mode =3D
>  					&pipe_config->hw.adjusted_mode;
>=20
> -	if (pipe_config->dsc.compressed_bpp) {
> -		int div =3D pipe_config->dsc.compressed_bpp;
> +	if (pipe_config->dsc.compressed_bpp_x16) {
> +		int div =3D to_bpp_int(pipe_config->dsc.compressed_bpp_x16);
>  		int mul =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> >pixel_format);
>=20
>  		adjusted_mode->crtc_htotal =3D
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 19605264a35c..aa93ccd6c2aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -528,7 +528,7 @@ static unsigned int calc_hblank_early_prog(struct
> intel_encoder *encoder,
>  	h_active =3D crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	h_total =3D crtc_state->hw.adjusted_mode.crtc_htotal;
>  	pixel_clk =3D crtc_state->hw.adjusted_mode.crtc_clock;
> -	vdsc_bpp =3D crtc_state->dsc.compressed_bpp;
> +	vdsc_bpp =3D to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
>  	cdclk =3D i915->display.cdclk.hw.cdclk;
>  	/* fec=3D 0.972261, using rounding multiplier of 1000000 */
>  	fec_coeff =3D 972261;
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> b/drivers/gpu/drm/i915/display/intel_bios.c
> index 858c959f7bab..7b6d299fbcf2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3384,8 +3384,8 @@ static void fill_dsc(struct intel_crtc_state *crtc_=
state,
>=20
>  	crtc_state->pipe_bpp =3D bpc * 3;
>=20
> -	crtc_state->dsc.compressed_bpp =3D min(crtc_state->pipe_bpp,
> -					     VBT_DSC_MAX_BPP(dsc-
> >max_bpp));
> +	crtc_state->dsc.compressed_bpp_x16 =3D to_bpp_x16(min(crtc_state-
> >pipe_bpp,
> +
> VBT_DSC_MAX_BPP(dsc->max_bpp)));
>=20
>  	/*
>  	 * FIXME: This is ugly, and slice count should take DSC engine diff --g=
it
> a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index ad5251ba6fe1..06a1e99a2762 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2567,7 +2567,7 @@ static int intel_vdsc_min_cdclk(const struct
> intel_crtc_state *crtc_state)
>  		 * =3D> CDCLK >=3D compressed_bpp * Pixel clock  / 2 * Bigjoiner
> Interface bits
>  		 */
>  		int bigjoiner_interface_bits =3D DISPLAY_VER(i915) > 13 ? 36 : 24;
> -		int min_cdclk_bj =3D (crtc_state->dsc.compressed_bpp *
> pixel_clock) /
> +		int min_cdclk_bj =3D (to_bpp_int(crtc_state-
> >dsc.compressed_bpp_x16) *
> +pixel_clock) /
>  				   (2 * bigjoiner_interface_bits);
>=20
>  		min_cdclk =3D max(min_cdclk, min_cdclk_bj); diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 83e1bc858b9f..afcbdd4f105a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5365,7 +5365,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>=20
>  	PIPE_CONF_CHECK_I(dsc.compression_enable);
>  	PIPE_CONF_CHECK_I(dsc.dsc_split);
> -	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
> +	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>=20
>  	PIPE_CONF_CHECK_BOOL(splitter.enable);
>  	PIPE_CONF_CHECK_I(splitter.link_count);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c21064794f32..9eb7b8912076 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1353,7 +1353,8 @@ struct intel_crtc_state {
>  	struct {
>  		bool compression_enable;
>  		bool dsc_split;
> -		u16 compressed_bpp;
> +		/* Compressed Bpp in U6.4 format (first 4 bits for fractional
> part) */
> +		u16 compressed_bpp_x16;
>  		u8 slice_count;
>  		struct drm_dsc_config config;
>  	} dsc;
> @@ -2108,4 +2109,19 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
>  	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;  }
>=20
> +static inline int to_bpp_int(int bpp_x16) {
> +	return bpp_x16 >> 4;
> +}
> +
> +static inline int to_bpp_frac_dec(int bpp_x16) {
> +	return (bpp_x16 & 0xf) * 625;
> +}

Let's add a comment on top on why we apply the mask and where the value 625=
 comes from
Something like:
"Since compressed bpp is now  fractional such that last 4 bits represent fr=
actional bits we get the
fractional part by multiplying by 10000 then dividing it by 16 as we initia=
lly left shift compressed bpp by 4,
to get 4 bits for the fractional part"

Otherwise,
LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com

> +
> +static inline int to_bpp_x16(int bpp)
> +{
> +	return bpp << 4;
> +}
> +
>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */ diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2206b45bc78c..9b88ac3a73c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1863,7 +1863,7 @@ icl_dsc_compute_link_config(struct intel_dp
> *intel_dp,
>  					      valid_dsc_bpp[i],
>  					      timeslots);
>  		if (ret =3D=3D 0) {
> -			pipe_config->dsc.compressed_bpp =3D valid_dsc_bpp[i];
> +			pipe_config->dsc.compressed_bpp_x16 =3D
> to_bpp_x16(valid_dsc_bpp[i]);
>  			return 0;
>  		}
>  	}
> @@ -1901,7 +1901,7 @@ xelpd_dsc_compute_link_config(struct intel_dp
> *intel_dp,
>  					      compressed_bpp,
>  					      timeslots);
>  		if (ret =3D=3D 0) {
> -			pipe_config->dsc.compressed_bpp =3D
> compressed_bpp;
> +			pipe_config->dsc.compressed_bpp_x16 =3D
> to_bpp_x16(compressed_bpp);
>  			return 0;
>  		}
>  	}
> @@ -2085,7 +2085,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  	/* Compressed BPP should be less than the Input DSC bpp */
>  	dsc_max_bpp =3D min(dsc_max_bpp, pipe_bpp - 1);
>=20
> -	pipe_config->dsc.compressed_bpp =3D max(dsc_min_bpp,
> dsc_max_bpp);
> +	pipe_config->dsc.compressed_bpp_x16 =3D
> to_bpp_x16(max(dsc_min_bpp,
> +dsc_max_bpp));
>=20
>  	pipe_config->pipe_bpp =3D pipe_bpp;
>=20
> @@ -2172,17 +2172,19 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  	if (ret < 0) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Cannot compute valid DSC parameters for Input
> Bpp =3D %d "
> -			    "Compressed BPP =3D %d\n",
> +			    "Compressed BPP =3D %d.%d\n",
>  			    pipe_config->pipe_bpp,
> -			    pipe_config->dsc.compressed_bpp);
> +			    to_bpp_int(pipe_config->dsc.compressed_bpp_x16),
> +			    to_bpp_frac_dec(pipe_config-
> >dsc.compressed_bpp_x16));
>  		return ret;
>  	}
>=20
>  	pipe_config->dsc.compression_enable =3D true;
>  	drm_dbg_kms(&dev_priv->drm, "DP DSC computed with Input Bpp =3D
> %d "
> -		    "Compressed Bpp =3D %d Slice Count =3D %d\n",
> +		    "Compressed Bpp =3D %d.%d Slice Count =3D %d\n",
>  		    pipe_config->pipe_bpp,
> -		    pipe_config->dsc.compressed_bpp,
> +		    to_bpp_int(pipe_config->dsc.compressed_bpp_x16),
> +		    to_bpp_frac_dec(pipe_config->dsc.compressed_bpp_x16),
>  		    pipe_config->dsc.slice_count);
>=20
>  	return 0;
> @@ -2261,15 +2263,16 @@ intel_dp_compute_link_config(struct
> intel_encoder *encoder,
>=20
>  	if (pipe_config->dsc.compression_enable) {
>  		drm_dbg_kms(&i915->drm,
> -			    "DP lane count %d clock %d Input bpp %d
> Compressed bpp %d\n",
> +			    "DP lane count %d clock %d Input bpp %d
> Compressed bpp %d.%d\n",
>  			    pipe_config->lane_count, pipe_config->port_clock,
>  			    pipe_config->pipe_bpp,
> -			    pipe_config->dsc.compressed_bpp);
> +			    to_bpp_int(pipe_config->dsc.compressed_bpp_x16),
> +			    to_bpp_frac_dec(pipe_config-
> >dsc.compressed_bpp_x16));
>=20
>  		drm_dbg_kms(&i915->drm,
>  			    "DP link rate required %i available %i\n",
>  			    intel_dp_link_required(adjusted_mode->crtc_clock,
> -						   pipe_config-
> >dsc.compressed_bpp),
> +						   to_bpp_int(pipe_config-
> >dsc.compressed_bpp_x16)),
>  			    intel_dp_max_data_rate(pipe_config->port_clock,
>  						   pipe_config->lane_count));
>  	} else {
> @@ -2702,7 +2705,7 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
>  		intel_dp_limited_color_range(pipe_config, conn_state);
>=20
>  	if (pipe_config->dsc.compression_enable)
> -		link_bpp =3D pipe_config->dsc.compressed_bpp;
> +		link_bpp =3D pipe_config->dsc.compressed_bpp_x16;
>  	else
>  		link_bpp =3D intel_dp_output_bpp(pipe_config->output_format,
>  					       pipe_config->pipe_bpp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 2d1c42a5e684..68a81f10e772 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -140,7 +140,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struc=
t
> intel_encoder *encoder,
>  		if (!dsc)
>  			crtc_state->pipe_bpp =3D bpp;
>  		else
> -			crtc_state->dsc.compressed_bpp =3D bpp;
> +			crtc_state->dsc.compressed_bpp_x16 =3D
> to_bpp_x16(bpp);
>  		drm_dbg_kms(&i915->drm, "Got %d slots for pipe bpp %d dsc
> %d\n", slots, bpp, dsc);
>  	}
>=20
> @@ -238,13 +238,13 @@ static int
> intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	if (slots < 0)
>  		return slots;
>=20
> -	last_compressed_bpp =3D crtc_state->dsc.compressed_bpp;
> +	last_compressed_bpp =3D to_bpp_int(crtc_state-
> >dsc.compressed_bpp_x16);
>=20
> -	crtc_state->dsc.compressed_bpp =3D
> intel_dp_dsc_nearest_valid_bpp(i915,
> -
> 	last_compressed_bpp,
> -
> 	crtc_state->pipe_bpp);
> +	crtc_state->dsc.compressed_bpp_x16 =3D
> +
> 	to_bpp_x16(intel_dp_dsc_nearest_valid_bpp(i915,
> last_compressed_bpp,
> +
> crtc_state->pipe_bpp));
>=20
> -	if (crtc_state->dsc.compressed_bpp !=3D last_compressed_bpp)
> +	if (crtc_state->dsc.compressed_bpp_x16 !=3D
> +to_bpp_x16(last_compressed_bpp))
>  		need_timeslot_recalc =3D true;
>=20
>  	/*
> @@ -253,14 +253,14 @@ static int
> intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	 */
>  	if (need_timeslot_recalc) {
>  		slots =3D intel_dp_mst_find_vcpi_slots_for_bpp(encoder,
> crtc_state,
> -							     crtc_state-
> >dsc.compressed_bpp,
> -							     crtc_state-
> >dsc.compressed_bpp,
> +
> to_bpp_int(crtc_state->dsc.compressed_bpp_x16),
> +
> to_bpp_int(crtc_state->dsc.compressed_bpp_x16),
>  							     limits, conn_state,
> 2 * 3, true);
>  		if (slots < 0)
>  			return slots;
>  	}
>=20
> -	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
> +	intel_link_compute_m_n(to_bpp_int(crtc_state-
> >dsc.compressed_bpp_x16),
>  			       crtc_state->lane_count,
>  			       adjusted_mode->crtc_clock,
>  			       crtc_state->port_clock,
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b24601d0b2c5..bfc41972a0bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -248,7 +248,7 @@ int intel_dsc_compute_params(struct intel_crtc_state
> *pipe_config)
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct drm_dsc_config *vdsc_cfg =3D &pipe_config->dsc.config;
> -	u16 compressed_bpp =3D pipe_config->dsc.compressed_bpp;
> +	u16 compressed_bpp =3D to_bpp_int(pipe_config-
> >dsc.compressed_bpp_x16);
>  	int err;
>  	int ret;
>=20
> @@ -878,7 +878,7 @@ static void intel_dsc_get_pps_config(struct
> intel_crtc_state *crtc_state)
>  	if (vdsc_cfg->native_420)
>  		vdsc_cfg->bits_per_pixel >>=3D 1;
>=20
> -	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> +	crtc_state->dsc.compressed_bpp_x16 =3D vdsc_cfg->bits_per_pixel;
>=20
>  	/* PPS_2 */
>  	intel_dsc_read_and_verify_pps_reg(crtc_state, 2, &pps_temp);
> --
> 2.25.1

