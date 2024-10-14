Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1CD99C9AD
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 14:05:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DAC310E44B;
	Mon, 14 Oct 2024 12:05:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HYKWpd1W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FED910E449;
 Mon, 14 Oct 2024 12:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728907554; x=1760443554;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uZ5M32djcaBeLiyLHuX8Aue9yRl1KGVWxETkpyooDpU=;
 b=HYKWpd1WTo/xt4ZbJmjMNc8fbdr30nKHuskzKKrTQCSlQX7NNWHHkXsV
 TWQ+lFKDUD64gjJ8s9UyNY5p+P5ZawXPCAiIPhGA5O2M021V6OpippKWe
 IsC9YOiIiKr+CZQhowkBA2c5jW2zdv6O6dz2LUD9wGjbdNEPnr7Lil6IQ
 UqJOk4jfokiajI0MYeNnY4/q2J1+br2KQ+SBY2sgEEp9Xz48GDDa4Aouq
 8RV0dvgfYKXcSGbREUPFp5DaXWP9MdEZ/mc2X3qfWigbU+ejO7AVAJK0O
 IGR1mRut8rDrsyjmyUiraxw7a6tNtS5nJ/8/yqodZ8PTCG3iZ31R4vPf8 Q==;
X-CSE-ConnectionGUID: lv3fX0OwRR6LqQl/uTE1ZQ==
X-CSE-MsgGUID: wMavqKg7QOmCL9XxrAIZrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45725134"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45725134"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 05:05:54 -0700
X-CSE-ConnectionGUID: vraEaq+vQX6fLXuuSILUiQ==
X-CSE-MsgGUID: 7pJgqfGiSGyYJvkLPaSBmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="77565362"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 05:05:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 05:05:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 05:05:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 05:05:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aEctOXVslEgLKJpeI18iEFgtgAHHZ2GrK/zwE2dfwrUpH2vdhkG9EV56XJtBLKKD+eeOMa3ALmNKUx88fKU2E80D3sJL0ASyly112W2A02BNh6lrZD7/IycfpOS0gmU/qCLk0ChWDeo2K6efNZyhh59kgdRYaHKPtc8BYibe5VIF9109E3CnPT5p0TwkA+eBmU0fLvdBkTAoP+Bn6iwBe6XJftjPcrnB01vpFUWrv1xG6c8a8EmWkq97dn+SQnUjQYqG1gj7LZIG6KyWnPCSV0HfiI+bLCHTbUIuAW69ebhCrsXHbHOOrodQXCgP+1uGntk3oGhLwlYWxBnzjGmT5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z+lWnYdRYwJ61fSTY91QXWQKUVos1FpJWGUOQFZERnA=;
 b=Uu6jaDAc0/74CutJQ4IdMd/i3MfnjzWBciNfas6YCT1EisClflaV66wwVbUjYVLIRt/w7fn3gXtGnnaI4UuSkNxLu4I3/MzfdDlCD+NKUeVYP/yTzMKF/AWu+lSeblFj12+Ikr6nCW3iByWFA/9ho8r4Yo4+NHdmPZz2xbhzy6KIZp5FAf6ZfZeEgTkBP5ryRMqdlNYRgARv2sYncaSpqvU3rLvOH2mwPsQIH6mFVPryNv703pePoiXJ0ObeTgEo9ecQgAnpV1vVP4z8000R7ozmwrY7XL7nxVCHI9wajF+0sC8PbkEB6d4VsxcrHiUCYQiK6Li4N8Tw80sTi1+Ikg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BL1PR11MB6003.namprd11.prod.outlook.com (2603:10b6:208:387::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.21; Mon, 14 Oct
 2024 12:05:47 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%2]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 12:05:47 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [v2] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Topic: [v2] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Index: AQHbGYHGm17D62JhuEC/IU6Q4bqywbJ+iYgAgAeHLFA=
Date: Mon, 14 Oct 2024 12:05:47 +0000
Message-ID: <SJ1PR11MB6129A960831536B70DFD252CB9442@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241008125331.2893681-1-chaitanya.kumar.borah@intel.com>
 <87ldyx8fx5.fsf@intel.com>
