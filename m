Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2830CC67339
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 05:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 178E810E1CF;
	Tue, 18 Nov 2025 04:00:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RLVnOG5y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FEC110E1AD;
 Tue, 18 Nov 2025 04:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763438449; x=1794974449;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sC8H1WxGwKUCBJ9fTVQcjeW10gkr47s5YocH9OS1PdU=;
 b=RLVnOG5yzHc9rUTTdZqDJyE02547uylGQPIsH5VZ0T8oX78Sjo1L49zU
 GrnkxPq8zh/uNyShGyISBq2GrG1O4rHWocbspPt77hPevQP6byMyEdAfR
 UFJtfw98rw4+pAC5wf+m3rKH/CgU4l0M71uFDgH2NIcXchie4Jc2tkWBu
 JotcTCTnycoM8VbCj6mlPPGImfEYzhtyBSCuR3b8jrvqY/WSuhrrv5ZU9
 EHju7kBe471rmDf7iuy0euQwZBaFWemnIVwTLk38eaLN0CfdH0fmwedgN
 FT/Ocew7HPcuKU8tNchnAwxYJGzrF/wGtGdgtWIiezs+aaFiGdr/AxPOU Q==;
X-CSE-ConnectionGUID: s6yHzH6uQSmO8DY2AQhDFw==
X-CSE-MsgGUID: I3g3/wNKQz+hFT+kD6ar3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="83078678"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="83078678"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:00:49 -0800
X-CSE-ConnectionGUID: x6AHW/hVS0uZu4CTJ9+3lQ==
X-CSE-MsgGUID: szUiic1RTu+HnEX32RQABQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="190873713"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:00:48 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:00:48 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 20:00:48 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.12) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:00:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FBubW2b5+9D/v7rpVVvntmTCioUYx/YnJ0QxVfDYh5UEffcfrDEb1acldiCGvRodQvqCZ1yjWr/ovi6D8498mf5FPj9lBB7pWLl5kygzHdxM7uAXWiLXR1IvwCC79Qs6z3F8nOPuEWz3VE00pwsN4oQvqE/1eVxaGerN0VsQr6Kgk/A0lpqToJdtUicGyD5qBHJf/3BRkDb2SbGhIRjQK/YeOZQOuszWYD7stgtQTbsLJOyliG6X5mDsA6hKSW/6+x7W0jslWGfBs+S4g254NE4vNjIdZhTTUjgwaiAtPUHuRybm+w+1PNmHR4IkVK4cy+7vU1J3D2Nyinf/kKfoUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T7rI0FqYCNMVQ7twZ8XNSsaGSWY5C2ZZrOtdeJCILMs=;
 b=Ycd03GOa10Kz2RUC9AIGEJo1FdpZiFj4VNHt9Z8lbj9L0TUha8MKDSQ/dLdnxFd4ugEJpvwzlmk7aIX1vgblvTX3aimfJo4qYg4I5593hSPuLK3kQMrlvChtgXxQpbZ3hbjqskfAMyJ02yNi3C+p1l5X7bXkU6oroSnjOY9JLmnIeAW0xsuzCVSiZUA1zDbzfUqgkm+tUyF4xiR39A/NkpYH6vxGI5uQC7w2XmfOkXNjNtxZPFXc1/A7xAyzuHv6NDWprPDkqhOI1xG3hwa3ZQweowl68pL697eNXD/6OEIWEt0EyHlM65zXVNZl59aGiX7uI1CEnzh4CbC5H/GSvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY8PR11MB7135.namprd11.prod.outlook.com
 (2603:10b6:930:61::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 04:00:43 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 04:00:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 17/32] drm/i915/cx0: Update C10/C20 state calculation
