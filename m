Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 874E6C4B934
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 06:57:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2264D10E4E1;
	Tue, 11 Nov 2025 05:56:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZK0AlYq1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167AE10E4E1;
 Tue, 11 Nov 2025 05:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762840618; x=1794376618;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=89JBujxt4swnAnrlU8YmHDTASCBxOVOgEAoTEdzYIz0=;
 b=ZK0AlYq1xNGjkWWsOzeJ0j3mx8wwCXZPvYSvudxGuSElWRLh8GPMlaD6
 8XVl7vtDFpwT9F1MCBZ0Aakv6ot74A96stC9BSBtG3O3dUQ5wYEBlHsJ+
 kG1Z52+MhK9YsBo1m64PijxIkC5tQlZde3NWuazfU3MY2QcpXh4/gYWAk
 ayrbzKMCr9GlHmoxd3EAiZ7j/GHANEtgqx0Tp323XIIIY3gJf8QSEwvDp
 hVlPNpsbnBzn5oIb7Jvv7pBo3rYwuZPmO6i1y0Uw9AgCzndHQSkFjf+lV
 HTM4YPt8vWvHffzGElnZxWv7SAxYgN/0PHZLCDr04XB7/MflQeXmQdwEg A==;
X-CSE-ConnectionGUID: ORtVB51jT4iFMS0nc8Lmhg==
X-CSE-MsgGUID: E8CYtWjITn6XdRkaOhbLVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75511652"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="75511652"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:56:58 -0800
X-CSE-ConnectionGUID: e1vprlDmRh6YhlTAdeBK6A==
X-CSE-MsgGUID: lGCcNcc4T960gSjfQBqUKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="192991464"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:56:58 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:56:57 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 21:56:57 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:56:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aQ8saXeSAHWtZQJvs4get2FESVDtnaCnx0KkAyhgGcEEIdEjdf+U2FQY7ugmFN7gMC18nkn0+gxBO2Kb+kQTGAgX1dDllirE4FkP8JZBmYp0DFWs5WFMPtBVnysi3lvtUH32MXF8/yiErVRSrbgIyru2e+9E5wEskSUaADEBA1Nn4N5TqPB1goy3Ms1TEmYGoByqJtoVHg89zM089cxH1PyrnPnsy/vAUVpwRc4D9gUe/ObH+9Xo8F2yP+15Xnu4cpFLFTriZhVQSLGeCtDJykW1WP6RmSwxzyfAA1mqTcbE+sbbdGfWym937lblHKVl91axfbobil368SmdjQsWPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hZx6yHrVM3GrJASa+5phgF5IZ1aGcEbDXDhrA+RgzSU=;
 b=wk1ZufAAubl6MpsJTT0FVZ+dhAnYncDs8kxf7mC8c3fLwRgQGBuI2zbk879AD9lk7opJ2op7BXX/FjmpThOH5aniAtTiXJZF8/6avuJkfDBJI5Q/NU1MKtWom9Q6nDBQV3ZZUzal6nYYRYDQWaQc3sJFuYqRDxyIQcdZZQzLvzRiOn676FsQz6KjySgNcUYqdVlgoGg9aPisVpUMcxf2QNpt5sozSpP6FyicAVN8iw+zzUazRig2UrNnWEsxHeir9d8/K79/RHDBd8bAEl+9vpd7RXgoTXMVVb/rS8DqOkoJpUsJhsgQJS1DEAipcxSJC2G6J8/a6YkYBgJy+JZ60Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by BY1PR11MB8078.namprd11.prod.outlook.com (2603:10b6:a03:52a::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 05:56:55 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 05:56:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 09/32] drm/i915/display: Sanitize C10 PHY PLL SSC register
 setup
Thread-Topic: [CI 09/32] drm/i915/display: Sanitize C10 PHY PLL SSC register
 setup
