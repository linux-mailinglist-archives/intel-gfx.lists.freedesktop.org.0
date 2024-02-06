Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D27384C02B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 23:41:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA072112EF9;
	Tue,  6 Feb 2024 22:41:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D+H2BIh5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D53112EFA
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 22:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707259279; x=1738795279;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7s9Xugsw8FQXTLoPJ8W0a7lUVExYaS2nbbdCqHt0x1U=;
 b=D+H2BIh5ye8jQgXAo1Wzj/gnsaSHiRrQVPgcPs1wL15bOGoSFXGc/UAZ
 N00HioiPCa4/x/DYbXjTxNHXXY5TyILgajGFzJyF23xEYiJnDH+4aR2FJ
 RfCNMW8Czjus6hTyEXl50Ro3K1EoTO0J23vgDJ4lWYZ7uV9iRgCFwFoNA
 9hg2Ja+rhx5iN6iBC9OSVPfMUHE1E6LGUle16fFcinKq/LQOWEH/KcqNs
 97gdND4DaiZuxK5gFwD+rQgv256cTab5AAArzNgElWxm89T9i17NBWj8w
 XFO4lpSNCVemGnx/+r48Qu7rBAhl5kxWMgtzPI1RD3+/GCZYnQ+omoLzy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="1021759"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; 
   d="scan'208";a="1021759"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 14:41:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; 
   d="scan'208";a="1152511"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 14:41:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 14:41:15 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 14:41:14 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 14:41:14 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 14:41:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H4NqhiijmZFWS0DhIHjCpYng21YBYOYQOMF2A0SaRUF8byG+ObpButoWNWLtRFMXFkCfwBcyVsacVNipxO5OHj0ZzS6jKqizF4PoZuvYjdP8a4GweeLak2av02zLOCWHaHEfgoiZNNgwZ7cglRKSm5E4xs5L0lQtwnhNWBqc3BvUlKUTToUijgSf0J2VbOAkrTsHHRrqs6HW5gPsFEvLag4ZTQgF/NhGnf7KnoF6RNmv3g2qjjCllv+p0J7n5prAi44/zy1zGgDNhefDkWATVHwzPeT15OAmKdkEemLKjMlcmqx1xGr53iYGEBOqnIrSFS8Gy4KaQa/55pU4z4BIDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TkCgHh66YyxplzOUfrhYW89d2OqSX1BlhL0q1b2guGA=;
 b=aId8qRH66UBpGQsVn7G3vt3BF0OMSCBybJIF0UpwnxIDFkf2n57JSIzgCmkDM0AREEd8bLV40Ck3JYS4QyDEM9saHKqOUZpsmYmZK1Dv5roGYGl7MBsS9qZ370igz6FRKxcUm60yJeAyRi3YvWefFf8TOCqRId32yu+ienmGS1TfmwLgqDLZ1JHjogZfS1Rgd77Yp2KbkwGZ31dzUh/QpVUdfJXzM5dGWJYRvK3gwAT52xfcqcMs9n8wlbPdVL3cg83j5VbyO2gS7KqxgAZAp2cgyKs0g0D3kKKDcGjvrRZF110regZeRS+VfFhP/v8brarHRNudUrEM6rcYuaWsFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MN2PR11MB4584.namprd11.prod.outlook.com (2603:10b6:208:264::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 22:41:12 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::7b7c:b25e:c600:a7]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::7b7c:b25e:c600:a7%3]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 22:41:12 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