Thread-Topic: [PATCH v2 17/32] drm/i915/cx0: Update C10/C20 state calculation
Thread-Index: AQHcV7TO4dllv1gCJkeL+DeS7oS+QrT3z+JA
Date: Tue, 18 Nov 2025 04:00:43 +0000
Message-ID: <DM3PPF208195D8DC7B28F97793DBD3B26CDE3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-18-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-18-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY8PR11MB7135:EE_
x-ms-office365-filtering-correlation-id: a4a93ccb-27df-4e87-68eb-08de26570ba5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?STtqeqcXMkcnZmYklbabw/qIrhVKtftFHbVmwRRXe9VWAFhYPGcE8iZ/UXWW?=
 =?us-ascii?Q?DrVLEMx4pGXl/8xGXRSCfnXIrN0CtF8b1zTwtkU08SRVqPcEUVamqtkB/ued?=
 =?us-ascii?Q?PBAus7x2oh0kNi0OY8M1bPPY9xBGmNOLRIq4UcK0su/SKBGfZorWq+YXrp1b?=
 =?us-ascii?Q?SbTkr7/2pw3kE8P+R3VMonfH7BzZMedUv72j43RoznLrgQvQmi9OCohjxsaP?=
 =?us-ascii?Q?1ni8yhsd+TeTJDpt8Wu0F7DJaO88cm9ijDhTp5pHQVNJqTamxVt/6HFIvdES?=
 =?us-ascii?Q?k50+rWRng632dgYL/OGgKtP57tSFFLkf4ugxmltphFUfenusdGJLYU7mKB2y?=
 =?us-ascii?Q?+yfTf5Qgv4F73R/LBBGlPq3y+Z0Aj3k4Y4Y/JdMLdumOB4VcIwU2HCvPZnNE?=
 =?us-ascii?Q?vH2o0QXR4n9SuSPgvDNI+bZ7nFHO8EzfS8pPttK5LjRuOdj54k9WYHFTNdRQ?=
 =?us-ascii?Q?W7Y5iuUaA3LqkIQY8s+z5ydsU7IMf6bhBNdxS5e7cnM28LnOhkV4mxDZAX9Z?=
 =?us-ascii?Q?6lba9nt9C3tdTlkz0fDae7CDcDwO9URXHW24/cY9E+6GVqGyTKRrGaAXb6vI?=
 =?us-ascii?Q?DJdiBWixWtq5xeSJsm6ahz5m0PCn9OtEFCx0FAnqdQ08+l4Ve/ETsI3W7L4x?=
 =?us-ascii?Q?U0h6NcrMUgo1PY357m99+hxLWozKQxhvzAWZ8rKWGlwVirvjGlTqwzTjMtrc?=
 =?us-ascii?Q?mKTwiYgbNtEJqC7hII16mIVFt0j8VJb1VVIyectNZYk3SrkyApcpvA806xzW?=
 =?us-ascii?Q?hKyl1TahdjO2JrxMUguDnIci8qAYWRoV+IIcysVIFfHnegRH3BdzTGwtw4Hk?=
 =?us-ascii?Q?EcE+ImSpgMGPVfRqt5//wWRyiK0hJbyWPlcdeJv798c9ZXmmEo1JRvnany6V?=
 =?us-ascii?Q?fG2jxxzkRyz3vobdFtqDw76R/hcZXzujgvOHTZ4FArRDdJSZR/90j7b9/MeA?=
 =?us-ascii?Q?Bvha8xKYiUR/88wQDE1JRl4Tg69b6SRcFYYDAC96IXsm4ihLf+9hSqmRoZaf?=
 =?us-ascii?Q?d1vjPDAvT0ap8jtDsGA1p2UZpFYb0qZ/bWkqALmBSsYbin1JCkxx/Mna20jo?=
 =?us-ascii?Q?YlNe7ehHxA7j/qPS3LxAKCFY2meqWH4EtFJFSqwPx7BiOny6lFPcRYxrgJF1?=
 =?us-ascii?Q?+t9yblVk0zIRPxyzVd1/dfiFJ+xyGC9PaEBJSfibYmg5nwSer5Qee8NbLcAS?=
 =?us-ascii?Q?S/Cl6AMz+fwNETV18MM3Xc0cN6Z1Gj9+vX4dxHgWu5FoYXwgKbBsMXjhlxdw?=
 =?us-ascii?Q?r+r5y/ABHN4tJSIRzr4D8+qdEKhPSMw9Gww+N6z1Vxp7DfCokpWZ18XSEqTJ?=
 =?us-ascii?Q?+AeMa8TGfoYOcvmVA5eUrMqthvZ1f1043LGjw9xWYoCYoqprQ4al5dIXZ14t?=
 =?us-ascii?Q?bHBi3neOBClF9bETOYbLfI34tfSzB7fGqfU9tY9AY4YSjycyAXgiqPouoYpF?=
 =?us-ascii?Q?O7rUVH4I3fNzmPi7tHS1f80FeJTIzuLxyp39OsTT9SCkHrHlNlJx44KdSftN?=
 =?us-ascii?Q?BKPqgw9N3Zp7Z5suR6tl/F3FRMNLiF5ry+QC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?51lJnisi10dHzZe8AxDaxisBF8koxUSH9SbAluOiFm/lhq9ib85TAXXcqKbt?=
 =?us-ascii?Q?HDCH1usFjTOvNXtigr92Npdiw9J54O8OLNgVE0HtDcUHQoQLxCwki4lahO+m?=
 =?us-ascii?Q?h6Fzl2tsuaPfywE2hGO+sC9cJh7jcpddpgoUJ4/DlQoxSD6FVj545a9ohhZj?=
 =?us-ascii?Q?U0ffgqc6qySgxAsPfrj/NLb8vNjtYNQJBKYZdQS7432yP2LIozZoG5kbMisc?=
 =?us-ascii?Q?co971M9RomwNnkvs8jxcnF3cdhKQdBKYuGxOWER/t68pv17rE4tjG0WwKE9O?=
 =?us-ascii?Q?UsL9nj9hF8VOexGD6yagZ6t7zGVZEFTLhtIeLARQba4VL0UiyaZ64fczhztf?=
 =?us-ascii?Q?Jp+gm8Er5jrVNFd4v7FFeXeA200jerkxT7FXdZHEr/fG6U1grWUSqZ6xBuWW?=
 =?us-ascii?Q?ES4/kJPEDqt99vlw1BA405EvYPsYyiMwO2tP6JKQIvnWmO31bH75KQdJ/dca?=
 =?us-ascii?Q?7EBAVAolgelnPomlNk1/WIYpJO8IhwCC/EuLd92vipkT0trX+qMlXOSEIdDk?=
 =?us-ascii?Q?d4Qo0NIG++LXQUaa55RcUhJaAUtPzmOdo3jXB5yTRcWfe4GI4HCDWYSy5fap?=
 =?us-ascii?Q?2zA0Efdde9HrV/woXgjU7g50buKemWLKY6/VzDfYBVlgwOwbIIYq+KqNRnah?=
 =?us-ascii?Q?TJzTIA6183D0mp0XfMtMNz4tcZ67uViW/Fx8Vnk/Wk/z+kKuano0LfAgGel2?=
 =?us-ascii?Q?a0HHXdg9cRJBJHFj1tCRLOuwYxowOOgSTL8F4OdbYTLT45BRfcxRCSV+3Bhy?=
 =?us-ascii?Q?dBp7l1/gf/wygKD6eOtDWnOUWFnmuvyotgF2XYpTDeFA623PwAjklx0zfgSg?=
 =?us-ascii?Q?SGpQGE+7fkElf9KDhbi0enC53HstVN4DlK1A2Hzl2N+qr8NE83h3Rr+KdP3H?=
 =?us-ascii?Q?xkaDqO0IfwNrCHyKcyVH1makM1U/usTp0rvYh8/hWSXu5rM5TlKdkIuhGocM?=
 =?us-ascii?Q?XWJH8/qfLkuh8iqgOKikNgzTXdyoVswJxFVGB1lIHPJna5LK+o0SEXnCGwQ8?=
 =?us-ascii?Q?pxvL46XEKMtZTvBz/5JRsV9+493uKYqybUvepGt5biLRN6EVQtOUvvV8v4r/?=
 =?us-ascii?Q?bujwhFdMhvd8UMFusEGJ5nKWKa3Z0FweUH5u+O7w/gkf/FPr2kKC2XZJmoPU?=
 =?us-ascii?Q?SNiO4bIr/6LwtHGmqcgeJTWZMEdoODYMHrK5uD9c3gsly2397jHuHG4Vn75V?=
 =?us-ascii?Q?m7pobxiDAGhxKS2Lyow8PXNcTjqGGcBkXlQjZgEoOLHk+BXRKFvbAeYc4Elo?=
 =?us-ascii?Q?ihs+CafYRuw7Gpd8NkPSUowMe8NuCo8ZPk4B1096q0HE6nTYVKh4AylTyBRq?=
 =?us-ascii?Q?P90w6okVTb4hX24nH/p+c43NlyA7Hv6gewLB4pPsfeDTFtvcpTFNHS3CV2F9?=
 =?us-ascii?Q?N2ql2xG2g+nI8OGTnGxKst8anW1PNmthG8gDnM37yipbWM06sb98bCMWGiyY?=
 =?us-ascii?Q?A3YwtUJ8a/ZKJ3GCZrw60RBBhDD8f7uk2733lKkRJXc15UQCtj9yqCwwDxxZ?=
 =?us-ascii?Q?QbGdf8Es3cGkVgfh3W2aZ3pHPkrbkVkXQPV9tZa9ZOoPGtzLVioW+EnjYtAW?=
 =?us-ascii?Q?Qb1w/G+eTdoBUq08vGR1Ey+9MOtF1UgGrjHJmq24?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4a93ccb-27df-4e87-68eb-08de26570ba5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 04:00:43.2184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QlDbieNKQWdiDkJKHXXBADa2GwoOaj1xXwpt2BM/KX61VvH4BfHJy4lI5gPIPGQibKln4K74uu1D/C4AY4Ju8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7135
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