Thread-Index: AQHcSlUjQtohNXhc2EiMD9axyTNJ1bTtCy0A
Date: Tue, 11 Nov 2025 05:56:54 +0000
Message-ID: <IA3PR11MB8937DDC610CA22B97D4CB87EE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-10-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-10-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|BY1PR11MB8078:EE_
x-ms-office365-filtering-correlation-id: c39b1a80-cf53-44bd-9a4a-08de20e71dde
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?+N1DjfDJfh4LQWfl6Ddulb0dWkZJatKipP/DsaWgAQkcpi6BmuEWJQMLsg1o?=
 =?us-ascii?Q?ISjBTnXpy04N+zXbgy0TMYNv0LYaRRkclttNUW3pA5Zskuq6RLI5l9q6YHLT?=
 =?us-ascii?Q?FpBqP+VGoDPPq/aIt7AE6Z4agJioXl/qaMqn+axlCv2tWLkESX/4MxuMfmo4?=
 =?us-ascii?Q?5Er9CUvP2amTlzo5dAlTF6Qu+hd8M7Y/bOzINGHSTn40s5LjNPFZiYTpcInT?=
 =?us-ascii?Q?6W2LzxSUc7YgnKlusxIHamWcy/vEu0KAlF/u65KUUP4USHWDwvIWFMK9y8Ln?=
 =?us-ascii?Q?cIQGhJgi7LHSJwjmYnvsPJsmKJNLPqI+Gc/UwiXpYGmDZDno0welXzpW+eEK?=
 =?us-ascii?Q?WGQHAkbYPVpSvP2mSpgvjK9BkoD1dqQolCb7VPvBspYtnxUCvYHgzSV6Wgxh?=
 =?us-ascii?Q?0Gs7zfpJQn+wzN8kDnqt56AyJROH9XxNpNAKfpHL8V+R7gdaosnefU/IyoAx?=
 =?us-ascii?Q?yTdaeAWhdf7/XsT84AAKAczGgn2nxEQm/JsrF/AlWctiqNxsOpRAUa6Lncmb?=
 =?us-ascii?Q?GU/Nj2ORWXqWKdspWuupWR835RTpFZLItuw1r6GvDouAm00g4NuiyXwQ3905?=
 =?us-ascii?Q?UChuUzJ3O0hBJz97YCgCm51FXBvbUq0tUNlL7BGZ9gZwzF9FVZHm707aLg6u?=
 =?us-ascii?Q?Gwk0eEbZle6IDSOQ4xAPja+qtaEs1+3gQ6rwKsPkO6H1bmFZKfCCjAVE5wE+?=
 =?us-ascii?Q?QK1T4J+RSZK24S3qO6okCAl/k20aQz5CyB0lXbtppXvB4XR7KUdr4RYLJxpG?=
 =?us-ascii?Q?eUsOZ8H2JZLZBy8GKYqWngRpWXaAsFL0hXS6FRCfL27k6pPLO2oi6CptWFIZ?=
 =?us-ascii?Q?SXhQACIf3Vx5BKW6qgAk3oWEi3B0rJ2lBV149Y8TzIi34zpz/nu8df4tjYqn?=
 =?us-ascii?Q?eVNigGDdzKbplOwk8lQeub+SKb5HKmxscQ4AesUyyB4J3NKhOr5mNidKD9pn?=
 =?us-ascii?Q?KgrAhI1+ufGW5CKwDakj7Pb0HX2bn5Pj+pi0cOBzKYVFs9hzswYdBWpNquhd?=
 =?us-ascii?Q?gKw6u/bOdaup5rOf89JZ9DZZJM/H2ZzvVRany/5iaFwJB8bvbqcAVEV8wzaq?=
 =?us-ascii?Q?dOSfKbY6KNJRIFpo3M/Yp3nQFTC4/y4XS+uIDTFLNc832M8ehtPK9eNOgFnt?=
 =?us-ascii?Q?4V6KJsyeG73SQjyokz4MZogQH3RW5D+9T4afoPhQJ31SIc/aOOypcHYrkF4d?=
 =?us-ascii?Q?y9oMzyYYJOXRGUBWizdS0tGoCXD9MfUNWvjeD88/aesIcHT1AIJ7O5Us21vs?=
 =?us-ascii?Q?7D4LSE4ogu9mWW0v+QG9QRAq8QW17NEDrE+BBccn23y/AnfewtXSTmVj5W20?=
 =?us-ascii?Q?PCHDJcgYazF/y0Dk6wtJwAkkRsHyd1GFClNtCtjstkbH3wMWNOCF6jLy78rh?=
 =?us-ascii?Q?2hdTCiEXmID77dmkyLnFTqxtNOdgiuXxu/6sAp9xkQobsbPyCddmx3hNayIG?=
 =?us-ascii?Q?KJEwW7uk0TfvJmjR3s2vneRhiaZ4I26dctEh9EObW59ClZN3no9eIQ0QccSt?=
 =?us-ascii?Q?AJ3kz8iXXofRfeLon/W4BcQcjbTrwoUPVtcH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qO/W0spsiMO6XHuO8DipihHTAKfdU0XnweoMvAMKbQEC+l67ngVPEp0xC7tt?=
 =?us-ascii?Q?hsH7f/V9EJL3zdNNy/7rkCCSwbEC4U9dDkn7GE6wYBfMBpOj949hnnRH2Rj7?=
 =?us-ascii?Q?psdmGEUFB62nUnR3Zb8dgkeCKtC2Phc7wak4aubazB2XttlzFA7I1RuGxWZH?=
 =?us-ascii?Q?AK/82//yjhtwBQcrwwOv6uxaq8mB9cQjFcQTl2+7QgnUtTbt/sMZG6HkyMNH?=
 =?us-ascii?Q?1GcYNgllgUYf4Zp41gWdPGUG9UgI0ZRebqp3dVc+Hi+w5sIfm/dCCUobPi1M?=
 =?us-ascii?Q?AYnQF3e+nxj5FtRVuSLgvyPQobGorSTxub80G5vtQ58eBW4p8uVqku0rZmCR?=
 =?us-ascii?Q?X7SYaNhYA0EbzPNI11AXjhTx0bMoD0MZJSevp/hRpazw3s78JEjwjGdRS61/?=
 =?us-ascii?Q?o6EYxSSmDprw8lt93iYjuxeznA0f69LnJqbLr5ZFEtDDpNiAipCzfRB+OeRI?=
 =?us-ascii?Q?p6Aae4nHJKLihPAl0AgbiJSmUcCeiXP3pSdA505/+Pn2YcdJlOqkF7cPme0+?=
 =?us-ascii?Q?bFThfGU+Q2EHmWEEYrC5hNaTWqrfLrmJNs2U4ApzgASjZypQ5kMiAOc/Ejdx?=
 =?us-ascii?Q?VeTlRaYRY5E0RAAZQgZo+F6c1z+4GborPt4HOBOWug84f+LkEhgDcwhvpr+Y?=
 =?us-ascii?Q?V1XF2AATzTsr0K0GmxucRC9k2KPM5tkCVf7yQBPh7CeBI2Nl1XsAhq/RQOy1?=
 =?us-ascii?Q?F8nUWHvb01pOxK2wTPXzsYS0kiW12Qc46X1KERXkucgefNqLJ1GjIWDdQD9M?=
 =?us-ascii?Q?8vWGnD/+UJE13AhVM4XRp2UQppmoi9oZcj656uGf4JC0wvpjVts5a3ErE0C1?=
 =?us-ascii?Q?OJ8NQw+sEFKAR2Lu+XOVNsBXmFlex7n/LsZxDQ2a2FSwSStxRg/YMgufQiYM?=
 =?us-ascii?Q?G2+vbqU8o5Vm9/NSZcYE2oKDoayJNATxDUePCLkifKiyI2NNU7Om2wFiiVTc?=
 =?us-ascii?Q?BKUyDuMP6dNS6vTDk+UCoMYKbGgtO8tzjbaJbCE/gNPD4nMoAd4d3wKLgf/Q?=
 =?us-ascii?Q?9MK2KldqNT9e0FyvbevxUDdRn2qSd6Vgs2oYlxdfLCQ+g8gTEeLwpyo2/8av?=
 =?us-ascii?Q?TvzdDa4uoiWStSUHOhtA8H61Wd26CxScVNqdMBPobqJuB6jABBcymzEcDchf?=
 =?us-ascii?Q?zggFg3U3zRYmWBvP74zXWzXCSUMUGPlxPFEngmJ64uD/uUfd+H9pSHJAPxK0?=
 =?us-ascii?Q?Zb4cliUD3/xcXC5Os8FsjkHUljMapkvZ2k9KocKLHAOpMDWQlxjNQSeA67TY?=
 =?us-ascii?Q?QD5X1TX7TMxw+hAmQaB75r50qE4B9QmYeqtRkhN9AP4U7J5tPhv9uGFaCk+7?=
 =?us-ascii?Q?2hcGd/XloT+3dURuw1/VC5FnekmYKlZFLWgXZMik92Fot07mEXkN+c7xTjlJ?=
 =?us-ascii?Q?rly0hTVdNGMQYByltrNpDlzvBdwsu7ZYnvjL4M+CvBb7e3hTjehB4YphnXU6?=
 =?us-ascii?Q?YasP1qimhnsOp9AA/oQaRr/lB6XO67ghewRed+QFx0LTJjZgwuaijlHAz5tq?=
 =?us-ascii?Q?JhI0OmDaE6LMyL2+591UEqOVt9IHFFYEF9d4phzTJ/IQ6labiuvyWCuO2eSu?=
 =?us-ascii?Q?YzmpSaGl8yrHZEVbPBdoPm1CAJCdL88R3XC9WYC+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c39b1a80-cf53-44bd-9a4a-08de20e71dde
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 05:56:54.3551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dnkd8rBRsOdWaCVgKmN2inBiJ32WGYPDKU3rC4Tmp0w2KMq1OhsqP7yPRpQ0peHTHXCRJUmkFUPZJpGbu/2NSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8078
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