Thread-Topic: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
Thread-Index: AQHaWOtwo3eZ6Vfr9UOT7H0cVKdB3rD96VOA
Date: Tue, 6 Feb 2024 22:41:12 +0000
Message-ID: <408f570a3010b8fc7a9686c480628926ea796a88.camel@intel.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-2-arun.r.murthy@intel.com>
In-Reply-To: <20240206104759.2079133-2-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|MN2PR11MB4584:EE_
x-ms-office365-filtering-correlation-id: 74707980-955d-496c-656d-08dc2764b855
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1XCS27Smj/zAgvtE7ZKb5X4U+7Y9SB6RjEZsJDVmUCTc7uWvSNife2w+7nyKhWpP+Ji0seEEpmE6fxwsChEXADLLd4ZcWtc/qgelMw5GMkG27QTswp2+UiVvgeOoLv/4MftKuo36M3CBrqXhLU9S527VWAcp4EsU0oM/jFDLlsxBaSqpi7bXoCyUCVsxLLcKP/mL50fn9L5eOkzyOx1EXj6WeC5NN9gw98pZ0RURuUhsGXozme+0vLcZrWARO/9a+Bs3WxlrvtrankedMdoIN2LbbqUcsk2aSF/F6yH5yN2JxR/BfgobhIpxBp+0PzYk1ak9045Gk5yGCp6UFMhXmp3KZaICkBR2Jlf9Wwie1GfYP9j4CWRRhpWudai0tkA9gHfC2IAPE5VEP5pC/2Bb/Of6SvTvzyQhVx96vd4VTGmNEIh6Hsxt/wwf6o8F4YJL3as3XY4s+tOYL59uCZ4d/fmCtQNNBpbyuExnkm2eVVjeVCA9/sW6ewANcIPLLhY01qaPp0FA0yO+44+fpJZKzsJMi9JCd32wlitr+tokpPe1k2KpL2M/Mr9wSJXTIwFQnmwsosGX6qONXaqiQ2VeEs2eO24L5cWgtTzLdy3VE4FzGEDdu9EQnmcQiubvZfH8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(396003)(39860400002)(376002)(346002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(38100700002)(82960400001)(316002)(83380400001)(122000001)(86362001)(26005)(41300700001)(2616005)(6506007)(107886003)(8936002)(4326008)(6512007)(36756003)(8676002)(71200400001)(5660300002)(2906002)(478600001)(64756008)(6486002)(38070700009)(66476007)(54906003)(66946007)(66446008)(66556008)(76116006)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-15?Q?KVuPRhauy10DQRcqIpimlzJiNc4ENQlqKSJ2IDlXqDdvhvnCGoSnUWfjU?=
 =?iso-8859-15?Q?e2GcL3zJZ+d/PuN55sunXpSOIJOUANyu0nQFABf7Bk7BGXeQt7cfTm+nr?=
 =?iso-8859-15?Q?S3jBfbFcXWwx6ixPorNQwg45M5kR0fRuzMEOEYTZVp4oZsEt99tb7jZ2V?=
 =?iso-8859-15?Q?Dh0z1gkcEdH1ZXE+NaELJ05TlbRN1eFpby2o9NRW8QdwJy9GMFeyFhyzp?=
 =?iso-8859-15?Q?tLH1sxr2V/AuaC4BHhekb2E+Ie+r/lCiNDApsGgwmPhMRI1VZrt/XgFmV?=
 =?iso-8859-15?Q?MMR9mstDgU/6O3ezN/nF+BTHScBdU+KnMZtRepilUIXGgJN7vwaIfXG5h?=
 =?iso-8859-15?Q?6OEbAawQ2ybDIAMGX+t6iPJ1bKVtWCwJ8JPP3DaByAyzFGeu73tB1uC1h?=
 =?iso-8859-15?Q?aAtq4tCKxBKlZDQoyaeTT2/Ke0Puqp2tvwVF7ulu0uEamDs8G4PwX7/1w?=
 =?iso-8859-15?Q?Mxd0A8ZXJlxBFM7g/gIgZf0hejPsZyhL4vF9MkrHDV6QZNPC+r8pISfZL?=
 =?iso-8859-15?Q?HDAQ0AyeTJg+e2ajtXGjBxy0sQyWQanazENXCXpgEaFgO3qb1qDJLasFD?=
 =?iso-8859-15?Q?aaLCi5n3UPAlE13L7AtXnOlg8EdbVuA/xy/i9FcKHU7PRnvPmKchXGypx?=
 =?iso-8859-15?Q?CKZsGC+4G/LH+yES3cc6T8JLHrqeQr6LIRvPOEx/yNJMEiCvTH3NELFIc?=
 =?iso-8859-15?Q?GCafFtEIBZiNpNyyDOKHxpIy1Guu1aVFBLhIh9E1r7DwK4ce6Nc2jbIdH?=
 =?iso-8859-15?Q?SfeVcc9f5DTcYTKy2lBqM1eJANV7xf2CZT6BbLi/H1vjxphyd1G/NHRy6?=
 =?iso-8859-15?Q?j1B+1PDq6SePEDddwoe5CIYXFfqXnL7vSwsCRE+qviXmRVzu3NACGY+8C?=
 =?iso-8859-15?Q?BBj8nkdj5ttI+ZhFvxVsI9yvumjITHUExRF9iLcnfgt7Ml8Ik8Wv3maHD?=
 =?iso-8859-15?Q?Jr16FmLDsB+TNCM9KVGcBFsCqOK285IP2qIzOts+R+WTYlSCAHjW9hpCA?=
 =?iso-8859-15?Q?SOSoGicpW1Gb45+/pyHlAkxMC3WW/jHfgA/Yg88+GqRO22CKMVNK2NWiT?=
 =?iso-8859-15?Q?c3arxeShgCfvqL8/3ZbpI8nA7/xOGUDKeOyW8VamAeNYYK6Fh6hUxkJBa?=
 =?iso-8859-15?Q?phF03Av42/r5kyIXX1wgU+8W17+nH4xWq5VG7QWlM0aeMSSbt3f6DUQxN?=
 =?iso-8859-15?Q?Of1VYB+tEHzA1A1J2kqqD4HqKQN+cUAw1FAHgv/hYKzdEP5+e8OOz+Mtx?=
 =?iso-8859-15?Q?np4ZOM4m+4jV2Eqqd4BP6EuYZwjOoS3ZwsG55RG5iKa2wxinPwjji6bM6?=
 =?iso-8859-15?Q?yuYZQk9II9yVn+uWpL41JexeSQtwLK9HeyWVJoUvYPA10BGIJF7kNdkn6?=
 =?iso-8859-15?Q?cGzD/XFKbc0To464cfKFAiZvocrtXcqst0KE/ohwEoy9OpONTWRY+tDk7?=
 =?iso-8859-15?Q?nCjRpM1+nWXNAIglySCZV1FBvJRrskGtJbAxWQj/3bgYq5mmvZMlOY0dW?=
 =?iso-8859-15?Q?S+Ku4blZsG54TYszwdWpZDVKyYtAIeB3a4kMBfxxU0WWq3Z9uEyBOqbPN?=
 =?iso-8859-15?Q?+n24zWhfaieDn4nqikut7ufgIS+bdWkoc8A3GK1vVrAeqGNmwzd/ym5op?=
 =?iso-8859-15?Q?MY66AnjYXLdXR3iCHEy6VBrN0HQjLAln8bekxTEfJj1174TkfmYoqlsda?=
 =?iso-8859-15?Q?nY/4WSPlsJg1qLytILQ2y+9E0Q8+PSdvShsxNb/19bbRA8E=3D?=
Content-Type: text/plain; charset="iso-8859-15"
Content-ID: <97F19C748780934FBD0E75C9CE37CDE5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74707980-955d-496c-656d-08dc2764b855
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2024 22:41:12.2044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XLYbQT28llYYf7XxM1SFNYYJ5EcqY9tiOTPTDtM7Ph5O7hQ/CXn4ENq0GenN8it/g+x7qt6GAFXpd3Ny761HQRSFnbwW/ImJMohB0Woa1kk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4584
X-OriginatorOrg: intel.com
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

On Tue, 2024-02-06 at 16:17 +0530, Arun R Murthy wrote:
> Fallback mandates on DP link training failure. This patch just covers
> the DP2.0 fallback sequence.
>=20
> TODO: Need to implement the DP1.4 fallback.
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 92 ++++++++++++++++++++++-
> --
>  1 file changed, 82 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 10ec231acd98..82d354a6b0cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -104,6 +104,50 @@ static const u8 valid_dsc_bpp[] =3D {6, 8, 10, 12,
> 15};
>   */
>  static const u8 valid_dsc_slicecount[] =3D {1, 2, 4};
> =20
> +/* DL Link Rates */
> +#define UHBR20		2000000
> +#define UHBR13P5	1350000

Do we have 13.5G support?
Plz check Specs:55726 Note 6

Thanks
Khaled

> +#define UHBR10		1000000
> +#define HBR3		810000
> +#define HBR2		540000
> +#define HBR		270000
> +#define RBR		162000
> +
> +/* DP Lane Count */
> +#define LANE_COUNT_4	4
> +#define LANE_COUNT_2	2
> +#define LANE_COUNT_1	1
> +
> +/* DP2.0 fallback values */
> +struct dp_fallback {
> +	u32 link_rate;
> +	u8 lane_count;
> +};
> +
> +struct dp_fallback dp2dot0_fallback[] =3D {
> +	{UHBR20, LANE_COUNT_4},
> +	{UHBR13P5, LANE_COUNT_4},
> +	{UHBR20, LANE_COUNT_2},
> +	{UHBR10, LANE_COUNT_4},
> +	{UHBR13P5, LANE_COUNT_2},
> +	{HBR3, LANE_COUNT_4},
> +	{UHBR20, LANE_COUNT_1},
> +	{UHBR10, LANE_COUNT_2},
> +	{HBR2, LANE_COUNT_4},
> +	{UHBR13P5, LANE_COUNT_1},
> +	{HBR3, LANE_COUNT_2},
> +	{UHBR10, LANE_COUNT_1},
> +	{HBR2, LANE_COUNT_2},
> +	{HBR, LANE_COUNT_4},
> +	{HBR3, LANE_COUNT_1},
> +	{RBR, LANE_COUNT_4},
> +	{HBR2, LANE_COUNT_1},
> +	{HBR, LANE_COUNT_2},
> +	{RBR, LANE_COUNT_2},
> +	{HBR, LANE_COUNT_1},
> +	{RBR, LANE_COUNT_1},
> +};
> +
>  /**
>   * intel_dp_is_edp - is the given port attached to an eDP panel
> (either CPU or PCH)
>   * @intel_dp: DP struct
> @@ -299,6 +343,19 @@ static int intel_dp_common_len_rate_limit(const
> struct intel_dp *intel_dp,
>  				       intel_dp->num_common_rates,
> max_rate);
>  }
> =20
> +static bool intel_dp_link_rate_supported(struct intel_dp *intel_dp,
> u32 link_rate)
> +{
> +	u8 i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(intel_dp->common_rates); i++) {
> +		if (intel_dp->common_rates[i] =3D=3D link_rate)
> +			return true;
> +		else
> +			continue;
> +	}
> +	return false;
> +}
> +
>  static int intel_dp_common_rate(struct intel_dp *intel_dp, int
> index)
>  {
>  	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
> @@ -671,15 +728,6 @@ int
> intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	int index;
> =20
> -	/*
> -	 * TODO: Enable fallback on MST links once MST link compute can
> handle
> -	 * the fallback params.
> -	 */
> -	if (intel_dp->is_mst) {
> -		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> -		return -1;
> -	}
> -
>  	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
>  		drm_dbg_kms(&i915->drm,
>  			    "Retrying Link training for eDP with max
> parameters\n");
> @@ -687,6 +735,31 @@ int
> intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  		return 0;
>  	}
> =20
> +	/* DP fallback values */
> +	if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> DP_CAP_ANSI_128B132B) {
> +		for(index =3D 0; index < ARRAY_SIZE(dp2dot0_fallback);
> index++) {
> +			if (link_rate =3D=3D
> dp2dot0_fallback[index].link_rate &&
> +				lane_count =3D=3D
> dp2dot0_fallback[index].lane_count) {
> +				for(index +=3D 1; index <
> ARRAY_SIZE(dp2dot0_fallback); index++) {
> +					if
> (intel_dp_link_rate_supported(intel_dp,
> +							dp2dot0_fallbac
> k[index].link_rate)) {
> +						intel_dp_set_link_param
> s(intel_dp,
> +								      d
> p2dot0_fallback[index].link_rate,
> +								      d
> p2dot0_fallback[index].lane_count);
> +						drm_dbg_kms(&i915->drm,
> +							    "Retrying
> Link training with link rate %d and lane count %d\n",
> +							    dp2dot0_fal
> lback[index].link_rate,
> +							    dp2dot0_fal
> lback[index].lane_count);
> +						return 0;
> +					}
> +				}
> +			}
> +		}
> +		/* Report failure and fail link training */
> +		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> +		return -1;
> +	}
> +
>  	index =3D intel_dp_rate_index(intel_dp->common_rates,
>  				    intel_dp->num_common_rates,
>  				    link_rate);
> @@ -716,7 +789,6 @@ int
> intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  		drm_err(&i915->drm, "Link Training Unsuccessful\n");
>  		return -1;
>  	}
> -
>  	return 0;
>  }
> =20
