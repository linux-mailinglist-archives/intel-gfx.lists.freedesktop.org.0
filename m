Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A09A0037F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 06:09:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1DF010E252;
	Fri,  3 Jan 2025 05:09:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e+c0PKfd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FF8510E20D;
 Fri,  3 Jan 2025 05:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735880962; x=1767416962;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Gyd6LVIUB0b0LPp8hxOfN1zaS6Pz+bu0ytY4MwwDJHY=;
 b=e+c0PKfdcoZzVmOrMTtwBOxEmOWPrAqMWrJ3FF2wM4sLEXcj22z8N9/o
 jmTLkFehAIO/62xt50Eb4MirE7jA/eZyuhnhyEsBDYBoQZRHymxwW3wSV
 BgChrpXLSSDsRBdTm/MCpAzHE3C72kPV9amG1O/QDzlARocReYtnJY+ad
 llqQFYPf8YiO/kRMl3VTJPFbVHynAFDW1FGKny7HvHW9+GLqJdxd9D8zC
 iO0weHjlzqcIX1ECTND0UvQMW2GhvW2NzAxlYo3OU2Sz5dyY46aS44sYr
 FFWQPomGnvIkrRJ/8ZCQGSLrI32qnt1K6AhslTyaLYrFUsr/2R2Jv9SdS Q==;
X-CSE-ConnectionGUID: W2dziW56QjKmnjJZIjOBSA==
X-CSE-MsgGUID: ty0htQ20T4ayrhUK133Miw==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="58594310"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="58594310"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 21:09:21 -0800
X-CSE-ConnectionGUID: ArqBWdpvQUWu3vmh7PnIrg==
X-CSE-MsgGUID: ViD6KW7SSbix2hV4tgCKTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="102216427"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jan 2025 21:09:20 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 2 Jan 2025 21:09:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 2 Jan 2025 21:09:19 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 2 Jan 2025 21:09:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qrKVz6QNREG8mUXX7ju/Yat1TDOD7I08vD6dGVK3LD66fZsHmtsEdHIGiQCSiVJ0kqJDqauB+7dGY9WYVHh3CSPP3+XTaxL0Uq8x16rBwvtjl06IX9jbfxqxykpIPhlw5p7mVv0VUOZ2l7vUgLvEd8uPDYNvq+5NB49Y9aZcAs97KDTIUW8DpFwFBMHP5UWDNTOsJ0mMM8FIg86oD5LX779BjXZckVY8xiDCBVvEVaia7jyeW+KAIHHkGbhUsExujtD0bR9lHUkNKRmBNddGlJuAEVbw5CQSIqfI7sd+TB8y/jzfP+8ZLsn46d8BlnIXqp/EEEQXbyGhWpDEV4rB9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pHKSH/KPyqSdIP4n0/bucK2LXVBcRDato73DMKdX/OI=;
 b=cEVm60RHKcKtpVWIH0RhtvE8j/oJQ7nmLT9wdZPjD0TcREGqs/gKmBCij0kevCRsd6dW5wTMiR/j7xKQPxLbFXuxMwJSW+dz79aPl2xDYeEJ61WqJXPIcRfhfs+yrt73oJ2o39YIR/RqQjM3M5YJUCG7aqr7Xt+zWfdCX0MmQLmCws/HsuZjxJ7L4ZHmx7NWFYKjf8MkNp1FqRcsblhSxBzaT+3r78w9utFQcxXCTDwM7pVhmiPNhe2qGvZ4Z9H89h2hPw6BWh/rxU1QaX/BRAU/Gt5cvOlEYURKmD9J3C87RyXozAHhXyFqylfV98LYPejSg2tEnPxtG7+a1HUj9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LV8PR11MB8678.namprd11.prod.outlook.com (2603:10b6:408:20b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.19; Fri, 3 Jan
 2025 05:08:54 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%2]) with mapi id 15.20.8314.012; Fri, 3 Jan 2025
 05:08:53 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Topic: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Index: AQHbNB0f+TN34rMK1kOQ38PeWuwh57LiYrOAgCJqVKA=
