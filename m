Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A33CD070FF
	for <lists+intel-gfx@lfdr.de>; Fri, 09 Jan 2026 05:09:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8DA10E39A;
	Fri,  9 Jan 2026 04:09:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DORKM+X+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D159B10E38E;
 Fri,  9 Jan 2026 04:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767931754; x=1799467754;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=No2fauqdrRs16luG1z8GPBA0ys5IohGnFYpzwFW7RIY=;
 b=DORKM+X+rJz5mq9J/c6sCwyO4n8+mTD0cqb5Irx3K1gMFXBCksQVSkuI
 firdQAxZI0bopWplDFRHXR902df7NEYnswlUG7osO8Z4gd8uJDmNfLAxB
 zDL0f0ZdXN9Sr3NnQdLgk3TaDSl2nwkkq65guMo+iy9C/Oo5v9llpezi0
 Ho/oEZ1udYM1zlNnmLUj1UaRrckH5TnJ7OScLJRVk9hoik2va+yV6KLlZ
 ukdlbawFvcKBrao2f/pZgrziRJzNWT522Lsupgi5G6TiZwhfK7mbkLnVz
 6oJttnDTe4tD7W+ugq1818Lm9KL1Xl1RxQtBpwEtWlFnOHT1+ruCii9GD w==;
X-CSE-ConnectionGUID: A8TAOdkrQi+KQ05Nvbkf+A==
X-CSE-MsgGUID: jt9G8fETQ9OsGYkNg+gMmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="72950250"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="72950250"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 20:09:13 -0800
X-CSE-ConnectionGUID: 9ZDPn/hqQpuRSo7peqDy4g==
X-CSE-MsgGUID: nq1Y2MfVRYCXSKKaMX9w5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="208215482"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 20:09:13 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 20:09:12 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 20:09:12 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.58) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 20:09:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r3lx84D2932Wb2n9KkHiF0z4ctVdFpfj9K+Frgla6KuBtIrZo3LEg/DwT91WR+6Kp/3U8qqgWQq0iiQjZgIdZSwkZO5Vx1yP3k2XD8ah1/D9wfmQ3Mvcv9HWC4pMGAR8CN/uccE1il8y84VmCb2e+/LSeD5ZT9o4qT9L6neKwqZLGUjRdSKeCVOvBsmoXodYbMAx0o7V8uFIJEJcCibo/4HhLzeJpBD91IZNqMRFFdsMLOXWKIJPaq5YiBnRU9hzMY1wfO9Wt3VplQIWPH22PkiKtM1zMJvv28vXNyclxGrCcL0xX/x5RRps7Xj+IoOteaFcbb4uihKs0XRNuk/8fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OiR4MYpWHCqNgalzNJN97JgVYqlV5lEufMhOKb4YPw0=;
 b=UKUINC58gy21LAUZAgCJCpcb/RDjyvoE7KqaAY8sFFcA8MIMHcv9LOEIC5iTOxJ6UobYo2ZUXLqLKVn/2w+sdAokb38YyC1Q/xFDgAl0mxsVdwmnnk3oiN5P7TU1yBbmVqQywqljgl8Oi9cX02JFWiJ5eA5NIroBXP3RUsjNW0ltLaNFq5U+IUueStmMkkgmH72ww7bOPklxwpuMjbpvEbQ9DkS5Qh7Ovsg6cizX2W7VpFUtVUm/aX//ZUmDrs4O88fWSiBN6/9YV4R8j0ttdGTLEtDMTBwRgkydUAp0bngISsaYKzVUdUXTcBjvdBPymP9wvA+Y+1of2YNNCE8vlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB7071.namprd11.prod.outlook.com
 (2603:10b6:510:215::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.3; Fri, 9 Jan
 2026 04:09:04 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9499.003; Fri, 9 Jan 2026
 04:09:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
Thread-Topic: [PATCH v2 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
Thread-Index: AQHcb2nqPojDY3Q7p0qKTjrmvjLHp7VExWwwgAOvWACAAOeSEA==
Date: Fri, 9 Jan 2026 04:09:02 +0000
Message-ID: <DM3PPF208195D8D230EC58E5C2B5E513479E382A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-10-mika.kahola@intel.com>
 <IA3PR11MB89377095D5C55EFBB5F4D108E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
 <aV-88GHbaC6Z3KXn@ideak-desk>
In-Reply-To: <aV-88GHbaC6Z3KXn@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB7071:EE_
x-ms-office365-filtering-correlation-id: 1b27f94c-f1ae-4775-dd41-08de4f34d36a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Bf+/uqxlUpbJW6M9AoqA2qK6HP6B7DnVe51EZk/pbZyLabyk4rZnwpqcpqfw?=
 =?us-ascii?Q?kHrjxhga+bV1Te/+rL/VUMaPnEpygqsKy40AZrGlCsge+3UfoAOD7Xyk5tyR?=
 =?us-ascii?Q?iW97GGYmhTntxEF25qlW1liS7Cn6jcDR3siKHlT7aLGOLrRMHOUa98LkMql9?=
 =?us-ascii?Q?lPjR3bDdCyRZHXepHpLTv5tgzQhPgItc34Vx8BWB7N67SwEU6LeOX3Fx50QR?=
 =?us-ascii?Q?r9ijVJM9yQUeTQzod/icQO7v0KvCbDjJ+HMqV1vBB45Lcv3Rpww9pHSHiRdT?=
 =?us-ascii?Q?Mr9DhqzxOOaJvZCWBlXHqFwHwgoLcI24g6wEpJTgH7SoekEzP83nv0oSDfM2?=
 =?us-ascii?Q?2iN4tgI1+x76Nd9PZErMHibqo31e9d5N5FMyxmQ1E9NE1kvYtrVCBXAhTfLr?=
 =?us-ascii?Q?11YHG0umqUOk6k33BRVAPUCUdJHNHwqGLXA73LWZzxwLH16BzsVgjJL1VaW/?=
 =?us-ascii?Q?9n05WKaP8FaXfWTXf2iULdrwRXIOokMe342TsXw03/pjEfXVav75Ro9FTtEC?=
 =?us-ascii?Q?M1RebsdIQZwgt2Eg2Gt2ZLUbVJTFTuxtydWC6YPGsjk/m1qrbEro9XgPOY3v?=
 =?us-ascii?Q?4XJ11OlFOet0kfGFPUseig870dHwKeaLiYihGdD9olbGwxT63im9uqSqKX/0?=
 =?us-ascii?Q?Wz86YLDeXvKcjS38CJgikVx6MKGKkd2f/pGwXi/q1YSNaODc8msXbp8HPnt7?=
 =?us-ascii?Q?QpY8qcOyibwpiohFqW5zOQsxvLOwSsr4umQwhjg7QWAUIvUPPHnU02zIw7P7?=
 =?us-ascii?Q?l2hjZXzWMWg51D3pQVU77yUMAZTM97CfDZEOKJaOhC7DGspDMNewb8+wwybw?=
 =?us-ascii?Q?Ok6N42hoy3MKLih+K1CYF5WGxBwgnDxhmw/v595bqavBmsIzjaO3ZjoZU8bR?=
 =?us-ascii?Q?JpIitsrAcY5w8LXEehPlDWvX0EJ6jgzDHXQZV0+txanWI51ILgq0Fw2Hw0XI?=
 =?us-ascii?Q?ZEXvFIa6CPhCp81uZ+sguqiU2bAoSZRD6raiMRek7gg4pkcufL05hjTf+U2I?=
 =?us-ascii?Q?SzbWb1fSfSxf5pxhY5YWaWEIOVYuLyKIf+kbaU7UiWM1vBd8I6UiC6FxDN0z?=
 =?us-ascii?Q?9/hk0adMB3yROYB1X1GM5PNdJlJvmQ3VNuc//3vZgoktkYpK0cSSovuP+PfQ?=
 =?us-ascii?Q?Mv0+GMbdIUlsWLixHnZ9pEiWBjVP8vM6NCKxQjB0LkXj6MlZAmBL+F/H4qUA?=
 =?us-ascii?Q?keCJv8J+xQol/yKcNzrWUsW6IECqGAs1P6sbnYSdF/Z+miWOvFCk68RgzX/k?=
 =?us-ascii?Q?SwSiIfD5nMZBYXyxumX+lJw1WWuO6+OJm/wlD2ogz3QVLM/UOfr8Lyqb1sB1?=
 =?us-ascii?Q?iP8CYnL9PLsLndQzYnvUaQhfXM0oarPL2O56L0gDmEOwnFf9V11tYBDYIQUE?=
 =?us-ascii?Q?fqzeK4sg1Uz9JjzQZi1CxGTXS/D9f3d5UUzjKBEyzcwbUlVI0Vkq260SYVAo?=
 =?us-ascii?Q?ZGF1FCaWpuEJOLTOvuKqrpQ/6zULhbGICcJ9P0kqbvRVkIE3KcjbFsz9d6wM?=
 =?us-ascii?Q?c1OVuFP5q8EGK4YvVqDb8lyJxqfZLare2P9N?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xtF7wpj2OIB3Kj8yJk4z77GixVLev+sDsktBTo975/vK5U35T9FQztBHfnZL?=
 =?us-ascii?Q?whTFPa1wBCd08cxSO9DmJ1lXT02QltUHi94izKHJxko5mRP0edHV73xbv3+n?=
 =?us-ascii?Q?91aBN/WvuxhNsZs9PsL0qrfX4dQfsE1cLj4E3RtAdnx/KQSTXDFQbvijJqGF?=
 =?us-ascii?Q?pKvvf8rJYqo+sWRFwYzidjAH55k2btXy6xHQsHu6HFZL2eNWTwHWXcKlUrAo?=
 =?us-ascii?Q?UnZOp5BF1snCLHtHCfxfeMo40ubVaZYl+V81by0HFE8WnCdLNByOnyc59z0R?=
 =?us-ascii?Q?jf9nw+w9uFJd6C2a9DN5el5uIX2I2xcXku7VtQqWAqOli8Ih10LL+34u80IT?=
 =?us-ascii?Q?dKmdgU1O41bsZbY2CqudXaw8Y/j7EjGN4JH0dq13ZdDQIFDyHa4byAawukD0?=
 =?us-ascii?Q?WIGdDxPDyAG++crOWfOQ5iYyt1ApTbkntOCEgEWXqCxaj11yesOGru0Tmzi7?=
 =?us-ascii?Q?vto9sChAa54T3FGd7VPwLEmxJeGBv1TEmW3/qGdXwJBoVHcHGVXhprb23x76?=
 =?us-ascii?Q?d7fpNYYhTYuREzLVICI5qODJs6fr8Fe3FdAWghM6d4y1jnPbMGlZsWZh0uWd?=
 =?us-ascii?Q?0yrzVa6YJir8ylvBZzrHk0+aEBQAXL1ZJ3PBoxxbCZq38Jdq7UelPwM3K7h7?=
 =?us-ascii?Q?B3t58ua4csS3S31pP6SvarRyPr0SCTObXEuo4fyjau/gc2mO5X6IxiEvkyRO?=
 =?us-ascii?Q?G3fhd76jznDpE+RfpspcojuSyZQqaVrHwcrBPKmHTV8+0IB5eH3MEhzfoABj?=
 =?us-ascii?Q?5hYZsgeyIj9u8XUFTfKTkrM2a+SvYXfgvapVkPmc9R9vJOfr5BKTof6yT2UT?=
 =?us-ascii?Q?XYAsRe9wTVmyvT0EUTgHyLIu0v4LB+dIIXYA+F1084pEbaLQfugNn/EEK1+u?=
 =?us-ascii?Q?WzmT0eWD+tLb7+5eFgcVMdYjb4qVvmCxwkKW+hljK5KdFvqekpWUCTcXISHO?=
 =?us-ascii?Q?Ug491oRLg2QwK9Mp4CdRtZ3t+5HpcK0Kov5zB+5zNvGZ2N1T7lw7UpL8hZWG?=
 =?us-ascii?Q?9ImZh7x9i4j2/3SG81mJwk2KEIXHkPlY2eMUH/6ew8J5slrZWHEvtmPNeJqA?=
 =?us-ascii?Q?DK0vMtY6xUGGUGY46uvzJ9S2GRtzgruvvp/gYyh5DMXxz+4STC1aLB2JNGSC?=
 =?us-ascii?Q?h/T1kzeIj46ir2FUVOzKyCxxNuXM5afWW7yVD88bnKNfzhjaOn7+YlHLOqtP?=
 =?us-ascii?Q?U1oKcOrVVShHKdvD/kdNgYOftSjlGH+Lr7wYEKB/EMWa5vtieW2GtXvW83og?=
 =?us-ascii?Q?u+ClWFX+2jpFog9poxYvJcn5jCICxLURi/6KDWzpV3Rcc4jSa46G5uDjOlLz?=
 =?us-ascii?Q?1BsI+5/BhTBTPAWIt2iIMxH3kqgjYxmPrHoitWd4jFUZSmA+zLK+PW5awFlV?=
 =?us-ascii?Q?+rMgyU3cymy+cvh1UV7kd3dPrQoi3d7VZ4EloFL1xdegBtZpcn7ta+uI8KRk?=
 =?us-ascii?Q?y9LfgMlfYtQcZbBn8E0+aJyFxEYdQp+bmrqiaYmEyAzZwK34rbjbKF8D1ee8?=
 =?us-ascii?Q?tEtzFkypha4KYMs7mkkr+OWgHbyS6DMSX6aAoSGwVT5IBuEGKyTeDGo3gzvR?=
 =?us-ascii?Q?IH37IVadsQxK37ud2xyzrqr4Dm2yXCxYQYW9GcfZJn8VVApZN8TLEJYXXtXN?=
 =?us-ascii?Q?hIygOvCkHzvVHZWUTJx3sFkXDgrrpscpSLDCF8HGFnNHIc5vKX5y5Np2dPsb?=
 =?us-ascii?Q?vNKPYxMBf2heClozudhOBv5yQ46XSUvn0esZynJ4FRHR4d13yAQ8KdEeSgIy?=
 =?us-ascii?Q?LA6X1WPoHA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b27f94c-f1ae-4775-dd41-08de4f34d36a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 04:09:02.8549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rzyEGhrgKyMf7H6HcT6wnxbBNJpdc39CsyfzwGzTC416URyz1+TUQvxM8yA6N7ITLxJEIITGP3HXTvPW+SbVRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7071
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
> Sent: Thursday, January 8, 2026 7:49 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH v2 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
>=20
> On Tue, Jan 06, 2026 at 06:04:18AM +0000, Kandpal, Suraj wrote:
> > > Subject: [PATCH v2 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
> > >
> > > HDMI FRL clock rates are incorrectly defined. Fix these rates.
> >
> > Patch can be dropped, you remove the .clock member anyway no point in
> > having a patch whose code fix won't see Light of day by end of series.
>=20
> Please don't drop this patch. The fix should be recorded in the git histo=
ry, even
> if the changed lines will be removed.

In that case LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > index 4d006c14c049..0f28d02b7a69 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > @@ -1923,7 +1923,7 @@ static const struct intel_c20pll_state
> > > mtl_c20_hdmi_594 =3D {  };
> > >
> > >  static const struct intel_c20pll_state mtl_c20_hdmi_300 =3D {
> > > -	.clock =3D 3000000,
> > > +	.clock =3D 300000,
> > >  	.tx =3D {  0xbe98, /* tx cfg0 */
> > >  		  0x8800, /* tx cfg1 */
> > >  		  0x0000, /* tx cfg2 */
> > > @@ -1948,7 +1948,7 @@ static const struct intel_c20pll_state
> > > mtl_c20_hdmi_300 =3D {  };
> > >
> > >  static const struct intel_c20pll_state mtl_c20_hdmi_600 =3D {
> > > -	.clock =3D 6000000,
> > > +	.clock =3D 600000,
> > >  	.tx =3D {  0xbe98, /* tx cfg0 */
> > >  		  0x8800, /* tx cfg1 */
> > >  		  0x0000, /* tx cfg2 */
> > > @@ -1973,7 +1973,7 @@ static const struct intel_c20pll_state
> > > mtl_c20_hdmi_600 =3D {  };
> > >
> > >  static const struct intel_c20pll_state mtl_c20_hdmi_800 =3D {
> > > -	.clock =3D 8000000,
> > > +	.clock =3D 800000,
> > >  	.tx =3D {  0xbe98, /* tx cfg0 */
> > >  		  0x8800, /* tx cfg1 */
> > >  		  0x0000, /* tx cfg2 */
> > > @@ -1998,7 +1998,7 @@ static const struct intel_c20pll_state
> > > mtl_c20_hdmi_800 =3D {  };
> > >
> > >  static const struct intel_c20pll_state mtl_c20_hdmi_1000 =3D {
> > > -	.clock =3D 10000000,
> > > +	.clock =3D 1000000,
> > >  	.tx =3D {  0xbe98, /* tx cfg0 */
> > >  		  0x8800, /* tx cfg1 */
> > >  		  0x0000, /* tx cfg2 */
> > > @@ -2023,7 +2023,7 @@ static const struct intel_c20pll_state
> > > mtl_c20_hdmi_1000 =3D {  };
> > >
> > >  static const struct intel_c20pll_state mtl_c20_hdmi_1200 =3D {
> > > -	.clock =3D 12000000,
> > > +	.clock =3D 1200000,
> > >  	.tx =3D {  0xbe98, /* tx cfg0 */
> > >  		  0x8800, /* tx cfg1 */
> > >  		  0x0000, /* tx cfg2 */
> > > --
> > > 2.34.1
> >
