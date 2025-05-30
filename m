Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 044E2AC8742
	for <lists+intel-gfx@lfdr.de>; Fri, 30 May 2025 06:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B579410E7C1;
	Fri, 30 May 2025 04:16:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VD2rxmBq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973C910E7BF;
 Fri, 30 May 2025 04:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748578609; x=1780114609;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=L4cd2b4Sa9EdTNm8E/WErdHjxGsKqvWX/SZTRIMXf/U=;
 b=VD2rxmBqAaDP8VAmXLvY6o9Wsbo1c8HhpiDU8WtVA57SIjTTuvsyIgk1
 Knx0G/25URjvSVVarkQsAsjo+XtPAtfRTEsYBCZiTfTuhM6LJL3Xwk/bQ
 kTlq+m94up6RMJA2adQJGKrsR1PCN89T3VPO2A24dE4r9nAAegHuLgslO
 Jf2x44hispNvxARbdNdqNEVtQHb0X20ANUS4NWA4Iog5bDOkcTvlxhQ8A
 TbD9b6kxH0MRHXpxnjWrps20VpgXXetorcEBvIx8gt7jkSr8/b6eqf83c
 wxifojK6Lb0r73NStyix7SkT2UMQlgPkvxLnIO7tOsh4VkJAaO5ahlEjD A==;
X-CSE-ConnectionGUID: npbbH8WRRV2dmb+5jYiocA==
X-CSE-MsgGUID: YM5BjVmVTgSxiKc6xXe/bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11448"; a="76054679"
X-IronPort-AV: E=Sophos;i="6.16,194,1744095600"; d="scan'208";a="76054679"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 21:16:48 -0700
X-CSE-ConnectionGUID: j7nE1Nv7QuSRsmnWTi82jg==
X-CSE-MsgGUID: t0TZF+A7ThCI5u3eH5SPqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,194,1744095600"; d="scan'208";a="143675238"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 21:16:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 21:16:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 21:16:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.61)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 21:16:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=duGXEoGaODS4+i2CW4dw74QcF/tIsykvkItW0i37hZpfxIXO7veq0Cs7KU9U5/TQ6IcrIcmOPmINeDkvZTJ40uWGLW8Kra05IBMPzO0T3qvZsILvqq6ojDhb65mpM5y/KxTKS6sIjZmKOrv1TOBWU0aV5TzX3PHidtWsObxoMa+GNzCat5Nx9ruku3xw5qx/oAdb/83CQjd56JyzTB33LUj+zfNAa4e6zOzJOP6uwG1R3bjnd5jrV6bJcbzopydCUySrir/V/eY62wlZlZiK6luRW0kWPYAqjNK5GNkXQ6Vt9TtiIEqZqJKlarcejZToW4yUrTcSQypINGqDTM4O6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+oBVRIThXXH7iIIdP8kFLjkdjhe05FfXYmTjffyo02s=;
 b=x23niDh/nq/RhPOPhBjN8HoniP4m+g4gfsdUoYpqd+fkOEQEibC86YJWupqS5hVxqRGUkxxYqCUbS2lHn7u3HbqoR0vx676CKsfnn7D1QfOZrdHbro7nzhA2EgKWRz6Xb0irGY1FoukQ7xXj2WRQaCCMCM2L9Hgz9XXy3a6aoqWfl1Q95VWZ6KMvdljOnchAsuYPv+OuvusD6a8m3aC9mc7uSoT4n2mOWgYg+aYobbqH7ZB26sX0+SCUNH/AzgduPX8rhzSrv5Qqo7hGmY7TiY2BR6sBDE3IFUWP7hCJEsunZpwNeSeQOoJTkxvOJclw5g9w2qTbxDqgJsKGrTijgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.24; Fri, 30 May
 2025 04:16:43 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8769.019; Fri, 30 May 2025
 04:16:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Implement wa_16011342517
Thread-Topic: [PATCH] drm/i915/display: Implement wa_16011342517
Thread-Index: AQHbxm/FjUmNrMlsgUekLV34z4NEM7PpRSnwgAAJw4CAAVapUA==
Date: Fri, 30 May 2025 04:16:42 +0000
Message-ID: <SN7PR11MB6750F0615A0872066B71B207E361A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250516143101.3313286-1-nemesa.garg@intel.com>
 <SN7PR11MB6750AB2655DDB986E09D37EFE366A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA1PR11MB6467F02601F33857F84959CFE366A@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6467F02601F33857F84959CFE366A@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BY1PR11MB8005:EE_
