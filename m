Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6ABA3EC37
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 06:26:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D357A10EA22;
	Fri, 21 Feb 2025 05:26:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mCBYbWRO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8E510EA1F;
 Fri, 21 Feb 2025 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740115593; x=1771651593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pY0wTjpl80VnqC1svxuhQY1K3khwQrOCGU3EZecp9Pc=;
 b=mCBYbWROyTdR0VVz+Hzx19Q6eWXVhuqW0YjOTZO2vRyw7Y3bIzutHVgL
 c7e51nkPFIPrso/mcCv/cEJ9zyfi5j3HKvBjEJe3TPCd6UOQYUdbgL26z
 sVjcP2gEBeKlh0Mj2BLhdYwP2tlqtqfI3ltmQPqrPO2z9mLdpAd6mhkQF
 lVb7R0cDciB8DIpgmGiNt7FInHN5grSzmquDc87q61Y1Hojf4PQi34uUT
 MzDplfWy24H1CQWksW64E9UsddoTS3dIKyPRVy6p3F9aB1bCRWdCooShj
 sOnI/lQd4g+PfowrWP9fPjn/hk7mzhFGeEkioQ16+n2IXcTGu9Dm6WlJU A==;
X-CSE-ConnectionGUID: ouSTNv3pRhqUvGI9vQCEbQ==
X-CSE-MsgGUID: wPjblNbjTnSX2xWdaTw9QQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40935351"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="40935351"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 21:26:32 -0800
X-CSE-ConnectionGUID: OEAEQPDXTLGfJ5aHtrMJ8Q==
X-CSE-MsgGUID: fegSBiMPRIq78/Bn9Z7ByA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="120204247"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2025 21:26:32 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Feb 2025 21:26:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 21:26:32 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 21:26:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W9vUcQyFce6+fF9VSvpUqlAh1lHbiFWEFWiNdEq7YVaLQTyoq5tc7SSn3VM9Xv1crB8xSOMHtyuabKdQVtldT6bb3sU8ahSWGSByLD+S9OtMl/Iz5xXQzsXeJN3KWZlphAIydaX7kTjapq20KNtdLnmtX5mGa/RqvdRKbgQZUl+kq1NzR3gFFIhQh7cxbbHMR49d1+Aro3IVbj27G44kiKX3vZSD52kLDw/+NnWOp+b00xrAdQ5bQEH04DUGSXzODQ1oNVUrNZbmEvV5ULsRSeIYIO5Rc2tt3SyYUE5Kup8zMGO39gm4G2cSSbPXu1qXr0TIFsAUosLQ2hZOm6KHgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3cGgf/msmN0LMJwyefjvnyAGgxE6QCWOvoT4sQeoQzc=;
 b=q4WWiscGchoOWgAyVGAi/qwXTebOY4yvHQmVYwTT6z4EB65OqKBpBTd+i5lDwPOA5oEhuh1jqcysmkEYU6CaeH0GSBVS9QIEuTuSVk7w4AogcvWIOT6wrk5HKnPbRGiV7eJ44grZinvqFhwD1WlllgSz0gYmBsLOOqrvbZsv82s/DCrA9cBRglDN/Xv2HfpzE8mSqYTTwb5J51kiKqWhbRxcF7voaf6T5FndRnDwiRG5Tk7MCxUgJwT/ZZNcbhb4Wmpxm3mi5bYDfiU2lhKXrcZ0Sze4S2Jhvvm3PhuNLBs+fomIuAttN3mRHXMGI73m8W/qaN7TXuuc7inoKtPzJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH8PR11MB6997.namprd11.prod.outlook.com (2603:10b6:510:223::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Fri, 21 Feb
 2025 05:26:27 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.013; Fri, 21 Feb 2025
 05:26:27 +0000
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
Thread-Index: AQHbhBUI54W926PMQU6x/+0k0YIsUrNRKaeQgAAKgYCAAARS8A==
Date: Fri, 21 Feb 2025 05:26:27 +0000
Message-ID: <SN7PR11MB6750EFC3233B6E0457536CF3E3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
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
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH8PR11MB6997:EE_
x-ms-office365-filtering-correlation-id: 797dde29-608a-49e5-370a-08dd52384a36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lvds3vh8DVhpRumDu42hj0bCTKQCZ7aiPRfAVQe+WKC20CqEBJHlEuNQ6NJm?=
 =?us-ascii?Q?gj4UiEmAaCvoYsdqKxIRreNsxwlq16i4p4QftQmAGK5hlxQmvWbPz2h929uo?=
 =?us-ascii?Q?R9j8XJ8dV2KeSgn1acvxEV/Bck4zoDQBKi0uYt5U+fK+84UwmwEpMde3HhxY?=
 =?us-ascii?Q?5m+0knsemHOY+92YerSckAF6Yfn9Y7rQwVhI9X7HVkon/4T5GHglpiRC/7VI?=
 =?us-ascii?Q?KfHv+qVqT3Kp4rS4mNJXQ121qiMjoerZEd56mWEi00wGZ+jp+KOq1OLT2Pok?=
 =?us-ascii?Q?qfV6aP0487P70Z4jzHOgI+1ME9GUPgWp/dF7HaMvpZJWI4A31vGRaX8Rrfjo?=
 =?us-ascii?Q?FUMN7CocBhuhXujlSkcJ4cvD4cGDanPl5dienhjx1QK7yScluHJLcUB8P2lu?=
 =?us-ascii?Q?ibCG9tMRqbm4xnUrp5LoXXkRiC8RA1giFuAYWouPRR7pvVSx3argJ4ZTtPrQ?=
 =?us-ascii?Q?27yP5xQITeTh4XsdN0MgxmZgUdm4x9MJrIJ+pQJS6ky/6wpA7QxlOYQ9NmfA?=
 =?us-ascii?Q?FRsanSAF2bVd3/uZuuPl6RUVOrNZ+NlpTXs6Xx61jIB/foYFvlPM5dGXhk3d?=
 =?us-ascii?Q?A1cJrAv9SSPw3XSfmMEUAZ9BpTOenG8ARjKVZxFbb/Vs+DPPH9e0fKsHzPze?=
 =?us-ascii?Q?B5mf5wSxD7AXjhF870VQLAo8xJafpb66qAV8OjGq0a7QatEYNw/wmBotBO31?=
 =?us-ascii?Q?I8UKrxQvX24cGxo4VhykUA//4ypv1NQ5LSQc8T8rFO+78ZlstKOnfvfUh45Q?=
 =?us-ascii?Q?Do9xuA91LKqRQqxXn2HhSY5Z1I3kbdAEWLARJzWaCnG58x0/8oGteWelEpvt?=
 =?us-ascii?Q?R3yAGhKKlWLZVhlbTusCspv2t4jIjeC4SwSK16sAxKQtrxGoZCPQjFqaVGyx?=
 =?us-ascii?Q?H570L+wGvReksK8dzkODtv62PzyKoeykHsyZSTP9vIr903dN2w0Ekm4sNFAr?=
 =?us-ascii?Q?DaL3IqwFKLIPNe5WTOMjozNhHgltbc0nrDbjWBex0/sBiwLiGksdBHbWQBxc?=
 =?us-ascii?Q?j0Kb5uoCrfNVch7SkOCH4B3K3I4Z+Az2fAAu2QD/t/t3jvOY4F0ReVQ/W5MT?=
 =?us-ascii?Q?EQJ2Q7RznEK/7Gym4jEgOG/EADgPLK5V842HFvesnhebvZvGFyaqL/pq6Q9k?=
 =?us-ascii?Q?ExEu9P0aftMXBa06yubhdMnD5RAHyije5FoMGOog208SGQ6Jrb5fe7TFeIWj?=
 =?us-ascii?Q?Npzvmyvu9zPlsnrSn3CiLNFvs3BSdPSNlR0oh3q6IfKtyLQ2MJgHBJGviwH8?=
 =?us-ascii?Q?9dB5c1kEyc4NIqRbEXttiYYhNdxtMYpg91Lfy2ql7NMPuIYynpIqdFGDgsV+?=
 =?us-ascii?Q?WQ2PeTQ46JuvDXqKnOic4WmmkBsDb4XsCK0FHKxmjA5rPBGG0Du78fAFj1nN?=
 =?us-ascii?Q?xxgU9Oaq5B42uVXAKmYilwzBhqWJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Wzh4LXDduvEBiaJEciiIsb2/DRfGWuh6buVvdTeJoFWSPnpcWa/eAEbk6RqC?=
 =?us-ascii?Q?hIz8zivvp34BUrWawUVIozeMw9MR3PT5H8eIegDPL8PAHY3x2wqOUXOvydlm?=
 =?us-ascii?Q?MVOscPI9u21GomxPOz2BexTUHLvp+P1PbyOd6Xu+fKyOthjwcdzXPnCqFXCM?=
 =?us-ascii?Q?KMwjBuPNhjzxpSA5PgqEmaXnBsh/sFWK/10cmgEp4rVNb81IvxSu3kkiL9+h?=
 =?us-ascii?Q?rIpvUnZyLjoO93i3+fXR0swxb1HewRxd1xwKMEXaUe9kNqbch589MhFiM6gR?=
 =?us-ascii?Q?Ego9wthwfJmGt1y9J4LdMHXQuV/DluLlXteMn9XXtL+6N/5VyFdKCE/+3Oye?=
 =?us-ascii?Q?Uld7EKzvBF5jEdc49OU7NYzryzdKd6or91CoJDxPYW7we1Lyi1y++PX4UeMD?=
 =?us-ascii?Q?rxWAMSDB2W+Gm8qdhf2pWwJWN1r0LOUK2vcrHkyU+yT7szZELwx4NmVFxRmW?=
 =?us-ascii?Q?b25ay2xntKPnEat16W5Lb6KmaY3AvxRNuNGfheBYgP5yF1P9DaqJkOt6p9OR?=
 =?us-ascii?Q?58EVpV6/Bn/uCntt4UeXwaGU4OCDYo3GCJQMPhQ6UsuUaZxXBH6D1S1Z9JJT?=
 =?us-ascii?Q?CXnVEP3L5ZK22Xo4nrX2XjaEYPAWymeCRA2irDkWP0Ld39Xr77zzrb5aak5q?=
 =?us-ascii?Q?WgE/XWvXAkQogEJoHGo6RVYWVz5EeOr+tyi4dQnalElUKmD6qIsAJpBN6oZ4?=
 =?us-ascii?Q?5Ztz5PJRNfE298ExRu7OUmdT0R3FoEqFllUsSF34HucR2wLUWiZb6pfN7JPJ?=
 =?us-ascii?Q?F11rRSUMffMtXAIkru0Ug/pAEi3pBQ0lk0bcamMrzlcWpgANvaTs5NlGAvX5?=
 =?us-ascii?Q?1G8JAk6dEDQSXbKq+6AnLdk7EuCnX3FnQJLoMPlwZVJVkaFEeKmjhLltOxM3?=
 =?us-ascii?Q?0BtxBL2Biyv573GWztZcInJHB1SR34h4jnXEnXsebJ+iFwyPDepmLOcl2QSE?=
 =?us-ascii?Q?yjeCRvf9By9s9cpCgb8J4Xa/PESCM2mFwMUT+90Nq8vch3ckI29O04Rmil73?=
 =?us-ascii?Q?Fix/1K4M+BaXys1wxkTMSbq4j3YfZVgYEu87GzstCXT0mZey/3VdMBL+kbtl?=
 =?us-ascii?Q?rlrlAGGcTJaiplmKhexHtDriiNInlZxHY3Y8Q74Qb+djgMNlQlqBDmUaeOn6?=
 =?us-ascii?Q?TZtmfL+aOA5JYyb/c0EJk/U4hqQZ6YUuacOSWEh+/RTTbL4YMGIFBkixVO/E?=
 =?us-ascii?Q?ncJ4PpNC0frMalRx628nlb4whYXvpmIonbJVwRUm+DuktErtEHFaSAvpA/Ix?=
 =?us-ascii?Q?Pllb8KVG2svmrjP+3FwpmSAhbGpeA5WzgwSOvYM7X4d3R4JfRdOArKiWfXrc?=
 =?us-ascii?Q?9of+9hJ3jmDWUCUam1FVRHzEUqf5Gsu+Kr/zqZwUdzdwry1MkNthUbOup0Pd?=
 =?us-ascii?Q?53SiL7gMmTuewEd4YCykjd5WzA+w+TwmoaROrJK59VWmMA7SBTe8UNw5EkKE?=
 =?us-ascii?Q?4smTfIszja/nx0tgVmtC50Aq2ANdgeozRor1RuAg4CYQO0PE8Wc32WKB4p68?=
 =?us-ascii?Q?fUIsbq0JPoV1j5avShBjssiKjBM+qCbScbPmvG9pkuuSey/B2SBs1PFpWbTj?=
 =?us-ascii?Q?dPm9RrQk9K0N9YKEnlz4UIVao5Yx/ijHl9eGXCxU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 797dde29-608a-49e5-370a-08dd52384a36
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 05:26:27.2766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: izdkE4BnQD8t0W6EUteGFgFlbj2tFypIraK2/56wjC/9OWjU3GIIe8aXcQGG5FEcgFm5e+GHi5jzT+KjCdYBFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6997
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

More things I forgot to mention the calculate RC Params also works for DSC =
1.1
Check commit message of db514cac08fd4861a3b221bed5f21b441a1242c3
Also from what I gather we have had DSC1.2 support since ADLP so the whole =
condition in itself
Is not correct as I mentioned this needs more debug, follow up with logs as=
ked in the issue.

Regards,
Suraj Kandpal

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

