Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FA5804426
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 02:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A1A10E380;
	Tue,  5 Dec 2023 01:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F24310E380
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 01:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701740182; x=1733276182;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=d2311V3ETWVJTQvbcnMGfjUshgXa34qoAVAQiNiIyf8=;
 b=Cnd1XpmqYu1KJZIh2GrBX0yBy7DcYAYzJSFqjb0oLNWZXNvczDvQpBau
 m/xpQXaA5DiNoU0lKwyuCGYAHYfMYCwpHVZoLuBTq/8thcDDV7v2A39in
 7oUzFyDCJrYhXsW7cudUbdUjqBAPGvvBgkF+Qy4hEl2xsJyTleBNMH181
 NJcmzqUrrVP+XeZeTQqEjfkef2KhdoYBxVnVjL5IZqf8b+nxU9TWBClPP
 YLcNNjZK7EjFhBrJlLyf/8Nec3RvqKj4isSN8ZNhGm/pUY+b3cfVxZ8AH
 LlGdSUfOTBrxJxfg2u53Trk6xepxrJfVaiJR71LkEeUyv60eQLzJ4BIE0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="373269116"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="373269116"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 17:36:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="1102278260"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="1102278260"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 17:36:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 17:36:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 17:36:18 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 17:36:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QHGyyeAfMuHNvilst2+Be/D86RT4tj8aQhnn29GjpGs3IYyXjpM/xccOq/6hocLoGbvKvj4Zpw6gRKvr6l2Yf8b7nu1vvNeL06tALnpPJcyvw1142Ce55xPnNnj9CNw3AcQ90UwJwsxU4mHH1TGpg27okJ5AAW1n6TYUOQKuNMnnUeoJOR3eMTHZnpge8y1AnuQqigsVBx0uZQgFA5ioAWulf02IxWcF6Bw4RKbVQ2bNFlCGcecoS3x1NbPZxfbC+xEEBCjtrj9WYr4WqmY9uDSlTCWPa/Wb0+Z/nf7qSEW5M5KMfsql9ql48rm+6NndzuQsuUhph6zF/qcixQq5LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4h+NEp8X1EsH0vyaYy/iu7VDADkmNNDF0O+6Sk+8geA=;
 b=NlKO6SXuCllEf0fi78nh6vyEbbmPPwjAGNoJ/s4YsI0s2phwyWsD+a5IkfJOXHBoWv0NK7zX6/BVxJBZtWQ4VpFFTrHHgr0EHf7vAZuR3sg5ikRXmeGITYr64P7Aw1OmJian0V/Z6vhKJpNp2pT5GYdCZiD4DIIVH9COgjjoOToePdqszuYhCPfkX9Hc9703VzOPBN+s31VIoD115TQVeStreDPSaBcIqiVKAut7zIEwMblJKAu0csAx8+JU5TqsePUZsTkPLisH5t8gZPIUCSTtu5bPFyPYg515E0yskTu3fCVROfB8MJybU+iX7UGN+xG9yliIMnjNQgGVB+GVAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.33; Tue, 5 Dec 2023 01:36:16 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7046.033; Tue, 5 Dec 2023
 01:36:16 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/display: Convert link bitrate
 to corresponding PLL clock
Thread-Index: AQHaJqpSFhh/5pBjJU2xVLEC/AXkbbCZ4GZg
Date: Tue, 5 Dec 2023 01:36:16 +0000
Message-ID: <DM4PR11MB5971B29E7F651FA080BB81A78785A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231204115856.176240-1-mika.kahola@intel.com>
 <20231204115856.176240-3-mika.kahola@intel.com>