Date: Fri, 3 Jan 2025 05:08:53 +0000
Message-ID: <IA0PR11MB73079CA6B4D006CC7C9CE331BA152@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20241111092608.129410-1-arun.r.murthy@intel.com>
 <SN7PR11MB6750B12553B61CBA5028331DE33F2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750B12553B61CBA5028331DE33F2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|LV8PR11MB8678:EE_
x-ms-office365-filtering-correlation-id: 11ac507a-ca1f-4982-1a8d-08dd2bb4b815
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?BIdKrg2rKWpZt8Z9gGloYgvaB/wl8exehuWY2stni+W0wKx753EPaxAnbvEQ?=
 =?us-ascii?Q?GJXRU6qqPM0ygfaWFdTWkZpFaAEYr7kM4v6Ivq+ety/inSEa/2dMF3avs/rh?=
 =?us-ascii?Q?EJLbFvrcNMKJTYpLxk6JF5Blm8KGpb5+jWdNr7SpPncF0sLkIcPU8N5i5UZ2?=
 =?us-ascii?Q?BdSsrvBh76nhvHuQqRrEUpdaxWN1+SMaNGD+v2NAHtjdIs9cUQFSRJTX7BqQ?=
 =?us-ascii?Q?yCkMRe6LnBL78BDFNUegifY18vty4vehgXqkXctbOZbHBO55iIhJf2msDe7J?=
 =?us-ascii?Q?sYydd3qcexkRpZGEGd6I3oIZkEOrlLKemd9WImxhe6lnTRoYSaFvRPTX9+M6?=
 =?us-ascii?Q?qHK9DOZ5BihGQn8G4u2GrW2GFqucrTJ/Sc+pLLUN14XKzV5FuVFkWXW6CuUw?=
 =?us-ascii?Q?FbgPEAObZq5+5+/zAPCQVxwQKUbWuecgVKjV2ysci3mTkX/TetuB3R2c0VMv?=
 =?us-ascii?Q?jzJOLqPl6X1awG0rbbHYyca9U02uE/alYsL7N/m0egLqpwLuWI0aRTXwLxqU?=
 =?us-ascii?Q?XZA/nzNvY2HtxtVHmO0nw2J9qg/ix+qmKdZ8aZ8UCJ+SL56xnTUr2/KkRmMo?=
 =?us-ascii?Q?PCRTswoQAAJXo84EnpHo1d93efxrNo5Wc7D4rFM7Dw02Zt57xvMoHU1hSAsq?=
 =?us-ascii?Q?kLkhSKeDLygxVVaZHUsYsedixuh32xk4+ZNTxYivkZSC+wD7d8F//8N08UHy?=
 =?us-ascii?Q?eDR89zxIqXUM/20R3jjM59/P3S1tcp85IhIdq76CTAC3OLFhtH7ClPqZlPg6?=
 =?us-ascii?Q?Be351v1KSPnb3FvDK4sHrmhKEAOnAjOi5xmax0kv+nWv5+V58ZgQphU9CQ7z?=
 =?us-ascii?Q?T5RKhE1fPiOgSHhjolM5rjLV9I/L+DIR0gPEY2FPbphCBtYUI+TOo+/apYbG?=
 =?us-ascii?Q?lnhKDr2Xq+DSFtcP1uH+25eaCUJweoCDsDTPht77AtmFx0qLk1BBOZRIL2Ys?=
 =?us-ascii?Q?X/ROJzsl2l7JC5jBBkcI1GdW7nxlFlWdIXSNyKhkEfdebfvd8SzPGfJ6esL7?=
 =?us-ascii?Q?22S9Ux8xGq4GqF/HrHc6Blxtf+QpXM6Um5ZqQu07/1VsA4CXgtfjy4Kh6yig?=
 =?us-ascii?Q?HY+11uy8KzZvrBVrlqremhqczFlQL+FuEEE9+CdVpg/WsfLsXWyYBlkMfI7Y?=
 =?us-ascii?Q?U9l08v6sMxFO7SPHP+jcBjNo4xMOuptFX/kzFtn+FXMVrh6uAaFaOm42W6Gp?=
 =?us-ascii?Q?GMPfGjcoIoYc2fk8gxGplEqeo28s0rhrg8TkgQEUB0SIieOg0WemQoPXNw9t?=
 =?us-ascii?Q?Emltr7mqayv/kgv0Dzdzbi9CAVX3omFGcKkx0uf/KKivI7M3vrBwJVWm3sMM?=
 =?us-ascii?Q?3GKEvzSoNcg0K0sEHb+DhFJAB1YWmit2yzCLLpIJ/flrllNR7ZLYmoUHGY0U?=
 =?us-ascii?Q?d5N/uzfy+qMTVTZ4jdNjPJCxjJhyqHxSLnQGEz5K5u5Gaw6m6sU05wVd5hwv?=
 =?us-ascii?Q?mJKHkWBlBUnKw77AI8mwzvnNl6OCHEBE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qd8TymwIIvn1cCUQQIJxItEZXUHFmanM72x8GfAM1N4Q0u+tFUIPzKxJ9Kyf?=
 =?us-ascii?Q?OZrnxTs/YaAgoQT22H5A5VUbvgueinFknp6gKX6+7m5VkNOzIB24CvG7jvND?=
 =?us-ascii?Q?Lbcg28DReYA+QmonEE/YBspCktU0eE6diGgCkKVYXTYew6/1y3pa/9Ts4ZYy?=
 =?us-ascii?Q?w2BlbjRaGkVHzQEhbQuYKwejs8wBo940pyuaMTfR+ArHewHQxjcAwKB7APqE?=
 =?us-ascii?Q?RGvGmDG7BjD/IAvXj3E3tVatDNDbq9zNFnex/SrWhCM56cvAPsbOe7sabmHi?=
 =?us-ascii?Q?9AlkAtVosfp6uaqVWUmw7OIydfnYUeA/Fss5wy2h3X2EDTaj6k52j4lflA2e?=
 =?us-ascii?Q?gsbMMb5kzRHU/16K+Dfwv5BNCBt/dKG5CasW+h5AADWY6mohekeRhm8LvCsS?=
 =?us-ascii?Q?uGzLXTaNHsPuYV5JE4w7744AhvZaMClldPaTqlUwWCf+XjpobZBVja3aBkgl?=
 =?us-ascii?Q?M3Z4cXb2UZl5xod2B4QFd9Av+yTtCi+flvxoDlHh3ZOboOEcWvqfSghZRAev?=
 =?us-ascii?Q?YUIJ4bOK4W5bUZf2QoFJIGTf3IJltZyQTiNGWs6cjp0qRuwed/5SomYDIxh4?=
 =?us-ascii?Q?7ExDtW2jYcxB6eqlqBy+xQvgJpG9u+Tf+VOntcgUpc4j1PLLqbdCPCGH607s?=
 =?us-ascii?Q?Lh4uGwA3BvWS21EdPxaOwpXMD8sbRVL7U4yKwfqmZ2Lx2VuaBayy65v2sxcH?=
 =?us-ascii?Q?tK4XihDlzkvNSuWa3Y4sKBN8M+IseaTitB0Bz+oh76GHtPyyLJ5NxoM8Un+P?=
 =?us-ascii?Q?/eImwxiv7ZHyQBo3kEGAnRt9zBOEyjnKk9LON08Lr93d+VZCxuYg1vaQc0/D?=
 =?us-ascii?Q?9irGdWZLCmMz2Wug+ygsmrn8DwMi8RnNlimHeZSsRUfdrSRrYyBToCwz9OxK?=
 =?us-ascii?Q?RwwktizOJOfj6DD8njPIemb3BNt/U9cL7sPzVPxmg6BzWfA4yQrKC7nz5ZiM?=
 =?us-ascii?Q?rhIOR3S0dijkAteEaqdcoA018A/8o3b/Ay9m6LcVNifo4CAlcgoZmmQ7/olT?=
 =?us-ascii?Q?mTN0Gezg6mh62XFaD4/T8wh+ydKQK/UwMCNcjQWYr9IAxABf92Bv//KE5sYj?=
 =?us-ascii?Q?adeds77kVC86s1xbWQAcWbj1LvnIAmoGlm8InBMrdEnmfuCAOp8CD1rP0/iP?=
 =?us-ascii?Q?eeMRnTXUIxBEZ7sYVcnh4NfPAf2PdeCUkH3um3l/EknU3GsyokJgSJml3BDY?=
 =?us-ascii?Q?uqhmESL3gLvQVaCzOawGR73y1fNNOqn3aOUIqZyjIN2qoMoeP5Od8j79svD7?=
 =?us-ascii?Q?p9ItSBIvJyCA+18I1EOYvRJvJDohpt4Y16Y5QzUDEMvlUDGG/uehcdHupZZY?=
 =?us-ascii?Q?SZkCo+M/kHZkJ+surGssMMaW6rOfB/SHbQHa9WoPuKcc0NVh7nVqfS3ngffK?=
 =?us-ascii?Q?5KtEYMlKohkxuxfLt/BjEMOuPwseNMYIv7HrBRZJzNrNWZeedM+shfVekxwM?=
 =?us-ascii?Q?113VtyJoS+vKGoWltgt0k+OkzhM0qmLIaQ9pJVe+qPwuXGqIY+12rhHF6z1i?=
 =?us-ascii?Q?2YZkOwmf5q0f1K5M5smCN83LZU4s4H0oW4PjC+6wl8OZyKOTx84f6ZYLL+x7?=
 =?us-ascii?Q?iA7eYYyQvkbWTb/GUpzXl7M+osNu2w4hQ2wKL+ih?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11ac507a-ca1f-4982-1a8d-08dd2bb4b815
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2025 05:08:53.8825 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 28KjPeEhmkDIaKCqRoFnAKUgGqLCebo2T/tjLawluuk6jnOe/vdzsv+69QG4j7K/CU5PF45n1UxQ3ussLubC6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8678
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

> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > Arun R Murthy
> > Sent: Monday, November 11, 2024 2:56 PM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > Subject: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
> >
> > Mandate a minimum Hblank symbol cycle count between BS and BE in
> > 8b/10b MST and 12b/132b mode.
>=20
> Missed the typo here *128
>=20
> > Spec: DP2.1a
> >
> > v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
> > v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
> > v4: use max/min functions, change intel_xx *intel_xx to intel_xx *xx
> >     (Jani)
> >     Limit hblank to 511 and accomodate BS/BE in calculated value
> >     (Srikanth)
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../drm/i915/display/intel_crtc_state_dump.c  |  1 +
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 35 +++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h               |  4 +++
> >  4 files changed, 41 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index 705ec5ad385c..f8c1d1dd66a3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -258,6 +258,7 @@ void intel_crtc_state_dump(const struct
> > intel_crtc_state *pipe_config,
> >  			   str_enabled_disabled(pipe_config-
> > >has_sel_update),
> >  			   str_enabled_disabled(pipe_config-
> > >has_panel_replay),
> >  			   str_enabled_disabled(pipe_config-
> > >enable_psr2_sel_fetch));
> > +		drm_printf(&p, "minimum HBlank: %d\n", pipe_config-
> > >min_hblank);
> >  	}
>=20
> Covers the dump but still missing the checker Also maybe a different patc=
h for
> this work
>=20
Checker may not be required alike max_link_bpp_x16 since this a must on eve=
ry modeset.

> >
> >  	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n", diff
> > -- git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index d3a1aa7c919f..d2716addf88e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1075,6 +1075,7 @@ struct intel_crtc_state {
> >
> >  	int max_link_bpp_x16;	/* in 1/16 bpp units */
> >  	int pipe_bpp;		/* in 1 bpp units */
> > +	int min_hblank;		/* min HBlank for DP2.1 */
>=20
> Is it only for DP2.1 because we end up filling in both cases if uhbr or n=
ot just
> with different values
>=20
Its for only MST case applicable for both uhbr and non-uhbr rates. The mini=
mum calculation values changes based on uhbr/non-uhbr rates.

Thanks and Regards,
Arun R Murthy
--------------------
