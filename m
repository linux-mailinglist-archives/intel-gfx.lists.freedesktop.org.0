Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EE2B1C234
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 10:32:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93DA410E73D;
	Wed,  6 Aug 2025 08:32:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JNV/DtXW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E83310E72D;
 Wed,  6 Aug 2025 08:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754469159; x=1786005159;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3RFy28csbOKMExhNlO2yJNejYE+BolTdIZNz7DRHKgc=;
 b=JNV/DtXWKKDcypR2Jw27RM6ajsVHSgjNgik7Djwus5dU8JXhEwdvvOeC
 t3D6P+IjBDPlOeyIVuUtec/A9cadig0kljt+Oh2uPVXeFJ9CJmf1SVgDL
 vPMs6Tv60wRgju1ZseQWGiYt85vm6aFDR3rlqYK7xgT9jtgwT/t+/fwK0
 FLuDeGq7esChuyp+9xmPt5zCemPrxilzaV+rdqZWfa4OWIOtv3a+hwnDj
 GC06wva3R/pXS6n9hLGlz5J0+DG+NUSl5WOBGJGI48pMxSxGN+pJskdeU
 D185XCT6XfOG2wf/Ys8dPZinf+3eX2aR8gJvqWy/D+ft3rt1nXZgIcBlN g==;
