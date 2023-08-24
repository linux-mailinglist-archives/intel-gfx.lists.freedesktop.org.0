Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E6F787578
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 18:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894EC10E0B1;
	Thu, 24 Aug 2023 16:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B0E10E0B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 16:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692894910; x=1724430910;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ccTgzGw6BJGZ+nEUWM+1pmxPTTQfysDvWsCinBReF+s=;
 b=lhaqmmjV5gH9l8DB8/w4L9WuDjQjw1CTs+d2m8QV+xXWwl+zgTTp9L3I
 TXWC+hJfUF+FCWjmhYhguagwAzrjh37jdA0qqNdXNtGOSXYetiWX3d9Uu
 vvGb/NTrdlNmV1wZxOYXUfOs2Evao+HfiBxhGrBetF6Q/coRQRV8Twff3
 5HscTbn8SJ9nEm41llOdpl3bK+3i68cP+FHTwYOoWn2fiLI2aPRCe2SOD
 sSgWhigQmoupkEtsjJVimrE112XbMcmMT0gsoIwFx95KooH/jFQPfyV8u
 HThxMFCR+AVAgN8R6pgYJ0ZCLcff1pU6lQS7buzZZkagqs5gsJL1Cb8GI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="371895284"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="371895284"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 09:35:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="740263474"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="740263474"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 24 Aug 2023 09:35:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:34:22 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:33:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 09:33:43 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 09:32:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LisIr03Ipd7/8Y+qAP9LZdeLsUTuBQSoE7Bmhl6uYFxtNj62IH4+u8GZvVpFcTsomJBzGXPm9s2ytkyLkd1T8e4o7vrAsWCfFCRSGj93tohlIBldA+EjH8EqHCt1zyfbWtOha6GagWrGHQS71EbVBvSqSuhZYipT9YbgjgBoiUzf8Nn/xLWweTMtukWN/33PHH0GiJsdOLxM6b6Up8ZxsfOGonTWsCM412ypfgAK/WiJKM/oORreYrdVGcg5wPoOju0eHdZh1oHUjaC3cHXNAh1sI/x7TRH34Xjo5Jv4LN7/02XMdVQuU5a6HHiZUbwDB16dRldC4JGWVxEbtC4ZCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EK0o/sam7g3aNU1eZ1OM2s3gGOEz2mxyAuzKsPcj87M=;
 b=oNHAaybhJ0X9pFSwDeH6/UzIKHTLvCZdW0uQPKzEb893d4/0mtrT2TPGgVkxEijwYCX8pLXdl2WG7dNyL84PEvkH6PSE+F9H4ijvM0tBTmO9HNQ9pPE1OhUJvdczrq+S7hyVplqNuX8gNANobw961ld2UfcSwFE4N9u08sSqx4CsyIABxn+Yvl4cczMLP+cct821qMoyfyzXIoS0UxajwCW4ULw7vxE91AYNvLvYoY70YXN7wprP+oGAmxbCILjWHGPpFSosfyfKSZAHJWHirzV41WQWx8vdyt4Rs/l2HkCSLRNYg22j4oyZr8oU6CZxj35uS6YVWFsft/z99YOEXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4968.namprd11.prod.outlook.com (2603:10b6:510:39::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 16:32:49 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 16:32:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/9] drm/i915/display: Store compressed bpp
 in U6.4 format
Thread-Index: AQHZ1PIk5SCBJyWLJkuj6sWEXkwhZ6/5Io3wgACD9vA=
Date: Thu, 24 Aug 2023 16:32:49 +0000
Message-ID: <SN7PR11MB6750D99C0D6E2ECDFD24F9DBE31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
 <20230822121033.597447-3-ankit.k.nautiyal@intel.com>
 <SN7PR11MB6750FBA29BCBB2248C0D86D0E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750FBA29BCBB2248C0D86D0E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4968:EE_
