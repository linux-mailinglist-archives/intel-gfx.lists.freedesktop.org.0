Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3819939CD3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 10:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B620B10E49D;
	Tue, 23 Jul 2024 08:35:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g3hKU1JO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F7510E4A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 08:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721723706; x=1753259706;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bNud1gTO6qzc6BwDMEhrwFdJ9H60ZYbMqghf4793P5I=;
 b=g3hKU1JO36ZOa14/c8s/gladtkQoZDiFBqA1DvqLssOJwRxMQzZ8KIOn
 QkTrjLLy5qBE+sJos7/gcm2Z6Q0+hWR15ez1IzpUOImScXZHLlLfWQmrv
 uoYW8nIhGKwJNq5cbiKpjq9r4s6oRASclTpglqu7nwecls/z+YnStOSWz
 3OzPeAITRbEcdK/vBLw/jpD06ge+2XrJfOVp9ZPGkLABow8+FblKPmTAI
 11Tq7xrohwgQnz49dym18BSmUntfd2Qn5J7Yw81CMHNtoa2lWbtQrcWZK
 jV955uOlPts3Y+5fiuGOuP9BTtDls3CZD/rbbXyAZlwxE9p5QS4bAvM4K w==;
X-CSE-ConnectionGUID: 0XWVJDh5T4SRhg2jeAjkFw==
X-CSE-MsgGUID: EQrJoarcSK6EVr5z1pc+/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23136263"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="23136263"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 01:35:06 -0700
X-CSE-ConnectionGUID: RzZv/dJ9QtGriFYx8C7oTA==
X-CSE-MsgGUID: uE9lxZQYRR6tnJVCD391pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52776129"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 01:35:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:35:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 01:35:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 01:35:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K0jIJ1sYPlmWH0x6IfwwerZzzqZSrOiwXuXsDFty3FPJKVGs9oIQwPkqxNDZ88iRmLb7Pqne6t8T8UN1PR8Owi4nPqy17zO4bA/yCgjrAw4W+NvfAC5tG8wdPaZknZTNdp3SDyNsiG/XPftVKojDDcrlR9S5X8gSQGYQRDHa6xTPd0kZBMhA6T6BMz03oBMt9sb3r8izWkD6lm1VfmgmMSArvH6eSO+4TGB5gghgPGsHzuYGQfLTC4j2mbe0liiHiYAzHak1FkLB7YsPpWV/plKyEeXkiTCcCRrQ9qJL3q6KsYVXExdMIvOEu+dmUrtJ0aD44dN/P2zIIemZhyQN3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eRu33FVQzVn7Xo6d2/pjP1qe5HYtKJmGLqZUJlrf9tc=;
 b=DZ2JO959Y3G1A62UwKvbEtqtn/2KLMLmz1L1IGiP50LTcNXx8anUygVZOc7jM09QCUSCMd6AyjzSFD5OAlWxlug5QwiKyyeg+4blKkGamnCLfWLsXq2/M6DBgMbWJbFQbHynyhaT0VBKR2V5oFfGqyBrDLQVvn/LuFF5lnqZnyJr59z8uShYT+ZGS28sado+lAQ0zSJIcoKpe88vJF9ak9eXkkvOeyH+dRar/Vp73hXArNEX1jaYcdgU10tgxjqkDANxuxHORQ7D76GPyIeYbY/DH2wVVnRWaYOEKph2sXPwqYygbdrh17/aP+BgkHOLUOcSpF1To6cWVOhTPZILpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB7411.namprd11.prod.outlook.com (2603:10b6:8:150::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Tue, 23 Jul
 2024 08:34:59 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 08:34:58 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 05/14] drm/i915/dp: Initialize the link parameters during
 HW readout
Thread-Topic: [PATCH 05/14] drm/i915/dp: Initialize the link parameters during
 HW readout
