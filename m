Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BFDC4B907
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 06:45:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6306610E4DA;
	Tue, 11 Nov 2025 05:45:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SfPVkeVN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE0FA10E4DA;
 Tue, 11 Nov 2025 05:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762839949; x=1794375949;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AeLoNkjuuE1lYTa9gWUiYiHTodIxpE9tlK2DnFYsvDo=;
 b=SfPVkeVNlpq3h+yRwz4iAJfEcZKdbssUjppAP954SVUH+cPUwtPAIMsz
 49yKTwW3IT9Ooh0dO1VuCgLk1dzTtjxx6LyH5Sk5sDzLNit6EH+WkwhRX
 ydyIcHI9Dd2XQ5HlfC2DJIP5bCX1Tr0u1LgWVCgvJ6FjHLsSE+EzfPGvy
 Se+JFKfzq2cmFp1UjfqZkHP2lJZrGl9AO3DieRUxUmXxzJQLO1kGuOfXr
 ldjEyrZSTldKPo4ryr7lMMz2eBQXVbQ8mhQ8m+jTcHlzKD/0e5Sm2OPWq
 w01AlMDu3qQj+4ss5rMpjL+biipjr3LVVBvD3q69fwjpC1oLLXPabq03n g==;
X-CSE-ConnectionGUID: kyxzsG1gQwCI9LAwnOao+w==
X-CSE-MsgGUID: W3FzIIFPS8CN4PsJ4RSGAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68747568"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="68747568"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:45:48 -0800
X-CSE-ConnectionGUID: Lk+S5RXNSEG/aB18mKhCjQ==
X-CSE-MsgGUID: 9ui1YFdyQkON0azy/NQC7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188506961"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:45:48 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:45:47 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 21:45:47 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:45:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NTbFF6tJl3XADX/UCDAaey5fcjpTViNuDqEbUXgN/zZQFl5YUOA/SMAyFJS4B2prRYjmeLNlU8vtmi6klMO0XkmO8br8OIRRKRUafTC853zdc6ObdLqnj8M5+WEGsk3fERrV39Byfotot3iLjkXtS0q0wXbm4kzw7ygo6UE4qsanDOXrLg8lOpbbsTV96kbWLiAerjnn2TZl/D8FuNkoqCLOjMAKjuSfT7oBle5WMbS1+lHmmPTk7Nn8UsOXPY9C+S0/PkdqD2Rf8LsbFn09+4ia+Ea5dTvlWgbEWxnIkzDiFB2r6JdrvS/xJaMwgqjKTp3YJwIoHWat5ULjFWgduw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nkViRpF8Cha+Pb4VuhYxS50RpFcdL9pyWEEBzKnkiJg=;
 b=W/GuUEJcHluMebcTTuSVllytP4mMSS6sL7bsQbPotiVee0xZdB8KYBYYKIH5h89pSn7JP4X9R5Q9XmXl+G0rsXbXYQGXpsiLI4qChy3VFiMIy8KcNiHg2XRaQEjCr1Ve8aHop+py/Tzvj8yw+DE4msoHJhw7Tgs/K1lxsW3kjbYF3UkDgplpV1pigzFG7fC+oPwFKEhwwI32G61CigX8l6pB4ARGjyjD/SVyXRFr4LdI42epeD3jo7SWQQWArV2bm+rXMs/4+kQ+xvDmltYiYZOJVNQrmANWiho3e72ht1E5BwTAcgp8qUzsXKvFLSMSBn45USAI9tUXQl1kId5aHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SJ0PR11MB6672.namprd11.prod.outlook.com (2603:10b6:a03:44c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 05:45:45 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 05:45:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 06/32] drm/i915/display: Move definition of Cx0 PHY functions
 earlier
Thread-Topic: [CI 06/32] drm/i915/display: Move definition of Cx0 PHY
 functions earlier