In-Reply-To: <87ldyx8fx5.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|BL1PR11MB6003:EE_
x-ms-office365-filtering-correlation-id: 7dd24c1e-83a1-4102-b368-08dcec488a17
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ryiMKnECAQGDUxGezA68dSM8Vd06A/NkieVkV2s102dSxAYYAlCV3uCoWG7j?=
 =?us-ascii?Q?N2zavdkeSFTRUS/6Bph8XEbie8qlWOPb9P5Vkyo3V5anQyUPTfyTpi60won3?=
 =?us-ascii?Q?6qVBhMRloVOwMU2US9QQ2a8SO+SLpPGa4mQhBHatIdFInr+D9sY1/RGUdhuc?=
 =?us-ascii?Q?47evU7hPlga0Xk9pqBDQzHs3DIJ5WULO63cQP2PRgWpqFsR7PzyATk/jyw2J?=
 =?us-ascii?Q?goYn/4Y5aD7Neh7TIkm/muWH6h0PNxIgZMQTcOUohm6HRAtyTT44We6kzSB3?=
 =?us-ascii?Q?DpDv2IDn81Wo5yGp3VL1i+vpVpb9A4zsIa3F7OnL/6d9yUBL5IqvzaHVj5FY?=
 =?us-ascii?Q?W2HPPAhujgowDGL7HTo+2D2HeqkN1ughqm3NFGKQXtWrybJB9kcG7OlX59sA?=
 =?us-ascii?Q?Sm5SDhXkrMPFsij19vz2GLREJ8Ok/UBs6yPbqSIpqBYhaX2nF5HD7dAfx5Cd?=
 =?us-ascii?Q?dNbWPlE1ME55QGQdpzik6tzHzK7/J5kuEVLYmgRkOfU3OW8n5KxMYfAIE+eO?=
 =?us-ascii?Q?184wfNi+yJ0/ljjVn/IVGCyJfQiFX22pQOpLUD8m4NKsOW3rptOB2l2KweUR?=
 =?us-ascii?Q?eMNme68RRoe6+qQ4yPzKXTByzgruTOSlAF5UjANCx0NKGWHBOvkmglfpRZD8?=
 =?us-ascii?Q?RPzY6KSBR8EszzjRpzQoYGG9kYAq519UEUAgu1C6ejPZLY4nYl+d5x4fRGGX?=
 =?us-ascii?Q?Cxm4ZUr4+7tl+vPOVM3t15JfLPInF0Zhgh2UMFxCXuZi7sFA4uTPGQdztTG9?=
 =?us-ascii?Q?lbraT/uE2uf3hgvkd96gdRNPtBB7J8Dv3xzgrQtWKqL5jA+peCkDRXtajytL?=
 =?us-ascii?Q?sqViRacxKfq4k2ds+g+OeeIL7yDdb1pqi+9fZJgmml81aCc1ZsvsVA1SdUL1?=
 =?us-ascii?Q?HzFkDp4mNLW+pQIwJ5RwAkAPLNEhJgAFZomygIGvjJ/r28n8CBD4PRMTqpKc?=
 =?us-ascii?Q?zO04stpOMTsEdtsAmgeFv9RAUtfCxvvhLKEtuh+5mt2doHNAO+6Zhq9oFjgj?=
 =?us-ascii?Q?nz4ZpydOFF151xX6TVmlDjlN3OTgfaiS0XNUYLvikourUFobbqqb+UDe07Ov?=
 =?us-ascii?Q?QDlOHQ+N7Khh8AQABwedPWCuUtYIIAH7vtkk6VgrlF4iJivMF/WOgX7fhxeR?=
 =?us-ascii?Q?4sVewnIF702Up/1yZeJFDHQhs9EskPGFU/Y/MB5gYqgrV0VN6s9ldyEpynbI?=
 =?us-ascii?Q?1AzccXmYrj2i1FzliNzGZMlwZ+1e0ZtgtP3WZ7Bnes+mhvaGMlzOTx87lhJC?=
 =?us-ascii?Q?rJwqZwsaADvj/gf7XCZgsK8e0OoWwlgKDyiJQn8lk8ziHSUqefLuG8eFERUI?=
 =?us-ascii?Q?tdmn9wwP1qREyMUsK8ieAt2MJlmKB9A6SDovVSlO7eRahw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+OsZN6j98/fhgGy+VSbchuhqNcn4PiDS9lZ20eP0aVU0bRXWA2s/PLHPPjPa?=
 =?us-ascii?Q?xutxUuNpuhVZa26WJwVY9ubjwCgbTBiOk5vRMbVeb6XylmXHk3+MiRQkMV5g?=
 =?us-ascii?Q?fvF8oQ0WLK6/6ISe3aidWZJoXbJVYnIc3+ljGC8cr146jsmsLIOoNvhrNA96?=
 =?us-ascii?Q?VULUhw1m8NO5fJc7xMHJ2Q5PjRQPBDtoYWYqgcQu1GCp2olPpISxgfa0f3EF?=
 =?us-ascii?Q?WP14m/gfUqS/r98QIFHDg35d1G6jI7y9ao9K5myBDh/PhjG9enbfiLuq9s54?=
 =?us-ascii?Q?F5fAGv1RboygzhpwrYWZuIvBubAflWQ2yHLUeqiAqkMpcNWXKt5M1GAQKEJH?=
 =?us-ascii?Q?/BiQW8Hmmc3b7RHz8wb5+1ypbFiYdMjNkBxQvAganVAuQMQJUtZuk95TNDEz?=
 =?us-ascii?Q?1bg7PkNwTQhtUEyps9zCDun8Ne2U6TqhTpjmLTtWeUUeQTdSoBIKLCD8vHXE?=
 =?us-ascii?Q?7/5dO4+LsHG7eFkmY+6oMLkx8+Iy1IJ2zjvjPfUNqHdgcqeGWu/VPX2Oeb++?=
 =?us-ascii?Q?whhLkT5ZiRWruFEgyTjSWgbBsBE/lfWwL2+P/SRwnDiP0hVuOhNlw3DIxnLX?=
 =?us-ascii?Q?PBQi14AO4psm7cEExfIC7kesAOLCzCDf98qDhRUGkbP+xgTAivys0qY0UFYF?=
 =?us-ascii?Q?hKMbjNTVi8qRgRzRBo8yMAHS2EAcY0d3JLiXcFsTgE5wjRrTitDe/RI9rLeD?=
 =?us-ascii?Q?3b6+BK2yDY5NiZqRylcMxaHYK3jfK92geudAoAHhB0QrxXzpzpTIt8KtKDVY?=
 =?us-ascii?Q?zmcjjcZ81K4CX8m2g+SWtkPTNxiGPWfaVdt4vqvhM5VMTTGTcHcFBNI4TFaC?=
 =?us-ascii?Q?loJnU91TvwTGbdn3I7W6eHk8zJOSWIjHKVkPZymRtKEaEthwim8egONcT3KR?=
 =?us-ascii?Q?3oeg8p4e1aqUjzlmu6+dzWVnR4Xblxt7AU3W46CA8guKVvps4KvDV6VEnrUq?=
 =?us-ascii?Q?3MrnznvJ4MXxv1OaQwhdY6GBIOYS/kTrijiY1qZm24QzNlUAwGLCD3HtcCr8?=
 =?us-ascii?Q?TF4J6CS24TUzTFtCqPMpXSN6qtJOup4z//9Y8M0++xMDcD6Ap/uQjbHX44OJ?=
 =?us-ascii?Q?GC6kwIGEQ7JaMrwHjKJLxW4Ua9GF2/7TcHgUyCiOCD9oIeHXaQF/VbHaxwKK?=
 =?us-ascii?Q?PwLPPxCwR5DoJQyEAytFoP34OCxquyYr0bGZfjlCjpQgii9+DYC14OmnrMXc?=
 =?us-ascii?Q?D4aan6065QY6rX6bZc0KElE9JKBTAdremARSBRFCouVqqHNIGcmvHfcWs6tp?=
 =?us-ascii?Q?dctex8jfYduV+cNrFsS0QAeIdB3sXj2Y6gd/lj6Z8w/gEZG7btbNT1jR3Nfh?=
 =?us-ascii?Q?p8IHqOf4HDb4fy9tygAAWm6sq63ibZ1ycmdvsSB6HhUBtG5JhQRb8Qi+emJw?=
 =?us-ascii?Q?k+MLoMK1LwrzN25hqNoPmoIFBAEaWZAqZ7rTJONweCvmJOCH1CYCpkh5QMZI?=
 =?us-ascii?Q?0ORiqF75cKknk4wkdiFIGKQ1y5rQ2fBCgPHqWspANObnOulhGlNuyAzDw+to?=
 =?us-ascii?Q?I9fovpEVN68Cav/0Rgg1qN02sz5wCrufJL8eoZkZcdbc9VSqvOLgbF8l2UbS?=
 =?us-ascii?Q?WJXHwnKTJI08jHjFYiBc1ZxR5safsSPCe6u0T0VsoQmPVUOc8EXqwDP/5l5x?=
 =?us-ascii?Q?2A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dd24c1e-83a1-4102-b368-08dcec488a17
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2024 12:05:47.7895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fVEIssP/Yo9rGVizmZvUM6iTKlkB+JXCbQA0f0Vmrdm6TuzSx8Hxnfl6on+9kMLQEjmiZC+96lnN06u8gYMxRt9Vqzceti1ePMO1rvMCC+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6003
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

