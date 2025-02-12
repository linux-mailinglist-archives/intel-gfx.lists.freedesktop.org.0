Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FCDA32097
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 09:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC7A10E7E9;
	Wed, 12 Feb 2025 08:07:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="krAnZfam";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52C3C10E7ED;
 Wed, 12 Feb 2025 08:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347662; x=1770883662;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/sKKKDyKc7prTxDowrFZo5fuuuVZRlWZF6MZfpbMQO8=;
 b=krAnZfamjeKztQUfPAuEKBRJYI1PumLmiOefpoZ4YhhFnCnrmmOk9GH6
 Skezk+AcEmQa3XW+Wl+E/XyiaxwPgb9pTXlQxrJS42XaddboXdicYJkAc
 ZCjAf05Qz7IXcYxFEiP0Ft/I10mle/W1Pqi5bYCQUDkVXuU5vlpeW1BbX
 j2XJV3/EbLSp5p/CmELtO3QVNhIyn4b3TuxSLQgmHb7ZoM7UQ6A21PSDI
 0MkCtPQEPG+B14lwO819Ap7rtlk22X9KnAqqNc1FT+Sr1+O3hcCrAovCj
 q3dFJ2EQAyPJIlZnDI7F0phzkHciuEi0TO2jP1Ka9Ud9G/vxFNusb4kek w==;
