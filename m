Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0921CAA6970
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 05:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A2610E13C;
	Fri,  2 May 2025 03:36:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PUmY0Ces";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EA9B10E0AC;
 Fri,  2 May 2025 03:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746156982; x=1777692982;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wT2R8e7ICBbn5lN2cl+ZZOMmn1KKYZQFpJkTODR5KXc=;
 b=PUmY0CesIIClxyuh9sa9Zei4XkMzyoyhzR2x+NLkV5u8NAvZpfqMtn4C
 T86RkoEwG2rL63XwRONNWoupTFLYRgqP1RB/Ql/9WD5I+QvRva+Ci0Qxv
 Opc9eWHNbwUkTPP2lWDlYcenKCf1P3ZXK5cUdhQ56v6P0l9cIA7NiXdIT
 otTAX1C+EubrxfkZGEVlUuYMSuZfb3IVHQWCqKlx7Zy/DzUjgPLzQx1pq
 jrKBRf6cOovcOJ0pKnWZrHhdGmdjyES4nW9wLl76ypiSg79HQeC7N5pjF
 0OFHkA5VebRjH6E1cnBeEQltUWoHEIYuCcV4mNZCe4hKUEzbG7MZlZvvV g==;
X-CSE-ConnectionGUID: 6IpOtGcCRTyG7s8uhjyoMw==
X-CSE-MsgGUID: vgOO4cifQXGF13lnIRehZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47726895"
X-IronPort-AV: E=Sophos;i="6.15,255,1739865600"; d="scan'208";a="47726895"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 20:36:22 -0700
X-CSE-ConnectionGUID: OfjtBhZiRM+JQjQu9zw0cw==
X-CSE-MsgGUID: Is7X6gq0QreCffEQm+BiZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,255,1739865600"; d="scan'208";a="139347673"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 20:36:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 1 May 2025 20:36:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 1 May 2025 20:36:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 1 May 2025 20:36:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QgtutN5SbivI+8VY1Ap+jSxw9dHfTb2JafBudmOPSwJZ12igT5Mx+g1wpPBLhDbiMOuRwoPxqtwyGKMISHddPeAf5j5GNAAsMuq5aZiY208eoVvnDZUayRtpExSpQDFV3pA3iUNl++mn/5h/hGGLUSanV7vgTUAdKOKsOZIFtMPofRrAMDjc2W+2eA1j1OqOqmAHDqCMG0cHYZYQx4icQtTqJuVtk5nxTo5qANPQOTD99SVoV7LweBuT/XQuDyhF5HN2Sb/Tk67WF8hsCqBKt4S8QLs771KjT1P6LIbjMc4HYupV1Sg9DA0++M4AHK0dtZjvzIn+L3VOnFkddO4beg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wn1Byetzcj1Ux1tcY5nXv4/cKlUSv5otJ/u43N7mkIs=;
 b=sx29i76rddN/TSntOOuSrA11UTf1g7D7K63sEVOLZtMA5rTBVMl/9jhx6MocrkQykYfwJLUvoWyyNm3xIzs2ZxVx+p3SBxI68burLnim7WJY4h/6hVWX/NVDCd/wA0h3YIyqJa9J59eHVdP1XH8K/woBuQXWL1bCpLV9VIjrEXQFO67uivmGaOceFa69JSHnkVFsurEfO93KIlvgmQMxiB4JrHmmAJMhlYP7IE8wxRB3CefwbLNS9UwIzyHKoeewJs40BwgJN5b20n3X3Rdu1iv6VCUc6Vc866FA6EXM5aV9YeQJCHN7DIn+q7a9z/zlYPDYZl2W5Ft7mo/QNCVo3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB8803.namprd11.prod.outlook.com (2603:10b6:208:59a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Fri, 2 May
 2025 03:36:18 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Fri, 2 May 2025
 03:36:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 03/10] drm/i915/hdcp: split HDCP GSC message alloc/save
 responsibilities
Thread-Topic: [PATCH 03/10] drm/i915/hdcp: split HDCP GSC message alloc/save
 responsibilities
