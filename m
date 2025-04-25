Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91391A9D2B7
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 22:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804D710E9C6;
	Fri, 25 Apr 2025 20:11:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ru6pJ4mq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9EE810E9AE;
 Fri, 25 Apr 2025 20:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745611905; x=1777147905;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UwVD5VTB2XYBsdADWn62Zi2S6rWLHSeFIgbYqact/Mw=;
 b=Ru6pJ4mq+xl/tyeGrn/sSrJos2PXDAf5nFL2AwaqhX0e47MMjolFJ97m
 5fP4m9LIyOePM3GjOW2jiCfXiKp/Q49b9ogs8g6ZjGLQvqV9f1eSyMBvS
 6BZp/azgVnA+bGGJamZh6LKdRnDOoXyMJlrotYsR2UJR9YYowPrz2AQVw
 1teUFuivtl37Z9VzUc26PZw8Y4PJInGUZ0uzGaiu3Xrsx+FmRHNthJIDQ
 ATEJKa4/tLlh7LDTbJyaWTXMNfbORXAubRzBalW6WNGoHCFLoKsgy/E9z
 AAqcAe4cVdnRb2DT5YZ4Yb0cO/j1QvBuBdqoRusgF2h4HJXd8Pfiw52XK w==;
X-CSE-ConnectionGUID: WEp+6gKXThSY/iTn0525dg==
X-CSE-MsgGUID: pWnCHhEZQ4ibL1pzpUaQew==
X-IronPort-AV: E=McAfee;i="6700,10204,11414"; a="58267734"
X-IronPort-AV: E=Sophos;i="6.15,240,1739865600"; d="scan'208";a="58267734"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 13:11:45 -0700
X-CSE-ConnectionGUID: dUe08Kh9Rn+6CcanU+CPVg==
X-CSE-MsgGUID: VCgp53H8Q5iHYl3Q2qHbvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,240,1739865600"; d="scan'208";a="133513801"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 13:11:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 13:11:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 13:11:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 13:11:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hsy4GYoEbWsmQD487Z6kDuvlXpQ/O7lqX33cP1Z3TmRYfUE7q51vSch9HKXpEvylklDGI0pU6p8g4hd3OIy+ALUJXH5aYsxiQrzXSlDVIb8iyUmHFJwMoliueA+Cfl4NfM9WlyiJvik5HVQ6XngJoRbhXBca7WEtwftXCxv+oyqVq2JlVGd1NAN4ha7cH0Yv2jWQIoSxdzoSNXCOagbvQr9drOmobp6VcojN+q8uE0jVkuQ681gWWKTLVHysqIskMAdA0KrBkejRNW7ProyUbH7ZGbHUws3496SEhjB85+1GbxplM8+cEJZHuogJKVakisg/7RdHG5Vkq+7TVKLOdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PUpuOhnBgFKw2n58Ji1UTBIr3Fh37kMXgxOaz6lvUsE=;
 b=AB3tzQt2gkvM/Ej65qeIjbIefAT5IOzkhgsRIxcXxeilo4VfEAHEwNacO4fW1sN0skSEjuuFyBno4RC1FcxffOgxb0UZxOzHWWWDBi8FmG4WRZnHnOLkai0Y/KshNIa+UbxQee12a3QH2arICqsZsyYZnU5fLVppX3yipbY4/usIRXf7e7hrK6x2i49ksTNi713lh+3+kN5eUSdjfSApfc+a54vTvD3/7WubGLOPctDyyh7E0g6M4VL2Ea4Gx6x41VcbP2sB7ducO07sInh+s30VwNpO0xXn70oKyUlswVkZroUiVZtWqHAhIWNNu4AhrWVloFWs7uuGmB7N8ImQcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SN7PR11MB7067.namprd11.prod.outlook.com (2603:10b6:806:29a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Fri, 25 Apr
 2025 20:11:42 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%7]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 20:11:42 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/alpm: Check for alpm support before accessing
 alpm register
