Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B88C77156
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 03:56:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED85C10E0F9;
	Fri, 21 Nov 2025 02:56:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cHzZsdA4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E28410E0F9;
 Fri, 21 Nov 2025 02:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763693782; x=1795229782;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SbG3GHveQjFGKRZrBgo7c2aXRO0M+IaH1IlW+IHNPxE=;
 b=cHzZsdA4xFvvDLWAswbpGopTgr3e6yTWi4i4FEjGR/1oGRbFCPHYvdLa
 j1yyOk9fXm/6L3106THDc2vcAU/MJmLQgRnKXqwOIrCRC1cOQd3sJDKV0
 44+lH/yA0DLU9mQFmh/8v5LXFdYRJCIO+Awi5P3cYHdJEy25wr3PD9jST
 UQ7Tuvrl3N/BHCy71nyK77DmL0vpml4Jmw7abpsDyop4E24RgwLtQkbcF
 9QuV0jRHAqS4VGflnq32QrrgynKt2m3Aey3AanF2RiwcxfdeUoEr7ViDf
 BNaccAKbtvL5U8NYEsy2au5wfsKvmSqEh/8YVIyJEqkvFjibKavMcguXK Q==;
X-CSE-ConnectionGUID: c/JSuFAGS8aRL/CtgvPmyQ==
X-CSE-MsgGUID: g6xXIpa4Q0aHNX0coIk4ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="53353458"
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="53353458"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 18:56:22 -0800
X-CSE-ConnectionGUID: Ve1AiRqVTzOImLerXaGwhw==
X-CSE-MsgGUID: 1NNfe4eqQBSZjEuBOnrSSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="191574747"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 18:56:21 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 18:56:21 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 18:56:21 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.25) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 18:56:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xj/PWW60RHAqCIZIcirbU1/X7Lg6x1YO0lFtNDRYp+6Kll/6iFTV0CrfwuBTt/4e+EPFyBz0xpg1O7h0yfan66v0Jgru7n3DLr6+5k0sy5Gone/wsHO/kuAOzMfXt3aoQybPbOhC7eUz4aLa2iNNi+0hnSFJHER1U5+tHnqaHwLaufuY/UsS5SdLocRgPKLcVvkm5/UFU0/7LPeaiT32HgGv0MytcSFa1159x8Zlr8XK8bPgFcmBUXELTEK7aKyy1NIw7batX53MfIWvOhr15odwwwVCrIFrpbbeMnHXK3GryboRqlbBdL1hP/y4zc+hBGW4D2PCajT+YcmI2laG8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H0vnlh8E5aeUf/HXeu0IvUqdRV81eGBKnnqsUBTqF5U=;
 b=YtnStRN+17GnKFd9FgzGWqxbRUhG1VneZTNVCqTms2bTiueGIk5yqtgVX+e8wgCgm2q8lLZ68kZ2zTt8UB/8Cmo8QnlwVBTEZ+LRoYp2D6IYuE0q2jV5MUInfvM5GbQ/9NI0fFoadCG4R7fB6GOh2x8gilqjWU+39Kqr6BqWL36jLZNvk8yHF6glrjjV8tQOYAvs7ydEvdWCKw1R8l8+Q0mzb2CpqSYvvKjfEWyzCHaSLgUC60SZuCL6ANPv9aJIhJPKZ0ctXU8zRt8GkCEeC54MgO+Nl0xjCNMuOurC2KhMeVR/xY7l4HqMh/idOsN8th/4RBjNUcAXYflpqLzYxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ2PR11MB7715.namprd11.prod.outlook.com
 (2603:10b6:a03:4f4::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 02:56:16 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 02:56:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 2/5] drm/i915/tc: Add separate intel_tc_phy_port_to_tc()
 for TC DDI/PHY ports
Thread-Topic: [PATCH 2/5] drm/i915/tc: Add separate intel_tc_phy_port_to_tc()
 for TC DDI/PHY ports
