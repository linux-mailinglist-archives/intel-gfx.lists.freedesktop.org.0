Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F33ACDC26
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 12:51:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 982DF10E63D;
	Wed,  4 Jun 2025 10:51:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d3i9S1uq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E454010E600;
 Wed,  4 Jun 2025 10:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749034263; x=1780570263;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mV+LEd8gEEmSs/FJ2VsQRblQ92wWI4PNjy2Vbmks5/E=;
 b=d3i9S1uqjxozdo+Kd1Y8HvdNjHL5cWwYbWS4V/Cx1teuaX047J23S3Vs
 6NrIYqJAx8NLq+ehJgjsx4iWGB7oaIAW3YwOrm7KUFisYRFtuY3V1MzBq
 HXlnoOInSlfuV0+/XqZKvuRmc7k7ZJ96WnEb8B/ZE/nh8ndyopvxkBxfd
 gPl2HQVH/LFVnOeeYHRhitPqL5s9wSfuR+1MeQUNo/HmeBU4NmZAm8eSs
 IV5vm7Pl4cXo4n0ti7OPC8Wkaq1FM5dQWH9iHTSWANWkwSRpCvSeDPU5b
 B2pyyV5kFzei/t+5KbfZXLO3KBSybEVfiobvOrDxypJHoYake7TIqHXWl Q==;
