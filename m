Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B48790C29F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 05:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D9310E55A;
	Tue, 18 Jun 2024 03:58:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JxI66rq2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45E5D10E55A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 03:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718683122; x=1750219122;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1kX1EI6A2CKp7igUiIsNaW5nrRRXqhyaJ8AWWMM02Fo=;
 b=JxI66rq2NTJAeANbYcfCGpHZSXLRDzKXOrD2HJE3asB63Zu7mtwCnaYV
 dpSGNSERLm7itXu6XVH46qcM+re7yS3B5A1Lm57dze/kgvADtOyQQjubh
 ZRfGERJMWUxfRMUPHP8o4Tklmsuz9S1xLmjiF5HqlgrFtIBilkEkG7G3P
 6xRwf0tCG16yTwyg9+LY3c2+t8wGKfyYM8/TkcGh3dxwjAE2KEKhj71IJ
 rsllXYtoEpO2ZXumMaKdpXsYBcXvbgquC2NM26bS+MBmilu/Es+NKmMK7
 Qe022639ZwEaR84R7VlTMi6Owv9rXl2a3vZAkEUdEDuAKdPVHOa8v32H5 w==;
X-CSE-ConnectionGUID: A8Ey9QMcTKSDdX7ObenhUw==
X-CSE-MsgGUID: Bd8KZaxdROOz286TnEmLRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="19395586"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="19395586"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 20:58:41 -0700
X-CSE-ConnectionGUID: +Q9kqZuURAmufLO//gC1TQ==
X-CSE-MsgGUID: MbKoaBRTQ/GDBqbhZmIMLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="78861652"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jun 2024 20:58:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 20:58:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 17 Jun 2024 20:58:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 17 Jun 2024 20:58:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RJrw7TIqmeHmEvTemmXnnWScYk8XjRbNGz058d0bR7RIfonDUHCyyLWuMED9RK6bdSrqQdi6c9q+RlctydmyivFnaz9EyPrTL/WOL+FwdIj+qiM3QPQHnZ1lStgnG0S7IYiF9LlOvf6DrUyr8DlSRDx1oVyKguAU9H+bt+yA3BqB0wKNI+0MyHL1ny+wb/Q6p8C4u84Xx5cEciOTDt0rm5aovvVXFqvfZReqEJtaEe9H+HdOh2TKmb4U02PG8d4C8B0kvZjflod8Bn+iOdsdL9CFhX8Kc1p+5rNPqQdyZeg96ae15hA6+WRY4KWLXChJzjXlqn5qc/29k9T5pBN86A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FpTG72B/Npmatk/CSeNdhpMmFCqh4ssdHoRXgES9jvs=;
 b=JRN3lEQAGqBZ9Kc2Id5gYvSVru1PV8NWyrcgDguuds1ERg1uiLE9DRS81R61A2/WUPG+2OFcN1iznbPovQ4vuTrhCfJKU/8QgZiIsNgdlrlwnjY1xpOOCBAk3aJ8j5WW8DXVoliGdBCaP7aWvcPZ3n9n9sM6i/huZ6ASlTIaHNL3CVl0qW7T0afXMo68i4hpe5+f/bBH2VHZLH5Te/6nGzLl/HKWco7gdmaFKCmu7ScdDw5lrjNDohrIuqEEhavyuDXvgEnvKuLs3CRdmqqt9fsaMZmwSC+dRctlX0gXyhesZ5U6Lk7ZtPUM18dMhGbGb6PGBFkSsfeJ0v85tVUPcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by IA0PR11MB7306.namprd11.prod.outlook.com (2603:10b6:208:438::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Tue, 18 Jun
 2024 03:58:33 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826%5]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 03:58:33 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v6] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Topic: [PATCH v6] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Index: AQHauxNdohQpfY2rz02PARUfcPxyybHM8AlQ
