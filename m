Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 405B8A4DDFC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 13:32:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E80110E5AF;
	Tue,  4 Mar 2025 12:32:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SjF7gtvY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BC0510E5A8;
 Tue,  4 Mar 2025 12:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741091571; x=1772627571;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m1el8pCb+XOooRvPe7wwNKczNntSmw90r/RTcpfgavA=;
 b=SjF7gtvYM/Ix4Lxywp91bgcR59uNAcJjkNPeaOK0idGE7agdywq/2cEh
 Sa7sZpq25LlJsiv0rSJHZa5C60qrlU97Dvj3ADWHxISQNvcKnPQIBSc9V
 PMXoeP42WBLchNUyu+DrDDheK3BbtLYXmAO1dZOBjsUrO5XhgcJAcNukr
 njhHwqyS/B9uvqLXrCw4ii5Ju9WJQsTNMcnXzAxr0GkTiZuO6G58tK6N/
 tGbD5l0wiyFfByLN+CGqYGaws2I+gL4+vHybMVEsNct8FFpKR22hfF552
 KpZVMtUhrSHEPBNRwaoRBsZC6mI5Dc5Lw1toXvoMzdT5ig63SZ3rU5HFw Q==;
X-CSE-ConnectionGUID: PSeHPVkSTGa7rWaeLz1FeQ==
X-CSE-MsgGUID: RQRgtt1KRo6q3Ox5jU37NA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="64451974"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="64451974"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:32:51 -0800
X-CSE-ConnectionGUID: VbU2QIYhSVeo8VRvOi65eg==
X-CSE-MsgGUID: WdfxwRgSRTG4R/NT+N5guw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="119047160"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:32:50 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 04:32:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 04:32:50 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 04:32:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dzx6UFolbMi3RxhFpH9WRmAfb03DWks+nlTccvtGP8D5xYiJCdmwkTSW5x0WMqc3snyiwRBBfg+VynAQGcCVsj1Wf7+BTNZk4LXsqr9DcLkwNXFgOmAdg7kh0zUUsjt9NmuDW0HjJAixKM8a0MBN2kwv359kEsDLmcm8tkDWPkQ89FAjNcVmr53fjLlRMD0T+dPQyRdzeCsUxPCLKDoocdJEmV/O1xf23NAtzbUnq+f+Zyh3IEegchtV7GQyPvnYRcHXO7I6UxBJdqLbko0vSEYRN9hbjvRStljlzODi8bMq9Nec8kLvBEqqjrRyxZIXOeuRO30EE7Ucmf1SeGWM6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/78qWaXIV6ag1vJTcReyOk49HHIbnLySkY9Edc2M7ZU=;
 b=At5xMsRLvKAJ+gJFWFANIKKBt61yK3UdX3DXel44wfRxWk4sbqtx2nkGYh1WtPynsdedakuS0SBD0T/K8ysCjSj24jO3SjJtQ2uHHUmap4E8hpF61ad7FjS5MhHK3A16FShQRR2cZbpGKxbkyHiioRngFR4hRlECQW66ljPYn1pVjV+RQvoWPSE0k5v8owYdbSCZrN6xJ6R6VZ2wGYuLEfpI/O7dNKOeuZ62xOyRgut73SLnIiqVomH1/7b4kq6vy2x75cbki2QtXTNX6nbVukyMJQm9v9wbHTRoFnIZVjY6mpRdjF/PUeR29xWC8U680Oz3vcPHZeFZAu1EfGdwrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.26; Tue, 4 Mar
 2025 12:32:33 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%6]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 12:32:33 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 1/5] drm/i915/display: convert various port/phy helpers to
 struct intel_display
Thread-Topic: [PATCH 1/5] drm/i915/display: convert various port/phy helpers
 to struct intel_display
Thread-Index: AQHbjPAbj2bW9RtZWE2pPQXq8GdXGbNi6Q3g
Date: Tue, 4 Mar 2025 12:32:33 +0000
Message-ID: <IA1PR11MB6467AB7FBE50BBE169078214E3C82@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <cover.1741084010.git.jani.nikula@intel.com>
 <e28e53bad5014ba3ef17431557b517f1b8530963.1741084010.git.jani.nikula@intel.com>