Thread-Index: AQHcWkKGA1hMznY6hk+SMB/bhdVZ47T8cB9g
Date: Fri, 21 Nov 2025 02:56:16 +0000
Message-ID: <DM3PPF208195D8DB44096437221C6869BF1E3D5A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <20251120172358.1282765-2-imre.deak@intel.com>
In-Reply-To: <20251120172358.1282765-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ2PR11MB7715:EE_
x-ms-office365-filtering-correlation-id: d287f951-aed3-4db7-b746-08de28a989e9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?NZZVjIaylRzrgM1xj2LcA22HpLtPdd8iun7OkPwxxsV6mDtu5wSWwIkjjDvh?=
 =?us-ascii?Q?5bKFBZrmDKGSbSxqzLCUG6RFAjTBtPqrznV5pUVPxkT74Vs5gvqr9QBzgtVQ?=
 =?us-ascii?Q?XytUNMfiRa4Kp2kzsAPNoQNpqC+D2mMKcnvSqEiE1q77dN9WHu7RM6wEEH9R?=
 =?us-ascii?Q?Qxbeweun8NPzrJT1GOjcdammJbIBefYz7RqhVf1G9KJqacLmwSS1W+3pIWU+?=
 =?us-ascii?Q?7Cxq6K7RQLAUHWo6i4dhekEcZMk0e+JLA6KZBNeTdgJTnoz1QKkzPJHgocRd?=
 =?us-ascii?Q?ZVhM15dLjzTwNukYywvWM+rg9JbwTSK0SPzge57wu8aKMpr9xdo7D8yo0duZ?=
 =?us-ascii?Q?77rgWeM+lAJ6xy3QkoUrYOC+2dv0U3n7I/vMOJro2/oe9wDD3RgI4evSPqMo?=
 =?us-ascii?Q?Xwbt/weRdOPXEDf/Y8tJ4kRllfm0mezJ1/ykconypxaKv9PlVZiuXJlPHIQX?=
 =?us-ascii?Q?wNeqwGt2S+CaAF8r6YRcEe75yvKmGi85zyEB+OPvxOJ47gZdz/3OuJgDdiqy?=
 =?us-ascii?Q?MzRkWdBoRXgNY68DN1vYlhqcDRvdITcpbg+EdYcM+WTJ7aesMkZy8yGGzsig?=
 =?us-ascii?Q?VNOePnM7pbwWvtNB6Gr4iSIz1+S9uTtZlVgKtdWznnQtB45PSQ2TNvoFtxMb?=
 =?us-ascii?Q?X9xFHV8caUpNUeKPtv76rn9At+HE4n3QBvYyZoBcpHtTrSwNLYcyXE4fUUsE?=
 =?us-ascii?Q?nJoBkIdP8B/YqvWE0NPR/IP+x3VTntWIbavTmHR9CuQZAjtBqIaG0vezKCAi?=
 =?us-ascii?Q?fo5sz0Q1kcxTte3cHDWAeryfNdLgtSDwUOp45Osm1B/207rmGt+nWWDv5kak?=
 =?us-ascii?Q?b0Pby3j6c0YH54TwersI1kRzBSO4q8AguzTANnT+8L/cGrskguVrT18D/0z0?=
 =?us-ascii?Q?43vcoDdJoCcGQQWB0A9yU9WbEZwXUuvQ8kW0Gevm+gkTJlvVj6ME5AhvpJ+0?=
 =?us-ascii?Q?NRrzVYCt76RNWWz555TR82h9cErat5xPQtgZFTPX9N40rjRJ1+zooy/8YO9O?=
 =?us-ascii?Q?TNYFo2Sf/hoOA1Tx4SUeHX31JwvqyxclSFIa6cToJc2aoXGFIAcauy2VLtvO?=
 =?us-ascii?Q?OYXJeSFKw+cH46ibS8sWASexPCqsSQbHpKpJWXxb5vG6VNqWxMliWBLoAgtw?=
 =?us-ascii?Q?XCPljotj2ljYDbvHDi/KB4IhL44NUbuN/wZ1ebBo7By31GX+YA7kpcIGhiUe?=
 =?us-ascii?Q?1uiK/cKqW51QURdNJTMi5TDT8adXsw3iNMbo0euQZh8TA1IdP+bZ2zD9m1Rj?=
 =?us-ascii?Q?yBioOkMKvTanpxjaIzpolGfBqWiHEUtjFaMAi6t/bmZVXtpFx3noqtVd3+Va?=
 =?us-ascii?Q?QbCaGZzc38OKTS5fdrjB3Y/HbyRWWpOgonAj2YJaeM1I/ycAW4wBDOv1+tdr?=
 =?us-ascii?Q?kgUhrjZGUAc8Thfhu6nPRYmz2f2wPAJ7tTcSmRgWNcbj272W5dgJmcLyv4v1?=
 =?us-ascii?Q?vvrQJGIltvbXKMiOK6V1txqD7ucDHewEmRQLp6L5UBrs9153mb4S3tp/JzRM?=
 =?us-ascii?Q?NwUhT5ek/x3OzfrjZrDDZDUs763FLzEVjbyt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EEG8J0RGi+MLPyhEosCnKqI7Y+TAVskypAYa5yvcxCz0X7Zqx69sUgNMMCwR?=
 =?us-ascii?Q?3mf3nO9eMpqwSwtD5BN9F8s3k/LsW6O3Vpc9V7B0QE6n5FnLQLzs49jDU0ee?=
 =?us-ascii?Q?5/yGR+hv7nOGlKqKL44HY3b/zJJlRxJxDmzA93/pJdWBkA2dEegA6l4iSrPh?=
 =?us-ascii?Q?r0cY1uhZx5bPnfraS8IiCH0MnKKi/suYSj6nFcnllKDMQoGJtK+wfIig/YD5?=
 =?us-ascii?Q?xDL00C31zAcfzjrEgfwRDrHGWFAFjiKqCzdw7RR9OFWEo2IkvGmAdmJySeMB?=
 =?us-ascii?Q?G6Z7joVH3cnwIqMvzoBJLZM3luvOxcp/xO3whryGBii4eRcB2x68OnSPnGLT?=
 =?us-ascii?Q?5IzVvjIoVIfKLNUw9SHlFarzWvD6Plm4sIeA9BxmH8zMsGF1KjZ/nzN1xOAZ?=
 =?us-ascii?Q?IG5Wpd7TW5QB7C8SuuI/E84HAicm6C89KZLjwia/OJXf7SAeMreCjIgRitSo?=
 =?us-ascii?Q?YYr9EOcMgORbsaOja4byM1ZaC+1gZwtVohjQ5GvNvZOaCYKhLcwmJ4l4kLaD?=
 =?us-ascii?Q?m49aITtKcKsyLQPjx5z5xAjBX5mZSSNHC6gk9dJ7/zbTAhHsBmB4tscjFmEn?=
 =?us-ascii?Q?H2D3Edn9ViTopJ5FImoMbgawXDU22P4k6TLvFoxf9sKKMG5/1EGJhnUgqU22?=
 =?us-ascii?Q?hx4IYCMXoBSy6w0jgYYlD92sBpn8EmIsQe6f+OH8nItDAmkN48UPitBYenOM?=
 =?us-ascii?Q?ctd3T7S2kyxVsnOdnUdfAmsZsDp0BJ4SkFcENCNEBZguGwHTlm/8PiZI43jS?=
 =?us-ascii?Q?46i2fAtVfP70fbeGXcAEksIUa3e8MTWtOudw17luOOFDFiPaC9w29zeDNQnU?=
 =?us-ascii?Q?DmwZT4s0nGic3FXdfOyduUckggMdfTV/e7X7MlxDot5q2UzTCsbMXoYaln9z?=
 =?us-ascii?Q?NnOMvHH6bZa2gGlADunoLFubcJ0XtsQDz4eT/sCwwBwLuBHv6UM7YKKH3QSU?=
 =?us-ascii?Q?GDd98zaVdSpk/CQGDnWWspyI37GHLA1I7BmTO4/+goM28Zm2Lvgx++ufFehE?=
 =?us-ascii?Q?TvF9aMteQ9YYyb50dHWZ0NPqoJ07o786PvzrFKBAbMgHyoWJA4zNazjDsjnZ?=
 =?us-ascii?Q?VjqfwmgvuSCkqi/1b73a0hunWNCyzTgLHhkGgLmY8fxB1HxWxUbXdNUhHqeC?=
 =?us-ascii?Q?nwUlWmnuSB61sfFPTJtlxdVdBgJ14A7nezcXTvJMm8TAZT8j/x5w2faaY5Zn?=
 =?us-ascii?Q?h/V3yX0Qbh1XetvF74GGFCanh2gsv9Dj3VTtM4ZXY6TnPmgFinImPBppd4mz?=
 =?us-ascii?Q?2s9PAGCW73CQHVcK/Qask7/sMW1Q3yz82r3/mXPjfP0E7DcZ7TEHVzjKufPQ?=
 =?us-ascii?Q?gE/l1Ct7+7RRzOVSgRhbLPN9Iqeb3bHa7Pg+uZAST+5+qZVtazjIlBWJQx+b?=
 =?us-ascii?Q?GuCWE/UC1AKNU5Zj8XZ6JwzotcpY+wI7YoycXiouk1WnHaOpe3fa8P9o4lla?=
 =?us-ascii?Q?7+Yw2WjWsFQvgulAY7knMLYvkHKEOsIVSqDIABUEGNGAjkdvJ2MC39hLE7S/?=
 =?us-ascii?Q?YZo/4w6wXlYFAPpbusDlPAENTtICWno9PipwLrTzI0k3MPZb/rR8RzA9Suh5?=
 =?us-ascii?Q?qAcKK2dVPm07FxuON7ibiUZpnA9H8jcs593+WFF0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d287f951-aed3-4db7-b746-08de28a989e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 02:56:16.1254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xp6ZRMNpLOSRWbFy7/qZp1qFm/ABMzlaLTZU1PZ4m+RSr8+xHj3EMy4dO/fiTo2RDS4ztRThAHt9M7mNqxZC0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7715
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

