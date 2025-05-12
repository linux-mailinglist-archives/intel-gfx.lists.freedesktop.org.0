Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AF1AB2E5C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 06:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE0E10E28A;
	Mon, 12 May 2025 04:27:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YqlzmPhZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D9710E12D;
 Mon, 12 May 2025 04:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747024058; x=1778560058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JkJCngsnzEq0pGGT3aEGoVQPGDdPprrke3l0KKyxWn4=;
 b=YqlzmPhZHaPmT18dyPCpAxyvdRvym74DPVM8B8I+Y9W832dUOyz5/6hs
 e429fVvoxtuX9ow3xZNKaURGuyR7cr2d29zBVVyGYWbhOE34TUphp7+eZ
 g2aSAOr0cx1CGl9UXYpvbJv6S+gM0MzroV2CZY0im/sjZN9kaIReR+qp5
 Z7sKczjVXm62f6Vu864kOxREYTM/fLurS1H1MQK3FgtiX/MHxTr+hXHqU
 hlQg0AOMOXs3zYsVqe/oPy2qmNQF/RquU89+bT5LLo4Db9ybjFkRwvdbI
 d9OXsq7uxrfKOjmwOoKcUowUYC8Zn/RqBk07LQkv8hLMM4kF6layN7oYF w==;
X-CSE-ConnectionGUID: aKhs0OhUSoKi9+WxKWz2Gg==
X-CSE-MsgGUID: TlFID+DJTM2FRlny6PG2ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="66209900"
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="66209900"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2025 21:27:37 -0700
X-CSE-ConnectionGUID: Bc4XhY8xTrmuJCY9c1wEhA==
X-CSE-MsgGUID: jrj32lC0RfSQp4NIl1IHMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="138220426"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2025 21:27:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 11 May 2025 21:27:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 11 May 2025 21:27:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 11 May 2025 21:27:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aREWoKpsxmFwVHeMI3g4WQ9nP8Z27ex5z8TGo5eTUwP/D7ND1S+sOKWWnmSoDSC+ysfsVFfB8lO0r41GhjabUsNe/XS427Q1AZz0Dhf3m5Jo0qWI2yxxYkGzG3rZSpdhvGdErolM0u5umbA9WNNejbL+edHnKvfb3W2dEExnH3DNl2TL2+3IL3XEGuf41kxnw/VvZ4PjhzJ1QNV/d7YVuS1UHO3eAnwi4cX0DAGcRrYMdOZBqbAYLFjVgpoweKpbd7J/emx1h2dLYD1VWaK9wR5x8iGR2foawtJ5Fmed7iq7Cysq5QAis+3qypB9K6zSB8fxMTXSZvLtzVcMC+WM0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Uk/7WLYzZ3DvSCdK4F4Pfprb9O25nZmDhgLewat+vI=;
 b=ujqcd6DgcFawpEK0l9WhU34OhSMt12kRP+mEgm5CNVws7fLjzeog0n/tq7wDCYcxRnObxF+zVc5tzCZcO1cfef/eIrc3FAkhT/NbWUimtrClO2oe/wkD7kbZh2QwR9AuuQKVXbJMC2CzGh8q7S4E8lWBc4rx3ei5FuSpwY/pcV1vjCI2iYDwknOd6pOpZZwmJ9JK2iQMjQ0exp5VNg2cRDagoNDJv6XInNspwRaE4qFlXuS/LEBgDZC7Hie7YXMYBrhGrPZTtRmuzKFLeKJXVARxC8l/L4tBwem0OyDRSrFa9t7PTevrQf3PIMq3Gu3UlWgEAKwj2IXcxed/AsISeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB6961.namprd11.prod.outlook.com (2603:10b6:930:5a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Mon, 12 May
 2025 04:27:28 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 04:27:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH 15/18] drm/i915/dpll: Rename intel_unreference_dpll__crtc
Thread-Topic: [PATCH 15/18] drm/i915/dpll: Rename intel_unreference_dpll__crtc
Thread-Index: AQHbwJrciMTSsPcCb0K/6XYE+ezDhrPKGfOAgARNE7A=
Date: Mon, 12 May 2025 04:27:27 +0000
Message-ID: <SN7PR11MB6750721FE2429E8E4720DA9EE397A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-16-suraj.kandpal@intel.com>
 <875xiakrc6.fsf@intel.com>
