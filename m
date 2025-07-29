Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E367EB151F7
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 19:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2DDD10E00A;
	Tue, 29 Jul 2025 17:16:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fo3VzzEW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9DD410E00A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 17:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753809397; x=1785345397;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7rry3TNr4wbXWskTsR3jWQXHVs3vr9ItvU1ApxTuYOQ=;
 b=Fo3VzzEWPXbPgO+BvBHwqxOAJHo5kwkWLrIpuFwVh/+3wzanZU2cdF2b
 uTgph8T90yPs7OkoSMlJTf5+ultVekPEj7Dci05kCO51nizK3MzmOeoeq
 kvBq1RUFrUZEhTeAPQhqYep0yVPWrERSmwO2cAKkkYI+2nzWB81vCsNC3
 6fDaZm30Q4M9yRsBeX1bllleS2Ssm/hrl6EPAnsY4I5LMJP7XGbxDQTrp
 qTT9wQ37tSrFbhZ8CiEPjYCNH4/0fknwnWt9sz4oRvgyxR7PqAjlb1qVY
 P+hdJOTR1ZxBdVMzBJsNKk+LXNTW0KLgDfhR+f+tV2nGDBvipnINmSW4i w==;
X-CSE-ConnectionGUID: 49ea5HbmQxeYXAmUcTMzBQ==
X-CSE-MsgGUID: v06dEX9rQ7KzTXY8+LBebg==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="56167379"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56167379"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 10:16:26 -0700
X-CSE-ConnectionGUID: dBYy3mOVRV2EBCwkEFv1Og==
X-CSE-MsgGUID: B9deUERATLOFwzQBBk5KLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="168055597"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 10:16:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 10:16:15 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 10:16:15 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.42)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 10:16:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jDQOwfWyPR2IyFsSqvJWBfl4umIYTddR4sSmqAgyXCSMK0I7O356e4hGV8x528kwAjhtsKDDEioTHLgUrfz1DtNGDxrKL8NjJiJAVJ8TsHpffkc4SxkWzHqcj3P1m4urmYFqxG5Po+RrYMv+IIVQVS6fzjKnMVbzZyGJhAR1+mksPDFlxxrv6DmXaM3+W5JDlgV+AvFJv/L/lHpMtxw1/AMzr6+N6FIneOgx2PoQE8iseHyPQJUdDco0TjwdmmYUHehHhqsZ1wQCQYNGp0BCj6etN9zeH6GyTu3CpFV3Hf+S/sIdCD02Wv4NIrSuVpRvck9938hswl5+ja3OTBfidg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ys9pJ9+sNyIKGJZLzG+R0E6FoWYh8o7S0PkEF7kE9lQ=;
 b=WwiaygJmg/oTd6Lzc96zYhSv7AIdDemr/rA/+aDsGOm7ViFGm/WfMDeG7Eeqw8TOVtTcolTBaRo7H6Od0nMYSs5xmqMBQDNpwMh/B19BTBFwboGcGW84iyGGQxDX9RSZ4zuoAzxojCyDsKeDSWNuBwDbxLpTq8wYnhJ4/73wKKxgcqoNGvZyEHtyuJuSIMDZ3OcRuN0L3+GHLOhVME1gSPYQULZ1dG9+mM3zNBtem9QFTOsG8OTkIqTH9WVtXrvs1/UsnxrUnEKz+YrmWkUJM8/TqudzRiZAmxET8imNqnopVpjNrqXj+HAymRdnF15O772e2GJtgiWeFCOdJrjdNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 17:16:13 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.8964.023; Tue, 29 Jul 2025
 17:16:13 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: WA_14011503117
Thread-Topic: [PATCH] drm/i915/display: WA_14011503117
Thread-Index: AQHb/YzcmaGwYE0u60aK2fCt783OZrRI2YuAgACCtsA=
Date: Tue, 29 Jul 2025 17:16:13 +0000
Message-ID: <IA1PR11MB6467AF51201B523F6A8644AEE325A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20250725174657.688520-1-nemesa.garg@intel.com>
 <SN7PR11MB804244B42470F1EA6A2F9D93F925A@SN7PR11MB8042.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB804244B42470F1EA6A2F9D93F925A@SN7PR11MB8042.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|MW4PR11MB6761:EE_
