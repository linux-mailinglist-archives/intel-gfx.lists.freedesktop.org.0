Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD15D997687
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 22:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA4610E7FE;
	Wed,  9 Oct 2024 20:38:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HscPwhKW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D0C10E7FA;
 Wed,  9 Oct 2024 20:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728506296; x=1760042296;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IcIpR1i6zhzZq29MMD7oaHemLZ0IA+53Y1EAD9RvElQ=;
 b=HscPwhKWva8CgBA+z5AYj/psc5EwhtTm7uj+jYrmoRLDUmgQKFf3xHUh
 MtSH5zzsiKuHRcb+WaXiWDYlKkEo9JgXwcJOL/ZPbO7kMDVGY3Y55AEoK
 1xNhFTD9bxYDRJq5tR00JOFBYhykUfYkLZBuhsWWtTrRH/pKb1Hxr0OC4
 Io8zd1UNLJbNOQ/3JCJsN2KP1JT0omfSk8ymUkfg/1JH7ltSbEV4c8CtO
 WpaD7WL4rjCj5zKheanJBpT1pG4VrQ2hot1g/WaKUr0z3+ItI8OYAYFul
 UhxMHTAiu+9/0aKFjeHUAWlLCf50KTMBLOvlG8QT9EwkXQb7El0ug9Rb9 Q==;
X-CSE-ConnectionGUID: RZh5HTtCQAmz5DUZoDxTLQ==
X-CSE-MsgGUID: pZrHknjqRUGFzyIsijn+RQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27646492"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27646492"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 13:38:15 -0700
X-CSE-ConnectionGUID: SpjmVhXFR0C43kTXl+C6Jw==
X-CSE-MsgGUID: OFouSjmcQnagOKVD3WwObg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="81176162"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 13:38:15 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 13:38:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 13:38:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 13:38:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 13:38:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 13:38:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EEMHf3ny6OlaqZrqNlkRpAzZj1aHeE73DY8celpx3RjvgVgTJPsvYh4nhWkUFA6vW5GpU7gZU/G4KL7CPCGOPcDH9rnXf0jDqbM8H01OmOT9z2+RdG7VImT7ILjuHibthcl/NTck5rfKlj4ffT1leMX/IuuF6WlSv9yiy4PXslPSwuZvlbD03THy6/Cyt8yebM/rx1NgvxRwCsLf/rGqlhuLTyVhD00Sj9QL3d45qKUpl5UbZCk4SmNOWApUBIeNtmyzxBMuRMg6hHclS2R4Rskm1XxQcA9zxFnB4cMAwT5eIMqU1OenuG75PX65CbI5dA2Aq72V6Hbu6T7l4lGMgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fPLWtKsro0iutryN5CQqT3ZYng7u+swdsv44Mq+bvW8=;
 b=QvDqUv43LYriWr6N30eda2l9FANf2EZWJrOpUe+JJyBhq+62m/gCt/XKLcgJrlh4OotJNrm5CcbeDFb16xDkTSkV1pe6ngu61lGrksHBwCkd/VGi/pN9c+cBF0KLULOd5xLyrk7A07JbXYQetd5m1XFxQBdGN8xWpT2Uj9XlpOKtHg8d5wgKC8GRN34zyG6kjm7A3SicAMJu3kpepPFOb1s4GXduMP2jb5EDQs3dp1Bf2YnXq03dMA8RHrkMYMy5EK/ykur3iid9asAcNkDqVpsVp8dR5kxUpivDwqtAopx4Il+QKw/zv+5pco9A2IyY8IAVbHj9NcmIWcsW/rSvbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DS7PR11MB6102.namprd11.prod.outlook.com (2603:10b6:8:85::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 20:38:03 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 20:38:03 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH v2 2/4] drm/i915/dp: Disable unnecessary HPD polling for
 eDP
Thread-Topic: [PATCH v2 2/4] drm/i915/dp: Disable unnecessary HPD polling for
 eDP
Thread-Index: AQHbGoORk9j9EfYMiUm123QMvVyz+bJ+4M6g
Date: Wed, 9 Oct 2024 20:38:03 +0000
Message-ID: <CH0PR11MB544495C6572398198E77F3CDE57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241009194358.1321200-1-imre.deak@intel.com>
 <20241009194358.1321200-3-imre.deak@intel.com>