x-ms-office365-filtering-correlation-id: 86ae3372-cb47-40d4-6a26-08dba4bfc14d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MWcFduC5yW4Kju0OWz09Sg+LAtFqMURAfyHzi+QiBstOFg1M0bIPgkVy2BXv/e+JsruUfg8KPyCGgJFYDh7xncRSNHPHs0VUQn1BeYjGgIUnF11sNO6YSJ0D4lkREY9HFbYJBBhKeYvu/scp4YgDK9uO+irvyUiLLVKnV7sXCFtb9t5jiNhDQ9FyPnwtL4mUJjRTNaOqsGap31JH1gfEYTAHYPgOxpR3I4j4Ya35llkIbxtV+crmjDtJcoMUa89bTsQWVFGEaXQeMK9YzK+QZRLFMQ0W4u4INLjuPLN8mZX1JsD7AP87tUGMmX0sfB/8MPzypdtY0VrCu6wT8fv1uNPmkAV1ZY5H9Z9it5H6TEYiSxeQouzr4PXpB9Gaie5x5Sx4WsF+PBEpJuWNJAs0sh3LZsreEQwsrI0OW2OiX2h/2s6XTxZHgQDkoEHOJhL4gqY5Uk77PaFjOlwPAGVPnaBzjsDO4739GajkeC7cJlkkgejXKyAQpGmwuJiXQ4uz/kurr7RJqFRREqL7ngIo3/+L4QzgTobx5UFh4tz/bvb/VR4orAiDp5kF4Xsq3Lq5UezXj5XRwD3+qDq2RMYxuM9sjvFmINc283Jv6CkKHB9xZ1pCi5y6hGmhEkOk/No0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(346002)(366004)(136003)(186009)(1800799009)(451199024)(52536014)(5660300002)(8676002)(8936002)(30864003)(83380400001)(33656002)(7696005)(55016003)(26005)(71200400001)(38070700005)(38100700002)(82960400001)(122000001)(66556008)(76116006)(66946007)(66446008)(64756008)(66476007)(316002)(110136005)(478600001)(2940100002)(41300700001)(9686003)(6506007)(2906002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?k/GiR62vCfsbUaIXKRabVFqwPY8vMmPdbt89Z6/sCh/3w6TTqw/gN+WA0NKI?=
 =?us-ascii?Q?Dbif4OoYUpjxF3Z/dvUiCw8jrcWFyoyPxRndJb3uZHUswEKI6j8uuJxlb62m?=
 =?us-ascii?Q?kwxfOsJ3130mBv/SpP7EdNXFuzNau0O948mrxCjiZZUf8sLyWxsFbdV9zKjv?=
 =?us-ascii?Q?o2MtzIb+aPaNdiRwisZVsdWWG24hXZwhapmJ4Ss1aYjZU8AVFH+L+FX2zEzP?=
 =?us-ascii?Q?IzOU28Dm2ejPVOiVxs/4nGU1vO9usr7Kq+nmTOcor1ZWFnlVCh2shzrFNGVt?=
 =?us-ascii?Q?StxAQRXhZ/X7/KzhhVkTqJ0UE202GS7gX0IGtX13i0ZFMUOTbksfvbdgyVjO?=
 =?us-ascii?Q?fjVBbrb6tGaGy2rwDPzV18EuXOYvfk301APpphWTRLLdt3cwO9uRPoaVKc5W?=
 =?us-ascii?Q?Fsp1OMTFkEw7yVPhSXGGIMp7IXO6pM45GX0oZ6DFHO94Jfcfi8zQW6kp4omv?=
 =?us-ascii?Q?xJUWCl50NWD3E7w34W5Z+FXQ2BI+k7d33oXWmUNLXlqqfQyIdVbM+grHQZ7+?=
 =?us-ascii?Q?rgSz2rIz2cpPBqcmssros+kTwTiZOdTpqK/kHVZQ38u2715dET2dJKKyo7n1?=
 =?us-ascii?Q?xgZRNY1avUxEMV0QWCkbQs5U0RWVl2a2wfJDkaP6wtdNXpYroRCobwH/32S9?=
 =?us-ascii?Q?AozmtpHOw2vx1COvY78jPk+k0gqdGwUR/+9et0IaX0p/zJYFkGWP5PhA/ro/?=
 =?us-ascii?Q?Sol0xG3hkZ40bPkVS48GnoVSUUjx6oEIVDbjMeSWovVgHs87DR4ZAFEdLKdp?=
 =?us-ascii?Q?fWiw5IQICE1lBFQ5r0PChdbc6DE2o8kskvXgS5xoeIVXvInyFc49n2/h+c3Y?=
 =?us-ascii?Q?4fKlNzZGTdYt1eFkz9G5K8lGsoMdYODKY/Z5kAVJVN933Z49srQdYdaEthvx?=
 =?us-ascii?Q?3lptqK4UaV7DR6Z2aSACzzX56A4aQoVzQVtZ6iUb96qkCrrNES4niNFg+DXm?=
 =?us-ascii?Q?2kDWUhRbfkpYHPDzOfelPSiPySy0oyCl/jFCOr+w7BXHz6MgGzJgH/SBSRL6?=
 =?us-ascii?Q?nziyLsXGexfMr06yn4gi3ImCVciTVrKJyWLHwRLhUaQMZkutoes30AFBMwhR?=
 =?us-ascii?Q?DsiTTSj1e5tSjb3EYeZPOpUp/lZAM2Q8RTES8CVmggpDEkVXEdRy+1B3Mhgu?=
 =?us-ascii?Q?q7vcFViPK0yHv+ga2jIwpWwIEb09Y0qYmzoBTqU+2rf9I4IIqrsG5uIT01YP?=
 =?us-ascii?Q?TLL2ex5sQu7zgpcQcJPuHfgqtrfGz8qoG2Pbzr6f0IYN9gI9fV2ouDW/VlfB?=
 =?us-ascii?Q?oH+fDd3bGdcW+DS9BWGcabU6+O0Xp5qaaLORDGPTRl9c/yydWgss7YYjyjf+?=
 =?us-ascii?Q?B1sIrTa2BF/SYFlCo6LVFN/R2y5JF7EudPtVQwC2GjI9lRQGYxm2pTR9y5zC?=
 =?us-ascii?Q?kIHcIcM+d7/Fv4X2SULNTJyWpqsFQvBjOsqH+bFzA5Ehr0Gv580qjw7UNDnE?=
 =?us-ascii?Q?jJCxwUqGvaV7R31zjCuM9CbOlzJtAQiWzGdE7WRQQ+EuUagZOrDq0JLqoc5O?=
 =?us-ascii?Q?Ng9iX8TI560Z4swD50evIUKI38JJGSBzuq3sfwpVYkUJr6RUQ6Qb93Fb49sd?=
 =?us-ascii?Q?fagDWas26LwyKkwwllIcGjieuVRujS7bFWaJF6xm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86ae3372-cb47-40d4-6a26-08dba4bfc14d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 16:32:49.1773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H6byL3KUPsa6SweQlHiP5tc+6W9Su/z0pMSpju3uVsXAY0alaRwCbVoE3TAIcqJGxSzUMM6hJUmu1+dQdTMYyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4968
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/display: Store compressed bpp
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

> Subject: RE: [Intel-gfx] [PATCH 2/9] drm/i915/display: Store compressed b=
pp in
> U6.4 format
>=20
> > Subject: [Intel-gfx] [PATCH 2/9] drm/i915/display: Store compressed
> > bpp in
> > U6.4 format
> >
> > DSC parameter bits_per_pixel is stored in U6.4 format.
> > The 4 bits represent the fractional part of the bpp.
> > Currently we use compressed_bpp member of dsc structure to store only
> > the integral part of the bits_per_pixel.
> > To store the full bits_per_pixel along with the fractional part,
> > compressed_bpp is changed to store bpp in U6.4 formats. Intergral part
> > is retrieved by simply right shifting the member compressed_bpp by 4.
> >
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c        | 10 ++++-----
> >  drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_bios.c     |  2 +-
> >  .../drm/i915/display/intel_display_types.h    | 16 +++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 21 +++++++++++--------
> >  drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 ++--
> >  6 files changed, 36 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index ad6488e9c2b2..81b8e97e9435 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -330,7 +330,7 @@ static int afe_clk(struct intel_encoder *encoder,
> >  	int bpp;
> >
> >  	if (crtc_state->dsc.compression_enable)
> > -		bpp =3D crtc_state->dsc.compressed_bpp;
> > +		bpp =3D dsc_integral_compressed_bpp(crtc_state-
> > >dsc.compressed_bpp);
> >  	else
> >  		bpp =3D mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
> >
> > @@ -860,7 +860,7 @@ gen11_dsi_set_transcoder_timings(struct
> > intel_encoder *encoder,
> >  	 * compressed and non-compressed bpp.
> >  	 */
> >  	if (crtc_state->dsc.compression_enable) {
> > -		mul =3D crtc_state->dsc.compressed_bpp;
> > +		mul =3D dsc_integral_compressed_bpp(crtc_state-
> > >dsc.compressed_bpp);
> >  		div =3D mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
> >  	}
> >
> > @@ -884,7 +884,7 @@ gen11_dsi_set_transcoder_timings(struct
> > intel_encoder *encoder,
> >  		int bpp, line_time_us, byte_clk_period_ns;
> >
> >  		if (crtc_state->dsc.compression_enable)
> > -			bpp =3D crtc_state->dsc.compressed_bpp;
> > +			bpp =3D dsc_integral_compressed_bpp(crtc_state-
> > >dsc.compressed_bpp);
> >  		else
> >  			bpp =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> > >pixel_format);
> >
> > @@ -1451,8 +1451,8 @@ static void gen11_dsi_get_timings(struct
> > intel_encoder *encoder,
> >  	struct drm_display_mode *adjusted_mode =3D
> >  					&pipe_config->hw.adjusted_mode;
> >
> > -	if (pipe_config->dsc.compressed_bpp) {
> > -		int div =3D pipe_config->dsc.compressed_bpp;
> > +	if (dsc_integral_compressed_bpp(pipe_config-
> > >dsc.compressed_bpp)) {
>=20
> Doesn't make sense to have this function to be called here this just chec=
ks if we
> have compressed_bpp available or not extracting the integral part should =
not be
> necessary
>=20
> > +		int div =3D
> > +dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
> >  		int mul =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> > >pixel_format);
> >
> >  		adjusted_mode->crtc_htotal =3D
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 3d9c9b4f27f8..93969b63cdd8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -528,7 +528,7 @@ static unsigned int calc_hblank_early_prog(struct
> > intel_encoder *encoder,
> >  	h_active =3D crtc_state->hw.adjusted_mode.crtc_hdisplay;
> >  	h_total =3D crtc_state->hw.adjusted_mode.crtc_htotal;
> >  	pixel_clk =3D crtc_state->hw.adjusted_mode.crtc_clock;
> > -	vdsc_bpp =3D crtc_state->dsc.compressed_bpp;
> > +	vdsc_bpp =3D
> > +dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
> >  	cdclk =3D i915->display.cdclk.hw.cdclk;
> >  	/* fec=3D 0.972261, using rounding multiplier of 1000000 */
> >  	fec_coeff =3D 972261;
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 858c959f7bab..fe1e376c4ba7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -3385,7 +3385,7 @@ static void fill_dsc(struct intel_crtc_state
> > *crtc_state,
> >  	crtc_state->pipe_bpp =3D bpc * 3;
> >
> >  	crtc_state->dsc.compressed_bpp =3D min(crtc_state->pipe_bpp,
> > -					     VBT_DSC_MAX_BPP(dsc-
> > >max_bpp));
> > +					     VBT_DSC_MAX_BPP(dsc-
> > >max_bpp)) << 4;
> >
> >  	/*
> >  	 * FIXME: This is ugly, and slice count should take DSC engine diff
> > --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 731f2ec04d5c..f749dc4e70df 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1353,7 +1353,7 @@ struct intel_crtc_state {
> >  	struct {
> >  		bool compression_enable;
> >  		bool dsc_split;
> > -		u16 compressed_bpp;
> > +		u16 compressed_bpp; /* U6.4 format (first 4 bits for
> > fractional part)
> > +*/

Normally I have seen the comment come on top of variable declaration in
struct rather than right in front of it maybe follow that convention
I don't personally have such preference

Regards,
Suraj Kandpal
> >  		u8 slice_count;
> >  		struct drm_dsc_config config;
> >  	} dsc;
> > @@ -2108,4 +2108,18 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
> >  	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;  }
> >
> > +/* Returns integral part of the compressed bpp given in U6.4 format
> > +*/ static inline int
> > +dsc_integral_compressed_bpp(u16 compressed_bpp) {
> > +	return compressed_bpp >> 4;
> > +}
>=20
> Maybe we can have two macro/functions that can be used to shift the fract=
ional
> part for bpp
> dsc_bpp_x_to_x16 and dsc_bpp_x16_to_x this can be used at a lot of places=
 to
> avoid confusions everywhere when and why we are shifting  by 4.
> We can keep the dsc_fractional_compressed_bpp.
>=20
> > +
> > +/* Returns fractional part of the compressed bpp given in U6.4 format
> > +*/ static inline int
> > +dsc_fractional_compressed_bpp(u16 compressed_bpp) {
> > +	return ((compressed_bpp & 0xF) * 10000 / 16); }
> > +
>=20
> Maybe dsc_get_fractional_bpp () ?
>=20
> >  #endif /*  __INTEL_DISPLAY_TYPES_H__ */ diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 5b48bfe09d0e..32d0bee11f53 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1901,7 +1901,7 @@ xelpd_dsc_compute_link_config(struct intel_dp
> > *intel_dp,
> >  					      compressed_bpp,
> >  					      timeslots);
> >  		if (ret =3D=3D 0) {
> > -			pipe_config->dsc.compressed_bpp =3D
> > compressed_bpp;
> > +			pipe_config->dsc.compressed_bpp =3D
> > compressed_bpp << 4;
> >  			return 0;
> >  		}
> >  	}
> > @@ -2171,17 +2171,19 @@ int intel_dp_dsc_compute_config(struct
> > intel_dp *intel_dp,
> >  	if (ret < 0) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Cannot compute valid DSC parameters for Input
> Bpp =3D %d "
> > -			    "Compressed BPP =3D %d\n",
> > +			    "Compressed BPP =3D %d.%d\n",
> >  			    pipe_config->pipe_bpp,
> > -			    pipe_config->dsc.compressed_bpp);
> > +			    dsc_integral_compressed_bpp(pipe_config-
> > >dsc.compressed_bpp),
> > +			    dsc_fractional_compressed_bpp(pipe_config-
> > >dsc.compressed_bpp));
> >  		return ret;
> >  	}
> >
> >  	pipe_config->dsc.compression_enable =3D true;
> >  	drm_dbg_kms(&dev_priv->drm, "DP DSC computed with Input Bpp =3D
> %d "
> > -		    "Compressed Bpp =3D %d Slice Count =3D %d\n",
> > +		    "Compressed Bpp =3D %d.%d Slice Count =3D %d\n",
> >  		    pipe_config->pipe_bpp,
> > -		    pipe_config->dsc.compressed_bpp,
> > +		    dsc_integral_compressed_bpp(pipe_config-
> > >dsc.compressed_bpp),
> > +		    dsc_fractional_compressed_bpp(pipe_config-
> > >dsc.compressed_bpp),
> >  		    pipe_config->dsc.slice_count);
> >
> >  	return 0;
> > @@ -2260,15 +2262,16 @@ intel_dp_compute_link_config(struct
> > intel_encoder *encoder,
> >
> >  	if (pipe_config->dsc.compression_enable) {
> >  		drm_dbg_kms(&i915->drm,
> > -			    "DP lane count %d clock %d Input bpp %d
> > Compressed bpp %d\n",
> > +			    "DP lane count %d clock %d Input bpp %d
> > Compressed bpp %d.%d\n",
> >  			    pipe_config->lane_count, pipe_config->port_clock,
> >  			    pipe_config->pipe_bpp,
> > -			    pipe_config->dsc.compressed_bpp);
> > +			    dsc_integral_compressed_bpp(pipe_config-
> > >dsc.compressed_bpp),
> > +			    dsc_fractional_compressed_bpp(pipe_config-
> > >dsc.compressed_bpp));
> >
> >  		drm_dbg_kms(&i915->drm,
> >  			    "DP link rate required %i available %i\n",
> >  			    intel_dp_link_required(adjusted_mode->crtc_clock,
> > -						   pipe_config-
> > >dsc.compressed_bpp),
> > +
> > dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp)),
> >  			    intel_dp_max_data_rate(pipe_config->port_clock,
> >  						   pipe_config->lane_count));
> >  	} else {
> > @@ -2700,7 +2703,7 @@ intel_dp_compute_config(struct intel_encoder
> > *encoder,
> >  		intel_dp_limited_color_range(pipe_config, conn_state);
> >
> >  	if (pipe_config->dsc.compression_enable)
> > -		link_bpp =3D pipe_config->dsc.compressed_bpp;
> > +		link_bpp =3D
> > +dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
> >  	else
> >  		link_bpp =3D intel_dp_output_bpp(pipe_config-
> > >output_format,
> >  					       pipe_config->pipe_bpp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index e4c395b4dc46..2dc6ea82c024 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -248,7 +248,7 @@ int intel_dsc_compute_params(struct
> > intel_crtc_state
> > *pipe_config)
> >  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	struct drm_dsc_config *vdsc_cfg =3D &pipe_config->dsc.config;
> > -	u16 compressed_bpp =3D pipe_config->dsc.compressed_bpp;
> > +	u16 compressed_bpp =3D
> > +dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
> >  	int err;
> >  	int ret;
> >
> > @@ -1040,7 +1040,7 @@ void intel_dsc_get_config(struct
> > intel_crtc_state
> > *crtc_state)
> >  	if (pps0 & DSC_NATIVE_420_ENABLE)
> >  		vdsc_cfg->bits_per_pixel >>=3D 1;
> >
> > -	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> > +	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel;
> >  out:
> >  	intel_display_power_put(dev_priv, power_domain, wakeref);  }
> > --
> > 2.40.1