Thread-Index: AQHcSlUjCn2BNK8G60e4nc3LiZ+lYbTtB/mg
Date: Tue, 11 Nov 2025 05:45:45 +0000
Message-ID: <IA3PR11MB8937429D437348D94F51E0AFE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-7-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-7-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SJ0PR11MB6672:EE_
x-ms-office365-filtering-correlation-id: 6b1bf79c-188c-45a1-b64c-08de20e58f17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?WdsS1aN7lhFdmzmkoEDNlPIBJSiTCJ7kBFc+tvs/prEKLqtTfBKC5rC73XwZ?=
 =?us-ascii?Q?XNM5GFyK0aANgX1UQEgnigJrqOmdCBUAny3/ArKJYuXmuSYdKLOa6iUdv4+X?=
 =?us-ascii?Q?v/rJDXT3HImRMgK1iJMkdLg+EJFMPAFxoTKJbbc7/+FSB1kIKw+hOgVE8yex?=
 =?us-ascii?Q?9/9aTIKQvjQrBv17YWAN6vdWk9HfDbAe1/bru5MIRuhxRldQrH49fB70qHNv?=
 =?us-ascii?Q?qB7gwJFT7tOZv2HY+K3aFEQhMyVzoBNiGF+U2H/PaYSPFCLv0kWR6T6xoNiu?=
 =?us-ascii?Q?h/uS7SCkiR00k/F8H8jsFg++wFDpdcsanUwGMyK4UUFOHVy1dHuQgAbTSqNg?=
 =?us-ascii?Q?FoBwASPg1Wdfj1kDpk5+3m8sT6pjUqpBGfssqT/mD9IVVOw73AaxB2ksa0HY?=
 =?us-ascii?Q?PZbOsrcnfUrVhZNZafHiQmTGknEMLvT4eEvL5pS1A1fKVwYMC9deoT19M4yp?=
 =?us-ascii?Q?kvRaS+Bzc3oh9VBVRVZ9Tp0EUSCzAaII8vK17SGF6QTrEhqhvOQqX692tZlV?=
 =?us-ascii?Q?NMBq55TTVneekeB6kUNuuQ6X67rqsOzfO33keYQYc9Vx+S8gbLipxSUwpcFx?=
 =?us-ascii?Q?71f22fuuQVt4KgbH0lmHj7Wsqgh8X5r64AL1/ZOulPs1z66afKKPJfnL1BNW?=
 =?us-ascii?Q?cRV3i/u1wfh/ODRFi5T7I5RZu48SySPn9GJ4F4jqPU0iZSC4qcL81sqp/OWt?=
 =?us-ascii?Q?oPbztm50l8ylI60OfyWEnV2vIVmDqezCdl/l7EVlYSGWnH8z1IEk/weNf6Aq?=
 =?us-ascii?Q?OM0WehVJ+wc3jcMEELSklqMH7vLiwbszTeNAtL9FqQvfrozVex5vmBD7ketD?=
 =?us-ascii?Q?WdhvEQesMdt+fKowoCk+zj0x2yo74nQjG8Gc59SVJeGyBMUL5o+unOe+x4m/?=
 =?us-ascii?Q?CQ6Lb5M2JejHY4O16IPcz+OgcWLfLYjXgRWVtGNH4VOULarwcPHz3zkLtsYt?=
 =?us-ascii?Q?ETXayPCbNhqXjd4TnbVnmZ+6urgu6aBVJnZMfp6xThk2tb8aJ1Y0ifeIbHoG?=
 =?us-ascii?Q?xDvmrXAt3UwuWJ9utAsx27i9VuWj1vhItC5taBEeIaJ4WWCXyS1aeaZj6Bq4?=
 =?us-ascii?Q?QdLpNlWTiv70GYGk7SSaXfnxE8dV7pVdEvxYHQgfbmrqLict+RXVUfESM9fT?=
 =?us-ascii?Q?fMbrGRFcttoMtg0GNDS2i/pM0+Vx6DgpZ/LGzsJ+LATO4XT8ocQFThdSeXc4?=
 =?us-ascii?Q?h/sJppQ6D0SNP17QdUJk3xpyAYxwMJfwbfEsIBhF8f9ysHYcsVr5j2wm5R+p?=
 =?us-ascii?Q?ybEGT6D1Q2F5mm0X9j/EQplB/5IkQ1tn3z6G63Ms8IGGyPGL9FFoBfrcVBW+?=
 =?us-ascii?Q?sR/H6e6ltg7A/V1HeuZWrS2zWTetFYctRe6Cq5iZB4cF+/kybX9r4ZtaSZpo?=
 =?us-ascii?Q?5zXnaKdzWISEvz5si3eDb1PZcKt1MD4HTWXgVuubApGgoaxDVtD0Ddigd5DH?=
 =?us-ascii?Q?Tb3Z7jcVxu7xH7lMK866ZFWJx0hBNn69PBpI4O5KPUNNh5nI3s2j1uCxgdCE?=
 =?us-ascii?Q?PDqOviG5+CNbuVbv+WHCws6bXaHShiyfMkI8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vtcHuSBESSI2Q6O/q/Y1c/AwhoQeyqqeG+P9zX7LWhNHX6PT1LsSJc8aITlV?=
 =?us-ascii?Q?UUnEHrJYDM9WtRZkyWcHEvnUvO+9FROBnScDb2s7eMLdJdENYpNrGj0EKYHv?=
 =?us-ascii?Q?TQfW8WqJCKS/nLmBHzSjZ4qeEIAJW47wtNCTE8Ci3/5gYWR65dfFKjsFax1m?=
 =?us-ascii?Q?C0UyPT285WbzN0fg4TVeW9RP9jsiI640bamTQdKZs6kxCIpi+R0w2ihkUWwX?=
 =?us-ascii?Q?rsgRdqXD2s7ycR9VlUjoTAsW56m2TWHgMIvdbjlBFJ3J155BBNRLBHI2JR5s?=
 =?us-ascii?Q?BILrQT1gK3zUkxv05vru/a4hmW5fLiYjjrZLPzfX5+0ltaFxR1oCM0bcqkig?=
 =?us-ascii?Q?Mqs5XqzoIlnqHQkzNnXzWVfkemJogEoNFJim5NTZ1mBu6VvPxQwHsUXGszSa?=
 =?us-ascii?Q?O+GfI/kHzXAqOxbbsfGtTxbaOfn478WnLUYN1P35WWiBo6Cv6iz1BwZNFdsG?=
 =?us-ascii?Q?Q3ME9CaiTmLP9i7g5V5DYzxRVLMtn5kKdcBbN8tdaVfeL58FAYvPoQ8h1vEy?=
 =?us-ascii?Q?YaKcLxYJPNg39ZJUPm0VQDS83x8lvAzzfRVANoOB48ircsRkjRyNFrWK5ki9?=
 =?us-ascii?Q?jIdt/wi0bOXTAzHZYyT3/uDyuAOD26XuG6Sh6nAwDnbFZuc1tmWHgN9Vq5Q9?=
 =?us-ascii?Q?PBYEDPVJt5a8N6kHcxCIGuJQ0ajPYzGBQEOfXhlZQRXCC6iX4EDKVhGv7nSx?=
 =?us-ascii?Q?JRieRLqwgEseD4jrRwxwi5hYEJ5Mm8iU41EjsDztKTKzj4IeS6bdXsZ0zRbq?=
 =?us-ascii?Q?d8UdqjxCM7qUwUv/qEq0Mbna1lQqoiqG498s0SNDjoppYz+Ho4GMKx5N1SUN?=
 =?us-ascii?Q?Sp09bAJmpBVu2Gnewt47WXrv++tF8kgmf7qMNYWS6dE0jQs5CqXd2GcY/bsc?=
 =?us-ascii?Q?i1v6UKPYvC50JqlscmMuWEBVECaiZ32Px4ZpOXMx5qN7eonvGo/kuR7+SYXa?=
 =?us-ascii?Q?fp911YIhFmyZDTh6aT++yLOJB6HOHRpwO1O+SmTaezIjlPkNlOd/teLYDKHs?=
 =?us-ascii?Q?h1/6GRBOGl6EC5wJI6+yGo4kuQ0r6loQA2a37CUhvKbmUbvb4oP/AC0CNwbZ?=
 =?us-ascii?Q?bpaqCLYZE4Rbvcgq+HG7/nUPXRRn1/HJLKEEj1ttu1zpohQLQq4g3f/xd+cO?=
 =?us-ascii?Q?0OB+5Hfqa1BCw6nr8xideJCGEmrnKYqTe4am4XijzfP0a7fEND6Mr5xFcq3N?=
 =?us-ascii?Q?68C4lppngdCXQx5UMMu42uk/6GJtvGnA6bJqUVOiDlLsArXXHdqEVMQto9VQ?=
 =?us-ascii?Q?+J3qMpYfwZ487Vi3sBs0EI8LBP/3mHzoy/ZZ9AMCmyIo8y8Ye3Gq4FUpSXHV?=
 =?us-ascii?Q?SC97d5k8uQPjZetEB1mNc5rji0heTyj9WFMa5pGrmq+c6r9cMS20P3p1Sw0K?=
 =?us-ascii?Q?nLYsWLikJw8a7tPZRt0g+FWGrMQ6Dm4ASxMxf8sOJ/2kMonUPBaGCFkGjnrw?=
 =?us-ascii?Q?Bw1BakstCkC6i4GMOBta336e329Iol0SGOfxbzyc6h9ewQmfZXPKaORYh9RY?=
 =?us-ascii?Q?orUTkcRdyzBz8yYj/9Z18yBtuEag4hc30nvYfvU8R5d06A+Cuy7IptPSIC1K?=
 =?us-ascii?Q?ZRaqBT5Qx8ptrb0Xx4uwXxh95u1bSUrpOLaQAKbI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b1bf79c-188c-45a1-b64c-08de20e58f17
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 05:45:45.3207 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yDrRCiYdFdfyin37eDIvp675UCdrI4L6PZNfXnCYfzgcLWHnKbhYqKbe+3MLXmiiWVFrUU+ImsHxjz2Btxu5sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6672
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

