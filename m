Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808C19E4C28
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 03:12:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A0B310ED96;
	Thu,  5 Dec 2024 02:12:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DqCaHe24";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A79510E5B9;
 Thu,  5 Dec 2024 02:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733364753; x=1764900753;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XHgjPljaBOU2YQIdEVdwqfJ1XTdOZdj+N3d+SIADB0s=;
 b=DqCaHe24bwuuu7zCERwmh2G5oCY0FjlB7BBKRXiRU0u/wVF+KX8aXMpo
 RFDb4awZpzYcu9B9Ytu+wwsRxn+TRy111x1Sgwo3zb0VoAqnonFxyuxRH
 vTUNv2xsEXXeZEn+TnOYo4gHLXSmMaHAEXhy+t3JDZVp0mCwHmSp5U2jj
 GHUOwK5EA6u7sSJ3r3kFPrhcvH/DvGpTQtJ7Zlo6AQ0jvHJ4Zm/6aBp4E
 gvK/3zRQG7/vrt4zgVBsPqlkyT1sxU1nt17MFtHLRyrnxUl3fK5meu7Vj
 dsaDBuXFWe0ALiyPEzRXbXlTCyADOgnMSxGC79x8fb70+P5tIVKowo2Aw A==;
X-CSE-ConnectionGUID: m5JSvoNlQu2Xe1DnmqWzLA==
X-CSE-MsgGUID: 0/fznWD6Q+OnvCUIENxl2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="37322649"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="37322649"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 18:12:33 -0800
X-CSE-ConnectionGUID: FmKhcf1GQuKQPK+1LMf7IA==
X-CSE-MsgGUID: xi+jSIgrQM2L6IV1S9/6iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="93792997"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 18:12:33 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 18:12:32 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 18:12:32 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 18:12:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rb1aRes7+Gfj0zeWaxjD6ac8VcDOxLnMiikFp2hUbm1P7uHeV1ak0g3w9WZEBE5u5t4qiRYMK7V5clU/M+pGcY/nFOAMr8i/ZpxqefEEV5DGqT/bySs5cP1EHIafO5hI0PrfD2CtEdchIYuZBpiEo2fP2keNQdjeSLo/7isBrk2pAVDTIJbnxbVLZ5FcjMX9h9lYK4VgkqwX7czmX4VxQKFshrCEPN2vDCPQUQXp7tGh9Sv33Hb8X53ICKJjYJMh2qt9T4YWbAFqdvZZp6WBX7I8E6pYcI/4tBARpQNLUJ9+0EEs4ovXE6NuRaK0Cs9+g1hduxnk+n4uXPGPmPcpnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T02j9TXK8tOHKpnBcQdlSBKCigt2jPbevlVBcdxXCvE=;
 b=UiX2sCpfHO9Kofo7iepm9Q7fAvbig2ugLHgqBBFUWMFZrTdl86IQwiWGzq8vFIEHeljucUPrTYf5jq22Gt3ArNBbUyAD7UV4+v9T0Okc9Jh+ZzLLf5YR7MmmLnlMKu/0TJXAbhNCoAHXQexo+iGJ6+EnH0/+dSrxxsBhlvXzmoSff8T7v6yqU8qTjcB+T02P+XniVaaV8vgLDS8TcpIQX8B1p7P80zJv0MELDut5Tl1McB6Ki2uFB3y+NE+shBJGf6RSB9GemQs/mSXUasy3njWMXpz67+m7n9GmfkMcyYi33YI/0JX6FKC4DlmrnbdUK1/Frssj2XD/GO6maRRndg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS7PR11MB6037.namprd11.prod.outlook.com (2603:10b6:8:74::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8230.11; Thu, 5 Dec 2024 02:12:29 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 02:12:29 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 6/6] drm/i915/wm: Club the initialized variables together
