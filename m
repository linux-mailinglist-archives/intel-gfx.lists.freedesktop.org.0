Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8C59A4BA0
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 09:08:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B9C10E1B7;
	Sat, 19 Oct 2024 07:08:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E2NNWh/q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1354510E1B7;
 Sat, 19 Oct 2024 07:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729321679; x=1760857679;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TAo/lhE9UGiZhklQEEuzJJ9JKg5Dd1yY2amy7Psqucc=;
 b=E2NNWh/qbRMSLD5VbrbGK7QCGvA66F5s4tochWY/M4UP3bHm2F4NHtgj
 /E2mjgqNDeP4gkaFlVczFBCSy9dxaLUpmXvO46hESZ2NpQZ3S5XSUZnKC
 sh9NgUXbRdBnV+0BKKnnRDqpdVnMkneq0JZ6F+g/QayvvQx87NsZYSWwv
 WKU2rscwh6dG6cfsyT12cEjjioSftvIzHTP+tCfUnMlMsKlvZsi+7WGMj
 2ohx3oLBgqjD9NUHUZt+Hi/0IlGmK1WIY39UTGV1YuUG3JIIiKz1EcMSz
 eY1KXap0/6QCfkLKJT6QpYu4SNHwM2JVcZe7pXKvgaQpgj7TVhRbotTxD Q==;
X-CSE-ConnectionGUID: PK7cU2xkQbq4NQqn3D2hXw==
X-CSE-MsgGUID: m8Q8WyQ1RS+yxEaxDNMuYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="39483934"
X-IronPort-AV: E=Sophos;i="6.11,215,1725346800"; d="scan'208";a="39483934"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2024 00:07:58 -0700
X-CSE-ConnectionGUID: dYTxdDFLSWuNQaM3YHDiLg==
X-CSE-MsgGUID: /3y8Cy4tQAeGRLz6bcy8Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="83892098"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2024 00:07:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 19 Oct 2024 00:07:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 19 Oct 2024 00:07:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 19 Oct 2024 00:07:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k6AlYjVSFbtvng1LYlBsnzPycS9+GFpzIXna7ZQ8GBYcytV4ZqEKWMeqcMNE61R3P2D6M5+6768HGUvQfSfeLk6o6QfZ+SOfFeg3GCJV1cBwl7WJEcQJYEjx0nJu1Qn3sl/V0QmBIIox20BgNnE7m10rtMPcIck+RgRlR9/kassqeABe7tOnv0wpUCCFXDwX6sxtRCZ295oHeEHawXBGTb8UeScQlzs5pIfW8k33bK4KMnXQEDSdSl8z5Pq9He3dUslpV7sRitLU8VDeqzudmtk/GQm8+xdWxOHKNcTj+guZl8p/q/1bDUpevVOn9rZRwPjKIVd2+2M2KAoJAVSjHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EXCmrgFx6XFZpiCjX090dGm5JLVVelE4wXTjUutGF0k=;
 b=AzGejrqkf8wSjmj/R1cs20OjcNeKuKRvrrKJ9HgoMU0hIh+hq6vT893qqo84RFyLXwnEYsjIc1gZk51WXlEGv13MC5SClQQJlt+/02Dx3B0MO9vX6DGv4fsH2ywlh67qg4z4/0MZQU+4iYnObBt5DJ36RkaqmHZ9rAsEXaCp5dKq/ku5W6ew9ofbLetys+5kjGn7GsGGGcVxg9d36rm1FXYTCT8jvgXpKjmVlK5tO+k7OZSeUbQmi/rd33EHZKgiBpFfMDvKkmNNGygjrpYFXrbm4/VCDkX3HxJjviWoqk0S14452slMsaNLR2gMHqLQvYG+DntLDjeh9eIjcPAFuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH8PR11MB6707.namprd11.prod.outlook.com (2603:10b6:510:1c6::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.20; Sat, 19 Oct
 2024 07:07:50 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.016; Sat, 19 Oct 2024
 07:07:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 08/12] drm/i915/xe3lpd: Increase resolution for plane to
 support 6k
