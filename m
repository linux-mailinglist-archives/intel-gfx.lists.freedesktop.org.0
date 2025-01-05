Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 019E1A01BCE
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Jan 2025 21:34:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AF2910E12D;
	Sun,  5 Jan 2025 20:34:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ffvjqPR3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D0610E108;
 Sun,  5 Jan 2025 20:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736109291; x=1767645291;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OvA523XCGpoKM+aB5IE1I479qbEU6J4ZWxZnNb+Ywy4=;
 b=ffvjqPR31z9pqGWOVlG6p9oD0UxHKa9D3NdHy/XyqXf9lwcUhsnz8zkJ
 CqJNCT+va2K5+H+X5QFx3YBNgEVw/8oePAGPvGC3TWjkWwuJoncmGtU2u
 ZanD0eULopgGB30CSP86VCCrnzaWxWCcVjnASXMpbyOueBlzPZIowS/s6
 TnLI1Jkh/ODJqoIMybCy4DGlSh0QreKFGGyId3WULLcSe6msSPxAPKdfv
 gO7Fr3imNgct+BUrJ22mAV/EUtRWHcVValTCl+pSGe4H9y3FswYjnOMOf
 r+m8qfY5bbOnqepVjIKdlhX4nteHkUonXTmlquD6TynLqjFsspeixXZQX A==;
