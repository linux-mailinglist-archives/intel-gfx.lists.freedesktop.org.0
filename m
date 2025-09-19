Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 826EBB88815
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 11:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5252D10E96E;
	Fri, 19 Sep 2025 09:04:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TPV8r3Uj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D0810E96D;
 Fri, 19 Sep 2025 09:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758272658; x=1789808658;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B9+tJw9Ap48YY/5MLexNdMV2ew/0yPWQ/tPCyP1sXYY=;
 b=TPV8r3Uj/o4GazyJAAsRlHPzhMZyA8eci2+B6JU6Fste2JLWmX268vyr
 U096DmwcB1/0avaa6cKkzUW/5zf4pBmLbmtghkcSIvaVGyxrEaK0X6Wj7
 iHIRONzFY2exwZP9YISfNnBlV90bh7mdS5PJrCcwTW3T56RBTaedyfJIg
 j3d92pFyz1FvWcLUd1UqWg2XG5jr41SQYi27HKnt4vLHJ3IBghNBJOb51
 n9nA+a8OFJQGBiqiueNd9068vteQ8vTQpaFI+wYl1GRVfWDJ6Fv7lvvX8
 PNFXF9PQsVHZFfkc3V+Yx7AoTZSigwtccJP6/asAwsBQigfpRGIQIRbKM A==;