Thread-Index: AQHbtVPJC+D+EMn4lkOapJp8LeGm3LO+u/Tg
Date: Fri, 2 May 2025 03:36:17 +0000
Message-ID: <SN7PR11MB6750EC3AC27392BF0B241449E38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <a74fcc941126bf92d12115b5faf4f75099e26242.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <a74fcc941126bf92d12115b5faf4f75099e26242.1745524803.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB8803:EE_
x-ms-office365-filtering-correlation-id: cbb2fa9e-14cb-404a-4c6c-08dd892a7f48
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VGcuTX+UoMtTVSNEZ5fzGygFiAfbAIhfMwos7k9gnaSdIbRUkJTU/hxTXdp7?=
 =?us-ascii?Q?vVAT0nU6phc4wKRU5TKw1zneDeDhgxNIRARU4J5Ijtgzed9LYUUMhwSgFNht?=
 =?us-ascii?Q?j6wTtijf5mgn7X8Wrg+xa0gcnBSiDRj+iKxaPeKi74nPJv5ZWJw/hTWKx80K?=
 =?us-ascii?Q?AAYONplh5hkzqOA8iFWaynQ5K2kvxudQCVHu+tMUKRuonKOXNH7EAEr2GI5j?=
 =?us-ascii?Q?uIi/0PZxoUNegazi5GYKz2wvZXFDeABxssGncgxaQjTujZWV+pp5Z++AF8Ax?=
 =?us-ascii?Q?zqVbAFlO1QsTC6BiOjwI+oKEr63J0RZNdmbyyxFwD0zovqi8rF8irpp4vWkl?=
 =?us-ascii?Q?oSUb1EN2yilqNw1iDqTziZuu4Ouqj/cIIDcPvbzXtRNwakRk9+KFwwLGUyCI?=
 =?us-ascii?Q?hyyzaSiaSBddLyEMKZnKcdaPT7Uq5jiPnWsBnyrsk2C62RF5HjYLV7IYbsq+?=
 =?us-ascii?Q?dSKFgGqoQdn+4pcD86fFUNXo3TeiR4pdts8cqB16RABBR8xqER2ue1PebwWq?=
 =?us-ascii?Q?f0dh1QUXKGqLnlpizDApuA/kjDOZf9U5X+dStZOciiWNOprDVh6u1RNyKoEy?=
 =?us-ascii?Q?QQG1SL4NBtrkr/Z8q297Lvu6Yo84ALGl56wukhGPO30FRNyuUYnX6QxT+okT?=
 =?us-ascii?Q?+3VwNp8yb375kK110tCLzEefjiNVUcLe0Q+1RPuGNUxYrpGlqkaexpF0zCeH?=
 =?us-ascii?Q?XEvmoyVBabjgiqcQte0NMguuzI43vNRdBQneLzUHsX67g/43Yo4xTqsG/VJ4?=
 =?us-ascii?Q?LMk4vhldihpq8rPZSrmkupQsIszzF6Yuu2OsvCz4e38Tfar4gLvZYQgtca55?=
 =?us-ascii?Q?qZvkrvrsWgPuqNGnNcXz8IC1vFrch0zQIJEYsMz//ksl8fY8+qZuEUWbIuL1?=
 =?us-ascii?Q?MD8nrU0Ciq65drIZghMLAeZixyJuQ4Dk49urgLSoOifvqErA8d7z4Q27aYjY?=
 =?us-ascii?Q?AaCjL1iKrd7l/HHlghYiXhadiTU4kGWjTEpvPWqC9W7fJRs8yRtasdzTnrlA?=
 =?us-ascii?Q?CRy1+xpR33sT1c0zOao5fvCte61FU5kfpCgmPphjJvFDD/JYaRisVk83Zr/p?=
 =?us-ascii?Q?ZsJtOhTW8tVK71AY9WOnN2RqUAE5rKFbIhC8aYkKtiAv67k8LN9OcQl5w36I?=
 =?us-ascii?Q?r5NS63/raRk3rKob4bt9rM9yXrdTumJhSSg1MYkJFY1vNfLymh+uFgw/+nLy?=
 =?us-ascii?Q?6y2ZEPkD/bXxUVazZBxFj5AteKIXZIeOyfKQvOCrU9217v4af4JoBqCoarW7?=
 =?us-ascii?Q?laSHIyySydX0Fg6TtOmspq2vQbwDWePD+HgOLJ/sRFdu8UCCw+BYXU58HZS+?=
 =?us-ascii?Q?ovc7oCqbTeF0LcvB1Nmgj1OtD8Pblw3L0WrAC68X2hZCNS8VWUK70mwwcT0s?=
 =?us-ascii?Q?OzHXbVJ4yh0ckmQvs3bC0jWIYJ5vePFdOcYcbGOSCgGaroiR7ZYXyyCY+O/Q?=
 =?us-ascii?Q?L4x7Ng+HDvHDx7Zpz0uXy7tSSgdbs3pQoooDoUps40q5l8lifbfHB4V0UQQm?=
 =?us-ascii?Q?414X9aXfpP96t5M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VCKRk4joTWfJrxSALTJ/9Hl63/aPpcok8z/B0I9shdpT4NlP8b2vdLR9JkSK?=
 =?us-ascii?Q?yOtFKV/nJf3+u8EtsZMdsVtuCiNTWWs9EkunZOLEbXecc+gFKVd2MOxXm57R?=
 =?us-ascii?Q?HyGBtdmdDzIKRnkKZb65/Z9E7FiZu8noEnG2HmWSQ8k1ueXSZ9J9tHRaQ3Cd?=
 =?us-ascii?Q?Z6qYMRQ/ciAC93Ae4ojkGy8079/TyQhVu1mzBtogq23MxoiiNVZFZW9MufwN?=
 =?us-ascii?Q?0Ajs9Sjsfi18NyMMYbIifTPBuQidmsajpoXZSngvtr4AZFn/VpM6+Hq9PB7i?=
 =?us-ascii?Q?prlX1hGQVGHQrpQ5wpfY6E1CC5hO5z+VTqT7v8HDP5MqxqATb5ShmHcS2DI3?=
 =?us-ascii?Q?xg7WTCYHqaxdUO0hVV7a4NEflD/LBM0DVE92h279+pgHLYwswuhulM8R/fpN?=
 =?us-ascii?Q?gRSShnzghGJrzIweTwmbl1R86o+Ql1ETSHInP+EbtB+c13Nsc0c6QU3TvG4E?=
 =?us-ascii?Q?+QqJMXUK5Do/mLvy31vgVMemjuaV518qbJBwKpAPvVQdPWvI7Xy6npYG5SLZ?=
 =?us-ascii?Q?WTtTDvEE5AMbI2s06t1uljZU8FifNeab1Up8KJ5wz9+KUeyBUUpBNZalfWib?=
 =?us-ascii?Q?/9eYy6dUJH6bu13f0Mcqf5b3jdrdh0b9wq4qBOkw9cMgMrZalTCFjy8fP66H?=
 =?us-ascii?Q?IwjTmwlCfWelMUvBCc7+Yf3dDCaXOKGeOcAJWGPd5KT6w//pC5O1yzAZe4Wv?=
 =?us-ascii?Q?hSb5D6v5qgKOMJso9cPAA5i4++ryIMtC8RsK6tkr84yEBdDcI8TN2823dwdr?=
 =?us-ascii?Q?8XvHvlobuPObGaEemMTq4Vlw0NuqMuI8m2gm1TZSYmMGovYWSfOPd+V54MK8?=
 =?us-ascii?Q?YWbKFEefIzWp9T1tiU9qjE3J3A6gFFkMRTbNBSzeo4KcKTEAxu2GDd6ypckl?=
 =?us-ascii?Q?7Gt9adXu58IVxCYFGkphSmAdouhb35i28l7D0V0/ExY4m38eYF2Lxpq8c0ks?=
 =?us-ascii?Q?c+xKTU/uVtXjjklz4ebup6E51IQ7uCkI2tfx36d99/O3b9jLGiP8yJeFNHTs?=
 =?us-ascii?Q?VGCp6bDZxkLQntP8SYOCUh6l49UhRvqnxyHujBeeV6mn+DDChJKKLAMNHOiH?=
 =?us-ascii?Q?joDDinswUyWWOzU0Erz4hPt+ssdSlmACajrRegdp77BZF5gk55A6l8Tagd8q?=
 =?us-ascii?Q?uOc9dIAUnJUizY5/RevVj/gAw00sOcHPV5usBcOTh+kjykF0/xkLQgfcU6bV?=
 =?us-ascii?Q?PM7f2Ww3nhBNIWug+j1CH7v1k1aq1nmp7GRMHfUsml2ldY3WhuNTYd+sdrOY?=
 =?us-ascii?Q?ZipcBrxy4at0yIeov/nqktkqS+n5QDT2e5ZKu8Crv4XfI1pvkSqEdG0wiBDd?=
 =?us-ascii?Q?KrtT6YdkrG9Irpe7HR4zjbQPSE13PkHfOnhHI6pt/VpkNiYrWx7pZSbX2igP?=
 =?us-ascii?Q?DDgpMJYhPN/Tcb8/tcsDBrx+xSjy+xHAcpeIO+6WLXuRhD7e3mjFu/hf7POZ?=
 =?us-ascii?Q?o8mpDPnsN6IcCo+AhStolmExZkw0xw8nbIUxL/SIzi7TNJ0SezgI+BdywgpX?=
 =?us-ascii?Q?JnNGHlsjATtty4WRh9xRw7hp4b5N3NRjiNmTCr11QX8HD449SIzyuo8FCVvA?=
 =?us-ascii?Q?hNlX/+6jmOlLOzaXLKooKnpt1LfNM4RZ2QxmsT+L?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbb2fa9e-14cb-404a-4c6c-08dd892a7f48
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 03:36:17.3337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IPrvxrxtikWNaBtYJqQ2O4ZP4VBXLccvhVkScLH9TOZLC/At6bXqv6kuY8hdXAVc6A8VrTiGpL2dmgx2J1Lisg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8803
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
> Sent: Friday, April 25, 2025 1:32 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 03/10] drm/i915/hdcp: split HDCP GSC message alloc/save
> responsibilities
>=20
> Allocate and initialize the HDCP GSC message in
> intel_hdcp_gsc_hdcp2_init() as before, but store the pointer to
> display->hdcp.hdcp_message in the caller. Similarly, pass in the pointer
> to intel_hdcp_gsc_free_message().
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 22 +++++++++----------
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  4 ++--
> .../drm/i915/display/intel_hdcp_gsc_message.c | 12 ++++++----
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 22 ++++++++-----------
>  4 files changed, 29 insertions(+), 31 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 92a3ad2166f6..68d912dbd658 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -90,37 +90,35 @@ static int intel_hdcp_gsc_initialize_message(struct
> drm_i915_private *i915,
>  	return err;
>  }
>=20
> -int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
> +struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct
> +intel_display *display)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_hdcp_gsc_message *hdcp_message;
>  	int ret;
>=20
>  	hdcp_message =3D kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> -
>  	if (!hdcp_message)
> -		return -ENOMEM;
> +		return ERR_PTR(-ENOMEM);
>=20
>  	/*
>  	 * NOTE: No need to lock the comp mutex here as it is already
>  	 * going to be taken before this function called
>  	 */
> -	display->hdcp.hdcp_message =3D hdcp_message;
>  	ret =3D intel_hdcp_gsc_initialize_message(i915, hdcp_message);
> -
> -	if (ret)
> +	if (ret) {
>  		drm_err(display->drm, "Could not initialize hdcp_message\n");
> +		kfree(hdcp_message);
> +		hdcp_message =3D ERR_PTR(ret);
> +	}
>=20
> -	return ret;
> +	return hdcp_message;
>  }
>=20
> -void intel_hdcp_gsc_free_message(struct intel_display *display)
> +void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message
> +*hdcp_message)
>  {
> -	struct intel_hdcp_gsc_message *hdcp_message =3D
> -					display->hdcp.hdcp_message;
> +	if (!hdcp_message)
> +		return;
>=20
> -	hdcp_message->hdcp_cmd_in =3D NULL;
> -	hdcp_message->hdcp_cmd_out =3D NULL;
>  	i915_vma_unpin_and_release(&hdcp_message->vma,
> I915_VMA_RELEASE_MAP);
>  	kfree(hdcp_message);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index ad41e7e80095..f3362720d742 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -19,7 +19,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>  				size_t msg_out_len);
>  bool intel_hdcp_gsc_check_status(struct intel_display *display);
>=20
> -int intel_hdcp_gsc_hdcp2_init(struct intel_display *display); -void
> intel_hdcp_gsc_free_message(struct intel_display *display);
> +struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct
> +intel_display *display); void intel_hdcp_gsc_free_message(struct
> +intel_hdcp_gsc_message *hdcp_message);
>=20
>  #endif /* __INTEL_HDCP_GCS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index 8e2aafff71d5..11aa6772f272 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -633,8 +633,9 @@ static const struct i915_hdcp_ops gsc_hdcp_ops =3D {
>=20
>  int intel_hdcp_gsc_init(struct intel_display *display)  {
> +	struct intel_hdcp_gsc_message *hdcp_message;
>  	struct i915_hdcp_arbiter *arbiter;
> -	int ret;
> +	int ret =3D 0;
>=20
>  	arbiter =3D kzalloc(sizeof(*arbiter), GFP_KERNEL);
>  	if (!arbiter)
> @@ -642,8 +643,9 @@ int intel_hdcp_gsc_init(struct intel_display *display=
)
>=20
>  	mutex_lock(&display->hdcp.hdcp_mutex);
>=20
> -	ret =3D intel_hdcp_gsc_hdcp2_init(display);
> -	if (ret) {
> +	hdcp_message =3D intel_hdcp_gsc_hdcp2_init(display);
> +	if (IS_ERR(hdcp_message)) {
> +		ret =3D PTR_ERR(hdcp_message);
>  		kfree(arbiter);
>  		goto out;
>  	}
> @@ -651,6 +653,7 @@ int intel_hdcp_gsc_init(struct intel_display *display=
)
>  	display->hdcp.arbiter =3D arbiter;
>  	display->hdcp.arbiter->hdcp_dev =3D display->drm->dev;
>  	display->hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> +	display->hdcp.hdcp_message =3D hdcp_message;
>=20
>  out:
>  	mutex_unlock(&display->hdcp.hdcp_mutex);
> @@ -660,7 +663,8 @@ int intel_hdcp_gsc_init(struct intel_display *display=
)
>=20
>  void intel_hdcp_gsc_fini(struct intel_display *display)  {
> -	intel_hdcp_gsc_free_message(display);
> +	intel_hdcp_gsc_free_message(display->hdcp.hdcp_message);
> +	display->hdcp.hdcp_message =3D NULL;
>  	kfree(display->hdcp.arbiter);
>  	display->hdcp.arbiter =3D NULL;
>  }
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 21cfecf077bf..d15565bf2f9f 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -99,15 +99,14 @@ static int intel_hdcp_gsc_initialize_message(struct
> intel_display *display,
>  	return ret;
>  }
>=20
> -int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
> +struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct
> +intel_display *display)
>  {
>  	struct intel_hdcp_gsc_message *hdcp_message;
>  	int ret;
>=20
>  	hdcp_message =3D kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> -
>  	if (!hdcp_message)
> -		return -ENOMEM;
> +		return ERR_PTR(-ENOMEM);
>=20
>  	/*
>  	 * NOTE: No need to lock the comp mutex here as it is already @@ -
> 117,22 +116,19 @@ int intel_hdcp_gsc_hdcp2_init(struct intel_display *dis=
play)
>  	if (ret) {
>  		drm_err(display->drm, "Could not initialize hdcp_message\n");
>  		kfree(hdcp_message);
> -		return ret;
> +		hdcp_message =3D ERR_PTR(ret);
>  	}
>=20
> -	display->hdcp.hdcp_message =3D hdcp_message;
> -	return ret;
> +	return hdcp_message;
>  }
>=20
> -void intel_hdcp_gsc_free_message(struct intel_display *display)
> +void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message
> +*hdcp_message)
>  {
> -	struct intel_hdcp_gsc_message *hdcp_message =3D display-
> >hdcp.hdcp_message;
> +	if (!hdcp_message)
> +		return;
>=20
> -	if (hdcp_message) {
> -		xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
> -		kfree(hdcp_message);
> -		display->hdcp.hdcp_message =3D NULL;
> -	}
> +	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
> +	kfree(hdcp_message);
>  }
>=20
>  static int xe_gsc_send_sync(struct xe_device *xe,
> --
> 2.39.5

