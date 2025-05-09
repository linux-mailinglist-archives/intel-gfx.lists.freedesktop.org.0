Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1005AAB0916
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B396810E1A0;
	Fri,  9 May 2025 04:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I1MuFGJ+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F50810E1A0;
 Fri,  9 May 2025 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764543; x=1778300543;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QsonWli6uQLbcjcHRWHbP6W+/7Aw1tOLCZ9IeNkEGqM=;
 b=I1MuFGJ+jbwXaUV5FrVfnpEF+0dE/QhuJiT+CFCUmSsNFonn3Xt4b2WK
 hRucL9k/mvAqzkAMZqDoDfJYY4/DNV2fj/5j/fEdGOYzUzesgbbWa6LG3
 uVWCQ+p144TkKlYg4qIxnv5nRDs4WIiDfbEIq2O078fW8tPU6TdIAp/34
 SY5kHokJklJvhT6VUOdmLyzzgBad4IpZKcj7di+kqvmAGmLPYVBaYNeP4
 QwZgHKHtuBBowY2mYeSVD8ySEBJM7eF8dJA+3TZmoADRBjaH1+sSAi3TN
 gHyXN9+v37RLRR4SpbbOiOop89o8/YWL1VikDUoKhLh9yYOCMTrhVe9T3 g==;
