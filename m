Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706FDC4B876
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 06:21:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30A9B10E4D6;
	Tue, 11 Nov 2025 05:21:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZSck9IW+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7241410E0C4;
 Tue, 11 Nov 2025 05:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762838468; x=1794374468;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Tfw5UZf/yRQgmnqUxAWu/5T30GeM0YcxP2c9RnvZiCo=;
 b=ZSck9IW+hM8CPSE1YsLUqwQ8Q16LHLiq6zUD/tv0xaybMYboFcbh11n7
 rQ47hjdo0xYlkJtVSrucHiEzdnPgBZspHSDgQR+bBgZPUOTGAa1wMkdIG
 rjnOkqBOdt8zMfVYX6OzOzQRj3CR2V6yCxuALei68RybHDRXElf/2d35p
 SHDXtxTy+P9VUPQvO7xABD6U/ZggIgsIXF97GrshkjIAjDtrSogFmJWTr
 v3Z/yCI0uCUJtXCuZG+v3sp+9U2i6ii0RVdYCeXsnnW1P8y4QgWClRR1o
 ANzsaPs2YRp+PMIZHlgPqfk/AVvl3mqdpUHGJWPqxdukiWJXBCd+Fcmg2 w==;
X-CSE-ConnectionGUID: YNyicSkGS0WzbD67Q0h6QA==
X-CSE-MsgGUID: f/G7ugKzS42FRxzHCZicnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82523107"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="82523107"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:21:07 -0800
X-CSE-ConnectionGUID: FUWjCfT+RoaGofJA+dh0qg==
X-CSE-MsgGUID: Gq2CJnnET1e71/EGi/GTCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188631542"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:21:06 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:21:06 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 21:21:06 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:21:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YjGLiGpflfiiTzhQUjKD5UxNZpmRg1Eu74rEQgvO8YRKRqJCL+/Xm0ZbiTPS2qARQrqNqAfe3ZDF03nIdpJZ1m3ckGl1irOoNYTAWa6VMQ0jMcl/GtQ6MrtLwmlbpHpf6Wk6YB9P8JgXOFMWvvlWRBgUCrvFsQOsKpmrS42WNuxjQUbgsoPD+ON0TycY6GgBWR9pkTo1foIAtJtzx991dnaIF7hKwIPo3TcCX8YwiR9DVebZSb3dZSIM8+ExzxWp6IFvCriyXW2aHfqIXNA48GGWQGRsa5O50doocRcA8XHIfGKKUD2gB9zDIstk5E6k9461Qkp5NHtn/dS6fBfzoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cB3HgAEkhCdC6648tlLVJkHeYS/wVUgoxuU7UtlXmyY=;
 b=CF0IRPOIeh5sMzFi0+i+EmWM3zyykSQOaC9hRfr8f6g9rjJbNIyrM5gI6lWZHiJJUysqZh9xRbxphAqbg/G4+bYksUtEnFBhYZbCAJYOA0S49kOcvA5oUpKiC3f6BPfKKFUJ4w5E9xvhEJ1A6EiBUV+Ho/rJbsgTiqMyUjUiYS5+K3vM/5pbo7YkxYSt5Smfkg58Wek6b9Ldr4ViUwguwnVmW3nlRPsA64bAmB5lcdK2pT8+DfsGZJR0bfG8ZH+Vh9U2ltPc/rqMSxdqkv6ccJ9eSwv6Yg8CeQVH3tI0bFXMxv4WyOOg9SYUQl5gHqKrXWoJ1qu1zVSIDw3LFqrvGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by DS0PR11MB7311.namprd11.prod.outlook.com (2603:10b6:8:11e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 05:21:04 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 05:21:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 01/32] drm/i915/display: Rename TBT functions to be ICL
 specific
Thread-Topic: [CI 01/32] drm/i915/display: Rename TBT functions to be ICL
 specific