In-Reply-To: <20231204115856.176240-3-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DS0PR11MB7408:EE_
x-ms-office365-filtering-correlation-id: 62d557a0-8c8e-4d56-f002-08dbf53292bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yitmzZCb+hz4m6qkOOZkelYoJB86LKsSYZdTaCmYugzOPtGFrSqoGs6leTC8LvlWZ4LhQuojLDDi0qOVWyskStUlWvL/xYV+hQ7Aq20fk5RuoctEEbv+Ox59vFZUG9urnCbjOE87bSBAMSa95OVA1xUTlw7Re7gA51vfqdMpF3Q3Sp0B/+j9wLY4g4TllfdTHgMJCm3R9WM3dapC2/9rsWqzVMZ25XDEoXQ7gfI9dZ5FIZtKESM/G/2OGuWa8cEihwJNryHCvfQnisYiOJfhp+r8ieWlKGQ/sDGZ+ng0BrjPX0FrCYXMWD6vMBu3otDpSg/g38Din3/eD+j92iAvO6NBiXGJUoWhMyZTLSAFC69G/mUo6oNaKY8SFee3hkcGXNYKysVMQmM0UoOtfXkzJXMsRFog9fK0kCHE/Mj7rs5iyjvbKYX9hMySLWbomrm8XwASwJiMcKinBwT1Yy0V2iUjdAOyWrErcQXBTXIfNOo7hS41VHMoJG1QXwh9zia8eduxlKrtc6yt5uqC0J5zU7fYiUfpaGjeT+5X6Vum5Xq/NJJq19HlZQDFq4JOhGdH8JTaK1woMxUymT8t4E8aqshSs/WXv360Gn+9i2bneZI2nqUGLmgez71nciyAxjJ8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(346002)(396003)(366004)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(316002)(66476007)(66556008)(66946007)(66446008)(76116006)(110136005)(64756008)(38100700002)(2906002)(5660300002)(86362001)(33656002)(41300700001)(38070700009)(122000001)(8936002)(8676002)(82960400001)(52536014)(9686003)(53546011)(7696005)(6506007)(83380400001)(26005)(55016003)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zK3oXXI0ocUZSGZqaGstkGPNYYLKgw2YQult0PeW63E0wA5PdLncCG9gQOtH?=
 =?us-ascii?Q?C7OuOGopp7s1/qiZGAVTjRTOxWLuTGhMxAhxrLtp3bWvZgKAWSU0Fay8ldHR?=
 =?us-ascii?Q?BP+0ny4skrcQwEw8ej1+/ZNgkZNNvHKhnwrfrWppjFYC8XAKrbhUDdX5SlEf?=
 =?us-ascii?Q?sprvcl0X6VuYLrUecns6kYJtx3AADSlQq79t7VBdixrXpfBUDP8hGpxi9Jym?=
 =?us-ascii?Q?qPS5XnGVTCqR+SlFmeo1JZ9MtTDJAazr/qvYbVcOaa7bZkOj3si8APzkqyi7?=
 =?us-ascii?Q?ADZWWsfnoRN1ak8vFkNmIP5V3zqMXNLnx7GobJ7cIHZMC/nY8jHNVov442T/?=
 =?us-ascii?Q?gtxM6C9SyTJAl5TU+RopyeSLWcf4JzNMw7B/fjkP7RZdMTfgcojLuIeaau2v?=
 =?us-ascii?Q?njpwRsMDNVpkYBig3ivO2u5PhUWFSseAutnBRQRBMjhivCEpq4WyZaQZ4l+6?=
 =?us-ascii?Q?ndDzgKGolFDWTQnlJayzRCMP89hdY2MNd1uRx3aiBDJoU683pKAaEdTPwelq?=
 =?us-ascii?Q?AJ3nyyNiAIN6YWYP4FnUQXB5pU0wyFJiyDJDEx9x9Ylmz8Xu4HvgJPd2Z8ig?=
 =?us-ascii?Q?Sbf3HUXoAkFqOKu3qe1vWdZz6CzfoRqs6oaw2UTc9BZ5no85LAo59ZMx8lE0?=
 =?us-ascii?Q?Ecli3laMZWjNtVuPFUkjGu8VTpRomqDCwwF77cdxj72eiSxdwCX79zEmx1JI?=
 =?us-ascii?Q?VcJ554qCKbf0GlGzqHYFovTm7zk8ENfG2NNciDjJQ7qcbq81VcEeGFtaf5ja?=
 =?us-ascii?Q?/az2YV9FGK8WpmdquzLDU3YKqOwL3bV8UxcEVrqSuZAURELP0DVRP6LbAqjR?=
 =?us-ascii?Q?AhUA5Muj+tqsrhxfGf1qz1jjXHhk0cBW+7vHUlBBD0O7Jh/5Jvlfe5eAUNuP?=
 =?us-ascii?Q?kiX+rtgBztV+rkr4YEpbh0cwvUyJH+bArUprj19Kjk1+piV/Z3Da7V78QTo8?=
 =?us-ascii?Q?pVjqdcst3Isdr4n8RJRg81a7f+dVmxjX0SmaWI0j9Xsg6PMOfEyOEFmlmaUJ?=
 =?us-ascii?Q?fDgGSflikWDc1WBJC1rBEP0fqucp6AV1f1Tyi8peWUZXMD6h0ehOZhjvg2lp?=
 =?us-ascii?Q?2T6OY4tsWW/sYx2eLoG8I8nP7IVGDO1JQqtlATbeZQzidc8ClzCpZSY0ePwo?=
 =?us-ascii?Q?cKfYqY7K0LAeOqCSISPlTRdtiIZ/WPD5oRLhGMYgJH6OSk8XuKmIzr8ofJsL?=
 =?us-ascii?Q?rY27va7JhrLLkMKJTj+VRnMpBPszRMyzO6yIXOx1Hm7RYwiOvjgQjYCCxEDT?=
 =?us-ascii?Q?zcm/TA/kkCiNAQyLG2qluMl8UQl9fzDjfTGyrsJgSyNRDcfy8eBW51w3Oceu?=
 =?us-ascii?Q?I/nCyxC4zkOsMQoY5n1f9spxt2jHoU7BMBHQ+4swfjuWiMnQK8Dr//9KxUSY?=
 =?us-ascii?Q?OZ0QoPiezJr7mf6ydQPokRzz8JdIEBzEn41YagK7EkudltpZKiFXMywLlW0y?=
 =?us-ascii?Q?DWrIbyOyhhGd95R7zyWrY+szvwofiUS7WJB+TEgYUS59ts8uqpcGdNokT05p?=
 =?us-ascii?Q?3Fw+JPcqQ6PArzN5CN8yHozLof6GlkHkKPzLHbymSxN+kRT5fQ59tg5Hh+4n?=
 =?us-ascii?Q?svOcCAqWEu0/yAFizfAbsNmrDIeagtwY1ZDKkjPqge2IbDU1MTAliKivowIA?=
 =?us-ascii?Q?Cg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62d557a0-8c8e-4d56-f002-08dbf53292bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 01:36:16.1603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TXS1gdx/wQaTf2rzBNKn4W4/YuQt00ARBWQqobCfMS0zI+ZwQUE34hso8zEQY/G2iplqqDc+BGOUTqks3kY28Xd8v9r8z6mW3q0kHv2xJkk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7408
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Convert link bitrate
 to corresponding PLL clock
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