x-ms-office365-filtering-correlation-id: 590d1034-5f1a-4767-4bf1-08dd9f30c8a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?g97igZEjv61W4CIydGLt222wdzIN74fsiP8s6bg7L6nLn3kWdxayJuLRkX1n?=
 =?us-ascii?Q?TSDQQwEGzZKfvlhDFXor5iLtBSNLpI2iLUn8o3sGpR0b/PwWkyFTTq/i6Njk?=
 =?us-ascii?Q?T2R4o6NTbz6YZ1L+bOTo8n5mvTP/dgGYJAc03WNMlqilOp54RBqgkXZkBUAO?=
 =?us-ascii?Q?RiuCNkf0MOAdJ14EpCsGE8dQzq+08mZGagc/KNPiADIVN8s6+kb0Q0piITXh?=
 =?us-ascii?Q?QtyO7ooOVoS4XgXXC2dPHmVgjkZUZo+A9+ZnqGRdPlpJPKyyXzCW7b33+dO8?=
 =?us-ascii?Q?6YiSBW+D+E126fVZChA5M9lPU5hZcBOo8hQl7JoyaKLLoNL5B5xwp4zzUGG8?=
 =?us-ascii?Q?RtDYRRgZfONM9wFydHvm4BRvGQOjrTOgk2ByuYWVD1br92HbtxKdoNCkipXe?=
 =?us-ascii?Q?wL5fVpMZm9ST4kvOtlddgsmGlBD/EaquMPxZtt8p1+dXOWTWMHYHOfkxaUd1?=
 =?us-ascii?Q?2DlgP6pJRJCgZAWhejlhvSYpr4D4G4pLIuJulkGBVpgqANmcr1LwbhgxTgHH?=
 =?us-ascii?Q?+K1odlbidT6tY2hvrOHFWfn01xuoiKCzhXQUobOkQmmi/YPCkpXDMkOkjx6U?=
 =?us-ascii?Q?jWiCqEzURtT15MriG9uL73nrNc9firNKgHkb1G3W9MK6C3OIFM7xYRNH5nGL?=
 =?us-ascii?Q?evb6PGNqu6IWiSip1zDK6rHkipdFSnDb5np6FWvmeBy7z1n9BkhGomhcCJz1?=
 =?us-ascii?Q?Z5VD46PYx46OXN1lleeYBGpNZEqRmDcfGOZSnVCFWts59j19NpDJ9nuFyAe8?=
 =?us-ascii?Q?vezt/81wIts2g5AVSukcron5xIX730SAsUOp3vm2/kQlohrY+vyG4UeI6gcD?=
 =?us-ascii?Q?glJHKkc6LWqeR/PtNhlkWeN1vTInFaZlB5nHQj6TtFeOLvLRNPHkWFJthsH7?=
 =?us-ascii?Q?c2EwENErTrdmqJxqrY0EjWT+j4ECUySJnVtQ40AB0JX415M0aK8wz/NCl6ou?=
 =?us-ascii?Q?n/PqBxFv0tyMUlApb+gAEJuQyJtywjixIakCbD2ozEH06bScmhkKFA80z7aa?=
 =?us-ascii?Q?Aqi6zf5RAOEDzmSVO8xZgbtBUwpayDLgZePEnSJqvjIke5+anU1sd6KhfRrM?=
 =?us-ascii?Q?wO5jMtPwMZoR6VRZzNqqv6FuMKGi3H9G/6fcNkzEPYUrJeVNSwst5skVAhag?=
 =?us-ascii?Q?taUP18MB5Iz3CxIUQkoUnpCFRSQJedJXV9vFpboKdkv7GsnBbliVo7w2ZVvr?=
 =?us-ascii?Q?mbbD0sZI7rEA+io/fikv+POrKO9IXwvu2VEX/djorr/9dnXpj67kvWYCwfPv?=
 =?us-ascii?Q?LKg+CIP3MQdSOz6zPSaeAa9FJBaGzbCoDxhiLfSLmJZu7Vp/pqXi3gh1JE2D?=
 =?us-ascii?Q?GOTnzFoSbUE2XEw2uqrjkthpC8RMlGAIC8SDef2UbAIkRDfpzGUqQ6b/fOfD?=
 =?us-ascii?Q?nsA5XRMpML3ZZTwuKIBCc5nz3ptOUOut0lyTuq22DrKHUjEU50TiouqZkXc+?=
 =?us-ascii?Q?zi54LhNbpJfuhmcSvTohoynfiGMigdwomBeiZJgj3WaxV7LjjqCEiof0Xtp5?=
 =?us-ascii?Q?JjCtE1X4wiFP0xc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vquTOqxa065Mrcq40wWK0EjaAZupeUg1wqfzYMaba/Ip5dlxi5d9UJhKVoGH?=
 =?us-ascii?Q?aQt5RA3W0D2r87ZIpIPkvQ+Xx1x+mN9726kbm6d3bBReGSZde9GEo9mI3Llt?=
 =?us-ascii?Q?7vlw0Cj5jLfs6dPavPTJYy99JZjjPdYY3AXwwCZoEHD1DFtyzkI61dwPfVAQ?=
 =?us-ascii?Q?kxzwQXcm01S4cU0tpPTESYXDmPzz/SvKmj4LHwEvvpr0Ltw7U+eE0lY1qPbW?=
 =?us-ascii?Q?jlrvPsZS2e21hqUZ9S2bFne8GhWK8bxkJZ8zqh0XXjlkv1crC6iPUInPEX7B?=
 =?us-ascii?Q?Gj7dhQw/VArSoHk7kBvGIyxpC0aGfw9CVvpFxqHs2zCCmqlOIe+yKXNLSD5A?=
 =?us-ascii?Q?yAjgl2eAEwwF81ySUCh7Uv9pxQbynqqqhmpXCO+NmemjvjC7ij0KryH0eDNS?=
 =?us-ascii?Q?Y4cv2URkdxhfzlMC9RYNRj3Dwwf12WFWO9Xg+bClZV6+QrgH+DBFHgfYucgR?=
 =?us-ascii?Q?bQsSaXFcYeLN1eRmF6UVn1Vy5MR5GnGbl5f0w6ZIAb+/QMPCkKo9VxzovIIN?=
 =?us-ascii?Q?LdqJeUl9qG6kOHfOKHffilK2/GTrHv1HFFPjvEruHGVQ4Eh2SOjAkPh8ZQyx?=
 =?us-ascii?Q?Z6ci6DJqJqhmQ6O//Nf0bN0SR99VV8kX/b1S0/M84K0jB22M1b7X7i5e3pol?=
 =?us-ascii?Q?s4KYV2A0slPRlibiBJFJ+B7PzbZWNuFSeVegdIthq+CJexM20aCbpVvVwK04?=
 =?us-ascii?Q?61jTOz+luH+iC8GfaRpOGL4V+RuqToaFue1YzOBSDC9YpxlvViYRM++TcnFV?=
 =?us-ascii?Q?hct5Zz/irGZJvOjCP9iAQlgi/EbWA8MBS6PTOjGyaqObsuGOQrqaGsTdPSsy?=
 =?us-ascii?Q?6fkhPFuxsQB1tk4Erh/ZzWUPYNk7I89Y26VNl3SFpCO5Du8P3ev97HU5eViz?=
 =?us-ascii?Q?76XHwLKPjQYZxAA1/EtFqK5Pz+sNvw0oGowOYnL09j9GjB6wNZblAry9HEv5?=
 =?us-ascii?Q?ZZ9qFtJNrscKHBagFVXAoUa7qK1f4R9Ey5YJxVThYjhQ7f9qCJMGohOR3n3y?=
 =?us-ascii?Q?nxbJDdqP6CGszYRbUtNcnldZzrsGMzM+IwqkcTA942Ja05rPZ0J5GTUFmFsy?=
 =?us-ascii?Q?9j5bWa27kX4Qf7a4mR0qFo69tziTIwnBQwnM4QCtl5KSUWoGaq26YmjMcqef?=
 =?us-ascii?Q?I1cLU4nsGDVr7KE1JzdA9xMMCP2xqF9Drx8smEEuxoRtPc2LU9/TFk19WsDZ?=
 =?us-ascii?Q?1yKABmJOgQ4vsOUtqp79rUrMKmf/o/pm4BNWQ8Us7xnxIedQw1mtAgFWnMcJ?=
 =?us-ascii?Q?cF/WFfDvF06uYZHxb9WW+qec64CPTUteXqIKQ5ZzpYaohH0bZNk0hiVO6k47?=
 =?us-ascii?Q?7i6lJJm4s6EUWGb1pl0pNPFrb8n7HemVwS+KBYJSixGroRq9nkiqtmatIs1U?=
 =?us-ascii?Q?5UUPVjlU5K6DgYSbPDW1Zi0UEtrNZCIEW3uHyuRGKvFMWRlFaCM5BtpIWp4j?=
 =?us-ascii?Q?S6XCE72NZ0xAJfQXpqrO1bzxiOCLSWVTN46DVeHV4ifamRN626XpVxim5ULS?=
 =?us-ascii?Q?7zf4NDsoSrzBNRCeXDvoxoW1b3hakZ9t3dyyBBFAX+4OwQCx1neFcjPUQxpY?=
 =?us-ascii?Q?PUCidVZ97nbFL13MILHySrIBJ6Lwmvi4D5uyctd4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 590d1034-5f1a-4767-4bf1-08dd9f30c8a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2025 04:16:42.9621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BCyNwvZRSo2JKt4rhtYhwCkrNbmir/dJtDEQ95ynwA0x2cC6PAvuPd5Ct1A7QPYnApmxOA7B+Lt3PPokKA9g/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8005
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

