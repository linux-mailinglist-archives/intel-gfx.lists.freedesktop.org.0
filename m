Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 490CAAB10D1
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D774310EA11;
	Fri,  9 May 2025 10:35:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kxu9e15m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC9A10EA11;
 Fri,  9 May 2025 10:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746786902; x=1778322902;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ns9/Dj8yp48H8u7A/5Aeu8FjnTLbsuP8AulsCZdo26g=;
 b=Kxu9e15mc8xtPxzvs80JA6SATBNMRiNUBIILm8ImXn/aNDjgy0Vi3XxC
 gnN2rIRtos5eOQ+QS6+YmwA6eobMug0brJuKGuS63THr/FZb3+DnmgQfB
 y8oh7QB4q883h4AZe0325FL7RkY9SN5rOcZkDOVatzstEab6oMhE396VN
 vANZ2GprEdaYcj6YH6gvt7Bf//QBNwRheVD80TEvCVUc5rjI0wSEznUFL
 vOto7MqqzKQfx5Eh5KPzaIDCrSyBIMH39P63Y9tKG3FarJjgR1IrNHr4v
 rH38e0YHyanFfR6xwsf2wSmyjixeaFCBSsXICZVW+q+X3hfHPccLLYLpZ g==;
X-CSE-ConnectionGUID: 3ewXtEfWTFiaGTBrsQEYQA==
X-CSE-MsgGUID: ZH9kPbAKT2Oh7jtCA1x7+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="51267433"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="51267433"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:35:02 -0700
X-CSE-ConnectionGUID: j1rFfAVaTd6G9y9KR4yyWg==
X-CSE-MsgGUID: DQ92/2N+Qdm71NyC3CkDDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="141529350"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:35:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 03:35:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 03:35:01 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 03:35:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LaEYWxFQQ03Zg37Ojt6h3XungPc6xscCpeXs0Cq1lvuv+/w7bzqK0hW/saueUKH/OhEbtlWd9WBFWHUAtz3x0m1hyoe+A1GLHk56UaKtaL/TXuub53n564C6flccovrCDfk3kFLdxJXOsxUD2+4jnSErzzw5BZcbXxp8DWDifd+49CPkKWvZrP4mXTvHYcVqOH6bn7+HLVzVPSSCJsScxtwVyfonI+RmDaVD8txo3LhW/aOJEW8boiqKEvKJwLkZXwKykyghR84C9kVh7Z6S3xR/2EDYvsxodW2yvWal4HUET8x3+knTB34GJ2U7BYCVoGz4YhFHvcn/OV1amMOgng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wxlE/yGqUoBbekpWfDXs6ma/8oOoU6J+DoEFObTCf6o=;
 b=Cr02dAxA9WYQxRPJDNUXYjxiwjPkOMIo6yBWxFBKQPMZU2etY1aWpk9COZlwOpWzjHf/sBPd9ZDqANKT7f/bWwdhR0gB5dCFqoKQicQFfxqvnSXHn6wD9r32BGOqoCGY2V29J9oQCDzf+3LdQGqJnnIaVq0aikyu7fBHGuOrIiQ8ocdM9ouAKC429KcvIWcQHj7AYnbbn1Tz7S79MbpZZjdoCXuG47glyBn39vG/mTtv4D1FEcXxRqri113LJFOF054MGGhN1bTPN2ep3xyVLLBlB3fXeo+gmX68hC2oOSbE2bGfqKpFvIgHDbHyHzLaIydhmINTjcXOi8u79oPMjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7440.namprd11.prod.outlook.com (2603:10b6:806:340::22)
 by CH2PR11MB8866.namprd11.prod.outlook.com (2603:10b6:610:281::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Fri, 9 May
 2025 10:34:58 +0000
Received: from SN7PR11MB7440.namprd11.prod.outlook.com
 ([fe80::d9cc:d30a:15bf:58c0]) by SN7PR11MB7440.namprd11.prod.outlook.com
 ([fe80::d9cc:d30a:15bf:58c0%6]) with mapi id 15.20.8678.025; Fri, 9 May 2025
 10:34:58 +0000
From: "Yu, Gareth" <gareth.yu@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/display: Enforce pipeline flush with DSI HS
 transfer
Thread-Topic: [PATCH] drm/i915/display: Enforce pipeline flush with DSI HS
 transfer
Thread-Index: AQHbwMRr71++LMrNbEa36IRpYItlXrPKDloAgAALQ7A=
Date: Fri, 9 May 2025 10:34:58 +0000
Message-ID: <SN7PR11MB744056C0090F3A605CDC5251E08AA@SN7PR11MB7440.namprd11.prod.outlook.com>
References: <20250509021327.649003-1-gareth.yu@intel.com>
 <20250509092539.763389-1-gareth.yu@intel.com> <87ecwym7rv.fsf@intel.com>
In-Reply-To: <87ecwym7rv.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7440:EE_|CH2PR11MB8866:EE_
x-ms-office365-filtering-correlation-id: 088f0f20-f60d-468b-b5d7-08dd8ee52578
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WcvPnz0q9KDieMNJWfsTcHF8T3Xk9UtkthXxQI6sCTdG0KS0hRqUxBXjWC7i?=
 =?us-ascii?Q?Jd4QuDvgcPBYRI8JGGGR91GeBn0dWoEKtW2daDJZQIVwSd7FDKhQa9sxw9Hr?=
 =?us-ascii?Q?TkgjzHOdytlNEesTej9R+MwRNtbAUZGVt/z+Tu4Ow9UUq+qHIkYstcMhIKi9?=
 =?us-ascii?Q?FL4UErcLKxk8+d+Y4DoN7PU8Ni94eoc207O4yP2Lm2uwmU9MqwNoBE0/ctFP?=
 =?us-ascii?Q?dhXhjg4/CZYoe8WwPys5NgpZ4kAufKaSzgIsWsQ9c0eMcL9+cVPzApuFKuO1?=
 =?us-ascii?Q?j1kS4VK0HYPqnHS255G807oG8H04Lr2EEaCZkLMnhLCIDvuFSxV9q+LemOmh?=
 =?us-ascii?Q?eHZnNjr5IiiMMEY1+MfjVvnMvGgKXqCD4zrF4cwyGqLalfCEUmn9rAxjcIUG?=
 =?us-ascii?Q?cBksJeq+teSidlNQWlcadM3lo7/PZCsgzAxhkWTg3EY1hLXt9mufcXziwdzY?=
 =?us-ascii?Q?ZrVvL+x3WwuB+92QSc4N/LJY4qVYjZPo42NkYD0EfLK53Kn50dcq7XD1dH7C?=
 =?us-ascii?Q?rgH7I1sIMlLL45nz0GC6BSLy46LT/Dh4gg+6qrMjQD+KLOzXDCkwDbeDut2k?=
 =?us-ascii?Q?OOoZNB+eKdGwrA0fNdEPDhGEMmBn2fxfsqjUUmGt0qPCjf++bfsdcLh3bBh/?=
 =?us-ascii?Q?JiMYLP/W+4DYfTeMJGY5Z0TTvaLbwU5pNJgV3G+J0QE6v3/e6GllNkMFGIl6?=
 =?us-ascii?Q?UGNfAE/vdInqpk3GGk3Et4wLURMqQ4oZUNWFxyGbxIhObSzYIqTgz6CahPhJ?=
 =?us-ascii?Q?MOX/poo8Hmc3iCwdySBA4gqwOkuelar65YFY7vfHsYBzZ6M16MxGV+70DXEP?=
 =?us-ascii?Q?6yV8R43sUc3F5Ygj3017unHQ9/rTOgj2fg0ElnXFkk98QML0rHKq3W1mKGAB?=
 =?us-ascii?Q?IFk2b5hILnu4veIkp00UBbt/PDZq3Rl6zlfw3qeX2MZih4g6MDbwfk3ygt0W?=
 =?us-ascii?Q?4gct2ElQz3xLwAPpnJ/amcfsj2YJNSzdKHZNvwwmwujzOgAOFeZPDEwgMJz4?=
 =?us-ascii?Q?1R+NMmLazT/3s2z5/ht7U9ikumFX+ZyagOjV0ZNqTFJmOenbfITnIAHQzzs0?=
 =?us-ascii?Q?szmbLHN6dtRiay04CnYXesg8dyhpsGmcWgFzaiUjrKmVClN9aB4Oc3F0yHNC?=
 =?us-ascii?Q?z9xhcsnm9mA7NXMEpVs2acMhnI1yR3k622UeRFuc+8E0Vz7rrzCZ/B0KXSOn?=
 =?us-ascii?Q?jDv2ZxymSXajfkndtNYkcQkf7hvKYS24mY72xUs0PFY5Cq59DZ20P/skM3wn?=
 =?us-ascii?Q?UIDb+TsQEnfOnDMjn+QHDhf71W3q6LIhpFL22FtWbxucquk9dRDgmu7lOp/m?=
 =?us-ascii?Q?bxpXByeoTSrrsmEF+kEMVZqEA971tzIPXbbZal1ZgRKwJ/DLrODXafksgBdw?=
 =?us-ascii?Q?a1iaDSNLx9XponUQaQEYc+Jvanwpgy6keHUggDOl2/Kw8Tjs98KNto/rvnY5?=
 =?us-ascii?Q?wBjvk4V0GEM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7440.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TZVLhWF18B0PTJNeGq51hpmAgiVF/0xihIIGiePC5iRR9g7UDmg/7husWQyz?=
 =?us-ascii?Q?XwHhlHeuvdz/Kien+afbX2QDbxQcqL1lOJXxp043HxksFPcbhQZ34eufxZ6+?=
 =?us-ascii?Q?AYRBrEJlgVrRbw85/eEvQKvQW38ogN2zmeT5tacTfpUTiXOqkEYp3TDqwzSa?=
 =?us-ascii?Q?mP3k9rYqq39IDUk8Iz3afWx69HdJVzBrP0k+oTRBDobtmYzO3b0nmUvz/5uk?=
 =?us-ascii?Q?6k+7A/WI8xIGBihbdvDcIphkkToSrn09180E7TKe5OHMtLtRaYsE22KVlcQ0?=
 =?us-ascii?Q?T5EhUA8FVUP+7wK9MlFoGIVmvlabAnPBG2T7JGIBcsonXLeKZ30phktGdbzg?=
 =?us-ascii?Q?2b2TolQTgQ7zEBdsNWltpLqRQforgviN2hz7BKStu2964a08zB9P52UdXfb4?=
 =?us-ascii?Q?I39+txTRvKRAIOaMLmqtwW2uq9SmIq8mrwaeW8k+AUJto4X3gqjC7yD6X15p?=
 =?us-ascii?Q?Zy0QdB7AspXH+6abgBj8u8jnV/vvSCktL/bnOZ4MYFi5WO2UeGa4+wNRHcLf?=
 =?us-ascii?Q?sM4HbM7Z/OSXxqMvsIBYmP07m1uSBAe+3kifksWwJXxZIIby/8yX6lpoQBuu?=
 =?us-ascii?Q?5mIG7sP/svjNlOXAcri1oSn2u9UgePT6PDKqHe1PcSrph3CEQ4kD0BpNjLWB?=
 =?us-ascii?Q?SMhjU2OoDKuvv3Rda2lb6wgJ6cIuNb92yJ16Y71bvvTp7Qzj1ieRA1MYb/pd?=
 =?us-ascii?Q?wMguFVyXK3pzPNw+S89kiRnPY9QOhN3qmoA8XDzRH+L4r/9fNcvkLzPEVLva?=
 =?us-ascii?Q?HHqITOUAAFv9sFu/koM4AuUgHnzOV2FtKC/KqHKbYh+Su0IzS5jN993bhn4o?=
 =?us-ascii?Q?wwODk8Cv/Indx3qYxJ9eHpJZE1Ug63V6SFr3OXnrCVjHORxi5VtFGY57T7HJ?=
 =?us-ascii?Q?EG7mbchE/3NdCIE7THMobTXtx/6Yz4tL51lQL5pnLCiRDyG57Mh755FMI56Y?=
 =?us-ascii?Q?3DHVXLKU6+Llkoyn0VE7r98saT/FXgUqXKC0PFwXwK0WM0pFvWwsSbaasFBa?=
 =?us-ascii?Q?cz4JZNpcWlz5eAi3lrD2yC08dlPJDaQK2QK/W60rDn0vsFqWSwpUCrhVfO3T?=
 =?us-ascii?Q?cNSFs2+MP47mB/47iIT5EpsNuGHMpHXTfWWTHT/wcCda+uryute91JamvgwD?=
 =?us-ascii?Q?QRQMgQMUfVwRyriS03JuGKwVkMbjU3Dg6Rt2hUsWjeEEYyFzpA85OXNS5qcT?=
 =?us-ascii?Q?9wa/lnyFjeiC5YeSkZ0YKAdSgMjZ507AX/ZHS3RNnECRLTRBKYalis/G9f/Z?=
 =?us-ascii?Q?a1//51TVZGuxr/ta6zJPh1S40dtZIyt/YGcjwSfNPLiTgnF7OEsnJrm12+Rc?=
 =?us-ascii?Q?7i2CZLPgybyZIOLlkak3lTWdtJ4HgmVqjIaWQUvxZszt4ZUgT2hSLjui40gR?=
 =?us-ascii?Q?/J16b0iyjdVBZqc8EpDsD3fOLSjwZbRA7GlcUvtXAScf9O2G8TgY3ywsSzq0?=
 =?us-ascii?Q?4bWtQJN63BCfatuvVpxt+jTIbxJO/10g3J0GUCisCJ8sg586yWwpfhJGtegr?=
 =?us-ascii?Q?9q5eN7OgUpww2ZkKHa1HVU3PKQnX45wsHQVQsu/jxWnTusUpbK5KRIyEdo/Z?=
 =?us-ascii?Q?Z/nz6VWE/4TSxLqE6Mc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7440.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 088f0f20-f60d-468b-b5d7-08dd8ee52578
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2025 10:34:58.3380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ayDQYqVDmzFJYP7K72lnTzrK/QiS8ornt83f9QFPSgl/ian2v/RCICa8NzuDobhmLg4jmygDh5AQJo5TrfaPgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8866
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, May 9, 2025 5:52 PM
> To: Yu, Gareth <gareth.yu@intel.com>; intel-gfx@lists.freedesktop.org; in=
tel-
> xe@lists.freedesktop.org
> Cc: Yu, Gareth <gareth.yu@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Enforce pipeline flush with DSI HS
> transfer
>=20
> On Fri, 09 May 2025, <gareth.yu@intel.com> wrote:
> > From: Gareth Yu <gareth.yu@intel.com>
> >
> > With all of the boundary conditions when streaming the commands B2B in
> > our validation (part of the reason we added the flush),  the Flush
> > effectively serializes the transmission of each command enqueued
> > within the command dispatcher to one per V. Blank line which
> > simplifies the behavior of the High Speed Arbitration.
> >
> > So, unless we absolutely have to burst these to the Sink, we should be
> > using the Pipeline Flush bit to serialize the commands.
> >
> > BSPEC: 19742
> >
>=20
> No blank lines between trailer lines please.
>=20
> Spelling: Bspec: ...
>=20
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14247
> >
>=20
> No blank lines between trailer lines please.
>=20
> The patch subject should indicate versions, i.e. [PATCH v2].

Will add [PATCH v3] in the subject and remove the blank lines.

>=20
> The commit message should have a changelog indicating changes since v1.
>=20
> Please be considerate towards the reviewers. I don't want to have to comp=
are
> the patches to figure out what changed and why.
>=20
> If it's only the commit message that changed, then no, you are not suppos=
ed to
> post another version with just commit message changes unless asked or bef=
ore
> you already have Reviewed-by.
>=20
> BR,
> Jani.
>=20
>=20
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com> Cc: Jani Nikula
> > <jani.nikula@intel.com> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> > --- drivers/gpu/drm/i915/display/icl_dsi.c | 4 ++--
> > drivers/gpu/drm/i915/display/icl_dsi_regs.h | 1 + 2 files changed, 3
> > insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 402b7b2e1829..f91f27067768 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -191,12 +191,12 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host
> *host,
> >  	else
> >  		tmp &=3D ~PAYLOAD_PRESENT;
> >
> > -	tmp &=3D ~VBLANK_FENCE;
> > +	tmp &=3D ~(VBLANK_FENCE | LP_DATA_TRANSFER | PIPELINE_FLUSH);
> >
> >  	if (enable_lpdt)
> >  		tmp |=3D LP_DATA_TRANSFER;
> >  	else
> > -		tmp &=3D ~LP_DATA_TRANSFER;
> > +		tmp |=3D PIPELINE_FLUSH;
> >
> >  	tmp &=3D ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
> >  	tmp |=3D ((packet->header[0] & VC_MASK) << VC_SHIFT); diff --git
> > a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> > b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> > index d4845ac65acc..b601b7632339 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> > @@ -272,6 +272,7 @@
> >  #define  PAYLOAD_PRESENT		(1 << 31)
> >  #define  LP_DATA_TRANSFER		(1 << 30)
> >  #define  VBLANK_FENCE			(1 << 29)
> > +#define  PIPELINE_FLUSH			(1 << 28)
> >  #define  PARAM_WC_MASK			(0xffff << 8)
> >  #define  PARAM_WC_LOWER_SHIFT		8
> >  #define  PARAM_WC_UPPER_SHIFT		16
>=20
> --
> Jani Nikula, Intel
