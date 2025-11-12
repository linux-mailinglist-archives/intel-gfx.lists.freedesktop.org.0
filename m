Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEC8C507F4
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 05:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AEC710E18D;
	Wed, 12 Nov 2025 04:19:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FGfsou47";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6406F10E18D;
 Wed, 12 Nov 2025 04:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762921178; x=1794457178;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LmTHsn3mXv/ysvTi3hJH7BKTk3INMwpM5pLgdSRMvmo=;
 b=FGfsou47DizSP2iCnYbMppquohFjgmfaWxsoiuVQ4KAPAQe2PxwOjgqb
 vHXAO1dRaKXpXTXt/+U5LZIBZSUuDRotS8Q0ikfTA+JE9O67Trp9GRJj8
 3H30mrIMf8nngB8R3+PYsigAT/GqwkVLEw0e/LWXVzilrBBrU+DRIziWc
 5YsQL0UtQ5trgkgQgslYEuQgpjRWvWrUquWg3TWStgT+IZXyMX3/gRS/V
 jT+4cVUvGiXQKYv+A7i1agZGXMZDMJEKyDtSw4DAhujr/DYBCgr6tMCx3
 lZV6nu5jMVHhYxl5vkS227H7s2A0w28i9+tyKnRCbG/4ywhEYU2/tFCcy Q==;
X-CSE-ConnectionGUID: boVaLD7GRwKux2g8AMCgzg==
X-CSE-MsgGUID: yMYLk2ktTwKI2wgsrM9GyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="52537179"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="52537179"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:19:37 -0800
X-CSE-ConnectionGUID: /ideQbipT7GPWR7bPCUUWA==
X-CSE-MsgGUID: emDDwbFGREWvJT4fFHfdrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="188379842"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:19:38 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:19:37 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 20:19:37 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.26) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:19:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EvgL21tVVrZ3Q63KRvbNCisaJzec+Mtb5D/KhfzvXvtL0qUo0mJOBC8D082cKutzR16hwnCIW2XvRaoLMLvbB/ziOsskVManqlBZ/k9EAJRdrYgbAuyoacWvxgAcv9S3VsodlCPBTK1DFAMgqBJxXVvZIn8c+ik8zKx7kN7qfueBgGrk7CrrlMOkEguqhOtRdTjV6u9vcbaaBtzZ9i0Qx6EOWEIAtjZ0sTfaF+f+aUvFPLKbPphEMWYkkv0ujdIboKH7PSvdP+UV50afRpj8oL2dXlhnXb4lYLgw1WwHnG8YzYe7RH6bzzp/wabxlcZ4OOnusG5Ud6FVxm/U1fPFaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YuFrH4BZQiiopqrG16rSLXh+prNbPs9qQGPycDZhg6U=;
 b=d34aLroLMX9DPEKLUtvThCq/1bd6NJC6toJUCD+fXaq7/uhTmJH/19e561xsUM4bQv8UrPZkmDqvtcaCT8X8cpEH3yPEXLdUu7loURifv3gTn2+YY3Y0CGzJsq07gzeWBGS4l2hYNrICviZ0m982cruUu6tTbqM7713JwtN1zwpRzVvoicHjAeNln7WjqNUBgv1yBIliY0wWVPzpKevJjT0UZVrDZwsxXXGssOYWy6Lxdg6SlLDUXKXk1nJ8I+AIQNCWoKNKK5Le8cQAsja44PvFrjys/27HtlgXqRHSZYHXhmFD68xccZya8zt7nlI5VozsdE+oIg4CySHh1ddhEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB8051.namprd11.prod.outlook.com
 (2603:10b6:8:121::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 04:19:33 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 04:19:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 16/32] drm/i915/display: PLL information for MTL+