Hi Mika,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Monday, December 4, 2023 3:59 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Convert link bitrate t=
o
> corresponding PLL clock
>=20
> Compute clock during PLL readout. This prevents warn when only c20 phy
> is connected during modprobe. The intel_c20pll_calc_port_clock()
> function returns link bitrate which in DP2.0 and HDMI cases does not matc=
h
> with the clock rate. Hence, conversion function is needed to convert
> link bitrate to corresponding PLL clock rate.
>=20
> while at it, update clock on C10 pll state as well.
>=20
> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 38 ++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  2 +-
>  3 files changed, 37 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 2e6412fc2258..02efe2786c6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -1871,6 +1871,7 @@ static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  }
>=20
>  static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
> +					  struct intel_crtc_state *crtc_state,
>  					  struct intel_c10pll_state *pll_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> @@ -1894,6 +1895,7 @@ static void intel_c10pll_readout_hw_state(struct
> intel_encoder *encoder,
>=20
>  	pll_state->cmn =3D intel_cx0_read(i915, encoder->port, lane,
> PHY_C10_VDR_CMN(0));
>  	pll_state->tx =3D intel_cx0_read(i915, encoder->port, lane,
> PHY_C10_VDR_TX(0));
> +	pll_state->clock =3D crtc_state->port_clock;
>=20
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
> @@ -2445,12 +2447,33 @@ static void intel_program_port_clock_ctl(struct
> intel_encoder *encoder,
>  		     XELPDP_SSC_ENABLE_PLLB, val);
>  }
>=20
> +static int intel_link_bitrate_to_clock(struct intel_encoder *encoder,
> +				       struct intel_crtc_state *crtc_state,
> +				       int link_bit_rate)
> +{
> +	const struct intel_c20pll_state * const *tables;
> +	int i;
> +
> +	tables =3D intel_c20_pll_tables_get(crtc_state, encoder);
This will produce incorrect result. intel_c20_pll_tables_get depends on
intel_crtc_has_{dp_encoder,hdmi..} which depends crtc_state->output_types
to determine edp/dp/hdmi table which is not initialized until later in
mtl_ddi_init_config under intel_ddi_get_config -> intel_ddi_read_func_ctl

We might be needing a separate sanitization of initial pll state to be done=
 after
intel_ddi_get_config. Or a special case to handle initial modeset.

--Radhakrishna Sripada
> +	if (!tables)
> +		return -EINVAL;
> +
> +	for (i =3D 0; tables[i]; i++) {
> +		if (link_bit_rate =3D=3D tables[i]->link_bit_rate)
> +			return tables[i]->clock;
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> +					  struct intel_crtc_state *crtc_state,
>  					  struct intel_c20pll_state *pll_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	bool cntx;
>  	intel_wakeref_t wakeref;
> +	int clock;
>  	int i;
>=20
>  	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
> @@ -2500,6 +2523,13 @@ static void intel_c20pll_readout_hw_state(struct
> intel_encoder *encoder,
>  		}
>  	}
>=20
> +	pll_state->link_bit_rate =3D intel_c20pll_calc_port_clock(encoder,
> pll_state);
> +	clock =3D intel_link_bitrate_to_clock(encoder, crtc_state,
> +					    pll_state->link_bit_rate);
> +
> +	if (clock >=3D 0)
> +		pll_state->clock =3D clock;
> +
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>=20
> @@ -3053,15 +3083,16 @@ static void intel_c10pll_state_verify(const struc=
t
> intel_crtc_state *state,
>  }
>=20
>  void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
> +				   struct intel_crtc_state *crtc_state,
>  				   struct intel_cx0pll_state *pll_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>=20
>  	if (intel_is_c10phy(i915, phy))
> -		intel_c10pll_readout_hw_state(encoder, &pll_state->c10);
> +		intel_c10pll_readout_hw_state(encoder, crtc_state, &pll_state-
> >c10);
>  	else
> -		intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
> +		intel_c20pll_readout_hw_state(encoder, crtc_state, &pll_state-
> >c20);
>  }
>=20
>  int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
> @@ -3145,7 +3176,8 @@ void intel_cx0pll_state_verify(struct
> intel_atomic_state *state,
>  	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
>  		return;
>=20
> -	intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
> +	intel_cx0pll_readout_hw_state(encoder, (struct
> intel_crtc_state*)new_crtc_state,
> +				      &mpll_hw_state);
>=20
>  	if (intel_is_c10phy(i915, phy))
>  		intel_c10pll_state_verify(new_crtc_state, crtc, encoder,
> &mpll_hw_state.c10);
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index c6682677253a..eac7354e9a4e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -32,6 +32,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
>=20
>  int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct
> intel_encoder *encoder);
>  void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
> +				   struct intel_crtc_state *crtc_state,
>  				   struct intel_cx0pll_state *pll_state);
>  int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
>  				 const struct intel_cx0pll_state *pll_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 38f28c480b38..508d3363e89f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3953,7 +3953,7 @@ static void mtl_ddi_get_config(struct intel_encoder
> *encoder,
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
>  		crtc_state->port_clock =3D
> intel_mtl_tbt_calc_port_clock(encoder);
>  	} else {
> -		intel_cx0pll_readout_hw_state(encoder, &crtc_state-
> >cx0pll_state);
> +		intel_cx0pll_readout_hw_state(encoder, crtc_state, &crtc_state-
> >cx0pll_state);
>  		crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder,
> &crtc_state->cx0pll_state);
>  	}
>=20
> --
> 2.34.1