Thread-Topic: [PATCH 6/6] drm/i915/wm: Club the initialized variables together
Thread-Index: AQHbRWARJsJCukp96k2p9Ge85w3Ll7LW5uwQgAACIgCAAAI28A==
Date: Thu, 5 Dec 2024 02:12:29 +0000
Message-ID: <IA1PR11MB6348544786C6385AA3069D26B2302@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
 <20241203084706.2126189-6-suraj.kandpal@intel.com>
 <IA1PR11MB634862BD6406F520E853146AB2302@IA1PR11MB6348.namprd11.prod.outlook.com>
 <SN7PR11MB67500F73AEB731FC8D6904D9E3302@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67500F73AEB731FC8D6904D9E3302@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS7PR11MB6037:EE_
x-ms-office365-filtering-correlation-id: 1065f61e-95f0-4471-0d76-08dd14d2457c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?aHXn4q5BFd0c++ewmpvp1/UybGF4TmGWGAxQUbIdw15bvPfpAsqtIIlaSaKm?=
 =?us-ascii?Q?3gtKzk8v/ejpZkcPem1uGHHGEFI//v8FoRCWRKZYUBrXoqYx2hnAo+5nOzYt?=
 =?us-ascii?Q?vp+2UNBJl0uDCi1gj+eOSLb/znbJ+Gwyr2JBLm2kE+YU5e4/XcdovwPJmMrd?=
 =?us-ascii?Q?vowTF3oZ3scEWcnSZjxdetZVZCl8q7X4EJPn1wfOiSNAvhavQrZMP5rW5llg?=
 =?us-ascii?Q?0PwMmcVv5TIhbKUa0M+e9SJbz3CPMjInCe5C3YZheG9/VPMm0nDEIKMjWukH?=
 =?us-ascii?Q?LCZdIsJXIZRHWDeenLqlEZcXcjbjbJ0TVTODXrHxt5854Xe3Xmgfq4yPQr/z?=
 =?us-ascii?Q?IZdoX6g+eglHW17qbWtmW34nXaprzL7aZK60vIQF3+943jEBVKVDwfhXqOIZ?=
 =?us-ascii?Q?1IimA+HJYcUcmQdu8xNpegjgVZx3S2Uu+sF/636cQJ2O5OEKewJTeQFmaE6r?=
 =?us-ascii?Q?0JwOXya4yF/3UB2yvaMkC0AkCMlDppog9cLagRHKjFf5mGkhXeNH/NuAsVFw?=
 =?us-ascii?Q?3bfIKr+v9HO+o34a0XJAvt7bsL6y6yz3Z82OosT3CsZN4KmJ/58q3hA7KWWQ?=
 =?us-ascii?Q?nj+USa9rxSeb/X6FqA+hk9haitN+joqPnDJ04KCzyIl8SS21kcxtysgJymA8?=
 =?us-ascii?Q?X2iXNgH2EKmf5tzbU2odbVqeqbHsXPLFgId6IBqj7XaxrRDk+Kll7cPyZbIk?=
 =?us-ascii?Q?jYlyceN1qNm3wpbWboLYAgqDB+fAxO+F2J+HASov6VXNBlp401RnB5Orx9/t?=
 =?us-ascii?Q?W0s6Z5OSSYyFAtOA6LM6pHxAnh2sGeFy6BKYDj7ETpNESxHbJsaKKzIKjHbU?=
 =?us-ascii?Q?nUzeeFB36sHbdJBzBL3Sr/93OkWLvdVtrOJIOEp5k4EGCPfnwe5sRUTSfi9A?=
 =?us-ascii?Q?PmyYiY9qwb+r55VDNaNEO28Y/TubrtmBiD3K+5WE+7zQKewqdq2GwoWj57z6?=
 =?us-ascii?Q?GGYeSyIiASEceW3eIxq1xH9Zx5BI88I7WpVafV5Jv5B9KoXnwu+g6orb1N6D?=
 =?us-ascii?Q?my33FUTUyCc9nI2Ep9kOTHC+mLakNsNMe75B94ZbAa793Vpdl7om89L6bG0P?=
 =?us-ascii?Q?tyThN1dDUoe5ULTVP1mn5EES+fJ4xsQMYYQBZwmM4eDEecqiwvWoyf16u7QU?=
 =?us-ascii?Q?zSD9r3Mi9zWsnO9z0fJKyXmomMYAhwikeP3lS7GuOUXB4nFs0HY/I/89bKO2?=
 =?us-ascii?Q?9NboVeRi0gbrN6qyLHBut2KCwFp6sWlMK6pD/P6c6ahfED1qohE490mm91F2?=
 =?us-ascii?Q?j2bu1fJLxD4XfnPjXJwSJCCaO4mhdk/MAyWsgkwnwklt2Dsd99BvrH+UvC6w?=
 =?us-ascii?Q?rV5RunzsuxKrQ6F8QyJkmuV2hw/jMJl2TWBo5AGoI/iWHdHaJ7z7M/3s3HhM?=
 =?us-ascii?Q?cD/aw/QMJMMoBNY0BR9IUIH+li4U/cOw7fMs2d6i5KgwaWIeZQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wIOZrH9OUTrmcztFZs3WEeTCpDns/Y3q7tzvarA0JzQAAoxm8fjMvqGnnpFI?=
 =?us-ascii?Q?g4pDDlt9IJ4GGF4lXunhCdQOamTqiAQUOHybRt7uBIwwxC0rdBPaBGoRRuv0?=
 =?us-ascii?Q?4ZvhC7P/6UraiHaf8W7YsvwZvjhZoM+CtySCGwNk/qVPG9aonergCvZAxKeo?=
 =?us-ascii?Q?tIHEhO9z8UJEcWv2Ewb74AyuupVulkswaIY0MbQt7vgbnAAASc1TpPxnAqmK?=
 =?us-ascii?Q?oB8gtjfcrGj5htXMZ+C7oa2omNO8w22/qcsDxgXIgqwcS0XEiS0MY5HnRrZ7?=
 =?us-ascii?Q?wdhnfs7Qug/ZYynd8pSecoCMy1OIcqHe3LJ/jxvcv/Cu7XOmpvQyGEYKORch?=
 =?us-ascii?Q?1lKuyecVk6d/L0qV4qRzqSsr3e22D5LWOyHlcsZ/LLyibw8wQ/9UNBe+kOVP?=
 =?us-ascii?Q?hFNpAKUIJZ7xHTlgZsI3XW3W2c1liwk9nfmILh57rRZnjzUOT1uqDXpT7IoM?=
 =?us-ascii?Q?c1nnNusAsWAVwly3t5bK99fvDeGmeaAxVcpSezrUSSxTHoxuHUXjcHLjX19h?=
 =?us-ascii?Q?t8jtA3rJ403RUO7q9YVnMew2izWgu4+PpzN1Vbrh215jIxINNBlNh5q32TaP?=
 =?us-ascii?Q?DrRL06QhI4bRtKMfvbpaHM2dRT6RTrVvL4AwiqYbs9L/KjvZB7eYsP+6e0Kv?=
 =?us-ascii?Q?3iXTCnq3fsAe9Ii8JP2ata8AaV/VXnnAObocoFeZHZECRUi6F0COpipsvaVF?=
 =?us-ascii?Q?Lb+eHDRUiwTOFKfYENx0HspGttSamcpZzCGDfBLhLCUxtlR4LHdQ+tVxtiv6?=
 =?us-ascii?Q?Ahqjt3K5AXTT0J1rSdnZ493ZUuuMQUZCK7M3mmESeapR7YEaymMfGTs3a7Rw?=
 =?us-ascii?Q?Mj9Kfk8sGmhlj/94NU4H5aRtaBUw2yDHSLhPNmSgz6uerYR3s4H5r+WJF/Vs?=
 =?us-ascii?Q?A4rmjescSTRWgiWN0lNPJtw8fcjvxK+IFN7ia08QX542Mjo0ykNykT4CFaI/?=
 =?us-ascii?Q?R6EOzHJ8GV2urxLsg9aRPojJxYqQnA6wPZ2usgJ042B8lHUqLpuOlks2PGQD?=
 =?us-ascii?Q?GJbC+sxr8SyqyzUPYzmxmprJ8T1L1OUTjh8RJVvJhSV1gIeLIoqc+dqKBVVe?=
 =?us-ascii?Q?kRd7UoEPNaq8+KjV9mARCJNFsqHQkDRhIgXB+RHmueVWdyfDE6437KWhRyV7?=
 =?us-ascii?Q?/bcCOJv5lvqR0WhSphI8BYIxRgxQbROqVigbp8cWV0aqh3WmOk2VUnuZqMat?=
 =?us-ascii?Q?UPKmH/XH0lypQyU9vpsiy4aeZd9jme1ReqIse59g9y8U0vdQLcuWx5lrS4jF?=
 =?us-ascii?Q?1WECnnMY1jPPkslQ5Iz1igWjLGGu7mll32I51lYayC9tlpy63ZFYUUYx8zW/?=
 =?us-ascii?Q?SOW7WEhBx0l3nGHuORSu0+K1csXxhpiqqpoLwdxdwzze3mT6ophLrtIhndzP?=
 =?us-ascii?Q?3Avk9vU2ma2pxML4eL6QKNRxVjZ+n5d75XxcnSw/00h+qERizDSs0JRtK6MA?=
 =?us-ascii?Q?UqtDTSUnj+p+FYttLTnSxopZSVL2816Gz8EqNO+h8SvhFuV4Hb1Tyj2BWUps?=
 =?us-ascii?Q?5bSuiOKuQKblMK0XOxWpjsN/qtWM4LdRN1mUS7WAfeoR0gfWCcYSkq61gX6m?=
 =?us-ascii?Q?vll8+OewJJYboZtPyVTh0OSypQs9h32VAd4ve4fAEFZSGcngjk359ahMdptg?=
 =?us-ascii?Q?Hb3Izzh4yiikagsMKJECRUc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1065f61e-95f0-4471-0d76-08dd14d2457c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 02:12:29.7346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RA7fMPVNrrx7y1mS0QPxhp9UdJKhnt2z9CJPOrkWTK9DUoPLoyh/A5gW3RmY2Bb3a5tC88LIAyH+GhXy7asuJuxvQjM4/l8lNiMya5k/YfQH67dExnjdqQe5NQC7bGbS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6037
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: 05 December 2024 07:34
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH 6/6] drm/i915/wm: Club the initialized variables toge=
ther
>=20
>=20
>=20
> > -----Original Message-----
> > From: Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>
> > Sent: Thursday, December 5, 2024 7:29 AM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Subject: RE: [PATCH 6/6] drm/i915/wm: Club the initialized variables
> > together
> >
> >
> >
> > > -----Original Message-----
> > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Sent: 03 December 2024 14:17
> > > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > Cc: Golani, Mitulkumar Ajitkumar
> > > <mitulkumar.ajitkumar.golani@intel.com>;
> > > Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Subject: [PATCH 6/6] drm/i915/wm: Club the initialized variables
> > > together
> > >
> > > Refactor program_dpkgc function so that all initialized variables
> > > are clubbed together.
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index 4c032b1758e7..d93f6786db0e 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -2862,9 +2862,9 @@ intel_program_dpkgc_latency(struct
> > > intel_atomic_state *state)
> > >  	struct intel_crtc *crtc;
> > >  	struct intel_crtc_state *new_crtc_state;
> > >  	u32 latency =3D LNL_PKG_C_LATENCY_MASK;
> > > +	u32 added_wake_time =3D 0;
> > >  	u32 max_linetime =3D 0;
> > >  	u32 clear, val;
> > > -	u32 added_wake_time =3D 0;
> > >  	bool fixed_refresh_rate =3D false;
> >
> > If go by commit message words, change does not actually club all
> > initialised params together and uninitialized separate.
>=20
> So when we club params together it needs to be under these restriction Al=
l
> with same type come together and the ones with same type with
> initialization need to be together
>=20
> Regards,
> Suraj Kandpal

Ok. Please update commit message before merge so that changes can be aligne=
d=20

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>=20
> >
> > >  	int i;
> > >
> > > --
> > > 2.34.1