Date: Tue, 18 Jun 2024 03:58:33 +0000
Message-ID: <CY5PR11MB63440749DDB1876358463910B2CE2@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20240610083441.2421326-1-animesh.manna@intel.com>
In-Reply-To: <20240610083441.2421326-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|IA0PR11MB7306:EE_
x-ms-office365-filtering-correlation-id: 7f2a7968-29d3-4049-93ee-08dc8f4aec44
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?pYTemipKgow6O3nsFWkyeN3pVIIOJRDr2RIKK5GtoGES428+uKoYgZfm4feE?=
 =?us-ascii?Q?PDdNBxq+742qh4Lme6+2g+t7Lvtc0ToDZbKC51zag0rI7q4Py4DCM+0fJn01?=
 =?us-ascii?Q?Q/e284X00zx0npRVbHbt36ut/w4Pw3VEvUWlJiIG10G3mOhWbVBd1fcuCou1?=
 =?us-ascii?Q?qxZYhuInqTqIcITYsQ6BM+YsHtjEJhdD/cdsRgH1dKTzH1qQwfaZoN9idmQt?=
 =?us-ascii?Q?Tj6E6QGOUNZ3qfzsPgrob3jLxEAxdl+FV250HIn2L4Q0MCDJ8nImw4VGx6jF?=
 =?us-ascii?Q?4DevzLvY4keoxyHdt58YxN1opLxCghLLMb8e7LU2eR7JAXYG+Ha+K3XwGHOG?=
 =?us-ascii?Q?/f1Rjtn/FS37a/1VE/LBK4UjEYih7sswVRoIIRghj4l++wJ4lLTt+njtcDvY?=
 =?us-ascii?Q?FPEcaqJvoShyWE1D1R6BD6cWBLlvgn4nJrgD94Vva17254YtIxfDjxDixnQm?=
 =?us-ascii?Q?HxeZfWS9yAaFi1Abm8GZs5QLs1BgKSCUWS2EJ/Iy2iSuqjqNVZt5+bUjmj/M?=
 =?us-ascii?Q?i6WTu3KcJATsvHjOP7P6fQ5XnTcVZc73OhcUlbaKI5rVhhblH6wMVKl2eTJL?=
 =?us-ascii?Q?Z5fQi/wRZ6s4SFZb2QuMa1BHXfaQPjC69dW9oy6PQ1kveLgxGhoJQhj1SHbk?=
 =?us-ascii?Q?aei+bdz0coxs6RP4Y6eEPf+5ba9Vqdnnt3tDhGqmEUtmsDJmODpyi9YB4Bdc?=
 =?us-ascii?Q?Ozhqd+BqjPc4PqeT5+tv8Z15aSXQkhhPhCxig0a4xupxNlTQ1tZppzMTqhLU?=
 =?us-ascii?Q?BedaXty25nLHksy+mquDWQ8RqfMcFxZ4lloyC+6rwVGG1jgX6dIjU9mnYC84?=
 =?us-ascii?Q?P8MPsnb6OQe4P1v00O73Azk7uDqSA3y4W9I1OSww0ORiI0NYRy28NupfISYH?=
 =?us-ascii?Q?KCyscVNawnzOlZbbokxhYvJDQY9Kug7MW/3VLpkoUNxY57KlRIofNo/KziAS?=
 =?us-ascii?Q?5TjjkPqEN2bQH/M0pkOQn+q3+UlEpqXnizFDS8bswY4ftut0c2l5JZdI7Mc+?=
 =?us-ascii?Q?5cbTuQcbDx8ic1cR1spnybvfQxaF+kXjlsE/DWJtEY06EfV9jxMmPg9vpq6C?=
 =?us-ascii?Q?v4qAdz8OZfaxptd7eH2s3BMXeTam8VM8cjoyz4KHef87lSIWhu7CL/TJ8Hgt?=
 =?us-ascii?Q?ltD1ToRZi4Tsl023g0lHWLAcaKCUBHqWo8I9RemSz3OX5WgOpUQa6s4ULTJp?=
 =?us-ascii?Q?A+HNuOY8OSrlqjnM6aRHHJPSqrPNfXn5BCobpb8r9QX1L1WGGjyKbWwHR0xt?=
 =?us-ascii?Q?kziv4cvI9xZpJ4uJtuo1dYpLb3vh0o1fX2gSEQadkWhyM0dmsukfNXbG81Ey?=
 =?us-ascii?Q?p96OTv5fJFkcJcUzQz7P+FINXqmKEl2l8wNW4JKkqjVOjxqYJ7LiuWgGznRP?=
 =?us-ascii?Q?HG5dduA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bKLAPUA5lZQdv5gqoxpcZycRbeQ7MPcZ5bszccMZhJZEciaqP/gIe2hfKOIv?=
 =?us-ascii?Q?qgprbBzqSv8CgfqSUelm5kcD2yQKx5VKXSINQlJnfnjHgmAqXdDhpa0wtr04?=
 =?us-ascii?Q?D6GBFEqlJN4QscXY5q6HkAgyhdsNsZsBM7qLVpDsn6tT0jnOeeYFmtPGtbGJ?=
 =?us-ascii?Q?jUVYExiH33oTBi9nk1tc4p9Jq6ePtN+yy1Xa6c1Q5oTDKoo97wH02qL1oV2E?=
 =?us-ascii?Q?4tEJca71eBKcQKPuzGmw+ib6icUvvj5k82siD1fBZH5twibqpaJ3GOPJDkXA?=
 =?us-ascii?Q?PPS8he7WnrQh4AFcPWEfM1pbAMviLcXvyqp2Uh7G3Y2aa8VO6p/aRaKYmOgm?=
 =?us-ascii?Q?jRvyA09fyDq3w3C1D5UelCWUyBWbAJdNv5supo1r0umJ08BT66+paU7OqdZW?=
 =?us-ascii?Q?En6FKeEQvnxBkAIgxpIGK+4P/tTZtKkPXUqegjH/OQVSiE3hmXTAVCjOdSlQ?=
 =?us-ascii?Q?lgxlqfvlFvIDlSDVwx6pRK3udt0M7HOSks6s3t/zkvo2ZyMTGSpbz3QWXw2j?=
 =?us-ascii?Q?q9P9liGJfMFp8qtbFWDv98pjKaTkoSkFyWGL1b9PtejGpUjEjrmLW9D0/Hri?=
 =?us-ascii?Q?OvihroiMw8CXLJWbkiGc/yhHVPQWg0hi8L3GjFWNRxQIVhP2NGIcENo0JI+r?=
 =?us-ascii?Q?Zj3XBVJ6AxhbRweKyjDkMwrMfWUncySDZrbhV5eAt+9XSD5+CLhZCFYJI2SJ?=
 =?us-ascii?Q?891V+sema4cSV506QATBmUc98gxPwvgBP87WIM2DAPuX1+dq7h6c3sERqrvI?=
 =?us-ascii?Q?+AltEp7KhrT/+pRaxFRQxJbsnCGFaZ55UKjotwijx1haRIVpwGi6NKyDLAXC?=
 =?us-ascii?Q?57oonbX89eh2CMnD3AIVxgwAJf4l6sV2NmGWqnwP3VnTmwqzShl04mFq2s0I?=
 =?us-ascii?Q?E9aET5e0A1NHlwp3GhPnzreOlCuo2L1gc+rbRmKn8GxUmIfMp3VgYDRDRy7/?=
 =?us-ascii?Q?60OG/KNhB/zXbR7pAsKC0ka6N+kCdPqU2tbQWpb+cKpZVAiT233BKJYN9eYk?=
 =?us-ascii?Q?wCiQEWuMtmRhFpdDtxja0A3NWri6tExBci00R/VYILK52DtFCvUYfa4h4s4I?=
 =?us-ascii?Q?HNo+2aJlTkhHvOBU2N2LjIjkvJM23MILHApgtFqp6YM0C4bDgY8WeHuZGJZa?=
 =?us-ascii?Q?H+Z7YppqbW9yQ78uoR6cKQiIG2X5HU5U5wy7FzCj8IG16e5QtmPpTfwYDkmS?=
 =?us-ascii?Q?yvwrxzNKjk/b5uNTO0BI4uCbwtejouImr2zq5bsj/3P7FDzKZYI4E7C2IuUi?=
 =?us-ascii?Q?yzmHT7oZy46o+5sB/oJM5XnzXledn560ELQMcvHZMh6YCmoBCcmktfyiO488?=
 =?us-ascii?Q?zgwcMVG2kIxmlkLukYjGm375BT6ggN3AyL+0m81siZedP03OS+TCsHaRSRKD?=
 =?us-ascii?Q?ZQerRS6MYj9NUwLVxRhX/M61kXLCAg43pvLFfs4AzUuRoq6t02ELrnpJ3N9G?=
 =?us-ascii?Q?xMaa18Qll1iE9blmgnAARTkbI1nOF7zoLAtL7JbU7gHNBZ/bM9CTQaRPu86U?=
 =?us-ascii?Q?d0AP6rMPMP585tTFLrj747cNkMQPeR5qFFoDPZFcME5EdGBTbC3NFCcHjj4q?=
 =?us-ascii?Q?MA3I78fOO4OyHviJXQ/3iKUP7Hp8UOY17FQkAlSV8UJj79eT1GOH9050IDGE?=
 =?us-ascii?Q?FwedKpa697kGt4Xj3qIfaN8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f2a7968-29d3-4049-93ee-08dc8f4aec44
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2024 03:58:33.3946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 68tYRpQ6ROCZw11x48xv37zzLrscE4z9wuCLsMgMzL4uIlh2jnCK8SQyNKy+UwZRPgRQyOEw3dlVSYswiC5rNdzrKQrJub39dqQ0sku65kFyKRLkJUCephIIntj5eMBJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7306
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