Thread-Index: AQHa3FgHeu4Y5TCCmU+GBSr7ws8+QbID/Qdw
Date: Tue, 23 Jul 2024 08:34:58 +0000
Message-ID: <SN7PR11MB675009A3083E40276CD2BC3DE3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-6-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB7411:EE_
x-ms-office365-filtering-correlation-id: 97a11198-46b0-42f0-909e-08dcaaf25611
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?5QMMRc7Wt42YuBniysc34YSs27LC5IHx5eaQbmDgapSLRvvC6NVE5rRX1yYS?=
 =?us-ascii?Q?cfioM+5rvQaARURDVxYloERUYmI2gc+2iwaG/rdy9/DUUP1jMLQil3WnyiE/?=
 =?us-ascii?Q?ZxJTebMCzzKMXgf4h/K4+E6g20R+3cPv7vZG7yd9YmtrowBdW+pNDJWfAojE?=
 =?us-ascii?Q?5rG+1cvhm/ywRrjDweHRbgZD36cjAaFD8nVseY9YTLpm6kgr7TeW4+7CX6aj?=
 =?us-ascii?Q?1KDLCEl1XYW/Pw9fQ1i0N/Ungd9GIWqS474cYmqa+L4e2tN2DTNU6/I/wOvI?=
 =?us-ascii?Q?x2qjgO1Pctiu/HqPSqaEWKLi7RmmYkuXgVtt0OzmoyECYjlElxUEaCus5Qyt?=
 =?us-ascii?Q?bJvPblvlGhycV2XLY3aPD+x0QLzxLG4UxjTrw64W+O5qU83YeA9QPFElZNKf?=
 =?us-ascii?Q?m9esF/6JvR1WKkVQxOc2e9Oc+VOEomfrHjguHwfR/0R9PUOY2OoDScs8MdO3?=
 =?us-ascii?Q?ZuXMYHxKz2zuyZgakwWQhAG4+rt+jwoBRU4CjpBMAf5vLczcFP1k8KZMdIui?=
 =?us-ascii?Q?tiVwlxCM5MlFrAPqYElo+3SUllhuO9lrrUL9WYo6YPv7LZn3pdp6v/hjkS5m?=
 =?us-ascii?Q?9/UjFnkX3CQmusxnqj4Md6IbbtwbcTsWwRh4UA++VrfSheMjqtPk1KxeVqVj?=
 =?us-ascii?Q?W/Y0Bdm1pZPxzlHVKDA8+2464N+1Gudxc7wt6eftrvJFlMBTQ9W/7CDifWy1?=
 =?us-ascii?Q?Ngv9iw/WS14PWlFD+Q785ym4NvztB875ruFbw4EvVNcoEpfwUpHJ4tbykriy?=
 =?us-ascii?Q?LSr/bxW7tMJPwj9dpppCKynuRL0zh0LwHlb+6QpKgV1Q6kWFVGWMuRpde3hz?=
 =?us-ascii?Q?y0jFrDazHWj7kLigpI5C8SNA2e+xq2qOBArWWNTE8hxk7kRsKwO+PlwmZaf1?=
 =?us-ascii?Q?m2qUm/YCjgMzq58s7Hz1ZWRIuKX6B3gyW0azVU045w1YRigZbPlSav7B6Vay?=
 =?us-ascii?Q?LyjgBh0/E8hfXKRq9JdHaHjGK9wuKJfDQDZlGEY3z3NQFJzjuei0Ik05DIuC?=
 =?us-ascii?Q?WJ3Gcu6lR4Scd3ZFBTnHn3lVVkpTim4I/9b4nlR3JYhoTWVYW9y3qEuFhF+m?=
 =?us-ascii?Q?vlJebADp9ZeYkPG8LxBlgsauZ5YacH7qaOFWQaVQfC/9PKzO2Aqu/otCexkW?=
 =?us-ascii?Q?dv4axRZUERI4bQHAvEwGRbppzVtNq8xXDpuQVcaxpHbNSrMIPp6tAtO+rS+L?=
 =?us-ascii?Q?W9odiGOR4oOD6bPY4SK4R8BiwBHvae0OrtE3ttEgiESV2rwjIu2BrbiVxh27?=
 =?us-ascii?Q?jjWMycoGw57vhtsnsOT5EOxA7RYvom0QYP9TmcMgsQz3RHOzohJ/np4HTpAL?=
 =?us-ascii?Q?KEgnQj4TvUuHew3OEHOaeyNm6c+Csb/XslVO4wdc3r1Ra5BIsTqiC1em5LL6?=
 =?us-ascii?Q?z3UM2Q7DECIDgqErpVfPxZ+PAK5tR0dQp8mOeK6QssSyhBzGMg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QzpP463FIvZ9rjw6ZcIueAu7WDOArSlg72fwwlIwzWchf2vgdV1JkgG4pm/I?=
 =?us-ascii?Q?gUyCkJS65vI8RqgYyxiZLIXMCcDWYMJJDLFhbVEePIV9lwD+EVvhM3sqIQvV?=
 =?us-ascii?Q?byeLSxnJGSqqbYtKieuQZiZDS/AHAYxDr3AjV4pbbwZXVl39kBGxy8myw4dx?=
 =?us-ascii?Q?L6kkGusUVdyquGERbrQD8D/xdec9nwO+pqTsyySDbO3mzczTXvP0z904tnq+?=
 =?us-ascii?Q?P5BQLKLghj0QbVl7qJeLaGPc1byevyGfhcPnbHV4RzzP+7Rde7PpjVSwDNn0?=
 =?us-ascii?Q?dvbdjZVOAc0Klq/PnETxaFKpGfiHH06rsmmvH7V+YSlhgV0skeVSaUEsGP39?=
 =?us-ascii?Q?dqsBmQR/SPLlYP2QDv2p6S4aC/HF2E5M8zAlMlHmgoRuhGQ0xEtM4T2JzvF/?=
 =?us-ascii?Q?X3JvMhS5Y6w0HOY3A6DIwmnbtKHE6kgrho1nXv7M5OUP+JXVbNtKE6VA2Aev?=
 =?us-ascii?Q?iGQ4hC0pnHtzTbtUniPdyJSg6Ybv63KY1W2jaynDGk9TgfhtzVG4Ymd5NQ0N?=
 =?us-ascii?Q?5myCPLv5LCs5yl9e3lhn1CoIqBxcVfqSqdmxo4/GHhXutVTJaSXQP/WyrbPH?=
 =?us-ascii?Q?/emQ6WRd48oI/JgYerEKB6u7zno+o2MdKluLTHGhQCKOk79fqRpMz8A67ytF?=
 =?us-ascii?Q?mu1QMVp9Ee4kGdkPqnexo8K33YW5K1XDIreO3OrEdNoTfAfw9JU80pSntcyE?=
 =?us-ascii?Q?kduXhz/a4cpFodd2n+2Wgw6+X2bBbP6bA6DRf93vqWz17pEW1C3MwyKIP++o?=
 =?us-ascii?Q?/XlpOP0gV1H5Vtw4ay3C8hiW8c7j+pGSvSSNPJ8IoBONoBDmvCFznK0oqukq?=
 =?us-ascii?Q?S9mbn8jZmqL1E0YKuu9/4Sq1l1o4T0Ip06sa85PEMpXVmldb2YmgPB0RPbFl?=
 =?us-ascii?Q?cKQDt4D4ErXzbxN1pfmcJoUX5dcVhDePTzdbQ8ER6mJ+LXWY/GaC9Sd7Sqye?=
 =?us-ascii?Q?hPruP3GCtQmkFymydtbe5dVS+tbDEhgjvDYNZvWctRhmJ4YOC9s9K/y/3PAq?=
 =?us-ascii?Q?kRYHLb4H+ibEaboynVB8mDeLCJYfQFkjLZWZbEQARVSqcmy6NyoyyEUeHSB+?=
 =?us-ascii?Q?cWJKHNlPgzcWcEZu5vCgpycwFj+xlulOlG7LMmwnZico4zywmc1yb4lsELtN?=
 =?us-ascii?Q?jqbNerlfYGIZ6uPxaOcuAHbNsr3aFU+ms1MaOOFkqgSASOb+JrYH4t1sEsjA?=
 =?us-ascii?Q?7lp24RwE7H4bStEpdtH/KYiZQoi87LD9O5eNtwAnTkleKbbJdEDfAjRCOap1?=
 =?us-ascii?Q?qKh5dxeZ1K+XKWzLH4OZTfm6ZjMKwvxHffYuvgiDjdv5LqRoGDq1trDy4/fL?=
 =?us-ascii?Q?xNEOKK1rAnKL/PdMwyIF1DFa4kKmiInwIuKb8ADu/2sR6mwrJ/YbWdk6XQ0O?=
 =?us-ascii?Q?3YalcunHVBstbm8KScbupj8EqsumV5ZCLuXg81e8hq0sOlQfIxDBTCCPpn51?=
 =?us-ascii?Q?KUSBkC4GUE6gil5eMU2V2B/PGOdWqzOtPCAngECG1pL561kZtXqZ1BwHPw9+?=
 =?us-ascii?Q?aSLgG+rMh4CDhZuYgP7lxm+OL4krAkbfYmtBFU/10rHR26cEML0s/dWZdLlC?=
 =?us-ascii?Q?5Xas5GD7ja4xSUVSHSn700i0otQE34tq1RR3+Wti?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97a11198-46b0-42f0-909e-08dcaaf25611
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 08:34:58.2304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n137yXhfbldKqplPVQY27eXTlHcpx0SBHK7T4+mI6li6TJPy+gWcM84NxCkrOHzCQle5iLaWZEoo94RiQZYj1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7411
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Monday, July 22, 2024 10:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 05/14] drm/i915/dp: Initialize the link parameters during
> HW readout
>=20
> Initialize the DP link parameters during HW readout. These need to be up-
> to-date at least for the MST topology probing, which depends on the link
> rate and lane count programmed in DPCD. A follow-up patch will program
> the DPCD values to reflect the maximum link parameters before the first
> MST topology probing, but should do so only if the link is disabled
> (link_trained=3D=3Dfalse).
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1e43e32e05199..421e970b3c180 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3352,8 +3352,11 @@ void intel_dp_sync_state(struct intel_encoder
> *encoder,
>=20
>  	intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
>=20
> -	if (crtc_state)
> +	if (crtc_state) {
>  		intel_dp_reset_link_params(intel_dp);
> +		intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
> crtc_state->lane_count);
> +		intel_dp->link_trained =3D true;

Why are we setting link_trained as true here.

Regards,
Suraj Kandpal
> +	}
>  }
>=20
>  bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
> --
> 2.44.2

