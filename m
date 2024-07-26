Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E664A93CD00
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 05:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08CDA10E08A;
	Fri, 26 Jul 2024 03:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F5sChfU/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A9B710E08A
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2024 03:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721964650; x=1753500650;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=96zkSRZFYFmewgQkmUbFSWmP+M+TUlU8c6Kc1qJhFRg=;
 b=F5sChfU/iCCcXEAwm34TIHr3nO8DJgoKZ92DvdQ/Y4PtvkJEFR8it48p
 +vKnOz+aO4XDphrajRDa+qhMYUri2eKZuxecnJkv0TlzUkrQuSOxxZ7dK
 2r3FT6E6Ogp/42h5y7Tn4DZ30S+roYZ0LYQ6hh5vw1rKlf1cDDen6dPF8
 1mdzlTzYGYGGm0MYMe94f5QDpYj4bfsvDi8k2ngyj6E6p/KHW94GHp3aR
 oS9oEc6TR6TKRGsUoL/zcdpV/l4CLte4G+/kWsx/n3pxfYp1abNq1VcpA
 Sdn50n4RHw8hGRjdRErE2CiLXtMfBff/HMgwk+d/seOfBPC4T/qDqGNYh A==;
X-CSE-ConnectionGUID: c4IvCZfEScGpkTlTAYoSKA==
X-CSE-MsgGUID: 7V/I6hMTR8iVXrzutYd+iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="45161652"
X-IronPort-AV: E=Sophos;i="6.09,237,1716274800"; d="scan'208";a="45161652"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 20:30:50 -0700
X-CSE-ConnectionGUID: GMMVnsvkRxen7xuV7WF2MQ==
X-CSE-MsgGUID: iMUl1xa9RMyiacWKN6ofXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,237,1716274800"; d="scan'208";a="52835037"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jul 2024 20:30:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 25 Jul 2024 20:30:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 25 Jul 2024 20:30:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 25 Jul 2024 20:30:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 25 Jul 2024 20:30:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lCw/eQDPHxiI0cbsLoOzj9u/1ATpL715XD2AzRvRI8aXUeOoGTRpo8/VPVBkkOBXsMu/VDdfBHdBQbTol4FpmrIajC4TM9TkbOcbqCdbjODWoYNAbn30z2Ga8VleLtxL0EI95a7n+vnie/clsWdk6PYSHdz188P3fKAOL0+b8SJTTD69IWPzb1+Gz/G68WGbTGPxFjUqmkl8jYGK+WgQ2667XsvE9x6/QwfeAubqv+j5xSa5DLO7er0wJmUIAcY7vMcZv0w3B9OKqUDt7EZrK+/wOGEEj1kOFjsTh4DeTQAFyUGfLByU0rAlhMwDLgpoY3XJh+T5We9ir+sD5wyQow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lxgzuX1zFjoeag/fOVldYTuOQp0tr1R1qwGWvON0sxI=;
 b=I4gAdY1hitSkLQ6mRWjh7qjiM1PhK6qpK5F39oswbt8Qh2cyxDGWjSvncXUYBMs+OSCZl30c1v6SrIxMFVOFwsZ4j8CU/8Ms6O7rrsh3Y8rDOLwj5qzOVGv646epjOx+Lp6sRd2G90eaxzJJr/zcalKGt0druAUzuM8ddbeqGsgp3jGIn5jbdjPKjMieTBsa8kgH63n3ONJe8JZ3ifD6OJM3vYchUy6UXiZmly86Sn0UefdHBD4xXrPyvnemWzsJbjRRUBA61e6u9hfWbVz+xPykHBNVIjK9o6EMCGphoTA1FrL5DMivZ1xYDEc8+HJnNP9CQ1UIPka04xZJetWSgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN0PR11MB5985.namprd11.prod.outlook.com (2603:10b6:208:370::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Fri, 26 Jul
 2024 03:30:46 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7784.020; Fri, 26 Jul 2024
 03:30:46 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
 uevent for a commit
Thread-Topic: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
 uevent for a commit
Thread-Index: AQHa3FlogQWC07hUKEeqHaByc3HtLbIFSNeggAB0OwCAAQvPEIAAjo+AgAEIAPA=
Date: Fri, 26 Jul 2024 03:30:46 +0000
Message-ID: <IA0PR11MB73076F641B065D5FF4618596BAB42@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-7-imre.deak@intel.com>
 <IA0PR11MB730719E68DD305BF254B5F2DBAAA2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZqDiegIe4mPSuZLU@ideak-desk.fi.intel.com>
 <IA0PR11MB730708C1C6C348D16DD3343FBAAB2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZqI6twTPr94Sdrd0@ideak-desk.fi.intel.com>
In-Reply-To: <ZqI6twTPr94Sdrd0@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MN0PR11MB5985:EE_
x-ms-office365-filtering-correlation-id: d998b22c-4ff1-45c5-9491-08dcad23564f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?luhnoAd84umj95W853FWD0/8SRCmyrfrjMRcSuDvOF2CYfLaqODVJiELyO5J?=
 =?us-ascii?Q?N3ZUp/rEm3eX0+Ah2Ee6oPnQeWQ3a9XgMl0ujPN0hxE/X2++SBf9POt8wTaj?=
 =?us-ascii?Q?Z+Phlz7p8/gy46Vnt/JnolfYEZjtjD+7zWcfN9ajgoZI+NWbytSg7OrWpC6T?=
 =?us-ascii?Q?NfhvIMrPWGe0ThkOjt/pElJKk0S2boqzN1Q0atUKrUbbkjZ3tBsOJaifgMHB?=
 =?us-ascii?Q?9gABw28YCF/8lshPYYtxTa4Z3CJkAG7GB7EWlNqj0tZaJNIkcNVF0EcZgK7I?=
 =?us-ascii?Q?W5IbUUAdwqJwJ413XbmAJq9YdsJFfeYLGNSD9/dii0KsDPePqVX1RkYv+/P8?=
 =?us-ascii?Q?LeWtmCj3ktWefMEfKnHPMwePqMg+jCFtz1h7DGOVF+1U/HPyI8GpkVvsH1Sm?=
 =?us-ascii?Q?/yrflXZ7DXlLlgSZs8W00/GwGC2seYwvzKIyYDMIxtW6PyG8pJVWBKk9NmOF?=
 =?us-ascii?Q?0oV0p0SH72bJQvmIgzcqWBaNoSGfdNATGUIzo4qOVdxTFFPjq3Hcr6i4TVcB?=
 =?us-ascii?Q?46CXxNEFZ4+fC5XEDQ7pBUB3fYWfkSpefQSNBvreSOXxzSYilcCU8N1FcFRD?=
 =?us-ascii?Q?9SZTt5oper5HxpAB5n04V5P8ODLihfKyD748XwqA8dMdGvXofUd6Iog2Cml3?=
 =?us-ascii?Q?Z1mnivm9d7WNDx26D/o7/fllqc4ZFkejXYoydvhlsnxryfz4o5khGHh1SS2F?=
 =?us-ascii?Q?/SoXVIKKFXiQN9wcgfNSDmqV1IsZHayOJ/mxcFOlXTPHApzANWBfMeb1bIwk?=
 =?us-ascii?Q?P63EnRcQUf15ISFy2hwZdBMmxmAGpgGTOOFle3Lzb64cslK0X6QTfAjWXJEt?=
 =?us-ascii?Q?4D33PxnPDzN2tzgmoi6ioCVfWisaNAHsihjk3TjFsmElBlljKpkWYVb8N6jJ?=
 =?us-ascii?Q?4kh0lg1wISs+GYERFUiZcyk6rY2zpXqaQpkgO8Yqp6TDrdfB9y1X7FUlbjJB?=
 =?us-ascii?Q?YpqgpK2SEAyRWw8Dlp9WiKkkl/PhA7G0lf6Jz51QrzoRqe9idzVGiBfRR4Pg?=
 =?us-ascii?Q?MXGg2u+jkTJ1XLy19uGSwcGq7IQm9C6kPAAn+2r+xGyNWv/gHyFJsVrxGrGa?=
 =?us-ascii?Q?PBAOWGlcz5sS0/Dy4IdzV+U1rvP2fBl1kACzkzfcMkMCKLSE+a0bmPk03ey6?=
 =?us-ascii?Q?rzC7a/QrBaRQsHmxDDoG1dcD38fCBmhjXCavSvP85ga4tRb8dU5d4K+Qttm4?=
 =?us-ascii?Q?+riVTKGAnVWbqsop52zkMMJY0d8jNv/bxXnY0KBZrLaXbU593qse5t/j7aVL?=
 =?us-ascii?Q?xAbbTEQx3Ldlhk3VKHBEY6Q65Q2pwQXqOC4r0ZvsXF0kha3Dza5HU2atJn5O?=
 =?us-ascii?Q?bIVDlZYO6j3OQISI1GWcNL16GTplvztPmNLsiDpi+Tz8ukoL/bbKwmhuMXZl?=
 =?us-ascii?Q?ahk8j6vfq/696Nvc8wqOjBp4Bh1Kko2AdH3n3IhHIi2aJ1WzPA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yoT1aDans5p4fmAJSACn6vt8qYk4hsjrN43ZrGVm4xkIQBq20BUzAiZzHOe+?=
 =?us-ascii?Q?tZltMeA+8BS16c8Z/Qwlhf6xnmv5t6s3rzsoBlLYnOM/guuosxb3DSbI3Xhz?=
 =?us-ascii?Q?hXaHkmGzITkvaQwyZvOwnM9+KUIuLu9DPl+FSENehlJWCUoKtm2E0VvRx+zH?=
 =?us-ascii?Q?l1m/FhgzWpDIS1gHiCqGOTXFBepYVi/8+0Mo+1oEdtIbV9CahquaZFY7S+OO?=
 =?us-ascii?Q?JNPFOsOgy3IXvGSaSFeJpyVMYIfcQw0+jsPUO1WNlWLucPlgom3NZdrRlxhD?=
 =?us-ascii?Q?Zuxv2iOvEfW+iSCOxC6nx8aBWMDG9PbILQKP1GvO0RWJDUe90lnT7tq/IDzN?=
 =?us-ascii?Q?wdfRocQ97KL4kdydK2CWwPDsGQHwM54wERwK8wLiKbjB5g1zb0QwkjkzZJHx?=
 =?us-ascii?Q?yxhQj610LWrkruOEjQt7/mpZ88CHWtTVVwJx3XVUuXo19ExaNxJMxO31Ubj6?=
 =?us-ascii?Q?o+pV+zO5iRmWgmhtgIDghwqEkfJuRbfvoe4fZ3Hm/Ia8vWkhKHqbaHxB8My7?=
 =?us-ascii?Q?khUejuiVi38EyJ2Ku+goaFJG8mDGYQYuaUluT6aJKwjVM+T4MkWZUqmqai2X?=
 =?us-ascii?Q?IXfnUyQ2FJ4Ik2okcoWJb6FxtvVVMyoy9eH4VGQCNgqfVqzW+Jo/rRs8yd7/?=
 =?us-ascii?Q?1bvtUGZCngBW//lBhT5oyGh5q1aYEX2GqnOjjppW2P8elAYb0sOkxO9qCr/o?=
 =?us-ascii?Q?isUGuhK0uxZrMvyiIiCEwgFK8Owpww53U2oQC+rN73/K1TuRBXaotZ0B6FGo?=
 =?us-ascii?Q?fMyvaL+CSzIxgXl8gTzb+t5dlTNOSIkXdWFTCZ18kMW+Xo3eQrhyypReacdd?=
 =?us-ascii?Q?UQ758rIDbIEhucezlaq4Ir50xQF+moHvcqvLKt5qqloHURnibycr6T5d6jJp?=
 =?us-ascii?Q?x/2QfjNLvckBrpDu0ATqU6C+XgZFDOwvRks7bZpsAadMcouw0RssPqYLUCzp?=
 =?us-ascii?Q?qiUuPHhjRJWKkLrG/sEQJqIslgT1xVtJALAkMhbe3GXbnOGgqSIv3un/HxJP?=
 =?us-ascii?Q?YWP5MXzBM2EDGBT0A7gpay4RODAhk9FMaYRszRF6eRiFNFk/y3tvlCGLoUTi?=
 =?us-ascii?Q?aROXUjGM7/CLU+3w4erWvH6wDiPOkfMrh/Uz3Yf9pQfqwKijsf1rCTV7Se6y?=
 =?us-ascii?Q?/f+KQPxPC5JMySYvX4HW1KjB905XUt291u4BFWx6YRP7UEZZoWG5LxFaA0kP?=
 =?us-ascii?Q?JSlok3jTPUvup+FUm2oFptXWzM3yi35bh7dUO5iUAwiMHxZ2W2SOSK2gO5dn?=
 =?us-ascii?Q?1UWVl3PZ3sFMK7STgoByryecgiy1sGsEuCMnv0BUWgxObHdaY3sTdWQleBos?=
 =?us-ascii?Q?mn2hO8b311WAD9PQ1j0ywi8TMJhZ+f4PkD2qqkB/5kHT7YdcBZ/AbQRTL4Gv?=
 =?us-ascii?Q?6vHQ0JllvKsJKtLcbN0riZsbeZyMRUNCQakbw0BFQY2HxEMMJreXrmDdWk5x?=
 =?us-ascii?Q?eLl7xobGPpKEjzQy1xDmOPA3NF4Y7VTXt+CBqBkYcd+einNMMmKK14MGUztZ?=
 =?us-ascii?Q?mFTWEGon2c2tmjqynRZR2LR3QGzQ5bwkAu0iuImHjMNN7N+KsMDt2jd/t2Tv?=
 =?us-ascii?Q?vSgiQcY25jVJjuAts3E+1RUk/1EjW8X5izuqvt8/kT1he+H+PVidEDb2cJhm?=
 =?us-ascii?Q?s1Pc9WyDiOoyaqI2Bghx0SXMdtQsdUulOok9oqfC+zk+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d998b22c-4ff1-45c5-9491-08dcad23564f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2024 03:30:46.2875 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E6AG8tQli1aFYeHU/J2SaqwTBNNIJwz3Y3KxfTtCDkyNmPDbK78CGN2WsnZd852aGreTBboLko/ZM8vI8brM2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5985
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Thursday, July 25, 2024 5:15 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
> uevent for a commit
>=20
> On Thu, Jul 25, 2024 at 06:16:03AM +0300, Murthy, Arun R wrote:
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Wednesday, July 24, 2024 4:46 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [PATCH 06/14] drm/i915/dp: Send only a single
> > > modeset-retry uevent for a commit
> > >
> > > On Wed, Jul 24, 2024 at 07:29:33AM +0300, Murthy, Arun R wrote:
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Imre Deak
> > > > > Sent: Monday, July 22, 2024 10:25 PM
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Subject: [PATCH 06/14] drm/i915/dp: Send only a single
> > > > > modeset-retry uevent for a commit
> > > > >
> > > > > There are multiple failure cases a modeset-retry uevent can be
> > > > > sent for a link (TBT tunnel BW allocation failure, unrecoverable
> > > > > link training failure), a follow- up patch adding the handling
> > > > > for a new case where the DP MST payload allocation fails. The
> > > > > uevent is the same in all cases, sent to all the connectors on
> > > > > the link, so in case of multiple failures there is no point in
> > > > > sending a separate uevent for each failure; prevent this,
> > > > > sending only a single modeset-retry
> > > uevent for a commit.
> > > > >
> > > > Is an exit condition required with some 'x' retry so that this
> > > > retry doesn't end up in an infinite loop.  For link training
> > > > failure the link rate/lane count is reduced and when it reaches
> > > > the least can exit, but for BW allocation failures/payload failure
> > > > this may not be the case.
> > >
> > > This is an error condition the driver reports (asynchronously) if a
> > > modeset request by userspace/client failed. It would be incorrect
> > > not to report this error, leaving the output in a blank, enabled stat=
e.
> > >
> > > I think that userspace/client should handle such failures - in the
> > > above case a buggy sink - by disabling the output.
> > >
> > If user space doesn't then I think we end up in an infinite loop in
> > KMD. So would it make some sense to have some exit condition in KMD.
>=20
> It would be a bug in userspace to keep modesetting in an infinite loop, i=
nstead
> of disabling the output; the same could happen already after LT failures.=
 Adding
> a workaround for such users wouldn't be simply not returning any error to=
 the
> user and is not the topic of this patchset.
>=20
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > --------------------
> > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
> > > > >  drivers/gpu/drm/i915/display/intel_dp.c            | 6 ++++++
> > > > >  2 files changed, 7 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > index a9d2acdc51a4a..3501125c55158 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > @@ -1754,6 +1754,7 @@ struct intel_dp {
> > > > >       u8 lane_count;
> > > > >       u8 sink_count;
> > > > >       bool link_trained;
> > > > > +     bool needs_modeset_retry;
> > > > >       bool use_max_params;
> > > > >       u8 dpcd[DP_RECEIVER_CAP_SIZE];
> > > > >       u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > index 421e970b3c180..0882dddd97206 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > @@ -2876,6 +2876,11 @@
> > > > > intel_dp_queue_modeset_retry_for_link(struct
> > > > > intel_atomic_state *state,
> > > > >       struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > > > >       int i;
> > > > >
> > > > > +     if (intel_dp->needs_modeset_retry)
> > > > > +             return;
> > > > > +
> > > > > +     intel_dp->needs_modeset_retry =3D true;
> > > > > +
> > > > >       if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) =
{
> > > > >               intel_dp_queue_modeset_retry_work(intel_dp-
> > > > > >attached_connector);
> > > > >
> > > > > @@ -3009,6 +3014,7 @@ void intel_dp_set_link_params(struct
> > > > > intel_dp *intel_dp,  {
> > > > >       memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set))=
;
> > > > >       intel_dp->link_trained =3D false;
> > > > > +     intel_dp->needs_modeset_retry =3D false;
> > > > >       intel_dp->link_rate =3D link_rate;
> > > > >       intel_dp->lane_count =3D lane_count;  }
> > > > > --
> > > > > 2.44.2
> > > >