Thread-Index: AQHcSlUgNL3zx5Sc6kaLW9xoi3YiW7TtASgA
Date: Tue, 11 Nov 2025 05:21:03 +0000
Message-ID: <IA3PR11MB89377C7D0905737BFEFF19D9E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-2-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-2-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|DS0PR11MB7311:EE_
x-ms-office365-filtering-correlation-id: 48f951f0-06ce-4897-741e-08de20e21c27
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?8wcWPRfljiJYa1MkmtBwLVA2nh115X2H5Hm0tZMP0FMEXo8p73HVP3x/58oS?=
 =?us-ascii?Q?HS7uZcT6c4KA2SIRh5JeceY8cOHj2v3ZVgL+ESTAJ60yMhfEr5xPy0mQu40i?=
 =?us-ascii?Q?+JgF68CaEhq+ETGi4owOcjAwHKrWbI84a3997CimuXz3alSXY/DYM5AHHyzq?=
 =?us-ascii?Q?65XEFStz1JViroujkq/5sO49rn0nOZA7/yfUdljMkxBQZdfYWdNzUYe6CO9b?=
 =?us-ascii?Q?vdADoiHhLCGoWLm5xBCq22uKizAF0k7vl9NPovUPMosqLCKbT1s8AshJQeLW?=
 =?us-ascii?Q?RgT9dEFFepc4gYI/3XEj781DGE903GzE3idZ4lHXGD9vXitU9C3jdB4JCSaw?=
 =?us-ascii?Q?iaFeMMmaF/+gf/3kXIs1nwPsiFPPW7CovMKIvJvz7zhnUKaY1I7fTymauhzP?=
 =?us-ascii?Q?O+0EyOQXbNxNtdPHG7sEFcpwdSH0PuUGkUG1XSMP1DCcfRhzs/UHE0UCzYdF?=
 =?us-ascii?Q?xSQGvtgShCy7vXFSffwvkjZLvxCYJTDkZu2rjdGkr93Z25cZ7g6yOkhy9oMO?=
 =?us-ascii?Q?IdbxOC9OVuRc7FgFqxya4fgf44ANI+xc+4yjYQRgrOdPlLkQhasFTkZfgJmY?=
 =?us-ascii?Q?0CLHmzWgpqR/nL1XGfv5N8qn4ptydB8hhHDzSLinzMB8JebBhsgiCsD2FFAw?=
 =?us-ascii?Q?OS+ZMaGYb4gjlUGuMRBwfQeLZsL5FM2DepHZ+wlNSqw5jPC92UbzkgYi00hF?=
 =?us-ascii?Q?brrQas8LsdIDrfUJmerlOS+IOxB8jew5tmjOj4nDSjSMzHgxLag4/10RCpPA?=
 =?us-ascii?Q?J/sDzdTrcyetZcHkug93uQOWYUQ+2GcbVrdPKAHS+kvHVlvS1BtBKtTx6eUV?=
 =?us-ascii?Q?kaOZ4SYYXm4imVOr29ejMPef3UgTgHCcY9npF1T3HiaHU93bhshLZ1wlXWsq?=
 =?us-ascii?Q?ifE4YIsYcHQ+Ut5U2/ZJ0959C+wAf6kfL67zmdgQJXD5lkPwDJ6LvCtwk2fi?=
 =?us-ascii?Q?FbUseYHgBdsMU5h3amKx7MMHELS7M7I28tvVfLwtvKCdL/rqkrSpPuZFiyk+?=
 =?us-ascii?Q?XOeNWK141juq9Ishj3NGwL2NK/ckd7pmZ+TjNSsFfHAyCIXsehkmJVJhxQiC?=
 =?us-ascii?Q?3cSMy6JovIQuZkpMcNBpqjjznEU2anE2mWggnQ7+5lQKAD9LOEaKQhXDu4su?=
 =?us-ascii?Q?2g3Dyxy5AxIHftVgIFD7G/gPsHgpq2bw75HWF2b299ZYZkehBDnV8xHnfW2y?=
 =?us-ascii?Q?sIA5AgWju9O16F9UviG+raVktO/BlyKeXCw7ojJDI0/8FYnYkLBWsV7XuimX?=
 =?us-ascii?Q?yhfA3RRJDpdaip1rLq1XdbuNr5qio6og671LTbBxvzWOcunTyJ5eAMdsCpRz?=
 =?us-ascii?Q?DpRBSVV6aaQr0FRe1ChuS3yFwRQEU0VOfjKxHtcQmR18z4Ffy3iNoFlKhWPF?=
 =?us-ascii?Q?Ic6IgPJYNAM0gqnxA644f5kRVNna2b0X+Uqkz2Aj+NBaZbIXVMd8SlOtU7cZ?=
 =?us-ascii?Q?aPeGiIpu67imktXnuNg/eHQ6LlnK1DUXDh+4XoxSGpSDgPTVz+TfKA5IKfm1?=
 =?us-ascii?Q?NANWYmfnQiP+w0fgwLfme1AU2fAGUOcZnZBe?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QbJnK6SGsbidPC3+rUVTD8HL27fD+uw+hrB8xnW+0mF4CH8OWMI9ranVUYlp?=
 =?us-ascii?Q?NJ6jvGgjqmu7lTRHJpdZxmkkRV3m+zXwp1J9vkh9WNReuu4KhdFzUFheb/9q?=
 =?us-ascii?Q?sol7PgOLQ0iJX7v2aIh2WQ7LVlpAUwJv8s5NWcozvS+1LDtdk2oLQdZy2qUz?=
 =?us-ascii?Q?B5xtxOjEt9yfCnY42agkRmhhMJDNNWeuMD/NB8ybjRS9Ld78onz2DyivqLgy?=
 =?us-ascii?Q?rSEmsFe1crI2lPMbgDGJOmVZ+k+JmXtrYzpAkkxDolgZdZFl1QfXEEJ4/ImB?=
 =?us-ascii?Q?MldGnN/q2d0Rca5L9x5CBtDoi4n08o08WeAbYb1j4F+D8utlWxoEKuGuRKJ2?=
 =?us-ascii?Q?WtldNJUh1qy61sBEtjqo7qKhwd4DgHMfShgZF5hG2WiL1QhHHBlqMVsr3N5u?=
 =?us-ascii?Q?44RxKty1Bmf3vQj9PQ4rXmpLKOqNkZsTZ5Od2kHKz4hmlvrOsURMGrmyJ0s5?=
 =?us-ascii?Q?NUVyXs6gTmBzPepjUT+P6C7K4GsKy2dawqsX+h+9ggfzz0y4rqWjCXPghS3p?=
 =?us-ascii?Q?J8DBel5BlHMUpukstNypaDfgnO4ISte8eNloDNlJmSIwNbuNvgmOA2TujAEM?=
 =?us-ascii?Q?kuRLFkraLvxfwjAYUMrI0XkBUu3l0tlte6p+U7C3tJ0fhif1UylhgX2OxjUj?=
 =?us-ascii?Q?rl2fAdlQoOfkfqWOcY5BiAIPnwsQlszFomED9pbTnOY/Mzvk6SkqYMcDwDbP?=
 =?us-ascii?Q?A5EMwcScWaVH08uVJUoS915tuCnEjyVPazQ07K7CzrlG5htD3KLAHq9UCa6v?=
 =?us-ascii?Q?Zm2P5AxV0Ty8RUcj/L5t85us/vl1Fr3gl471yshEtvM5GfdfGjTTrlfaIfgW?=
 =?us-ascii?Q?6xAdl6xfQm9KPDZEp6UptEO/AshoJIf+CdIdKZNug4ujDfY7aBQnvk1rOJui?=
 =?us-ascii?Q?9guUOCLt8X2ibfJu9CegWjPVemVtJ3dXRvi7llInvJ14rEWpb/kcchnedrDr?=
 =?us-ascii?Q?yZNdaP/EUgvm5KyGWlNk3Xhv9/WlHyVYGFgcic3/orqfMA4uZUSxMQk5Gg1l?=
 =?us-ascii?Q?wHs95dWarR51V1/wvfb73f6c9oP0GG8qozUgWOdGdwklbCdvAoeR17bxMFcO?=
 =?us-ascii?Q?+4kqw6p9Oz0E+EB4TYNXf6IIC+6OM+cWW7eM6+DRxsukiwYld/UYXcobi9Da?=
 =?us-ascii?Q?WHGH0qmaxWkl3ZdVzrtkBAairKXVqGICYkFPfqrsdoqnDFRS0HTECNipiP9h?=
 =?us-ascii?Q?5lRjBOEZMzLVMqP288STLtsB1jZYPyNLa8Q+xBZdSaEklD6p8WTzjilrvjeW?=
 =?us-ascii?Q?NLus6bt+g0SG2yUL2/SXBuxh8BKI9QWactwroOgMq2xI9sAzOi6gfv4d5fTy?=
 =?us-ascii?Q?ZvznF774qkWKoc/joe1R+BDtcFcmCEZl0YyTjaWM9cGHJqymgFtL8hKvX6bl?=
 =?us-ascii?Q?r6qhQWELSJaxFzfSg/Q646BqHyOF7kFO1UQzfRibUamM3L6CJbU7CU3k5oNr?=
 =?us-ascii?Q?xR6Fk8rkxPQ1y5ai2UxUYOmYfoMntaMjNDCErLBh1FA2KT3qvieVmfmNBn4D?=
 =?us-ascii?Q?OXcSklUEqC0MhElRqpLmy6PmvFtMKbTrf5jSjmZA7EyWVdXCga0BOl4uFGHO?=
 =?us-ascii?Q?WNCvhMp3Y+ig+jeUCHwip+N2iTghPwgSV2V2Q1Sg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48f951f0-06ce-4897-741e-08de20e21c27
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 05:21:03.9898 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dHvfc8P5avcdWyVCyk89jiY9w8qmAM5BgacUwnv9g1EwVzM6IF61z9S+1MuMpzmIT1MtgT+lvNtGAsGKsT1ctA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7311
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