In-Reply-To: <20241009194358.1321200-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DS7PR11MB6102:EE_
x-ms-office365-filtering-correlation-id: 0c4b7a28-b0d4-4223-b13b-08dce8a245f2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wIB9pyVM5c0giawqkRyg6t0acdLOYOKqRGltNvPaJPsWDcCSnNKDmrQjaSxw?=
 =?us-ascii?Q?J4Kti1nfiIpmPq2Nab1LnKn8T6mGmGpvz3H+KNeyMdCZAozQ4/pJq4wf7Lst?=
 =?us-ascii?Q?vAre++atn9eB1+76mOjlnoZOMPIyfmgi8/l9bVvhGPETj7ZFC26A55NQsgDU?=
 =?us-ascii?Q?4rY3tjLGkjDlQQdJadA1OnCK/4wnbIpSuuJ4wS//IYLaOlxN2bBfWG08hKjh?=
 =?us-ascii?Q?Qff+87jHL/R40WFdfzQ3NsbJA9CZCwm19mLuVVIxIaBM3gw25C+Ld9vmhU6+?=
 =?us-ascii?Q?mpHEheETBxsqXhD5G2/v+uXH6TG+dsbWSljwGGoNACjcQ/iioZnilf3WOqkU?=
 =?us-ascii?Q?eEoW0Pkssu5opPa6tKDnf8xeI6suruE4v8Y/R7F8e8MevilZu/SME7q6YSY6?=
 =?us-ascii?Q?jUktSJZq/d6i/KfAXgFspkWo8VxHufder/rxHjI2JJxLsYXFyy9qWeNB2iRS?=
 =?us-ascii?Q?gv0uWi0G0fOqsOFBdoIbRKDPGf5N3ooOiKJZ4+m7B4RFLTXgkk52s6ztQZtx?=
 =?us-ascii?Q?8hzbFTTGmPD+q4okGHnuXXQUJWjnPnBi2GvGTcw7FOraez5JI8NVovCL31cm?=
 =?us-ascii?Q?NNzGi1WGevWScjN9dhfxHDrgusHo6GdcJa1yZBWNrqXQ0U2wbsnoYvqMTVko?=
 =?us-ascii?Q?gG0H45HgFrAUm9rB1eb8nMkSVeyk/eGosAsHD1ZWJPjWwIhzY6pSuDy5K04t?=
 =?us-ascii?Q?OdJV6MTZEl3Fbp+0HiilTK3M+nok7ffwGZ4opmhwJGgxtbRWUXoKqdBt3OVr?=
 =?us-ascii?Q?yAi5L09oE9fMC4xyeMTl59eNV+lHv6yBLuJ1dZ0Ux6MD3BvZhdtcpSxy+mKP?=
 =?us-ascii?Q?y5a0l+6/MT7wQ7NxlkkpgyPaKiVc6q1xe6IzB5ycb8yHkGQlybRirDb2yHk9?=
 =?us-ascii?Q?+53vDuD03Bv+XA1K+Rk2gq8Lc3K2zCHnzPi8o22z0HwCOvNbW4Sr4MQCgdef?=
 =?us-ascii?Q?9LXPzVzHodbSeTKcfiXPcUjHN9VoA5RQTaBmjcSUl4a8EFq8I0g6NiojwWo/?=
 =?us-ascii?Q?7xsNRouSECXVjgdxHZIb9tgpcSOU+IEAoIMDssuW5djwI42+mC37B1NS0zTo?=
 =?us-ascii?Q?FGJdhwmCCThR5bDG2Var3DAX2tPOFO9E2SyA0/gI0VB8uV9wTJlj20n1Aw3F?=
 =?us-ascii?Q?0PYd7nqMkEzMKahi3fZbPL9+rhjwISAaVryipJbu+WkMxkfLB/hsgOy4Dw3z?=
 =?us-ascii?Q?zbRhWmy+lkeI/9rKvWqfThaCIjt3tFfOGJ485Rkv9YeV33Rl1CcVjhLBVOCK?=
 =?us-ascii?Q?Na3/SbcvvITk816t0N5sslUVeHTQU6BNvR4JIEki3Uz7lu2Td1shinFpnW0C?=
 =?us-ascii?Q?DUIHankBhb3BW92szVQHbMt0ciHVzA/Vg9W0u3AybLCpmw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c+aQGOjgEGAPsSFU2tjWAToACxX8VP84w+lllRc9CQmZrMG/dZ3+4ANcI81p?=
 =?us-ascii?Q?HUlvtEXuh3ckKC/2/IEEh8At8CJac4cIJ28F221P9IsX3OYI/ctG8xfRKVhe?=
 =?us-ascii?Q?plMZj6HNcQOJQiu45s8zKY5QcIU+n7O9rT4sZLTArFtLbtNLXLCX/ChC8FTE?=
 =?us-ascii?Q?j4YSxSsr6rnoO4w+JuHIfNB8PkfWchoGUzmp1NLsCqXs2DgPlWa0F1x3YY94?=
 =?us-ascii?Q?0cmALcJqgQmkgHUgl8qujFGnKmQZD87OtMhhQ50cGOBg1GVj2aSYCHYm1cRt?=
 =?us-ascii?Q?nVDQCtbY998EFJqT8tZtCx3Tks1UcABLxtRlFb6o+l2R1wIsta9R3KwdP1Le?=
 =?us-ascii?Q?PiGfhmvtZ1dQcFaG3YtQ6m5NNu25WARyo4gpHfF+1oMP7gKtcPGlm7zJPc+d?=
 =?us-ascii?Q?qOnDxWLVwHadTaq3JwvbIu08dkr3vggIbAIVFMMeqEZNaEh1Lof0/FFPsOpo?=
 =?us-ascii?Q?sGfcoaSG/O31dnMmMokpK3v5DljAFsZF4ZEknrnKK48NIHFbUx+TXQ6yTn87?=
 =?us-ascii?Q?4CbTwGnv67YliUEv5/U7FJDq+/jBOBH2ETxGhVMab9iNvBT8AsZpW/kHO9vs?=
 =?us-ascii?Q?tgeX2bQJWiFd8FAteB8j0vnjXFsAHHIDxXi4rht0KKHWgHwxE4JvuPZwncXT?=
 =?us-ascii?Q?yQt0XituQiHoS0ic9kXmKXTB9VX38GUrEfQYu0vsuFOZQnYwg8fhyD6YZlP8?=
 =?us-ascii?Q?md7vfAqwgsLaQ7/Xz0SYXi6/wJlKOSg9G+Q5GnchFIhFjDacVnZSaNN8eXuG?=
 =?us-ascii?Q?K5mjo1Xp0XETSy6akzvyACnc+yQMOq6By+8GLDnuRLITi16KLJnapwGc8V6p?=
 =?us-ascii?Q?yRV60WgY2CQVSbk2rKC3ciTsI7YFuYg8FylXRJe5MhnMG+oCoWPA1wLpGq3R?=
 =?us-ascii?Q?FtI18l5ph3DwM48y2VDFU8VQm8fVXcKaHdN7WPhN5wjNrjw+7doFOe3JaoUs?=
 =?us-ascii?Q?ejH05/AYtQ/4YwPloWpYFlas7QCYgWy6snEl0NOo/4yQbvttCO/WFR3X4nJW?=
 =?us-ascii?Q?N5uK9r34/OB0HEmFgOJn/RweRrwGAFunThO71HF/nBSUCPYtLs7gCis1b777?=
 =?us-ascii?Q?nmIJTfpKpydpvTq9KGZuVyeWDfurtZa2HeZ713DZ3TDVH++61mFa87YmWNST?=
 =?us-ascii?Q?UQG+jro8Z268JdTUDMJLvT1KT1YB1BdX0Md2FnXh0GIBEDXYWtlf6FtjqEqp?=
 =?us-ascii?Q?XZItFsgsNccBxYTm6v8rFj1KlRl9ZGIGxX42rqsqdtCPSk2bft70ngQxbuf4?=
 =?us-ascii?Q?ckJnWrdMqpROR7DcsAMU0xXBxsHxcBq17elanPGHuLpFLF9oA7SdEA+v9oAq?=
 =?us-ascii?Q?9zfGrlBeOvKG3/dKhe+xFg2GGGT+ZhfYbYvE5IzIXRL8p/jOWnvdt/bA73yc?=
 =?us-ascii?Q?KlT2h3m5PWDGpnyh/gNdXkl6fOERkxbl8ZHdihRZVr3VighRt90wttUUUOsV?=
 =?us-ascii?Q?JsqzFSFB0YvMF+S7GUadevgo5u4/g1GUhdPfx/tm6AyZU/mzcQ6s4vC8E1gR?=
 =?us-ascii?Q?zvRiyAC6GwJRQwv7cr1WTlHlyj26wS/6H1yJ3yVHBh7HwL4R/L/eMMBXdXUq?=
 =?us-ascii?Q?bPg6/zDRX5330TNKHWsxGY4hdrz9poP+fHnbQE1uWrsFFo7evDJkydUUeEGR?=
 =?us-ascii?Q?Qg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c4b7a28-b0d4-4223-b13b-08dce8a245f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 20:38:03.5224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TDA8A6GFqOYef9eA6QOueXiSxxrjDZVLHeDk8p+uuplHkMLPi4xpAa8igEccT2aZ5BYEpSLT2EvnhlJ0XpD3SPDEnxh8uewRM5BDa8TfXmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6102
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre=
 Deak
