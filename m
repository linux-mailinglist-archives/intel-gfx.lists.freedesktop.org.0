Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C199B974FD1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 12:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A4810E7C8;
	Wed, 11 Sep 2024 10:39:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eopMYIPY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6303C10E7C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 10:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726051178; x=1757587178;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g+sVyyESz/0lJgQlu5Plrn/RjTE/ZEMF02vKYuL3SPQ=;
 b=eopMYIPYi0S7wr9l13ccDfqE+gV3PK6H97hzFnC0ZkdG3TopeAtSz6pf
 CyoqdLQJK89BCU58Wx/ZUxsmTVyOLDQqfa2dlXlG1QLnjYbT2zsgmrXed
 EgaQhZxym5fRhO3xy+nliC170l/I8TtKYfZGK+CdYvcTTEJWimPdkbJgk
 i8ZXMdQXVzHP5yUx6g/zrzePlOO2VGL3jFIa2Uau9lolYnYC49wlBtWk1
 S7stfV8EMWc793N5ooWqAzZurmF/bGvIRuDMsRYUAy+YQedapxaZZcUy2
 y44zbDF/k379rHzjBZADMDr7pi4DkyCPwUDRcUl7VBrecN5uPcvzwQiej A==;
X-CSE-ConnectionGUID: g3H5FEvESj6F3fO6A/IQDw==
X-CSE-MsgGUID: NakH+P1kQ5Gs7+B65fyLZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24778423"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="24778423"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 03:39:38 -0700
X-CSE-ConnectionGUID: S5B62o6kR0622NmUQffA4Q==
X-CSE-MsgGUID: XR/KYsyNQ1WB+ICUyDFP2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="71935518"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 03:39:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 03:39:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 03:39:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 03:39:36 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 03:39:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ts2fBZEWCsB2cum825IfEQ712UlZcbJecnILQ02PEX62/gu90NNNeJeM24Za7PYAiXVht8cgnTBITSMLeyUXY4j6LqvBjHmXUB0W2geLr8OJYzKybUrXn2JetHrYzUm61sTDC5g87/EGEpyGL9uxRO5BWFUJ9Y22dSFrMkVr3gl2esuOy0ulHCqF0PXdwJqlU9BgiF0EszTm41iJCulIdPz0k4FxVn6MKOerG3ZK8oJ/maKBB53fE6G2wzL5BT/TYHOP57U9pjF0wclcgGHs0gozoDSa5wQcEZaepIHBqfJhNPfhEZxKCkVOLPILXpphQpalg07ji3p1t+J7dKOboQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eFrWFekQM4DkTLayhDooDNK410ENwcxo8R3cIeyZG1g=;
 b=dcU+zJ1IM6dzbCGeaPcX0lf31tD/TFOMIVUgkjwS7UoiniXqObWrxv6tr49SVVa3e6n/SCP50ZdkJBLamAhOCq/9NwYCzkTTqDwj/5b0Xy+NKvbG1He2lZQ25b8XYYVwofo+dR2q44SV3kncZbGBgYlmncQ5MlXN6clzUnkMvlVWyOupnCjTlTHbfWxHT12J1rv588gJ9/oL4voW9JXp8yNFTpKArTzgXbzcnVXzoaxvl8tDXiSTz9FWEPEazbB7kMNSCIr+Rqr23CWSe3EBenKWiZuLREjuC3pmPl6+nukF846qMhHlo3kfb9LMyKeJ04qJIaZYzyotwTo2OV73tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB6498.namprd11.prod.outlook.com (2603:10b6:510:1f1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Wed, 11 Sep
 2024 10:39:35 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 10:39:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt
 reset
Thread-Topic: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt
 reset
Thread-Index: AQHa87WjyiTSKjH1EEm81XxRn9zPBrJShOeQ
Date: Wed, 11 Sep 2024 10:39:34 +0000
Message-ID: <SN7PR11MB6750371DA9740D7C829173A3E39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-5-arun.r.murthy@intel.com>
In-Reply-To: <20240821102349.3961986-5-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB6498:EE_
x-ms-office365-filtering-correlation-id: 412fab02-1ee6-49ae-9cf0-08dcd24e06ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ANy7dbMDhk6uZnv6ImDSKYolSVUrP3wQxKkebjGbpiD0qn90bOS15Bj3bWT7?=
 =?us-ascii?Q?NYlCTTuqLU2xkxa2CUq3a2k5S1cJ3QFNGxtV0kLt9P2pwa/3NR3eVBRtQtfP?=
 =?us-ascii?Q?IUrhBPAb86FuXNIy67y25HbtEZRk/8znPqYZFTPgRZ+RN3Ze5CgssxDDxytt?=
 =?us-ascii?Q?Bk4Vi30rbchyfZk07Qyi6qaUrjDJrvyJ5G2OPWkczXWtiCvuoHgCnzscxVaB?=
 =?us-ascii?Q?meB6aIAnB6ULVRh2qrLGHZh09wyRuFBQ9LT1d3HUR15pQBGRqECPaDXrgCAU?=
 =?us-ascii?Q?iCGyPudJPX8c4X+MG/JUc2XESx38tc8H+W9nM7B0vUXvLEk9jIJfM4djLxdH?=
 =?us-ascii?Q?Lnvc/3nyFGdB8Y91/Brl18ajBl28bRuglQ7Lb0S0ZoPBu0CO7rfPRhEaj29J?=
 =?us-ascii?Q?Hjb8dguDy/S/C02Qw8lTZ3xs5AidqzEw+UEcrOjq8evK9Ev6gnSXxJFIgZ/M?=
 =?us-ascii?Q?1VV2qinxGSJFqRGH7nIodPjvY1IH1aaZuNywGcaEM94SMfeAAlY5OZlhomA0?=
 =?us-ascii?Q?xo38c1rR8vhzUoZGJRYMpr+7gOkG2hG73cVx1Oe9PDYFtozssFATdH3SFwwB?=
 =?us-ascii?Q?2sO/VINk6RAk9ngZRSCVa3gkesYzxJ3IZrLS1SW827nRCwwryzrzVRCLEvjX?=
 =?us-ascii?Q?2liy8LSrWwfApwFyfSEcSlb0QvwBhFnKSfxnxMSBmRCN508qinlo+zzGBbXH?=
 =?us-ascii?Q?SuMmtUY1BuaadOuynH+N+8TiQ6f7wp/LV75JzIatooFk/psgy6c/9wdk8Tu2?=
 =?us-ascii?Q?klRC5sATl9a9h/CezyZpFSCI6fQzcG3dh9/c9JFI7KaqG6nsun/71HWRQ/eN?=
 =?us-ascii?Q?QOAUXfy6p2BMSu1k7GfFqgA3Gsuzc68gBY/mxDck64OrMXQ8VnP2ad+WfkwF?=
 =?us-ascii?Q?YeHCeOR0Iz41mLWHANliQkOUUi4YsCqwBx/mWxJM1Pj59FDq41uKGmtfPHcQ?=
 =?us-ascii?Q?W6qh7N9j2PbD1tJ3zmZZuBZ9MCpH3/5ouhp2fU4jU2hAxqSx5chnjoshfjjK?=
 =?us-ascii?Q?UnompzcV8PHFtTH/xN3upI56JZq1WdJ0rxu+C205QaO/BwJCmD5wTbe08/Y4?=
 =?us-ascii?Q?1ebG/ghciaBKEspy2507v2bJyu19DkWhPfPHjuh6NSQIV5ZZihBeWb01IDtH?=
 =?us-ascii?Q?hY9xnIbreqWNhe9IWmt3dspq5UdHqUCU6a55AGBIXk/zIdHK982XthvlJ/0I?=
 =?us-ascii?Q?hDl4fVYuVH6UsvosnYWBlrYqH0emmW/8/oq1ok8sUXYMG9UAfYQmfLcjGXUq?=
 =?us-ascii?Q?Rvggcvjoszjnl8mQx8piQ3AzVy1dBFSwhHRsSJkMKVBGh95NFxJ+q0WFAZFn?=
 =?us-ascii?Q?zCo8ILcErOzF1zWPJ7SDJpa+14NCBDd5ceZ05+9EMw5Upmo1iVG8gIIolHrE?=
 =?us-ascii?Q?nNT8VK1rlIo/CNfUa/ihHEbgI6Jr6eqgjIDFslua9EkgBFq/mg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9C2Gerhrcx0/LqPFGHrN8ltaafvrlhmcT8bXArjjfYRNQVTzNqi8GxVCnNWp?=
 =?us-ascii?Q?zRVAdADG/DJ5xUrPFOkMMHas2MNQy9QkHtwurRoGHFnJyNasl8SKKTs7Ah56?=
 =?us-ascii?Q?SjIlyCiLt4y6dcoqE+ei+5Cv7jOqKrekQc8ARzRRVMengoESOFKUWl/k6Oub?=
 =?us-ascii?Q?o4yfIKOFukUCKnMzpe3GXwJba420gLIEBCT2U2MLD/oFXi3rIcZ0caHF9mMx?=
 =?us-ascii?Q?mkmed4epoYLY2CBMYFeTju1fd1R13ufboaVL0vrHMLqlpHIPZxKb7GLV9WyY?=
 =?us-ascii?Q?8Jdc4ZIG35+rEC4KtuncSvsUpXbOFf2RB5Bquin6tF232+n9QJJtiITOAOtA?=
 =?us-ascii?Q?/AzGf1AyM93EffkBEw7DpTgXQcXz8s6qzJNSF1UL+k1kc7w9icLrZlEkT68F?=
 =?us-ascii?Q?oGMsAByypMrYT+UQkjlM61ZKWhBIJ3F9czTXuVDK9WGAG3G/h4v3ei7wmrt/?=
 =?us-ascii?Q?a3WN2jBuESmDKwqiBoejmVqRCJYTDPE5bCpGueXesdCNLsiTP9veL0kxKEKr?=
 =?us-ascii?Q?UV/JErHyP0rJenbrXQYD04duRKH+k213KYMmNb4o0JOrU+r44BO7uKiV6lEv?=
 =?us-ascii?Q?p8Ho01lXPmbpvF64wEJz/A1ttZZlBALwu+MlExuXXjptwGUDI5LBySC8hOIy?=
 =?us-ascii?Q?EWsj7CQ8MdRh1o1SfE/Lx24LsKmHgqI9LZH63nTNrzFfCBNj7vcfY07d9OnY?=
 =?us-ascii?Q?RiQCUmFII040M5H8j45PMxRbawyc4s7NJxbGL91CXB/uU+JGfnkTY0c2p1QB?=
 =?us-ascii?Q?jwBS0Wn0h/4/vyTwzip/40Ut3k6fqr/gII/WWXaVSH3PkxrscinwP09XF7Mm?=
 =?us-ascii?Q?4dHjNkcenZVkeTs3PLlSQCLThnOZE68Wx92qSvKTf3PU76TX+DnJA27rQAyx?=
 =?us-ascii?Q?8/v18Tb/93/6LsDZvPD3O9ewl9tRUwlZtMwO8xRTKTX5gxuwjZACNMChSPsX?=
 =?us-ascii?Q?m1Nehn59ZaVtMXl09cSw5AAgl8J6DyEXSLxF/H4G82SypMHYuhCAKGGGl28G?=
 =?us-ascii?Q?Cqz8KWTvN9EjAGwQUepsGXwn8jxhAbb5vU9nquIUoHWFUDHu3txwYdQAm0/t?=
 =?us-ascii?Q?v6FZJHolqDRoZmJdbWldLiedz6yzS0U3ZkH8YkMVH0Q7xTf9Iw5X0WEwsurD?=
 =?us-ascii?Q?CSIrLIKk4Tx8dU0EHR6A8EFW8Ee5xBUeH1hj2NBOYrnDDmSWIFmtD1AvAn3M?=
 =?us-ascii?Q?f94NUZ7t03EbbVM0iCfj7npA/6SmRW1GCSc2ye2knU1ljGcpa87HWYcxATvY?=
 =?us-ascii?Q?oJ+Q25Cvd4d9khsFvO4aZtbT99p62+oU7EZGwYs8j4/6LUJAkH61tsRCwlMT?=
 =?us-ascii?Q?A7IBUl3RW5gOsDYGTunnPEembAaIzvVRVmCth9A9Oxv96jrZJRfSlXEWydMj?=
 =?us-ascii?Q?TSl5LEj5A+PiD908u8cLUHmr0PfUnJQxfnezs9svd0bZofM+sNvWi4TJCFjf?=
 =?us-ascii?Q?zxl/GTwxhNaIw/1m9vne8MAOA0uipS0zIO/pZU0+GBTNTJHKV4uekXibcjTD?=
 =?us-ascii?Q?tTyzpsppzxsVdMW/b9NOBA3WhJQv7BsP6HD8RhU1b82W/tJUv5HxVM4kLh9U?=
 =?us-ascii?Q?gEcJpZrmqL09+JQEC3J8/VEOkDrZERVQcRxLsuIo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 412fab02-1ee6-49ae-9cf0-08dcd24e06ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 10:39:34.6397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z0bTZtAdgswwUb63u5P1IsvR+AuQK4k207jw+lrpRu5XZ9JEUjmZWXkGiszuAXtbHUSmk5ssozXG6wf6rvtiAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6498
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ar=
un R
> Murthy
> Sent: Wednesday, August 21, 2024 3:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt
> reset
>=20
> The delay counter for histogram does not reset and as a result the histog=
ram bin
> never gets updated. Woraround would be to use save and restore histogram

Typo "Workaround"

> register.
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_histogram.c | 17 +++++++++++++++++
> drivers/gpu/drm/i915/display/intel_histogram.h |  1 +
>  2 files changed, 18 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> index ad4f75607ccb..189f7ccd6df8 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -36,6 +36,11 @@ static void intel_histogram_handle_int_work(struct
> work_struct *work)
>  	u32 dpstbin;
>  	int i, try =3D 0;
>=20
> +	/* Wa: 14014889975 */
> +	if (IS_DISPLAY_VER(i915, 12, 13))
> +		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> +			     DPST_CTL_RESTORE, 0);
> +
>  	/*
>  	 * TODO: PSR to be exited while reading the Histogram data
>  	 * Set DPST_CTL Bin Reg function select to TC @@ -77,6 +82,12 @@
> static void intel_histogram_handle_int_work(struct work_struct *work)
>  			       histogram_event))
>  		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
>=20
> +	/* Wa: 14014889975 */
> +	if (IS_DISPLAY_VER(i915, 12, 13))
> +		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt
> Delay Counter(bit 23:16) */
> +		intel_de_write(i915, DPST_CTL(intel_crtc->pipe),
> intel_de_read(i915,
> +			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);
> +
>  	/* Enable histogram interrupt */
>  	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> DPST_GUARD_HIST_INT_EN,
>  		     DPST_GUARD_HIST_INT_EN);
> @@ -140,6 +151,12 @@ static int intel_histogram_enable(struct intel_crtc
> *intel_crtc)
>  	/* Pipe Dithering should be enabled with GLOBAL_HIST */
>  	intel_histogram_enable_dithering(i915, pipe);
>=20
> +	/* Wa: 14014889975 */
> +	if (IS_DISPLAY_VER(i915, 12, 13))
> +		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt
> Delay Counter(bit 23:16) */
> +		intel_de_write(i915, DPST_CTL(intel_crtc->pipe),
> intel_de_read(i915,
> +			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);
> +

Maybe put all the code in a function with required variables and one extra =
bool variable that determines
If it is being called when interrupt is being serviced or when histogram is=
 being enabled

wa_14014889975(.., bool enable)
	if (!IS_DISPLAY_VER(i915, 12, 13)) /* I think there is a function that che=
cks if display_ver is not it range to avoid the !
		return=20
	if (enable)
		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt
		 Delay Counter(bit 23:16) */
		intel_de_write(i915, DPST_CTL(intel_crtc->pipe),
		intel_de_read(i915,
			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);=09
	Else
		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
			     DPST_CTL_RESTORE, 0);

Also use intel_display instead of i915

Regards,
Suraj Kandpal
=20
>  	 * enable DPST_CTL Histogram mode
>  	 * Clear DPST_CTL Bin Reg function select to TC diff --git
> a/drivers/gpu/drm/i915/display/intel_histogram.h
> b/drivers/gpu/drm/i915/display/intel_histogram.h
> index f35ea76719d8..5e24d3c5c28b 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -20,6 +20,7 @@ enum pipe;
>  #define DPST_CTL_RESTORE				REG_BIT(28)
>  #define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
>  #define DPST_CTL_HIST_MODE				REG_BIT(24)
> +#define DPST_CTL_GUARDBAND_INTERRUPT_DELAY_CNT
> 	REG_GENMASK(23, 16)
>  #define DPST_CTL_ENHANCEMENT_MODE_MASK
> 	REG_GENMASK(14, 13)
>  #define DPST_CTL_EN_MULTIPLICATIVE
> 	REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
>  #define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
> --
> 2.25.1