Thread-Topic: [PATCH 08/12] drm/i915/xe3lpd: Increase resolution for plane to
 support 6k
Thread-Index: AQHbIZ9Q5dmKGvrU/EiMv1iA7v8pN7KNp1Wg
Date: Sat, 19 Oct 2024 07:07:49 +0000
Message-ID: <SN7PR11MB67507D5EE7CFC4CD3D3DE457E3412@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-9-matthew.s.atwood@intel.com>
In-Reply-To: <20241018204941.73473-9-matthew.s.atwood@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH8PR11MB6707:EE_
x-ms-office365-filtering-correlation-id: e12f922c-1b83-42df-ddf9-08dcf00cbe11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?8Yy0f6k0/p14SIn1WAl6jHE/Xw+T9YTGT43581OZDBTgGTUruZZxXjcC/a1I?=
 =?us-ascii?Q?OJlgSDRCSoNKEkRbESl++MfENr7xFqd/76nrlZ+mnixHgv4K+0z5qcugLOxg?=
 =?us-ascii?Q?vrNvPfSeULVOo5oXTT7ESdD2EWG2PbOI4hepTDKAZKV1vJF1pX1eWNJkp2zZ?=
 =?us-ascii?Q?vacGj3UuXO4WYNv3j2houmzAQ82elKGP/zkHcXh8gU4xxthpDv8PMzNEaPvH?=
 =?us-ascii?Q?h6AEDI2iURVq+tjOxKFgWeC6HNsQGSyU07phg5RnPm9hDtcoa/gpSXGs/PDU?=
 =?us-ascii?Q?nvyuFBqr2mG2oNb0nBtHpTVUy56J8OxxHDIxtJWmp5IRCHuFkJYU1rq1n0S3?=
 =?us-ascii?Q?VcpKBWA1XskK/a1M8Cr83fWtnA2ihruymb60gSo7rtnnMOjcYrsDrTwbfC2H?=
 =?us-ascii?Q?+O5K7m9hZsB1yS0a4t58OjmT4jSjJecRowsZXoZhpw8ljJriqrGtWJkjn/jJ?=
 =?us-ascii?Q?P90Cl+Tf6vg+98/+MWL726tJHx3nyDrv56hz9VJmmmNOuy1JeOWJJ+0IPpsS?=
 =?us-ascii?Q?mUAewbeECxs2uIcYR40DNjgxyMPX2LpvZTHsBkA+pNQsG9qR4PelALombr8b?=
 =?us-ascii?Q?OEFS2/zV6NOlOFs2EhIrCoNTDvaRqAptroR3S0265X2uzzc56WPfFIvNjyPY?=
 =?us-ascii?Q?tHhl2IWxMwMmhQtCRlsu3HpIkys2oQZYzBrD94IJeAp8sqNp3OcZirwoIf3J?=
 =?us-ascii?Q?8tje5d6EQ3xWhSlfG9nZo3slNQZB1KJzVBVRPLS1tHIJ88rnqISoUOZ34jnk?=
 =?us-ascii?Q?O1q7HBWZqjV3/uYyKIwvdVR2MmyCGUqFfn5YOraMKPyXmBA+QUU7/+UyKuc5?=
 =?us-ascii?Q?THT5Tj8iveNCESpdCsBbQBoCwCZ/b4WkWNaAsl8l1pAOFtHgjOacT8h7W5Oa?=
 =?us-ascii?Q?+9J7W7ZLlMa6T9A5S7eeKP5c4jqsaSvoUpNHgRuluJWTVBqptXeYBrzDNIpp?=
 =?us-ascii?Q?uFMukx2Gp4fludtNuX9LxLuUvfqNmOTBP+NWow61bQ2rwO4OGt0r5GKlvsFP?=
 =?us-ascii?Q?T8MH3enZK8VQMpFtd6l6ZjfOTNOfyxbpoYdkWmIdr99pA6C51xGJFH4azGty?=
 =?us-ascii?Q?nDRDJC9erREs2nZkZv3dNitt6p9bDkgfoDX3frEdbyRHttKs6WRsjIYihPOA?=
 =?us-ascii?Q?9d8a43GxJrE2cK8IqATuqvfaoEy2g3kKgAFZFPw1D8bEcxiWk5S+fG9zVtkD?=
 =?us-ascii?Q?VEZ9BVyvXl1W5b1ePbzaHWY2KD7mN/8HqGTbMvOSXYDboloodAdbtwnuQkSY?=
 =?us-ascii?Q?Ha6INAmRq2ckMsKFyFCPq4t3/JA8i1QqsSY69bHGTXKEZjCQL3ov4f308cIL?=
 =?us-ascii?Q?/f6sQLaN5kvTHNLFvHuW8EMGThM0QzIuFbh5OPjRGXglxatK4g0rcEA5ychg?=
 =?us-ascii?Q?npUOonE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p7NM65NlQl+avyKUD0E8u16VwM3qfiGKWIvVLCsTF2okQYOhWxXaZLn/6htD?=
 =?us-ascii?Q?0oCEUyjqWnQD8NcPZ30R8W0euTqoDIEKViJ/vaWelf7v5s8kw7R3YwwD/b7d?=
 =?us-ascii?Q?JBjr1ldQhV8yi7NGeXWRwS5SLzwj4saaVhijx+GHs8Lw2NxIMmKq+QPWbo71?=
 =?us-ascii?Q?iUND2rAkDTY6hwMDHaevrJX9A2XWJ788W3VmWIAzcaCWp7jWGj0bW/am7FtW?=
 =?us-ascii?Q?AaDJU0Xg3CBTYXwu/wkAgUhOpqpp6V7zZexIVxHctrnVvp0cBX6UtqaJCz6m?=
 =?us-ascii?Q?/wZUe2D57IAZ2VwdXZ3sfrhkMRs/ZQSATBUmK0hT9YZPsLBfTtuc8+xuHtdw?=
 =?us-ascii?Q?/hAhdMI2UML5OZ7RFhYbM7LNHAU+NrqWnJgY75RSzYCfzIO8INZGVCSxuGjW?=
 =?us-ascii?Q?KyPRCelLv1ru+usGs9GtIHPTVK3//rHrOhm2e1zlWSYE7Sh+XWdSJj20Ap/y?=
 =?us-ascii?Q?UV0Rgkitzt/jNwUMUyeYbzRyZPHJq9GJ+V9/xwYujm/GPfCMrMtz9d2r+zOS?=
 =?us-ascii?Q?a5eX7J4IXCRb0o3oHFMFemMn2aPM0yztgJRlqzW/RJ6JBk6OCYwT573FbLAZ?=
 =?us-ascii?Q?nNzx9rJsR6NAjrxgYc38EHbGMyNA12sP+jK7bBe52OZfvSlSc6VYgMmPAJcE?=
 =?us-ascii?Q?uoCgVr6K1f2e7gBzJpEGE16CWbTuHaAOtg6oUn+7uXu5PLoPLys/CrYMKTrh?=
 =?us-ascii?Q?F1eyEPctsWvcZruwhoC11NFRh0/QKuu1XVVaOI+Dc0K8+h4Uhh6E1fC+s1xZ?=
 =?us-ascii?Q?EQUOGCxpqqvrTV1pMxWUqNWHFQ2Y+AxFTgVgkPOzLIWSOqGUgxlJ37LPVyn4?=
 =?us-ascii?Q?gpPCreK5YE7w5uPAaHDKoT24uuvYxAQnTRepNGfiw0T6ZAVufWhkj9V6ciMK?=
 =?us-ascii?Q?4QGrgKVgaWFGLEfQkg+UswIhJ5FSuDXg7To3pcJ1d8R8qZHxBm8aAHYsrIAj?=
 =?us-ascii?Q?x0Z4b7A7I1gpQg9lKo4RNkgwoCnr56usmT2mFTRAqDd0OjoY/KIO564DEpqN?=
 =?us-ascii?Q?we5jAZfOkUUqu8dcnE4dToAqHs4aKmlfKhsPMN05N9o6MsCrX44EpgyZG8Es?=
 =?us-ascii?Q?ZxHg6dfrWSbX3Tcnd++zeJMDdLcTf+LoDiTLP3QVg1qgFCU+hxoN7tPmfkic?=
 =?us-ascii?Q?eruDT5YT5dYHNTCL940hGnDO2lpkEK7v7WWj6/qA+FDBNUrM0XHA/owl46jQ?=
 =?us-ascii?Q?d8zAF9XnpX8uttK0uLygycy5zq7h3rihufWPrbQClTl1qDPz2OZjrF7IyPyV?=
 =?us-ascii?Q?JOwLv/7Pe9HOI7X5hdN53UQnshbig5I/Mq+hpGeVVXpDvuAfXWbojHRs8xah?=
 =?us-ascii?Q?thh/mJK/yJH3DE/7IXAE309sX99xQhxh66S27CF8xHJhnzUOaujNjPWqLDNs?=
 =?us-ascii?Q?GrUyXUKhzsI/H9CBI9SLxmfBnN3f3yRxZTCIOvSBIIs6+GbTPjW08qBpXuNo?=
 =?us-ascii?Q?MNDzDtrUfEiUXg6z/jYDxLxWwFGpXrMG/djYIGHUea4VCBgaU/Q6EAoVgQy+?=
 =?us-ascii?Q?u+xmYoCE7+wqeyNP1HSwB5+kOnScvYY4QrafbJtMMDrx1menIpoP2xJUOmdG?=
 =?us-ascii?Q?2ZJbPwVgAgsCJ7EjhcARgBthx5Pogl5+0nzi/XV/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e12f922c-1b83-42df-ddf9-08dcf00cbe11
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2024 07:07:49.8711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leSHO9a/0HJxAUbCluKTQbQCO/aeMqF3WJB/jm5ElzB1Wp4sa7TqbitrEpaSUdqZFL0eCQCXq3jzvTMG8GrzwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6707
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
> From: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Sent: Saturday, October 19, 2024 2:20 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>
> Subject: [PATCH 08/12] drm/i915/xe3lpd: Increase resolution for plane to
> support 6k
>=20
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> DISPLAY_VER >=3D 30 onwards CRTC can now support 6k resolution.
> Increase pipe and plane max width and height to reflect this increase in
> resolution.