> Subject: [PATCH 2/5] drm/i915/tc: Add separate intel_tc_phy_port_to_tc() =
for
> TC DDI/PHY ports
>=20
> intel_port_to_tc() returns the PORT_TC1..6 -> TC_PORT_1..6 mapping only f=
or
> DDI ports that are connected to a TypeC PHY. In some cases this mapping i=
s also
> required for TypeC DDI ports which are not connected to a TypeC PHY. Such=
 DDI
> ports are the PORT_TC1..4 ports on RKL/ADLS/BMG.
>=20
> Add a separate intel_tc_phy_to_tc() helper to return the mapping for port=
s
> connected to a TypeC PHY, and make all the current users - which expect t=
his
> semantic - call this helper. A follow-up change will need to get the same
> mapping for TypeC DDI ports not connected to a TypeC PHY, leave
> intel_port_to_tc() exported for that.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  4 ++--
>  drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++----
> drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  3 files changed, 22 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 8471bdab5c62f..ed9798b0ec009 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5148,7 +5148,7 @@ static const char *intel_ddi_encoder_name(struct
> intel_display *display,
>  			       port_name(port - PORT_D_XELPD + PORT_D),
>  			       phy_name(phy));
>  	} else if (DISPLAY_VER(display) >=3D 12) {
> -		enum tc_port tc_port =3D intel_port_to_tc(display, port);
> +		enum tc_port tc_port =3D intel_tc_phy_port_to_tc(display, port);
>=20
>  		seq_buf_printf(s, "DDI %s%c/PHY %s%c",
>  			       port >=3D PORT_TC1 ? "TC" : "", @@ -5156,7 +5156,7
> @@ static const char *intel_ddi_encoder_name(struct intel_display *displa=
y,
>  			       tc_port !=3D TC_PORT_NONE ? "TC" : "",
>  			       tc_port !=3D TC_PORT_NONE ?
> tc_port_name(tc_port) : phy_name(phy));
>  	} else if (DISPLAY_VER(display) >=3D 11) {
> -		enum tc_port tc_port =3D intel_port_to_tc(display, port);
> +		enum tc_port tc_port =3D intel_tc_phy_port_to_tc(display, port);
>=20
>  		seq_buf_printf(s, "DDI %c%s/PHY %s%c",
>  			       port_name(port),
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 6c8a7f63111ec..a8a3e80001870 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1859,17 +1859,32 @@ enum phy intel_port_to_phy(struct intel_display
> *display, enum port port)  }
>=20
>  /* Prefer intel_encoder_to_tc() */
> +/*
> + * Return TC_PORT_1..I915_MAX_TC_PORTS for any TypeC DDI port. The
> +function
> + * can be also called for TypeC DDI ports not connected to a TypeC PHY
> +such as
> + * the PORT_TC1..4 ports on RKL/ADLS/BMG.
> + */
>  enum tc_port intel_port_to_tc(struct intel_display *display, enum port p=
ort)  {
> -	if (!intel_phy_is_tc(display, intel_port_to_phy(display, port)))
> -		return TC_PORT_NONE;
> -
>  	if (DISPLAY_VER(display) >=3D 12)
>  		return TC_PORT_1 + port - PORT_TC1;
>  	else
>  		return TC_PORT_1 + port - PORT_C;
>  }
>=20
> +/*
> + * Return TC_PORT_1..I915_MAX_TC_PORTS for TypeC DDI ports connected to
> a TypeC PHY.
> + * Note that on RKL, ADLS, BMG the PORT_TC1..4 ports are connected to a
> +non-TypeC
> + * PHY, so on those platforms the function returns TC_PORT_NONE.
> + */
> +enum tc_port intel_tc_phy_port_to_tc(struct intel_display *display,
> +enum port port) {
> +	if (!intel_phy_is_tc(display, intel_port_to_phy(display, port)))
> +		return TC_PORT_NONE;
> +
> +	return intel_port_to_tc(display, port); }
> +
>  enum phy intel_encoder_to_phy(struct intel_encoder *encoder)  {
>  	struct intel_display *display =3D to_intel_display(encoder); @@ -1902,7
> +1917,7 @@ enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder=
)
> {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	return intel_port_to_tc(display, encoder->port);
> +	return intel_tc_phy_port_to_tc(display, encoder->port);
>  }
>=20
>  enum intel_display_power_domain
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index bcc6ccb69d2b5..f8e6e4e827222 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -451,6 +451,7 @@ bool intel_phy_is_combo(struct intel_display *display=
,
> enum phy phy);  bool intel_phy_is_tc(struct intel_display *display, enum =
phy
> phy);  bool intel_phy_is_snps(struct intel_display *display, enum phy phy=
);
> enum tc_port intel_port_to_tc(struct intel_display *display, enum port po=
rt);
> +enum tc_port intel_tc_phy_port_to_tc(struct intel_display *display,
> +enum port port);
>=20
>  enum phy intel_encoder_to_phy(struct intel_encoder *encoder);  bool
> intel_encoder_is_combo(struct intel_encoder *encoder);
> --
> 2.49.1