Thread-Topic: [CI 16/32] drm/i915/display: PLL information for MTL+
Thread-Index: AQHcSllUbOc59jYT7UOygs91c/cky7TughMA
Date: Wed, 12 Nov 2025 04:19:33 +0000
Message-ID: <DM3PPF208195D8D990D7222AD3D0AF13E68E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-17-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-17-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB8051:EE_
x-ms-office365-filtering-correlation-id: c70416a8-7a32-47c6-c40a-08de21a2ae98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?VpE04/KC7mijUaKYnSlsG3Xc6D5EybYC9xsvT7dcLm0vCyaBPETac1lIoUKe?=
 =?us-ascii?Q?wtDVMTocBzVNVZ6uUazgjnC2saqo0Hih7BIUUqYmFY9mASexcIXhK3IYSbyr?=
 =?us-ascii?Q?MucNLI2yPZMZmJxXddryLqPPeZHQF/K5yuC0dVAEdFVpvHpJf+TfFKWokLn+?=
 =?us-ascii?Q?YP2+QYUNIbVm8qkZE2OQyqC/erL7ojVaOWddwveJNWaymNKTaW1wqA0Vhy9w?=
 =?us-ascii?Q?f4dQdM/aqKKoBfjFNK7pjfJsDSZnZU3lIjxBnCg3rg+o43fkQePLpeVl5pEt?=
 =?us-ascii?Q?WG4P35CRevyXgDRuXqDkjOngFyuekNsZ5JbAE5znS3J8tZtlLtng3kQJh8ZA?=
 =?us-ascii?Q?qkF+sqngGdsadI5CIbjTD2SmIZoM1d2FnKzmCJVvJj9Qh7YwCNfY16gC1QtH?=
 =?us-ascii?Q?4i6GQAsLQXtt/atXQaXZhIWcqq/LvVOCDlLKl7m5vjykksGIoLRkByTT0p4x?=
 =?us-ascii?Q?ZcI+rx5G5iodwJqbIXh2FUx24/pz0gOGw7atcZg4fjcrw8PWhltPfMtHdMEl?=
 =?us-ascii?Q?9Y8tMs/g+iW80pizN799zgNiAh5H6OM+JiBzi3xPmWSeCkB+GuK4URvdj2mU?=
 =?us-ascii?Q?M+XTvPvseyFFBFTJ/k4OK8su2mF7sx9yoKlmFJ6koRbwcktshC6vCSSXWvLe?=
 =?us-ascii?Q?pPCVBXAmJLiJPv0jeqPUJZgzmgmRz4Ovkw18+q5s+lAGXX3J8/h9Z3QxW5PJ?=
 =?us-ascii?Q?YP5FLyRt6ECfrwW+/N04jkWbsDD2/o1N8MlTV+r2eUI3azPTzi7LakY8xbrk?=
 =?us-ascii?Q?RMLjYXUi7TH2vcZDd3V8mtIZzOvGVPu42d4ekjxZvYo3xnVOM/wjwEDSbEqX?=
 =?us-ascii?Q?Nwx0IUpXOtv5DgIQFM/iHLcRTXzxzCodGVUeLfsB1/08JNPDY8H4AKfnS40O?=
 =?us-ascii?Q?DBd2Jy5eCxsNe0Mq1xiEtPqCWUY29i7JuhJA05sS2a9VG5Ha2NC4NorOUd5U?=
 =?us-ascii?Q?+QTzoBMBVfDWeFBWO610cyIjY3Y8mYcTRNIFe6tlFqWddLuPw9WSa9pnYh4A?=
 =?us-ascii?Q?+ram1I43Tr5aBgESExAHNEobjQ9GaNF+Ajf9D4MycPxM0axqwneYDQaByzUd?=
 =?us-ascii?Q?hAyWRrO5PEK1VEJsv/vG705MUZmvGh8gtl+yur+7QmBiSvueBGifZg7dmz7h?=
 =?us-ascii?Q?hlU0OeuAJQx1XbvLxnIuxDSefIoOncD0ojS1T0btyxTG+wHz5A5ZlgarbUQO?=
 =?us-ascii?Q?hBdmj5HschLynYXaH/hhukmwUx7haYN8v27t3B2FqkEbqNbhglog9O0WPWZ/?=
 =?us-ascii?Q?k8o2B2ZkdKlsB4xXEpfLsE9jiqP4ZX5y6I6nnjCRvLImP3Atew5ZK5Fzlvqp?=
 =?us-ascii?Q?Uk0TBaR4l8/20P+q2wG6ENs/V3lkEuqHOiB5g7PwGFDRx3h+hSMxWO9mMDu0?=
 =?us-ascii?Q?6LM8vjnsGlNXEZxu6J6JyMGJ2Bk5WkcxdlYWKVbr50yXgBNNiUwK7E5gRF+m?=
 =?us-ascii?Q?P5hSlvv/jEqm0IA/kr6MfQEX6fEOpUITx7FuRH68+Rw1BP3c1JtZSYwYwBOY?=
 =?us-ascii?Q?kITF1HoQexnUhvDvA3yMtYAf/dvNP4QQQLye?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pqjHpFJgfsW3gQ54ojUIJQ9ggmTvYleaxhVWPTlKfZ6C0Np/1WaU5mV/XK+H?=
 =?us-ascii?Q?0ZDOzYtE3+qg3O5qvUi6RkDcbFuuI7HMiP0zZgGzK62PwQNipxepFlE3azaN?=
 =?us-ascii?Q?ZeMavkLNRqrYsgW90pSUAeFEqF3K1lqC5u/rSo0oKpE9KDzXmWFCX81LEpQN?=
 =?us-ascii?Q?y6zlyYZWzsBGXD1gLO0ycZfavzH5c2bjnsBZdThSR5FJJtInuVKA7XolUZt1?=
 =?us-ascii?Q?JrVzN5xzAkuggHodKaBPLDvYanVEbQJ/tNBc5JzLpuHqztJynHZq4Gj/oocK?=
 =?us-ascii?Q?Afk3opRtEBPpxZ1fb7Pq1i4S+5hROELWLvRc2cr3BCMZq7CBHAmgHN990aUI?=
 =?us-ascii?Q?yjSRlxIqD88kgsr5EITtgQV5+111rEQ+43kZ7MeGzKhn+6qhY99bZ3blX6jC?=
 =?us-ascii?Q?DekE9MLt5gOhnum1x4iNU+MRJRwOjHZzI3gQ5bTjZXzVnxYS8Avepo/piHY4?=
 =?us-ascii?Q?TtwWua2GHcYIGjYcboDljmwoVibiG7oLyeRt7UMP37YoUFs3/FSSXXmSuLDZ?=
 =?us-ascii?Q?oYAShR2jnOAqTAGXVpnZ5mCniGGk07oZUSJSdqn8S+HT232YAXmi9xsFsYCm?=
 =?us-ascii?Q?5DOTH1H3z06FACUvhtkuw9iu/1+uxYGnKU+v/Us4zx8ti83XYE6u/I2Lgd0/?=
 =?us-ascii?Q?ezwVxfYr0aUdzU05PLkMIZ2Ufmfp1I48UqvTU3xuNQaXiP04Yh6PL7FhjYIC?=
 =?us-ascii?Q?fjPqX4XTy02hL1XcpNy9fDNLzLs0KDe0bAqDL0VtK/HasS+zsz91N6jA+TeE?=
 =?us-ascii?Q?5/hHUKAYnsKV4Hn2W0ZDoGlQQe2lJcLy/fs2LpKiSUQ7PWdfjcuap/J5g1QM?=
 =?us-ascii?Q?p5HEzpL8gKkav0AEdlAPLtHaCi7qFS9lJ49qMA/J9b69XA0yNNyCJAj75REe?=
 =?us-ascii?Q?xUkG3jR2hbbxZOiB17Ro/uQqfh2hE3r8YE7CmdvtUMA2SMJdGUiNil9nGThi?=
 =?us-ascii?Q?XlxiaPKJRbwsAWkBLpg8QPAJ6UFg5XM769/04u+HDMbqYjLsbN++v5LileWV?=
 =?us-ascii?Q?WfcQNRuzKUyk2J7r5SS5RLxrNzxxAAdyUJ0DRnKswuAlpZQ/dT4P9/ElOhbI?=
 =?us-ascii?Q?NCnFupwttfpa9cZPzMkVHJuQlezolHPYrZWdHv1PC6TtX539j7G19aTSveUj?=
 =?us-ascii?Q?9fYNAiK8teKh8uIFG9N87SuVexZ0bpDYyzynXRgzOfAtEhZgMYX90/0M0Moj?=
 =?us-ascii?Q?hHyg+czTVTuBs1dYzScgvU+XX27Um9dCzR3hGUZQhBr4HgXyXiwNLnFpH6i4?=
 =?us-ascii?Q?i5fBZwExRg8whMl8kBexeufE2wgG/vwtMLO6sl0Fx4N9QjdxDEWS5OeBzVwJ?=
 =?us-ascii?Q?Wh5OCntfhoLAKc2UrSHwqqfncvdBdncgEf4VxQ8h+AQFeuNl2ByHeMA95Dxw?=
 =?us-ascii?Q?30QGObIaJ87iNXBUpVgXYKtPXA4mCTCSfpoYtpGWUu04bMqeTldYYF+nfZFM?=
 =?us-ascii?Q?UuIqWWtwpViYa6rVVWLXEMfwJvVwL+q6Hc2tQvloQNMGXC6LapF/SLD5jKHH?=
 =?us-ascii?Q?8UiqPP+6bYn5IIZ8YgFnU8C89Oc/QaCfZffHzO8OR9t1G4YWCdsSYQY+T4Ol?=
 =?us-ascii?Q?mY3fRslDtyyfAvGlL5N28qEPwnLhFI5a/+VSwxn5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c70416a8-7a32-47c6-c40a-08de21a2ae98
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 04:19:33.0553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ErMsXwJN0FPJGAFNuReGYLiLOmLDMql+xuLapvUXaEWssMRQDuBHQpLNMuYrT0oCaOUojWIRoygELs2FOc8j4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8051
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