X-CSE-ConnectionGUID: jUpLPPgFR76djI6R892rEQ==
X-CSE-MsgGUID: dG5h8KnpQj2pjk/yhghyYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="70866544"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="70866544"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:04:18 -0700
X-CSE-ConnectionGUID: /KpZxjD7QMWQa4YxNjCcpQ==
X-CSE-MsgGUID: XknaS8/8Suu5n3h1IJNAEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="176590125"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:04:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 02:04:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 02:04:16 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.20) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 02:04:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T4W49WJUhE7KRfkCju/+JWu1qDe47WX0+lgCnS8R1UPfm1KDbxJsU6SfmyYDl8GqBqfCOV6GsPyBS/vEd07vOfjEFlk1u219QaeObEZg0g+REUOn5a1nprEX8ks/u1L4qVJI9T0F/JYARL/o5TF5OYMBa4Sp9OwaOK7a+viDsxcdJ6JXUWUW3oUnK8jJdmEbrkGvxiEljo45QwMeamFfxg+YD+dvVsMrrPxyC7BTuaSe2L4bv8RZ1/XSeVXVOu786XcOL6qK0Jd8hIZmVZ0s7NMXHVe2JQlMP9ljqBKzbaHdZmo8Iq1KD4oIlz3BZw7Fcoabo6hMfD388Ce85vIQxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z14z8/er34h0dAnYFCtWZlTo2V3onaZUlakacdW/eww=;
 b=RbY6G5kGL7fNUi5zAMCjdbo8sqWl4GLf4eRw6ALt3hIoeVmEizsHjPaK7R8LcIKngRC7UWbCISPw7LJHqR1i3fsyKKDGqjWWMc410pC+BYX9+uVhhJeHif8GgnX7OGsiEDMV8lrEzX1zksQw9EVm2sHBRw0Vklh1XcnkkFS7vxXiyCavFb4/Gj5HyPeYXIYUlyrv6Dj79o4/uAX4F5EhGwVAWlXvD12ng6vxbHXhQ56yUqcJ2aIcYGgzEL/bEHeTNX+SkQGtXzYdfpqUCUHCQ1XdUxK46xJ0OhqecFbxp4a9m/WReF8aDJYKl7+HS5YXqDAMgaeKpG8VpPq+GBFkhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by IA1PR11MB8150.namprd11.prod.outlook.com (2603:10b6:208:44c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Fri, 19 Sep
 2025 09:04:14 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.9137.012; Fri, 19 Sep 2025
 09:04:13 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/vrr: Refactor VRR live status wait into common
 helper
Thread-Topic: [PATCH] drm/i915/vrr: Refactor VRR live status wait into common
 helper
Thread-Index: AQHcHAcUbHUr1QtqC0yhq4FsAFFwubSaUC2Q
Date: Fri, 19 Sep 2025 09:04:13 +0000
Message-ID: <IA1PR11MB6348FCE330F2FF0C57D24380B211A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250902122850.3649828-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250902122850.3649828-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|IA1PR11MB8150:EE_
x-ms-office365-filtering-correlation-id: f7cc3315-48ad-4270-9be9-08ddf75b8141
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?mLIh1Fc3eb9hH5wILNyPEQg59wGSHWIcejLg5jxtJCfyG/bUvaEaZ5ccH4Pb?=
 =?us-ascii?Q?QoFk1s3P68Tj0JBtciFom/EFHosFiYt2b6UXtOHI3JwWJao4QS7bCLCk08VD?=
 =?us-ascii?Q?MupyBNMGz733Tb8yGAVHV7WYboiEZoQqVINB7fKFMNU5L6Lv/gvQ8W3TBBAh?=
 =?us-ascii?Q?W6EtuawzfkDPqfxpjzOv1xh1vagVs/3549XjD5A1ah1+WA7RrRyuhHNxG3Xn?=
 =?us-ascii?Q?vFXM1gFeoHJpAtVORvRlxlVSbU2PnTQGwsWO88OjgDH3yHCI6e4iKp19QhgT?=
 =?us-ascii?Q?L2ouyxN7CTuQKI593GgLEFqR0H5GRk3sNUf7Sp9AFKS97RaBEdJStIwJc9Pn?=
 =?us-ascii?Q?nOGGFQrXbng2H/yc8CJwikoem0H569/A4rS4IKwMsWe2yJx2j09vGepKCJcz?=
 =?us-ascii?Q?F7ogHJAx2cpocwDErl6VyqJavbivBGKx26tervkPtTQFH/pbWOY9ZEdKK/G+?=
 =?us-ascii?Q?F8qHSglW5N+6COnGud4maXYpO/q8A8H03rs7IvccQoGP9LeLZRyYfuLM/yUN?=
 =?us-ascii?Q?oYg8Rn/DS+/jkT4lFa51FeNe7tbqMQMWXJ/s0YIWmvF/nZuQsRPSnIjtLNhw?=
 =?us-ascii?Q?tKiI6ze43oeKANKvDJpP3tMAavVVz/7ltnYQlAysWmwGFqEm/XZPc1meOTZI?=
 =?us-ascii?Q?+VVLORt9Gtk7Mgoqh7FGWF5fnkJ32hqTrt94mqficGnv3PWTQ9i8xKOVakBL?=
 =?us-ascii?Q?eL5wsh7tv4aej7jZbrrrfggN+9Eqz2ip+R+LJcSiR5geEefaN7p3WrG+EzhS?=
 =?us-ascii?Q?GNCqmnlTcqGfu7r7uFyn0/co7s5YK3Ra/XGdALTiDG49j8JqqftPdmS79dJ1?=
 =?us-ascii?Q?B3r2Jb6nTtfsj6ASmoE26gUGWqmdKYoTPQja6ZsHNQ5pgtMqaQkyeoGmtcps?=
 =?us-ascii?Q?0by7Yp7ZBj3iKiA4IxS41KrMYFGdNjbYZzzkj6zaJxqg2jPyOvnMbU90CCmB?=
 =?us-ascii?Q?IlsMJB0Tc8Fcb5eT6ncbft91a5WUVA67QToTJIAavPqcjkKIxyPtjT/wix3Z?=
 =?us-ascii?Q?WHDPlvZWKWtl3IPK094a/+KvcuDdN7afu753nhFLRvQL1yCJQSECBaYksQvl?=
 =?us-ascii?Q?NlR3/fbbihGloSuKiLLVSJbVs+nHQy/ZTwSxGT62B0F4LuCwxrhdFbPvewsQ?=
 =?us-ascii?Q?N4oiZ3PLli3lmsc7GGE+iJPTqKVSqY5WZ99IXPt95U0JwUmIUhvw6AS+Dc3V?=
 =?us-ascii?Q?Qlcs0wem3E2lBK3rkj98MTVajsDKQIA5xk3thgKqoMcflivyCXNFZTxJX/S8?=
 =?us-ascii?Q?dXDL9v3n1RA+mL4kfZc0pea9Cj0qZXZ0029zrJIBciXG1GqDWaHpt8LGt+wK?=
 =?us-ascii?Q?yZLvu1zZeOuUiFfmTYI0PjD+BnAWcQq42luSCgI/onyEaud2U9xdjXAYo0cn?=
 =?us-ascii?Q?1xEqT1ZH8QNP20W9mCO6/MFB3WU7h8gcYqhuuOeUO02aajBbV1CuMRTOg4Jl?=
 =?us-ascii?Q?5fJjQZrEIm9boSHNKKPkO9B3D6GDRaNREvFZzWh03MtYdS88RwZhOrlXzUtL?=
 =?us-ascii?Q?jXLT0p//99jDGrY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yugnSotKQnsOzeUAQ7zbet8gJq9KWMReTQEmYXtaPoO4PDH9H5JdKSSETx5b?=
 =?us-ascii?Q?EaKYxkA0OVLRuYN6PeDm2aYJzgXsYTdolodDPNITV3kANdl6jHHe6q38zSHD?=
 =?us-ascii?Q?hZGH59b8VT9cDZhzSIdYfJHa5XEJeSAIhGAfw5bLTtmwFoVa9vR/lX+N636X?=
 =?us-ascii?Q?uA8Qm2jE7DQXVIZ3J3jzwxr4U7eVdBPId2iUTc67YGgVof8VTRVq5Uk3SpRl?=
 =?us-ascii?Q?FaFPrSOv5qLHsfQvD3Fg/srO3v3KzOKVZs/ZiJyh3EeUPATz7358lEDdKTNw?=
 =?us-ascii?Q?Uf6NgNwQWyA/SFjnfJCYjkaY7Cw6JoDNgPzIubYT5L32Ve4LUY0yNYelnGry?=
 =?us-ascii?Q?Uj51OuyVggXqy7Xmb9ykrMvREhWBcPtLx24+sv1doHOKTYZVk/qQWKUhfuHO?=
 =?us-ascii?Q?rPRhIaxR4dIuTk2jQUFiV8rEHMZkx4TmEjfMafR8BcjTMPjXusXQh6WDW5JW?=
 =?us-ascii?Q?sm2LLWivrvWOFCdpVeUJcmazOYPdQRNzt3Q32MHTz05RGunedOOw08QtUEF0?=
 =?us-ascii?Q?d6js49nfeHDHzqLlvf3nl+QIFGVPACKzrdyAnC/jbkYL+GCnhNk9mBmNDvdf?=
 =?us-ascii?Q?fG4ppTCTRZoHY1BicYXdvhsYQgeMLjIJOewVWOXBmelKLwx5CNkjv8Oygvjn?=
 =?us-ascii?Q?T4gGdpPwlOytvc7CmF6ImBhRSsU6zG6Dv4CUufyn2W+RPF3YUAm4YtJGdGRs?=
 =?us-ascii?Q?UCTQIE0yAfO/aAfNFVQ8y68+tJk88dMPw2UdxNMG0kFIvaWPiEGMv0YaDox4?=
 =?us-ascii?Q?53MRHN8iVTREm5oL4t5wu05U4FAIw2uJ0t3KjyZh6gYvGHJ3aTJyQ4KwR0HS?=
 =?us-ascii?Q?OQl5DLAoiVTR6B4lNiEUYG0uyQjNOAB/Q6Cp6gXfKr6UF6h0+ASeotpGZNUq?=
 =?us-ascii?Q?Ph6NK5NkixrOBgAPcJG1P+8z5HSQZ//TwTi1zlER7t5Nx332s32nLvLCQx/X?=
 =?us-ascii?Q?2lIup8h93XT2dR1qyLCxQ3UJ03ufDqLyEk9esL+J25ekx/8AzTVIouvhjjJS?=
 =?us-ascii?Q?Ln+ELN8gFsQ/MB3PiFxS5329bbwYI8yuRnf26mgb5Tlp9kZ6/5UgpLf8M+I8?=
 =?us-ascii?Q?ZKRwwNjxildzYMD1ELA7rrQ6hqF5Ng3BQ6HMtw5npPLs3jWbup5e6NpJ3TdL?=
 =?us-ascii?Q?C+kb2oiu9Ec0kvXaAImWQwXUUd3Sl7QyqayzgUXpcAzdlL3cUn8DINDi4829?=
 =?us-ascii?Q?hqjAYyWJhuwy57Q1De/JKYGeaCLA9RZMOXNNTdYt9F8TzZbYrOcjYO+9r09X?=
 =?us-ascii?Q?XvdR+GKDYKSndt0a19HsXP/xgUOIAuOT6LTOGHmCNEta8eoJP2bnKeCyFr4d?=
 =?us-ascii?Q?tfAObu5nyNryxXd7sFEXfxClg38sGuKmIfXKro26wMZLINfu2k2YhjaOOjlB?=
 =?us-ascii?Q?c0LzDEtfcFypowX43bllVlvy6+hl9OfDm4obasFNHxDwjYIVunHEdHnf4EOi?=
 =?us-ascii?Q?XW4dtA7DcJohFQC5XIy4zZBDiu/TMn2XffyKqbiYMNRFp8wLOMdIzV2cPn2b?=
 =?us-ascii?Q?WhDZOIS8G6793UoFi6ggKmc9Apx/k/A0iC+zYD/Gyhya/5VVQ3VrNonYo+5C?=
 =?us-ascii?Q?NHIDBp4wrUV8YvHIE1zsSaWavsRGqn7/5LYIbB3kBuRA69n8ceOrcvMIVoEI?=
 =?us-ascii?Q?Xm3wxg9D30TKto6pY6wdbjs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7cc3315-48ad-4270-9be9-08ddf75b8141
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 09:04:13.9004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 107vBxSz38Ef1tl4dyecazK7kYf7r46c/cQKnxyqMrxd9gKxgGtyTtDu2WSkecu8+2/LQsl+64UAlXhU19gKi4xLRV0qryh7FM45Y5DsM35/YaJHphijgYNw1cecZc8c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8150
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: 02 September 2025 17:59
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH] drm/i915/vrr: Refactor VRR live status wait into common
> helper
>=20
> Add a helper to consolidate timeout handling and error logging when waiti=
ng
> for VRR live status to clear. Log an error message if the VRR live status=
 bit fails