Sent: Wednesday, October 9, 2024 12:44 PM
To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/4] drm/i915/dp: Disable unnecessary HPD polling for eD=
P
>=20
> A registered eDP connector is considered to be always connected, so it's
> unnecessary to poll it for a connect/disconnect event. Polling it
> involves AUX accesses toggling the panel power, which in turn can
> generate a spurious short HPD pulse and possibly a new poll cycle via
> the short HPD handler runtime resuming the device. Avoid this by
> disabling the polling for eDP connectors.
>=20
> This avoids IGT tests timing out while waiting for the device to runtime
> suspend, the timeout caused by the above runtime resume->poll->suspend->
> resume cycle keeping the device in the resumed state.
>=20
> Testcase: igt/kms_pm_rpm/unverisal-planes
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 3eff35dd59b8a..6b27fabd61c37 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6476,7 +6476,8 @@ intel_dp_init_connector(struct intel_digital_port *=
dig_port,
>  	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
>  		connector->interlace_allowed =3D true;
> =20
> -	intel_connector->polled =3D DRM_CONNECTOR_POLL_HPD;
> +	if (type !=3D DRM_MODE_CONNECTOR_eDP)
> +		intel_connector->polled =3D DRM_CONNECTOR_POLL_HPD;
>  	intel_connector->base.polled =3D intel_connector->polled;
> =20
>  	intel_connector_attach_encoder(intel_connector, intel_encoder);
> --=20
> 2.44.2
>=20
>=20