In-Reply-To: <e28e53bad5014ba3ef17431557b517f1b8530963.1741084010.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|BY1PR11MB8005:EE_
x-ms-office365-filtering-correlation-id: e984d3bb-3ef9-4ab1-024a-08dd5b18a393
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?36iha//pGkEyJ4GqdFyQfNnBa+xzcwRJokGAb4PD/ziTTNPUpLzne18Q+jDd?=
 =?us-ascii?Q?pLfZRFGToavAI71IioZ8qAV5K1GjEmX5wS1HmvB7/e+fw6FzmuuKmbb8z7ui?=
 =?us-ascii?Q?b3qq881wJMiSbDx3oR3WEsX1Ak17M5mXGM7Jr0oGjsaZBGbnRQG38Co/3Jlw?=
 =?us-ascii?Q?EPrmygh2my/63Q0oVbBZt8mVWFMn1lOc44N7urfPj3bDJ3wTbfNJAVd2RYni?=
 =?us-ascii?Q?7jsJ4P/HWJTggM4roFdIdgEhFVwmaJBrwMbcCeTZ3YgpMJ+jHij6mbr1AAtk?=
 =?us-ascii?Q?oOFNx4m81Dh47YM6NQD/qxP0U5WCLs3KIPAq5pOVLvu/0TIBISn5tIlRPVhb?=
 =?us-ascii?Q?VnctYzuPmYKx9Tb56O5UpItJzwTV5IzRmIu24PSPjCZash+PiuEMDz0wJC3K?=
 =?us-ascii?Q?j4HX40+4x9MIJemYoumtvvRApJHRMRH0wMpL7okCM48Lbpr6ZiP6S6Z/Nacg?=
 =?us-ascii?Q?F/3tzgGfr+MrJk46ChzteKCBq0okxrLRkpNBa5CkBb8aZrZD5zDOeVdl7+Xw?=
 =?us-ascii?Q?HXvE+b3EfX1qaJ/MDXV/0ddjN+y3CyfhVKFAtuoe9m4uhXqrQzFParP0TliL?=
 =?us-ascii?Q?MbJiLWOq4j6vXkR7Fn8jTWoEeTvy/Wb51gwQEnufY14HIAB7zgTHVHa4NVE6?=
 =?us-ascii?Q?xJnMrIMC2INqsMf3HxdTY/TUNwRBGOURk7ER7pgOBN4jvqZCFBZbp6kpCYsH?=
 =?us-ascii?Q?E8MPvoxdQMMt29R2tt48xOkEAipQTips2NWuwKNMtuLmBPUJRzdqrtS5rUdT?=
 =?us-ascii?Q?rVQCDTfShVGQrn+l7Y+oU2VLog0jDSxC3q11a8nWli8c/WAdJRzpokdoYDZr?=
 =?us-ascii?Q?Tf0+14tFiqk0PKYGdOSZuLI1rd/V6eH1qAKELGtmRhTHuAPa4iOXX8yMDRxi?=
 =?us-ascii?Q?8fjfEbATlavErrConL60LnYOTJcQ5X+hgNPxTgwhR4M55Jb3Gka8YWqf4yy9?=
 =?us-ascii?Q?ruUpFvaKxtfO3CxFL4+i6haWTr+pp9jrPCEXQQuh5sk+7g/8GQarz1DXov6O?=
 =?us-ascii?Q?pS67gf/ZXCjGrt+nh8c4/xvYedDrgvDdb4TQibJM83BoQoJ56dR9s7oPQqKC?=
 =?us-ascii?Q?npsfbbfzaSo+pLDZwIakgHiFmCRuhI6XFNvV32e/+7mpzhYv1vUt5ST8Qka+?=
 =?us-ascii?Q?BpF3RG5EdkPMfGqYA4b3rXywfThoKYkEh0Km0cft0LoBNGF7zkyYl5p6dtEi?=
 =?us-ascii?Q?7nxN0QuKorRYDZyZzC033EqXRN6NEmTODFaLYzyzVg+Pgtet8sIsD+rDKGoW?=
 =?us-ascii?Q?ng+hzrCmro9eETmeKHwRDcxW8LP3ypkkXmqnSyirHakb8NUSlRFpqTwl2uJj?=
 =?us-ascii?Q?nQvzK9xYFjsE4rPkLn8M5dGD15H6cexJOnsveIRsX/JQlZUfer8jmNXfOFif?=
 =?us-ascii?Q?iO9Xvc1MN1H2kBqKi0ypTg73c+tIGRffmpTM/27QWk1KpFhUemmsWOVENab7?=
 =?us-ascii?Q?MksJHDOk/J44zm1snLmeTPH7c+ltBg4f?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TKO4P16+NzhMHV1EMldckaV8jwzUwbBKnL5QIrqyPRUpVI9IfJP9hX2bCyPs?=
 =?us-ascii?Q?I7bWfZgNN7hcXaDFNmGfKoEkIa301Xt8lCHWaS249h7lRX8CIbQXiXPU2u4O?=
 =?us-ascii?Q?DkLN8w/TSj2A2M0KBTRimaGqQf5tt2y08eVfZ2I3K2nOk6xpzK0ikoqI0MJt?=
 =?us-ascii?Q?qJF9P8U7J/Qqt942+1EzOoVpUquIEO6/l+g/r3pA98zWtDSf1c2v0RhJmOTy?=
 =?us-ascii?Q?4zfBOEHEj50MBsSbw3lshZ3i79vEsUK01bzdsMOfktugrJWlaihFXii7Qsk4?=
 =?us-ascii?Q?ISIA1S2GWA0aMyxiIZK8bYVtQukUwQ9CeFcBJA2ETJI/E8cCIHOplnC/nYDJ?=
 =?us-ascii?Q?NAWjKmWtJog314PZDTjNVEQC0lCoiekIueLiz0lqpELv/6tKWiYP8ocjQbQA?=
 =?us-ascii?Q?80+qrTeSKXDHrIlPXOtKnEwqggOg9SNk5YPFpEDQjGiXs7gEfh+QxVd1pkvA?=
 =?us-ascii?Q?EwpftOemjvPLYm5Hh2jkfeFMIzFfyoKonFimz8hzKZX/OVlN5+XoPj1TqlgU?=
 =?us-ascii?Q?sr9yjkqgn/FHdyX32tIqV6GVlWwi7ENh2CJ6wglXxd/XW8J4WboaMzTmDAW2?=
 =?us-ascii?Q?XREps6LVz9zf719JvVIxmbQXArKw4+XTFrXBnKOfaR0IdqAFsvGluvIQisAs?=
 =?us-ascii?Q?Mlcv+FCJy1/gO6V1yrP47opDpb4J0oOQiq3JGzMxBYAVL5uKEvBsYbM4oCb+?=
 =?us-ascii?Q?HHm0xeItEAhyYq3mfeowWS26EOM/G1AYQPVBN/P9LmctGA4mSdxCMgsTcSQ3?=
 =?us-ascii?Q?mH7vBl/Xh/IzR/c13oqyEobdmUjytLaz2c4sozNkPtbDW1d3VBEkC4uiQ1hp?=
 =?us-ascii?Q?d2Zm3u5eLaghgQ1TlHtMWiWM+8LGjwBb4qWd/1LNSOWRfn5YjqlqcanDXVRh?=
 =?us-ascii?Q?c4ISaoWGzcSFM7ZpVaPbN7bmSgO1mcDn+xXCAlC7QwO5rrBUegnd26BqXp0Q?=
 =?us-ascii?Q?hvcDPmbntYTTFlM1WiVZRaM0yA+tfU99l5LLc/H3hdPIkaJMYGq2pHflboGU?=
 =?us-ascii?Q?a75FkmYeW63PUM1gq9WuVXBJU4W9kpquUBSGYPfQniZUM7vAcYL7ZgIbWQfj?=
 =?us-ascii?Q?cGvHFKQb1dfi1v55qFQkDTYvZhSkxyx0izUjTSe1IIZx+UnQk25/ZKWWpBFT?=
 =?us-ascii?Q?sBESdy1u/tiWukiIepHLDrQOBCFyXe3os5YFw84KVD/jJN6GRtPFiQ2kByMc?=
 =?us-ascii?Q?XkkWZjKUmU+c7Dkdnc3GlSpbdv/YelEYEMcDb6wb8CYk1lpRLrmDsUXHTr0A?=
 =?us-ascii?Q?rqCL82wDZG4JFqYpiobilqvHMakgi4sLKRyxlctsH6tfTxXfBTww2vZmnnjQ?=
 =?us-ascii?Q?isgmoXUmd6cObXOEFXGnJ0+jCmn574Tk/P86qz5zFNvr/yjUA2SNN5tZF3kJ?=
 =?us-ascii?Q?AyZaJA2yVW/3Zoopwj1kpeaSJYue/udpA+Q3yDB427H3Dtf91rhKljvR1AVI?=
 =?us-ascii?Q?S7PEq47gOCZCH5QF2QUTStPShK7XUJQPs68EVo43DOQ7eIwgG1YNSu3S/VW+?=
 =?us-ascii?Q?/O+4imVaa033DQVmml2UnCpE1tu0Q/5moCeKkQA2yleXJhTt7Pz9YEjv9+Qb?=
 =?us-ascii?Q?Itzbv4FJXAaIBiCM20aavgGUxizd95Zer9jSppxt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e984d3bb-3ef9-4ab1-024a-08dd5b18a393
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 12:32:33.8079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cWDETYa2CXcbLJoDfAtr+odr73hRpmYsHzG9F7URKOFe0Pl5vBzANliPf6AqIa5aL8bHzwgRlE6fPU6FGw2VQQ==
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Tuesday, March 4, 2025 3:58 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 1/5] drm/i915/display: convert various port/phy helpers t=
o
> struct intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er. The
> intel_display.[ch] files are too big to convert in one go. Convert the va=
rious
> port/phy helpers to struct intel_display.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     |  5 +--
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +--
>  drivers/gpu/drm/i915/display/intel_display.c  | 40 +++++++++----------
> drivers/gpu/drm/i915/display/intel_display.h  |  7 ++--
>  .../i915/display/intel_display_power_well.c   |  9 ++---
>  5 files changed, 31 insertions(+), 36 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> b/drivers/gpu/drm/i915/display/intel_bios.c
> index e0e4e9b62d8d..a8d08d7d82b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2902,7 +2902,6 @@ init_vbt_panel_defaults(struct intel_panel *panel)
> static void  init_vbt_missing_defaults(struct intel_display *display)  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	unsigned int ports =3D DISPLAY_RUNTIME_INFO(display)->port_mask;
>  	enum port port;
>=20
> @@ -2912,13 +2911,13 @@ init_vbt_missing_defaults(struct intel_display
> *display)
>  	for_each_port_masked(port, ports) {
>  		struct intel_bios_encoder_data *devdata;
>  		struct child_device_config *child;
> -		enum phy phy =3D intel_port_to_phy(i915, port);
> +		enum phy phy =3D intel_port_to_phy(display, port);
>=20
>  		/*
>  		 * VBT has the TypeC mode (native,TBT/USB) and we don't
> want
>  		 * to detect it.
>  		 */
> -		if (intel_phy_is_tc(i915, phy))
> +		if (intel_phy_is_tc(display, phy))
>  			continue;
>=20
>  		/* Create fake child device config */ diff --git
> a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 20fc258a4d6d..3b7ec0be9011 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5100,7 +5100,7 @@ void intel_ddi_init(struct intel_display *display,
>  		return;
>  	}
>=20
> -	phy =3D intel_port_to_phy(dev_priv, port);
> +	phy =3D intel_port_to_phy(display, port);
>=20
>  	/*
>  	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
> @@ -5160,7 +5160,7 @@ void intel_ddi_init(struct intel_display *display,
>  				 port_name(port - PORT_D_XELPD +
> PORT_D),
>  				 phy_name(phy));
>  	} else if (DISPLAY_VER(dev_priv) >=3D 12) {
> -		enum tc_port tc_port =3D intel_port_to_tc(dev_priv, port);
> +		enum tc_port tc_port =3D intel_port_to_tc(display, port);
>=20
>  		drm_encoder_init(&dev_priv->drm, &encoder->base,
> &intel_ddi_funcs,
>  				 DRM_MODE_ENCODER_TMDS,
> @@ -5170,7 +5170,7 @@ void intel_ddi_init(struct intel_display *display,
>  				 tc_port !=3D TC_PORT_NONE ? "TC" : "",
>  				 tc_port !=3D TC_PORT_NONE ?
> tc_port_name(tc_port) : phy_name(phy));
>  	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> -		enum tc_port tc_port =3D intel_port_to_tc(dev_priv, port);
> +		enum tc_port tc_port =3D intel_port_to_tc(display, port);
>=20
>  		drm_encoder_init(&dev_priv->drm, &encoder->base,
> &intel_ddi_funcs,
>  				 DRM_MODE_ENCODER_TMDS,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index c4b0ec60fded..9d4f2dacbbce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1834,20 +1834,20 @@ bool intel_phy_is_combo(struct intel_display
> *display, enum phy phy)  }
>=20
>  /* Prefer intel_encoder_is_tc() */
> -bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
> +bool intel_phy_is_tc(struct intel_display *display, enum phy phy)
>  {
>  	/*
>  	 * Discrete GPU phy's are not attached to FIA's to support TC
>  	 * subsystem Legacy or non-legacy, and only support native DP/HDMI
>  	 */
> -	if (IS_DGFX(dev_priv))
> +	if (display->platform.dgfx)
>  		return false;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 13)
> +	if (DISPLAY_VER(display) >=3D 13)
>  		return phy >=3D PHY_F && phy <=3D PHY_I;
> -	else if (IS_TIGERLAKE(dev_priv))
> +	else if (display->platform.tigerlake)
>  		return phy >=3D PHY_D && phy <=3D PHY_I;
> -	else if (IS_ICELAKE(dev_priv))
> +	else if (display->platform.icelake)
>  		return phy >=3D PHY_C && phy <=3D PHY_F;
>=20
>  	return false;
> @@ -1864,17 +1864,17 @@ bool intel_phy_is_snps(struct intel_display
> *display, enum phy phy)  }
>=20
>  /* Prefer intel_encoder_to_phy() */
> -enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port=
)
> +enum phy intel_port_to_phy(struct intel_display *display, enum port
> +port)
>  {
> -	if (DISPLAY_VER(i915) >=3D 13 && port >=3D PORT_D_XELPD)
> +	if (DISPLAY_VER(display) >=3D 13 && port >=3D PORT_D_XELPD)
>  		return PHY_D + port - PORT_D_XELPD;
> -	else if (DISPLAY_VER(i915) >=3D 13 && port >=3D PORT_TC1)
> +	else if (DISPLAY_VER(display) >=3D 13 && port >=3D PORT_TC1)
>  		return PHY_F + port - PORT_TC1;
> -	else if (IS_ALDERLAKE_S(i915) && port >=3D PORT_TC1)
> +	else if (display->platform.alderlake_s && port >=3D PORT_TC1)
>  		return PHY_B + port - PORT_TC1;
> -	else if ((IS_DG1(i915) || IS_ROCKETLAKE(i915)) && port >=3D PORT_TC1)
> +	else if ((display->platform.dg1 || display->platform.rocketlake) &&
> +port >=3D PORT_TC1)
>  		return PHY_C + port - PORT_TC1;
> -	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
> +	else if ((display->platform.jasperlake ||
> +display->platform.elkhartlake) &&
>  		 port =3D=3D PORT_D)
>  		return PHY_A;
>=20
> @@ -1882,12 +1882,12 @@ enum phy intel_port_to_phy(struct
> drm_i915_private *i915, enum port port)  }
>=20
>  /* Prefer intel_encoder_to_tc() */
> -enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv, enum
> port port)
> +enum tc_port intel_port_to_tc(struct intel_display *display, enum port
> +port)
>  {
> -	if (!intel_phy_is_tc(dev_priv, intel_port_to_phy(dev_priv, port)))
> +	if (!intel_phy_is_tc(display, intel_port_to_phy(display, port)))
>  		return TC_PORT_NONE;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 12)
> +	if (DISPLAY_VER(display) >=3D 12)
>  		return TC_PORT_1 + port - PORT_TC1;
>  	else
>  		return TC_PORT_1 + port - PORT_C;
> @@ -1895,9 +1895,9 @@ enum tc_port intel_port_to_tc(struct
> drm_i915_private *dev_priv, enum port port)
>=20
>  enum phy intel_encoder_to_phy(struct intel_encoder *encoder)  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	return intel_port_to_phy(i915, encoder->port);
> +	return intel_port_to_phy(display, encoder->port);
>  }
>=20
>  bool intel_encoder_is_combo(struct intel_encoder *encoder) @@ -1916,16
> +1916,16 @@ bool intel_encoder_is_snps(struct intel_encoder *encoder)
>=20
>  bool intel_encoder_is_tc(struct intel_encoder *encoder)  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	return intel_phy_is_tc(i915, intel_encoder_to_phy(encoder));
> +	return intel_phy_is_tc(display, intel_encoder_to_phy(encoder));
>  }
>=20
>  enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder)  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	return intel_port_to_tc(i915, encoder->port);
> +	return intel_port_to_tc(display, encoder->port);
>  }
>=20
>  enum intel_display_power_domain
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index bc9a5a14ca6a..45d70d3e1041 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -426,7 +426,7 @@ intel_mode_valid_max_plane_size(struct intel_display
> *display,  enum drm_mode_status  intel_cpu_transcoder_mode_valid(struct
> intel_display *display,
>  				const struct drm_display_mode *mode); -
> enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)=
;
> +enum phy intel_port_to_phy(struct intel_display *display, enum port
> +port);
>  bool is_trans_port_sync_mode(const struct intel_crtc_state *state);  boo=
l
> is_trans_port_sync_master(const struct intel_crtc_state *state);
>  u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state=
);
> @@ -465,10 +465,9 @@ intel_encoder_current_mode(struct intel_encoder
> *encoder);  void intel_encoder_get_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *crtc_state);  bool
> intel_phy_is_combo(struct intel_display *display, enum phy phy); -bool
> intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy);
> +bool intel_phy_is_tc(struct intel_display *display, enum phy phy);
>  bool intel_phy_is_snps(struct intel_display *display, enum phy phy); -en=
um
> tc_port intel_port_to_tc(struct drm_i915_private *dev_priv,
> -			      enum port port);
> +enum tc_port intel_port_to_tc(struct intel_display *display, enum port
> +port);
>=20
>  enum phy intel_encoder_to_phy(struct intel_encoder *encoder);  bool
> intel_encoder_is_combo(struct intel_encoder *encoder); diff --git
> a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 5b60db597329..8ec87ffd87d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -549,10 +549,9 @@ static void
>  icl_aux_power_well_enable(struct intel_display *display,
>  			  struct i915_power_well *power_well)  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum phy phy =3D icl_aux_pw_to_phy(display, power_well);
>=20
> -	if (intel_phy_is_tc(dev_priv, phy))
> +	if (intel_phy_is_tc(display, phy))
>  		return icl_tc_phy_aux_power_well_enable(display,
> power_well);
>  	else if (display->platform.icelake)
>  		return icl_combo_phy_aux_power_well_enable(display,
> @@ -565,10 +564,9 @@ static void
>  icl_aux_power_well_disable(struct intel_display *display,
>  			   struct i915_power_well *power_well)  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum phy phy =3D icl_aux_pw_to_phy(display, power_well);
>=20
> -	if (intel_phy_is_tc(dev_priv, phy))
> +	if (intel_phy_is_tc(display, phy))
>  		return hsw_power_well_disable(display, power_well);
>  	else if (display->platform.icelake)
>  		return icl_combo_phy_aux_power_well_disable(display,
> @@ -1829,11 +1827,10 @@ tgl_tc_cold_off_power_well_is_enabled(struct
> intel_display *display,  static void xelpdp_aux_power_well_enable(struct
> intel_display *display,
>  					 struct i915_power_well
> *power_well)  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum aux_ch aux_ch =3D i915_power_well_instance(power_well)-
> >xelpdp.aux_ch;
>  	enum phy phy =3D icl_aux_pw_to_phy(display, power_well);
>=20
> -	if (intel_phy_is_tc(dev_priv, phy))
> +	if (intel_phy_is_tc(display, phy))
>  		icl_tc_port_assert_ref_held(display, power_well,
>  					    aux_ch_to_digital_port(display,
> aux_ch));
>=20
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> --
> 2.39.5