> Subject: [CI 01/32] drm/i915/display: Rename TBT functions to be ICL spec=
ific
>=20
> Rename pll functions to include ICL platform as these are used from ICL
> onwards.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 30 +++++++++----------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 8ea96cc524a1..303f03b420ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -3754,9 +3754,9 @@ static bool combo_pll_get_hw_state(struct
> intel_display *display,
>  	return icl_pll_get_hw_state(display, pll, dpll_hw_state, enable_reg);  =
}
>=20
> -static bool tbt_pll_get_hw_state(struct intel_display *display,
> -				 struct intel_dpll *pll,
> -				 struct intel_dpll_hw_state *dpll_hw_state)
> +static bool icl_tbt_pll_get_hw_state(struct intel_display *display,
> +				     struct intel_dpll *pll,
> +				     struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	return icl_pll_get_hw_state(display, pll, dpll_hw_state,
> TBT_PLL_ENABLE);  } @@ -3985,9 +3985,9 @@ static void
> combo_pll_enable(struct intel_display *display,
>  	/* DVFS post sequence would be here. See the comment above. */  }
>=20
> -static void tbt_pll_enable(struct intel_display *display,
> -			   struct intel_dpll *pll,
> -			   const struct intel_dpll_hw_state *dpll_hw_state)
> +static void icl_tbt_pll_enable(struct intel_display *display,
> +			       struct intel_dpll *pll,
> +			       const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct icl_dpll_hw_state *hw_state =3D &dpll_hw_state->icl;
>=20
> @@ -4070,8 +4070,8 @@ static void combo_pll_disable(struct intel_display
> *display,
>  	icl_pll_disable(display, pll, enable_reg);  }
>=20
> -static void tbt_pll_disable(struct intel_display *display,
> -			    struct intel_dpll *pll)
> +static void icl_tbt_pll_disable(struct intel_display *display,
> +				struct intel_dpll *pll)
>  {
>  	icl_pll_disable(display, pll, TBT_PLL_ENABLE);  } @@ -4143,10
> +4143,10 @@ static const struct intel_dpll_funcs combo_pll_funcs =3D {
>  	.get_freq =3D icl_ddi_combo_pll_get_freq,  };
>=20
> -static const struct intel_dpll_funcs tbt_pll_funcs =3D {
> -	.enable =3D tbt_pll_enable,
> -	.disable =3D tbt_pll_disable,
> -	.get_hw_state =3D tbt_pll_get_hw_state,
> +static const struct intel_dpll_funcs icl_tbt_pll_funcs =3D {
> +	.enable =3D icl_tbt_pll_enable,
> +	.disable =3D icl_tbt_pll_disable,
> +	.get_hw_state =3D icl_tbt_pll_get_hw_state,
>  	.get_freq =3D icl_ddi_tbt_pll_get_freq,
>  };
>=20
> @@ -4160,7 +4160,7 @@ static const struct intel_dpll_funcs mg_pll_funcs =
=3D {
> static const struct dpll_info icl_plls[] =3D {
>  	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL0, },
>  	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL1, },
> -	{ .name =3D "TBT PLL", .funcs =3D &tbt_pll_funcs, .id =3D
> DPLL_ID_ICL_TBTPLL,
> +	{ .name =3D "TBT PLL", .funcs =3D &icl_tbt_pll_funcs, .id =3D
> +DPLL_ID_ICL_TBTPLL,
>  	  .is_alt_port_dpll =3D true, },
>  	{ .name =3D "MG PLL 1", .funcs =3D &mg_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL1, },
>  	{ .name =3D "MG PLL 2", .funcs =3D &mg_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL2, }, @@ -4208,7 +4208,7 @@ static const struct
> intel_dpll_funcs dkl_pll_funcs =3D {  static const struct dpll_info tgl_p=
lls[] =3D {
>  	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL0, },
>  	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL1, },
> -	{ .name =3D "TBT PLL", .funcs =3D &tbt_pll_funcs, .id =3D
> DPLL_ID_ICL_TBTPLL,
> +	{ .name =3D "TBT PLL", .funcs =3D &icl_tbt_pll_funcs, .id =3D
> +DPLL_ID_ICL_TBTPLL,
>  	  .is_alt_port_dpll =3D true, },
>  	{ .name =3D "TC PLL 1", .funcs =3D &dkl_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL1, },
>  	{ .name =3D "TC PLL 2", .funcs =3D &dkl_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL2, }, @@ -4286,7 +4286,7 @@ static const struct
> intel_dpll_mgr adls_pll_mgr =3D {  static const struct dpll_info adlp_pll=
s[] =3D {
>  	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL0, },
>  	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL1, },
> -	{ .name =3D "TBT PLL", .funcs =3D &tbt_pll_funcs, .id =3D
> DPLL_ID_ICL_TBTPLL,
> +	{ .name =3D "TBT PLL", .funcs =3D &icl_tbt_pll_funcs, .id =3D
> +DPLL_ID_ICL_TBTPLL,
>  	  .is_alt_port_dpll =3D true, },
>  	{ .name =3D "TC PLL 1", .funcs =3D &dkl_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL1, },
>  	{ .name =3D "TC PLL 2", .funcs =3D &dkl_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL2, },
> --
> 2.34.1

