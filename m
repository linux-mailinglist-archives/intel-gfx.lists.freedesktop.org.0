Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879A9C771E7
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 04:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B5810E7E0;
	Fri, 21 Nov 2025 03:08:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DvN9uvYm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5291010E7DF;
 Fri, 21 Nov 2025 03:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763694533; x=1795230533;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZfDr74dp4xVNkPvwEWLetX0QnuzOPoe2f0ytnq3UvlM=;
 b=DvN9uvYmfuk7VD3RDOetYuYEz66iL7FywWCkZtIOYnFCMNF5SMQ9NYK3
 DUVyLJfX8X8CU81Hb5FIU6p7/zma0SgmvsvMzw8/m58tuzmvgnSThqTIJ
 Fk+Qke7N5oFqWN8a0sisidbL2F49NFjPN8UFzgpQU5JgEYZ3fGwhWW+WO
 mpJD3LHkU5J5o9bf4JYMRj7IYAx+tPsjMI2YPsklWefMF8Co8uy9aSHrF
 iG2pFLTX3y4wnyV7a+VBS+zrYCypO8gQrtJHTrg+Ejv1vpoTamMwDA2Q+
 aq3fMw8alCcs5lJzAUp6gn6Qrc9xUYPgciKEpxsXWO7apI3hhOCrY6RIw w==;
X-CSE-ConnectionGUID: sfiUWz/rTxK4c38BtfnF/Q==
X-CSE-MsgGUID: PL4nkydQSkO6TKUVuLhHCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="68388029"
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="68388029"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 19:08:53 -0800
X-CSE-ConnectionGUID: vELQMox6R76pgS7NBoNz8g==
X-CSE-MsgGUID: TgWzea3cRXC65QJjj5k+pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="191803422"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 19:08:53 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 19:08:52 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 19:08:52 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 19:08:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VsT5Ku/gZq9nckXzjcOXfLtBZ3gpr4w9625iWvNUdma4iytUNKL0XVry8GTxizgeNNWrN+7bP6MrumAsi8hNodHQ5KjhiaAacweHUa7pJcl5CXAPcmiGbryUCLqAJI+NfOCx72s8Hmgrr/1ebSaYI9ypNbIskFQ9sA/KDgSCmX0ol2pXGqEE/GVP9iDEmFNWJPJwh/7QxxPptkygwRlBhEHuZWcAejt0kpWbn3HGFmDwoKriBZsiGbc1uqXlyei8bSe/oZ8iB3dDIMgmu925dyMXI4Uhxlrg/acqux3lp0Zpx1Tt2eLe8MMvQa9Xi+fZJ01YeHwsvFeBk9h55ce0vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I0IH6HaqKThRtvoLZNuEf4Q2yGGO48hDxLEIlzaowVo=;
 b=i76Hb9UUTe6OxVp8DrsxB0jErmk++y8VCNR1Y9M9Tb0V+T9WGesA3b3LrlCyxqMgfBfBmr8WzL4N4u7OOc9znsCClvbloFls59ljl8lxzSiAFUMgtjFFg3r8xylHuFdF49wG6KYNX9s260Uc0yVGB1f50FHOBrninfyXG1cZRmRHm5Nm5GOoulW9wAz6T+aOCdJl+FWY0A4Pp79eBbAt0wWVV39L4W0ugw58neTT+AOGC7ptlg6r6aT+Ild9EdgywZG5Vcwq0L9ujYrWX5kkrjcCq1t4ZtmZ1QykZdGNCJL8uTUYwYbBcAaEKBM5y4QOltqYtdXUyAfQdVKI5v0OhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CYXPR11MB8754.namprd11.prod.outlook.com
 (2603:10b6:930:dc::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 03:08:49 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 03:08:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 3/5] drm/i915/cx0: Use intel_port_to_tc() instead of open
 coding it
Thread-Topic: [PATCH 3/5] drm/i915/cx0: Use intel_port_to_tc() instead of open
 coding it
