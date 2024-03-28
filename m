Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5A788FD82
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 11:55:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9F710F522;
	Thu, 28 Mar 2024 10:55:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y9/6Eh1i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAA0910F1D1;
 Thu, 28 Mar 2024 10:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711623343; x=1743159343;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=58PNCZBYSdhzsIOHowq8LORiqMb88wOGT2pqYa9RYgs=;
 b=Y9/6Eh1iePYMx8uB056lNE10X3Volbs6f9XZdqvR3X9j7ElvB2c3PD0b
 mHyZIVnDfCoK7MX/uOG52JbJxLs1CqhDQRtqV5peKwYDLRBJ79h1L/cNS
 eLVtPJ1ydNs0B+mIycczor/oajZBL9TTMN2PxsXh6QSWNdI0qk9KG2Z4V
 IKnBKddhBoKJbwQwNtXg8CU5nQTIhlB2p+0kzuugz86GTb8HrBt2ce2zF
 525+ZR6DOPo8B1mN6GyEmVtHzAi+BkPLdYOaB8SFrx7q3Hc20VWzqe+zK
 xxbAlMOxUF295cmWSBq39yRb4eOd8W0rbZqqenXOSZd2ygjWxppitxc7o g==;
X-CSE-ConnectionGUID: JAo0xKNPSxuo0DiTRzJgug==
X-CSE-MsgGUID: Bg3RWAymQd6IGTdxwr2TfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6658689"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6658689"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21100725"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 03:55:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:55:41 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:55:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 03:55:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 03:55:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=STrryyr3tTnjf3oOHiRTf9mt1m8NmNs7qUo803Oh5+G1WyVIA3tTwbzW894DKLYpqk2Jxr/XJbfvk5qvYQdJVh8jN/vXPKg7pbFzWAktruAGQXh6sRu/jw9eSxl922f06Ypjp7qTlzBSQYghZbhmA82wqTjxK2gGdIhXMIzB2l42KcMUQ7tRnLCZV3uSAW86bT/w5gi0yqaKrGzAOtHv/jJ+UMGRL5yr1vlx2gYC3ROcEu7+FyyGais3EdQIilcC85jGXF/l4i7vEfmzmcgnX3tUpuCdsO8j8mX/FMOnQ8HCwTnZAh76vyf40qlWRcnlSZbfRgKrB9vWnpJOTQASng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HFT7ELhFrNTOReSnVM2VMfpr6h4DrV1sStp+c7cVFqU=;
 b=Ixw+9uBZ3FWS2elqlK+sJR2bVKC7PUzM3/VZdoxq3+THovKGBlqK1RiKdnKBYgwO1e2pF67Z+DFvZBJmb7T66/iowz5Do14N32/NB79cUvxDKmHj8KdhWjVn0E63O9OOu43xP9VAcqvHBmrO4+vRDkKPwzENEcQsSU1+ftb4UnkcC/m660pP26H6kgMDvXXxwPXA3pfrJ7mPJ50MKneO+L7SIfQEng4uN0E9Pbr3UMtqOmEaNp62OfE4qERtHjJ6CJPpE3Pib/a152XyIiKyA+eDxFc0edGRucRZVOzXwGDAhNf/Ei6NVeCC46HQe0lwXgLXNVo0rT+/LA22mC9V+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH7PR11MB6473.namprd11.prod.outlook.com (2603:10b6:510:1f3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 10:55:37 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 10:55:37 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
Thread-Topic: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
Thread-Index: AQHagOdeOtZo5uteMUusODotvjIKwbFM0tyAgAAh/ICAAAOEAIAAAgiA
Date: Thu, 28 Mar 2024 10:55:37 +0000
Message-ID: <IA0PR11MB730702DC9B3DBCAFB8396B33BA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240328080005.410961-1-arun.r.murthy@intel.com>
 <ZgUq47D313cr2VYp@ashyti-mobl2.lan> <87r0fufxy2.fsf@intel.com>
 <ZgVKWBQqEat-3iR3@ashyti-mobl2.lan>
In-Reply-To: <ZgVKWBQqEat-3iR3@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH7PR11MB6473:EE_
x-ms-office365-filtering-correlation-id: fcdd2348-f802-4af4-4607-08dc4f1599ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6e08YOS8TxxPVJa0SY1FtNYwJzfbmr+gVXNKf4M5awaZtK8VvhkCQ1FAkUQJsQAi52drRtIu3veCUPWQ28VifqRm285QzVfRMzArcQMLjJUqBqt3AwIbhrKWbSMgNXd3/s7tjl4RMYph2I4uxu+L2wGf/b4ed9AGD4liqGe4FAKDDnZDBygkwek8jURkozAdwM/+wyTySVgvXT5RUIMwoeyc/1vWGJIzCy1p+Q/WZjvGDGbtDEg47z3k/by0VenzUHM2/n2rf+5G7fxjiXm2HjmtyyL68r2mRasRzrzYl7x6msUguiCJZGvmRwFzn+RwuBhvHPna/AKGjlPQorhb8UYKrjgdICGH8BvWjN3PA7cdO4u8p/NTrX1Luq4owJ1TpacimASWiX7h467QcAfI/D7bvVVfT/tHlzMYreHU6SDki4cMzBWgz7vAHfOmcAMtHEbfKzYfavmVf6hTi3Irsi0jjL2/tjKBbMJxihMTew3ExWbK3jCWTsIvzaT2zpULYn11OIYm001f+GUrQfEWIA+kS4WG4Wc1nLm2zc0hVL5edN8VTYa6gn681KZI6G3ANtSACJuwZU43p/jDMSnbTUxFfHJTAcp24dz5m8o99XxnxLwDHUTHk9p2B+nFOJb4N9BjlpfaXF0z91tn1oJNsmezdnsgFFcXmPgJ0PVLcIDSO0pX6TNkiy2QQHl3B1vltJxxvYNNcOSEORVgNKITsQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3C6M65DK06Oixs5GygJ7njPCE1zjoRmA0QwxVhtOmoszpMEAWksYZP08LBoh?=
 =?us-ascii?Q?LZO7btHwE0UpmbLXVE0ww2F82uvtJEH6WXuYN3owFg//SGJgeNLPvrVBBhdy?=
 =?us-ascii?Q?9mIOftmyaO5IPK5wtZp/j9IbdX84307AzkkQN7PS1XdOkhSUioIDOBIFNphG?=
 =?us-ascii?Q?7LmRMpd7wwYvpfkDlbrz6xQ4s+mNLvQyYM6BjHVlTpP/6f5rRukheDvhp8Wt?=
 =?us-ascii?Q?lrnaZE8HOTbI9vb3+v5pADYzG2CD14FBHGj1TjBSKAt9fxLrGlVX1+SzPN2l?=
 =?us-ascii?Q?wgc6u65VxVMpydMizQcJjwKBzCb6NNwk7J2zeDyVdkyKtlGrdi5efmSnohrr?=
 =?us-ascii?Q?GONqH0iHVEXTufkJQevWN2HJ5ebNHOqu+8rHwJs6NEvP9YPvzmmgrj1SDeNL?=
 =?us-ascii?Q?zIA0ZpFaEOOKLNxs6bqzVA1sXFkFK8i5G8RPIl++SSld1/mLdGh2KUjEW3Aj?=
 =?us-ascii?Q?niNdeHFbSEjiwwJKa5GZkciN+HbZAByGkY3mQh/U74yIieDFWyJfSiS1nkT2?=
 =?us-ascii?Q?o6PjO3a5GMULW8pGuVnmtkHLxs2ydkrwR8V9Z3t/pNv8eWXpTtbq+KMe8HTp?=
 =?us-ascii?Q?HT8nEQTq21WDUUlQRtw2MF4nqdVPs73456JEusnV0BEfyMpKYUMR41oC0eTY?=
 =?us-ascii?Q?LSKrWaFO1U2hf8K3M0hkEQqXVM4Ixw5UShtFBuG5FwFcu68k28PPM4QYvzZ8?=
 =?us-ascii?Q?TXMKiHCkSiHsysYClA/JUgtok5uyN+s6Pmnxcx2q3K81oYcpvwFvu4EKJKLa?=
 =?us-ascii?Q?EB2gvmNPm/06lAHjCLkzhnZAunpn95VzoIDloy3rMjvvQI89FkBKCP/UWfUo?=
 =?us-ascii?Q?1W7u7OIseJ+YZfV0QTC33Y9rC+EuZiFqtpPdPOhwDKEns76m3cUlE4FT4vQn?=
 =?us-ascii?Q?JwHgDV3L1dQ9eRf8vs7uPdC0E1SFz+vPfbDDUG7Ds9utiBJMy0lJC24i9GgF?=
 =?us-ascii?Q?uH4emlcUpb0jbGwVaS4Ugim97Ttv88iUE5STRJHB0TE0cueoKyh2Nf3SFQQr?=
 =?us-ascii?Q?9m4ESs3aNJepBWfsoXH9xvkef+LFJ7IKIIhkxNYdLPVZ/CNYWhGn0uTDyPs7?=
 =?us-ascii?Q?kMepLlXtSDi5+FzC3DINUu14670QJ2pCoTGdBwFAeeOn+cBPd83p/ySEZ9eZ?=
 =?us-ascii?Q?EufAkufvqc4Qxt2inOxJkWu44qW+FWxCXu5ZI7TRsEqOQB/P6u3ITS80pviW?=
 =?us-ascii?Q?7CUJT+j2PqBT8V1QdNSbQiB8vzfK/GkQzAqA+doj3cXtAwrbmGJJANQE79NT?=
 =?us-ascii?Q?qQ04P8gRHr/dUJ5ue9vdIlGdJoLHSQzeStLDuOHI/NpBbxcKDPCGuhFn6zxd?=
 =?us-ascii?Q?3G0TRUB088PUj9wUy312vdC5tOKVKXjxCbDVxkN+xY2tn1AWdEaMELgevLoU?=
 =?us-ascii?Q?hzfS88Wx7H0gwMLASOTHf68vUhNEbEyRDGwG4Azupq8+GhEDktMjRtA5d+3U?=
 =?us-ascii?Q?n+d3ELink7Mrxt90SYX1fkLM1H6taIf8AUHz5YwWeMZlHv7p/+bs+cHWHR21?=
 =?us-ascii?Q?9XowNVMvVp2ZgfTM6nYPD0UKwvSPzt7O+52GrwNRVrSqNzarGpBU9E1XP7fx?=
 =?us-ascii?Q?SG5LT9nyxNWGFY8BUBWkc0mt4JZBA+iTaEubfaPa?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcdd2348-f802-4af4-4607-08dc4f1599ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 10:55:37.0701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hKdM0yew3IuKCbNq4G/JGKoRAwAdEpxke1TpymicGqQ9Brbs2A585NhIGu1crmw9lA11+Mgu4CTAp3hhXz65CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6473
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
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Thursday, March 28, 2024 4:16 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop.org; intel-
> xe@lists.freedesktop.org
> Subject: Re: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
>=20
> Hi Jani,
>=20
> On Thu, Mar 28, 2024 at 12:33:09PM +0200, Jani Nikula wrote:
> > On Thu, 28 Mar 2024, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > >> -	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> > >> -	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
> > >> -	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
> > >> -	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
> > >> -	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
> > >> -	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
> > >> +	if (drmm_mutex_init(&xe->drm, &xe->sb_lock) ||
> > >> +	    drmm_mutex_init(&xe->drm, &xe->display.backlight.lock) ||
> > >> +	    drmm_mutex_init(&xe->drm, &xe->display.audio.mutex) ||
> > >> +	    drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex) ||
> > >> +	    drmm_mutex_init(&xe->drm, &xe->display.pps.mutex) ||
> > >> +	    drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex))
> > >> +		return -ENOMEM;
> > >
> > > why not extract the value from drmm_mutex_init()? it would make the
> > > code a bit more complex, but better than forcing a -ENOMEM return.
> > >
> > > 	err =3D drmm_mutex_init(...)
> > > 	if (err)
> > > 		return err;
> > >
> > > 	err =3D drmm_mutex_init(...)
> > > 	if (err)
> > > 		return err;
> > >
> > > 	err =3D drmm_mutex_init(...)
> > > 	if (err)
> > > 		return err;
> > >
> > > 	...
> > >
> > > On the other hand drmm_mutex_init(), as of now returns only -ENOMEM,

The function is also returning -ENOMEM and there is no other error code ret=
urned from the error.

> > > but it's a bad practice to assume it will always do. I'd rather
> > > prefer not to check the error value at all.
> >
> > And round and round we go. This is exactly what v1 was [1], but it's
> > not clear because the patch doesn't have a changelog.
>=20
> ha! funny! I missed v1.
>=20
> > This is all utterly ridiculous compared to *why* we even have or use
> > drmm_mutex_init(). Managed initialization causes more trouble here
> > than it gains us. Gah.
>=20
> As I wrote here:
>=20
> > > I'd rather prefer not to check the error value at all.
>=20
> we could rather drop this patch. Checking the error value is always good,=
 but
> checking implausible errors with this price is not really worth it.

This is reported as error from Coverity. My suggestion was also to discard =
this error from Coverity but the same API used in other places in our drive=
r is considering the return value.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> At the end drmm_mutex_init() should make our life easier.
>=20
> Andi
