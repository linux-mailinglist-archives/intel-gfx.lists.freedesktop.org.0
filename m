Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358EE6A02D1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 07:30:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA93810E01F;
	Thu, 23 Feb 2023 06:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D05A010E01F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 06:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677133830; x=1708669830;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F0hf22C6cqKqvkRj+PYTC++wUbX0vTRowA8yAYISXXI=;
 b=n3MZ+u1QANc6JQ771Pam0jso4jhjSRjhoKuRTEAIFfBK/xbDpugarDOe
 f2TsT6Fvmdd8LZ9KtwaklFEEwUGa1E22MBOsARRLaffAKwhuIPtmW7gwm
 gpdE/inIVeu1BemmKtx4VRD20h1rycq14CYe/082pe8bAfP3207udtUZI
 I9JahQTYYzvn5JQRaCNob5xoSPZDwqHBq2UHRkXZUambdMAonYWhwpQtM
 A22zThlPp8AdC4IfMLTmywVfWdmumPbDKp/9sHyglQqJIyrN9ZG7N5eNE
 WpUhukG6nQ9N3vPDrAGiCg8GC+zK+lcqjrTm5DwBfIbUxn6iUazJIlGZx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="335332446"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="335332446"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 22:30:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="741145421"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="741145421"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 22 Feb 2023 22:30:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 22:30:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 22:30:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 22:30:28 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 22:30:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OBgC/LUWhbsvsCA/DVK/qVuVGtJUomxnCfIlOwQmIgbQB3I68Cs6AfbL1NWXSWHDWRJCBI4OQ8AkSjWdutFXSil5RYW+nD1Uolo7swQg8uQyvMpv42uuq3Ja9Emg2Zhv9q7ZuFKhhkKNh6Z75i2yJHbTEFBOifcDBTUFuSpwm2eUL4vuSGo5R7CLwRdsafrS90GJVQAfKU42dhu1+REBCJd+h4gH5Gj62h9n/tbhcZJCSeLbBrYb8IIhqUDjcLl2H1VLs+PDrYbPDvtR6BCQOItdqY9ThUbGutTuiaGJv7eyIKDjWMuZNuAYufc20MqddOOM5/Bg8e1O6HClFmAVmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rGFWAFEdNPkWR8N/hZYc21xR4K9WyguY/KvTVqEt3r8=;
 b=J4RjtJr0maZk1qlatAQ4XM2flM7JH0fUauO5lQvXPR6jOQhIdk2sJloyhG+paeMsyHIZiUjWQpwd+NYbTnCBTviFIeeYA+wuNTwlio/FpG8NGIE+EiiukqKYe8Gz8KFVXMvfcdzxtveMdUDLbhnMTLNoWPb1RiAlSwNc+lh68bzuYl3bKZG1iTcAMJaRa3j0EH+iIQ4bAPEQG2UmiocxdLGQTYOeGjkXIkwoMKV8B6iSjxpFXHSHs4GgiWrNC4v1/5uO6WYdou0hx+sTVH9xndU6gNoIIuh6OBz4HxQfa0MUSwoETNiuUfWqg1NG8KR2MYNDcogmt3EM0iUOhchCQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB5136.namprd11.prod.outlook.com (2603:10b6:a03:2d1::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.20; Thu, 23 Feb
 2023 06:30:26 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%4]) with mapi id 15.20.6134.019; Thu, 23 Feb 2023
 06:30:25 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dg2: Add HDMI pixel clock frequencies 267.30
 and 319.89 MHz