> Subject: [CI 06/32] drm/i915/display: Move definition of Cx0 PHY function=
s
> earlier
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> Move the definitions of the
>   intel_c10pll_calc_port_clock()
>   intel_c20_get_dp_rate()
>   intel_c20_get_hdmi_rate()
>   is_hdmi_frl()
>   is_dp2()
>   intel_get_c20_custom_width()
> functions earlier to avoid the forward declarations.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 232 +++++++++----------
>  1 file changed, 112 insertions(+), 120 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 0ea9c33e4ce3..949727d3fc6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2131,7 +2131,31 @@ static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,  }
>=20
>  static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
> -					const struct intel_c10pll_state
> *pll_state);
> +					const struct intel_c10pll_state
> *pll_state) {
> +	unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
> +	unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400;
> +	int tmpclk =3D 0;
> +
> +	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
> +		frac_quot =3D pll_state->pll[12] << 8 | pll_state->pll[11];
> +		frac_rem =3D  pll_state->pll[14] << 8 | pll_state->pll[13];
> +		frac_den =3D  pll_state->pll[10] << 8 | pll_state->pll[9];
> +	}
> +
> +	multiplier =3D (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK,
> pll_state->pll[3]) << 8 |
> +		      pll_state->pll[2]) / 2 + 16;
> +
> +	tx_clk_div =3D REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state-
> >pll[15]);
> +	hdmi_div =3D REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state-
> >pll[15]);
> +
> +	tmpclk =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier
> << 16) + frac_quot) +
> +				     DIV_ROUND_CLOSEST(refclk * frac_rem,
> frac_den),
> +				     10 << (tx_clk_div + 16));
> +	tmpclk *=3D (hdmi_div ? 2 : 1);
> +
> +	return tmpclk;
> +}
>=20
>  static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  					  struct intel_cx0pll_state
> *cx0pll_state) @@ -2362,10 +2386,93 @@ intel_c20_pll_tables_get(const
> struct intel_crtc_state *crtc_state,
>  	return NULL;
>  }
>=20
> -static u8 intel_c20_get_dp_rate(u32 clock); -static u8
> intel_c20_get_hdmi_rate(u32 clock); -static bool is_hdmi_frl(u32 clock); =
-
> static int intel_get_c20_custom_width(u32 clock, bool dp);
> +static u8 intel_c20_get_dp_rate(u32 clock) {
> +	switch (clock) {
> +	case 162000: /* 1.62 Gbps DP1.4 */
> +		return 0;
> +	case 270000: /* 2.7 Gbps DP1.4 */
> +		return 1;
> +	case 540000: /* 5.4 Gbps DP 1.4 */
> +		return 2;
> +	case 810000: /* 8.1 Gbps DP1.4 */
> +		return 3;
> +	case 216000: /* 2.16 Gbps eDP */
> +		return 4;
> +	case 243000: /* 2.43 Gbps eDP */
> +		return 5;
> +	case 324000: /* 3.24 Gbps eDP */
> +		return 6;
> +	case 432000: /* 4.32 Gbps eDP */
> +		return 7;
> +	case 1000000: /* 10 Gbps DP2.0 */
> +		return 8;
> +	case 1350000: /* 13.5 Gbps DP2.0 */
> +		return 9;
> +	case 2000000: /* 20 Gbps DP2.0 */
> +		return 10;
> +	case 648000: /* 6.48 Gbps eDP*/
> +		return 11;
> +	case 675000: /* 6.75 Gbps eDP*/
> +		return 12;
> +	default:
> +		MISSING_CASE(clock);
> +		return 0;
> +	}
> +}
> +
> +static u8 intel_c20_get_hdmi_rate(u32 clock) {
> +	if (clock >=3D 25175 && clock <=3D 600000)
> +		return 0;
> +
> +	switch (clock) {
> +	case 300000: /* 3 Gbps */
> +	case 600000: /* 6 Gbps */
> +	case 1200000: /* 12 Gbps */
> +		return 1;
> +	case 800000: /* 8 Gbps */
> +		return 2;
> +	case 1000000: /* 10 Gbps */
> +		return 3;
> +	default:
> +		MISSING_CASE(clock);
> +		return 0;
> +	}
> +}
> +
> +static bool is_hdmi_frl(u32 clock)
> +{
> +	switch (clock) {
> +	case 300000: /* 3 Gbps */
> +	case 600000: /* 6 Gbps */
> +	case 800000: /* 8 Gbps */
> +	case 1000000: /* 10 Gbps */
> +	case 1200000: /* 12 Gbps */
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool is_dp2(u32 clock)
> +{
> +	/* DP2.0 clock rates */
> +	if (clock =3D=3D 1000000 || clock =3D=3D 1350000 || clock  =3D=3D 20000=
00)
> +		return true;
> +
> +	return false;
> +}
> +
> +static int intel_get_c20_custom_width(u32 clock, bool dp) {
> +	if (dp && is_dp2(clock))
> +		return 2;
> +	else if (is_hdmi_frl(clock))
> +		return 1;
> +	else
> +		return 0;
> +}
>=20
>  static void intel_c20_calc_vdr_params(struct intel_c20pll_vdr_state *vdr=
, bool
> is_dp,
>  				      int port_clock)
> @@ -2654,84 +2761,6 @@ void intel_cx0pll_dump_hw_state(struct
> intel_display *display,
>  		intel_c20pll_dump_hw_state(display, &hw_state->c20);  }
>=20
> -static u8 intel_c20_get_dp_rate(u32 clock) -{
> -	switch (clock) {
> -	case 162000: /* 1.62 Gbps DP1.4 */
> -		return 0;
> -	case 270000: /* 2.7 Gbps DP1.4 */
> -		return 1;
> -	case 540000: /* 5.4 Gbps DP 1.4 */
> -		return 2;
> -	case 810000: /* 8.1 Gbps DP1.4 */
> -		return 3;
> -	case 216000: /* 2.16 Gbps eDP */
> -		return 4;
> -	case 243000: /* 2.43 Gbps eDP */
> -		return 5;
> -	case 324000: /* 3.24 Gbps eDP */
> -		return 6;
> -	case 432000: /* 4.32 Gbps eDP */
> -		return 7;
> -	case 1000000: /* 10 Gbps DP2.0 */
> -		return 8;
> -	case 1350000: /* 13.5 Gbps DP2.0 */
> -		return 9;
> -	case 2000000: /* 20 Gbps DP2.0 */
> -		return 10;
> -	case 648000: /* 6.48 Gbps eDP*/
> -		return 11;
> -	case 675000: /* 6.75 Gbps eDP*/
> -		return 12;
> -	default:
> -		MISSING_CASE(clock);
> -		return 0;
> -	}
> -}
> -
> -static u8 intel_c20_get_hdmi_rate(u32 clock) -{
> -	if (clock >=3D 25175 && clock <=3D 600000)
> -		return 0;
> -
> -	switch (clock) {
> -	case 300000: /* 3 Gbps */
> -	case 600000: /* 6 Gbps */
> -	case 1200000: /* 12 Gbps */
> -		return 1;
> -	case 800000: /* 8 Gbps */
> -		return 2;
> -	case 1000000: /* 10 Gbps */
> -		return 3;
> -	default:
> -		MISSING_CASE(clock);
> -		return 0;
> -	}
> -}
> -
> -static bool is_dp2(u32 clock)
> -{
> -	/* DP2.0 clock rates */
> -	if (clock =3D=3D 1000000 || clock =3D=3D 1350000 || clock  =3D=3D 20000=
00)
> -		return true;
> -
> -	return false;
> -}
> -
> -static bool is_hdmi_frl(u32 clock)
> -{
> -	switch (clock) {
> -	case 300000: /* 3 Gbps */
> -	case 600000: /* 6 Gbps */
> -	case 800000: /* 8 Gbps */
> -	case 1000000: /* 10 Gbps */
> -	case 1200000: /* 12 Gbps */
> -		return true;
> -	default:
> -		return false;
> -	}
> -}
> -
>  static bool intel_c20_protocol_switch_valid(struct intel_encoder *encode=
r)  {
>  	struct intel_digital_port *intel_dig_port =3D enc_to_dig_port(encoder);
> @@ -2741,16 +2770,6 @@ static bool
> intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
>  	return intel_tc_port_in_legacy_mode(intel_dig_port);
>  }
>=20
> -static int intel_get_c20_custom_width(u32 clock, bool dp) -{
> -	if (dp && is_dp2(clock))
> -		return 2;
> -	else if (is_hdmi_frl(clock))
> -		return 1;
> -	else
> -		return 0;
> -}
> -
>  static void intel_c20_pll_program(struct intel_display *display,
>  				  struct intel_encoder *encoder,
>  				  const struct intel_c20pll_state *pll_state)
> @@ -2837,33 +2856,6 @@ static void intel_c20_pll_program(struct
> intel_display *display,
>  		      MB_WRITE_COMMITTED);
>  }
>=20
> -static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
> -					const struct intel_c10pll_state
> *pll_state)
> -{
> -	unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
> -	unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400;
> -	int tmpclk =3D 0;
> -
> -	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
> -		frac_quot =3D pll_state->pll[12] << 8 | pll_state->pll[11];
> -		frac_rem =3D  pll_state->pll[14] << 8 | pll_state->pll[13];
> -		frac_den =3D  pll_state->pll[10] << 8 | pll_state->pll[9];
> -	}
> -
> -	multiplier =3D (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK,
> pll_state->pll[3]) << 8 |
> -		      pll_state->pll[2]) / 2 + 16;
> -
> -	tx_clk_div =3D REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state-
> >pll[15]);
> -	hdmi_div =3D REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state-
> >pll[15]);
> -
> -	tmpclk =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier
> << 16) + frac_quot) +
> -				     DIV_ROUND_CLOSEST(refclk * frac_rem,
> frac_den),
> -				     10 << (tx_clk_div + 16));
> -	tmpclk *=3D (hdmi_div ? 2 : 1);
> -
> -	return tmpclk;
> -}
> -
>  static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  					 const struct intel_cx0pll_state
> *pll_state,
>  					 bool is_dp, int port_clock,
> --
> 2.34.1