X-CSE-ConnectionGUID: auRBdEw/Rue5cwOlYCx5Ew==
X-CSE-MsgGUID: iYEvjHXQT+KTH/9H7Ha/4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="68230063"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="68230063"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 01:32:39 -0700
X-CSE-ConnectionGUID: hfPjfurqR6SKNedHGtuemw==
X-CSE-MsgGUID: /Uv1X3MxSKmCy/R0QsMVRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165485382"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 01:32:38 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 01:32:38 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 01:32:38 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 01:32:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yEyuFawUVRekP4vuDMpNTjykcWpT84FTFnNqGkdneTf2aJZMF4+kzJiBNmUx1N1PtqgEgdnY4gfqT9LKgG8tJG0XUi/MIgDlrk5bDQ+yP4KY0tmpxuRNMZUt+wWw8ljA2cMys9OzKLDQH0dNnR5heeFQ8+TTRDWMkL4JBXgiMGEvCU9B7MUkBoI+NOrlhXCVaXMcHtpe5Kq45M4WqzowI6vV24k9PzilHeCUzxSRh32QwUFg9C+3D/9nPKgbqFs+UIxD2AXxcGeMK74/D52Jp3ENq4Do8b7RTPifAWxSrbaoLzh2kcMcHQ0NDs8thCozS2WZraWNHoxlYSsebL79qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L/wrWNaweRlWWOwYJj7ZvEg6vE9tmhL4WynBVXW8bk4=;
 b=Rjs299Rhkf2XoE95IeLHQHbcJue8ihXZnemxRC2IooVJfiew11G+jStQSD7rFQGHP3Cq0GFYd9RxOBsvwoJclorhFPhbPHTGeqg+mEV+b6m32+9RaGWf38C1Tp1+oPfhHRpi6jiMfuf0RCYqIQlqg6A5i1w1KSFDZC5XnhmVBXHC+2s15/3t1M50k3BlPQxhZWGPv4kZraI6KjOA8XR1izT4ZP+YRNMkL4VTYREFC86RnNxG+2D0ui9eJWgdngUXSnNMN9oufyLq76fddgGpJ+uVpabkhO6WUM406nnp+7arvt78l1mMnfBEo9YLfBEVO/Ebh62qKt36xjaDAc7Hig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by LV2PR11MB6048.namprd11.prod.outlook.com
 (2603:10b6:408:178::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Wed, 6 Aug
 2025 08:32:30 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 08:32:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>
Subject: RE: [PATCH] drm/i915/scaler: Fix WA_14011503117
Thread-Topic: [PATCH] drm/i915/scaler: Fix WA_14011503117
Thread-Index: AQHcBn9/AB0jz2RTTUa4CxHiczIdHbRVOY0AgAAQTgCAAAHgkA==
Date: Wed, 6 Aug 2025 08:32:30 +0000
Message-ID: <DM3PPF208195D8DA8B6D7B503B6C785A726E32DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250806030856.3514127-1-suraj.kandpal@intel.com>
 <06796b24cd8fcaf992601b92dd8261a13546d22d@intel.com>
 <652c33a6b7b69e9cfea511a442df9b1280da752c@intel.com>
In-Reply-To: <652c33a6b7b69e9cfea511a442df9b1280da752c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|LV2PR11MB6048:EE_
x-ms-office365-filtering-correlation-id: dc57c647-78b7-4999-2d7b-08ddd4c3c88f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?COEER8rDhGR2caJWlP70BQcfHo8c/Mg0VkTT7mEm5rAQ1O57IA6wqy3k8KO3?=
 =?us-ascii?Q?61VN9PyWZ9wrULro4oj96P0/ZliYyK7y/SmvIUx5kzmOOp+TdRK6nlRxu5X7?=
 =?us-ascii?Q?tYfU4rP1sclXuj5NfSXsnha1i9eh1vVGSCuhlFvOFWuEAayGi1VWzXxJ0Ncy?=
 =?us-ascii?Q?O2mJ8bSn6ojJUQwMOnj9R75Iv94+dg+ne9rpGoYquAnLpysvsova0RamCpwF?=
 =?us-ascii?Q?6+YCkRVCGbejZqArc1fA7wgqlXifRl46d0PunGGXM+IDiCXNYzj2oIFr4Cau?=
 =?us-ascii?Q?6B4dTfxm14ztxY8USe6YDpTebAq0knFkPaJErJnNcgsNOEXvCbf737Bn0m2a?=
 =?us-ascii?Q?+xLwBbNKWprU65CSlFeMgHhJSWzVvbW8lTajB46+0yRfzNSbA4xsOjk2/kHs?=
 =?us-ascii?Q?HGQRavOVKxv6bmIMC0cPdbeueUtx/CvgpG+1+wN2EKMMlQ8IKNAxro2l3+Vf?=
 =?us-ascii?Q?9nVIXlRu7GDAB2TJ6QCChbohNN7o9iPchQzpVHuP1sJ9Kf0BK9hkMWY/Wevy?=
 =?us-ascii?Q?btJ7MRejnyqp1NaTlstqaIuhuEoXVgzalCpXXNBoVK6aWVvsuMbl9BAQ1gaw?=
 =?us-ascii?Q?sGGzNHW5pIwe+tOtpHPbBox9SzXFi/r+WwaJVIxBSHHe8uBR8Kv7V2MVBAA4?=
 =?us-ascii?Q?IjO0Oby6WG/FYQXId/R35dPy01o+z+hnVMp38djy4KytbOFQJVxJ1kikzGYF?=
 =?us-ascii?Q?GbYQ+sUbbEqQ9Yt6dYkh0/f07vh1qSllujNe/2gGbz5bKFNS2CoCZvSm3EFj?=
 =?us-ascii?Q?xo+b32/Ewd7U4ybv0sBjlFihfFUrsTdclizmJX2BT5i4fY+iIVevadtJsauM?=
 =?us-ascii?Q?HpK4xmsZ2ZGSK0EGntJGzxs5kI+7oVVXPko4FiEy3n+X7e8f1L3hKVx6S1eC?=
 =?us-ascii?Q?p+fJhNYoIj3u+4iVgKiJbgJqanameNeglWZ6Z+/p+lD+T0tHOh0801R+KcPp?=
 =?us-ascii?Q?LTPuvai+JQXS1Hezn7uLSCzwJM853ruJip/u4LxYP+54ye6ElrfZmYEqYVnN?=
 =?us-ascii?Q?xZrGUMq4aD1sf1utTeQnDm0fYQDWduMzB5muFB4HZujrCusiPWDuOuHIKzPl?=
 =?us-ascii?Q?xfrFbKDGCi3Y55e/xkBB/x4tAqc/oBJjuAXMPGPA/x8k0WiCkxspq4yte/+M?=
 =?us-ascii?Q?6nKansNvjO9po4SebRCwdAo5DRDNW6zX0sTCunvAktlYMC7n13cnm8QCtyJi?=
 =?us-ascii?Q?Mubs+y+m4SO2bhvx7xNoEbSO7MMerV/Eitp8Mm+uvIxRidNKKvK6tU0+Z8BA?=
 =?us-ascii?Q?jTV4FbWLstH3zH0MEUqnt/Kkei+SWdWIQIsAttWlgMDlKFmxaD3sSQYrI4So?=
 =?us-ascii?Q?t9J0pW3TX4UTX3P1KjpZRdVkoYXwfixShPrF3hcWU3LkEe2uwJm8cSBsb/V5?=
 =?us-ascii?Q?pmaz2ovy+au2flooOjLLq35A+eG/byGOwH5i9f2fLN7sZ5y8KxsqqBI23UP6?=
 =?us-ascii?Q?mzNgxEArc8DJPJAsjDWgaGAuYM3qU6VFkAyrhTZqq9vuz6+i1ARd7Zc+wrUb?=
 =?us-ascii?Q?h3YIYvx0nZtJmzg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yETm6BpvV/050ZPsJoe9yo7i+Ldvhkdn2PDiIYsH9TKWEZR7Tk5ze6XP2phS?=
 =?us-ascii?Q?HV9zY8htQkhc5KME9yW+97I2WVRioUyIdJz6niAyIK9Q/90kPEt1AAzqsek1?=
 =?us-ascii?Q?ZIGiigwne5ibnfvuqZuHb9tvi7AfHJWWSEqENKLdqEgmL9STMHB7J9+p+WJW?=
 =?us-ascii?Q?zEG4Jd/tbWBa+SjmIxLN2ONN3pm2dMUh5ALWV4AJYrZqNrmGNW+EaV/zymoA?=
 =?us-ascii?Q?8sBTzcmGvxLvLSNGopWqu12L8My8mGvOkDjtcBATzAq6TneASazpHK17N4DC?=
 =?us-ascii?Q?e1QVb+69SSyf+CVBYkosZBwrU452xVJg/feKRxm/idkIxI0/RaaxE8ou/sZy?=
 =?us-ascii?Q?bnW9iTlPEt8M2MBQZ5Y6z7q6JZneDPgvumT6pSgoesUVU0MYSYeS8AmdB1f1?=
 =?us-ascii?Q?SN9t7Fbqr/do0aP0hDe6DW2Im9mBkbrTEeQ0w804gSMITBG+IoCIo8ksfg+h?=
 =?us-ascii?Q?cfcZG8WX1rHyUzUIpb6tmA3/NeBHKavJAtYPRz2DxgZdkQHfUERttobPbiyD?=
 =?us-ascii?Q?4FZzNIuNHyFbhboRlZODUfQ0zCvEMMElV0/7V4xkt3uLlXuiHc/DoaA7BXpM?=
 =?us-ascii?Q?PcejeXiCoOBfu3DxAETX7eis4U1OgavYfkgc4cYnKMvecjaa/OV49U/dwGQP?=
 =?us-ascii?Q?ACQPpU6rhaMRSCMkWkKAsTfP6Pg9gRDhILGPppgfv0IslOUpNZKswkLcIoU9?=
 =?us-ascii?Q?4l8fYaX+PPSV7fwA0ofzbcilrw0YJOXnzZPITBpmlV0a3+ZlwZnLeoIgsB4H?=
 =?us-ascii?Q?lkcE5e0rrUYZzrUv1ROXY7VAybX6OVVrlPnz+DaTT7DXmaHUIbnsQoIdDKhm?=
 =?us-ascii?Q?OmsjQkQQ8uplIZxSvR+7sXdC/wDxR8JWcCQC7jqYf/w1VbaclpTJSZC/iZWl?=
 =?us-ascii?Q?wfaQa2Yds+v61ydhNEOq4GU4mIGj2ShN16gWyYqaq9dvCMt9KQbMlRqy1U7E?=
 =?us-ascii?Q?1gdxUEMnRw2QFVIw+0pN7iu5+s7q1gASNMDPH8JQh1Cn377/Op5o6oTRc+1J?=
 =?us-ascii?Q?bMhpUtEu4XmnEoT7rTWYY1RV4vRBMVmx6tglZuL1r1688nwlMLGupEcqnDMg?=
 =?us-ascii?Q?lckpb6zk2xav2DSe6aLla2QKdXBUlT7viqi4PCOzyPWjOkmmEPs4b6xRipBx?=
 =?us-ascii?Q?Bbo7Fo3AQbiWcFCIzKRSPY9WWZkfAKnW+TwQZlRJFiuJzy0/9Y0i5xJlqDGv?=
 =?us-ascii?Q?3MOCqxPkW9opTaRHTDsV7SXuQUmEswsXZCB7VWAw82iz1deuYaNHbWsjBUV6?=
 =?us-ascii?Q?x9MHg/OvTGW78zWbMveMOL6bg+iP3Cbmki687pPkEo3LW4Qrnp0/3RErSVEY?=
 =?us-ascii?Q?BJwB+inP5i35a+sPwbcJARMgeLyTcPICLog5B0ndYKcxVpPoe0DvDCs713fs?=
 =?us-ascii?Q?09YrYRykT7SI9rOiq1LZHWoj6VEpQcYpLU6i4zWHaJgyu3WrfNgirN5HsLYy?=
 =?us-ascii?Q?ciIDmmq5fN0YI+pZKEvvFLsjp04CGzpsSmyvR9sB3wgdJKvHCRgaKVFT2TZz?=
 =?us-ascii?Q?8C5M09T+1g2A26D0jyInKjUDRfhABQLrW2YLEs9zU4pTeDUoUCORl9F9cUWr?=
 =?us-ascii?Q?mStXMr8eSWvv/m4edCgkVOOfa99mnZ2i9yO97AG3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc57c647-78b7-4999-2d7b-08ddd4c3c88f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2025 08:32:30.4883 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BvEo/PG4BJxc+fO20zSYT40NgjciS7k5KtWKMTir9QkxWCPRPoK56CxZ3vP/rLpylwwBf16fYcBMsQjA/YASxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6048
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
> Sent: Wednesday, August 6, 2025 1:54 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH] drm/i915/scaler: Fix WA_14011503117
>=20
> On Wed, 06 Aug 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Wed, 06 Aug 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> This introduces and uses a variable id which is just uninitialized.
> >> What really needs to be used is the scaler_id.
> >>
> >> Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
> >> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/skl_scaler.c | 5 +++--
> >>  1 file changed, 3 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> >> b/drivers/gpu/drm/i915/display/skl_scaler.c
> >> index 1374fa94ff5c..cd7ebbeb9508 100644
> >> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> >> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> >> @@ -959,11 +959,12 @@ void adl_scaler_ecc_unmask(const struct
> intel_crtc_state *crtc_state)
> >>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >>  	const struct intel_crtc_scaler_state *scaler_state =3D
> >>  		&crtc_state->scaler_state;
> >> -	int id;
> >>
> >>  	if (!scaler_state && scaler_state->scaler_id =3D=3D -1)
> >
> > That check does also does not make any sense.
> >
> > scaler_state =3D=3D NULL && scaler_state->scaler_id
>=20
> So scaler_state can never be NULL. The whole if statement is a nop. Previ=
ously
> uninitialized stuff got written to the register, and with the fix -1 can =
be written
> to the register.
>=20
> The fix passed xe CI, but got merged before i915 CI was run. But xe CI is
> meaningless here, because the code doesn't get run with xe, only i915.
>=20

Yes right I did forget to check the i915 patchwork while merging this will =
keep that in mind going ahead
As for the if statement we can send a fix patch immediately.
Sorry won't happen again

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
>=20
> >
> > BR,
> > Jani.
> >
> >
> >>  		return;
> >>
> >> -	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
> >> +	intel_de_write_fw(display,
> >> +			  SKL_PS_ECC_STAT(crtc->pipe, scaler_state->scaler_id),
> >> +			  1);
> >>  	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);  }
>=20
> --
> Jani Nikula, Intel