Thread-Topic: [PATCH] drm/i915/alpm: Check for alpm support before accessing
 alpm register
Thread-Index: AQHbtegsOq/XFbqxrkeTe++OI+ew4bO0zuGw
Date: Fri, 25 Apr 2025 20:11:42 +0000
Message-ID: <CH0PR11MB54447CE1F826766BA5D928A8E5842@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250425132107.2926759-1-animesh.manna@intel.com>
In-Reply-To: <20250425132107.2926759-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SN7PR11MB7067:EE_
x-ms-office365-filtering-correlation-id: cfe4d18a-af82-4813-6ddf-08dd84356556
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Km3mG+fcIRj7s/vzrQ1IZx16aaqBIJusQylx0chnevAw/4Zsj7Orp+oPXkdA?=
 =?us-ascii?Q?8FA+Hl/nHqeIMmHjS/Mjj2m52o9/GaKmfQS43cazU8uQ3PXPhE9BcdEt8Ctn?=
 =?us-ascii?Q?T841F7EMzjIWvJld+tYFLA1sigRZRzue0kjaQ0EDoYWLZqx+aVKazaI5sAVl?=
 =?us-ascii?Q?RWAC5wpD+NaYd7vAvn9MrKw9liFd7KQrMpUhnrVz72nqXdnspBTXPm7Sbmfj?=
 =?us-ascii?Q?1VW6d1U7NrP12+rOEf/Qfl2c31ThTZ+nQLPIn89/jWNXaSAyV7KMDGMqGsI5?=
 =?us-ascii?Q?J2+rz6tvkrPn6NKfqmDglUdxSvK+hDl1rwnQHwLwJfPZUHMilapLhWILYDgf?=
 =?us-ascii?Q?6wegiwdXnaO4qVARF6stn1LkRcQmAiKRkCegg55eC26qHPViqkW1BW4zVy3B?=
 =?us-ascii?Q?gd/AnBq7RZ40+FIyTcQokNUQmLraXxeUfZ+5qY9HYBmg0PEA/NdODNjvrmHu?=
 =?us-ascii?Q?QG7NS9Nfdh/A7AnqnrGe82WssgudW1guogmBN+m+Nr52Ip4Y7FJI6qc2h/l+?=
 =?us-ascii?Q?kYS1G7gQEjIXQb+CvWgyfqrMfzmeNK2qmUbYFpIOJawZA4l9tv687OuaowuQ?=
 =?us-ascii?Q?rwI/Pq7ECADdR38EyQCrNh4ilfAO/6+wYrhK7CLBH6WrwNFjkPlsqzwxPsW6?=
 =?us-ascii?Q?ha1pmAN6mu7dLadaopaiq/6NTImkwOkFGuAumRPGAwOCcElT6JojH3sOf1NW?=
 =?us-ascii?Q?CiGW4I3b910N1v/dXLT7KJqlrQGfh40PiwzyPhhXXErQWRjlljJQH4Sk9yFh?=
 =?us-ascii?Q?ef4dYhlVjNqwM/MLVgvzWpiWtwLh9ceLlWhzeZgNaUU4BTjB3D3djcgrfrmc?=
 =?us-ascii?Q?FMEJxxCGlYbTpWRyTB+C1EhINRKS/aXRPzfoS7U1t2N+1y8tLAa8dO1vtmEE?=
 =?us-ascii?Q?nQfo6S52B6ITiyT/m1q+YhB5xVSIW1trJ3vrlGvMYKIwXsl0kur8o/id8Eo9?=
 =?us-ascii?Q?LFHn1G2ttypNDA7VUOcsGdeV33Jkmlehmtfkpxbw3CgWJSeMFg4IaOzTLycn?=
 =?us-ascii?Q?lg71W6F95fpsyq7/kecZQI3R11tMy5fIp3jFIpZPqIt/CT7nHz74xF1oSt0P?=
 =?us-ascii?Q?Mq/i8feSd/nOpllSpY+LFNce472Gdg6S93/COHq8FoM5ESShyH4H013Dc6sA?=
 =?us-ascii?Q?wcEQmcuylrhMJKp2DsbsAuW0PsHNhG9SOptEg6279+25xb8MCrRuhfub+ycL?=
 =?us-ascii?Q?9Fzh+dv1Yb3SQp5uOpXUpQK35/2lII7ozR7bAVzjQeiIbx4LWuJpPASC2VmH?=
 =?us-ascii?Q?DKnR1QYIwqgnr4Z1A8U5Z/cdnZv/kTtaIvKiZdExeZU9lhJeKCcxdF1BVTL5?=
 =?us-ascii?Q?fh0WgX4JSbEPZjNaSa0bok295+dkOKglrSFx3TPH9Jy0El+YgGuNZBNEq3+s?=
 =?us-ascii?Q?GCEBBUhGkjpw74CsHCVDfwzbe+e+SEFbrhtWjHANcTQ7jogGFeVXmt7o0Jkl?=
 =?us-ascii?Q?CXEHhddxc2FjH9jvyi20brcUs3j8XYgE6kGaUEf94mpDjCcBxrYZnbbpSi0x?=
 =?us-ascii?Q?LheFiCnSUvY9qdY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jAv8Mn2pR+KhP5p2HEIRYbnJ589Z3BWUilat54MubwVyz2JQ4Wbuy/uLFIfw?=
 =?us-ascii?Q?0akfbEA8EE/2j51TLE0eKMI2EIpGJnj3WHs+nAD0V0aWUCs9BtfiGRYD4THZ?=
 =?us-ascii?Q?QMxBi/KFBss9z1BFfuxrtlUdHHPADDmRwTuNRP3WUt5q0DeNoxg7P0dv3kXb?=
 =?us-ascii?Q?TOR4ZLVB3zpSBJCxrbgY1Qaa6+qfmEIjYhG4F4Y4stfOba4Pg8h8wkmzsnDS?=
 =?us-ascii?Q?YlBFr11e2K+Eju5Y9Ws67S/mfBdYJr4kZKD4L6SB+ggIIgL7RXKUEOVIkIeI?=
 =?us-ascii?Q?W/lUHmpGAC5RuKCnlMYZ5b8Pq0xpLyF0MfMNEPlc+haspudPq70TIivgWuI/?=
 =?us-ascii?Q?bQwRjw6M0Akfxp86mn0IzoIqDDYXuyonijJfbDKoe1Az0ITVXXCRJMOqE1Iv?=
 =?us-ascii?Q?0FUf0E6blAz2L+0O7LXV9gXEQrjON70LQfQiiGtF3c+5dB7vLQu7OF/cBXqm?=
 =?us-ascii?Q?wVtqiyV2ovMtdEgysRBZA3J3n5p1vmIAsTcNmWBIv8zcFUUrJy4yJeVEgn6l?=
 =?us-ascii?Q?vOcNDF+cEE4SCi2Qa4x6eJB3A+6EtUHu/+murGVRVbzfTCON/cqWtTEB3dNU?=
 =?us-ascii?Q?xJig3v3e72TpNrByWJD4KagVdYLvrTsXEmeTj3pDTQmdKs0RF8j7BS6RJV4e?=
 =?us-ascii?Q?+3ezIER5FPChHE/N8CERUh89x9b7fnrG0selitcBHQv5E2x8scShmhn/UVEY?=
 =?us-ascii?Q?tdFoAI4FRp3OWifoP1+RihUE+sD3xhy6QBrEfzQmKH8PDdqh64dih7Vf/7iC?=
 =?us-ascii?Q?Kax8V/5LGB4b+keWlRH1hjQHjw+Cn0RD00vNgVRfRKiJZGYggf/kM93QDsfl?=
 =?us-ascii?Q?ceC5ehDV5IDptcWcuzCZBfr3+QlJkNlVTHAqtFVkUk3Ch9mFLrz/5Zd9W94s?=
 =?us-ascii?Q?wEQCAAze/2dLRNdbatMelvi/ePGLSuM6ENypejReFEb0jkAoJyC2D4nHYmZQ?=
 =?us-ascii?Q?ObSIQmFzmgXwjSVwhScqRoyUnjU655z/nFadAWn/ze2QjpXpHDWE83mq9BLH?=
 =?us-ascii?Q?8Ttojr0tJMU7huya9NF3ARpESQiUW5mnvMnEkxnCA0VSzKHjAtFJYEKGtpnz?=
 =?us-ascii?Q?EwSjjG9mRGx02b/cTQijHpczt/2oXC5/jzCStnw9NZ8u5XKBafM2U5XYAXmM?=
 =?us-ascii?Q?P0RA8sFYS63uAUSo+33tQKoP1L4Ht85qK8LN+MmYazJwf8As1ve4QxXHkXM1?=
 =?us-ascii?Q?WrThDtDbiis3wHNTRpGyeY2DdKOZ8rxvCBHDHqHk3jvNWk0OiIggywremn4S?=
 =?us-ascii?Q?0kj5Aoo7QhSUVbsUTdSsl1DCC7woAxDDD2d/lW4p84Mpsf4De0WDW8qv2cjZ?=
 =?us-ascii?Q?1FwGbSgeCeqeAAzfNykC5p8WWaLKV5o5tqJjcBNhlqyclKGhkaw1+gYWq8EE?=
 =?us-ascii?Q?cw+7esIp+vkpzrMwfOwdm7ENOCMXbovYfFP3X9DuNvTGq3vONjdJd/GwT6SR?=
 =?us-ascii?Q?mzMkJ47i34g6l/iFIr/txB423f/5HXL4Gfknppenc9+w3MuZkqxMe2AyT2Ny?=
 =?us-ascii?Q?GHHJQ4XfKMqVFIpU53pcWJam0fC5AqJ/n84PPs4CS8nOy9wknplejvU6gE7A?=
 =?us-ascii?Q?agqkVmt9a4W7K9hbft7Ds5rkRliJK4iJctIzO+u4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfe4d18a-af82-4813-6ddf-08dd84356556
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2025 20:11:42.4154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OZSjeNrsS9f/yeKAb0Iq+7o+w5VbiRnxe69/EyVGxh7NCwuwDldYhlm1UwlIUTaLLgT6RbmOLUpua1goq4U3+z3DSwcDtAcgzu5VC1dG1gg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7067
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
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Animes=
h Manna
Sent: Friday, April 25, 2025 6:21 AM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Hogander, Jouni <jouni.hogander@intel.com>; Manna, Animesh <animesh.man=
na@intel.com>
Subject: [PATCH] drm/i915/alpm: Check for alpm support before accessing alp=
m register
>=20
> Currently as EDP only support alpm and check for alpm support will
> prevent DP connector to access alpm register.

I'd maybe reword this as:
"""
Currently, only EDP supports alpm.  So, check for alpm support and
prevent the DP connector from accessing the alpm register if doing
so is unsupported.
"""
I won't block on the reword, however.  As is, this patch is
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/=
i915/display/intel_alpm.c
> index 482dd192d47d..1bf08b80c23f 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -556,7 +556,7 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	enum transcoder cpu_transcoder =3D intel_dp->alpm_parameters.transcoder=
;
> =20
> -	if (DISPLAY_VER(display) < 20)
> +	if (DISPLAY_VER(display) < 20 || !intel_dp->alpm_dpcd)
>  		return;
> =20
>  	mutex_lock(&intel_dp->alpm_parameters.lock);
> --=20
> 2.29.0
>=20
>=20