In-Reply-To: <875xiakrc6.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB6961:EE_
x-ms-office365-filtering-correlation-id: d45d93d3-3f0f-4865-ccc6-08dd910d4da5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ytMRnaw0+s2EiOpeySxKcToleD7k7VTWcOF9XFX2gvg7+oeR/Gf3EsUTiR6h?=
 =?us-ascii?Q?CdD2xwp2keFayDFQ/zhb2WDYuMYy3WO3VjnS2e2YENl/WKn7tUM/TfxU+Qxn?=
 =?us-ascii?Q?EjDTVIGip3SfhO8+Pk+v6+MbEkMMZX4C/Y3kV9iy4E2xjcoUEjZNzCRVQ6uh?=
 =?us-ascii?Q?cMVQ9oeU3dw5XhkBj3+Ol8B/UsttNuntp5o0fTXXOpWMuHYNJOmfNLHYR711?=
 =?us-ascii?Q?XmrmfqLOMulD8uJgWNbp59SyV17+M6dlthJiwvBrZCcI33f2WWejxfk+gS3K?=
 =?us-ascii?Q?styLPjFePjK9bY8Pme5rcAsYYl0iSIGA7z5++iKvTFClAqhjmGD4PxoDdGgu?=
 =?us-ascii?Q?91RWq3OyMXnnRP9dI+CcIoLexsnvEA1RkAnC54MqSKywea+mb/zu9wiPYw46?=
 =?us-ascii?Q?LZYBf6Ac8BTvIU9T6UELA0jEqJ9tj/h8NtSo/hj3SyM9DppZfG5bz40NiBvC?=
 =?us-ascii?Q?BEVwhZdSfAhe1fmwtpNUdKD4IhjbFqFHdaszgHRgIDZIsWF9NuIouX5UMPsY?=
 =?us-ascii?Q?YudATd3ocqgnkt4XUOnj9r/pX9Y4cvsomPLIOcGFfZQmNalEEYmm3b74RaGo?=
 =?us-ascii?Q?mLJdqZX+o2xGhtA71EOwN0fNfkkrv/of3xZOkIK6aNWcDYE40OXfHn20vyUy?=
 =?us-ascii?Q?1n8OH6J4o546GwK4kT5cGlc+GDR+z4WXPxwZJ8TwfQFIoM37imT3e2MnNIGO?=
 =?us-ascii?Q?EKKF2lezZB+jyaihpGvB4BmogKZrkL+FLos0Tpx6etbRTYs1OOCAHHgKywmv?=
 =?us-ascii?Q?qlK/sswaUGKbJz+VwRUVEWGYLrPZ5oYQE3SNY3PlSb/pmziYl6lWyFzymNbm?=
 =?us-ascii?Q?61SCIx1IdTACaKGWcpIaqm1tgWA7O0J+ffce4kE3pBBGebE+4qPDWiRLakAX?=
 =?us-ascii?Q?Ls6xEtOWcf7Hqqr6eV6/M9sgZ4qxBBhZfJE30tg3wlZ4f8wmlxGOpYUb5vxq?=
 =?us-ascii?Q?uJN5FCOh4sM0mxJOCrIONqrcUDwp9rJxpV5I3Yq7VTgzS6zYCoySbU7wHdLF?=
 =?us-ascii?Q?he2r7XtknfIAQtKgBH7f6GYtT7g+1ByadjRexwKmHPLQ9enNMi8OlTooESJc?=
 =?us-ascii?Q?gme1+YYwsxA6S4NaFtZbxSqAvhwRn+kJf1pAIJ9i2SGAvkOP5IkqLgd5FsKg?=
 =?us-ascii?Q?eru+l64AhC+V2ybwsOmkOBrA5Lxz49WospX/UUBruGBURmYpltsTiyQt3yD9?=
 =?us-ascii?Q?kZiwYClbXDAUZPSxNKZbMCDc6rlL8lf5I9nVazk865TDB2/veKoL+Zy9Lua8?=
 =?us-ascii?Q?2kD2eUr70N/54CHyWfyhtTWmJgKE8zT8mi1vW/xTWwnmCanWuZXyPdngY3zb?=
 =?us-ascii?Q?c0t840SjJqyNqsfqhaJtvlpdx+GlFkLktEEbRwMp0A8ibUYRVMQJg04s7H2w?=
 =?us-ascii?Q?6sy7WIADon6YB4cTk0wfc0Pl/X3faDULK2Q+HbOmeEP9vlPUoV8C66BiYJMn?=
 =?us-ascii?Q?s/0js0Lrtlm3Bd02j2P226zGgu9rgPXWfD+n0cZn0J/LCpP6HzAJuw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X9gvcS7J/0MWrcR5p9ByyJfVR+lN3iLYCdPO1N3IBK+UO0kG5Totv13evRT8?=
 =?us-ascii?Q?WTeznzgYNmj0TqQSXAsweM48hRodU9RVQ/+BlFHUrUqsNZQwkwYBPoNwmW0d?=
 =?us-ascii?Q?5/wund4fq3JWJtWYJRYZryU7ke4cRlCYM+aTppzV/1nXlrdmQ/vYpLy+38/x?=
 =?us-ascii?Q?JqBcEPlhoRNujpkwOBq3AgiZi2fwcWUKlIexOkhqv1Cq3t3ViULUMjSum/qY?=
 =?us-ascii?Q?corrOiK0r+3/BUGzrGed4hoy0xUD62u+1oHQyZ3Sm6gC0+AbSeY3iG5tVFuN?=
 =?us-ascii?Q?5C9h5sMMOwNw1fCOPVKfb7TpNZwtIh1WXGIWpHIANe1Y6aO0k4PPnlTdbXU+?=
 =?us-ascii?Q?W2H5jncdspgqeqz2HelCHtNznhCcKFrxyL4glx5XP0eSIiEmHHaD3nFj7i19?=
 =?us-ascii?Q?USrhfkeIsiE3pJ+rkKnukhRW5NCNtv+k+TOK88+J9C/1pZnHfjXzDf6A2NtM?=
 =?us-ascii?Q?a1T4wbvmuR63WwvMmo3eakPb1nXL5YCdM4vL7E4ENZY9OaCsNbII4K2qcM3V?=
 =?us-ascii?Q?4/6xL+/GBi31xcTvMZz9rdmmPEAlK3tahj+B/EWWVGFQSvbWzMRMKSaxIbSj?=
 =?us-ascii?Q?BFNLz9uPzqSmz+1KfqgFeSIGVo0NVRrt7m+dkTE/7QVMtJ2ADsFXziEIw+Uk?=
 =?us-ascii?Q?R8VK2ChWbpIBz5u0BlS5lY+lAKqn1ZoPJgtwJ/OGVhHzeb9KobhUI/o3YwdA?=
 =?us-ascii?Q?xz0zlnofMrvkdoYyf00M4kH0jphoGyqU97hJBdY9XZ8So5QjgO0Wh64GxJ+o?=
 =?us-ascii?Q?gmEOhB+MaO3/bTqe+MwptM0DlB+2F+nxL4L5aZr7N+6wfzohcZm6+n1ahl8j?=
 =?us-ascii?Q?XG8F7kAJY2gf5v4FkJDh7PJhTdBQaz71/zf6469NwVqlfv04lQ0rfKTk2t9I?=
 =?us-ascii?Q?/K9bWMEodsopx6lsjjMuua513sVhvxvXXiFt9Clqkayedqjtt4aAr/5YNy7P?=
 =?us-ascii?Q?QRQfxKhg4XlhniQV26mhn+XEptoQWiOmh8gI2ZRrMduSy2BVNkvtgPpvzCD9?=
 =?us-ascii?Q?Ogx05kujFTglsF/ipw9zyguSIUDSVw9tF1NR3lcaX7qtm9VwWIvHzz15gEst?=
 =?us-ascii?Q?BbgeXYu+80YvEgGLqWJoOC1lgpuJ27IZ2LxpZzsJWcJiJHTpvCfTWTYsjtgt?=
 =?us-ascii?Q?Nmv8VYJHNV6CQaDuEX3dU6QBFk1lKmwYxRXseW3ZNFeevskRxUGpXc4yAJBX?=
 =?us-ascii?Q?Zf24KdXQ+DGwmFxTJfihwL1zaBlh1YZSB7zUoxD9e1RMANkUC7nLlhfG14q6?=
 =?us-ascii?Q?yWvypyAQAjp2+qti3Kax184m2iKphS0EktpKOUraJW6zqS1ZCKruXj4AdRMq?=
 =?us-ascii?Q?4kZd6HIcmva0sMNgac/s1WMDmqZgLT0u08g9mw5mAVrsPKP/WfuG6+SSngd3?=
 =?us-ascii?Q?ce4f+DpNrl6YZ8RgMeBi9xTv6Wo65VKL9BnuOvgtDWb/zNszqCRZW9aPZocv?=
 =?us-ascii?Q?1w3+Wo52qlgZ5B0wvE2pXFa9omlVGxEfdee5A4WL2joX86lCGBHPNRSPIY8A?=
 =?us-ascii?Q?7cFnaBResr34+fsQn7KIihakY7yhFp8bjNlwNU5/Fi+SlwUImfO8qXBvag6d?=
 =?us-ascii?Q?ewn8DqQtKFWQ1/xAY1hnDtKdyuX/Az1gnkhmB+Oq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d45d93d3-3f0f-4865-ccc6-08dd910d4da5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2025 04:27:27.9767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yl7AoP0cmXPIioD4O6Iz7UxMgeBRn4cfiMIrWmlCjjgQEAAOPf9mIXonYxh+QgIcCUFkD9GUzmW9WAZMPsSGXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6961
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, May 9, 2025 4:02 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 15/18] drm/i915/dpll: Rename intel_unreference_dpll__=
crtc
>=20
> On Fri, 09 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Rename intel_unreference_dpll_crtc to intel_dpll_unreference_crtc in
> > an effort to keep names of exported functions start with the filename.
>=20
> That's a fine goal, but to me "intel dpll unreference crtc" means drop th=
e crtc
> reference from dpll, not the other way round as it is...

