Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5441A995120
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:10:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC5510E555;
	Tue,  8 Oct 2024 14:10:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fMKyrdrZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2892110E551;
 Tue,  8 Oct 2024 14:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728396625; x=1759932625;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w9Y9f1cyn2r3Fuf9/o8WfJR0saRQBTTopQfC9vOGfzA=;
 b=fMKyrdrZFWhDND6C7AG8zroS8kbeOx3gMak9mI/cHcNkKR2yujLk0ZAe
 OAR3EpJ7An1WrWfHlDfZuddBhFc4rgsq8W6SAB/S4yN6k6zrGNONrETgx
 XzqwzunRe9r1/D28/hlsmIdHTKkuSOmXH2CTsj3kzjL1heS0XFdLvvkf7
 lH1M97snOsUDnbFNKQB7vry/1I8XHorfzPQVakw/KhXh3LPj0XoK5Ybg6
 6TJC9clBjaMcQa1r0wisYRaaUfo8BVvadBALSXOT2BHZMrGCL6ZObNK0N
 EtnaNn3iUTC+OyGdiS/NZy95ABfjqoa1KRaNTDfjnDKAPqMr5YuL6ZFYk Q==;
X-CSE-ConnectionGUID: 7OTpk2ZPRdKmtVTenrfygA==
X-CSE-MsgGUID: KafqrXF9QbWbm9G2nl1QgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="31297891"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="31297891"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:10:25 -0700
X-CSE-ConnectionGUID: /RFDJI6bRbKhP7pFs5eTew==
X-CSE-MsgGUID: TmRCvOByQdGMiRTu/bT/nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="80860470"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:10:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:10:24 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:10:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:10:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:10:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FLkNw6PjhDfGDBpeMkr8zVXURBCuw0Le5QOpJImyfcmx/S9vmMJn6m7hSL1Pif0wZnApfEs/cg8AbK4ohHPSB3LEjiju8XNggA+GrqTdUY10Xc7Xm2H4VAnoE9JETnzsItXCEx4hDXTlAOoJl66wkXEZPRNy6VmnsvlrwkFgkFCDe1Sf3dJE4nwz0ke3Rg9pYkFuBi6GwnQDVwwZYZ7PV82gFmsJopbWy3eYIEVs3m6driv2HLbrcjLcE38fy7u4oP8LTRKj0EetqBraNzhmxkPho5W16KKoy7zQi2yAFFsGEk84w1e2Zv1KV20GFvf9/hUyyh5HzTpmytTUCtm3zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f+tv/xjNaiY1KHvuEVqjqOHS5NnxFRWoNDsqUdoXaI4=;
 b=aP4gADqBD5jIWX0buM2QZmM+Pa1ZsKU8WELDcaXf/1AFow16UEamLQjWE0iPhQ8+SNvYNUwINPW0L39DxmwQ7AVo/GaN4RVxDLOC1GMyjkXh+GYWCBs8NbBBOLAfpjFxqxT9aDVRtZPNfgcITBv4U4uGCYClBavkMUV0o7R6fAUYV2YFe46eHoY6//0ZjF4AudOHS7u7noDUKWyXDbvA/BVToP/zU8hecV5OlxXFy6QUL6q+SpEYnrdekTuDsYHIiPgLHG7mi+Bt6Yz4oAq0pGACgkeZ9TT9F1ya4Wa0lCOlhg/yImPozJyIQf3UjbHVlgt8+JiyITz5gla0IVxc/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CY5PR11MB6511.namprd11.prod.outlook.com (2603:10b6:930:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Tue, 8 Oct
 2024 14:10:11 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:10:11 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 22/31] drm/i915/display: Move runtime pm related calls
 under intel_display_driver
Thread-Topic: [PATCH 22/31] drm/i915/display: Move runtime pm related calls
 under intel_display_driver
