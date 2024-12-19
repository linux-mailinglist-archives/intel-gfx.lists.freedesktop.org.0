Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 276329F86D2
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 22:20:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DFA110E1C4;
	Thu, 19 Dec 2024 21:20:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q3TXM4zd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0EB10E2B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734643234; x=1766179234;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nDzte5nNRr/O4lfiGs68kczn+saHmte0kRjBwY1J9fI=;
 b=Q3TXM4zdQCLIDq2jmLks3VWnPEq4tNovnoMvEjvk2ryuNJqbQtQr45vx
 OgbYcu0lCltXsT0lhy/impFqh0H0ghOVnfR83PWQ4uozMVWKNm6D1lcog
 9qnI7Jkd2LytmJ7/2SDCM7Y4ELVPG3txucow606HhsaSeBcI5aTRz/HbI
 1ttmODn+zpLsHyzxmHA+q8CFwYUQNrZNVgdDNRSfL7ctYfAnNd0BNQQEb
 DdG3cOZg56YcS2kXJdnZuB1vqJeyXJrB1Iqt9zq0p9ttpsxhtSUei6upO
 0QJtPZea7qjyuw/vsq3fehLX372JFK/Kc4m4zEwoIDJyivkndVH0q5YlN A==;
X-CSE-ConnectionGUID: Fy4BAtgzSuCLFWwphx+DzQ==
X-CSE-MsgGUID: 17dmhxrrTNeQmaJV1F9OIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="60563262"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="60563262"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 13:20:31 -0800
X-CSE-ConnectionGUID: 3UkOJ2f1RDay+UiwOrM9uA==
X-CSE-MsgGUID: dpfDyqavTmikevV2GPIkPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121589033"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 13:20:30 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 13:20:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 13:20:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 13:20:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MlRJ5ozWzPhOvw6Xo1z7exr10qLIKvZR+DrP6fND+RbCLmT4Bfilx3AsLRUQ6YhyZZrr8gT4An09ZDswAZEIXcTmTfHhZcLMZDRQioleGuAVyQPdo4a/nw1ljd3iEXqffDSMtHa1T6seqZjb0YKmoSrr2ngSnRjBn2X6A/GH5V6YfTil8ZCX77ph+O1rBw6QIJVLHcsWoKj6gg3QVY89cN9jU6JV604/xxSGpnK5JGcLx4WAMUnCaGiqqu7YfWVcuAW22cJyKyzUQ/D0b6Uuq7KIAoRVQX50GeTaxn1By42B+MLEP5SKWPxJGE4a2BmOM2bCVslz80rE/0f62u/Kdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FfwKBq8JTm7Xy3MT0G8jwQtCn4dPCvYlriCd/QjQlK4=;
 b=tP84NYEcah5DWJGx2o05bwYg1O/Dfe/Xz68+pplbK+7pZDQDH2ZYZ4zYidPIS8nwj16KaszphBmuRwUtk2061ZUYBplUL2y0hTn+AJf7YYHgO2U4Yy7BuWRS33kCxVWGp0119Copgx7Z+woTYQppTIzco53N8Cg+Kam10JZAmxGrNt3SvqiVB0HO/EjbP4dGwUeMx8anDBD4maLrcSh8NJyjElra50z0ry7Y6IE3hUW695zIgdNSbjaTnEBnQSZI2EmPfM4Q9dGDnkAImWVmNOhauiymlyTXbf/YW3HjVemOoCqLIY0pZGfrGDPz4CoEo3Op6zPS925K7oiYJ80dfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by MN2PR11MB4679.namprd11.prod.outlook.com (2603:10b6:208:26b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 21:19:45 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 21:19:45 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>
CC: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Taylor, Clinton A"
 <clinton.a.taylor@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>, 
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
Thread-Topic: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
Thread-Index: AQHbUjzohNN8apO4nkSy4El3u9bbv7Lt1jMggAA0VICAAANYcA==
Date: Thu, 19 Dec 2024 21:19:45 +0000
Message-ID: <CH0PR11MB54449DD2692CDB9FFFF25D39E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241219173636.3377955-1-ravi.kumar.vodapalli@intel.com>
 <CH0PR11MB5444AB9D2F1E7EFEF18AA892E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
 <20241219204931.GX3224633@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241219204931.GX3224633@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: matthew.d.roper@intel.com,gustavo.sousa@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|MN2PR11MB4679:EE_
x-ms-office365-filtering-correlation-id: 2375f4f4-b4a4-4b38-d744-08dd2072dc7a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9/rdSYl+3d0dw1I1Movud14T7t3cmRcprwhQbA572A19ad5JqNrpD2THG9b8?=
 =?us-ascii?Q?bF2ojPUuBrwf91HJa5Ykr16/NcqDCjarCABUS9G/bSCXlRpc34NbdIyMH+am?=
 =?us-ascii?Q?Nru8/ZZKYsHGqq2kbuFGt4G+27pDjgkrgHiAK45EfzuCRVymhdR4kiHUFLb4?=
 =?us-ascii?Q?wua+m00EhflNm668PA9UplICDbRHE8GwMVwUtRlrVO7z5v4nlIMMhHjlJ6DL?=
 =?us-ascii?Q?m/iHL+NsQFMn9k8ZAZF3FwkG+Up/LkWNSqzYRY0PDcZwR227ta+LsId5H5pQ?=
 =?us-ascii?Q?19Dyd0WzpxfYfM+0KArfF1IVHpOwBdcHhkN11+uV2X4plUJjhIrRNwB1fLAC?=
 =?us-ascii?Q?pr+WaOuDrfwvu9Q5EbNKWfnLOCCTJ4Ow+92WA+G+4dXT9uHNCJWCBVw/1Tkk?=
 =?us-ascii?Q?vl4s0wCwCTP9tpFrlnY6TvlXdshSo/ea+J5hz71iZD2ZhkwJakA1lTUyUX4m?=
 =?us-ascii?Q?y7izJZkS2EuX33LNLFEKuX9OFXzlJdCI84wiUGPVTgrd4eW4NBwbU8aqdR4M?=
 =?us-ascii?Q?2P1o6csnU5LHvPxXZ302v4wsNue9HPqNHlHZyaIfQAZmwLC5uF3qrxqs+BRf?=
 =?us-ascii?Q?xzAsKWu/E/oNN6IGEWczu95cL4zld6JJ4U8xq6OdUVswa/LnZ2HHl6RRyd5R?=
 =?us-ascii?Q?460nKIrFgWQhdunudv7Tt1YQUfNZocgTVJvo5BZhwxYM62b4PXndu3621b5+?=
 =?us-ascii?Q?dDEyxTIhJyI8RZeeXUmbz357rB08e7t7RCFVc8tHBBismg0SbCz/NPMFgo89?=
 =?us-ascii?Q?KdvBQCjQg13cxPJyic8ZkFMEdeCjEHD5j+i54F2hF3MbBtrL/rtZibXrVVPr?=
 =?us-ascii?Q?njPKa+/OIVGEh16fr7//miaQ3WmHNXm/BvmOArpyIXwLMFd9z58FfN8gzjBa?=
 =?us-ascii?Q?Xt2+/6WpC0RPzfkfPZvvojc8bRXHUNFzl3li45HOWTfQye2nbbGHn7V7Z13c?=
 =?us-ascii?Q?3SxoVBD38LCAqqYWY+XrPDqz9bO6dK8nQs5rvTZqbYVcw/aNjGelX0ItG8bp?=
 =?us-ascii?Q?66TCJxXJ4M3qFu5uYE31wORUzxVgR+f3DhStprJNRU6/tP0oBycoesXByCEk?=
 =?us-ascii?Q?ooLiulmBDIJHZz1KnMYGccxKZ9ug4TZtlAqdeWZg2wVNuHcK6HVn/9CzJAYF?=
 =?us-ascii?Q?Nx7oGSnlrltu8L9+ygXG4rGz1Ul8/UA9vEWS7HY8d/2m2hrKC/Qf5FBMJu9s?=
 =?us-ascii?Q?LXvAZfnFOapr0H/6lThFgRg+phO66k0PQv6uNboBUgl5S2qdXQzmP+XllDaw?=
 =?us-ascii?Q?W0AwW/01wZxjzjxCFyMlOwiSwd0ZRtbm3ZfCp1R+lItH3TQzKymfbbQyvSBP?=
 =?us-ascii?Q?amJ/sop8p41AD9E41Cm7nh6pY+51pD0oKXEPI/Uzsnfhg9qRM0cs6lI/LiAT?=
 =?us-ascii?Q?7ujhBQvrreB6WyWw9CtA08kBekdlLYBuhpBDyJqft7NFzGgKGOJuNj3OzzDk?=
 =?us-ascii?Q?IEC808Bevb+r5fyP9MDsUrbyGDjMPPgn?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HQheYhByva8NtOFQ/ZmvKCiHqNJusFSLzISr8slnR28+2GOLxHMLOKlhI5eY?=
 =?us-ascii?Q?8zreXdcqBU0o98K8kggjbrTRVnCbuRQ7PuO9VmTythbMTxygx+bB6e/It5Dn?=
 =?us-ascii?Q?qIK+XSxkLyfqQESQPW3hFzAttrPWD89xm1rQrzVtyb+JmSaFqH4iZwhqEvZs?=
 =?us-ascii?Q?X6lNAy8spWjV30MkDaP5f54orLfjs04MCOGS9SL6rYB2LhI/bjrPiWzUn9M0?=
 =?us-ascii?Q?lVr48jaKyFImoUTCFk2O7hhRBa9IBrk+F0f0kegzwOIuNCRQeDWv2xjfEjX+?=
 =?us-ascii?Q?4v2Hvhxz7+M2YonhlDQQBfS/vZ9EyNW8JDhplUsvQGBF8dpA+YGPYew/L7V8?=
 =?us-ascii?Q?WfuuujCkTwFHTdxBk4o2j8PguWFCnnmWXqHbFZv3KmxC5tlp8d4lJEOYxZ45?=
 =?us-ascii?Q?ytXHimc3J40UuOqfa0dQkvftQjRYqq2EK4z4+/jYGg8rHLMwORS2uucVg44y?=
 =?us-ascii?Q?qiBdwn2tMlrWVLn0nSDSkEbvQN37HzaswKnu2nY8jEXhxz6TnD7vrTyBL1RX?=
 =?us-ascii?Q?VwWpvou8x9lGdAH3y7jtZvDLlzHKIObfaiVIHXPc19QbwujFyRQiGQIwnvei?=
 =?us-ascii?Q?izW7ddzYE58MmT3kVVI9plB9coLCpjtz3fFPzJRtEEsYdCbEHgpQ0Wai09a8?=
 =?us-ascii?Q?2FYr54gzz2OpuSI69Ap9OMpqVdeIS74sq9b8qd3yPk72o1Y+fKVa85HsWQld?=
 =?us-ascii?Q?uNnZF99NgSPiwX+38TVLYyWabNRAdjKx3fbNr6LRIq6W2NyJAHz36BE4NPqw?=
 =?us-ascii?Q?ebmHL04i1lrzFN4tsQLWvbnCeQGGg/iTYUX+FFfieywkbndaoH4HMW8Fb2Ka?=
 =?us-ascii?Q?hu+JCwCYGhk4QMI8MQyBQTo0Id6SXES+ddeYemSnY+6wZVQBmk7SpcLwgkgs?=
 =?us-ascii?Q?tgO5l3bSU/h4lYzW5EMUR5NcxIWn3nLHGTqQPKgrtXEOOYfNxqXco8YxNgAO?=
 =?us-ascii?Q?dUeZPKt8PXGoKaDaQfEGXiFCY76W68Hok3+jDsdOWGyp8WeZ5Eep3WoG7M2v?=
 =?us-ascii?Q?le+BB6CYMb8VBRP7Zsc6rahEg76YJO+lRTCV3CI+LkKzx5R3GujA176KtQmb?=
 =?us-ascii?Q?dufbbItPzBVy5ImpfX5ui5VhsOy4tCSXLX0P6RbGgEYff7lWvvTQLmq2FZis?=
 =?us-ascii?Q?Ay7KWJaqEHbt4W2TAsv8vURC9Vdpp7jG4s2/dKy2O5ILOd3AlyQDZmtfn8Lu?=
 =?us-ascii?Q?Q0o/dBlD48SdEhXm7zvC8pbrsG/y3n6hGjdOCT8waD2VWfxImtdF4FEOd6yF?=
 =?us-ascii?Q?aQTVcM+x4B8KSELnZTW3bGk/WsvmFJiZXje5stKa26qZX4U5MW3ek4DavKno?=
 =?us-ascii?Q?1ieqRRvUgDtbnPW0lA5+WyLGyTjKAT8BgaPwdZVIyzgGQLrmsQJkPEmnB7UT?=
 =?us-ascii?Q?rqM7QdnNjjQKLn5h+jFRhR09impkNOTH2H8xfcU7gb89Zbo8GeW5wHUuxt0A?=
 =?us-ascii?Q?YV7sfQXSQX9H9rixd4uXko/MTHqVkqKvj7VY5xorFTEUEc3Wq5wBACaB8I6f?=
 =?us-ascii?Q?ZAm1jTq0V9lCXQThRvi/eh4xt1EHFBhOyYfYamzoCzYgFBVkjRAbGdSow0oG?=
 =?us-ascii?Q?X2vTYCnlNCdTf9jHGmRnqSNB2U939tNecnrzxLHY10HnZeoq2piv23rxvNv0?=
 =?us-ascii?Q?Uw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2375f4f4-b4a4-4b38-d744-08dd2072dc7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2024 21:19:45.3744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZF96PoVXwtMbUvunjR2O37OQuvkE+KNma4GhDOXvfRLNhilOD8JsjBiIlXX0aGS8iuXcJIOgI45F8bnIgKrwetbsG8rLLWbP3cTgJIKvexg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4679
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>=20
> Sent: Thursday, December 19, 2024 12:50 PM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: Vodapalli, Ravi Kumar <ravi.kumar.vodapalli@intel.com>; intel-gfx@lis=
ts.freedesktop.org; Vivekanandan, Balasubramani <balasubramani.vivekanandan=
@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>; Sousa, Gustavo <g=
ustavo.sousa@intel.com>; Taylor, Clinton A <clinton.a.taylor@intel.com>; At=
wood, Matthew S <matthew.s.atwood@intel.com>; Bhadane, Dnyaneshwar <dnyanes=
hwar.bhadane@intel.com>; Kalvala, Haridhar <haridhar.kalvala@intel.com>; Ch=
auhan, Shekhar <shekhar.chauhan@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker sta=
te service
>=20
> On Thu, Dec 19, 2024 at 11:39:07AM -0800, Cavitt, Jonathan wrote:
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of =
Ravi Kumar Vodapalli
> > Sent: Thursday, December 19, 2024 9:37 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Vivekanandan, Balasubramani <balasubramani.vivekanandan@intel.com>;=
 Roper, Matthew D <matthew.d.roper@intel.com>; De Marchi, Lucas <lucas.dema=
rchi@intel.com>; Sousa, Gustavo <gustavo.sousa@intel.com>; Taylor, Clinton =
A <clinton.a.taylor@intel.com>; Atwood, Matthew S <matthew.s.atwood@intel.c=
om>; Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Kalvala, Haridha=
r <haridhar.kalvala@intel.com>; Chauhan, Shekhar <shekhar.chauhan@intel.com=
>
> > Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state=
 service
> > >=20
> > > While display initialization along with MBUS credits programming
> > > DBUF_CTL register is also programmed, as a part of it the tracker
> > > state service field is also set to 0x8 value when default value is
> > > other than 0x8 which are for platforms past display version 13.
> > > For remaining platforms the default value is already 0x8 so don't
> > > program them.
> >=20
> > This could use some rewording.  Perhaps:
> > """
> > For platforms past display version 13, during display initialization al=
ong
> > with MBUS credits and DBUF_CTL register programming, the tracker state
> > service field is set to a value of 0x8, which is not the default value =
for
> > these platforms.  All other platforms use 0x8 as the default value and =
thus
> > do not need to be overwritten.
> > """
> >=20
> > Or maybe:
> > """
> > During display initialization and MBUS credits programming, the
> > DBUF_CTL register is also programmed.  Specifically, when
> > programming DBUF_CTL, the tracker state service field is set to the
> > value 0x8.  However, this is already the default value for platforms
> > using display versions 13 and prior, so we do not need to program
> > the DBUF_CTL register on those platforms.
> > """
>=20
> I think these are still missing the point a bit.  The key is that the
> bspec asks us to program non-default values _only_ on certain platforms.
> For all other platforms (both earlier and later), the expectation
> is that the hardware's default settings (whatever they happen to be for
> a given platform) are already correct and should not be adjusted.
>=20
> The code here was originally written back during gen12 development
> following the standard "assume driver changes will apply to all future
> platforms too until we know otherwise" design, so the original test was
> written as ">=3D 12."  It looks like DG2 (one display version 13 platform=
)
> still needed the programming, but ADL-P (the other display version 13
> platform) did not.  From version 14 onward, no platforms need it.  So
> the correct condition to match the hardware/bspec's rules would be:
>=20
>     if (DISPLAY_VER(display) =3D=3D 12 || display->platform.dg2)
>=20
> (I think on an earlier review of this I said it should be just
> "DISPLAY_VER(display) =3D=3D 12" but I overlooked that DG2 is indeed
> included in the list of platforms on bspec page 49213).
>=20
> Once later platforms like ADL-P, MTL, etc. rolled around, it turned out
> that explicit programming was actually not expected to carry forward,
> and we should have adjusted the condition to just 12+DG2 at that time,
> but it was overlooked.  That was technically a bug, but it turned out to
> be harmless because the explicit value we were programming (8) happened
> to match the new hardware defaults on display version 13.  However we
> shouldn't count on it staying harmless forever --- if the hardware
> default ever changes to something else in the future, then it can cause
> problems if we're still explicitly programming it to "8" by accident;
> this patch is addressing that earlier oversight.
>=20
> >=20
> > >=20
> > > Bspec: 49213
> > > Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
> > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/dri=
vers/gpu/drm/i915/display/intel_display_power.c
> > > index 34465d56def0..98db721cba33 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct int=
el_display *display)
> > >  {
> > >  	enum dbuf_slice slice;
> > > =20
> > > -	if (display->platform.alderlake_p)
> > > -		return;
> > > -
> >=20
> > I take it we're removing this condition because we no longer expect thi=
s code to run
> > on alderlake_p anyways?
>=20
> There's a platform/version check at the callsite and another here inside
> the function.  We only need to do the check at one place or the other;
> that's somewhat independent of fixing the check(s) themselves to match
> the right platforms.
>=20
> >=20
> > >  	for_each_dbuf_slice(display, slice)
> > >  		intel_de_rmw(display, DBUF_CTL_S(slice),
> > >  			     DBUF_TRACKER_STATE_SERVICE_MASK,
> > > @@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_=
display *display,
> > >  	/* 4. Enable CDCLK. */
> > >  	intel_cdclk_init_hw(display);
> > > =20
> > > -	if (DISPLAY_VER(display) >=3D 12)
> > > +	if (DISPLAY_VER(display) =3D=3D 12)
> >=20
> > If I'm understanding the purpose of this patch correctly (which I'm pro=
bably not),
> > shouldn't this be "if (DISPLAY_VER(display) > 13)"?
> > We only want to overwrite the tracker state service field on platforms =
after display version 13,
> > and it seems like gen12_dbuf_slices_config overwrites the tracker state=
 service field.
>=20
> No, this change here is [mostly] correct; explicit driver programming at
> display init time should only happen on 12 and DG2.  The DG2 condition
> is missing (probably because I overlooked it and misspoke in an earlier
> code review).  For all other platforms (both earlier and later versions)
> we should leave the MBUF_CTL registers at their hardware defaults and
> not touch them here.
>=20
> Also, don't confuse the code here (which adjusts the register at display
> init time) with the other (re)programming of these values that happens
> at runtime during modeset (adjusting based on how many pipes are
> active).  There are separate rules later in the bspec page and separate
> code that handles that (correctly I believe); the patch here is just
> addressing the specific stanza of the bspec page that says "The MBus
> credits should be setup once with the following default values during
> the display initialization," and that block only applies to the various
> platforms that user display version 12, and then also to DG2.
>=20

Thank you to both @Roper, Matthew D and @Sousa, Gustavo for your input here=
.

Perhaps this would be a better revision to the commit message in that case?
"""
Only the following platforms mandate updating
DBUF_TRACKER_STATE_SERVICE during display initialization:
1. All platforms that use display version 12
2. DG2

All other platforms should use their default values unless stated
otherwise, so update the display initialization code to reflect this
requirement.
"""
-Jonathan Cavitt

>=20
> Matt
>=20
> >=20
> > -Jonathan Cavitt
> >=20
> > >  		gen12_dbuf_slices_config(display);
> > > =20
> > >  	/* 5. Enable DBUF. */
> > > --=20
> > > 2.25.1
> > >=20
> > >=20
>=20
> --=20
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
>=20