Hello Jani,

Thank  you for the review.

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, October 9, 2024 8:47 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Subject: Re: [v2] drm/i915/dp: Add FEC Enable Retry mechanism
>=20
> On Tue, 08 Oct 2024, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent of
> > TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
> > sequence without re-doing the whole mode set sequence. This separate
> > control over FEC_ECODE_EN/DIS sequence enables us to have a retry
> > mechanism in case the DPRX does not respond with an FEC_ENABLE within
> > the stipulated 5ms.
> >
> > v2:
> >  - Refactor code to avoid duplication and improve readability [Jani]
> >  - In case of PTL, wait for FEC status directly after FEC enable
> > [Srikanth]
> >  - Wait for FEC_ENABLE_LIVE_STATUS to be cleared before
> >    re-enabling FEC [Srikanth]
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>=20
> What you have here is really hard to understand.
>=20

I will try to rephrase this.

> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c    | 79 +++++++++++++++++----
> >  drivers/gpu/drm/i915/display/intel_ddi.h    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +-
> >  3 files changed, 67 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index fe1ded6707f9..047816a427d5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2256,30 +2256,74 @@ static int read_fec_detected_status(struct
> drm_dp_aux *aux)
> >  	return status;
> >  }
> >
> > -static void wait_for_fec_detected(struct drm_dp_aux *aux, bool
> > enabled)
> > +static void retry_fec_enable(struct intel_encoder *encoder,
> > +			     const struct intel_crtc_state *crtc_state,
> > +		struct drm_dp_aux *aux)
>=20
> Probably shouldn't pass aux around.
>=20

