Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEqlEGJegGlj7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:20:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAD1C9A30
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:20:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB99010E271;
	Mon,  2 Feb 2026 08:20:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZHrhrlA9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD7B10E24D;
 Mon,  2 Feb 2026 08:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770020446; x=1801556446;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZuL/B2FWJBJL9SPDF7m5B5lH9hkgPQYowuGjuqLmAgE=;
 b=ZHrhrlA9a/7NUCVu3+rMY1LWM9n+e//rDYzJ2hzpSbwemTK9VP4t8Woa
 Yq8DxwkbxFgvmnQUDRzdVGm5rDWym0uQ8ZV/xgD9pGH3I4wt6g6BZnxXT
 5UbCrIEmzQmrTw89kHONgli/wAdKA3WW/6rcVFnVrktNuUxm5gQLemtYr
 Jr/1yjxGKhpta6kinraYlI2cVnCP+NRUDg/iRGIBPS8D6AIZ3ukMY1NBu
 6M9rY7HR2oVKsEkMD0wY1mWw8hjTBAqKoe9Cff0GSjjr+HgNAd8pPr0ox
 UVeItDkW3CxvtF39e50uW25cIHsvTS9EycCJQzGRu8QAlVWwu6YqjMWJj Q==;
X-CSE-ConnectionGUID: uH+0nxz1QGq0801grzQpYg==
X-CSE-MsgGUID: 9ck3i/1xTk2eqy8jTvPvdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71258255"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71258255"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:20:45 -0800
X-CSE-ConnectionGUID: 7kiiZPJ3SaS/HBcNYmLuWw==
X-CSE-MsgGUID: GjwxQVymTOCBazbb7PjPhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="208555381"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:20:45 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:20:45 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 00:20:45 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:20:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u6i2KnoaimboWKRxtlwAFxojHnNOTGoKV6X7d/+3soXKKoZw+rebD5YvzW1urJ7Bh/Zj9uBNlUwNKkpykxQSh6tK/S4dlQsmoSZdHS3S18S/ItMqbVgoP4Esm6zGm64pi3GziYktUIwsFdxzxAKLA/Swfqq2JgNryfkSOg4uopGRmpJlsnH1jHh0TYSl9cf33sOjgnJL1DsL8Xp+cideh1yRMUqrTunE9yS8RCZgIEnfkDdnYh6oe1oHLSC84K88ig0Sa93MlqkBWGfbK42DWdXDvhaNCpDep4gW5EUMnLDOcwBvDY9AmpT/MaulIVQNfk3R62RVPjexutwsx2Pmaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TL3zs3NmeVUeG9ZjtfRDCMVPNh8pQvUsBXzaUXSGcnI=;
 b=G3lchAmE6iTJny0Z9WTcAfiZjg9cfMZWpXWoQsGJC3Nf+D2yyHGOya5byCAJnH6VMsGd3hsTnsEN6L9FwGnHulAitjEwmL2gGa4nPfQ97vtr3U626zhx0QRnB6lD3cxubn24YOL8ZYeHxjKtrI2GlRlNVAm0aoH4wOolS82mYtJX0p9C8WYMGP+6bSeG/o4yorlmlAURASog3huSCnVsIHjOedbEBfOoBo9ZFgQMyogacKfmtIYXu1O0Qn//kbsevIShgbAOqFKEiSuCC+LAGMyr/e5ma265+5n44oiM7PZBJTrU5FH2s2NALELtMI5oKf/fWaRzfYIu0eQjmOa7lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB6120.namprd11.prod.outlook.com
 (2603:10b6:8:af::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 08:20:42 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 08:20:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v2] drm/i915/power_well: Enable workaround for DSS clock
 gating issue
Thread-Topic: [PATCH v2] drm/i915/power_well: Enable workaround for DSS clock
 gating issue
Thread-Index: AQHcke7EqndYa0WWykiyCfya++70g7VrDQYAgAQIeEA=
Date: Mon, 2 Feb 2026 08:20:42 +0000
Message-ID: <DM3PPF208195D8D8AF529017B5AB2B0B416E39AA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260130134534.63118-1-mika.kahola@intel.com>
 <20260130184420.GD458797@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20260130184420.GD458797@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB6120:EE_
