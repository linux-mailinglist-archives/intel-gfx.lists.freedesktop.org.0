Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE0FD07153
	for <lists+intel-gfx@lfdr.de>; Fri, 09 Jan 2026 05:12:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4506510E7E3;
	Fri,  9 Jan 2026 04:12:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFMxObG3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ADF110E38E;
 Fri,  9 Jan 2026 04:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767931956; x=1799467956;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wdToo9xSkSKggKBUm+5wilWDHYn6l1AOajOnlou3ar0=;
 b=VFMxObG35Y4SZEERbwSW/FBXDZogsGFxDKW8EMfHqTPHuEOFQCYTCqjr
 jypi4Cv1oMyV9MZMp6CbC54SnpOTRT5pdDCSq0l/ZMWWOtOu95l5uC28m
 U/J+PXdAhfG9sYg3RI5VUT0OmXTzzwhOs2ffk2+YFN+mEOq69CFRXtWoq
 S/PrG6QvnuUhvis1uuHcRq0LKnQ//d2dZ8e3OWSix+11963VfcTZHB4Gu
 ngziGgCNqi5l4YWQ/TfmbwTBq73BWank7vI5w1BEibCb67AdIuzZLi7M0
 egHbgK83z4/og9N51/P8LqSTdrA98Qf0B4fA+rD4JVVdarRqNc2EmoAaU g==;