> Subject: [CI 09/32] drm/i915/display: Sanitize C10 PHY PLL SSC register s=
etup
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> Define the C10 PLL SSC register range via macros, so the HW/SW state of t=
hese
> register can be verified by a follow-up change, reusing these macros.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index cc5aa38c3364..b394b0397d62 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2064,6 +2064,9 @@ static void intel_cx0pll_update_ssc(struct
> intel_encoder *encoder,
>  	}
>  }
>=20
> +#define C10_PLL_SSC_REG_START_IDX	4
> +#define C10_PLL_SSC_REG_COUNT		5
> +
>  static void intel_c10pll_update_pll(struct intel_encoder *encoder,
>  				    struct intel_cx0pll_state *pll_state)  { @@ -
> 2073,8 +2076,11 @@ static void intel_c10pll_update_pll(struct intel_encod=
er
> *encoder,
>  	if (pll_state->ssc_enabled)
>  		return;
>=20
> -	drm_WARN_ON(display->drm, ARRAY_SIZE(pll_state->c10.pll) < 9);
> -	for (i =3D 4; i < 9; i++)
> +	drm_WARN_ON(display->drm, ARRAY_SIZE(pll_state->c10.pll) <
> +				  C10_PLL_SSC_REG_START_IDX +
> C10_PLL_SSC_REG_COUNT);
> +	for (i =3D C10_PLL_SSC_REG_START_IDX;
> +	     i < C10_PLL_SSC_REG_START_IDX + C10_PLL_SSC_REG_COUNT;
> +	     i++)
>  		pll_state->c10.pll[i] =3D 0;
>  }
>=20
> --
> 2.34.1