x-ms-office365-filtering-correlation-id: 827ac8fb-eeaf-4a66-bee3-08de6233f50c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?lOyamSmgRCW6Sn98I0BpytwuwW0MS46+upH+dVH8UQCpfJPnm4cjEJiJSfs8?=
 =?us-ascii?Q?kAMD2aYzXpA32nvEMtk+P7OTXaEgRqA4XMWNEhhsJeI2/EliOSE40DfVHGdu?=
 =?us-ascii?Q?JEwXM9JbwoSds46mgXCOyRFIvS6WH0HWutkvlB4m5eKYOaAI4Uxe3GSrVa4g?=
 =?us-ascii?Q?iD/lQOEKoKvP8vSVtkTMmannsrWKekHyVXqA8VnDKTVDkw1q+3Y3H02c9CaH?=
 =?us-ascii?Q?p0N5wuyZZdm5xJ9Fbwi1trXOBiyKVxQgffgR3VK53+BUiApTQYfZOr80WQs6?=
 =?us-ascii?Q?q2ub+dozoihAj9QNLmmNdOfbdUY/f+0JakRe5nIsoH8gyDVfQFLqxolBdUOv?=
 =?us-ascii?Q?NCLblLNnus30oc+OPsOws2ck28092FU9j3PxpA+Wcg9WTeKZjVPruzZMyRN5?=
 =?us-ascii?Q?tpRs7MOgIqMuA9p/b6caVs7szHOtC6hnn6ul3nhJ8WGVDqT1jdM/A48yRVTv?=
 =?us-ascii?Q?HjgghmOrHBUVHO+e42J4G0Sj8s72tjGypitjM/JUcMDGecAN3bqhui4cUFes?=
 =?us-ascii?Q?yYKbxUZl2X9Y0U1YfeSn30ivhEDkn1pEPk2jrf6ymZF6svqnQsml1UOEFC6R?=
 =?us-ascii?Q?ltkaxszTCzym5YwNVzmyRKmbeyzigcNagamLPbBNtZV7bIEPwmRPWO5op7a6?=
 =?us-ascii?Q?2Wl9/D6aDfbsC5IdpW/rGZD5RfH+DxnmRfMA+WZJcIX+fvwK2Duv5H3BYavU?=
 =?us-ascii?Q?yEihFZzbs7svtJt9hTguRrtFFPNL0S+fBuImcJYXPDI42broSUXBKFmjJLj8?=
 =?us-ascii?Q?DY5UAkXueMV5eK4uFUFnIhKdKWmwAFrKMK252ZzOhVGfAKFcsUML6rtg+Ylo?=
 =?us-ascii?Q?ycGNHu9W2QoF3Q6JiDqJkqHtO7bfaGCbBmjqYicbZeNwzbtU+27HsuImoxAM?=
 =?us-ascii?Q?CdAS0DHifjp6cXA2MX6BaefUjgKSJ9hw2fEZMA2hKGI2hkcfXmJY3sxrv5Ue?=
 =?us-ascii?Q?U6mVrDclx7ap2L687VE7oSpU1DUYjHQtQ2sJeGS7qBJ2Qk3X6+Y8eB+EHGWB?=
 =?us-ascii?Q?WWuThRHEn38Dk2Io/kSJWuzKz3Ar4Wv728766J/ZNjJ9lzfDkHcoedeOyECO?=
 =?us-ascii?Q?YZpqHOluQNpTUXHNO/g87PVQ9s7vaKrW26XpDPcKXn1Sn8FENjm2LmZGSSFf?=
 =?us-ascii?Q?aYbrBMHG2bZwy/zwCQg8Yab7kyhlPMuom7GUCkAATlcdvMJyFZ0FlnSUPVVQ?=
 =?us-ascii?Q?5p87cJWrKrAqiI9lKFifYDcCOdEmHcbDwFwlbAeiwSxDoKXWwSku72dDEUmO?=
 =?us-ascii?Q?QPJB1f/92fPJ1yDJnycGkOlV9XtpWRqLi/dnxlyxcliJHtwsWAVqM8ii4G0F?=
 =?us-ascii?Q?x6QiGtG3XMWQI3TTDwQq3GXrT9rzF2RMqLy2nEx3uTqpOYmI/D3aPTPthahi?=
 =?us-ascii?Q?3qXUAiQMa5UZv74UWs3sV/nxuuIqKXvNQxm4h/Nv0cTFb80yk1n+qn9AZYm9?=
 =?us-ascii?Q?YsRXCCbvEfqUeQGckqpYYO/R/Kd3AKX1vnt1D4AiHguzZEnUQZyfuMkhlJWX?=
 =?us-ascii?Q?0Kfzdn+sTVoTwd3XqiYl+ZeaaXBvrO3J9QB8JW0vTkFHBQJwZCg2rER9o7EF?=
 =?us-ascii?Q?KxrBYRXofF6WKRB0UheA8ON50Um8+ADGj7LZ57DoZPX8v2BqrtzbGhHHarxU?=
 =?us-ascii?Q?xMGPK+DnDNbe51dBz9SJEHE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bqW5mMgrrd9gvY2fsxRkTQ/OEPLs7m9guy+RxENlsNTi2aoHYDepbTy0iDkR?=
 =?us-ascii?Q?yrUPIrixgKdXc4eJelmO5Z1mY2WOw5Zbu6yAXl+6KOG/BHb0AqRn16uOdeAn?=
 =?us-ascii?Q?Woj9SFbTy505x8dTmPHi/bPIpxtNDwV/K2QOZ4WzMEeunbcj3TLFFsIUCSBk?=
 =?us-ascii?Q?m3sfSW225zcq/zaa25YSRHn3EXGpQXNsoFAkFXV+u8yq6yE4yMOpkjO5r4iP?=
 =?us-ascii?Q?8fdfbH4MiGAP9ZM0d3hAtEktROK3JJmnkw10FSr7cwSyUKpOI0oSuVvi21Eg?=
 =?us-ascii?Q?PIwhJYA5MZ6f9ZFw6EFdKoR/U6o98LQIg4K8Hh9gShEoJ5nWY1gUND+plUaf?=
 =?us-ascii?Q?CzqSJh+gqHqIBLoPAZeQ2GZp8ZJPAH4Oy5p8Z3SO/tF2cA13F5xd9lnZCCKN?=
 =?us-ascii?Q?Om4F2EEWPLNPTzcFUehCKiu64R3f36oYQZQ5GUIL2Vq/WwIeknDhc+b+Rtwz?=
 =?us-ascii?Q?G2HsIdOuWnitjqhTn+q5/a9PYi+3TPZJxFRaMSe6zbrs8m2xXyHl8Tu/4JVs?=
 =?us-ascii?Q?ffojKWsDHw+SYixCueKHooJcAY20OvsIWmMWdT0aD8dV49jrK3RySSom22Lv?=
 =?us-ascii?Q?sVehSpLVGY10s57tXaeyImgR+V5H5DyfoIcxh9NKqezDzhBAzxzT0O3Qpi5j?=
 =?us-ascii?Q?Xkb2rHln61h5zVYdZd7s+agE4xlG8j+L3GMlSleNNArzbs7o4mzdBWiLXPW4?=
 =?us-ascii?Q?y+44hMZaXfzO60Ua/hqQAH0qTgGcfKHBSOScpd6yJ+P3jJSdPpbr248kEgea?=
 =?us-ascii?Q?96PNev/Ee0GJ3DjAEp1Y6ZDyB0O7nlhwvsAzGHec9UJyFp30hz0qes1F0GtO?=
 =?us-ascii?Q?F+Lb9W9dvb0iDGNjpcvmCy11+RO64eEt6xSKC13AGTaCl6nWyxbCUQ3wkSMZ?=
 =?us-ascii?Q?yW15rbLiJmw+9oczJWwjpDhqUBba9JcnqxywHwkbACVfZTxNhAmVrfUDkcyU?=
 =?us-ascii?Q?9Fu1nB2N6vDnE2MZMABjc1PtBfVW7v2quoxVdNult2b5JEgtcOOOJaYk8a4l?=
 =?us-ascii?Q?fURpDPp2xPoU42hRWXBnKPsC0V/Aq66+9emeZNEglFNrTdWVrNN07c9fD+zg?=
 =?us-ascii?Q?4GCU+3Jbnq/cwapgOx0nVJ22Ay6PKcwW6Rf2XXk/DEKVK/i9qcwjeG1dSsmD?=
 =?us-ascii?Q?mLw9jKCgcij6UtqAx3usiSTNm2/sC0R5irSWaDB/asF67qcVhA7/nuESZ8wd?=
 =?us-ascii?Q?XXX+7ym+TXKNvjRIR4xzQLS6E+jiwZZ3N0/7tYfgriJ5nkHw3wjoorXXusAn?=
 =?us-ascii?Q?Ii2YTPAo5JOiRPiXRvWVc2lpFvFNOCikQ0C44GFPnwxnIGMZiKkOJShhonCO?=
 =?us-ascii?Q?kS0hngcYoq2GrxOv2Gv4j/+Cvfq1KcWtJBS2g0zF21MIfWUkcNyJWPH7JmAR?=
 =?us-ascii?Q?4Kr4ekA3KpRTR1yDwG2jqRq5tCj7IEqsz8+yiKepbIGqkntJnVqpIiuYjzJK?=
 =?us-ascii?Q?lOrJfRkjxC9PBnsrapv+qTcFNt9lLhvWi/HYmaYxlIH8pseFv6dDcJDgnQJM?=
 =?us-ascii?Q?zP1MlmjyveZlmhk/CcUH/pkEZ/yzytgque8YgbN4EWAOUe7/c4zbF5NeiEwB?=
 =?us-ascii?Q?Ly5hnq6Q2tpIeEJdY/4eFqVOiPFqtABV49fwG7u7tULU/Y99mXubqqrpNg4h?=
 =?us-ascii?Q?c9LjQWhgKzcN/t13uH3wn5wneUL4BMyFFmWaMfNdtgDlNWTSQR2C8vJmiin1?=
 =?us-ascii?Q?g8whjCZ3kY9Tnu5TFBDDKMz6LrJcm+y5WzWH+ygzQPabDlbtVK5paKqu1Tj2?=
 =?us-ascii?Q?urTW4PT6ew=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 827ac8fb-eeaf-4a66-bee3-08de6233f50c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 08:20:42.6861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a7DaRpb4UEKonhymmY7ET65KOzKIoDD4iIKu845PaY03AVCraoybPqSN+pNesKK7F7bxGmqx0/OhdNfWnDPZhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6120
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9DAD1C9A30
X-Rspamd-Action: no action