Thread-Index: AQHbDsJ/t53pgpGP5kmS5+svu9Y3QrJ8+Xww
Date: Tue, 8 Oct 2024 14:10:11 +0000
Message-ID: <CH0PR11MB5444DA1442B9EA39C14455D0E57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-23-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-23-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CY5PR11MB6511:EE_
x-ms-office365-filtering-correlation-id: 77f0e973-277f-41b5-014e-08dce7a2ec70
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?frcHDpvIkG/6oiydNidzhZ5u+g9CywUetQmCiNLsD636GT5c2o9EGkfP5jyJ?=
 =?us-ascii?Q?p/QxAjDOaINdaTAQFl8gCCnI0cCod4GtwmTt0HkYQAKh1HR7aafVkvy4skE0?=
 =?us-ascii?Q?mvj/jlwXViRr6WggBVhPRUi0ClBaFTCUk86VbwNfGeTLMM1gKvLdoHy0f1yI?=
 =?us-ascii?Q?SMoMXiYg1xqV4P47eST7nRJBH8OSVGlYhuAjPknFO2K0Xih7ybZaksVxUs9U?=
 =?us-ascii?Q?FFkWjoKyzkN1NLhtkXhXeIyH735avuhcvPgTMo6pRlioFk2O8QYKW2MmVX6B?=
 =?us-ascii?Q?3YEu8I6/FcLIeQJr/0iNjkAi4OMH0Dr6PrOsA6rHy9dDmNieeIr756ZUJb+D?=
 =?us-ascii?Q?ZbKne1OBDsMLiQYAtpd4xvD9GTvjd+adkoV/0FYg78fBRvsfoqOxrEGD5yOR?=
 =?us-ascii?Q?XUHtlxaLeANxscBlmhOiZBtGa5PgfWmI9/clz+Vo8uMiKIG+VvxAK0B9qq+z?=
 =?us-ascii?Q?yG153AIv+2Yd00K/B8W/YgJ4EeOANti3ji6zB9DOXnKSxddbP78iFvFZSa0V?=
 =?us-ascii?Q?Ztpg+yO3DfKtL2cYz9GuzImdZG/WV4DKfWW/yVEpa6YILhPXH3F58cu9a8y/?=
 =?us-ascii?Q?PMsS6GrklP6CJrRgQhShnNWan70Ty7T8dbdDZO0Ji2Mcs8ZG2QQ+Xqi/PggV?=
 =?us-ascii?Q?fn3rFrKB/OG5gI+6nLJHd8x8MaoS6YpF5IjwbztdQbzx/8X1uv0+ZiiRGLT9?=
 =?us-ascii?Q?LFkw38vmFd/1WAOCGEoXMaw2F4gTsxrfCxb62jYqWgEeLZrv21bXJKP86uB4?=
 =?us-ascii?Q?O3lqWThj2SAvXjagjiikz7XXDyoX6VCOEBl0zp4vRMOd1oplPXENRBqnNgax?=
 =?us-ascii?Q?iZjy43YGMA35YkNkPgthFSWPHw3JBln/HbTywoVnQGvdUpLb8NuJMSLsMp/W?=
 =?us-ascii?Q?a5uIhEeJNJts+KbeaZUL59eG9ciqEdSxrLd2HuJjGK2FL+nLO1cvXGZ42Rub?=
 =?us-ascii?Q?vBRUPFxm9rl3riZxPbFgfIx1b+jqt25ilm8/UqElzf7DSbVVJs8UsnBXHeoF?=
 =?us-ascii?Q?Og0Wua69fFd4dcuUroiwU+cu25nmVslwwFu5wPC0Z2QRjxDvLzG8palMV7Bm?=
 =?us-ascii?Q?iVLgmGiqRbdxSSUERTkGzjBvRXHJwhPrt5WirqDrMv/eYZur1Co0OVbPNgBn?=
 =?us-ascii?Q?soWvFZ6fnrI7bA5XzqvOg8eVNTbfcVMEcHyje2pOkjcjhu+osC1ZV9a4Qk3k?=
 =?us-ascii?Q?dkSLrcguUpHEtY1tnUcYnlAWQXfOYgp4Qxhaj+n0AROwCt9g+pTyUtZ5WZXc?=
 =?us-ascii?Q?xtpEDSNcAC3OdVzUtWHx09ukcLr8m8GN85tv/i8UPGtLYKEV3aUpf+XpVK/S?=
 =?us-ascii?Q?33Y78PQSTaDsXBe5mw7Gxk7pwvgpk+7bcxLEwpP10VE++g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wbG7NZb43hxQKjZFb6BrHOf5l62fUkNZw1rqt3HbtnNjsd0P+9oVtddyD2dA?=
 =?us-ascii?Q?DAJCmxaI+O8FbUWIC9kjJmp69QFgVwhgYQ3Tad6ZMUMjPW/C9N28UbPQzvKt?=
 =?us-ascii?Q?WxPPF5Y+5MW7IR6slqd5pbohWRRF5Ic5S2poN25Bzhch6zFJxeEcl/P4JHkR?=
 =?us-ascii?Q?Bi4ZCsESI1yJjlU5cZSzU/1nWaBSVBg2HSY0V9oU9jbN/3SzbVWElzUEbiec?=
 =?us-ascii?Q?mfr/9ecwp1KHSwzshMYx2l/CesGuAuMtl1F6Ud3nc+oo/cGiOnrIDpXb/Hvb?=
 =?us-ascii?Q?uElYlahelVvC+vMttdX8gNXGZ+uG5AewA4LJ2aclnYW9gBLnNE++ggqEpHLq?=
 =?us-ascii?Q?VZjoR3SJHc3pZJW4KuL5Bm5IBpUBt9di8sMaQNYX0sQRlYRzM1sZqORcfznW?=
 =?us-ascii?Q?KN708rjp7hjpYUiyiUUBXDas2/uxLmyYQzVCvjE6F+ilnd1naG7GUaubqSeI?=
 =?us-ascii?Q?E3WAYmYtvFmv1kfXfwaY8Ro81bPJald5Fy7wOtM3p8YnbO2tXmTMcjghhW3A?=
 =?us-ascii?Q?tLNaqk9p0GmkpAB+NTkFk3NmgN55P6GYXFkMLpZ8iD4YXbFdpuyWvU4LiKwY?=
 =?us-ascii?Q?BHn50OLnh6tZtrt620UKke3y5BvF+xkiF0MGSjqipaNTHS9nbi3+likZtiQB?=
 =?us-ascii?Q?Ro27XO5L4OLt49SGsZwQHkFGhOOeSSPXfh8vaw1VXvUesj7w5J7nVHNgXweA?=
 =?us-ascii?Q?GNJECw8ss9fGKbZscQTw88Mm7oCz83EtazCt9wt3RTiXTPUtyjtxjGJYu634?=
 =?us-ascii?Q?ZwDcbCv91e+TY+QOrVVId0vCx/JPER1D4McmEMmVG8zryeu1StRKfF4qfK7I?=
 =?us-ascii?Q?CiG44mmW0Vy4Gnz7PXzp0eF1zmTj/ncPwGbIIwp4cMGjTNo1aTNhc3HQyIYf?=
 =?us-ascii?Q?KrKWj9jGTxhlKi1oFusc6/MZexd5iGQTSEGMlWvPjzh1HbcGkOkOdLIFfHkT?=
 =?us-ascii?Q?x2U81jeQck6MU4c8DGrLXWFazVssjEOmfO0ARm9UhUJoulxLUFImu7UFZ/5L?=
 =?us-ascii?Q?WyhuggUpvtWGrllh6aAsSvtqZdOTLfEQGeB32x8ZqnVYZb3FMIQ7b5Wsn71T?=
 =?us-ascii?Q?CVEXLhR9Y9qtNyLAiBHkmpLymekf4fDtBYuMvAE8YPhNOSOXy1b1+Vw/7ZSP?=
 =?us-ascii?Q?3Vo+wkBz3Ey6p9uryQKt/W6G/NLiBSLKsP6GO2c8gGnMnYeNfCORdKSdDsCi?=
 =?us-ascii?Q?z04ilkycWuMoKk/jkGyy4SlX+uZJPhNq6gq03V9QzSGrtSzpwZpg+PpXsUGy?=
 =?us-ascii?Q?CMSqefstu9oyo7h2vCiAOuKmlYpXvM/x0E4bElwdedoS+HbyZEEfT2ri+9HG?=
 =?us-ascii?Q?KDH0UV8XrHh9CUT7hcMcgR0xIU2aTqnigh4ZMTx9rJuVRkCkPkF1pvtDHkg0?=
 =?us-ascii?Q?AzSVZ48B+pWFANcJ+i7odj7kIMrdAjv+oNyzHn7FwE3xlobqkdOSSaMpeA7i?=
 =?us-ascii?Q?+PNdmgdxuWpjEC2UeF8VSBmRf1xKKPn1pdpZD4y3FLNna953DCqUYtA4QUMM?=
 =?us-ascii?Q?qBngf/e8gDIGF90BVXo0c+w3m5SXdV+Qa/ZY8alxMPE4UIR2gxwaSm6E3vsG?=
 =?us-ascii?Q?9sJg3sSsznforaoNczoCVyS0pYOeH1QRPoiyEtURGZsVgOMPlDZkns8JDsMM?=
 =?us-ascii?Q?WQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77f0e973-277f-41b5-014e-08dce7a2ec70
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:10:11.7032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oWYG4UcviEvt7Wpb1/m4C4SrUBQhdPA9is3igZRzI60NkmLhaeFIp8QW1l/Rqrh88ss9hyTgKkwRwCW+w2822usEMuLW+QkUGiC/I4Zdmfk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6511
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 22/31] drm/i915/display: Move runtime pm related calls unde=
r intel_display_driver
>=20
> Continue moving more display stuff from i915_driver to intel_display.
> With the end goal of reconciling xe and i915 sequences.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  .../drm/i915/display/intel_display_driver.c   | 58 +++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  4 ++
>  drivers/gpu/drm/i915/i915_driver.c            | 46 ++-------------
>  3 files changed, 66 insertions(+), 42 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index f3a586913c6f..62a7aa56f0da 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -856,6 +856,64 @@ void intel_display_driver_resume(struct drm_i915_pri=
vate *i915)
>  	intel_power_domains_enable(i915);
>  }
> =20
> +void intel_display_driver_runtime_suspend(struct drm_i915_private *i915)
> +{
> +	intel_display_power_suspend(i915);
> +}
> +
> +void intel_display_driver_runtime_suspend_late(struct drm_i915_private *=
i915)
> +{
> +	struct intel_display *display =3D &i915->display;
> +
> +	/*
> +	 * FIXME: We really should find a document that references the argument=
s
> +	 * used below!
> +	 */
> +	if (IS_BROADWELL(i915)) {
> +		/*
> +		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> +		 * being detected, and the call we do at intel_runtime_resume()
> +		 * won't be able to restore them. Since PCI_D3hot matches the
> +		 * actual specification and appears to be working, use it.
> +		 */
> +		intel_opregion_notify_adapter(display, PCI_D3hot);
> +	} else {
> +		/*
> +		 * current versions of firmware which depend on this opregion
> +		 * notification have repurposed the D1 definition to mean
> +		 * "runtime suspended" vs. what you would normally expect (D3)
> +		 * to distinguish it from notifications that might be sent via
> +		 * the suspend path.
> +		 */
> +		intel_opregion_notify_adapter(display, PCI_D1);
> +	}
> +
> +	if (!IS_VALLEYVIEW(i915) && !IS_CHERRYVIEW(i915))
> +		intel_hpd_poll_enable(i915);
> +}
> +
> +void intel_display_driver_runtime_resume_early(struct drm_i915_private *=
i915)
> +{
> +	intel_opregion_notify_adapter(&i915->display, PCI_D0);
> +
> +	intel_display_power_resume(i915);
> +}
> +
> +void intel_display_driver_runtime_resume(struct drm_i915_private *i915)
> +{
> +	/*
> +	 * On VLV/CHV display interrupts are part of the display
> +	 * power well, so hpd is reinitialized from there. For
> +	 * everyone else do it here.
> +	 */
> +	if (!IS_VALLEYVIEW(i915) && !IS_CHERRYVIEW(i915)) {
> +		intel_hpd_init(i915);
> +		intel_hpd_poll_disable(i915);
> +	}
> +
> +	skl_watermark_ipc_update(i915);
> +}
> +
>  void intel_display_driver_shutdown(struct drm_i915_private *i915)
>  {
>  	intel_power_domains_disable(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index e287574fcd35..b1441a55d72d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -33,6 +33,10 @@ void intel_display_driver_resume(struct drm_i915_priva=
te *i915);
>  void intel_display_driver_resume_noirq(struct drm_i915_private *i915);
>  void intel_display_driver_resume_noirq_legacy(struct drm_i915_private *i=
915);
>  void intel_display_driver_resume_nogem(struct intel_display *display);
> +void intel_display_driver_runtime_suspend(struct drm_i915_private *i915)=
;
> +void intel_display_driver_runtime_suspend_late(struct drm_i915_private *=
i915);
> +void intel_display_driver_runtime_resume_early(struct drm_i915_private *=
i915);
> +void intel_display_driver_runtime_resume(struct drm_i915_private *i915);
>  void intel_display_driver_shutdown(struct drm_i915_private *i915);
>  void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
>  void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 7fce210d355d..b3eaa55ebacb 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1373,7 +1373,6 @@ static int i915_pm_restore(struct device *kdev)
>  static int intel_runtime_suspend(struct device *kdev)
>  {
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> -	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
>  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
>  	struct pci_dev *root_pdev;
> @@ -1403,7 +1402,7 @@ static int intel_runtime_suspend(struct device *kde=
v)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_uncore_suspend(gt->uncore);
> =20
> -	intel_display_power_suspend(dev_priv);
> +	intel_display_driver_runtime_suspend(dev_priv);
> =20
>  	ret =3D vlv_suspend_complete(dev_priv);
>  	if (ret) {
> @@ -1437,34 +1436,10 @@ static int intel_runtime_suspend(struct device *k=
dev)
>  	if (root_pdev)
>  		pci_d3cold_disable(root_pdev);
> =20
> -	/*
> -	 * FIXME: We really should find a document that references the argument=
s
> -	 * used below!
> -	 */
> -	if (IS_BROADWELL(dev_priv)) {
> -		/*
> -		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> -		 * being detected, and the call we do at intel_runtime_resume()
> -		 * won't be able to restore them. Since PCI_D3hot matches the
> -		 * actual specification and appears to be working, use it.
> -		 */
> -		intel_opregion_notify_adapter(display, PCI_D3hot);
> -	} else {
> -		/*
> -		 * current versions of firmware which depend on this opregion
> -		 * notification have repurposed the D1 definition to mean
> -		 * "runtime suspended" vs. what you would normally expect (D3)
> -		 * to distinguish it from notifications that might be sent via
> -		 * the suspend path.
> -		 */
> -		intel_opregion_notify_adapter(display, PCI_D1);
> -	}
> +	intel_display_driver_runtime_suspend_late(dev_priv);
> =20
>  	assert_forcewakes_inactive(&dev_priv->uncore);
> =20
> -	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
> -		intel_hpd_poll_enable(dev_priv);
> -
>  	drm_dbg(&dev_priv->drm, "Device suspended\n");
>  	return 0;
>  }
> @@ -1472,7 +1447,6 @@ static int intel_runtime_suspend(struct device *kde=
v)
>  static int intel_runtime_resume(struct device *kdev)
>  {
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> -	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
>  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
>  	struct pci_dev *root_pdev;
> @@ -1487,8 +1461,6 @@ static int intel_runtime_resume(struct device *kdev=
)
>  	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
>  	disable_rpm_wakeref_asserts(rpm);
> =20
> -	intel_opregion_notify_adapter(display, PCI_D0);
> -
>  	root_pdev =3D pcie_find_root_port(pdev);
>  	if (root_pdev)
>  		pci_d3cold_enable(root_pdev);
> @@ -1497,7 +1469,7 @@ static int intel_runtime_resume(struct device *kdev=
)
>  		drm_dbg(&dev_priv->drm,
>  			"Unclaimed access during suspend, bios?\n");
> =20
> -	intel_display_power_resume(dev_priv);
> +	intel_display_driver_runtime_resume_early(dev_priv);
> =20
>  	ret =3D vlv_resume_prepare(dev_priv, true);
> =20
> @@ -1515,17 +1487,7 @@ static int intel_runtime_resume(struct device *kde=
v)
> =20
>  	intel_pxp_runtime_resume(dev_priv->pxp);
> =20
> -	/*
> -	 * On VLV/CHV display interrupts are part of the display
> -	 * power well, so hpd is reinitialized from there. For
> -	 * everyone else do it here.
> -	 */
> -	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
> -		intel_hpd_init(dev_priv);
> -		intel_hpd_poll_disable(dev_priv);
> -	}
> -
> -	skl_watermark_ipc_update(dev_priv);
> +	intel_display_driver_runtime_resume_early(dev_priv);
> =20
>  	enable_rpm_wakeref_asserts(rpm);
> =20
> --=20
> 2.46.0
>=20
>=20
