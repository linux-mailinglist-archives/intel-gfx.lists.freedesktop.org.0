Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BACC190D94F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 18:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A2A10E71E;
	Tue, 18 Jun 2024 16:34:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RZOSI/Qg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27DBC10E71E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 16:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718728441; x=1750264441;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YWWlnmK5iG4ZZsERbFO3kheeb9A9u02W9WVD1jp3XSM=;
 b=RZOSI/QgNiORPF5DEupQKHVPLm0u9r8cGIwRcw0VYTJuqioyaeys/bQI
 6pJCKcFBFQUWMMA4UqQAUNA7rNHTLfHMrTHQz1Tz/lRy09lQiQ2jmM9XO
 mThzrtIOmNJbhye8BgKU954ccVQSWque6suO6VoRFmi7wnripsa2TGJaU
 W2BtEaDVMG4KyAK0f9eaCzXjV22UO32TFy6MD0CsMwwTQXiMDMjsdwcf+
 wM7KHqVdcgLt0wOVJ/B0mrm1GHfhRPR+sEQqRLnQ9tWOty4lXC4WNzljs
 He4WK5f1nAir4/gwaV/gkn3LAlmRWyKEmBt7lrGqjeboaff0PeYalT9js A==;
X-CSE-ConnectionGUID: g7hGtgJHSQeszngH8ZTaEw==
X-CSE-MsgGUID: NXaV/LaTQg2hxnWH3aNC+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="41031806"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41031806"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 09:34:01 -0700
X-CSE-ConnectionGUID: HPIrL6+kQ6WyIVQ4UqiDdg==
X-CSE-MsgGUID: MoNvbSKVQiO+VqnwSIWKQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41560479"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jun 2024 09:34:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 09:34:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 09:33:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 09:33:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 09:33:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ThgiXN1CjmX1LPltqNWSrp+x85x55norMd4vtvkk2/LqnOdSnad3HipjeVA5LK098uRHB7wMyMFNHRKOE+hzK9et5NEyAqVml6JnhiHMF/88xaqXyLt4/cHcjMIsT7ERnylNVcDIUH7Gk43Ubt6H5UyrW8Ac9tnCpBPfk8HrM2dAmmnk8ceG54r+A4u9L9x3JRUSHHkd8mEUm+N0oM5mfmtUN60BaCu+1O8przHO9PtgIPf/U1MsRKdkXwFfFCoJdGtcQakAuKmNtD3UUH3QOL8dnGOW+eYIQw4KX1/Q++8jWMWfs0KlFviQtX+UoLlEvikwiSb2/vazaDJERfHAog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HtgRghwZgIE/PtMttloiVptS2MSe9kgf5UrmMI030AA=;
 b=ZcOIARz9CQT29v3lMj5AWxmbihdYUoeAWJm8JmLJLXMwJkjlBzmuaNchu18VxaEd6i6ivKUkXZKq5VKlgWosUcf8cJuP0rTFhz3JrCUk6t+a3g6puRt5PBYEP0moQwI+0oEeasDzhl0eFo6HslQftw7T0eeA9+Unb53Lo3nmhxLRoZOCU9e71Rech+OOkXMr2XEb40A/INHI4N8JW1Xv/TyphtSgi51L562Xem1F77BeBVGaMcIOhzhpPWhEt+3xP5R06U2Jk+TT/mO8Pr1+BFTA2ZsO4WA6G1snqqUWpoVClmYppEZ8LNMFhCJf8hlr4nxHemqVxH0zlwNerZNF5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by PH7PR11MB7498.namprd11.prod.outlook.com (2603:10b6:510:276::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Tue, 18 Jun
 2024 16:33:57 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826%5]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 16:33:57 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/5] drm/i915/dp: fix the Adaptive sync Operation mode for
 SDP
Thread-Topic: [PATCH 1/5] drm/i915/dp: fix the Adaptive sync Operation mode
 for SDP