Some suggestions for alternatives?

Intel_dpll_crtc_drop
Intel_dpll_crtc_put

I can update the intel_referece_dpll_crtc to intel_dpll_crtc_get

Regards,
Suraj Kandpal

>=20
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 6 +++---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h      | 2 +-
> >  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 2 +-
> >  3 files changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index d1399ab24d8c..c954515145a3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -458,7 +458,7 @@ intel_reference_dpll(struct intel_atomic_state
> > *state,  }
> >
> >  /**
> > - * intel_unreference_dpll_crtc - Drop a DPLL reference for a CRTC
> > + * intel_dpll_unreference_crtc - Drop a DPLL reference for a CRTC
> >   * @crtc: CRTC on which behalf the reference is dropped
> >   * @pll: DPLL for which the reference is dropped
> >   * @dpll_state: the DPLL atomic state in which the reference is
> > tracked @@ -466,7 +466,7 @@ intel_reference_dpll(struct intel_atomic_st=
ate
> *state,
> >   * Drop a reference for @pll tracking the end of use of it by @crtc.
> >   */
> >  void
> > -intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
> > +intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
> >  			    const struct intel_dpll *pll,
> >  			    struct intel_dpll_state *dpll_state)  { @@ -488,7
> +488,7 @@
> > static void intel_unreference_dpll(struct intel_atomic_state *state,
> >
> >  	dpll_state =3D intel_atomic_get_dpll_state(&state->base);
> >
> > -	intel_unreference_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
> > +	intel_dpll_unreference_crtc(crtc, pll, &dpll_state[pll->index]);
> >  }
> >
> >  static void intel_put_dpll(struct intel_atomic_state *state, diff
> > --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index f497a9ec863d..8b596a96344f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -404,7 +404,7 @@ int intel_reserve_dplls(struct intel_atomic_state
> *state,
> >  			struct intel_encoder *encoder);
> >  void intel_release_dplls(struct intel_atomic_state *state,
> >  			 struct intel_crtc *crtc);
> > -void intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
> > +void intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
> >  				 const struct intel_dpll *pll,
> >  				 struct intel_dpll_state *shared_dpll_state);
> void
> > icl_set_active_port_dpll(struct intel_crtc_state *crtc_state, diff
> > --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index ed4f305e0d3e..ee156cf2c5ce 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -93,7 +93,7 @@ static void intel_crtc_disable_noatomic_begin(struct
> intel_crtc *crtc,
> >  	crtc->base.enabled =3D false;
> >
> >  	if (crtc_state->intel_dpll)
> > -		intel_unreference_dpll_crtc(crtc,
> > +		intel_dpll_unreference_crtc(crtc,
> >  					    crtc_state->intel_dpll,
> >  					    &crtc_state->intel_dpll->state);  }
>=20
> --
> Jani Nikula, Intel