> > Subject: RE: [PATCH] drm/i915/display: Implement wa_16011342517
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Nemesa Garg
> > > Sent: Friday, May 16, 2025 8:01 PM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > Subject: [PATCH] drm/i915/display: Implement wa_16011342517
> > >
> > > Workaround to prevent skew violation on type-c phy for DP 1.62 and
> HDMI.

The commit message should mention what exactly you are doing here

> > >
> Bspec: 54956

This should actually be 55359

Also I cant find details in the WA number as to what needs to be done

> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++=
++
> > >  .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  4 ++++
> > >  2 files changed, 20 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 74132c1d6385..34b372b18aab 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -77,6 +77,7 @@
> > >  #include "intel_psr.h"
> > >  #include "intel_quirks.h"
> > >  #include "intel_snps_phy.h"
> > > +#include "intel_step.h"
> > >  #include "intel_tc.h"
> > >  #include "intel_vdsc.h"
> > >  #include "intel_vdsc_regs.h"
> > > @@ -1439,6 +1440,21 @@ static void
> > > tgl_dkl_phy_set_signal_levels(struct
> > > intel_encoder *encoder,
> > >
> > > DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
> > >  					  val);
> > >  		}
> > > +
> > > +		/* Wa_16011342517:adl-p */
> > > +		if (display->platform.alderlake_p &&
> > > +		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
> > > +			if ((intel_crtc_has_type(crtc_state,
> > > INTEL_OUTPUT_HDMI) &&
> > > +			     crtc_state->port_clock =3D=3D 594000) ||
> > > +			     (intel_crtc_has_type(crtc_state,
> > > INTEL_OUTPUT_DP) &&
> > > +			     crtc_state->port_clock =3D=3D 162000)) {
> > > +				intel_dkl_phy_rmw(display,
> > > DKLP_TX_DPCNTL2(tc_port),
> > > +
> > > LOADGEN_SHARING_PMD_DISABLE, 1);
> > > +			} else {
> > > +				intel_dkl_phy_rmw(display,
> > > DKLP_TX_DPCNTL2(tc_port),
> > > +
> > > LOADGEN_SHARING_PMD_DISABLE, 0);
> > > +			}
> > > +		}
> > >  	}
> > >  }
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > > b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > > index 56085b32956d..fa3bad5efca9 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > > @@ -188,6 +188,10 @@ struct intel_dkl_phy_reg {
> > >
> > > _DKL_CMN_UC_DW27)
> > >  #define  DKL_CMN_UC_DW27_UC_HEALTH			(0x1 << 15)
> > >
> > > +#define _DKLP_PCS_GLUE_TX_DPCNTL2                       0xB68
> > > +#define DKLP_TX_DPCNTL2(tc_port)
> 	_DKL_REG(tc_port, \

This should be DKLP_PCS_GLUE_TX_DP_CNTL2=20
Can't find DKLP_TX_DP_CNTL2 in bspec

Regards,
Suraj Kandpal

> > > +
> >
> > Bspec link from where you are getting this
> >
> > Regards,
> > Suraj Kandpal
> > > _DKLP_PCS_GLUE_TX_DPCNTL2)
> > > +#define LOADGEN_SHARING_PMD_DISABLE                     REG_BIT(12)
> > >  /*
> > >   * Each Dekel PHY is addressed through a 4KB aperture. Each PHY has
> > > more than
> > >   * 4KB of register space, so a separate index is programmed in
> > > HIP_INDEX_REG0
> > > --
> > > 2.25.1

