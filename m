Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FAD99F031
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 16:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7C210E595;
	Tue, 15 Oct 2024 14:54:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ws5HLLin";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CF7210E595
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 14:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729004039; x=1760540039;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=q/mo2kZruK8SCWEKDn3hDFK8vwdySGI6ciBjBmCFEKM=;
 b=Ws5HLLinyw2MwXeFFtMLpJ2jHv/SFLffoRSGMzzRFAJClEurWHKj4syF
 MXcm33aSOSPuP1wEaDI8MER2K3zAKRhDcrUVvzix0Cc7x1qh4AZgKKur1
 2e8uJUpfInTvFW7dNLn6tiwGrhntT0KJwC5bQ7EDBFH5Dd1+B8Fsz2/1W
 1lr7WiCbF9M81to2jPcOxEy3mYEE7ZP/L0LgjpB0ggxoymHmTTypx1iAt
 VvXvPVUMux8AIAXAaBe0wn94PjWWVgMzgvUJdY7w9bERwSY6wNzOGf8/W
 4kjj3+4CU3UxNgfIKIyfpsJ6x8TP0RhugdtSGtHxKYUwtrN0zeYJNtMLr g==;
X-CSE-ConnectionGUID: sDwkobQaRyauxTRWZU8Xpg==
X-CSE-MsgGUID: aGMVXUS9TnaynjaMAB/4pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="32205460"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="32205460"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 07:53:59 -0700
X-CSE-ConnectionGUID: gj1QZxu+QgWhV8cTq5lifQ==
X-CSE-MsgGUID: WOU1Q712SnSNZvU7D70bMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="78382309"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 07:53:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 07:53:57 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 07:53:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 07:53:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 07:53:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fm/gab0ZjWYC3TwfccKBi9ubsNJ8AV0Mimx5Huc6C1w2gnzu4KUwULBBcbtPIBCdx34uGp15p1Zt9yEhi0T/75Nk6JTKcdGkTqlgjw3R8GJ8A+jyAXxzpyECMMph5+0ZOaPpGAf6oRcoCPuR7HMvNOgPbg0GyrfaJHSrPafIcR7VW8V84j3j/5xlvjM9In+UmQfdXe7BKFBJSVhVlU1/IcAtlpf1WU491+mqwvDefcagtQxddMVVUCa/VrSkgMAStO//UM3Fa6HX6VQc+FI8DDBJhb2EFmj+FKd9Aq8at8s67VVinjAQpM9iUXBGn9fo5SZWiMMtelmOTA3TYAFDrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TPxSrOH2BY3vRQDXyyKOtsymKmeNRMAvi+aqjYZkypk=;
 b=lxuw8dmtZPK/KcPZgH/hIMaTT3bSP782FfpMcUU9dKzUTMqjfK04fjYLnICH1t2ejgRnOTBHcnmuvOL3TdRlVkvzLMr8gC3/V9kaItwGEDrSJh2D2e9f2LQ7gXamu9EHdGxxABfb2RRNOaKDmx+D/KCySrfSIwRwxRd/68VoMdadSPRaij1XiMv/060pkb8Wt7F8NOr5GdjbQmZluT7sg/H9gF0azpMS8/BN3V9Obd4ftJh85CsfrFdyy91omzwDAHV7EuUWqcqzfqYfRgl0+3bkFLPGdDI+U4cYCVh/SHh2t8Adz12IxLkfgR3rNjUCKY08UEEFpRdvGkxDsZgh0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB6816.namprd11.prod.outlook.com (2603:10b6:a03:485::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Tue, 15 Oct
 2024 14:53:53 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 14:53:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHbEyss5I8hhBCHpEq+5+sR31waxLKHmhlQgABJ74CAABgJYA==
Date: Tue, 15 Oct 2024 14:53:53 +0000
Message-ID: <SN7PR11MB6750AADC23292F7E8F1C3D58E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
 <SN7PR11MB67509E290DB4807E294502B8E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA1PR11MB64678E621767064D910F53F8E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB64678E621767064D910F53F8E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB6816:EE_
x-ms-office365-filtering-correlation-id: a7f20e30-0d40-4cee-26b9-08dced292fee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+p6ltSUDCv5v+V5dLNbA14SQMWZUUsUphuY75AnEkWLssm8+sDPe4bEg9pfP?=
 =?us-ascii?Q?2N8QcHOL9L+3jThUnxsS7gI8Gj/c5PWq2AX9FbY2UyTqjHTlkyyrApqJb/Bq?=
 =?us-ascii?Q?fDA36g6ZWBjpV+WtzbQPyn9hH4Ww8b9YUImFd5E06a0mAxwhBME9LzEsjEbW?=
 =?us-ascii?Q?4nUqcI3ih8JIYRbw+7Wf3CQPsxXl0az6W+QNi6AZPSCYUBADn39+hpIUX0wk?=
 =?us-ascii?Q?ZiO4xgrb+4FOtNKLx1rIcGi2dSyNDYHsTA13aOhpRGv4uYspvHbuQ9ypY7uM?=
 =?us-ascii?Q?ml3UqniuyE2yntzW4xkvmOs4M1ANRWV8li/0ae/zvR7AMi/vDtYO4kAEQ+st?=
 =?us-ascii?Q?9kTfSGFcTZcdpHaFPfVXzec256vMwXnk5B/2jBSqFC/QHh4rfIVgrjRJSlJ0?=
 =?us-ascii?Q?cv5mZlOgl8fdcqgQ5yU75MErhh6x4mBY4SIRwQ8bSp3KtftDRmLQvF5ooNkQ?=
 =?us-ascii?Q?ckGqPXNiayHGXujgSIjpDIVpOmYFTKisFlBfUoBVfeT0IA+eKqXUYYZiCJNW?=
 =?us-ascii?Q?DMWrGnVjdqaOC7ju41ZesvDBkr1/Dx0OhuraXsAJ0+1zO9zY7AeToYv5WQVU?=
 =?us-ascii?Q?cUtzcCZd89pW50V7sbs7S/isDEGCWhiu4Us5FPFkAiYL3f0Gd4IOLLYNdVTZ?=
 =?us-ascii?Q?stnDqoyHhQY/1+JQmNH7HIPIqr00D71b1gjAPQpOGaJ0QguLLnlmgXMTNSLF?=
 =?us-ascii?Q?7WGtrhjV8ieJK8V+6EPPd8tTqdM8ZYK3wJuCgenU1Ajb/2LS71uFg76vxxWu?=
 =?us-ascii?Q?S9zDkjiePeczx8LUH3MLOzUFoOCqHfjIShBL4Nt8leySCAg6RXeMPCbHfZVI?=
 =?us-ascii?Q?rXWpF+lkFOAD3SvKfQc0IuahTFgVR7/LR0nr9HgDwfd+Ie53+u/t+x6Xrhgp?=
 =?us-ascii?Q?9GozMvlgeV3aQZcjUDtb/ma1fBFfUoGsN182DhWa5oz6ucnqw6S63PEU0XVI?=
 =?us-ascii?Q?9Bmk38g/E/TluMmSnx49YoZaEDTeUb0Vtyy1tq0uXnG5MWtvDNb74HwE+oC4?=
 =?us-ascii?Q?TyhkMk5D4AB1AG0O0oz/c9l9O4MZsQJL+6Uey6ikusUfjjzc9rqHszec3ker?=
 =?us-ascii?Q?F5AkYdK9a6EBOzH80tttLz/8bBvYGzTKwF0p1sJoNY+iz6NoYRxBmBEhO+cG?=
 =?us-ascii?Q?F4/xg0iA6Seul9Na7sJCq4KiwYjkCXJYwtLJhWRCAkUy8IGPYTWanx4Ph/Cu?=
 =?us-ascii?Q?QCq4n+L3IHLfkjmClkBCV6oGVb+rhatya4S1sa1RAz3m8t+648E/u8+USujc?=
 =?us-ascii?Q?Yn7ewLMuI7war3WrFluapeL59pS+YH7m48NkkkbGoU60iPoz25miOBWVnFWn?=
 =?us-ascii?Q?WAnmJ0UwHEOArGua9R4aHFHFIxtPnldBf7EJDzejPdxfsw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T1XWhjYV3ARuLFD7vEBBDEO4irtm1VDZmApBbS6u+G9T4LEgPwcjt/xSh4id?=
 =?us-ascii?Q?vi77AM6XGw0IEngr58sPKvW/SC0a0dIlHEQ1hhXSsM5JcoXAC4ylQ6rkeB0K?=
 =?us-ascii?Q?5/3/wKlz0dJRFC/iIwpknxYWmR2F0L+AuYAkpzO9SoMY3q2jzp+ftXdE6fiG?=
 =?us-ascii?Q?sWD9Xt0nDY/B/mfPg2UFIqPGQlCDMvxFUduvGpAJjZ5eF0wpcCij7LzEaeQZ?=
 =?us-ascii?Q?TLycQ86MpCkDbpI0xI0EoKXEPsJI6xxUwcknE0e1IVBK5Cch1KGI/Sq1q8MR?=
 =?us-ascii?Q?keeQTt55uVpcvResa7l4wVpyz5Yfvw4zzIbmXomesul24cH1QqodN7pZSWqM?=
 =?us-ascii?Q?ZmXDzKJx3LXSAMugamG0VZyHplt/ZUQhxQKODHTyT5Nikel1WyV/+AG59Gx4?=
 =?us-ascii?Q?5iQ3EXiZEf/6rpUZl6KsOlAAoqj21YzHU3NgdUM+ZuLGM4FZ//ri2Hj4uLzE?=
 =?us-ascii?Q?rUULsE/ufW8LL+MBg7U6hj5W01fQRuQu8JpemaCcsQ6Ku/NM76IQlBT9zc9u?=
 =?us-ascii?Q?KBlNrOCaGVcEbzLOodM2gh2a7ZJ+Tlori8et1ZDJylbBle12K61BLneZCdAG?=
 =?us-ascii?Q?aNP3uwFqvj4zPNq8a6Dync7IxsIfX4ZPUBakAZ9+hwHV3erYr7AGG0dW5WVe?=
 =?us-ascii?Q?hzgVoT5A9GMD6sCxDdCyu0yNjuLXJS5NDWPHk0GnYC9grIH/6H6SdElL5Y7Y?=
 =?us-ascii?Q?Z+E8V2ThoqtqnH4VudoDpiaMsX+mWaAT1XscPT0jJK3diSpseIsIoMHrTgM/?=
 =?us-ascii?Q?NqzITLwq/ZMrzgNvHyIgt384KuAD1BrBEfgoSn7VEnCB1KWShDqsrvB0ah0J?=
 =?us-ascii?Q?aRUcy7cpClAZJ6osNf3zZLjhz7mQ56xVup/d3dgLx45UTFVCf+yeQnEiJurh?=
 =?us-ascii?Q?jvccU+YXj0fi1RTLRF3K7ARdh0/dZawJkq+6hcalAZRzEvM+J7cPnCi/jkA5?=
 =?us-ascii?Q?lOKa9Sa5GUCwnxJ+QVjVwNXdYUIZ5tgk39spaPyWrlEw/2vGejkRlLXfRCiP?=
 =?us-ascii?Q?j5UkiV0UzW+y7zjve/VoX8pRc7GWs7FVzzS5tIhK4Rt8keZGX7XRnqYPgYty?=
 =?us-ascii?Q?rkgO3r12pP6beiGRr67uQDgugsi2G18uMXgwxGvtXPWDsgq/sFeRX0uvoYxu?=
 =?us-ascii?Q?9jlNhZTopsHaxODGrUde3LPye+f225Ur8YwpoTItMARw9TnEb6cf4gl/0Xww?=
 =?us-ascii?Q?T7cMtGtS4UGAY5vSWCCOhOgzu7UjltkLJ0Nqe2xq4+umcPR2aMCSsCtbHRDE?=
 =?us-ascii?Q?CvEurqhChj0Vwd39j6kq38lTMQ1rdjn4pJthQd6hNuhyn1qw9kiDaOck6alt?=
 =?us-ascii?Q?Xn3++BywsHrcbX7nVfqyxFg/Bi4uBgUoG53gOyJAbp7bS+R70m5+aWYMuyV6?=
 =?us-ascii?Q?dPCxkfunndBs2OhAj4Vrxxp+oSiIgGuEX06oPFd3fETrFinkINF2RLWy1OFq?=
 =?us-ascii?Q?ppDTw2+9GAaZ04Z46bs8D73CN8l/kuUWXlhdkgVIvqQh6NBvKg+pmDkmT0e8?=
 =?us-ascii?Q?nbhzO1rFlbVycvVMrRLh1OZD9G0J+TLh3wzVKoftm9gTSKoPbWD2xv4GN72t?=
 =?us-ascii?Q?F0nChodssSaP+2+0t0dV+g6fAeIKH44T+HLDZwHB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7f20e30-0d40-4cee-26b9-08dced292fee
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 14:53:53.3021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E1qJbvwH7Xq5Fvj3XVRPB3HNRDAUtz0nbCMCHshEppda6xcvk6Y7iGilVYA2gtcQK65mrDS+NADWq5LBTtOM9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6816
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
> From: Garg, Nemesa <nemesa.garg@intel.com>
> Sent: Tuesday, October 15, 2024 6:52 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for
> planar yuv
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Tuesday, October 15, 2024 2:33 PM
> > To: Garg, Nemesa <nemesa.garg@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for
> > planar yuv
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Nemesa Garg
> > > Sent: Monday, September 30, 2024 4:54 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > Subject: [PATCH] drm/i915/display: Workaround for odd panning for
> > > planar yuv
> > >
> > > Disable the support for odd x pan for even xsize for NV12 format as
> > > underrun issue is seen.
> > >
> > > WA: 16024459452
> > >
> > > v2: Replace HSD with WA in commit message [Suraj]
> > >     Modified the condition for handling odd panning
> > >
> > > v3: Simplified the condition for checking hsub
> > >     Using older framework for wa as rev1[Jani]
> > >
> > > v4: Modify the condition for hsub [Sai Teja]
> > >     Initialize hsub in else path [Dan]
> > >
> > > v5: Replace IS_LUNARLAKE with display version.
> > >     Resolve nitpicks[Jani]
> > >
> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index e979786aa5cf..e3401a4f7992 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -1029,6 +1029,14 @@ int intel_plane_check_src_coordinates(struct
> > > intel_plane_state *plane_state)
> > >  		 * This allows NV12 and P0xx formats to have odd size
> and/or
> > odd
> > >  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
> > >  		 */
> > > +		/*
> > > +		 *  Wa_16023981245 for display version 20.
> > > +		 *  Do not support odd x-panning for even xsize for NV12.
> >
> > Only mention WA no here the rest anyone can refer to by going and
> > checking the HSD
> Sure..will do.
> >
> > > +		 */
> > > +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format =3D=3D
> > > DRM_FORMAT_NV12 &&
> > > +		    src_x % 2 !=3D 0 && src_w % 2 =3D=3D 0)
> > > +			return -EINVAL;
> >
> > Also rather than return -EINVAL here we set hsub =3D2 and vsub =3D1 thi=
s
> > should make sure odd panning is disabled When we have even size since
> > we only need to disable odd panning according to hsd not even panning
> > this return may end stop panning for even sizes all together.
> >
> Even if I do hsub=3D2 then also it will return -EINVAL as src_x will be o=
dd and
> src_x % hsub will be 1 which will return -EINVAL.
> Even panning doesn't get disable that's why I have added the check src_x =
%
> 2 !=3D 0 to make sure that position in not even and src_w % 2 to check fo=
r
> even size.


That will be fine let the code later that already exists take care of that =
since we don't
Want to abruptly send an -EINVAL in a code block where we were assigning va=
riables.=20
When it fails later as you said it will with a clean debug message too.
Secondly when you do return -EINVAL for src_x % 2 !=3D 0 it ends up stoppin=
g panning in y direction
If the current src_x is odd but panning is being done only in y direction i=
t will return -EINVAL
Hence assigning hsub and vsub here make a lot more sense.
We can remove the src_x check and keep src_w and add src_h check

Regards,
Suraj Kandpal

>=20
> Regards,
> Nemesa
>=20
> > Regards,
> > Suraj Kandpal
> > > +
> > >  		hsub =3D 1;
> > >  		vsub =3D 1;
> > >  	} else {
> > > --
> > > 2.25.1