> Subject: [CI 16/32] drm/i915/display: PLL information for MTL+
>=20
> To add MTL+ platforms as part of PLL framework, let's start by adding PLL
> information and functions.

Keep the language of commit message imperative.
Also a Bspec link stating the available PLL's for MTL+

Regards,
Suraj Kandpal

>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 303f03b420ae..a9d9b7113f12 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4306,6 +4306,25 @@ static const struct intel_dpll_mgr adlp_pll_mgr =
=3D {
>  	.compare_hw_state =3D icl_compare_hw_state,  };
>=20
> +static const struct intel_dpll_funcs mtl_pll_funcs =3D { };
> +
> +static const struct dpll_info mtl_plls[] =3D {
> +	{ .name =3D "DPLL 0", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_DP=
LL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_DP=
LL1, },
> +	/* TODO: Add TBT PLL */
> +	{ .name =3D "TC PLL 1", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL1,
> },
> +	{ .name =3D "TC PLL 2", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL2,
> },
> +	{ .name =3D "TC PLL 3", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL3,
> },
> +	{ .name =3D "TC PLL 4", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL4,
> },
> +	{}
> +};
> +
> +__maybe_unused
> +static const struct intel_dpll_mgr mtl_pll_mgr =3D {
> +	.dpll_info =3D mtl_plls,
> +};
> +
>  /**
>   * intel_dpll_init - Initialize DPLLs
>   * @display: intel_display device
> --
> 2.34.1