> Subject: [PATCH v2 17/32] drm/i915/cx0: Update C10/C20 state calculation
>=20
> This patch updates several functions in intel_cx0_phy.c to make PLL state
> management more explicit.

Do not say "patch" because after you merge it becomes a commit.

>=20
> Changes include
>  * adding 'const' qualifiers to intel_crtc_state parameter for
>    cx0 state calculation functions

*Add 'const' ...

>  * refactoring C10/C20 PLL state calculations helpers to take

*Refactor C10/C20 ...

With that fixed LGTM
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>    explicit hardware state pointers instead of directly modifying
>    'crtc_state->dpll_hw_state'
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 68 ++++++++++----------
> drivers/gpu/drm/i915/display/intel_cx0_phy.h |  5 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c    |  2 +-
>  3 files changed, 40 insertions(+), 35 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 31db79f0636b..de71805a065c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2029,7 +2029,7 @@ static const struct intel_c20pll_state * const
> mtl_c20_hdmi_tables[] =3D {  };
>=20
>  static const struct intel_c10pll_state * const * -intel_c10pll_tables_ge=
t(struct
> intel_crtc_state *crtc_state,
> +intel_c10pll_tables_get(const struct intel_crtc_state *crtc_state,
>  			struct intel_encoder *encoder)
>  {
>  	if (intel_crtc_has_dp_encoder(crtc_state)) { @@ -2133,8 +2133,9 @@
> static int intel_c10pll_calc_state_from_table(struct intel_encoder *encod=
er,
>  	return -EINVAL;
>  }
>=20
> -static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
> -				   struct intel_encoder *encoder)
> +static int intel_c10pll_calc_state(const struct intel_crtc_state *crtc_s=
tate,
> +				   struct intel_encoder *encoder,
> +				   struct intel_dpll_hw_state *hw_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	bool is_dp =3D intel_crtc_has_dp_encoder(crtc_state);
> @@ -2147,21 +2148,20 @@ static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,
>=20
>  	err =3D intel_c10pll_calc_state_from_table(encoder, tables, is_dp,
>  						 crtc_state->port_clock,
> crtc_state->lane_count,
> -						 &crtc_state-
> >dpll_hw_state.cx0pll);
> +						 &hw_state->cx0pll);
>=20
>  	if (err =3D=3D 0 || !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)=
)
>  		return err;
>=20
>  	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed
> tables */
> -	intel_snps_hdmi_pll_compute_c10pll(&crtc_state-
> >dpll_hw_state.cx0pll.c10,
> +	intel_snps_hdmi_pll_compute_c10pll(&hw_state->cx0pll.c10,
>  					   crtc_state->port_clock);
> -	intel_c10pll_update_pll(encoder,
> -				&crtc_state->dpll_hw_state.cx0pll);
> -	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D true;
> -	crtc_state->dpll_hw_state.cx0pll.lane_count =3D crtc_state->lane_count;
> +	intel_c10pll_update_pll(encoder, &hw_state->cx0pll);
>=20
> -	drm_WARN_ON(display->drm,
> -		    is_dp !=3D c10pll_state_is_dp(&crtc_state-
> >dpll_hw_state.cx0pll.c10));
> +	hw_state->cx0pll.use_c10 =3D true;
> +	hw_state->cx0pll.lane_count =3D crtc_state->lane_count;
> +
> +	drm_WARN_ON(display->drm, is_dp !=3D
> +c10pll_state_is_dp(&hw_state->cx0pll.c10));
>=20
>  	return 0;
>  }
> @@ -2350,7 +2350,7 @@ static bool is_arrowlake_s_by_host_bridge(void)
>  	return pdev &&
> IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id);
>  }
>=20
> -static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state *crtc_st=
ate)
> +static u16 intel_c20_hdmi_tmds_tx_cgf_1(const struct intel_crtc_state
> +*crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	u16 tx_misc;
> @@ -2374,9 +2374,9 @@ static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct
> intel_crtc_state *crtc_state)
>  		C20_PHY_TX_DCC_BYPASS |
> C20_PHY_TX_TERM_CTL(tx_term_ctrl));
>  }
>=20
> -static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc=
_state)
> +static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state
> *crtc_state,
> +					   struct intel_c20pll_state *pll_state)
>  {
> -	struct intel_c20pll_state *pll_state =3D &crtc_state-
> >dpll_hw_state.cx0pll.c20;
>  	u64 datarate;
>  	u64 mpll_tx_clk_div;
>  	u64 vco_freq_shift;
> @@ -2629,8 +2629,9 @@ intel_c20_pll_find_table(const struct intel_crtc_st=
ate
> *crtc_state,
>  	return NULL;
>  }
>=20
> -static int intel_c20pll_calc_state_from_table(struct intel_crtc_state *c=
rtc_state,
> -					      struct intel_encoder *encoder)
> +static int intel_c20pll_calc_state_from_table(const struct intel_crtc_st=
ate
> *crtc_state,
> +					      struct intel_encoder *encoder,
> +					      struct intel_cx0pll_state *pll_state)
>  {
>  	const struct intel_c20pll_state *table;
>=20
> @@ -2638,52 +2639,53 @@ static int intel_c20pll_calc_state_from_table(str=
uct
> intel_crtc_state *crtc_stat
>  	if (!table)
>  		return -EINVAL;
>=20
> -	crtc_state->dpll_hw_state.cx0pll.c20 =3D *table;
> +	pll_state->c20 =3D *table;
>=20
> -	intel_cx0pll_update_ssc(encoder, &crtc_state->dpll_hw_state.cx0pll,
> -				intel_crtc_has_dp_encoder(crtc_state));
> +	intel_cx0pll_update_ssc(encoder, pll_state,
> +intel_crtc_has_dp_encoder(crtc_state));
>=20
>  	return 0;
>  }
>=20
> -static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> -				   struct intel_encoder *encoder)
> +static int intel_c20pll_calc_state(const struct intel_crtc_state *crtc_s=
tate,
> +				   struct intel_encoder *encoder,
> +				   struct intel_dpll_hw_state *hw_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	bool is_dp =3D intel_crtc_has_dp_encoder(crtc_state);
>  	int err =3D -ENOENT;
>=20
> -	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
> -	crtc_state->dpll_hw_state.cx0pll.lane_count =3D crtc_state->lane_count;
> +	hw_state->cx0pll.use_c10 =3D false;
> +	hw_state->cx0pll.lane_count =3D crtc_state->lane_count;
>=20
>  	/* try computed C20 HDMI tables before using consolidated tables */
>  	if (!is_dp)
>  		/* TODO: Update SSC state for HDMI as well */
> -		err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state);
> +		err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state,
> +&hw_state->cx0pll.c20);
>=20
>  	if (err)
> -		err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder);
> +		err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder,
> +							 &hw_state->cx0pll);
>=20
>  	if (err)
>  		return err;
>=20
> -	intel_c20_calc_vdr_params(&crtc_state->dpll_hw_state.cx0pll.c20.vdr,
> +	intel_c20_calc_vdr_params(&hw_state->cx0pll.c20.vdr,
>  				  is_dp, crtc_state->port_clock);
>=20
> -	drm_WARN_ON(display->drm,
> -		    is_dp !=3D c20pll_state_is_dp(&crtc_state-
> >dpll_hw_state.cx0pll.c20));
> +	drm_WARN_ON(display->drm, is_dp !=3D
> +c20pll_state_is_dp(&hw_state->cx0pll.c20));
>=20
>  	return 0;
>  }
>=20
> -int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> -			    struct intel_encoder *encoder)
> +int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
> +			    struct intel_encoder *encoder,
> +			    struct intel_dpll_hw_state *hw_state)
>  {
> -	memset(&crtc_state->dpll_hw_state, 0, sizeof(crtc_state-
> >dpll_hw_state));
> +	memset(hw_state, 0, sizeof(*hw_state));
>=20
>  	if (intel_encoder_is_c10phy(encoder))
> -		return intel_c10pll_calc_state(crtc_state, encoder);
> -	return intel_c20pll_calc_state(crtc_state, encoder);
> +		return intel_c10pll_calc_state(crtc_state, encoder, hw_state);
> +	return intel_c20pll_calc_state(crtc_state, encoder, hw_state);
>  }
>=20
>  static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *stat=
e) diff --
> git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 0b98892ee8ac..d52e864f5e19 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -19,6 +19,7 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_cx0pll_state;
>  struct intel_display;
> +struct intel_dpll_hw_state;
>  struct intel_encoder;
>  struct intel_hdmi;
>=20
> @@ -32,7 +33,9 @@ enum icl_port_dpll_id
>  intel_mtl_port_pll_type(struct intel_encoder *encoder,
>  			const struct intel_crtc_state *crtc_state);
>=20
> -int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct
> intel_encoder *encoder);
> +int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
> +			    struct intel_encoder *encoder,
> +			    struct intel_dpll_hw_state *hw_state);
>  void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_cx0pll_state *pll_state);  int
> intel_cx0pll_calc_port_clock(struct intel_encoder *encoder, diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 4f1db8493a2e..342d46b7b1af 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1221,7 +1221,7 @@ static int mtl_crtc_compute_clock(struct
> intel_atomic_state *state,
>  		intel_get_crtc_new_encoder(state, crtc_state);
>  	int ret;
>=20
> -	ret =3D intel_cx0pll_calc_state(crtc_state, encoder);
> +	ret =3D intel_cx0pll_calc_state(crtc_state, encoder,
> +&crtc_state->dpll_hw_state);
>  	if (ret)
>  		return ret;
>=20
> --
> 2.34.1