Hi Animesh,

> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Monday, June 10, 2024 2:05 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Hogander, Jouni
> <jouni.hogander@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
> Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> Manna, Animesh <animesh.manna@intel.com>
> Subject: [PATCH v6] drm/i915/panelreplay: Panel replay workaround with
> VRR
>=20
> Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and W2
> are 0. So Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register to at least a value of 1.
>=20
> HSD: 14015406119
>=20
> v1: Initial version.
> v2: Update timings stored in adjusted_mode struct. [Ville]
> v3: Add WA in compute_config(). [Ville]
> v4:
> - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> v5: Move to crtc_compute_config(). [Ville]
> v6: Restrict DISPLAY_VER till 14. [Mitul]
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  2 files changed, 23 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index c608329dac42..96dd5938229b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2504,10 +2504,15 @@ static int intel_crtc_compute_pipe_mode(struct
> intel_crtc_state *crtc_state)  static int intel_crtc_compute_config(struc=
t
> intel_atomic_state *state,
>  				     struct intel_crtc *crtc)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	int ret;
>=20
> +	/* wa_14015401596: display versions 13, 14 */
> +	if (IS_DISPLAY_VER(dev_priv, 13, 14))
> +		intel_crtc_vblank_delay(crtc_state);
> +
>  	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
>  	if (ret)
>  		return ret;
> @@ -3917,6 +3922,23 @@ bool intel_crtc_get_pipe_config(struct
> intel_crtc_state *crtc_state)
>  	return true;
>  }
>=20
> +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state) {
> +	struct drm_display_mode *adjusted_mode =3D
> +&crtc_state->hw.adjusted_mode;
> +
> +	/*
> +	 * wa_14015401596 for display versions >=3D 13.

This comment needs to be updated in alignment of ver13 & 14. Needs to be up=
dated
Before merge.

Overall, the other changes seems to be aligned with the provided comments.

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

> +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register
> +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> substracting
> +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> crtc_vblank_start
> +	 * by 1 if both are equal.
> +	 */
> +	if (crtc_state->vrr.enable && crtc_state->has_panel_replay &&
> +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode-
> >crtc_vdisplay)
> +		adjusted_mode->crtc_vblank_start +=3D 1; }
> +
>  int intel_dotclock_calculate(int link_freq,
>  			     const struct intel_link_m_n *m_n)  { diff --git
> a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 56d1c0e3e62c..d426dd9f7f87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -428,6 +428,7 @@ bool intel_crtc_is_bigjoiner_master(const struct
> intel_crtc_state *crtc_state);
>  u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_=
state);
> struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_=
state);
> bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);
> --
> 2.29.0

