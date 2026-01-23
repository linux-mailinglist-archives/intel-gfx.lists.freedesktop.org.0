Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAuwCCxSc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:49:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0765D74943
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:49:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B93810EAAE;
	Fri, 23 Jan 2026 10:49:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j9Tqlv+E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E36310EAB6;
 Fri, 23 Jan 2026 10:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165353; x=1800701353;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dps2C7aNbgH95cDwtLe+0hISZna1I/KIkgiSjwGDgm0=;
 b=j9Tqlv+EUY43axNGJUzxtWSOW/6eY+wkpQQm84OXfUE+7nKNGkqkxwJG
 F/TVhdgNOuhxG2hmPIZLw8mxuYH9T8XsYFZSHxyoQIyk0nFqn77eBU2Xh
 wFets9VAfAd2lKKU6GRk5DRbjnpFnLxhOIK7xsF+Q+2++xVaZ6U1QX08o
 5Xsat7uHcljNo6LHgYKZttBlqedAUucC1ok5/LgUTcIJscP2fqWMR2+uY
 MOxwyQg0lGsjWRtvh503D4ovUNFGwzIRisTVVT6Dfip0SQHK+Wdo81ZQW
 z8CiL9RZPjt1jaQlNsklm6RiP8i499NaH9q8DesJzs0oOh56u2JNm5l3q g==;