Thread-Index: AQHZR0DHyHgl4FVP1k+wZKb4F1AHGK7cEeNg
Date: Thu, 23 Feb 2023 06:30:25 +0000
Message-ID: <DM4PR11MB63601AE85E8ACE5DBD2B1570F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230223043619.3941382-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230223043619.3941382-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB5136:EE_
x-ms-office365-filtering-correlation-id: 7ec59cf9-578b-48c5-1d54-08db156772f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FbtOoNYqbGLECFNL0nMFoP+Z3bDBLbURQ5OIOAiYVYC6fvjH+40ttif+ZDmrWpoyGi5A1IlHf9y8p+gsdKMKAN3Au7epGMCdnmQsJfHM306ygPIB33NLPGTycqFGsAYnXEueu5Ars7Xmv13BApOXJaTSWqirdCHfuVVBkpZBmRzA4v5eEDBVuEIvvLupETPAwbI/d3ZY7r5dkK7gwV5hhDCmaaw44OmMl4KdVbsVGeyxXNcjZlqzdXyDH+X66oWOrKDF8t/EpGvZavepzwmnT5h0PhXqesxTsNoiIH81u/3rsr4IcJ/RDImnfjG41NuyCgZPAkR0uSTrPaOT1fjHxoKXYlGKqG9Bmqb6mB3zKyso0a2WAAH+NBJ4nVu96vbfdNW9DmQUEShKsfPODHLWnMVAlp0s1NxhzGL4D490vYjgPpW8pWtf+fsA9dyVGiWSb+n0Xl5nm5evdPh2UnE9uFuRh+BCZhlRSMrlPcT0MLzKvD4h9At5jIpHtmTPhp38boEJY0/GM98ah1F7koxlVP7PxZyg1GU7fGxYoHgUws6TbkgoDrYkH4LOppZMWP7q8NEwJJbKD+sCwjbec2Ky/d87KVia4iOvP0obYrVzM8i3do4A8xTYr+/3YrHT/dxhyGBWVOpyFVV48VssCqYwKQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(346002)(136003)(396003)(376002)(451199018)(83380400001)(55016003)(33656002)(86362001)(38070700005)(76116006)(966005)(71200400001)(478600001)(26005)(53546011)(9686003)(2906002)(6506007)(186003)(52536014)(7696005)(107886003)(66946007)(66476007)(41300700001)(110136005)(5660300002)(66556008)(64756008)(8676002)(316002)(4326008)(8936002)(54906003)(66446008)(82960400001)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?93ej6dTDVBx665/lXNZztX1cK4en14KusC9AHKz8dG7m3/HnAgbMAtcnqzPb?=
 =?us-ascii?Q?p1lpUYRgzMOg6knz0sbyZwsU22Fcmg0pyfei/H8PpW6YtTGlb7MRaDJN+TOs?=
 =?us-ascii?Q?yldK4V7LfIyL0f1ff7XxkzSsEVb6wX0WuE51DJwo+isfr20BtaQZvfHzT0QR?=
 =?us-ascii?Q?uEiq+hI4cmvajOoQc4Kqr2dNPh6lK9xh2u62h55xsPPvJDNTVtr9429b3fz9?=
 =?us-ascii?Q?/vkEJHcXnL4HMOSpQ1ddjiDoYSEZ1TLpI/mO2cnueAirPrfjddmYG+V3fLi2?=
 =?us-ascii?Q?YSYi+8NtjfRbpqhDTEb3SBRpJH0VmYi+NPluDUqQnmwCzI8xcO6nzelrRKVb?=
 =?us-ascii?Q?TvWvBFXfDdqeIdNshsklEBT3ppnT229CpAb/KArIngQmBzHp+Fy/gFkekpuI?=
 =?us-ascii?Q?8ckRkmrAnfz7lLujQiYaclB1/XtWWqJwWh2yhfYDVZNBtdTtQM2589PoATRW?=
 =?us-ascii?Q?a89HsXM5MIP3+rhm5zdXXy4C7JXqIwQ0CCL+gaOYythjO/9rirKpGcx8G5J9?=
 =?us-ascii?Q?4yP2HK8HDoybtei/vgsvNw8FDK/m7l5812kwGm5qsLBBkhRYWxPgBCAnrlSb?=
 =?us-ascii?Q?N7BG0kJ2+JGnbNVNQXHakL72rOBlSjQIpA3ozYR1Ja8Zoipd4Nx6x5ffQYix?=
 =?us-ascii?Q?NL00LPDLTOXLyb2F3y3oTdMfldz2uFuUNeVg0MrirIpuirGfxnzeWu0v1Sn+?=
 =?us-ascii?Q?iTJhLNMAr82mzP51EkvMeY5cf+ydbK6BckTq4US9fdmZqrMbYUHOTHANmpS4?=
 =?us-ascii?Q?xfgvaryTDAyMno4h4D5lzWdCqplm0jU0R26hOEr/tbL049t8uaKT/9G0lNcw?=
 =?us-ascii?Q?GTgSDtDSXY3IB5uPLNMnLkKUkMRNFtqLe5a9XJB553J55f4XYImiNEsaUT+a?=
 =?us-ascii?Q?wg0n7I1aGyYotXi02QgUlJarktIwCrHnuqngwW0UV+v+pA6kyEBHYFlu6sJU?=
 =?us-ascii?Q?13z0AcaqmOeT8pP8gbYrGoBP4dFoSxM/mcwu1KhiSlrGqxFclCLaBI/sPafE?=
 =?us-ascii?Q?5cGac99zTLZLaMFWLlaMqZxsOSwiFbl2hFOlpVp+PxMX+xbB/FgexBywex/D?=
 =?us-ascii?Q?o8BWJdxhvgy7YgkxYGLiN17HQGUoAtihm+MRNCJv79enulVQ4f9EvaiqEZ0j?=
 =?us-ascii?Q?IkItr7jGohOPvmKdLfc7OSBIdHjfuwhJCZxaCBhCularx6eOrZvpV46neaUJ?=
 =?us-ascii?Q?ix5RWti5gUrwTiNoho1hekVsd7yPJBiy9KnprCCYk4QVVBs4iOxCwsG+ll2z?=
 =?us-ascii?Q?3ZCE94q8vzhzw5+q8qgXSx/OwnD9Ue2PXZDq5Ko4No8T2z7C4I9FAkfXcGoW?=
 =?us-ascii?Q?nfKL7S9mYGlMw3gYdO+fPU5+pxfBzBi0GLhPhokYyzQ3jI3+OQKlLgQFUZW8?=
 =?us-ascii?Q?XFuuVkjhHsEmk4aLOj96aRvZplDAB+ZRP4ySzaaA9xFhCaSIBi+OWx3wizum?=
 =?us-ascii?Q?HJ2gmSMCm58N3o8PwJTpOK9yCHHHVpk9Z4+RZHnuYurfjY7eucy0Q3BVNhsf?=
 =?us-ascii?Q?4PwnEcNE4LNgvd0k2kKQ8z9or4lTxNRuUJYR7w/vlwezT8O8lhbQ8bvemYkD?=
 =?us-ascii?Q?tyrawnX3NG3lWh7SD9g9dDYuIQFtzOr0hgNPoKBh?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ec59cf9-578b-48c5-1d54-08db156772f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 06:30:25.7110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2JL5LjSXKlzG3RW3bfXDSpswIYLPTIeIlZrJDn01AfIoDRSAysfhNnwZGQvuwK+whnYz2HIlGcHm/exuHj5ntQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5136
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add HDMI pixel clock
 frequencies 267.30 and 319.89 MHz
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, February 23, 2023 10:06 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Sharma, Swati2 <swati2.sharma@intel.com>
> Subject: [PATCH] drm/i915/dg2: Add HDMI pixel clock frequencies 267.30 an=
d 319.89
> MHz
>=20
> Add snps phy table values for HDMI pixel clocks 267.30 MHz and
> 319.89 MHz. Values are based on the Bspec algorithm for PLL programming f=
or
> HDMI.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8008
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index c65c771f5c46..1cfb94b5cedb 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -1419,6 +1419,36 @@ static const struct intel_mpllb_state dg2_hdmi_262=
750 =3D
> {
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),  };
>=20
> +static const struct intel_mpllb_state dg2_hdmi_267300 =3D {
> +	.clock =3D 267300,
> +	.ref_control =3D
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 74) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 30146) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 36699),
> +	.mpllb_sscen =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1), };
> +
>  static const struct intel_mpllb_state dg2_hdmi_268500 =3D {
>  	.clock =3D 268500,
>  	.ref_control =3D
> @@ -1509,6 +1539,36 @@ static const struct intel_mpllb_state dg2_hdmi_241=
500 =3D
> {
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),  };
>=20
> +static const struct intel_mpllb_state dg2_hdmi_319890 =3D {
> +	.clock =3D 319890,
> +	.ref_control =3D
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 2),
> +	.mpllb_div2 =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 94) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 64094) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 13631),
> +	.mpllb_sscen =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1), };
> +
>  static const struct intel_mpllb_state dg2_hdmi_497750 =3D {
>  	.clock =3D 497750,
>  	.ref_control =3D
> @@ -1696,8 +1756,10 @@ static const struct intel_mpllb_state * const
> dg2_hdmi_tables[] =3D {
>  	&dg2_hdmi_209800,
>  	&dg2_hdmi_241500,
>  	&dg2_hdmi_262750,
> +	&dg2_hdmi_267300,
>  	&dg2_hdmi_268500,
>  	&dg2_hdmi_296703,
> +	&dg2_hdmi_319890,
>  	&dg2_hdmi_497750,
>  	&dg2_hdmi_592000,
>  	&dg2_hdmi_593407,
> --
> 2.25.1

