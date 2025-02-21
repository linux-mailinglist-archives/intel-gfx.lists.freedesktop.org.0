Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4D4A3EC22
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 06:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA45A10E21B;
	Fri, 21 Feb 2025 05:12:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j0Cncert";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9C110E21B;
 Fri, 21 Feb 2025 05:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740114768; x=1771650768;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KjccqWttr7eqohTJhrMc5UfbmRym3Cb5AxleRkilTww=;
 b=j0Cncert3yS/+YyZDStIo740+7DQn0mCVixUKcjUy0Yb5R5ZvczAAMPy
 k834qGu1dKexjstYdGmeQEa+JoNrxqApyhaT+Vq0pKXJ3Vgv1EBgjgXer
 tscrNNx0cPFX69QvT1jyPkkc78+bNpMvHkcYUs0Chw+J6zQggjb+oZKX8
 KOwejVd1PhwQBYhsSUxbZ/M8BZ0LF0eNQIZSWb5nrLVPC5ryMDclpL/Wl
 80AKTG5uxyII2KBzncQIdMHeu9kymTFB+2jMkf6e03WAZMPbBm7CBIg2j
 We/N4aomBBgpRVuSw2SMgoJNFko41Y+j68dtFeQC/TCpBjoz7fhHZZinR w==;
X-CSE-ConnectionGUID: v0c0ZPwsTfGoiODVy//qkA==
X-CSE-MsgGUID: VjF4+3K2R1Cns1p/nCo+9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40111303"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="40111303"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 21:12:48 -0800
X-CSE-ConnectionGUID: gqjDdK/fRMiCN0f6k+oxRA==
X-CSE-MsgGUID: qYzi8X3zRyGXsZC+drrzJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="146164969"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2025 21:12:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Feb 2025 21:12:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 21:12:46 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 21:12:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AxZNhtYniI78BFThS5GXek8FK1zzYQj0zAMHXXxL60AYY+2pwby37Spu6+XvTsR2McJhytK+wFuuryo0eEYGM+bvmyLJuIyGjV4x5owIzBh/10lKhpKr30CV5xMilAbqd11Zq1gfPq4+3ghhob3rg83PO2bHU4guxEYbZjglP37fETaoHIu0spK/B32k0D3tnTxLljTE3BNEB0mNxzbYoLUGHPA2QLPwJQSPLxkoP1QkMwUQicm9Oi5TEz7JGlhO3M1y9Tdn6QhGyFNa7+SOmLavEEo7R6OoB1fl/g5j8XVo7evvbCa5GK95cyThFj+vZH5sSaJeVh1gXQqfAAUAuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B7BVezSsYJWGIB/3yJFfUJooZXlE2m9lES2gpcQmaIM=;
 b=qL8UNYfS0h22NHVgWxkdOFnYVmjZYOAEZAspG9GlrHXGFacYgeZ+Y3h2ysP/zeVxxBQa6ziyC9A9yaPvZihf0oL4X5BZV/HNAJkPiAhli5UtHBwF/L5QyLv++kdlrPKFPKMZdB5i1uJl4pGaqAMI/r4tkrXsVWwpvj5KsnEjvoMxeZ+2eMCsFhj8iWWzjWwCXvc8BnXsyqEfoXPfQjYEb/jMylV/5toaUVRTI+3C+7lzbin/2n4jB1k/iPY9bl11YqIfJUlZ/L/2/Uywl53mEojRUxJ1uxJIX2MBisuDfY6KAh+fqI84GtMBRrvA2JevT9/cLfa8tEfxxKmdhYN4rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM6PR11MB4578.namprd11.prod.outlook.com (2603:10b6:5:2a7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.16; Fri, 21 Feb
 2025 05:12:44 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.013; Fri, 21 Feb 2025
 05:12:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Yu, Gareth" <gareth.yu@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Tseng, 
 William" <william.tseng@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>
Subject: RE: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC
 1.2 for rc params calculation
Thread-Topic: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC
 1.2 for rc params calculation
Thread-Index: AQHbhBUI54W926PMQU6x/+0k0YIsUrNRKaeQgAAKgYCAAAF0wA==
Date: Fri, 21 Feb 2025 05:12:43 +0000
Message-ID: <SN7PR11MB675057F0DE2D5A93201C3CC0E3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250221041401.2219258-1-gareth.yu@intel.com>
 <SN7PR11MB6750A1D7B5E23EF58A8EFCABE3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
 <PH0PR11MB51282B2F63CC8A2B0163357AE0C72@PH0PR11MB5128.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB51282B2F63CC8A2B0163357AE0C72@PH0PR11MB5128.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM6PR11MB4578:EE_
x-ms-office365-filtering-correlation-id: 056bad81-8337-4f3d-0fec-08dd52365f72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?26Bf2su8zjdixDrVnd+JGkFC4v5nxkXssp8ty179jd5Fp6aopSpdFqa4Xo31?=
 =?us-ascii?Q?IKRNOJu397cHF047yRW/51CDimzZJsvw7ZgAeGhYFK9xww4w7dVQ884Zqjr8?=
 =?us-ascii?Q?6HanI3e/MCgEyJrgFGOFdm0tUU/9T4N++o44nrButuRS4Nvijv7MhVDF12VZ?=
 =?us-ascii?Q?JifGIZCsdD45SkosKL07dIMuEXv9jV0xYBTn7++acEvMbSp5nwcEcIZBj2Z2?=
 =?us-ascii?Q?vNW6wjlrw3caTlCPKHr6z7JAu4ZzT9nm5+zgjPw9QUa1xmIFeCZwaT5hsXwa?=
 =?us-ascii?Q?HHa3mzxLpbhnvvUhvwIKpwOVL9oeCes72PFD97Kz1wGflS2/m9rjaVxJ1j3l?=
 =?us-ascii?Q?MkUmSpX8OMC8+saXzYrnxjm3zpi+50PGWei4U0wxzwrIwWhODNYbydpWdQVA?=
 =?us-ascii?Q?x6uFEy5rqMOpv+ivkxwbO7VEztq6E+XggSFD+pSRGGs/P9Gkww8a2a2Ksti8?=
 =?us-ascii?Q?pfI7izLcqOGfk/s+1Xv1qUzD9B/hSBbzTejrA0X7FaBn3Eho9YrECxHCN035?=
 =?us-ascii?Q?DmeykhWRfTQ9GJlP/MGmEmvq/QdKgUqzDfjE+VB2sPnjWTE4JTkyy4kPDFek?=
 =?us-ascii?Q?B5lwqcLYq61gB7yYJRIZQUn42pdAKAZWVl/+AjwnH3YwametSu+SHYXDVj1c?=
 =?us-ascii?Q?ZMlDg3plH261xhCQZq/s7MXXdmwh/gR0VqdiSI+gUJW6oOddjW/9n8xd7Mew?=
 =?us-ascii?Q?+wivbiPeRHWnEpbOjS3og7HR+vRP3Q5dJfA/K1w5E1vvBQYghjS/i5m+w2UD?=
 =?us-ascii?Q?tx7E0LAMICZNeLQ7YmVb1pUjtZG2UGPjcVVgrEKZEOwIjuGvrLgfx5JS3mAf?=
 =?us-ascii?Q?q5NTT494U/tOjYFcYfN7v71gfrvmmQMWyUy78T9+Qa8egQB7sxY7xyDKrcdw?=
 =?us-ascii?Q?lOCAPg/8VhZrhEldlDBbezTws/OvWcXfg8TdSjdvTVAkHMSe+hUI8T8PNc0t?=
 =?us-ascii?Q?J53Z7BSGKA5ERdmSjV30ZhZYHQpIEJijAx2Lou7afG6Qo7lKaWOfNzz9HvBQ?=
 =?us-ascii?Q?QgLNEuem9hPCEjIVsnOP2s7hc8FUR5E0ntNuLX6+wiV48yThy9BfrcZLcWcC?=
 =?us-ascii?Q?NC2oHCR9XIBJ0Y4F+FAOPOVoGENx/NS367qSuDmpxgFvIW6a6vsmF2GuHm0M?=
 =?us-ascii?Q?qTRJcO0IkDfEtj7tIOiFan2aIM+9ru43GJVEu4kupzy9kQQ9Oxm1LF8LnIvW?=
 =?us-ascii?Q?+AbBBvGc0OjttFdUHz3U/fZ+1b7ZWn/nTnHpP9MVxnBbzI7Yzg1u4k8PuKTg?=
 =?us-ascii?Q?xUFmcWYu0dA4r4aUC/0AOmF3KJ7aUc9MhHC6HZtUeDR/39ROqwylZHlDJq47?=
 =?us-ascii?Q?67qwE7XdOABWixHKWrOYtyRIclhWWWy+3+pY9nJaZrRdRcwgJZmDlpIEMfhj?=
 =?us-ascii?Q?gqnE8+gDIkB9dVyH454C73RGs+3u?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Lhhy34AMFH6ZKeI17fTlfZ0p+RIv60wgZxB3zgyGIESVrwXnaIynzskYPH+z?=
 =?us-ascii?Q?cVs4EvHD1CZIJfnCUDCXgM7gZHfqkS8UZs9wc1qE1oHfQKkQ7/B1pNBt5kc0?=
 =?us-ascii?Q?tVRHJU+ODCrFASWAvEj50NUX6GeuYwvdWwJfh617SYwp3HsKo96wCJWMomE/?=
 =?us-ascii?Q?2ikzK2b9GfnofBKMDsEo+oVBLAIaookDP/zXx/ED/iZrBbeqZGBhaSpNmG+e?=
 =?us-ascii?Q?7K9t4OYNfpwT9X7C1nNjj6dlwV9J+ZD8R94SoJXxAu6ajCcnhmMgWwqmopWl?=
 =?us-ascii?Q?l5kcTyzGg9yt5lZTu/CnmR/lUCsH23vJGTwjDXEQGIg0DM6bqODnYxZgzjil?=
 =?us-ascii?Q?NJC/Ps5mY9c+M8J1OORtOS+RoEyYn9MkLn0oe3yRN1etYEiRN1bKnqUaWQpi?=
 =?us-ascii?Q?heX4w3lwDVbzy/grrXOoVcx5y0ErWB3Rw6CYQb7c+ZV0cSCroGtMAwAXuOJ6?=
 =?us-ascii?Q?eE439VPXSU+7RRtL4cmTa+d8Q8fOxstjFoS9NslesE3COAJNUZrJ1xx+u6MP?=
 =?us-ascii?Q?vuSRj3znpn4a+qXUT/fADhWuAct0YSMoRrZmhRKc9vL0ziOKDNJ/pni+iC6X?=
 =?us-ascii?Q?fT/uDaVGVqjoKD/0HoNL0oxVTQwu7/AM87KISJ3DSyobUo2sR/qaBbK9zxG7?=
 =?us-ascii?Q?tL8yMTCDkbH68lTJluGDHV184knK9fQ/X3OY5uYkNthflZ5ggyuXMs+sMhw3?=
 =?us-ascii?Q?5nN7I4BT8UrS1IUxHgPzIF0hrOgxQ1xHTgCuFKeYYAnrp0ih1bzv2HeASidM?=
 =?us-ascii?Q?XoV98hL0lhNmlKpR8iU3pCeR9k1irDRoEGkjkLs6SlrCy8tyS6Gmd8v5tsh9?=
 =?us-ascii?Q?i0G+K1sfk/Yle3yiT70QmTUOpGi3I1gqqllIZV6xIIkBUE9EsSVpPkWArfGu?=
 =?us-ascii?Q?TNKmvBZMkLHtGHOfN/i4hjGzez9Io5Dren00t/nhjPdVCm9Budbzg9FyoJyE?=
 =?us-ascii?Q?L3tW2A0ExGDLoaWYU4Bo9oVmA2IBryirWRbgkgNCC8eOmpsj4TRwsrfI52bx?=
 =?us-ascii?Q?YN4PTadL6QR28BgZ4O2LsdCcjx2WqE9XisC8wROX6N0MdI0D6jwZoDDfA5uO?=
 =?us-ascii?Q?X+uPLVqkn1wRqSaQ78YSJ89aMsTUMhh3WLzcf08kMEYyWLKgmRmaGj6a1lgy?=
 =?us-ascii?Q?V4CB4Rg6lrDNEgDcOX20FM5+VlSkB0JEyoAga7i651wDvla+lT3zzqDFI5b4?=
 =?us-ascii?Q?4cnyXHSVaRR9cx+XXdHossXQlBPg9ZsqHRP3HcyxPIYk80cTac/WKTdXceUS?=
 =?us-ascii?Q?VUPeRrT5ODNSqMXZVFyOa3ONMrCGYDg0++NMrbH4uyXwrCvEGffhxkgxRQOS?=
 =?us-ascii?Q?VevrT8zKQb5run78E8zw/Vc3P5HmkzRPNqrmsOllPxku9fWU7VkcUi9iXcgI?=
 =?us-ascii?Q?6m0qA/Q1VqEX2G+qmFj2bHLwjbLJcWLdK1Vv/RXNyXKo0sZSel5O0T/A9qDq?=
 =?us-ascii?Q?s42tVaPBkHcFk+EF55Gq7G4RdF/c4djoN1+8RGqOmlSPaXBy8B7dz3v9mE+i?=
 =?us-ascii?Q?jguCGnl6b7UdkrBWwJuKftw+rpkpImQO1zRESBhScyqdFLZk+/m1bAiwDfcb?=
 =?us-ascii?Q?EtlIw6YkOZuEHfTE5vuyk8E56bakO7oq8zCb02H4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 056bad81-8337-4f3d-0fec-08dd52365f72
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 05:12:43.9060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n+tOAvUMAUi+YVATdWZIfh4WrsS2lolHpDwzN/7twRB8DpA0Ht/u1qhWZIVGrXuT41z4PkNqMFyzU1vxdNU6Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4578
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
> From: Yu, Gareth <gareth.yu@intel.com>
> Sent: Friday, February 21, 2025 10:35 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: intel-xe@lists.freedesktop.org; Tseng, William <william.tseng@intel.c=
om>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Heikkila, Juha-pekka <juh=
a-
> pekka.heikkila@intel.com>
> Subject: RE: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and =
DSC
> 1.2 for rc params calculation
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Friday, February 21, 2025 12:44 PM
> > To: Yu, Gareth <gareth.yu@intel.com>; intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Tseng, William
> > <william.tseng@intel.com>; Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com>; Heikkila, Juha-pekka <juha-
> > pekka.heikkila@intel.com>
> > Subject: RE: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1
> > and DSC 1.2 for rc params calculation
> >
> >
> >
> > > -----Original Message-----
> > > From: Yu, Gareth <gareth.yu@intel.com>
> > > Sent: Friday, February 21, 2025 9:44 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: intel-xe@lists.freedesktop.org; shawn.c.lee.intel.om; Tseng,
> > > William <william.tseng@intel.com>; Nautiyal, Ankit K
> > > <ankit.k.nautiyal@intel.com>; Yu, Gareth <gareth.yu@intel.com>;
> > > Kandpal, Suraj <suraj.kandpal@intel.com>; Heikkila, Juha-pekka
> > > <juha-pekka.heikkila@intel.com>
> > > Subject: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and
> > > DSC 1.2 for rc params calculation
> > >
> > > From: Gareth Yu <gareth.yu@intel.com>
> > >
> > > The condition change is because Gen 14 begins to support DSC 1.2 and
> > > need to check if the sink supports DSC1.2
> > >
> > > Closes:
> > > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
> > >
> > > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > > Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> > > Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> >
> > Why has the authorship and Signed-off-by changed for essentially the
> > same patch.
> > Also the commit message and versioning information has been removed
> > any changes Needs to go as a new version to the previous patch.
> This is a new patch to check both source and sink DSC version. The previo=
us one
> (https://patchwork.freedesktop.org/patch/638403/?series=3D145136) is only=
 to
> check sink condition.

That does not require a new patch series altogether a simple comment asking=
 the previous
Author to add the DISPLAY_VER change should be the way to go. Add the DISPL=
AY_VERSION check
as a part of the older series.

Regards,
Suraj Kandpal

> >
> >
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > index b355c479eda3..555180e40b72 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > @@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct
> > > intel_crtc_state
> > > *pipe_config)
> > >  	 * upto uncompressed bpp-1, hence add calculations for all the rc
> > >  	 * parameters
> > >  	 */
> > > -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> > > +	if ((DISPLAY_VER(dev_priv) >=3D 14) && (vdsc_cfg->dsc_version_minor
> > >=3D
> > > +2)) {
> >
> > Please add a bspec reference number in the commit message where it
> > says we started support of DSC 1.2 from MTL
> BSPEC: 49259. Will add in the next version.
> >
> > Regards,
> > Suraj Kandpal
> >
> > >  		calculate_rc_params(vdsc_cfg);
> > >  	} else {
> > >  		if ((compressed_bpp =3D=3D 8 ||
> > > --
> > > 2.34.1