> Subject: Re: [PATCH v2] drm/i915/power_well: Enable workaround for DSS cl=
ock
> gating issue
>=20
> On Fri, Jan 30, 2026 at 01:45:34PM +0000, Mika Kahola wrote:
> > Prevent display corruption observed after restart, hotplug, or unplug
> > operations on Meteor Lake and newer platforms. The issue is caused by
> > DSS clock gating affecting DSC logic when pipe power wells are disabled=
.
> >
> > Apply this WA by disabling DSS clock gating for the affected pipes
> > before turning off their power wells. This avoids DSC corruption on
> > external displays.
> >
> > v2: Use single intel_de_rmw() (Jani)
> >     Switch to use drm_dbg_kms() instead of drm_printf() (Jani)
> >     Remove WA number from commit message (Suraj)
> >     rename dss_clock_gating_enable_disable() to
> >     dss_pipe_gating_enable_disable();
> >
> > WA: 22021048059
> > BSpec: 690991, 666241
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  .../i915/display/intel_display_power_well.c   | 55 ++++++++++++++++++-
> >  .../gpu/drm/i915/display/intel_display_regs.h |  7 +++
> >  .../gpu/drm/i915/display/intel_display_wa.c   |  2 +
> >  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
> >  4 files changed, 63 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 6f9bc6f9615e..78f707b00550 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -18,6 +18,7 @@
> >  #include "intel_display_regs.h"
> >  #include "intel_display_rpm.h"
> >  #include "intel_display_types.h"
> > +#include "intel_display_wa.h"
> >  #include "intel_dkl_phy.h"
> >  #include "intel_dkl_phy_regs.h"
> >  #include "intel_dmc.h"
> > @@ -194,6 +195,48 @@ int intel_power_well_refcount(struct
> i915_power_well *power_well)
> >  	return power_well->count;
> >  }
> >
> > +static u32 dss_pipe_gating_bits(u8 irq_pipe_mask) {
> > +	u32 bits =3D 0;
> > +
> > +	if (irq_pipe_mask & BIT(PIPE_A))
> > +		bits |=3D DSS_PIPE_A_GATING_DISABLED;
> > +	if (irq_pipe_mask & BIT(PIPE_B))
> > +		bits |=3D DSS_PIPE_B_GATING_DISABLED;
> > +	if (irq_pipe_mask & BIT(PIPE_C))
> > +		bits |=3D DSS_PIPE_C_GATING_DISABLED;
> > +	if (irq_pipe_mask & BIT(PIPE_D))
> > +		bits |=3D DSS_PIPE_D_GATING_DISABLED;
> > +
> > +	return bits;
> > +}
> > +
> > +static void dss_pipe_gating_enable_disable(struct intel_display *displ=
ay,
> > +					   u8 irq_pipe_mask,
> > +					   bool disable)
> > +{
> > +	u32 bits =3D dss_pipe_gating_bits(irq_pipe_mask);
> > +	u32 clear, set;
> > +
> > +	if (!bits)
> > +		return;
> > +
> > +	/*
> > +	 * Single intel_de_rmw() for both enable/disable:
> > +	 *  - disable =3D=3D true, set bits (disable clock gating)
> > +	 *  - disable =3D=3D false, clear bits (re-enable clock gating)
> > +	 */
> > +	set =3D disable ? bits : 0;
> > +	clear =3D disable ? 0 : bits;
> > +
> > +	intel_de_rmw(display, CLKGATE_DIS_DSSDSC, clear, set);
> > +
> > +	drm_dbg_kms(display->drm,
> > +		    "DSS clock gating %sd for pipe_mask=3D0x%x
> (CLKGATE_DIS_DSSDSC=3D0x%08x)\n",
> > +		    str_enable_disable(!disable), irq_pipe_mask,
> > +		    intel_de_read(display, CLKGATE_DIS_DSSDSC)); }
> > +
> >  /*
> >   * Starting with Haswell, we have a "Power Down Well" that can be turn=
ed off
> >   * when not needed anymore. We have 4 registers that can request the
> > power well @@ -203,15 +246,23 @@ int intel_power_well_refcount(struct
> > i915_power_well *power_well)  static void
> hsw_power_well_post_enable(struct intel_display *display,
> >  				       u8 irq_pipe_mask)
> >  {
> > -	if (irq_pipe_mask)
> > +	if (irq_pipe_mask) {
> >  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
> > +
> > +		if (intel_display_wa(display, 22021048059))
> > +			dss_pipe_gating_enable_disable(display,
> irq_pipe_mask, false);
> > +	}
> >  }
> >
> >  static void hsw_power_well_pre_disable(struct intel_display *display,
> >  				       u8 irq_pipe_mask)
> >  {
> > -	if (irq_pipe_mask)
> > +	if (irq_pipe_mask) {
> > +		if (intel_display_wa(display, 22021048059))
> > +			dss_pipe_gating_enable_disable(display,
> irq_pipe_mask, true);
> > +
> >  		gen8_irq_power_well_pre_disable(display, irq_pipe_mask);
> > +	}
> >  }
> >
> >  #define ICL_AUX_PW_TO_PHY(pw_idx)	\
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 9e0d853f4b61..9740f32ced24 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -2211,6 +2211,13 @@
> >  #define   HSW_PWR_WELL_FORCE_ON			(1 << 19)
> >  #define HSW_PWR_WELL_CTL6			_MMIO(0x45414)
> >
> > +/* clock gating DSS DSC disable register */
> > +#define CLKGATE_DIS_DSSDSC			_MMIO(0x46548)
> > +#define   DSS_PIPE_D_GATING_DISABLED		REG_BIT(31)
> > +#define   DSS_PIPE_C_GATING_DISABLED		REG_BIT(29)
> > +#define   DSS_PIPE_B_GATING_DISABLED		REG_BIT(27)
> > +#define   DSS_PIPE_A_GATING_DISABLED		REG_BIT(25)
> > +
> >  /* SKL Fuse Status */
> >  enum skl_power_gate {
> >  	SKL_PG0,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > index 86a6cc45b6ab..f8e14aa34dae 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > @@ -84,6 +84,8 @@ bool __intel_display_wa(struct intel_display *display=
,
> enum intel_display_wa wa,
> >  		return intel_display_needs_wa_16025573575(display);
> >  	case INTEL_DISPLAY_WA_22014263786:
> >  		return IS_DISPLAY_VERx100(display, 1100, 1400);
> > +	case INTEL_DISPLAY_WA_22021048059:
> > +		return DISPLAY_VER(display) >=3D 14;
>=20
> We generally don't want to use open-ended ranges like this; it might appl=
y to
> everything above version 14 that exists today, but it should only continu=
e on to
> future platforms if the hardware teams explicitly add additional tickets
> indicating that it's still needed on platforms
> n+1, n+2, etc.  Once a hardware issue is identified, the hardware teams
> will work on a true fix that will intercept on some future platform, elim=
inating
> the need for a software workaround; if we use an unbounded range like thi=
s in
> the code, we'll never notice and keep applying the workaround even when i=
t
> isn't needed anymore.
>=20

I think with the above comment addressed I don't see any other issue with i=
t

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Matt
>=20
> >  	default:
> >  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n",
> name);
> >  		break;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > index 40f989f19df1..767420d5f406 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > @@ -34,6 +34,7 @@ enum intel_display_wa {
> >  	INTEL_DISPLAY_WA_16023588340,
> >  	INTEL_DISPLAY_WA_16025573575,
> >  	INTEL_DISPLAY_WA_22014263786,
> > +	INTEL_DISPLAY_WA_22021048059,
> >  };
> >
> >  bool __intel_display_wa(struct intel_display *display, enum
> > intel_display_wa wa, const char *name);
> > --
> > 2.43.0
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