Thread-Index: AQHcWkKHtKRO7LZiLEGnl2+mPkDprbT8cYCA
Date: Fri, 21 Nov 2025 03:08:49 +0000
Message-ID: <DM3PPF208195D8D2F75E43A8A082438AFB8E3D5A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <20251120172358.1282765-3-imre.deak@intel.com>
In-Reply-To: <20251120172358.1282765-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CYXPR11MB8754:EE_
x-ms-office365-filtering-correlation-id: 52900584-0437-41af-b1a5-08de28ab4af8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?H3zAr0iKEF3i3FuF9dqvPzZJNc0tqBtmYy7VDRNZXh+O6ilX1Z8BzznNR6b8?=
 =?us-ascii?Q?hGsFduP8TPW9TNA/zBqvc+qVybY2S9mreBccCwpqc/9AKQtWjAeqVtZsgA5e?=
 =?us-ascii?Q?0mQ9xLkKWnl9hKAyEmit0RAtCTpvvyjRIpKm570k7K3j5uOKjs6w+d7ulwZD?=
 =?us-ascii?Q?JVeBpWA+GlyC4aX1IfSQTrP4j3PEbNh6pvxUNMCHQrGkTaEMWHgeVCM9lNZS?=
 =?us-ascii?Q?gUq74v8ozF1hfZI6VmjLNj8HmEQ5SYKILEhGncmTGcabItjcQ1Hu0UZKdy+e?=
 =?us-ascii?Q?jQe+CoAPTP5IFyE8jz1yXwDjHopm7ydioKsnsg2CqcmTd3JfRjvPdBwWgoKO?=
 =?us-ascii?Q?gAo0NlrZOzqJhKTvlWdcn4IPGvz8t52GaeIanO1dLIb+WlX0z/OU4mSEgtNv?=
 =?us-ascii?Q?Ul1auRmfrkQ6R58IqUA/0coVNbuVaUwY/UnMolluq+YKFIxMZc5bkz3rfx92?=
 =?us-ascii?Q?s7lNtqSqoXZ/AYsdI/uY2y2TxbowI/ayUrBl4n24noe9f4aVd/vOjb9GMGDS?=
 =?us-ascii?Q?SnCGV7Djk/yr9gwvLaJTvjug/StiS8qXSBbHsweiIEW+gXwG/3M1DSgM/4KG?=
 =?us-ascii?Q?Yskuual0GeFa8amrndal4fCfDH1HwHWhYNXmlFFmUzLhaWVNtg+mt41VWj30?=
 =?us-ascii?Q?JTaKUHz1wS8K/7Y6AadjXJYVzS3hf0brDnh9ugnGI+1j2DyxVmKviZGL3bs0?=
 =?us-ascii?Q?/KHkhvqeTYvA+ZQ1YLCDAvg95akMpiB9T7v1Oe2jtlhsorkouUoKpR6eTzFm?=
 =?us-ascii?Q?GiPd2TOm9+v8xnEHiNyi7EhivyNXT1piiI8K9NCyuI64qmH8VPfH+8HVo1n3?=
 =?us-ascii?Q?7pldbSabDNqG4m5AxAXIWSU/eusntgX6pTs+hzal6aqh3ohMwvIILa735P+h?=
 =?us-ascii?Q?IlOiezYIgxH+ooqQT2y3BOcRJa0xH5GTz/O9taWIbdYB4RN/upIUbtT3yd9C?=
 =?us-ascii?Q?C24L5Rc1EHomg6oE8zxpzuRHgv8/i1uQS0SbD47rBLJhoCPfEWFEbdDjRjsD?=
 =?us-ascii?Q?lFeP7w5uKUbv2wnTIpwQpRYh1XRx+t8LNgMzdFlh6QfhedYetDd7WEcILKqP?=
 =?us-ascii?Q?OlQ+Xs8aOA0eR+4j7hL5fpXIQokTKk0kGFdUQ11j5fUWwsAKPPwNXvIvoVk3?=
 =?us-ascii?Q?H4ScOttqLu1O8GtrHxMURuqdFkKwt2ionsK0ZeBiqCQyFmMjITM8kNUECpTr?=
 =?us-ascii?Q?ciYzxhG6fB1z+1c+DJhrGWbMNEnuopsBZQiIvvQLciJ6Xpa3OdUGxDOVAgt2?=
 =?us-ascii?Q?FJbwWN6+N/RLgP55pBkh15N0XqCrJ0h0rJRp8dlL0ToDfQYqLmsgEAvu3olP?=
 =?us-ascii?Q?hY+hUqhLr8eOEiuS3FjVffk1pNo4ZptQqcfanZHne3cM+AfrpHlh2S9MC73v?=
 =?us-ascii?Q?TEOotSNEaQ5946IUfFCwYXlNbC/m9iPhzfvdlozyhwWXLNnhCo/Y/9vVeFUF?=
 =?us-ascii?Q?Tm7yxtrgTmpJyY4C3LBfMLzsRwfTDoSKV2vTb2SDcU9PJVYuJChFpkl2iAyU?=
 =?us-ascii?Q?jyCiDvvZ78q672zCthHQxGxrrFaOGpZaqYyt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tTRaq33ztZS6rMt5j96AiwTm3GgJhanoZUim+k7oecjLFVntGfyhK0g1PrY6?=
 =?us-ascii?Q?Lpvknzds2Hzu+DsLgVht5impaUegxtETOgD2MXtJ1qv5r8ebRWZ2n2iVWu4l?=
 =?us-ascii?Q?egHUS+FKg8ZLDSVPcs8hBRZ/4GHpAQswF1+kFSqzWlVm4v7Br7WfH8lN5eku?=
 =?us-ascii?Q?k/+v6JMKkC6TI6cEBq4oICEjAD3NXgJHJ5XGXEMTZ2xcIuyqSvU36n8fYKzQ?=
 =?us-ascii?Q?o2cUzNHDGgwnhhpYGIQlr5T37HgDXog9sjr0QXZemWzCb10ov3uHbAtOPOqH?=
 =?us-ascii?Q?m2mVdnjfl0NTujJp6BJ4WbmZz8aPo0CpYElQ2XS5Gc2DG4WgPZ2wWMga9F5M?=
 =?us-ascii?Q?bCKH6xsD34Ym5HSCt790E/Y0/mtzWwC9tFXGWha81SZNIBBfgknogre/cLO4?=
 =?us-ascii?Q?t7vWwWmLk86hh024AT13NJtEr/vxhrkCziiPNSp0PtHxZe6UQk8AVj7HISD1?=
 =?us-ascii?Q?NRydXOnpnSitoOyfnzwnIR3ZRTgpInv/s31kVO8HWxN2+rkYPangJqqMxlJ6?=
 =?us-ascii?Q?sPZhcQvnqZ+YQL6BUVp6+QVljtpbj1uvs6eWXnKex5JQyV7nFCH7Th7EXZm5?=
 =?us-ascii?Q?0Hrfa6lxqaV9msbqbG3E+dP3xFenU63m03PqP4o1jc82StOOdIv6UWijdqrS?=
 =?us-ascii?Q?obp4o4gosdQaHq7W9x9GqnAIazhtU5ePBuErpTfXI4ur4TiIp+uTYPue6rvP?=
 =?us-ascii?Q?yZfMPm7312+3r9PikZlOpiyLUbBRPgh8Z69TDLWEKef3yZJtPSuRj/MSh3Lz?=
 =?us-ascii?Q?EWulk8HmcYmR1m/RLGMayYKPh+BrGUdlsGEGxDq1WUah8WR2XMGVOSHEz1Wf?=
 =?us-ascii?Q?qGrswtVhX9c+3z1bg964ZQydZJVxEwMK32reLfCp3ZQuEFngM3PTrMnEA63p?=
 =?us-ascii?Q?brUEktceYg16cYywlZR+6RQbjIipMiSWhcAiCm+TFoKd0dqvVOq+w7iKcqiN?=
 =?us-ascii?Q?+sC7FTfGaWxM4Z/hU/KUNxrZbmYkuZ3oHZ/YUmoybRlN4dhyONnudN0epu9m?=
 =?us-ascii?Q?7K7RD330OpjrY4FvlUL+QRKgG0AckTiDq45/Jq/iHxHK/G+EygoRrDUmFBsd?=
 =?us-ascii?Q?FIBVY1jz2M+EvplpztcI+9v28oziXigRSEjGViyRlgiNqVfoeqUHwotzHgVZ?=
 =?us-ascii?Q?DnPhMFYM4OJjvWfWXl8dyNOIaKkKyKkfvtaPx5zs8Z9n9jMGytaWytBIqK6a?=
 =?us-ascii?Q?jpWbWc8PXsjDXBEDBkJ/3/4qag6/doQOinw+j07Fw5M5WxTM/tc9Dh7Db++v?=
 =?us-ascii?Q?kdMKi0xF4e+VxBbDwVCPf477sj0xCFjnhBMHrImX1MV0zaV3zWLumPJNKzJK?=
 =?us-ascii?Q?dW3U4JPChqzs07eRTncViI4c/D36CgHawOubwr9zX4i2nSdIHuGfDMGGWn3T?=
 =?us-ascii?Q?W7gwkPfSyOD029VM+p3Lu8jYpzin7x6hXIaPIb7BdZgYepY5uuvd/VVzp55m?=
 =?us-ascii?Q?wmjhnyDWhNIRN7c7MvJAyAK3v5lQ1ngI5yD+aFeIVAESvAqPfdUNcKXIEPr7?=
 =?us-ascii?Q?qCysWvh5EcTk+LOd+PjB4r+R7+91zvrH+d7L9mRCzWZe7PJO+BtVCfWjwMcX?=
 =?us-ascii?Q?CiHzVACJSZrz8mJXnFiX9PK3SO5f3vm/6VN49ctl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52900584-0437-41af-b1a5-08de28ab4af8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 03:08:49.5245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: agaGfpSXfq4SOuMOI01p0sZuEqNimeW8ciKSCpehZG4O+tke1FRqA6TcK381U9l7cHFl0g93AoK47/VPs9N7eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8754
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

> Subject: [PATCH 3/5] drm/i915/cx0: Use intel_port_to_tc() instead of open
> coding it
>=20
> USe intel_port_to_tc() in mtl_port_to_pll_id(), instead of open coding th=
e

*Use
With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> same.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 8ae8cc7ad79d3..e0e5e5f65d193 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -206,7 +206,7 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port
> tc_port)  enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *dis=
play,
> enum port port)  {
>  	if (port >=3D PORT_TC1)
> -		return icl_tc_port_to_pll_id(port - PORT_TC1 + TC_PORT_1);
> +		return icl_tc_port_to_pll_id(intel_port_to_tc(display, port));
>=20
>  	switch (port) {
>  	case PORT_A:
> --
> 2.49.1