> to clear within the timeout.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3eed37f271b0..0797b5b375b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -627,6 +627,15 @@ void intel_vrr_enable(const struct intel_crtc_state
> *crtc_state)
>  	}
>  }
>=20
> +static void intel_vrr_wait_for_live_status_clear(struct intel_display *d=
isplay,
> +						 enum transcoder
> cpu_transcoder)
> +{
> +	if (intel_de_wait_for_clear(display,
> +				    TRANS_VRR_STATUS(display,
> cpu_transcoder),
> +				    VRR_STATUS_VRR_EN_LIVE, 1000))
> +		drm_err(display->drm, "Timed out waiting for VRR live status
> to
> +clear\n"); }
> +
>  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(old_crtc_state); @@ =
-
> 638,9 +647,7 @@ void intel_vrr_disable(const struct intel_crtc_state
> *old_crtc_state)
>  	if (!intel_vrr_always_use_vrr_tg(display)) {
>  		intel_de_write(display, TRANS_VRR_CTL(display,
> cpu_transcoder),
>  			       trans_vrr_ctl(old_crtc_state));
> -		intel_de_wait_for_clear(display,
> -					TRANS_VRR_STATUS(display,
> cpu_transcoder),
> -					VRR_STATUS_VRR_EN_LIVE, 1000);
> +		intel_vrr_wait_for_live_status_clear(display, cpu_transcoder);
>  		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> 0);
>  	}
>=20
> @@ -686,8 +693,8 @@ void intel_vrr_transcoder_disable(const struct
> intel_crtc_state *crtc_state)
>=20
>  	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
>=20
> -	intel_de_wait_for_clear(display, TRANS_VRR_STATUS(display,
> cpu_transcoder),
> -				VRR_STATUS_VRR_EN_LIVE, 1000);
> +	intel_vrr_wait_for_live_status_clear(display, cpu_transcoder);
> +

LGTM

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);  }
>=20
> --
> 2.45.2