X-CSE-ConnectionGUID: g+HKIwjLS3KWM0lYBmG/cQ==
X-CSE-MsgGUID: XTKzmnDwQIG5NGV3HJ7FsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="46932128"
X-IronPort-AV: E=Sophos;i="6.12,291,1728975600"; d="scan'208";a="46932128"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 12:34:50 -0800
X-CSE-ConnectionGUID: RNMIC2QCRwKgA4B1Q95ROw==
X-CSE-MsgGUID: RAvNE6lFRxGHDIjVFcrwZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,291,1728975600"; d="scan'208";a="102147000"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2025 12:34:50 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 5 Jan 2025 12:34:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 5 Jan 2025 12:34:49 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 5 Jan 2025 12:34:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DdGu6DoSXE7EjuGRiVc96IVU8dFLYkqUr8WesPltjZ9yqPORA/ID+ehLtIUAoZGm3lQVyzAYEfIoxg+LfIAXeDBAJ7ykc6h0+aZ/dx9hWe175k5vCOsWGUnzVnYE1LzSMiChCjhOJsVvmj5rQfom5h9fGig9ZtPHvm+ufZX8KA4OYln6RIzU+q6kj4PVmc/Kr6Hvn0A21Z3WmNE749O2c+5brj75F5csSZf/9porVXHRsB9rQxZF4i1ns1vtz5R3ZPGT5bchB77Ca9AUYnI0OrG66CnmTkuSLgslopydiCli+VMPBRn6juhQ1zcQy8IlsyO1iSUHbVCW1OexuRA/mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5JnH4eahy31PclZyPDbrz188sH6r8YFxyxyUGRBcUPQ=;
 b=OHI8MUfhQ45x9mfo4IQQShMJsMNSICbMCdF5DP9sbD1dSo2Ug3vxt89tphUxHhbjl/ugUyg5zdju0uTM7wVS0CGHMDrkyJ75xrsWB+la3D/cr94Ot9AyLs9Vzcoe2XH54Nol+VD7sk0EBHplPM1mRSn3IXmX7NFrtr+znZPmjhv9yem66tezBkJfosOEyS8tWzyEazlNC3Qbm7fWqveLjJ8tDK08MRLU+WzVWADE8ttGy9024HUHBkRVsSQcgwwaFCDMmN+kh/Wir+xc8cNje034rXInZJjUM/8bXJTGqryKUSBxVAQz3ISI/fLpyfy8T+UQMFjDxDH1b8p+Ij7esA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB7021.namprd11.prod.outlook.com (2603:10b6:510:223::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.16; Sun, 5 Jan
 2025 20:34:43 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8314.013; Sun, 5 Jan 2025
 20:34:43 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [RFC PATCH] drm/xe/display: Program double buffered LUT registers
Thread-Topic: [RFC PATCH] drm/xe/display: Program double buffered LUT registers
Thread-Index: AQHbS/mmkcPpo5woKEuxkz3jEeSW6LMIydxw
Date: Sun, 5 Jan 2025 20:34:43 +0000
Message-ID: <DM4PR11MB636009B557A7A3669D76DF80F4172@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20241211181830.3348155-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20241211181830.3348155-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB7021:EE_
x-ms-office365-filtering-correlation-id: 34337308-37cc-4967-06eb-08dd2dc86306
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7055299003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HomSgml2wxKhTwMyLpgZEDYtEOEuR85atw3S5qk7FQdyu7A07aPvhcS5ZxFm?=
 =?us-ascii?Q?dHIF/jrruM1Tk4om06xfQCQlwFz2asRuZX1UImUgObQafRs9Y4RrCE8cTJXH?=
 =?us-ascii?Q?P1q43xihwvlm4pa2XLun8cA0AT4en/kbnmWvMl2W8rWMy0RQF/QplMOO4Rlu?=
 =?us-ascii?Q?B7Euujhosnt6YQBhhaCAfY96PXLm142MCI5PBrliDawW1hb0xbbQU1MJusbe?=
 =?us-ascii?Q?1dnoX2NHYugw2pNh0mFtIMZPUtDmPGgEtC3xA+Ol9ci4b8X9Xj47LMdLd0Wv?=
 =?us-ascii?Q?AGSBWSgRReBDjqikmZu+h7kPJ1AZypUczDa4UMkSrnYFNqTCq1hPJYnkFqVI?=
 =?us-ascii?Q?xBeHDIUYk4Q8gIeBRyH8DEAbXIPt4ZAT6R4tzqT2FTOUk6OnK27byQ6dIR+U?=
 =?us-ascii?Q?Ec05Ecd/DcWULT4s8M1MCDIA3inPMWr1rUn8nfaOEPKwn1l0NpEhI/wsVgAJ?=
 =?us-ascii?Q?muhb69ub7t839rstbdCvwBZG8t2ub+Pnv0uxBYIflAC8nlD45jNuNS8aIKsZ?=
 =?us-ascii?Q?XVELB2otP7SRsb/cNwglpzc4l3UIIuy3T1mTaz5rmPD+DRNweKZr/xgZt04V?=
 =?us-ascii?Q?IjfhQe6OMtGllmIro3vruiJAQT/HJXA1tqbyMLgZDDDFYuk3KLD2RQIyVWTv?=
 =?us-ascii?Q?ZhOd2NtPkVEk/ahIsvwH2gHUzeN02kegsTBCKHe7rJia9yqsAI5up24DmU5p?=
 =?us-ascii?Q?21LTX267WH4pKeJKCXZN9EO8aZW7MmXSoq9j/QaQj91nU8Bhijb6uYJSrsHE?=
 =?us-ascii?Q?0Zi8rOMDiwX4Rnef5xMJqHXJxceZ1ziKnXEyPbJepDP/krxpaeDy4rxy/Aw6?=
 =?us-ascii?Q?6V0QvB8ub2F2NbFDMKtiYh0JzrZAcPuWz2SYuxCPIz/Uf/KejjQ6GbOdNejX?=
 =?us-ascii?Q?Rfhgks/pmowq0CLItoyhKUTAjv14eaORZvYZ36JulfWGRrBrHqBdeLXaNRtD?=
 =?us-ascii?Q?/VgclvkRwKCQ+vMLKoaPZvlu0nmNCgm5rFC0/brcJsejcUyw4QoaeC6ANteM?=
 =?us-ascii?Q?9k/W5nMBUmV8Emy1M4W3aPTkk1RHnDapCcM2bwzP/rWXG5mqnSxXToisgV+4?=
 =?us-ascii?Q?RMGSCmjwoMlKgW3uV8Q+GbOEWIgXPpomIV1cufuU9WDepCFfGAhnUJmtgczn?=
 =?us-ascii?Q?OtY80Qwi9xlI6qlfCofI4EGilvcPVAAr6bKsDWTcYJ81eOMHQ8kcFrS47tRI?=
 =?us-ascii?Q?sbqBw41jO2BBls8wMIzlSEMZI+0XLRSn/Am3yX5auKusW0pGQ0B3kojsDnGR?=
 =?us-ascii?Q?B9OLCm0XA8ibMcduBKA1+yMgpOmv4Tntt3bhA2wyJ3VyARUi7tkkwJqMXQYh?=
 =?us-ascii?Q?yQZy/wl1FUx7opd9MDYzTf5T1V65IoodXr7GJDcXAcp11V3hyfA1NQExmNXG?=
 =?us-ascii?Q?+cDX5GdLsgsA+T6JdRbgFKJi9x7kco1wqijRy1oPrwtTKwMbXEpuXu36uHgW?=
 =?us-ascii?Q?AuYF/wzKuoZ6JvhBVjOytRPAo3jzu9nrelZWGW+QOphgDsFrGoLoMQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7055299003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IBbcWip3evzocMWvVOxcGBhAViQbxebkvx+hNSDw/1fYuBUyx3bTKkU+7aat?=
 =?us-ascii?Q?w1FwdBHkpsPcZGQvei+/2T4YicKHBXHvkuudRpl5wWX6LXJc6/AoFCxnrVar?=
 =?us-ascii?Q?e762w0mEd8E23wVoILmfPL6MRpBfFCwqv0eRof4GE96yZuyzCeseQ2yFtPi+?=
 =?us-ascii?Q?mf9Yjve7BoEM96je0jlyUuXPUoD+d1U7KyTn6bYDEtjtPGJhxO3VmfKVqc8C?=
 =?us-ascii?Q?ydOUlbGW2d6D6pOAZAS0NM/V+mNcVPVJQkKKOnUBDtTmcukms7mZGfMGYJAM?=
 =?us-ascii?Q?0HrYewV/Y5UwVl6pwTsYLxHeYXLkdPqULQDiRLN5rMa6muT5BlVvaMRJrI3J?=
 =?us-ascii?Q?ItMtSU36Lq1k0k/vtYMzCnrZM4uTtlxLg/JAEqx4RMsNPRweqVagEZOLvkIw?=
 =?us-ascii?Q?yxsh547eEh8VwgCVYwnz2H2IiOu8fARZYUkfVN0V0HEsHPgVCCrtsZzoLgMF?=
 =?us-ascii?Q?RXobPPOUhLicjdHkq+po7R0wWVP0Lb74CUtyR7R+4tdpESuqSim5yNisYHII?=
 =?us-ascii?Q?lIolXk12NMMCE4+0cdxADs5rUKhlFZElyXEmncXoEzpQCn0+g+5ENc10Qlrz?=
 =?us-ascii?Q?OHiSNr4A9/fROWjvNkvZY1yJvbU0aE7vBFoU/e1Jlw4Re9eec+7TuOZundSS?=
 =?us-ascii?Q?to9CfnJDwRUmgKTycw+orYIJz2NdOpTPYJKAD6YQ30rLdSZK3ev82/c81bii?=
 =?us-ascii?Q?YKDRiXDHxiGRtv5tRrYUbWjCSv6B7d1cwZzBJfjSFzzJWTf9VeVdmdfyoAiB?=
 =?us-ascii?Q?K2dsATGmteDFMCpu5siTfg8shz4cFRWelMncFeddmpjyPuQw58HMwBDLNSRV?=
 =?us-ascii?Q?VO/Ng1lab0YkM5yooLsBOMX3MMd3FkhOBQTjiq3GQp2hm3KMaij7OdqNGx6B?=
 =?us-ascii?Q?ZO80n+v5Jz4uVZETwF24XvwvA/lRPWdYTzuyfG3cC5kZ2614ArrE1bPTH6qh?=
 =?us-ascii?Q?vMdhL8ie5kJ+0tFu9QKj8jNdRC0XK5J31szU971Bas68qhOa02wChHFUxGbq?=
 =?us-ascii?Q?0atag7UKGCAAh3e1fvl0SskOf5iYVEUqjwKNMdbky5xMW0uubF+vzLdcOb9m?=
 =?us-ascii?Q?Z8cXqoFHTJ0fwWjAwCMuBCai5LQXrV7zGxWBjfXFuArnzXxr/ZMDaUu2Uury?=
 =?us-ascii?Q?vWTBMAJcC7sG9aB9zA8rdth0HNU7GNaVBBHoUJO6C6f6G2T36B06ZKMijRNX?=
 =?us-ascii?Q?/lA77MaICUYfhYJw5zu9ycvPntO/a1x0my6lKfxW3RcYRBG6VxlaFLiwGoLi?=
 =?us-ascii?Q?Is7yok3kunQpw2rqs6GFv5p/EIx0VbvJ1PRirXs/7qLSvagnOiGEew23WM9r?=
 =?us-ascii?Q?mdiVItJDD9FY4QIXR5A7fyZyAVg4C8BNyv5BAN0Umt/0MZ23e+MMRn6vcQdi?=
 =?us-ascii?Q?uAars7MXQFE20QKuzpnONn1OtbBtJQjuXaAAih2FBsYLHI54ggM8B3t+qrNx?=
 =?us-ascii?Q?ufwQtGt/EmIvduzB9OWb7gkx66sHzDbO96aFCh740l26VNx0WnLC2ap0csYL?=
 =?us-ascii?Q?dSdIFPT7zwIErktr2uUx2itbKp8XWqJ5aE8R0Kggnju52ImXL0RikG7itOfE?=
 =?us-ascii?Q?05u6krwYp0HGlxdhhiomvbeujZsHQxV7jzoL5nES?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34337308-37cc-4967-06eb-08dd2dc86306
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2025 20:34:43.4496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qY/mYkLiJ3HjAgvWP8tH3BNNtt8Phuym+k1gIGdXODaMwHl7uAK1YCLajK3ub+RGks6kXLoL5RVTDiwwaMdkMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7021
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Wednesday, December 11, 2024 11:49 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; ville.syrjala@linux.intel.com;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [RFC PATCH] drm/xe/display: Program double buffered LUT register=
s
>=20
> From PTL, LUT registers are made double buffered. This helps us to progra=
m them
> in the active region without any concern of tearing.
> This particulary helps in case of displays with high refresh rates where =
vblank
> periods are shorter.
>=20
> This patch tries to incorporates LUT programming to the noarm commit path=
 for
> PTL without making significant changes to the color callback framework it=
self.
> DSB0 is still used to program to non LUT color registers (for ex. CTM). H=
owever, it
> does not chain DSB1 to program the LUT registers. Instead, it is programm=
ed
> through intel_pre_update_crtc path.
>=20
> LUT programming is also disabled in the vblank worker.

Approach Looks Good to me. But we can still use DSB to program the same in =
active or
Is there any limitation ?

Regards,
Uma Shankar

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c   | 28 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_crtc.c    |  4 ++-
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  3 files changed, 31 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index 7cd902bbd244..513b2718bf5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1911,6 +1911,16 @@ static void chv_load_luts(const struct intel_crtc_=
state
> *crtc_state)
>  			  crtc_state->cgm_mode);
>  }
>=20
> +static void ptl_color_commit_noarm(struct intel_dsb *dsb,
> +				   const struct intel_crtc_state *crtc_state) {
> +	icl_load_csc_matrix(dsb, crtc_state);
> +	if (crtc_state->preload_luts || intel_crtc_needs_modeset(crtc_state) ||
> dsb)
> +		return;
> +
> +	icl_load_luts(crtc_state);
> +}
> +
>  void intel_color_load_luts(const struct intel_crtc_state *crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(crtc_state); @@ -198=
0,6
> +1990,9 @@ void intel_color_prepare_commit(struct intel_atomic_state *sta=
te,
>  	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
>  		return;
>=20
> +	if (DISPLAY_VER(display) >=3D 30)
> +		return;
> +
>  	crtc_state->dsb_color_vblank =3D intel_dsb_prepare(state, crtc,
> INTEL_DSB_1, 1024);
>  	if (!crtc_state->dsb_color_vblank)
>  		return;
> @@ -3842,6 +3855,17 @@ static const struct intel_color_funcs i9xx_color_f=
uncs
> =3D {
>  	.get_config =3D i9xx_get_config,
>  };
>=20
> +static const struct intel_color_funcs ptl_color_funcs =3D {
> +	.color_check =3D icl_color_check,
> +	.color_commit_noarm =3D ptl_color_commit_noarm,
> +	.color_commit_arm =3D icl_color_commit_arm,
> +	.load_luts =3D icl_load_luts,
> +	.read_luts =3D icl_read_luts,
> +	.lut_equal =3D icl_lut_equal,
> +	.read_csc =3D icl_read_csc,
> +	.get_config =3D skl_get_config,
> +};
> +
>  static const struct intel_color_funcs tgl_color_funcs =3D {
>  	.color_check =3D icl_color_check,
>  	.color_commit_noarm =3D icl_color_commit_noarm, @@ -3989,7 +4013,9
> @@ void intel_color_init_hooks(struct intel_display *display)
>  		else
>  			display->funcs.color =3D &i9xx_color_funcs;
>  	} else {
> -		if (DISPLAY_VER(display) >=3D 12)
> +		if (DISPLAY_VER(display) >=3D 30)
> +			display->funcs.color =3D &ptl_color_funcs;
> +		else if (DISPLAY_VER(display) >=3D 12)
>  			display->funcs.color =3D &tgl_color_funcs;
>  		else if (DISPLAY_VER(display) =3D=3D 11)
>  			display->funcs.color =3D &icl_color_funcs; diff --git
> a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index a2c528d707f4..cb02af401085 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -429,10 +429,12 @@ static void intel_crtc_vblank_work(struct
> kthread_work *base)
>  	struct intel_crtc_state *crtc_state =3D
>  		container_of(work, typeof(*crtc_state), vblank_work);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>=20
>  	trace_intel_crtc_vblank_work_start(crtc);
>=20
> -	intel_color_load_luts(crtc_state);
> +	if (DISPLAY_VER(display) < 30)
> +		intel_color_load_luts(crtc_state);
>=20
>  	if (crtc_state->uapi.event) {
>  		spin_lock_irq(&crtc->base.dev->event_lock);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 35c8904ecf44..a0bcffe470e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7203,7 +7203,7 @@ static void intel_pre_update_crtc(struct
> intel_atomic_state *state,
>=20
>  	if (!modeset &&
>  	    intel_crtc_needs_color_update(new_crtc_state) &&
> -	    !new_crtc_state->use_dsb)
> +	    (!new_crtc_state->use_dsb || !new_crtc_state->dsb_color_vblank))
>  		intel_color_commit_noarm(NULL, new_crtc_state);
>=20
>  	if (!new_crtc_state->use_dsb)
> --
> 2.25.1