X-CSE-ConnectionGUID: 5zIKbRPJTLCv6HjUQz7hYA==
X-CSE-MsgGUID: fqfhW7mIS4SuSXcW/Dyyww==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="76499322"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="76499322"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 03:44:37 -0700
X-CSE-ConnectionGUID: tOv5teweQLO2kMQx0CA6dQ==
X-CSE-MsgGUID: FumKxCr7Qt6289Z3IxjIcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="145114556"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 03:44:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 03:44:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 03:44:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 4 Jun 2025 03:44:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VkKOLpdCjwFRoKuvB5cRHN1oCz1fPfoJ4IEPPUE0JtmFbrM3OmUuiY76nu+1YXG2WfyS9eZ+17kQbmu4+TsC5d79EUkTYhZnAQn0dP/6q4MNNiWJt+KTjTH5twI33OKvfi9BVmplKY5oe57MvGxJoauVETOOLgLQVH1XFNMtJSmEAh4PGo8cDbq3Q0jIL1I6GR4btanmrKEtbZ+EQzDH0qdVBm1d3WsmJMT7aBt4aoFOgSz1xuhCjF9idkcfvkh5XV5Fx0A9ZijRvq60IGUsXhTOIN4r9Yrotqu4BkZGjz6uYU91T1qQi4BtrlnShHGXOP042KTaUneeXjNWaAyJvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wvc3KBmCXZ9FzwXXtzq3Lw1DQ6zTLrlYwC98Ul3pwKs=;
 b=dCEKCLwBI7tEf3YzfPWx+mrdcXuw7jiBEImysDcE0PBe8x+Eb9N/lyQYhW9ftb2vMgQrrYpnZVb/Fb7MdEcK6fRKkwtSYBntdE8hcftAyNVcDEzZk3cJInGtrXY3FVUagBf1qh0YYC4mMwWFd/YxDWAcgfCU/cOJBuVwiOLp8vVOAYe6dSJo8ntJUPN5w/MgyIll5MihscxhvmUV9Zpj2jJi9Wf/t0VJVsiOwtqPJYdwScpRZuec8XglyTFwZDiq0rBEttic48O8NPnbvbEd4y7O+hZ52BFZv8OpWXjFnUaOquxsoYCEtcGz6YdhZIIMFlFTcvxhF1PZtoc6JzkTKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CO1PR11MB5041.namprd11.prod.outlook.com (2603:10b6:303:90::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.21; Wed, 4 Jun
 2025 10:44:34 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8813.020; Wed, 4 Jun 2025
 10:44:33 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Implement wa_16011342517
Thread-Topic: [PATCH] drm/i915/display: Implement wa_16011342517
Thread-Index: AQHb0UPbjmBv+4+mAk2Lmbty3g/eJ7PrC2eAgAesrICAACBmEA==
Date: Wed, 4 Jun 2025 10:44:33 +0000
Message-ID: <IA1PR11MB6467D1086A2CEF802306633AE36CA@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20250530091240.56570-1-nemesa.garg@intel.com>
 <aDmYCwbnTG38UiL1@intel.com>
 <IA1PR11MB6467550BD73569A3B79CD6A7E36CA@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6467550BD73569A3B79CD6A7E36CA@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CO1PR11MB5041:EE_
x-ms-office365-filtering-correlation-id: 52652861-70f9-435f-2d85-08dda354cb43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?iG9DiFqugevK55A8G9g1LNGooKbPJBGuj+mXSnjxUs7fPZyJIfdQPbW6Vi?=
 =?iso-8859-1?Q?6QIHpY6St1Awl7mGaoPEmaBFJ4W9/ij6vrdg9uYj3CP0KQ/pt0k8GZ5joG?=
 =?iso-8859-1?Q?w+Xqh7Z9o9dQ9LqKV37NVv+cFuDg4NcbyL2mOhJGyfvMLkIggPBrhlpAdZ?=
 =?iso-8859-1?Q?ONk4q8tgm2AUULJ0mImMtZKED0/xejrsjT5VLgxsZjzt+gYqRlH4zpMoix?=
 =?iso-8859-1?Q?ssg8ivBotqKYHzDRM9zTD6dO1pH+2k+b4YfbIEP707IIzwzoEOy3yyrxz2?=
 =?iso-8859-1?Q?g9aMmjKjvP3FIxAWLlBVl5g54qt4bpCUjtGDpM4teo7s59yP9oF6ZsVHE/?=
 =?iso-8859-1?Q?f1yJ2IODWvN/RVVmvf8CQ6eRRZlNYREmvhhQi9/pexgUKxjqSef+gXypj2?=
 =?iso-8859-1?Q?9H1PpVCuBVHmAKP980vdR5wvXXEmc9Pqh+QnZ/j9TR4YzN5pGm02vKYUFn?=
 =?iso-8859-1?Q?5QL/lu8HF8Ol8PZ7Jk+iK37bUEYBaFN29TpOUBdRk4vx6zTZY839Ob+OA4?=
 =?iso-8859-1?Q?zsc9USeTTpA6tYUoIwl/OGVMwwzWfsRXPFHKaaYlORO7cWZXbCEgXZBBm0?=
 =?iso-8859-1?Q?Ef5pjIc5AIiEq0mlzITARbe2lCyZlOTOeyRgS37SEDuJOu3YfE2eUfOnkW?=
 =?iso-8859-1?Q?iqCXO1E8srLK5LOsM017vy/6iqwbBzPrl2UacG1441mQxUnYZdWEieX+tC?=
 =?iso-8859-1?Q?K9sbLbQ0NcZ5cSwLXExdrAExUm0FVCmEp80mUv3tR0CeFF2G3QWTWtWYcn?=
 =?iso-8859-1?Q?hDSCtuxASUkGBa1QbYQQRS9KDeQyIFKpi9uLgI1I0PXLMKFjpHLA4V17YF?=
 =?iso-8859-1?Q?E5KdE38OsqhI4GzA9kZ/VsFJZa5xY4lIGrKgtciFGW3VCKiJIfa6/71MZ+?=
 =?iso-8859-1?Q?syBzI/7BqLm4+14taV+yg5PkAmhjAzRs4g/gRkHRR5Ynw/SOtotGRfcl/y?=
 =?iso-8859-1?Q?4vnbi7SmOx36CBf+mEA9IgXTT6Skm1Ba3BK4XLc+jGqC0QVdLFy6UmkB5C?=
 =?iso-8859-1?Q?5SMRaF/zfws4aS3riMfAyBdNykSPaUWhDiMgxEYyCzW5r/OYfldLFRqUvg?=
 =?iso-8859-1?Q?t3nBtc0sUJOp85czJeoGkFu805q93bB1/kQoyn8e2Bxa7p+w2A6VjEHA5f?=
 =?iso-8859-1?Q?c2HHiSVcjF5dlCmuNSR3dJMbXxD0vM+ny0qMJ+T+hn/j9MlsQx4AXKM1Ic?=
 =?iso-8859-1?Q?wX898JZBJNYfzsyYmWG4M4kJ4zz7GlZrjMuqGoRegrouY8/VaEgFmYDHgs?=
 =?iso-8859-1?Q?Po8ORa6DuTpDgmALT0pe//zDQL4etf0GgEntNGfc0K8VOUHf0Pd9gFViOh?=
 =?iso-8859-1?Q?kOuI6OR/mB0GMCdVnI3dgYEaNpW+HSpBoMOjHaIREwgSqoDCo9p86fDxWh?=
 =?iso-8859-1?Q?eY4bKMV+7Ske6Vj5RrcFBbGwWgb2zndkPZ/XygBz8GKhYJRsFTSovq1ISN?=
 =?iso-8859-1?Q?UZZ6WWlaSB4VXHUicXj9ETeJL+9TfYrV/fpFp/wMFlE+k0O3zCz8T8IKVz?=
 =?iso-8859-1?Q?Mr5eB3ok79ywRcI07Kn7ZFFu2ErqMeU4n8nrkkZkuMgDtEut+1OQQ6Y001?=
 =?iso-8859-1?Q?PbjAXNs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?J7no8/lOfG0jEbD+D+1F73vSFCpDCsI1al2bJyQ5RHeeASczEFNt1p8M6v?=
 =?iso-8859-1?Q?r8lOmgF2DRf/X3CW2sMqSgHU8eMG97Lo5dMZoLo60ZK27arKKqzaDjptBi?=
 =?iso-8859-1?Q?TLv49mUazC9pNiUKTtkENNrJ9Bq4GivYZp9EXWncQajAFP94VqZglqgXC1?=
 =?iso-8859-1?Q?IzgeMV1Ytl8Mw69LMePx3JGlE2Vb1nBSZGjUz8+3Cyt7VUFaO+TEH6WhHr?=
 =?iso-8859-1?Q?BnmgWHVDtd6ZL8lfWzZnthpaUR++C/EAUGro/311F3R/3oPhd5UkfDY0Sg?=
 =?iso-8859-1?Q?eucgujzMMysRdTe3Av057YQCti/EkXNWSSEcVDD5ZIitLeGmgKuNlJSLxB?=
 =?iso-8859-1?Q?ieKLe085K57xu04hvLV4gKCvLwfKFy9MlSVsRv+D3teuDJ5xAjmxl0s30V?=
 =?iso-8859-1?Q?W4cY2SOjQwrazGXPF2W7Fhq88dc+ZabM7qf68jmNl7WHDtNAI52D+GDEYi?=
 =?iso-8859-1?Q?rRCLn65GvyMHAHO3hl+IL2gyqq3pn6dePotYlrDVunhUM0P0H7FOND45Uv?=
 =?iso-8859-1?Q?Gzz+fhrWpOzLDAIRHLON6AJgSlgNV6Cn4bNfRe6KJ7hqw3lmIhrqfp8t/R?=
 =?iso-8859-1?Q?n8yDrDd6VdlaDdTCBCw4PhL+bdZYvbyKSjNmvbnOywGifuOOkTD2uo0IXz?=
 =?iso-8859-1?Q?xUagVHXeFeXuBGiDk58rNI779Nnl+PJh073rMkw1Uw7Fb0Q2AmIis1eaqQ?=
 =?iso-8859-1?Q?2UnwRDymFPbQ/1RArE3HdRNi0rictInE5aHNxtRCxvyszvlN7EGgK1/Ylq?=
 =?iso-8859-1?Q?yaQhsMuYmel2wejr9XGQzp8MGijkfjVijX6bznMpCVTgQVbYPhIUpKvsLv?=
 =?iso-8859-1?Q?XZS4j7R3OtLADPRK1qSqt7Ys6LsBlCvw09GPXJXlwgoJzZiDiDJl3QW3tW?=
 =?iso-8859-1?Q?68zuylFu/evsbyBG64sr79gHi2j6BBGqVf4U/IQXP+eeLtsbzwIPdKDa39?=
 =?iso-8859-1?Q?Ue3+JP5UX7hK8UlQrwXm23nWDF5xKkWYWjwWnpR5bMHT8+hdmjqcfCRMnT?=
 =?iso-8859-1?Q?DGB75PeyW3Odeps7O8iEHhzowKZWIyD734bh1yyb1pdgUjWwIjFB3/bqHh?=
 =?iso-8859-1?Q?qX5PVz691d4ZlGr2aKK2DJdOHFoVHq3HfZgpo5S/K/alB6WxiWIerUWGo+?=
 =?iso-8859-1?Q?TG1Vh8BdA3ifXsskZy4F4K0eYuH3pZtCdNC0zxpxhTg9t/HmG2l+zquhMb?=
 =?iso-8859-1?Q?4Jlm9il/7EiNrtgSefz+SCAqjfLH+rATPbTrMYojL6HqA0bKdnuMvpJ7/Z?=
 =?iso-8859-1?Q?FBcCD1Ms0v5Fvg8gP843oYr4OwIfUAHp1gTNnAzBylK5uE294OtuDq1Te3?=
 =?iso-8859-1?Q?mBcf/jn+m74DP31YiIG957ladKe5MtfIBhAbYKRinUr/ukHrf2eyaoztZD?=
 =?iso-8859-1?Q?i8iN5BBvjnwAjOcjd9MpksSAPZj/3JwgJDEVvAxq7y30tj3sNTqCuNyv6N?=
 =?iso-8859-1?Q?n7p7YMuyy4Hp+7cEUJlHcQCAblS+lQdTZ8zqsI7CtEErEL+PE+EFPU2qT9?=
 =?iso-8859-1?Q?qwGaFuMocUkP2+KiLi8Qrlvsrls7x2GUpjzKKZdQSEUfB+JNqxotL5P2fv?=
 =?iso-8859-1?Q?I39jpqFWAs1CZ9y2oDr8f8YnotaFJn5uQlDieBcJULUDdOLoEkZyMeCIzl?=
 =?iso-8859-1?Q?J9sXydUKBKHhRgpoqz4dh0qf60EIhzqi0o?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52652861-70f9-435f-2d85-08dda354cb43
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 10:44:33.9179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +udfWgkECF4bMVT6c+mLEFbQyO7JlbtcFS408wRbfZnUk/L+jLnCyDWIIyBcKb47tsyqlZop/UmiYpOPJXm7Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5041
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
> From: Garg, Nemesa
> Sent: Wednesday, June 4, 2025 2:24 PM
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/display: Implement wa_16011342517
>=20
>=20
>=20
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Friday, May 30, 2025 5:06 PM
> > To: Garg, Nemesa <nemesa.garg@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: Re: [PATCH] drm/i915/display: Implement wa_16011342517
> >
> > On Fri, May 30, 2025 at 02:42:40PM +0530, Nemesa Garg wrote:
> > > While doing voltage swing for type-c phy for DP 1.62 and HDMI write
> > > the LOADGEN_SHARING_PMD_DISABLE bit to 1.
> > >
> > > -v2: Update commit message.
> > >      Add bspec[Suraj]
> > >
> > > Bspec: 55359
> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++=
++
> > >  .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  4 ++++
> > >  2 files changed, 20 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 4c845dd410a2..2cdd51cdfe17 100644
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
> > intel_encoder *encoder,
> > >
> > DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
> > >  					  val);
> > >  		}
> > > +
> > > +		/* Wa_16011342517:adl-p */
> >
> > That one is tagged as 'pre-prod stepping' in bspec. Can someone try to
> > figure out which steppings are actually pre-prod and which are not?
> > The bspec page that is supposed to have that information has become
> > completely useless for new platforms :(
> >
> > > +		if (display->platform.alderlake_p &&
> > > +		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
> > > +			if ((intel_crtc_has_type(crtc_state,
> > INTEL_OUTPUT_HDMI) &&
> > > +			     crtc_state->port_clock =3D=3D 594000) ||
> >
> > The w/a says to do it for HDMI in general. Hmm, Windows does seem to
> > do the link rate change for HDMI as well though. Shrug.
> >
> > > +			     (intel_crtc_has_type(crtc_state,
> > INTEL_OUTPUT_DP) &&
> >
> > Insufficient to catch all DP cases.
> >
> The wa is specific to DP 1.62. Apart from this do I need to add some othe=
r condition.
> > > +			     crtc_state->port_clock =3D=3D 162000)) {
> > > +				intel_dkl_phy_rmw(display,
> > DKLP_PCS_GLUE_TX_DPCNTL2(tc_port),
> > > +
> > LOADGEN_SHARING_PMD_DISABLE, 1);
> > > +			} else {
> > > +				intel_dkl_phy_rmw(display,
> > DKLP_PCS_GLUE_TX_DPCNTL2(tc_port),
> > > +
> > LOADGEN_SHARING_PMD_DISABLE, 0);
> > > +			}
> > > +		}
> > >  	}
> >
> > Windows seems to do this w/a before the DKL_TX_PMD_LANE_SUS write.
> > No idea if the order is meaningful or not, if yes we should do the
> > same, if not we should just combine this with the DKL_TX_DPCNTL2
> > loadgen programming we already do.
> >
> Will add the condition before DKL_TX_PMD_LANE_SUS write.
> > >  }
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > > b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > > index 56085b32956d..70ad3f1b1289 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > > @@ -188,6 +188,10 @@ struct intel_dkl_phy_reg {
> > >
> > _DKL_CMN_UC_DW27)
> > >  #define  DKL_CMN_UC_DW27_UC_HEALTH			(0x1 << 15)
> > >
> > > +#define _DKLP_PCS_GLUE_TX_DPCNTL2                       0xB68
> >
> > No idea what these weird 0x168b?? addressed are that are listed in bspe=
c.
> > The whole DKL register documentation is a complete mess, but this
> > seems to be just DKL_TX_DPCNTL2.
> >
Right will use this one DKL_TX_DPCNTL2.

> > > +#define DKLP_PCS_GLUE_TX_DPCNTL2(tc_port)
> > 	_DKL_REG(tc_port, \
> > > +
> > _DKLP_PCS_GLUE_TX_DPCNTL2)
> > > +#define LOADGEN_SHARING_PMD_DISABLE                     REG_BIT(12)
> > >  /*
> > >   * Each Dekel PHY is addressed through a 4KB aperture. Each PHY has
> > > more
> > than
> > >   * 4KB of register space, so a separate index is programmed in
> > > HIP_INDEX_REG0
> > > --
> > > 2.25.1
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