ack

> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
>=20
> struct intel_display for new code please.
>=20
> > +	int ret =3D 0;
>=20
> Unnecessary initialization.
>=20

Ack

> > +
> > +	ret =3D intel_de_wait_for_clear(i915, dp_tp_status_reg(encoder,
> crtc_state),
> > +				      DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> > +
> > +	if (ret)
> > +		drm_err(&i915->drm,
> > +			"Timeout waiting for FEC live state to get disabled
> during
> > +retry\n");
> > +
> > +	/* Clear FEC enable */
> > +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> > +		     DP_TP_CTL_FEC_ENABLE, 0);
> > +
> > +	/* Set FEC enable */
> > +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> > +		     0, DP_TP_CTL_FEC_ENABLE);
> > +
> > +	ret =3D intel_de_wait_for_set(i915, dp_tp_status_reg(encoder,
> crtc_state),
> > +				    DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> > +	if (!ret)
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Timeout waiting for FEC live state to get enabled");
> }
> > +
> > +static void wait_for_fec_detected(struct intel_encoder *encoder,
> > +				  const struct intel_crtc_state *crtc_state,
> > +		struct drm_dp_aux *aux, bool enabled, bool retry)
>=20
> Multiple bool parameters make for a crappy interface.
>=20

Ack


> >  {
> >  	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
> >  	int mask =3D enabled ? DP_FEC_DECODE_EN_DETECTED :
> DP_FEC_DECODE_DIS_DETECTED;
> >  	int status;
> >  	int err;
> > +	int max_retries =3D retry ? 3 : 1;
> >
> > -	err =3D readx_poll_timeout(read_fec_detected_status, aux, status,
> > -				 status & mask || status < 0,
> > -				 10000, 200000);
> > +	for (int retrycount =3D 0; retrycount < max_retries; retrycount++) {
> > +		err =3D readx_poll_timeout(read_fec_detected_status, aux,
> status,
> > +					 status & mask || status < 0,
> > +					 retry ? 500 : 10000,
> > +					 retry ? 5000 : 200000);
> >
> > -	if (!err && status >=3D 0)
> > -		return;
> > +		if (!err && status >=3D 0)
> > +			return;
> >
> > -	if (err =3D=3D -ETIMEDOUT)
> > -		drm_dbg_kms(&i915->drm, "Timeout waiting for FEC %s to
> get detected\n",
> > -			    str_enabled_disabled(enabled));
> > -	else
> > -		drm_dbg_kms(&i915->drm, "FEC detected status read error:
> %d\n", status);
> > +		if (err =3D=3D -ETIMEDOUT) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "Timeout waiting for FEC %s to get
> detected, retrying (%d/%d)\n",
> > +				    str_enabled_disabled(enabled), retrycount
> + 1, max_retries);
> > +
> > +			if (retry && enabled)
> > +				retry_fec_enable(encoder, crtc_state, aux);
>=20
> A function whose name is "wait for fec detected" really should *not* retr=
y
> itself. The point is to report status. The callers are supposed to act on=
 that. It's
> really hard to follow what's going on.
>=20

ack

> > +		} else {
> > +			drm_dbg_kms(&i915->drm, "FEC detected status read
> error: %d\n", status);
> > +			return;
> > +		}
> > +	}
> > +
> > +	drm_err(&i915->drm, "FEC %s Failed after %d attempts\n",
> > +		str_enabled_disabled(enabled), max_retries);
> >  }
> >
> >  void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> >  				   const struct intel_crtc_state *crtc_state,
> > -				   bool enabled)
> > +				   bool enabled, bool retry)
> >  {
> >  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev)=
;
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder); @@ -2305,7
> > +2349,7 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder
> *encoder,
> >  	 * FEC decoding disabling so skip waiting for that.
> >  	 */
> >  	if (enabled)
> > -		wait_for_fec_detected(&intel_dp->aux, enabled);
> > +		wait_for_fec_detected(encoder, crtc_state, &intel_dp->aux,
> enabled,
> > +retry);
> >  }
> >
> >  static void intel_ddi_enable_fec(struct intel_encoder *encoder, @@
> > -2318,6 +2362,9 @@ static void intel_ddi_enable_fec(struct
> > intel_encoder *encoder,
> >
> >  	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> >  		     0, DP_TP_CTL_FEC_ENABLE);
> > +
> > +	if (DISPLAY_VER(dev_priv) >=3D 30)
> > +		intel_ddi_wait_for_fec_status(encoder, crtc_state, true, true);
>=20
> Ugh. So I was trying to say that I don't want duplication of fec enable. =
But you
> still have that. Both intel_ddi_enable_fec() and
> retry_fec_enable() have it.
>=20
> It's probably intel_ddi_enable_fec() that should try multiple times for d=
isplay
> version 30+. Right here.
>=20
> Adding the retries in "wait for status" is odd.
>=20
> Add building blocks for doing parts of what needs to be done, and then dr=
ive
> them at the high level.
>=20

Just to confirm that I understand the comment correctly, are we talking abo=
ut something like this

static void intel_ddi_enable_fec(struct intel_encoder *encoder,
                                 const struct intel_crtc_state *crtc_state)
{
...

        intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
                     0, DP_TP_CTL_FEC_ENABLE);

        if (DISPLAY_VER(dev_priv) < 30)
                return;

        for (i =3D 0; i < 3; i++) {
	/* Wait for FEC status */
                ret =3D intel_ddi_wait_for_fec_status(encoder, crtc_state, =
true);

	/* Return if FEC is enabled */
                if(!ret)
                        return;
	...

	/* Disable FEC */
                intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
                             DP_TP_CTL_FEC_ENABLE, 0);
=09
	/* Wait for FEC disabled */
                ret =3D intel_ddi_wait_for_fec_status(encoder, crtc_state, =
false);

              ...
	/* Enable FEC */
                intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
                             0, DP_TP_CTL_FEC_ENABLE);
        }
}