Thread-Index: AQHatbZxTnJ3JaNa+UCsHxuKlJ6pgbHNzsfQ
Date: Tue, 18 Jun 2024 16:33:57 +0000
Message-ID: <CY5PR11MB6344A6E0B6BD23BE0472C1E0B2CE2@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
 <20240603130319.1594872-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240603130319.1594872-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|PH7PR11MB7498:EE_
x-ms-office365-filtering-correlation-id: 9fd1d59d-46eb-43d5-63d3-08dc8fb47370
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?SwXdIuuE3d95cNX7zuAxtNzuVwLhgOu25MNhEbdrAHc7DUA+DyHOt0OjmJs8?=
 =?us-ascii?Q?vvhwpOQ94SphNedjslBmhda/yoco532akrY2dKu00WlsK/NWQ6CtZ0M985N8?=
 =?us-ascii?Q?RKSJS7WYcNjVQ7U97Sr2fWb+i4NAB6lkqsPt0pNzt04gUIMI6dvTZbXP3CUx?=
 =?us-ascii?Q?eyeZNebY/XUI4OEL7JtF8SFO4Te3oq2Thr23SogyZrhcRwj24fCHODlAxoMZ?=
 =?us-ascii?Q?sIkfAesA0PDb2/HorbdNBqMBsg2zmkWn+NH2exBycuAGLmvQT3p1Vh1LCsCu?=
 =?us-ascii?Q?VJFOaohUENjHaDNXe9cvxr6HWVIPID5MTOUFoOBapo30eLpDD3scq47VbTit?=
 =?us-ascii?Q?gOT44DFOV94sEIHoFzUwUv5ZHIZ4Rsnd7r8Gsr0JIfdbzK149mcIXQxhlJX3?=
 =?us-ascii?Q?j+DIhAEPrceo63bDTaQbJPWeGoH9TMQdiKgmUdEvS1U5fzEeloMk7GKIWtPf?=
 =?us-ascii?Q?8pHCDMXd1l2P6sSTRUbpMAq8zQEpnH5YxBQ9vPdBIkzbFgvCocxMdx5TLbRa?=
 =?us-ascii?Q?pIUgwgQtRNFbP9umHjzDbB4tbtrxal9Nj3wH4E5sMdL/X7TQpFmmkfpRDqQF?=
 =?us-ascii?Q?tTG7SeC+gpW6Yy3bqFAlY9RuZvpz+AihgQxJKtsuUrUuoUouApleN2LDGOi2?=
 =?us-ascii?Q?JKOpxcdzoSZaU2W9qsNpd31grEJRHSgRCi9sBcCf9JB20DWaJJu2oWv2kf44?=
 =?us-ascii?Q?sqjoA6Lw+F4mXYGAyTjEnt15VAlIfpU5Z20vRRtgD9EAA/XYlMbid9y8JtXo?=
 =?us-ascii?Q?PT3/i18jryLmIu2MVG4ALotVCQes1W332FUTOhlc3qMY+qOvDEhQ9UHURkYQ?=
 =?us-ascii?Q?lAXgaSATICinI3LcM2EZmUkpf1ySwFx7ZyK/4M+gA9xjCc8PgBictXndn9Vd?=
 =?us-ascii?Q?RCAxvkm26ZerOYkLRETVrFFEkHbiXzVY+07SS8oOo62mjb981MPZxPbYP1I1?=
 =?us-ascii?Q?HEI6T44Gwi49gzXjGbGY/ozGRu8b0nPjC5qlQhgknHSX/ivhNgiugQRvAp4e?=
 =?us-ascii?Q?zqJfQcu7jnYxdJtKDrmnuVRU7WicjOqn/U7yfUeGv5sbOLpWXvMR35TCdPfF?=
 =?us-ascii?Q?X+hFx78HxIOxF7U5sHgZxW7GnkObA31simdHFGeZlbyC7FIdJs7NlivfodPh?=
 =?us-ascii?Q?1gJihz9kCOpyfXXHGQr85H4Nx5CmiwXxI0T2euFcQ3/0fEFbzvgwM9G/yzA2?=
 =?us-ascii?Q?EEvHE+L6HrknLne73TbYg+/hnmmtGAgFPbuoyFLBn/pMxOwPXymaD7umB+LA?=
 =?us-ascii?Q?Mbu16RA1fvPNy0tE2gzLRMCLsLQKogY6NxiYh0iRg69UfHGH76jCJtH5sHNj?=
 =?us-ascii?Q?udBziIGG+54sE/8ZWtwvEIKPQuRTVOoFc4L6xtyYWTmokZAlz1qgV81gsm1y?=
 =?us-ascii?Q?17K1aXU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B3M6YggWASmQ3Mbt3D6FjRJbLjWu2dCxdfix6kQGKuEstj9qLEYjkHuDhx+O?=
 =?us-ascii?Q?S0MOzQJEShWjNaSI4Jlb0zwSm+iwa2kju+zEQAryGyoyjTRWduIFF+18b2Wg?=
 =?us-ascii?Q?iNNBdpEXvgh6ZQzMu9RDAzqwze+cCnJL20jP+TjbeUzPvPKBGS/+bEE26gpu?=
 =?us-ascii?Q?CUaCzi+gCiH1RrLnv75BvPCgkFdQM/fF8w0mi5XcdscsmsStSiQM4WTEwYh2?=
 =?us-ascii?Q?/xGK+EuztazRJc96p6GIEoxR7H4eot2SamwK65w1aUfuBpY928LRPVRNszuA?=
 =?us-ascii?Q?/LKrfZaPyaBiMFy01FFw/Jyz/8O0vdP9mnFgTGeDJ87GHQexejFzgvg7dNsR?=
 =?us-ascii?Q?uM5pDzB7Lzzcr2yVR8B+s+5FzvMv4F2AUzQnG/1/Kj2Gt6mB1WRsHgDWPh3c?=
 =?us-ascii?Q?CaEQeukUZBCfxgApigQ+78rArIORttVW4k4HZAR0Lh+BI+IsGW6K4Cycxa0C?=
 =?us-ascii?Q?YwcQ9xunKlzSJr9HGJc80BRuB6PRHAa0LhYBVEOVjr27ucw5W0Pqiy58XUqV?=
 =?us-ascii?Q?8cfgb2Fo6wu398WL95mm/IABwZ5YC2jklAhBdj0ixgoKc4P48Z+LxO/c0Osp?=
 =?us-ascii?Q?r5tgAcoKMzIqF2MzK4sPiTzSqpOo7XQBSGT6KbV4FSWYS5p5JlaB4zgmduCU?=
 =?us-ascii?Q?w/j8XUZQHAwj/0cDeLCzcGr3JIQUhA9CyhcknNE7PuqdfdL4HO0wyqQCe7gx?=
 =?us-ascii?Q?sxgl3do/8cyZyEXaC4nlbk9Mviw/Xp8s5nuWaMyNYBP9KkEc1gfap1/9NGjT?=
 =?us-ascii?Q?TCxlLy4rhm/4WD5Y4HPd50vJVfllqTno8tg3ZLs2S9eFH9oiv6dIw96lI50Z?=
 =?us-ascii?Q?j5THYvjPeMfY/10t86hZjbgZI4bLJRe9kjv7KCuqJigHpxRUlSt3QllKcTu/?=
 =?us-ascii?Q?/FupQOdBvdlrxen0h8UNympUQq3TFsFLidfC3dTPZYThfnaW9kFwq7SF/AwM?=
 =?us-ascii?Q?q5rYoUb80AAFCRuKRPo+9rgPe5kwjJnTPphjZSgji8bZZbbF1+QzwEc6WvAD?=
 =?us-ascii?Q?bz67Wt6CHt56MoPLAXwr4NJkALClgvSJ+XlLNY17jmyHqaqvzzbmUFIj+WSf?=
 =?us-ascii?Q?JGkH4c19Tx/8TssaspGSA7yXXjkVgIUpexDCRj2gRGlbpQoJluS24V3brBDL?=
 =?us-ascii?Q?sQiJKIDvA3CWOtncHmnfltIexSvuyUaYCHEiP9Wj1LTZQiPNmF8MZDwVd6KO?=
 =?us-ascii?Q?/0KaSAooCxnGSNSeljoTkriDDWdtv/vpyIFvmOpg/KrmUtkTrRK9fbHd9bVC?=
 =?us-ascii?Q?pwT3sYfcBWlr1iaIVxr9ZWMFjwjV0b8sPe5stS3pQhaVkVNVQetL2AMdp+vo?=
 =?us-ascii?Q?T1UeT76MeLzPFeP4F27ZEHF0DXJzCb6jYpqBiYib+FQ1Hy61DWMXMQoCmEYp?=
 =?us-ascii?Q?WzFy5nb0dCa66dsraEqRrx7+M2bPZl5QosOU9w9DXn270lHKuEVf7zFPCxRO?=
 =?us-ascii?Q?iqWf7jW5slXYp6bRWGxEzkdSRGWxAHnNnB+OM/FhIV7sN3hYez1G3RsBMVtL?=
 =?us-ascii?Q?SC52oMl0Ks6q8snHu+i6hv+56ytezGrOouZyyYBfK8eJampUeMCsNJq7quB7?=
 =?us-ascii?Q?O9IHNG8/iqMrJBPG0bsIzhk91YZD4uwPn4bqzi6u4eDrspCkravLaNX8GWUb?=
 =?us-ascii?Q?Twb4zZ2mQ5RuL5APZY21gTs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fd1d59d-46eb-43d5-63d3-08dc8fb47370
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2024 16:33:57.3212 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J50VTX/ijUk0UqhKvgDPVs4nVdKmrMwh+xlwQgu0CZwU7cxeYKZ2UXUuNpxbQtiXLO6on/SPFjNPgRnZUbaXlEYFOc2azOnjuFSpl4xSXR5Mmn1OEdbwIs6Fy0bK9i03
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7498
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Monday, June 3, 2024 6:33 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH 1/5] drm/i915/dp: fix the Adaptive sync Operation mode fo=
r
> SDP
>=20
> Currently we support Adaptive sync operation mode with dynamic frame rate=
,
> but instead the operation mode with fixed rate is set.
> This was initially set correctly in the earlier version of changes but la=
ter got
> changed, while defining a macro for the same.
>=20
> Fixes: a5bd5991cb8a ("drm/i915/display: Compute AS SDP parameters")
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index fd054e16850d..f33b2da1b084 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2634,10 +2634,10 @@ static void intel_dp_compute_as_sdp(struct
> intel_dp *intel_dp,
>=20
>  	crtc_state->infoframes.enable |=3D
> intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
>=20
> -	/* Currently only DP_AS_SDP_AVT_FIXED_VTOTAL mode supported */
> +	/* Currently only DP_AS_SDP_AVT_DYNAMIC_VTOTAL mode supported
> */
>  	as_sdp->sdp_type =3D DP_SDP_ADAPTIVE_SYNC;
>  	as_sdp->length =3D 0x9;
> -	as_sdp->mode =3D DP_AS_SDP_AVT_FIXED_VTOTAL;
> +	as_sdp->mode =3D DP_AS_SDP_AVT_DYNAMIC_VTOTAL;

Changes LGTM.
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  	as_sdp->vtotal =3D adjusted_mode->vtotal;
>  	as_sdp->target_rr =3D 0;
>  	as_sdp->duration_incr_ms =3D 0;
> --
> 2.40.1