X-CSE-ConnectionGUID: fLh1UxGUQI6Lu2ZXLiLPuQ==
X-CSE-MsgGUID: gDSmy8O2Sxy05o1Hg4hzVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58793504"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58793504"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:22:23 -0700
X-CSE-ConnectionGUID: dtSqnr8/SMGjjraGD1v+4A==
X-CSE-MsgGUID: 2BtFZ1zERiqDZKgoeWxGhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="136457476"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:22:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 8 May 2025 21:22:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 8 May 2025 21:22:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 8 May 2025 21:22:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UzIKM/HFG0EvbDmyQGK3lG4ICdtuAkBJ+tS58Dcytvt8BOh+/1BKVzu+8PrtTuI2iMkqoCwS4CQHzO7EO62BccP6HzleVYr0doryZYDlpZI32bJJLzz39QtHv42UV/qnuKAnDDz69CuaA9Ifb9kxLzi1+84rATj16cuq0//cAfjRHVR9n8ly/pS7O3bi6TrSo6GtlOLPlF0J0cJq2KAYfrFbF7/8u7KQ3ZqCom8X7ydiwXsczHQrgqKFNuLQ3Bt34lScI2KEtVwmVUfFeX5AX1UiFC4VraqXx/etGpyisA2IyERo7AdE/pXB7Z8JNKoW0NSLCfC08VaiYeh3F1IYNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BXeGBm93voe3Z5Zqf5WYmIFljZghde5yrUYoPhUWqWk=;
 b=OXOrMB71wAF+YQBqdnSi8vqGPtbORaBmEOemVjEHwR1TX561sT6DfoviXb/rMgtb5ux1fuWti7WE2MAANfOeFLy5xkQuJbZgrLfMEWY4KD6yt5XT0FOn2C/WHhLp8jcHaU+OBZ+CT5w0WNM2gMLT2PPH2iyxYzLRwRZQ54USik1F52gF99OHa2EF/xDEIaLrFQpWJESsw7GTT24yOjxFxr9XZv0CEXMHzheDTi4Bezu/7BMc5ZoryOOycc7fmfU8RqN9qfQM6P1TON0iBqIXAIR2odzfTf8XF+GqNm40OV9/yN6Fch2gwsVSaIxNfLfUeRt54OvFvW2EwGwfrIjp0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7440.namprd11.prod.outlook.com (2603:10b6:806:340::22)
 by SA1PR11MB6613.namprd11.prod.outlook.com (2603:10b6:806:254::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.22; Fri, 9 May
 2025 04:22:13 +0000
Received: from SN7PR11MB7440.namprd11.prod.outlook.com
 ([fe80::d9cc:d30a:15bf:58c0]) by SN7PR11MB7440.namprd11.prod.outlook.com
 ([fe80::d9cc:d30a:15bf:58c0%6]) with mapi id 15.20.8678.025; Fri, 9 May 2025
 04:22:07 +0000
From: "Yu, Gareth" <gareth.yu@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/display: Send DSI DCS commands with pipeline
 flush in High Speed
Thread-Topic: [PATCH] drm/i915/display: Send DSI DCS commands with pipeline
 flush in High Speed
Thread-Index: AQHbwIgZwXnBDy1inUO5T6Y11hLyM7PJsUoAgAAAhnA=
Date: Fri, 9 May 2025 04:22:07 +0000
Message-ID: <SN7PR11MB74406A479B78344E05EEFE88E08AA@SN7PR11MB7440.namprd11.prod.outlook.com>
References: <20250509021327.649003-1-gareth.yu@intel.com>
 <SN7PR11MB67504851600CFC833363CB2FE38AA@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67504851600CFC833363CB2FE38AA@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7440:EE_|SA1PR11MB6613:EE_
x-ms-office365-filtering-correlation-id: 70dae962-dc39-4300-19b7-08dd8eb10f86
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rPEDaUN2AlHZlAqOUpEpTMMYVyDA+kU3GdFUk9QH+aVBvvfU4xD+A49nLzA1?=
 =?us-ascii?Q?AYSweoc4HzCBdyMDWun4Kuor8L0tdispokLXhObllm0H9Nq4yOW0P5M/0AGa?=
 =?us-ascii?Q?QpuFLhnptxs6e947K4CO/4BWMqjC7XmtpHWjXzAmk2RTZtaElkZR+KdJ1Qv7?=
 =?us-ascii?Q?CfJc0px2tZxlJM5UPfT9JOUd9HCKcQX1vsPobCDyT4Yrjnvyr/RldmpmxkH0?=
 =?us-ascii?Q?OBR0SN9Pb+oi2sFSiyLjoiMzi9yVbq1ZHOi0jWXItBS5ZWUQF9bVTtlQgi19?=
 =?us-ascii?Q?BfXY1eplYSW472JfedMRRm5AooUzeObxNCrccL1OUTBl5iDADhPmjAp5BpWA?=
 =?us-ascii?Q?ybNoJIbmmU7DL/i1SbtFiYQkr7MKvDwct44V0y/xtm2+kqFUVlJYr8irWNvo?=
 =?us-ascii?Q?o8ZqScggpyKAlMd9lOht6ONbsZwCIvQquC2acWWMeG4c3C9rqAAGgquMrzEt?=
 =?us-ascii?Q?CjOGPVB07Lj8YRgG90/WDx2hVZZI303c3q3XTDJ0osF0qZ+5D2UiEICLgbrs?=
 =?us-ascii?Q?BBnQYd1BPT5G1kXqrJABKWbeyk2onQoOBrYp6JJeJ4XMom6/2om0EDFePNh/?=
 =?us-ascii?Q?bMASKHceZ/dUBwPIl33oaYwGxVAltNvTVmbN9Z9v78QCVp8lxdshTxYEcdNr?=
 =?us-ascii?Q?e3gvF+jFozSZyVnRWiWfdERdWS2cUuV92NAqnHhFKCKuqxbkOcLT9safEHMi?=
 =?us-ascii?Q?zn2IN/h6+HnKNqp9oP4U082f/sce8zy5zjlpfFHs7LtumOhEHUCN5LKOX5cs?=
 =?us-ascii?Q?KkJJBGgxr074vzayTsuDIT7wf9/ydBjsV61OMGxF0vl/QpHydBYm3NwXgd8J?=
 =?us-ascii?Q?8CmN/h5DGEj1oz0R33PMAm3o7eDh+fkZ/psTvCRqKxKEtMPSmd5HBm/gxkxC?=
 =?us-ascii?Q?C9/EpCJ3uzEljEL24jDEh75IUZ7J45Q5AUBNIw7flCLuKthVHjIHjHBNSgHl?=
 =?us-ascii?Q?c8UtkQnQOSx9iroSwFR21sNAzvgPvI77T+mtpGA/oEnbPmlwJWV24Dt17Iqh?=
 =?us-ascii?Q?i2Gwbz4Y+WB0yOXTjP+QBqlRlHBz2YibccR+5xL1ffMMilTyeBAq4EhzxSFA?=
 =?us-ascii?Q?WwR8AN0Jqyu+7bUX5Y88XnQaAeN/U4nb5VHZMuL5BHyFA1cKawtR9o5cDKk0?=
 =?us-ascii?Q?z/hNHsOKslha43rEAG+O2XEPKH3BvNcZl/3suGlGjLQI5uFWAT+H1yHcu3ls?=
 =?us-ascii?Q?xF7CQeLrMxWdBdkHnl0SEKAIarHr0nNheQ07Hya5xeytN4lFbuuMQ+yS62OB?=
 =?us-ascii?Q?D+gB4NEUTmXYK6a/KUj1pA2R6gdc0rCWMMOR1Ll6+5a/X7jCEEgnWG+EU8It?=
 =?us-ascii?Q?ywCbsoe7I3C7NCyi/KsFLbJxX2Z7OHnjOHqLyxgEGYTGZMy5XfI61rCmYdbP?=
 =?us-ascii?Q?Tjph1+PYhwLBXoiFbcGIl9HXp7hQYEP8xAUFAtfUq3g/DWZvkU2ZaXH+OmZs?=
 =?us-ascii?Q?63oCbAc2J38=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7440.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mfK70l0IACGto0JvuMI3DD57yR4EzL0yql+YQ/JoEDuFMrjeexJs0jUjg6ck?=
 =?us-ascii?Q?nNYhAbCtE+GD4+/sPZBAJyUj9mdXv3P7tyQpWr2uJo/YdFb7QGYK46aMI5wg?=
 =?us-ascii?Q?TrcVv3Sb7jo7pRNTcv0da4HTiy3KJdL4LpOrbpYDiSDWT01l2p8Tf+iuCkAz?=
 =?us-ascii?Q?sCyw25VbYzuuewgqpbTyD7WjbBszUH4vPkuvJ6e9ZyID8P5agpr0M7UC7mOj?=
 =?us-ascii?Q?s4sww1w6s+ZHxgfE8Mj+iNmgwsbqCVlTbIrXKTkfwzpckQVHE0r+3SItdj4T?=
 =?us-ascii?Q?WF2Kdj07rjh9eHBw9qElXfZY5T68g+s0pJDDaEvXx2VfjSSK4iyZLD+fGmLD?=
 =?us-ascii?Q?9ZOjl2rchadjkEzgR10omL61Hi//EwI4kPHRprQgs5KZhezPPDCZYxfPolKI?=
 =?us-ascii?Q?HOUzScJWWBHli6bIQPtLEEmamMnw8AIM/OwIny7GajlZwe7ZX+M4noRfLldb?=
 =?us-ascii?Q?LzfGDvUghRVrsiQaeRAyUt8UR+Xpi0dnxPwEP+NDsFvEjldEJ3fWcrCCqdLw?=
 =?us-ascii?Q?ruqVzzi6BhhmzQ50tqfcsP/tLBRR8H5xQoMj8rqMZFXqtufKTorWuT4mvRIV?=
 =?us-ascii?Q?rrap+kAmDOKCBl1wt2TvyeTxRx/ubifmtfbCPgVrU1UpSnlzOfipP/AmEJJt?=
 =?us-ascii?Q?d2W1ShUJWOHtCTxqF3C9XNRnCZ/9XsZ3PpT+fy2DtpAB09QfjG33VfDfa+sB?=
 =?us-ascii?Q?2HqfX4zFpEbZqtwDqECQfMYwcQUmJbBX1xoMcW0OoBVEjHM4yV+7qCOc9RU9?=
 =?us-ascii?Q?3pZkx1BP+z6LaQO3GXRdgNKW1Hw2C0PpIFhuq+hVO7vcdwQ/PR/knq9AGjW0?=
 =?us-ascii?Q?wxA+M1TfAEimr6HUjLWSEjGnD2pn3tLjka0MNfunORzHjzrNFf1hKcvW+rwu?=
 =?us-ascii?Q?glN6+BSCJyQ9F10ACDvcRAAk5zWeRkVl98q7s9CtDwZhsRvFR99y0dTrBfvD?=
 =?us-ascii?Q?vkrEK2cORA/4szrOmlZYY4Jstyf2w2KLp24FZchYoZZ7A7u0chYi6L65ZMIh?=
 =?us-ascii?Q?Ux00KNv8iva1I7V1azP1/fegiv/8H+pDb6tipJdwj+YZg/fWYpu6BvJ4czF+?=
 =?us-ascii?Q?Hct/w8fvu+X0DJRI/cM+rd9SWiu0HtgHZfG004GxFd/kYrklkEJI30cvxg1L?=
 =?us-ascii?Q?pJOw69R/gfbio4EmTZmkokGYFTB+PdII3TMxYuRlA8Looj8/QAkjh7wgnMr1?=
 =?us-ascii?Q?Ndvawu7nykLfol3dnVvwPbXipzQXaBLCFBJbT4Szzje3csKfcL7CfF0KFS/Q?=
 =?us-ascii?Q?6uCID1hwMEyYc6lsl14zEflquXGYPvUEQz6EMbwo8toy1fY9CLZuFUCPlNCV?=
 =?us-ascii?Q?AhK3QQ93ZS2Ut7QQOUTCSl3FZP0KZl417L0HuWASdyXTJxNjqfJq7fPHCksO?=
 =?us-ascii?Q?tZTyE+xQZ0ISdSM30KvctyP283yQduD1HyBMRgpaKl0ZgnZaFUcLcYcmsHJy?=
 =?us-ascii?Q?WV9mapdTnsMRf9xW+Q8JiGx0oudWV+3HWPO20pOjvhLr+a8IwTqi7aq+VGP/?=
 =?us-ascii?Q?H4VWp6wgDFkwGSO2ByqaULmgApppn1rQ9+BP9YDz6vjHpCnKXraHB2gim7nV?=
 =?us-ascii?Q?iv66QOn1uDYJwnuhMZb7NggfGrrZPXOKlZjFtyjz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7440.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70dae962-dc39-4300-19b7-08dd8eb10f86
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2025 04:22:07.6900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ASxnuZXRv/5yVBvHSUQKanYhFWAhVw+TRu32cyhWCTofZjrpnLfS2DFLQSb9SxgffpaBOaKG/ORI/uSehKlwpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6613
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
> Sent: Friday, May 9, 2025 12:17 PM
> To: Yu, Gareth <gareth.yu@intel.com>; intel-gfx@lists.freedesktop.org; in=
tel-
> xe@lists.freedesktop.org
> Cc: Yu, Gareth <gareth.yu@intel.com>; Nikula, Jani <jani.nikula@intel.com=
>
> Subject: RE: [PATCH] drm/i915/display: Send DSI DCS commands with pipelin=
e
> flush in High Speed
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > gareth.yu@intel.com
> > Sent: Friday, May 9, 2025 7:43 AM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Yu, Gareth <gareth.yu@intel.com>
> > Subject: [PATCH] drm/i915/display: Send DSI DCS commands with pipeline
> > flush in High Speed
> >
>=20
> Clip the subject make it a little smaller

How about "Always send high speed commands with pipeline flush"?

>=20
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
>=20
> Do we have a bspec reference and/or dsi spec reference through which we c=
an
> verify the data that needs to be filled out for the dsi packet header.
> Add it here will help make the review smoother and easier

BSPEC: 50193

>=20
>=20
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14247
> >
> > Cc : Suraj Kandpal <suraj.kandpal@intel.com> Cc : Jani Nikula
> > <jani.nikula@intel.com>
> > Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c      | 4 ++--
> >  drivers/gpu/drm/i915/display/icl_dsi_regs.h | 1 +
> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 402b7b2e1829..f91f27067768 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -191,12 +191,12 @@ static int dsi_send_pkt_hdr(struct
> > intel_dsi_host *host,
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
>=20
> Seems a little fishy but cannot be sure till I have the spec and I can ve=
rify it
>=20
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
>=20
> We now follow the REG_BIT(28) macro instead of using  (1 << 28) conventio=
n
> Would like to see that change too, ill send over a fix to get this to fil=
e use
> REG_BIT instead.
> Or do we leave it as is ? What do you think Jani ?
>=20
> Regards,
> Suraj Kandpal
>=20
> >  #define  PARAM_WC_MASK			(0xffff << 8)
> >  #define  PARAM_WC_LOWER_SHIFT		8
> >  #define  PARAM_WC_UPPER_SHIFT		16
> > --
> > 2.34.1