X-CSE-ConnectionGUID: CNS5wtrCQxyvwJacQSsetA==
X-CSE-MsgGUID: W+0HsNYeSKO9nbTKynzT9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="74269539"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="74269539"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:49:12 -0800
X-CSE-ConnectionGUID: gPpg69v/QZ6fKB0xHAo/wA==
X-CSE-MsgGUID: Wm7pDyhlS0m+14U0Dt4hKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="229958837"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:49:11 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:49:11 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:49:11 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.18) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:49:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=omJ6iEeEbWKaI8PpjTobfH1dVG2jVyP1XbY3Wqb0icwA1XK12mumcjPCZEbOGSRwUKwF70oqIdWbMCR2vTnlBqY3Lim4ZcEtNEubiu84cJDln0e5GvwEhk1mNpk11e+msjTcgVwlpQO1cP7fBVAPb/TU+gTU/XARngIB9Atrx/TrXkhsQCXy2S+AsnxSAHMJVM8YWeIDn8xZsFa6DpNqzNSJUXXvqkkTMs9jSpjSKIBughuAl0OMR2Jnt/WTu+LTZ1oEDhphn71ArfL3UxvPyrCijWUxPYBf/nN8YpqBhoNAuKfajHLiC0nVXcIGAnDOgWn7/TYAPjcP/7OfyGzgNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T79iRfpp0A0uUeEMjiMJ2/1lqFV/6Edufuu06ctWGyc=;
 b=ghf4wxKzKV7zj+8HRBuLc20Utvx2ZaoYiyNTENYSm17OeLkI4DT77wnTR1jwNN+jXHKw3bm/oXA/v7QMzy0s6exrVk5a9XtJOd/Etk69RHaH/xjFMdd5N2pcUnuOUc+R53PE9TCdZXc0WlZoVZpkq0Dc6MwsrvtzFiNXP+DNCxweMO+4oylo7gay8jUxbRPsYzeGkEg+QCdLLH7dqTHTuaO1Tm4GUtj7RIjfBCc+VbOBL81uAycF19MJ6FV8JE4aZyxueS+aVEpw8rm+HwBfgG5pQWg8KErxkl9CqSqZVktErW6BAeUCInbt8Ew6ehNvd9m5HsZvE8r3h97ZOWNr9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB6014.namprd11.prod.outlook.com (2603:10b6:8:73::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.10; Fri, 23 Jan 2026 10:49:09 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:49:09 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 15/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_fifo_underrun.c
Thread-Topic: [v2 15/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_fifo_underrun.c
Thread-Index: AQHciyrzXvRG5xbSrUWZiRoLJn3BorVeGvkAgAF6R4A=
Date: Fri, 23 Jan 2026 10:49:09 +0000
Message-ID: <DM4PR11MB636036000329AC7097387DA5F494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-16-uma.shankar@intel.com>
 <c164173e1696e5d8fee8b5be0bbc90fa4f5aff1a@intel.com>
In-Reply-To: <c164173e1696e5d8fee8b5be0bbc90fa4f5aff1a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB6014:EE_
x-ms-office365-filtering-correlation-id: b866f023-361c-47e9-1953-08de5a6d0980
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?jjSuSPkCt/FUwSilpCEBb6rJ0WXH2Z4M5oxypX7oy4y++m7iuktpvlgAfnB3?=
 =?us-ascii?Q?7H24SLTWWmPuu5ttk8cKB5zc36VxHzEn7Gr4Qfpd4k7hDMEP8ZKBuinuqifx?=
 =?us-ascii?Q?j98Obloz+vu6WC3lZclOmEnfhJQ8b1e0QNooNTqQpgoDyuWDGSDz8o6atLtc?=
 =?us-ascii?Q?sEP5PIR+xKS80y0uqAKXIPypcYHMDNULOCe826sK/sgakqltPqfqJJtHl+n9?=
 =?us-ascii?Q?dwj06aRg52qjP0wGc/rN3eJAPLxd8k8qU41e6ZQJmW5EKN8x0VVGdp7TrepC?=
 =?us-ascii?Q?amAvg/aaKxMKEcT4U3DkCur9aKf2r7EEjrTxtbk7aS03ONX1M37Jjm1h7NTy?=
 =?us-ascii?Q?BXFJ43qCgcbNFDgdlZxsdJKq/KbQ1/HXjK0NXshrIp22Y+Hh0EmqUl484/AM?=
 =?us-ascii?Q?jWp83wCnANHOjtFYZ+ZFm8XyX7L0QY6QBz88Tt4HnODnYURgCK3PLmB/OYMC?=
 =?us-ascii?Q?UbrJDiHRtzxid2YC9hK3C8szNmMPocxkFDd9BT6RvcUtq8AX3CJzSMflvGmJ?=
 =?us-ascii?Q?Hc+6OC26efbHMn/kHYzjkzTGrsclAou1GRnultE1vrGs/1Cvxu5rSxTK8ele?=
 =?us-ascii?Q?lKcY1ApmiJPZzsqymS7sIoCROHalTfu0uuJvm00dvxg9b/BUtZtNZ2xmGKuy?=
 =?us-ascii?Q?ojkwQJgtrCaVHqF5XyzYY1CpOsIj2SYfErOblYEQmXh6EKJV5ChLf5svTaM5?=
 =?us-ascii?Q?49A7lW7pquGEYXMiGZJgFbeq2pA1y5xxkJPzeZn7+Z4qQMkdjWLAA6snw13d?=
 =?us-ascii?Q?jG5JB3gTPm0fcRBiwPz7aSqx50hikYlgpfrGIDgE2OotGjUkt+wjN2rxB1w9?=
 =?us-ascii?Q?zoD8m5Lnxn06lFmuhg6KNmc4W2/CP1bnG9P5pZdCexuuy9OpBmY/lmUAfBOh?=
 =?us-ascii?Q?3SmLkJH9DBBQe4G7ZX+A9GCPITWWoP+XLX052go+Lk6qTNgK5YZzOEMSIZTi?=
 =?us-ascii?Q?hejsJLsKAtgS4W2bnM+LYFCuq0nh27c7bYFjL/eyaVI5iejzIc8Ql69ZqlYz?=
 =?us-ascii?Q?47BRcA3YxGhwS7QXmeXFedSO7Ye/euuXUFEqGF5DuOVWG0YuHGbLlmzkFUTJ?=
 =?us-ascii?Q?eAWCWgkMOh3a1KCTPv7YN2Ciy9iuBbT7k86V+ZCX16nksZ9vgRbVNz5IHmT7?=
 =?us-ascii?Q?PVgd7LCrKZOqGK9Bt+8SDANgQ65I8P6OPWtVr3ohXhwAzJOw33sV3ZN3BuIZ?=
 =?us-ascii?Q?QjiIXzeIgQzaKN/1ZbOLk5zYj6B0TgHBc7VH1oXxl+ZbvTB/LySLC2KAGvpV?=
 =?us-ascii?Q?YJZAGfE3sto+iIOo77N31WjAXpo+utTZ3ruVpRLVox68hGZ0nEfZeN1AT6w5?=
 =?us-ascii?Q?uHosIi+EM2En2fLDcKk0tNery5jbFT+B98YYblr8FOSbXikBxlfsp6TuVQKQ?=
 =?us-ascii?Q?hi1eK6cnAt7qa+QYLhnm4oNyNIyzR636E8emoINY7wUNWQxhD+fccsv+8QHm?=
 =?us-ascii?Q?VNdprVLNQDQrSVjO69U8SYqL9zLyX0tUU7SLoRyYNtGeg3Xs4jScus7GwpIm?=
 =?us-ascii?Q?wOB7yR2SkUNMwxBjolSFMpBsXtHDlBQTQbXw8pL8axT6kAOVL4nmNQz4OgB0?=
 =?us-ascii?Q?EipiboS61gJJEBIukNGWIL1CtgevmDweE8guXLoIIJYskZOHmbxbVVfEG6UC?=
 =?us-ascii?Q?JkMhvIxC9opV5NcGcc3tVVI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Y+nnub/I4n/WAfHcsXmaUC7LnOTbqJQD2n8FtIiyeXSWof4F9t30dg5dk3r7?=
 =?us-ascii?Q?OhRxB/aqzAXElPIsvJkyxnmGkxztUmpY2faJo1Gsua+kPKZ7msoAAUMgtRxv?=
 =?us-ascii?Q?BWKZNK8nmd6vqinhCAnMyorA1kFVtsCNgT40FdqpO4nYa//hIyqVF9j/jRMN?=
 =?us-ascii?Q?mjyzB4xdjZUgmiBjeinzIltfJL53PYkcd8tFAtep4lW1K/mVkE3/gfGcwGex?=
 =?us-ascii?Q?mtUG6vHlEkGFCYcYdRbYbxHHEbAjljXIoDsm878mOMY4+YnLdF11bSpXunAf?=
 =?us-ascii?Q?RrHUGrUvGszxh5gx47kJ/A82+AakwQpii2Uv5lhgh1wewz2B9VruRHkfvm15?=
 =?us-ascii?Q?Vl9zYwjAEEccc3Yd3d8O8E7dRfJTCRJwWZK6Yvka4v6HFLFQq+Mxzay0MvFc?=
 =?us-ascii?Q?Ju9Aa0C8BRrrh8ACISqtRbAn7joK5Bv3Uejy74JX32PdF4U/JHiY15fVKddh?=
 =?us-ascii?Q?uEY0+qIaAFO9x0yZFFDSmC1pKZiw08thPxUSrNPty7RTT1AoVfKG8R371u1z?=
 =?us-ascii?Q?nNeIhiInxW+XMgilXf43LbasL/Gu34P++e/bdOWH9tYzJVYJe2XkqpIJOQ8A?=
 =?us-ascii?Q?j5kiEuQq9osHXG3lKtqJ6BhOtBa4W/OQzu4EYoUmH6Gcj6lFlAu3V71zc7Cl?=
 =?us-ascii?Q?hZBEwJ4TF328cbyO4WH/hUqv1ihQKGOM9YrEH3rfWpYbdNvwudkHqy6MemYS?=
 =?us-ascii?Q?me94AZdZUh0dDmwBElm29/9FUENrAMNTwMX9fQjtyVrje5g5llUWe4tPPe6w?=
 =?us-ascii?Q?k6SyJNHwyS190d7OLC/lK8ADW+utHkAe10hyRW+4PFEd3kbAzjnuCK1dHuiO?=
 =?us-ascii?Q?QzmNqoTOLnH64ixl0rSzlojBEv452o1KSNk5Po0am0jJSY6bX9i4XRoTwrQZ?=
 =?us-ascii?Q?NUTwLLJ8B/4PtKd8OG2Vs6WUfqBZN79S52qlSEVFKRizaN/Oq8g0SVvhsilI?=
 =?us-ascii?Q?yIQw3eRCCyyHQO3wgR5yHkaThdfbkGMKP9Z/+Ce7mL6lFLX7JWBkHMQlIEBE?=
 =?us-ascii?Q?nknsfyPBUEqq7YTBxPEk0UWy+NfEVlMNaDkzgT3bnQNboo4fa8MGfpGrSegx?=
 =?us-ascii?Q?eUCth1TdHgJV1IzZJJE8UNuOOGIZ5AihRLRmV/31j4BlIOIDwsDrXwZHAsPs?=
 =?us-ascii?Q?nA42d0SS389tc6SYsfhQ7Ta7gptT+H1CBky2mYQrSJSvyaTf56raFtqpukq+?=
 =?us-ascii?Q?gRuL5QGIKl7nTzrbY6wNStjDwa6DyVRxR3DUAyU8n43dzG8imERaSckJSUYb?=
 =?us-ascii?Q?k7etig6C598OghVPYvkSc81G/bVKZJ1VVSy7vxpbkyekKeRcqZUDXPpjc3i3?=
 =?us-ascii?Q?pVmjBlneR9p74//N9O1oFILsQ0Dhi/U0eomjamxIRfvl22K0rGF30dexat9S?=
 =?us-ascii?Q?th6yt2SXe+LEufiGWL7OGsh9wLzd88ivimKZTQiG0woUl8PoeTMVPkEfRnF0?=
 =?us-ascii?Q?RGuMsGfRlPjjbbPhiNFAr8j/DIQur/2blM78GXpxf3vapHNqsoL656a2kmVa?=
 =?us-ascii?Q?0ZCmgDQfCCjTNg421qNgbpwrgy7t5077msIdH/UvpT3xxF+mGknJ4Nu5nHxi?=
 =?us-ascii?Q?Snubz/stE3+RQn0iJGaU4KRVnFI2huXpwfx/Uu3VGL7qhqItxr0QoCxmrC9p?=
 =?us-ascii?Q?/9qwW2YHj6WvN2jaU6fUShLCCZFO7eTeKqELXww/sAjNZY4BrwIqRV26tJhf?=
 =?us-ascii?Q?ZbHA18pwgLbdwMtT+spnLX3PXHIPzIUrRWaFVy+PaYbNZqrw47RIrzDDf8DX?=
 =?us-ascii?Q?PqE++F+48A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b866f023-361c-47e9-1953-08de5a6d0980
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:49:09.0481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +QODDoPVGdpPk0DQg74CCcDt6ZClBUA1hbQ6cxnHYZ7fGCYKt43tqotC/8LgnT/Sbe89X2ysPFjjzV0viVWUmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6014
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0765D74943
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 5:44 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 15/19] drm/{i915, xe}: Remove i915_reg.h from
> intel_fifo_underrun.c
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Move GEN7_ERR_INT reg to common header to make intel_fifo_underrun.c
> > free from including i915_reg.h.
>=20
> I think these should be in a display register header, not the common one.=
 The
> users are display and gvt, apart from a single use in
> gt_record_global_regs() which should be moved to display. I can send a pa=
tch for
> that.

Thanks for sending the change Jani. I will fix this.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
>=20
>=20
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  .../drm/i915/display/intel_fifo_underrun.c    |  2 +-
> >  drivers/gpu/drm/i915/i915_reg.h               | 23 -------------------
> >  include/drm/intel/intel_gmd_common_regs.h     | 23 +++++++++++++++++++
> >  3 files changed, 24 insertions(+), 24 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > index b413b3e871d8..c834be759e40 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > @@ -28,8 +28,8 @@
> >  #include <linux/seq_buf.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_de.h"
> >  #include "intel_display_irq.h"
> >  #include "intel_display_regs.h"
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 62d58d7cfa7a..0af2c9c8dc0f
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -326,29 +326,6 @@
> >  #define GEN7_MEDIA_MAX_REQ_COUNT	_MMIO(0x4070)
> >  #define GEN7_GFX_MAX_REQ_COUNT		_MMIO(0x4074)
> >
> > -#define GEN7_ERR_INT	_MMIO(0x44040)
> > -#define   ERR_INT_POISON		(1 << 31)
> > -#define   ERR_INT_INVALID_GTT_PTE	(1 << 29)
> > -#define   ERR_INT_INVALID_PTE_DATA	(1 << 28)
> > -#define   ERR_INT_SPRITE_C_FAULT	(1 << 23)
> > -#define   ERR_INT_PRIMARY_C_FAULT	(1 << 22)
> > -#define   ERR_INT_CURSOR_C_FAULT	(1 << 21)
> > -#define   ERR_INT_SPRITE_B_FAULT	(1 << 20)
> > -#define   ERR_INT_PRIMARY_B_FAULT	(1 << 19)
> > -#define   ERR_INT_CURSOR_B_FAULT	(1 << 18)
> > -#define   ERR_INT_SPRITE_A_FAULT	(1 << 17)
> > -#define   ERR_INT_PRIMARY_A_FAULT	(1 << 16)
> > -#define   ERR_INT_CURSOR_A_FAULT	(1 << 15)
> > -#define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
> > -#define   ERR_INT_PIPE_CRC_DONE_C	(1 << 8)
> > -#define   ERR_INT_FIFO_UNDERRUN_C	(1 << 6)
> > -#define   ERR_INT_PIPE_CRC_DONE_B	(1 << 5)
> > -#define   ERR_INT_FIFO_UNDERRUN_B	(1 << 3)
> > -#define   ERR_INT_PIPE_CRC_DONE_A	(1 << 2)
> > -#define   ERR_INT_PIPE_CRC_DONE(pipe)	(1 << (2 + (pipe) * 3))
> > -#define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
> > -#define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
> > -
> >  #define FPGA_DBG		_MMIO(0x42300)
> >  #define   FPGA_DBG_RM_NOCLAIM	REG_BIT(31)
> >
> > diff --git a/include/drm/intel/intel_gmd_common_regs.h
> > b/include/drm/intel/intel_gmd_common_regs.h
> > index 049349c365e3..2b2a7f21529a 100644
> > --- a/include/drm/intel/intel_gmd_common_regs.h
> > +++ b/include/drm/intel/intel_gmd_common_regs.h
> > @@ -169,4 +169,27 @@
> >  #define   INSTPM_TLB_INVALIDATE	(1 << 9)
> >  #define   INSTPM_SYNC_FLUSH	(1 << 5)
> >
> > +#define GEN7_ERR_INT	_MMIO(0x44040)
> > +#define   ERR_INT_POISON		(1 << 31)
> > +#define   ERR_INT_INVALID_GTT_PTE	(1 << 29)
> > +#define   ERR_INT_INVALID_PTE_DATA	(1 << 28)
> > +#define   ERR_INT_SPRITE_C_FAULT	(1 << 23)
> > +#define   ERR_INT_PRIMARY_C_FAULT	(1 << 22)
> > +#define   ERR_INT_CURSOR_C_FAULT	(1 << 21)
> > +#define   ERR_INT_SPRITE_B_FAULT	(1 << 20)
> > +#define   ERR_INT_PRIMARY_B_FAULT	(1 << 19)
> > +#define   ERR_INT_CURSOR_B_FAULT	(1 << 18)
> > +#define   ERR_INT_SPRITE_A_FAULT	(1 << 17)
> > +#define   ERR_INT_PRIMARY_A_FAULT	(1 << 16)
> > +#define   ERR_INT_CURSOR_A_FAULT	(1 << 15)
> > +#define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
> > +#define   ERR_INT_PIPE_CRC_DONE_C	(1 << 8)
> > +#define   ERR_INT_FIFO_UNDERRUN_C	(1 << 6)
> > +#define   ERR_INT_PIPE_CRC_DONE_B	(1 << 5)
> > +#define   ERR_INT_FIFO_UNDERRUN_B	(1 << 3)
> > +#define   ERR_INT_PIPE_CRC_DONE_A	(1 << 2)
> > +#define   ERR_INT_PIPE_CRC_DONE(pipe)	(1 << (2 + (pipe) * 3))
> > +#define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
> > +#define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
> > +
> >  #endif
>=20
> --
> Jani Nikula, Intel