Hi Matt I have already floated this series upstream maybe we can remove thi=
s from
These 4 patches from the series

Regards,
Suraj Kandpal
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       |  5 ++++-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 ++++++++++++-
>  2 files changed, 16 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 90669c7f988b..72150f257969 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8452,7 +8452,10 @@ intel_mode_valid_max_plane_size(struct
> drm_i915_private *dev_priv,
>  	 * plane so let's not advertize modes that are
>  	 * too big for that.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> +	if (DISPLAY_VER(dev_priv) >=3D 30) {
> +		plane_width_max =3D 6144;
> +		plane_height_max =3D 4096;
> +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
>  		plane_width_max =3D 5120 * num_joined_pipes;
>  		plane_height_max =3D 4320;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index da974f4a25bd..bd7786a6161a 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -431,6 +431,13 @@ static int icl_plane_min_width(const struct
> drm_framebuffer *fb,
>  	}
>  }
>=20
> +static int xe3_plane_max_width(const struct drm_framebuffer *fb,
> +				   int color_plane,
> +				   unsigned int rotation)
> +{
> +	return 6144;
> +}
> +
>  static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
>  				   int color_plane,
>  				   unsigned int rotation)
> @@ -2589,7 +2596,11 @@ skl_universal_plane_create(struct
> drm_i915_private *dev_priv,
>=20
>  	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> +	if (DISPLAY_VER(dev_priv) >=3D 30) {
> +		plane->max_width =3D xe3_plane_max_width;
> +		plane->max_height =3D icl_plane_max_height;
> +		plane->min_cdclk =3D icl_plane_min_cdclk;
> +	}else if (DISPLAY_VER(dev_priv) >=3D 11) {
>  		plane->min_width =3D icl_plane_min_width;
>  		if (icl_is_hdr_plane(dev_priv, plane_id))
>  			plane->max_width =3D icl_hdr_plane_max_width;
> --
> 2.45.0