If so, we have to make two changes to the current code. Let me know if they=
 work.

1. Change return type of intel_ddi_wait_for_fec_status and wait_for_fec_det=
ected to int.
2. I could not find the reason for it (may be Imre knows) but currently the=
 timeout for reading FEC DPCD register is set as 200ms with every read made=
 in an interval of 5ms. However, the spec says that sink should acknowledge=
 FEC enable within 5ms.
    Considering that the initial values were selected based on some empiric=
al evidence, can we have different timeout (5ms or 10ms) for the retry case=
 depending on the Display version?

> >  }
> >
> >  static void intel_ddi_disable_fec(struct intel_encoder *encoder, @@
> > -3010,7 +3057,7 @@ static void intel_disable_ddi_buf(struct intel_encod=
er
> *encoder,
> >  		disable_ddi_buf(encoder, crtc_state);
> >  	}
> >
> > -	intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
> > +	intel_ddi_wait_for_fec_status(encoder, crtc_state, false, false);
> >  }
> >
> >  static void intel_ddi_post_disable_dp(struct intel_atomic_state
> > *state, @@ -3383,6 +3430,7 @@ static void intel_enable_ddi(struct
> intel_atomic_state *state,
> >  			     const struct intel_crtc_state *crtc_state,
> >  			     const struct drm_connector_state *conn_state)  {
> > +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev)=
;
> >  	struct intel_display *display =3D to_intel_display(encoder);
> >  	struct intel_crtc *pipe_crtc;
> >  	int i;
> > @@ -3394,7 +3442,8 @@ static void intel_enable_ddi(struct
> > intel_atomic_state *state,
> >
> >  	intel_enable_transcoder(crtc_state);
> >
> > -	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> > +	if (DISPLAY_VER(i915) < 30)
> > +		intel_ddi_wait_for_fec_status(encoder, crtc_state, true, false);
>=20
> Presumably there's no harm in waiting on all platforms here. It gets tric=
ky
> with all the display version checks.
>=20

Ack

> >
> >  	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) =
{
> >  		const struct intel_crtc_state *pipe_crtc_state =3D diff --git
> > a/drivers/gpu/drm/i915/display/intel_ddi.h
> > b/drivers/gpu/drm/i915/display/intel_ddi.h
> > index 6d85422bdefe..981e7702e11e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > @@ -65,7 +65,7 @@ void intel_ddi_enable_transcoder_clock(struct
> > intel_encoder *encoder,  void intel_ddi_disable_transcoder_clock(const
> > struct intel_crtc_state *crtc_state);  void intel_ddi_wait_for_fec_stat=
us(struct
> intel_encoder *encoder,
> >  				   const struct intel_crtc_state *crtc_state,
> > -				   bool enabled);
> > +				   bool enabled, bool retry);
> >  void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
> >  			  const struct drm_connector_state *conn_state);
> bool
> > intel_ddi_connector_get_hw_state(struct intel_connector
> > *intel_connector); diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 732d7543ad06..226ac9a73a55 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -1289,8 +1289,8 @@ static void intel_mst_enable_dp(struct
> > intel_atomic_state *state,
> >
> >  	wait_for_act_sent(encoder, pipe_config);
> >
> > -	if (first_mst_stream)
> > -		intel_ddi_wait_for_fec_status(encoder, pipe_config, true);
> > +	if (first_mst_stream && DISPLAY_VER(dev_priv) < 30)
> > +		intel_ddi_wait_for_fec_status(encoder, pipe_config, true,
> false);
>=20
> Ditto.

Ack

Regards

Chaitanya
>=20
> >
> >  	ret =3D drm_dp_add_payload_part2(&intel_dp->mst_mgr,
> >
> drm_atomic_get_mst_payload_state(mst_state,
>=20
> --
> Jani Nikula, Intel