X-CSE-ConnectionGUID: wAAaDJCLRTy0+J3PywI5WA==
X-CSE-MsgGUID: Zn+JXEidRJKFub4e6VaObQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="80423362"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="80423362"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 20:12:35 -0800
X-CSE-ConnectionGUID: nRBGg6r0SKGWnzo6lcEztw==
X-CSE-MsgGUID: MYDhpiX+Rl+xIKu2GYR5CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="207507396"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 20:12:35 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 20:12:34 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 20:12:34 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.25) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 20:12:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ztjn+SM45+WOhKBzwBpuUxGiZkBM0IqmW0j6Ytn1bnYly78iblFsqrD2+hTZG+pL0ZMLoMXS9svW9zaKkKh8TDchwNkLUlW1/4Hfmc9UPlapmNyEFntGH5RW8GXBWH1ugB7tL43Lg5lp2lgvZyNn1vjeq1aVFBwz7TjddvTiCEoE+sj+DrgmzreXfUjPrtFUokDHiSp0RgLf88QK5C0mIrZFqsK/gm/TpkORjpxL2mQUcRMx+yEs/gA7gy12A1Wb+ZUM503PDXQ+ITCzneKDWDK14dlsmB6si4QFcUfbgbahRe+61Tp0zdSOR6ejvDAwWtQMRweRTqe93hccDt9Vmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4x6v6wNFHymxOjx5s8Zp/3hOghKSY/+5xxyUeBTD6/k=;
 b=tHY5JttdgQ4zqvKEeVrLtTfAo36/3PcBSKVbotPXs8UVc1cBzamxqUuXxOzTFHtbgRIpOU6HpHBGzytFBa7aIdOcRDZICj4h0BMnW9PaKh9SQAVvE9Y4+nqX8F/KrEIYKqY/G/kML+GrRj7AnUZCzYZF84PUNakGjM+goI2pGGRK44xAb0a6cPSYCA5WrPE4XQw+8uRD7Ufo8DnwKb3oUdpcJQMAW3IZBnw2Qbs81EiywkqPqHYWRiU574ulzqwSkHoMASIipvHHDQLvgjgCks7fqwl9XKGlf85KufTvQILzmhUFN48K7FATyy5mZESZDAM6gdkC8zpSJePyIMu3vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA2PR11MB4826.namprd11.prod.outlook.com
 (2603:10b6:806:11c::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Fri, 9 Jan
 2026 04:12:26 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9499.003; Fri, 9 Jan 2026
 04:12:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy pll
 dividers
Thread-Topic: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy
 pll dividers
Thread-Index: AQHcb2npM9retNVBAEqB1CUm8Ov/Q7VEtTvwgAPECwCAAOOckA==
Date: Fri, 9 Jan 2026 04:12:25 +0000
Message-ID: <DM3PPF208195D8D430C5159B9CBAFBC1E50E382A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-13-mika.kahola@intel.com>
 <IA3PR11MB893722B40977A210F1E94BD4E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
 <aV_AuH7hzqOfr8ev@ideak-desk>
In-Reply-To: <aV_AuH7hzqOfr8ev@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA2PR11MB4826:EE_
x-ms-office365-filtering-correlation-id: 766caba3-42e8-4c0e-ea76-08de4f354bf4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lkrWm8kNWFd3YnY6RUFfsqRX7msDPlj6YiF7brEx8nfWEWzb+uwP0F0nTMsN?=
 =?us-ascii?Q?MwxRPw9Pdg/MOcHQebQ75ioHGUW1kt8IwbC9M08TSb/zgLJMw8BYmGc72Rnp?=
 =?us-ascii?Q?moqYZWL+GTQViNLtlntu1moPU3T1krTiZQCsqnTivMkU5aSdq1dDyLZLILm/?=
 =?us-ascii?Q?84J3Ta72CsAjCV39UFpv8IUV2rwGhmO4+7W9TbYcFsPmTcs9bQGZbWDfNI24?=
 =?us-ascii?Q?WS3v6CFi5hq+EsJqB5IzFtrNceOL+SGBgW4utsFMxfAQR7GEOLIDkB1jTOjO?=
 =?us-ascii?Q?G+2FDjucSJ3tX/PemkWgfWCZRP7daDBmFrDhk/D0BY4kCcCvYQV8/qZFkuiM?=
 =?us-ascii?Q?2NPMpFYZS2HQ2NtinI8Soyzcn98Byf0WxwGTybQ6FZd6qdCYE5YD5ZRZEtIW?=
 =?us-ascii?Q?LdF/EOpAndc23FJlqTXQKyEZtnC6KhvIGo1pB/GJbo3KZa5wjuaoqHpLi4XW?=
 =?us-ascii?Q?atrk7HW/SRALTl0f0YzH6zNFINHZdS6TqnwAP21i866SO79b0km0D/Ck0U3O?=
 =?us-ascii?Q?EGfccmgO0xZJoiqmGoR9JM5xOIYr1pcgzAJh3KtoTFW527A1uKb0v9z8nVRd?=
 =?us-ascii?Q?oH0MvrVZHhzCj9C4zvX9QZhvu0NlnkmCh4DYIUAkSEF879HRcN1XJAOjkEVt?=
 =?us-ascii?Q?x7CsKWiHTPELT/LmTS3M6WHDQKGKxrfPojt1vENxOQRmSoypRRiagv8jFvbC?=
 =?us-ascii?Q?fXqecROsPghffzWO7CRYrRBWE4tTYh/j2X2cJUVgcbBg46U1HEUqtT9xqMzE?=
 =?us-ascii?Q?y1YAewkp1RyTpZgDKJJ/wqxlemqPH1u6vNpdf9FYVB59ZQ8EpfhSJw0kzo1b?=
 =?us-ascii?Q?TzVT7nPRISp1715oJm8bkZ16mW5N9bwhQNMslofxGd3x6ZbYRig31DH1kzUN?=
 =?us-ascii?Q?nydofrHIcA9cJUukaZ/CNwodgutEUsCPBwTjBdwD9J7VuIlVpTvPllx1w40H?=
 =?us-ascii?Q?nRfhbIiAuFR0kLozQmqmQw6ZIZDfZc6JnlsFAGivY/B+cFDgUbT7YLl3RE+i?=
 =?us-ascii?Q?qd/gKC807nQMmhy6xTT5IdU8MbuAmeiRY3zI90Ul7lu9csv6mRTAw/pnSNHe?=
 =?us-ascii?Q?YGeVJO9tDMuQxiy+xMnRL3CGHdihpYggPYk8zF+LYdbT5ZoVWkcMbrjijZxE?=
 =?us-ascii?Q?Av4UUPMOfME/H2IkAkj8tdO+6B0LM3LnvWcnd0D48BwOfEQKqxwA7QP+/5zf?=
 =?us-ascii?Q?xLm9LWEnIXaql0KXZMG+4pcAexbPGzkPvqcfpn5hfBX+SVeGPxTqoMaEjYDW?=
 =?us-ascii?Q?GERChwhuc49FoY48Vc/4bIuSXuLletVhqTKgNbWmjLickqUCihdkyR2jVMFd?=
 =?us-ascii?Q?x2PG+XcfCjyO92tMyflz3R5bVtvgm1IsGHhLljhZciu1kFSR4cByiNcJm2ta?=
 =?us-ascii?Q?Mtgnhir1cfa4rqOxhpNc6OsmXKZagxBXxu/zeFz2orJkUReCx5pEYSAChdYi?=
 =?us-ascii?Q?aMAQlfc2lU9TNVxFy0W1DOqxJ5gfiHWHaEvsgB4WdMHaxiZJO1GFMvBbZmsL?=
 =?us-ascii?Q?9+tygYrjWhedoI4AFWxB75929vWKRHFv8fKc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ljk0Wz1Vfy2SlaP2rNRcaTqyfnsf7hw1LXvgh4MAWqXLlHhJm0dvJF4FeeIe?=
 =?us-ascii?Q?Skwxd61vsRCzFQ2wFbiZwHSUK+m8bojCZMKzDLQL7GbYyw5DA4fKpNfbwEM/?=
 =?us-ascii?Q?r+ZtK+l7MMysZtLJ16P6UeyDB4OBtxS5MXMyGsog6UWgZHrUS58n3BWwlSxW?=
 =?us-ascii?Q?1L1xP0kZaZSr4cfgRG3CN5Bbr6tQMsWAkMge+5msbY1oGZg5YqVzZDds/NO8?=
 =?us-ascii?Q?H4L/50xNbrsFQGa3E3ozQ0ZCtUzo9pJS5xap2TXCSztHBDhmxw0GTdOMHCLV?=
 =?us-ascii?Q?9Iu/9bgE8ZTWUJJUjRLoHHi+8/V2t5NKXvRTrc5zTmtnTHDyCJh1nI3dt83D?=
 =?us-ascii?Q?QhNJ3BfsyRagx7y0aqjU4b6WGSX9ivYFe3Jf9sdGki2hm+jRYxBDbfjBDjGn?=
 =?us-ascii?Q?+iba/FMzQ/eRitp4nrSdQYmAyxkmDkR3UkCa9R3KWSwPn0lxS+Stidu73iK3?=
 =?us-ascii?Q?wD7AaB8v9VWVsCGV6IxkR6xEC3DrJqnXCtzyRd8b0DS0VuFECmOvvEp+3IHW?=
 =?us-ascii?Q?B1Qppn0tvL2Pm7tYAKFLthHfn7HvVfIMUcmS2GuJpYXsA7FxrLvLCmAd1sCr?=
 =?us-ascii?Q?Gv2osW/0p1UQWp9tIcHG22wL3SNLs9uFat/FHNe58uS/ZsBS0Dg32BIzHA5D?=
 =?us-ascii?Q?pZyOM6RN53dL5vL5fOCLWNxQXPr+EctxXOcF3aT4jJPc6DKTK8+meedj7IoS?=
 =?us-ascii?Q?0mIPWxbWgzOUkQXkhjNxW19FntGV3eTggg/ubMXvZULaqANzBGL57QeSwwlD?=
 =?us-ascii?Q?WO7br7VUhyGSU6VnitmgwgXfkyp6nyPmYqzZ4o2z0uIjumQmoiU6Ywyq2vtr?=
 =?us-ascii?Q?WjTDwyhcc5tSX8xVxoKrg+lH3FDDp5BLv6BgUf7a8TFlnIiBYiskTa7yX0dt?=
 =?us-ascii?Q?nnr71GQQas5JrIZEBzuwZ/Ow2VxV+CSwTBicJMYLJTBKe0rPwLHGbBv3KlNi?=
 =?us-ascii?Q?vQHOYV8E1vhCjpg5dO9qawyHVM4iwQtRH/fSWmsuIH7ir8FAFpNli2PgCe+1?=
 =?us-ascii?Q?auxu1vBAgczlkbUL23DPelunDRS60ZI6lHx0V4f+k7bTZFiVOZKR6ULTR56h?=
 =?us-ascii?Q?k8sVj4XykkHu7KuII/rDZDJ2UVZjw0QlWrB5w9eZ/oju+bHE+Jhj/nvtwYHb?=
 =?us-ascii?Q?UhxvSicPE7qyLrQCSr9OhHH+hWelGp5P9ZsDPbL1cei64pc/Nus/0ukIz7h+?=
 =?us-ascii?Q?YAJrS4OOEXazxA6GBoEeel8jS5KYtSvRtrAmxlo/b9nfeyaDzlZT/YKUlagl?=
 =?us-ascii?Q?hoh9r2QxTD/K5IV0bB8hVCWI0PEUiO4w/bnZjvZ4NFyu1NcAzhA6mUEP88jy?=
 =?us-ascii?Q?aK/8IZZeVG7IWry9k2GjvBL1tvhHpviOBtHAJYVUPHfr8F3ianYFNrdUSo0k?=
 =?us-ascii?Q?eZuqUgmGgyZZWNJHM8MsMcuuTXWj4x6ZXh4tTpg1OZjNlfnsGMEL+mh7PqAO?=
 =?us-ascii?Q?uDEFR9nqTvza1Od8OZYQLjMLP0Kvuts+si0Q7WnA1URSv8KOdjqb6Cw2t+XW?=
 =?us-ascii?Q?7ARXWgWK+T2QJtXkzHJ0oLav1TJTUEI0ONLpSyAh67+QDPWsR3ekH/LzuDLj?=
 =?us-ascii?Q?EW1h6XiFSFg78sWri8kNIh5MsRfI1kBSjOSG6/q9tBrBX+4EwUytQbDKH5vU?=
 =?us-ascii?Q?FjVk08+W9/BCHy/iUoMDMQC7oi+CpdvuLViv9k8/ZMjUXIutrYAw+GqUDl0T?=
 =?us-ascii?Q?ToWtIa1s0eT1jA/BShIzbOQFiGdOmsfFUInn8K9z3/EEJa1mg2MRimjdGbcR?=
 =?us-ascii?Q?JH4Hh5WqdQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 766caba3-42e8-4c0e-ea76-08de4f354bf4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 04:12:25.8873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eeCaf4OTn1U24EEUIJJoDp2/OxGThrgMMbZ2CXHuEecuKXTgFuEn5k/QtwsQBZ5gqI9mRu2Ruiu7elaQqHogGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4826
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Thursday, January 8, 2026 8:06 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt ph=
y pll
> dividers
>=20
> On Tue, Jan 06, 2026 at 05:07:25AM +0000, Kandpal, Suraj wrote:
> > ...
> >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > index e33f6f48a6ce..13acfc7c0469 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > >
> > > ...
> > >
> > > +void intel_lt_phy_verify_plls(struct intel_display *display) {
> > > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_dp_tables);
> > > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_edp_tables);
> > > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_hdmi_tables); }
> >
> > Same thing as the previous patch this is not needed.  Moreover we do
> > not go through any algorithm for edp and dp tables for LT PHY hence
> > the Rate always matches. This patch should be dropped.
>=20
> Similarly to my comment on the previous patch, the tables entries should =
be
> kept correct even after they were initially added. So please don't drop t=
his
> patch.

But testing DP eDP tables still does not make sense here since they don't g=
o through the traditional
HDMI algo that CX0 go through the clock rate in a way is signalled just by =
a single entry of VDR0_CONFIG
So other than verifying table for HDMI the rest need not be done.

Regards,
Suraj Kandpal

>=20
> > Regards,
> > Suraj Kandpal