x-ms-office365-filtering-correlation-id: 17b7ac76-bf94-4071-353d-08ddcec39ecc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?IAF8e5hGFnW5AH9miN4DjJhE2XGoxWcUiY2PdvvsY607ojRgNV+ggWyDhx28?=
 =?us-ascii?Q?reUraYPfYUVBz5GbsTNm7qNk3OVZH0DVycgaVlFl985xOQ8aLHp+QIGCi9Ei?=
 =?us-ascii?Q?YqLJ9vwgYm3gVrWgKd6GELH+PzCDLOiZzLjW43wcWFukdmBbQ/te2jb74vi+?=
 =?us-ascii?Q?n7kz4ueFmEWSfU0iLBEPCrXANDGOOc1Ez8/2zb3FoswywmGgug64CgYMgrrI?=
 =?us-ascii?Q?H8N06RfP2Uy55Fe4+xiR6eczM31kBZifkfn66gz368vT1hqPK3goAfl4A1IG?=
 =?us-ascii?Q?2tGs39Vm3HwAW80uz0VSs2MLTWMQznL7Z88bCQxfMpFYvsVwEfufTVuWQS0F?=
 =?us-ascii?Q?ipEoYnStRDqsSQgVH64yJ0hKMOlUqOSKUHqSLbBasA/HdyMF5ELGkUv+W7qW?=
 =?us-ascii?Q?VkK3gZLFye05dNmStY5AjtAMJZAeB2t8IkjweYYYIOcz14+cAvyBoxDNgOBZ?=
 =?us-ascii?Q?VpevbXfUshTbgt9U96xf63jzImZxrWmiNVXc+2DI7am98DCWXxStgOBnTuyf?=
 =?us-ascii?Q?G3DSrYTwhUHhnAqdSpyn7kL5p72G+Ir1gZ4lhx2CX9i0F8R7OASd3dNVa2+L?=
 =?us-ascii?Q?qPCDCAODcub3LnLagbP35Pj/DlsIP1lbIOoqv5xNGHtaPKbYyFyxg0rHmHmO?=
 =?us-ascii?Q?JToAK4A5OclhomYW6sAzbko8xjqqdsEKGzTaSt1gLRDffDpihDDupLbBSYZz?=
 =?us-ascii?Q?zqcSmDQ40sbfjdbpc2Oq9i40LBajBRk75dHM+2GXGZGMVoP6xQlivRQUW/an?=
 =?us-ascii?Q?C4U0lYZdRb/k6RisQwBMnmdgK+mJVFbTKuHZMSrHySnz7ZHP01Jk1Oipw0NM?=
 =?us-ascii?Q?rC57vYB4qLZ8Qxv4/Zz6Jy3Do42DvTrMdX0sTv2w4zr1muyI1yq1XEuUOv3W?=
 =?us-ascii?Q?UY1f/wn4yklGrNyo3kpIeXYdH6uaglS/jDns7fjqMbtvo5xtMsHMFV4Np4HB?=
 =?us-ascii?Q?v9ntsd6LYCr3aCsyfKoQ3d4rmBiwrI8aDkaXX7ZEp97zfqWluAZFeuKYpQRb?=
 =?us-ascii?Q?0bC/CpVo5n7h6hdhpyQ0udPXXJHBOiaNylNZUxhIyVsx+m0p2Gs5MzTCDX7d?=
 =?us-ascii?Q?7tmqS3uGSi0X+IfIbAgO1LUu+0X5FuYYSKSnWZ1bBggFr5fvXJgypkiF7X6Z?=
 =?us-ascii?Q?8k4ojylj4AxsbPbaVko0LDQRWW/eVyQ4JPShwYMiTwp2jDThS4tZn/dtaaS0?=
 =?us-ascii?Q?+Iamp49re6lSpsH22/sh7eWb2OSNcrWSLMvq8u7ieHVYLR04L+TGlMeOhKXS?=
 =?us-ascii?Q?A5808fV1mnbTdPsv02Y1uwTAOMg1iT3np5QTNjRJAWN7wz9T2AmqaOubzr2i?=
 =?us-ascii?Q?K+yDfTyr0TjL4FP3bCL0U5mZx8TdDpMAmgltGwb3fcWPTmVwQebl4Bdv4Wwo?=
 =?us-ascii?Q?glACefm316CoO0f/JdQRRp1tMsi1WKPTISiTfcnk3c6ZnCCxDFlccknRezRD?=
 =?us-ascii?Q?H/df5TgRMIbO0B8WsCIMBM7HnLugTwilbkdB3jMSkom5fbTuTotZrw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mtyqBSPAYpOCxDxJdERDEhoZLLDNcZZbrFhBokYp0uTJmNaTcHXyQUwV5dTr?=
 =?us-ascii?Q?eqejLPlOHLtNayW6K1UOq6lVaZlyjgg5n80Bm5Y3dnpPA/DJO6jl8TE1tLED?=
 =?us-ascii?Q?pj/QQZAfmoIUFJRIZ0pzM9IZNkTRjCAfrEXtRLS+OquOrrhgiWzJqLaVtB/u?=
 =?us-ascii?Q?w3iobJqm+saiIHPxOGLXWWD+3aO7ABik9BfgUcQOVbcOBGtGQ6K6VVN1LdOV?=
 =?us-ascii?Q?ZfnxJfzMxD1oWwbxiLzRSfd7MofELG6CmeVaWPAt2RhqZSegYKs7aPP/cffP?=
 =?us-ascii?Q?vwLkB/d6cT/1jJpccvFMjo46SYdLrlJaB8DRBCwuuLnG+uETHY+GurZlpaFG?=
 =?us-ascii?Q?AXzsAyzBAnqwTGX/EjL8hQhfV0Y4dNUYKkmxAndhAIV9qrUrfuptTtjV8tsR?=
 =?us-ascii?Q?WltxhsMS4mRamrb4q4w8fVI9C9T78daCahuvc3A5EzMeJsOl3rpOW2nrdPtE?=
 =?us-ascii?Q?AS+bMA+Snyc1P9OQ2M4XbBXnwUnlC9478DTHByllQ3WvPTEEROtNZ7Ld2ZI5?=
 =?us-ascii?Q?pw/yvExWIXX9zMbjlG77AuMpTTLQVyIDIQIdmbafnhhh2LaCB8A5/2mdIvG/?=
 =?us-ascii?Q?tSu+bQdSwR73pnFlDKZY4Jx0VgnhLM9E2t5bkRVqryzbd6TkR7xiCAUG9tY6?=
 =?us-ascii?Q?26lAYf8OhBSvIhykq8jiEfYh11fqSsPWgUw/bEgUxWLqi57uRmecL0I42WSV?=
 =?us-ascii?Q?LW5ary/joJsZC8gVCf6DurSaYnRWHszY4mq1VvAYzWnjAjfGi1uRNQKECmD4?=
 =?us-ascii?Q?1ad8nrB9p/Z/AMY6fSwIBzYku8PBfVxrOzBOIE0p/xKMHYQSSz5f5kCP8neb?=
 =?us-ascii?Q?Y6xZ3gINd4aDnpru9nIK7zUeZuCC+pKJkoKPnAa5LNm4BxRxAqH7CDTxhlfE?=
 =?us-ascii?Q?2/YkOSULgpHYSIYQBxi8pqVwqiENg/1I2YKofgOn+9ov71m7j9jORWilMPkX?=
 =?us-ascii?Q?JEVzCRO7Tv6RytGcEqfUNpu3cBW2tWw6SXVlHRAxk4NzlHWux0NUphEyQkJD?=
 =?us-ascii?Q?AD13Ts13Sn/KhnjgQ0VLzl7IP0nrCyH327FIrKo9PV9dzKDypl3kVwlWVS/q?=
 =?us-ascii?Q?Fawm8702kcDbTUQEty5gXs1sNRrxcGC9FxWEMoMG8o9S1a5rgAmh1AdrTygA?=
 =?us-ascii?Q?kxYxkwHgPXICUFgTPiMrRAX8a8DyB4lEwYCN0CoDiz2D6CZ5K8eU5Pzvbu4Y?=
 =?us-ascii?Q?twRfwVetH8F4Ewx2RNRODY2naJ38bzN0cZL4m03yXh88bv28rWThbmhp1MuV?=
 =?us-ascii?Q?hTRyOo9dvS2lxtWYRX6mfVHX2I1EQCEzPyn/cgAvV2WH162Kw29nzF7/82+I?=
 =?us-ascii?Q?vXfseCf/7bTrXVbdskfmFUr2DPtoZ0rHulZiXYRGqmf3Hx22ljCj1EHoeo32?=
 =?us-ascii?Q?OZgQtlzEytBGnA6/5laYA/JyURsJ0saynQN4tLTmGvwiNlClFadxEkwY6wFn?=
 =?us-ascii?Q?ulivW772zljFewIw35JV14jjUhlJkpxEZ1oog8CN/hcFrOu4GdjkQg53E5ba?=
 =?us-ascii?Q?zCRVQFyTRShVZ28E14eyriEZBNUhIYd+3PpQgK259dMGVzp6OJdOvLU95Rcb?=
 =?us-ascii?Q?cbju0sEJ4A9ulyD2YeBB98MfvJb3+NkkDi9n9lFh?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17b7ac76-bf94-4071-353d-08ddcec39ecc
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2025 17:16:13.4356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4/TPJM297I7//ve8BSDv34TF1beQXvZvwFjoC8JgAFtdbz+648JirROkh34nmL27shO+GUA+atY2SKuCtfBNoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6761
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
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Tuesday, July 29, 2025 2:53 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: RE: [PATCH] drm/i915/display: WA_14011503117
>=20
> Hi,
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Nemesa Garg
> > Sent: Friday, July 25, 2025 11:17 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: [PATCH] drm/i915/display: WA_14011503117
> >
> > Before enabling the scaler mask the bit and after enabling the scaler,
> > in the later stage after waiting for a frame unmask the PS_ECC bit and
> > ERR_FATAL_MASK bit.
>=20
> Good to mention what will be the impact of this change.
> Sure will do.
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  4 +++
> >  .../gpu/drm/i915/display/intel_display_wa.c   | 13 ++++++++
> >  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
> >  drivers/gpu/drm/i915/display/skl_scaler.c     | 31 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/skl_scaler.h     |  4 +++
> >  5 files changed, 53 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 7035c1fc9033..97664fd1b9c3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -76,6 +76,7 @@
> >  #include "intel_display_regs.h"
> >  #include "intel_display_rpm.h"
> >  #include "intel_display_types.h"
> > +#include "intel_display_wa.h"
> >  #include "intel_dmc.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_link_training.h"
> > @@ -1081,6 +1082,9 @@ static void intel_post_plane_update(struct
> > intel_atomic_state *state,
> >  	if (audio_enabling(old_crtc_state, new_crtc_state))
> >  		intel_encoders_audio_enable(state, crtc);
> >
> > +	if (intel_display_wa(display, 14011503117))
> > +		skl_scaler_ecc_unmask(new_crtc_state);
> > +
> >  	intel_alpm_post_plane_update(state, crtc);
> >
> >  	intel_psr_post_plane_update(state, crtc); diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > index 399c08902413..0366eedacf2e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > @@ -52,6 +52,17 @@ static bool
> > intel_display_needs_wa_16025573575(struct intel_display *display)
> >  	return DISPLAY_VERx100(display) =3D=3D 3000 ||
> > DISPLAY_VERx100(display) =3D=3D 3002;  }
> >
> > +/*
> > + * Wa_14011503117:
> > + * Fixes: Before enabling the scaler DE fatal error is masked
> > + * Workaround: Unmask the DE fatal error register after enabling the
> > +scaler
> > + * and after waiting of at least 1 frame.
> > + */
> > +static bool intel_display_needs_wa_14011503117(struct intel_display
> > +*display) {
> > +	return DISPLAY_VER(display) =3D=3D 13;
> > +}
> > +
> >  bool __intel_display_wa(struct intel_display *display, enum
> > intel_display_wa wa, const char *name)  {
> >  	switch (wa) {
> > @@ -59,6 +70,8 @@ bool __intel_display_wa(struct intel_display
> > *display, enum intel_display_wa wa,
> >  		return intel_display_needs_wa_16023588340(display);
> >  	case INTEL_DISPLAY_WA_16025573575:
> >  		return intel_display_needs_wa_16025573575(display);
> > +	case INTEL_DISPLAY_WA_14011503117:
> > +		return intel_display_needs_wa_14011503117(display);
> >  	default:
> >  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n",
> name);
> >  		break;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > index aedea4cfa3ce..abc1df83f066 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > @@ -24,6 +24,7 @@ bool intel_display_needs_wa_16023588340(struct
> > intel_display *display);  enum intel_display_wa {
> >  	INTEL_DISPLAY_WA_16023588340,
> >  	INTEL_DISPLAY_WA_16025573575,
> > +	INTEL_DISPLAY_WA_14011503117,
> >  };
> >
> >  bool __intel_display_wa(struct intel_display *display, enum
> > intel_display_wa wa, const char *name); diff --git
> > a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index 4cc55f4e1f9f..bbe84e4b71fa 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -762,6 +762,9 @@ void skl_pfit_enable(const struct intel_crtc_state
> > *crtc_state)
> >  			crtc_state->scaler_state.scaler_id < 0))
> >  		return;
> >
> > +	if (DISPLAY_VER(display) =3D=3D 13)
> > +		skl_scaler_ecc_mask(crtc_state);
> > +
> >  	drm_rect_init(&src, 0, 0,
> >  		      drm_rect_width(&crtc_state->pipe_src) << 16,
> >  		      drm_rect_height(&crtc_state->pipe_src) << 16); @@ -
> > 938,3 +941,31 @@ void skl_scaler_get_config(struct intel_crtc_state
> > *crtc_state)
> >  	else
> >  		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);  }
> > +
> > +void skl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state) {
>=20
> As the workaround has no relation with skl, need to add appropriate platf=
orm
> name instead of skl prefix.
> Ack.

> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +
> > +	if (!crtc_state->pch_pfit.enabled)
> > +		return;
> > +
> > +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0); }
>=20
> I think we can mask it during first time scaler enablement, not sure touc=
hing
> every flip whenever scaler is enabled maybe not needed.
> This is getting invoked from skl_pfit_enable which is called one time dur=
ing modeset or pipe configuration. So it won't be called for every flip.
=20
> > +
> > +void skl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
> > +{
>=20
> Same like above.
> I think this is not called for every frame flip.=20

Thanks and Regards,
Nemesa

> Regards,
> Animesh
>=20
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	const struct intel_crtc_scaler_state *scaler_state =3D
> > +		&crtc_state->scaler_state;
> > +	int id;
> > +
> > +	if (scaler_state)
> > +		id =3D scaler_state->scaler_id;
> > +
> > +	if (!crtc_state->pch_pfit.enabled && id =3D=3D -1)
> > +		return;
> > +
> > +	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
> > +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0); }
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> > b/drivers/gpu/drm/i915/display/skl_scaler.h
> > index 692716dd7616..ec0fd80a3933 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> > @@ -44,4 +44,8 @@ skl_scaler_mode_valid(struct intel_display *display,
> >  		      enum intel_output_format output_format,
> >  		      int num_joined_pipes);
> >
> > +void skl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
> > +
> > +void skl_scaler_ecc_unmask(const struct intel_crtc_state
> > +*crtc_state);
> > +
> >  #endif
> > --
> > 2.25.1