X-CSE-ConnectionGUID: E/a159w8SzucHLI8ySC6zA==
X-CSE-MsgGUID: F+XCzUJ5R+6aQu3RwLvyEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="51385384"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="51385384"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 00:07:42 -0800
X-CSE-ConnectionGUID: L7AnIyOMSPKa04HSMQXw9w==
X-CSE-MsgGUID: esjPqR18QY6EKKY4E1nPSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149941518"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 00:07:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 00:07:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 00:07:41 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 00:07:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ekVALNbopwebWhLEUn4q7fIFl7541l5ZW60QmB1zdVMw0ql2khvzfM9QqhsUjzBUUNKLJScu/ZQV8Op1WN4KZwChZ0An8Mdr1UNzjksZ556YL7IOF46zdJuHq1FY0eH8K56vH48ogmIK1gM/HKE7AxehvgWJVgeiYh9Wi8AiryF+UrTbCBI+YjeT1MYUAqj8cuM1DiDFT9lyvc2pGG44cfSE8JvoAdsb1C2A/uJ8FXRgmF3NERbYMdjPdooy5Fo37lqCM8wgSGF5FpEDsUjph3j/RtN3Vel37vBrdImjM3bk7JZYvvVPwlEAxC/F98/6t55k4PBiJseM9yru1WgxWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5wvLBq58C7cbsQP8dPv8WUbK51ycHGxXHhJU04Kr2X0=;
 b=EeXXCnDdpe5qKXLs0unWNh3HznZSAgKPZ7w3zOu6nxCGoJKZQh4G5vUg8T39wz8kaOUWmIBJ5RDF/10t+aZkN+lIAYwlmVI8MAI/E5OQETfI2I3tNW5CeABWIfaX0SKzDf0CwbmQGCnAhOzE0/DSC+MOVbDnREQsT1mGsdRE9j5miPgKIKlvfOYXdUbIFCzLq3RiRoQ1A9OtAYU4WuV5xpX8O+mGuIdvN0AA4J0JWcqAyHYACmMP+ubQ6Mwm9/hRW1T9D7tGFM/S+G7XIFYgAcqUzF10aGw/Aymg2gXZOb0qF72xfYxH39YMjHRyqx1HF9Lt96FKeZfc561dS03zrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB7326.namprd11.prod.outlook.com (2603:10b6:8:106::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.17; Wed, 12 Feb
 2025 08:07:05 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 08:07:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/reg: use REG_BIT and friends to define DP
 registers
Thread-Topic: [PATCH 1/3] drm/i915/reg: use REG_BIT and friends to define DP
 registers
Thread-Index: AQHbeWU+gZPhJNHpU0uO8z34s/S6iLNDVwGw
Date: Wed, 12 Feb 2025 08:07:04 +0000
Message-ID: <SN7PR11MB6750130E77EEDC5C1700E211E3FC2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1738935286.git.jani.nikula@intel.com>
 <719f1ceb87262ae49bb20209d3928da343126226.1738935286.git.jani.nikula@intel.com>
In-Reply-To: <719f1ceb87262ae49bb20209d3928da343126226.1738935286.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB7326:EE_
x-ms-office365-filtering-correlation-id: 1bed7f86-573a-45f1-1ff8-08dd4b3c3cf5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?MaX3dP8TKzacuqAI327b7cobU705aeuiGWS7IV4XycwckoexS8M3JTpow5zt?=
 =?us-ascii?Q?VsAey/tNnpsxnjF86KEzUt16Z2Cp4A2CkeT3sWWKmw6jNOJFNBFaQ4d2D2xk?=
 =?us-ascii?Q?PX5ds7mzmBNBFWSPvLT1dkgtS9YQNCfXiGooPbxnSL2ez7U2JxRHFqGgp5A3?=
 =?us-ascii?Q?bpWgMiPwUAopOEZRrSaEWlc+3SWagETmLRgpF5cnTNFqaR90SP+zK8I99Cqz?=
 =?us-ascii?Q?b3DmlM+C4n6E0GI0TNgNvBVGTLK3SFbaP7/9RZIzzIndWnU8vnpjW1vUEt2x?=
 =?us-ascii?Q?PWoMX8uEFVit9meBVd7KuyMMZ2hVv3SuzQ1eV2oIQFZjQT2KY7pakbmtLNAt?=
 =?us-ascii?Q?i3p3dgtGA25bYKLmTwBY3zT8a3NP6t1mt2MKcZssy+uaohwE5S/bCAxCvdAj?=
 =?us-ascii?Q?5dw/+CdfvUEbEf/4kmWUQQXSZy3iIdV26lQr+Bnj+0zMUaEFiGdDm1ssJtz1?=
 =?us-ascii?Q?bAL6TB7Cfn0dpemyFXopJOsOhsFbBLcmwBKNIzsO4D31G0Iawrkuoh01JlYQ?=
 =?us-ascii?Q?bjx250Z3/5jzhpIHxd0nkIhVfySUdYR6JDBtfNUNyCg0sOWJQkBvwE6baLtj?=
 =?us-ascii?Q?SBuAOyED+MNp+/jP/KscyWMcb602HUk6TmBiTovEz/hJ17IFiHHyVDaXsU5z?=
 =?us-ascii?Q?2KQ2/UKW8VTurwLa5ix0MPYKjm1GdelszQtkIm3cQ0F+OZNlvj33+A3dyRLe?=
 =?us-ascii?Q?k0WVySNHAK/4Cud1v79NXaZAjXXO4mdbhfsu3SNFJjc4tJOtqPBdTRoZ+euN?=
 =?us-ascii?Q?5CyB0JYFZWLKumquums4iJOOUoPIcxrPeDQzPuCAyzg5JdJYQ99MzVxrHhHU?=
 =?us-ascii?Q?RBVFEVKS9gkC5uJQyYvDtp/0cYxQ9Rq/s7eNZWoM3X3KBXpy5/qYXTVauoFL?=
 =?us-ascii?Q?trfglGqVqX5+bzjw9tIvLgBTzbbRPXctabY0x20+whg7Fh6NHmNlJmfJ7t4l?=
 =?us-ascii?Q?Egh666AeDCjJ4OZniw9RbrdSEInkT5RKJP3GB0Uk9ZrYGkR2BH5uGtelLSws?=
 =?us-ascii?Q?4hyQxqEq1Q064TaYiZVhETWE5tfgrjNQ8mspmj8e6OOSrNumT2Vl/lfMYFTF?=
 =?us-ascii?Q?EJ7Z4H+fVQ2/zQay1k30Rfzq3gdZJgmfgcjo6kA0tA8j22wMtmsTe41EXtc2?=
 =?us-ascii?Q?tvgaB4g2d7MSavB93JhnFr6r4NGmatNx5BscXkrEhWNb4yyPI5FAeTg+5Bfh?=
 =?us-ascii?Q?zS50CT6kO0bAwJK9Mnp/LMMJXMtMr4qIOC7GyxOWFIm1SXoZBm86eusVJqr4?=
 =?us-ascii?Q?rDy3wN3GsgMRbH7JjHSJusKOcuFn/lbZBF2cedyAnEImUXNyFvx8jsY4wqig?=
 =?us-ascii?Q?kv3JUVmidub56UioaAIogcDVNHqmHFud6Vd3Cw176zNiigk32bPpQRh+A+5T?=
 =?us-ascii?Q?2lTllutclKaSVgOs9cNtTkmlcopDsY5/Jod3uGiRbjLzo4UtEK+rFAdQSCpA?=
 =?us-ascii?Q?pNT+Zz4OSBTwejgfjPVNTRXHyYAXZjQt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fd+bjCn5hHg6jcqMleNINdGjeQedvwDaQS9vwFjlFXSDCln8H4Q5g9T6nKcU?=
 =?us-ascii?Q?/IRpOe8lZ40luxbIYbH+WlnycVJIBatEPpHX/BcMrJ6Wl+LmNhKzF59NJW9K?=
 =?us-ascii?Q?YBhJBbBgV5/qp5upHPGbMqdHHdfgA7xBwf5hZLZ8MkGQ2WxbhWP7CmOSj7iq?=
 =?us-ascii?Q?5BI8XN8sCijtsR5wjB/aO9zh+uXmDDjl5XraZsnoGNc9rhhfFbpES2HFgOk+?=
 =?us-ascii?Q?2NffkgOoSYgkjHoQvVvg8undRjvhPzMHuc7CVxzgH79nNKx7BxZILDveGtnn?=
 =?us-ascii?Q?SO/JxRKI5DoJ+8o7Ns0Xd5yUtAg7CHNoEqn844ruwq68rFmywQvz6GifL4ic?=
 =?us-ascii?Q?Ngqis1EZJDH9z0YlmStrSD0JgJ6N4lsSLAmA7rzsRMQO4PVMrN4GiySRrf3o?=
 =?us-ascii?Q?hfVVHqUDLqNU9pNuQ7xw1YAjjCJLKjYp9JsHuww/jCBGGYLvxeklPb3gsfvv?=
 =?us-ascii?Q?d7UjQj+Lriv+wE/n4kEKiYNx/N3uuWEC/BCJkN/ZIyMuk5eDn4m/klm+r1Ee?=
 =?us-ascii?Q?VzsD7y+ijLOKHDjeoHGQln/WhYNPjdppjqdB82E9eXC5cSZBeiqF16cbTL7i?=
 =?us-ascii?Q?zoEcLFBTHazqopsqrYdMcsLsQrLfClv8OL2ByQtBHmhrjMlOSZaxaOMNK2is?=
 =?us-ascii?Q?O51tyO0f+kAd4pgPkCxzzTmjUFlK+htnLY/SAfhQbbhZUs2iqjHQLMoDh9L/?=
 =?us-ascii?Q?2KvMckgGDrjwSFcU027hjx5yR6F2xjxLB3mLll641B1Y72bVpTn/LRJL+MS3?=
 =?us-ascii?Q?5p4JZ42mgXhRD5FKXew8kXyRUg9fzBqz2cScSo7KPnVEAQ6FLkoVaSJOIit8?=
 =?us-ascii?Q?sgvOTIcBORYSsz231F4KBRJ124mSKwB2YzLXC/xICkwTm5NHBqyxCOek5q6h?=
 =?us-ascii?Q?oTFSLWzH8eXQzMxrrqDw9/Ibu8Gxd3toUtUIf1MHDePQDIt1KmQAl/ZRJQov?=
 =?us-ascii?Q?DCPBKPh1wwcC0Ua6my5/Idq368YAQQ4Fg4+RbTO3i3y3YRGWqYPyKpyHMa4i?=
 =?us-ascii?Q?ljmuyUokGvS33wnXphagvfIEHSdm3hKqo0xNwo8Rk+n49A/GIYILs09VdnWR?=
 =?us-ascii?Q?/Ce0GL7HLSejzcBps4eoTP9G0BngBdFGN4kYZne8Ci1D/YmXl8VSBXwuEUWG?=
 =?us-ascii?Q?icHUJI/FWe5nRw/LvQPwU7ws3pgldXMDYNS9S8MHGiE9q+7CkcnDOuPx9b2E?=
 =?us-ascii?Q?UFDvDExzpNOoUyuJ+JeUwFMxZWnxjLHOJWX1hODuFofKpWMM7RHRkpJfF/kY?=
 =?us-ascii?Q?xax59Q65MYkwsqQfOM5D84FkNQO8vTZLr/uYbediUWv+6yFWssoDGzJpITkY?=
 =?us-ascii?Q?gZyrL5RHTvLkiB+egBINqFuzTE+ARmDFSEpOTlJb7sU5aOzHaz49ZXchZ+AM?=
 =?us-ascii?Q?Jjst5yjv5lYQaEB1Gj41X0V5H+0ag93Nr7y7qDRUumPTc8g2lnpvs5iwrXkl?=
 =?us-ascii?Q?4ZB/qRwCN/4Nxk+slCZnsLs+3awy31ni/35vzJYG7LJlKrUlBOJhKqPhyCp9?=
 =?us-ascii?Q?AerCv1adTGb/0YqXjVKlVqCWLIcvmLiKubZEfyu2580jYUdJc58Eh70/8GO7?=
 =?us-ascii?Q?sUt+3CPyKw8cZ4OO3LKlnM4rrS3UJYKLIg0XwyH+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bed7f86-573a-45f1-1ff8-08dd4b3c3cf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 08:07:04.9190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YaeGMwK9yX4CBalsEcMqJNWNPmmImvoIrx7oZ7ZgM6YLT9bauoXs6PoS6qKIXPFZj9L4fD1yEbeRsC8OkqO/Ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7326
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Friday, February 7, 2025 7:05 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com; =
Deak,
> Imre <imre.deak@intel.com>
> Subject: [PATCH 1/3] drm/i915/reg: use REG_BIT and friends to define DP
> registers
>=20
> Define the DP register contents using the REG_BIT, REG_GENMASK, etc.
> macros. Ditch the unhelpful comments. Rename eDP related register content
> macros to have EDP_ prefix.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c |  23 +++--
>  drivers/gpu/drm/i915/i915_reg.h       | 124 +++++++++-----------------
>  2 files changed, 54 insertions(+), 93 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 56353377466c..a82102d3a167 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -183,7 +183,7 @@ static void assert_dp_port(struct intel_dp *intel_dp,
> bool state)  static void assert_edp_pll(struct drm_i915_private *dev_priv=
,
> bool state)  {
>  	struct intel_display *display =3D &dev_priv->display;
> -	bool cur_state =3D intel_de_read(display, DP_A) & DP_PLL_ENABLE;
> +	bool cur_state =3D intel_de_read(display, DP_A) & EDP_PLL_ENABLE;
>=20
>  	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
>  				 "eDP PLL state assertion failure (expected
> %s, current %s)\n", @@ -206,12 +206,12 @@ static void
> ilk_edp_pll_on(struct intel_dp *intel_dp,
>  	drm_dbg_kms(display->drm, "enabling eDP PLL for clock %d\n",
>  		    pipe_config->port_clock);
>=20
> -	intel_dp->DP &=3D ~DP_PLL_FREQ_MASK;
> +	intel_dp->DP &=3D ~EDP_PLL_FREQ_MASK;
>=20
>  	if (pipe_config->port_clock =3D=3D 162000)
> -		intel_dp->DP |=3D DP_PLL_FREQ_162MHZ;
> +		intel_dp->DP |=3D EDP_PLL_FREQ_162MHZ;
>  	else
> -		intel_dp->DP |=3D DP_PLL_FREQ_270MHZ;
> +		intel_dp->DP |=3D EDP_PLL_FREQ_270MHZ;
>=20
>  	intel_de_write(display, DP_A, intel_dp->DP);
>  	intel_de_posting_read(display, DP_A);
> @@ -226,7 +226,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
>  	if (IS_IRONLAKE(dev_priv))
>  		intel_wait_for_vblank_if_active(dev_priv, !crtc->pipe);
>=20
> -	intel_dp->DP |=3D DP_PLL_ENABLE;
> +	intel_dp->DP |=3D EDP_PLL_ENABLE;
>=20
>  	intel_de_write(display, DP_A, intel_dp->DP);
>  	intel_de_posting_read(display, DP_A);
> @@ -246,7 +246,7 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp=
,
>=20
>  	drm_dbg_kms(display->drm, "disabling eDP PLL\n");
>=20
> -	intel_dp->DP &=3D ~DP_PLL_ENABLE;
> +	intel_dp->DP &=3D ~EDP_PLL_ENABLE;
>=20
>  	intel_de_write(display, DP_A, intel_dp->DP);
>  	intel_de_posting_read(display, DP_A);
> @@ -291,13 +291,13 @@ bool g4x_dp_port_enabled(struct
> drm_i915_private *dev_priv,
>=20
>  	/* asserts want to know the pipe even if the port is disabled */
>  	if (IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A)
> -		*pipe =3D (val & DP_PIPE_SEL_MASK_IVB) >>
> DP_PIPE_SEL_SHIFT_IVB;
> +		*pipe =3D REG_FIELD_GET(DP_PIPE_SEL_MASK_IVB, val);
>  	else if (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A)
>  		ret &=3D cpt_dp_port_selected(dev_priv, port, pipe);
>  	else if (IS_CHERRYVIEW(dev_priv))
> -		*pipe =3D (val & DP_PIPE_SEL_MASK_CHV) >>
> DP_PIPE_SEL_SHIFT_CHV;
> +		*pipe =3D REG_FIELD_GET(DP_PIPE_SEL_MASK_CHV, val);
>  	else
> -		*pipe =3D (val & DP_PIPE_SEL_MASK) >> DP_PIPE_SEL_SHIFT;
> +		*pipe =3D REG_FIELD_GET(DP_PIPE_SEL_MASK, val);
>=20
>  	return ret;
>  }
> @@ -393,13 +393,12 @@ static void intel_dp_get_config(struct
> intel_encoder *encoder,
>  	if (IS_G4X(dev_priv) && tmp & DP_COLOR_RANGE_16_235)
>  		pipe_config->limited_color_range =3D true;
>=20
> -	pipe_config->lane_count =3D
> -		((tmp & DP_PORT_WIDTH_MASK) >>
> DP_PORT_WIDTH_SHIFT) + 1;
> +	pipe_config->lane_count =3D REG_FIELD_GET(DP_PORT_WIDTH_MASK,
> tmp) + 1;
>=20
>  	g4x_dp_get_m_n(pipe_config);
>=20
>  	if (port =3D=3D PORT_A) {
> -		if ((intel_de_read(display, DP_A) & DP_PLL_FREQ_MASK) =3D=3D
> DP_PLL_FREQ_162MHZ)
> +		if ((intel_de_read(display, DP_A) & EDP_PLL_FREQ_MASK) =3D=3D
> +EDP_PLL_FREQ_162MHZ)
>  			pipe_config->port_clock =3D 162000;
>  		else
>  			pipe_config->port_clock =3D 270000;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 670cd2371f94..da658c3591f0
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1394,88 +1394,50 @@
>  #define VLV_DP_B		_MMIO(VLV_DISPLAY_BASE + 0x64100)
>  #define VLV_DP_C		_MMIO(VLV_DISPLAY_BASE + 0x64200)
>  #define CHV_DP_D		_MMIO(VLV_DISPLAY_BASE + 0x64300)
> -#define   DP_PORT_EN			(1 << 31)
> -#define   DP_PIPE_SEL_SHIFT		30
> -#define   DP_PIPE_SEL_MASK		(1 << 30)
> -#define   DP_PIPE_SEL(pipe)		((pipe) << 30)
> -#define   DP_PIPE_SEL_SHIFT_IVB		29
> -#define   DP_PIPE_SEL_MASK_IVB		(3 << 29)
> -#define   DP_PIPE_SEL_IVB(pipe)		((pipe) << 29)
> +#define   DP_PORT_EN			REG_BIT(31)
> +#define   DP_PIPE_SEL_MASK		REG_GENMASK(30, 30)

Why not use REG_BIT() here REG_GENMASK for a single bit seems wrong

Regards,
Suraj Kandpal

> +#define   DP_PIPE_SEL(pipe)		REG_FIELD_PREP(DP_PIPE_SEL_MASK,
> (pipe))
> +#define   DP_PIPE_SEL_MASK_IVB		REG_GENMASK(30, 29)
> +#define   DP_PIPE_SEL_IVB(pipe)
> 	REG_FIELD_PREP(DP_PIPE_SEL_MASK_IVB, (pipe))
>  #define   DP_PIPE_SEL_SHIFT_CHV		16
> -#define   DP_PIPE_SEL_MASK_CHV		(3 << 16)
> -#define   DP_PIPE_SEL_CHV(pipe)		((pipe) << 16)
> -
> -/* Link training mode - select a suitable mode for each stage */
> -#define   DP_LINK_TRAIN_PAT_1		(0 << 28)
> -#define   DP_LINK_TRAIN_PAT_2		(1 << 28)
> -#define   DP_LINK_TRAIN_PAT_IDLE	(2 << 28)
> -#define   DP_LINK_TRAIN_OFF		(3 << 28)
> -#define   DP_LINK_TRAIN_MASK		(3 << 28)
> -#define   DP_LINK_TRAIN_SHIFT		28
> -
> -/* CPT Link training mode */
> -#define   DP_LINK_TRAIN_PAT_1_CPT	(0 << 8)
> -#define   DP_LINK_TRAIN_PAT_2_CPT	(1 << 8)
> -#define   DP_LINK_TRAIN_PAT_IDLE_CPT	(2 << 8)
> -#define   DP_LINK_TRAIN_OFF_CPT		(3 << 8)
> -#define   DP_LINK_TRAIN_MASK_CPT	(7 << 8)
> -#define   DP_LINK_TRAIN_SHIFT_CPT	8
> -
> -/* Signal voltages. These are mostly controlled by the other end */
> -#define   DP_VOLTAGE_0_4		(0 << 25)
> -#define   DP_VOLTAGE_0_6		(1 << 25)
> -#define   DP_VOLTAGE_0_8		(2 << 25)
> -#define   DP_VOLTAGE_1_2		(3 << 25)
> -#define   DP_VOLTAGE_MASK		(7 << 25)
> -#define   DP_VOLTAGE_SHIFT		25
> -
> -/* Signal pre-emphasis levels, like voltages, the other end tells us wha=
t
> - * they want
> - */
> -#define   DP_PRE_EMPHASIS_0		(0 << 22)
> -#define   DP_PRE_EMPHASIS_3_5		(1 << 22)
> -#define   DP_PRE_EMPHASIS_6		(2 << 22)
> -#define   DP_PRE_EMPHASIS_9_5		(3 << 22)
> -#define   DP_PRE_EMPHASIS_MASK		(7 << 22)
> -#define   DP_PRE_EMPHASIS_SHIFT		22
> -
> -/* How many wires to use. I guess 3 was too hard */
> -#define   DP_PORT_WIDTH(width)		(((width) - 1) << 19)
> -#define   DP_PORT_WIDTH_MASK		(7 << 19)
> -#define   DP_PORT_WIDTH_SHIFT		19
> -
> -/* Mystic DPCD version 1.1 special mode */
> -#define   DP_ENHANCED_FRAMING		(1 << 18)
> -
> -/* eDP */
> -#define   DP_PLL_FREQ_270MHZ		(0 << 16)
> -#define   DP_PLL_FREQ_162MHZ		(1 << 16)
> -#define   DP_PLL_FREQ_MASK		(3 << 16)
> -
> -/* locked once port is enabled */
> -#define   DP_PORT_REVERSAL		(1 << 15)
> -
> -/* eDP */
> -#define   DP_PLL_ENABLE			(1 << 14)
> -
> -/* sends the clock on lane 15 of the PEG for debug */
> -#define   DP_CLOCK_OUTPUT_ENABLE	(1 << 13)
> -
> -#define   DP_SCRAMBLING_DISABLE		(1 << 12)
> -#define   DP_SCRAMBLING_DISABLE_IRONLAKE	(1 << 7)
> -
> -/* limit RGB values to avoid confusing TVs */
> -#define   DP_COLOR_RANGE_16_235		(1 << 8)
> -
> -/* Turn on the audio link */
> -#define   DP_AUDIO_OUTPUT_ENABLE	(1 << 6)
> -
> -/* vs and hs sync polarity */
> -#define   DP_SYNC_VS_HIGH		(1 << 4)
> -#define   DP_SYNC_HS_HIGH		(1 << 3)
> -
> -/* A fantasy */
> -#define   DP_DETECTED			(1 << 2)
> +#define   DP_PIPE_SEL_MASK_CHV		REG_GENMASK(17, 16)
> +#define   DP_PIPE_SEL_CHV(pipe)
> 	REG_FIELD_PREP(DP_PIPE_SEL_MASK_CHV, (pipe))
> +#define   DP_LINK_TRAIN_MASK		REG_GENMASK(29, 28)
> +#define   DP_LINK_TRAIN_PAT_1
> 	REG_FIELD_PREP(DP_LINK_TRAIN_MASK, 0)
> +#define   DP_LINK_TRAIN_PAT_2
> 	REG_FIELD_PREP(DP_LINK_TRAIN_MASK, 1)
> +#define   DP_LINK_TRAIN_PAT_IDLE
> 	REG_FIELD_PREP(DP_LINK_TRAIN_MASK, 2)
> +#define   DP_LINK_TRAIN_OFF
> 	REG_FIELD_PREP(DP_LINK_TRAIN_MASK, 3)
> +#define   DP_LINK_TRAIN_MASK_CPT	REG_GENMASK(10, 8)
> +#define   DP_LINK_TRAIN_PAT_1_CPT
> 	REG_FIELD_PREP(DP_LINK_TRAIN_MASK_CPT, 0)
> +#define   DP_LINK_TRAIN_PAT_2_CPT
> 	REG_FIELD_PREP(DP_LINK_TRAIN_MASK_CPT, 1)
> +#define   DP_LINK_TRAIN_PAT_IDLE_CPT
> 	REG_FIELD_PREP(DP_LINK_TRAIN_MASK_CPT, 2)
> +#define   DP_LINK_TRAIN_OFF_CPT
> 	REG_FIELD_PREP(DP_LINK_TRAIN_MASK_CPT, 3)
> +#define   DP_VOLTAGE_MASK		REG_GENMASK(27, 25)
> +#define   DP_VOLTAGE_0_4
> 	REG_FIELD_PREP(DP_VOLTAGE_MASK, 0)
> +#define   DP_VOLTAGE_0_6
> 	REG_FIELD_PREP(DP_VOLTAGE_MASK, 1)
> +#define   DP_VOLTAGE_0_8
> 	REG_FIELD_PREP(DP_VOLTAGE_MASK, 2)
> +#define   DP_VOLTAGE_1_2
> 	REG_FIELD_PREP(DP_VOLTAGE_MASK, 3)
> +#define   DP_PRE_EMPHASIS_MASK		REG_GENMASK(24, 22)
> +#define   DP_PRE_EMPHASIS_0
> 	REG_FIELD_PREP(DP_PRE_EMPHASIS_MASK, 0)
> +#define   DP_PRE_EMPHASIS_3_5
> 	REG_FIELD_PREP(DP_PRE_EMPHASIS_MASK, 1)
> +#define   DP_PRE_EMPHASIS_6
> 	REG_FIELD_PREP(DP_PRE_EMPHASIS_MASK, 2)
> +#define   DP_PRE_EMPHASIS_9_5
> 	REG_FIELD_PREP(DP_PRE_EMPHASIS_MASK, 3)
> +#define   DP_PORT_WIDTH_MASK		REG_GENMASK(21, 19)
> +#define   DP_PORT_WIDTH(width)
> 	REG_FIELD_PREP(DP_PORT_WIDTH_MASK, (width) - 1)
> +#define   DP_ENHANCED_FRAMING		REG_BIT(18)
> +#define   EDP_PLL_FREQ_MASK		REG_GENMASK(17, 16)
> +#define   EDP_PLL_FREQ_270MHZ
> 	REG_FIELD_PREP(EDP_PLL_FREQ_MASK, 0)
> +#define   EDP_PLL_FREQ_162MHZ
> 	REG_FIELD_PREP(EDP_PLL_FREQ_MASK, 1)
> +#define   DP_PORT_REVERSAL		REG_BIT(15)
> +#define   EDP_PLL_ENABLE		REG_BIT(14)
> +#define   DP_CLOCK_OUTPUT_ENABLE	REG_BIT(13)
> +#define   DP_SCRAMBLING_DISABLE		REG_BIT(12)
> +#define   DP_SCRAMBLING_DISABLE_ILK	REG_BIT(7)
> +#define   DP_COLOR_RANGE_16_235		REG_BIT(8)
> +#define   DP_AUDIO_OUTPUT_ENABLE	REG_BIT(6)
> +#define   DP_SYNC_VS_HIGH		REG_BIT(4)
> +#define   DP_SYNC_HS_HIGH		REG_BIT(3)
> +#define   DP_DETECTED			REG_BIT(2)
>=20
>  /*
>   * Computing GMCH M and N values for the Display Port link
> --
> 2.39.5

