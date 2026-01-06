Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D014CF6B97
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 06:05:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3CE10E068;
	Tue,  6 Jan 2026 05:04:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F7vD+qwa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C5C10E068;
 Tue,  6 Jan 2026 05:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767675895; x=1799211895;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SRoy+8TsstGPtc2O62z6Kd5jAN6yhzDtOs9ZhIq6vMA=;
 b=F7vD+qwaiD+cFhTq2RnLkOOSoWdkpfZLA6mg04g5nsRiJuqk4hU0wN11
 35RVGTuNx2+p/1/UIxdyUND9JaVDqzThTzgwFH16jiaOJr70GuS2B7rkl
 RYrrQsY/1GsckzNcMUjT70fsYw2DNvfzFBewT09heEX77+3Qa4DEkCibl
 t/1dckzCulodgUwFCvGlGvdBTV5TjMQjX8TZRmR2LKoP5ekmrfX9XH9Fr
 VTTHs5Q78orKYjv6WBwlPiOy89bhyCR84xvDCkmDNoHQOb5JH50ndiKBI
 ibtV7jYejv+Oip6qbKYsvHrvRXtUjkFYdMT4/tFgfonUjRuwk2QNwAdZ7 A==;
X-CSE-ConnectionGUID: VvRmG0kFSy2bhtGhwPSA2w==
X-CSE-MsgGUID: Q+i7Sc8hSiaAcAzPm3m7sQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="56605536"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="56605536"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:04:55 -0800
X-CSE-ConnectionGUID: nhd3dl2vSxyNJcSthZZPPg==
X-CSE-MsgGUID: 9Zv0HWkPQ46NwD0NacAY3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="226121166"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:04:55 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:04:54 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 21:04:54 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.8) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:04:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KjGfaui+/K/IeOFBo/ESpBzsnZ6MKwgMm3N/vadjcDWfDZxa8XLUqA2UhGHuNdTNBk3V2axIXNEgTl+qpCwUtducevGr89I4DujoD42KtSSK/AUCNSTyHn38wAiZk+tVcdT5cvyc7LpqsaFVDhSkO/8C3fJ+DnkY5dpCQIJEwFp5M4aTFzYgiEkJEUFPdvS1OCVSAoMcUy764Z97BEqMR+9OoQ0CRmew5tbcH5oKR88P2RLd4C9RYUpu4sxRMbUOIUPUB5NJvf1IR8pXQz9Giz+NgrQ51vwdzke7JprcKLMSdi/kG/odsA62H0fW8vZyxBBjAitIdICogm9wpZJgSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hm4lnV9N/JAcb+eWEAua2XhLqTzkcYNsVeNEPNkN8tQ=;
 b=s1ou8OMp0/9XfmxuSi3P2NY6D+Z5xlkC2y4okIYg3Bb18mcNyrDbhXG/z2GXY7eKEeeUQ9VBmg2XchcqMTpLGyIrfcYOzKztxtdBDVJbKGcOk9t5qCwJDoLKWkbTk41MC+aIbLkPFNMKukZZPSLfkCZIkYto76ZSEHfFTc7K9PZggKlnLv/NYezONZfqi2mF0PZXaVQyml5GrtNRB4/zcZt2l9iPnym3cVjiGsvk8apzDVydbokEKqDLgoVzIxBUcZ/pAxDl7zAO633XQqR3NA+6IVdBXEeQS2F4Qf84aWeZvw5NxKGmnLD4xBjLcUciefZzVSObEepR4RMDthm8Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by IA3PR11MB8967.namprd11.prod.outlook.com (2603:10b6:208:574::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 05:04:48 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 05:04:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v2 11/15] drm/i915/cx0: Verify C10/C20 pll dividers
Thread-Topic: [PATCH v2 11/15] drm/i915/cx0: Verify C10/C20 pll dividers
Thread-Index: AQHcb2sLE2UHXI/l/kmI99GB+cj0TbVEs+Og
Date: Tue, 6 Jan 2026 05:04:48 +0000
Message-ID: <IA3PR11MB893760F05BC486300F40B951E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-12-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-12-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|IA3PR11MB8967:EE_
x-ms-office365-filtering-correlation-id: aef89916-f14f-4706-b1bd-08de4ce11dec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lPl0fOPPbXlIH6E9yTJiNh79FUVY6uuG77Gt0H/xINuv39HfD7lCaWZ3jGGL?=
 =?us-ascii?Q?igMfHr6aoDaBDBSXbvfmUSVwuTKFtj1krhX8CQ0lV5EUNGPY0bivJFIAodY6?=
 =?us-ascii?Q?Z4zxH+Jyqa9q00MlUwDTxk0miQ+AbCg5LrOKYDNqSlFN8qIppUXbjIuDFUr3?=
 =?us-ascii?Q?SRhAfgnVEHoo17DX3cz8cxlEHTcslgiT9l3yOlDWe2r8z6kDiczY2bWKChKj?=
 =?us-ascii?Q?iKz2fQ1fzIMxXFcDcGXKzTLDHDSdcZ0QCCjhPZ8N58iIbqtx15EjyKj+eR1G?=
 =?us-ascii?Q?bVW2+R1FJ9aTz+kPuujkOJsglu10bdajLtUZq6J36D4wMyRiIRGQo5qgcoj6?=
 =?us-ascii?Q?MZJtWDDSBe0jiK8yYRehAMZLnpVWGZyGhPNw5xKiUgLvzsrWJ8eIDOucJq3f?=
 =?us-ascii?Q?cjvEt4pCQ0125Z5gVh+0HKuI2BxHAY+zmc4OmK5Zi0yZq4XVJUaYtQWc/pjZ?=
 =?us-ascii?Q?MZXFvxvZDNpz93gBBeg00YsKq/QGwaiqoc9XtZ4IOir3FmTb3PTeIPfe4GNj?=
 =?us-ascii?Q?F93UEXqTX7GCDZ6od7nPcHkk9rNnseMgW2Z3vy8d+AF+En+ssekJKrYCCCqT?=
 =?us-ascii?Q?EE38egLRGkBgRqPbr0nDyFYoal6bS3lmUulzN4bT2oqOC3Bemt5GruHtiL6h?=
 =?us-ascii?Q?NqWnlGKmIWGSd+jiTzP+l0pOWj5VkBveh4LTilqWLhAaRDT6BuIU4gOXgaf0?=
 =?us-ascii?Q?mMLPyBplO9kRrIPdLEfuquNnWbBjx04v17Yp/BVUuqVotqjmSxQMLivARJLR?=
 =?us-ascii?Q?dSX536ECNuqILJnL8BHRSzSMfGbEyiQeOiGdQO1tQrUbnZz6VSpjIp2mZk3C?=
 =?us-ascii?Q?QhNJMl6Nf31N1HKcrw9umyJzuNdxC0tWMgNlKkFzUP9LFlUhR99hlnolCBlo?=
 =?us-ascii?Q?Q2Q0Q/k5dpmu/yd/4H1In652lJalMqwkbC3dDaJwOIqNlknk3tEfptwzTjBC?=
 =?us-ascii?Q?ko2RyXXO/eBsAgbLQjo+58ZzJATNX4ETWK1FS8bROeyoBZyui0h98YA2a3tf?=
 =?us-ascii?Q?a2ppvvJY0sLY9UPxwzZJc94DGQMPDYkeEGCmbdc7+S6DDRBIdSyIEzcUjyma?=
 =?us-ascii?Q?eKRta1mR4KQ5wE9WQ4XNtBeTUZLZMW5CW+15g7WfrtwdUgHtUdhw++GzPpcL?=
 =?us-ascii?Q?XC91qMj+7wgYU/aLPOfB+oqrLt2Y3nuxE6KAxcK08fHMQ5Z1jvAme26BYquf?=
 =?us-ascii?Q?sSSAQYO5e5HHSd/DGltRbtGbtKUf+rqUERBOyPS2Wb3oU/S/KLL5gifYiUpG?=
 =?us-ascii?Q?wFg6uEpfpw4W+hXRl5j8VyAWe/v0synAwKWVFJc3yu2EDwyNNSeQgSjQXqOd?=
 =?us-ascii?Q?9pNEPueeQ6uUeIEIVdWq7pGckQ2P3FditVcAYjLtGmk2sKvwfQQ+bcNogiod?=
 =?us-ascii?Q?bTFtFbpyixNsoaTxlDln4OIal+7K3g49lMPomcAhZJcsHU0DZrMDo7ZoK3Hd?=
 =?us-ascii?Q?wPdYjsEvUFOB+aDt6i3xE2lQP+h+hkSEmOOdCxkadePE6Oi6/ia6AsHa5MY2?=
 =?us-ascii?Q?KP64ybrzcR9lw5ZfJjdCFlsrZQPAkOsMsro9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3wOID+F2KrmBmsexjL4aKlO54ICAs5Sy3RLOWjo5AKYfZP8RNqRKCpi9pYQW?=
 =?us-ascii?Q?ACHXVTM47N8ljCxhl8JNqeURmo45Qjg2p6y6+IXNlNxe9l6jTgTBnXd/o6aF?=
 =?us-ascii?Q?r+mCq3bGLHPVIjUXY8OL5FBXpzn1ntvt1Dt0JvnNJ6AXlHNEiq3ALrdWYO8/?=
 =?us-ascii?Q?qzQGbgBtcdQd6IyhFO9/DaniPBi1/9LqScXFr7WcbGliTks06zMU7eSu4lKt?=
 =?us-ascii?Q?j4g7TsDeMkqmdyCJSQVbQW2CC1pmrfzkXaQlUIRBQKi05tdboUZG0W0n5EzD?=
 =?us-ascii?Q?rhcqGDCl1QQfv9y9KZ3n8LgJ82dIKsTEENA2FMnchxYU2dvPJSLzG6cHdJG8?=
 =?us-ascii?Q?M9IVuYxDoGJb+MaMAVLQwvJS6ZAUjDo4nu2gP4BtYZUQaoAlMQitu+l+kTml?=
 =?us-ascii?Q?66moAnodLsBWyHHZwRobUCq1X/lMCz2PORSll11u91jotuQ77qVZmLqw4ZZB?=
 =?us-ascii?Q?jobQNKF9Kxm/lGFNa29vOFu5UT0m6xVWFQSfe9Y4gBPAYfqsCQHUx2hfEKYQ?=
 =?us-ascii?Q?dnZaiQXCMwDC3/2BHrrD0hbF3OAbWBcDDjKv8aNXfAxa6q2zZCoase/kGqZc?=
 =?us-ascii?Q?rN8jL13A4BQfMA6H1TincpMKVOLY8G8RgUK3Op1oU/0IDV7/Y5wqjYwtYbJO?=
 =?us-ascii?Q?nFsm1HChmWRI8vvBmb6qhpT04IrLUWBNDIT6UQFeXu6G9fUQPz3lqx8bdVCl?=
 =?us-ascii?Q?OyVKQyRM9kmi5bnPgQ7myfQhKymdtbV1cvA1tLqjSBOD2BdjNwwTQvWlL62Q?=
 =?us-ascii?Q?gm7EOEEM0UtHwtSO4P0kaP2OD5NIZWu8nKmKpivi0ZUiLjj/swQDl4yZAfEZ?=
 =?us-ascii?Q?0/S4/pLR8tjEr4GWl8C4DbZ8A1T0/we2CY5Cgci5DY4dxjdCxL8eSOjykQwS?=
 =?us-ascii?Q?6/E/BZZu1T23tMDuaIc0Liz+p7lJa2eiYJVkzlhJuNFQXyynufvyGlBkknlZ?=
 =?us-ascii?Q?1shlLfnmQHYknfWw9QHWMGyQpiYqfUoLTti33HYAKfPrrkwnaMlkadNK4v7p?=
 =?us-ascii?Q?V9M+NAGo/W8wmB5petvIcHE1dpgs8xv/0KKDy9GdfQ+mi9usdukho1oe7R3e?=
 =?us-ascii?Q?f+llzKLE/TE1YP21A64uLn23zEgVwcceiBKDB/MrpyPsbXfCKHDoyiLFC5hb?=
 =?us-ascii?Q?ZHOVE9fiBv+AfTzhibaUMxjb9CcKlI0tECXHUZlOv9x5jnDnIv8xx7AhA4B4?=
 =?us-ascii?Q?8Irm/C4mAJ4Be2sciSkxAljwCoOaEKjZJ/A17WPVW+09xDCJQD5IRfOAgOPN?=
 =?us-ascii?Q?yjOFP1xLT/OkUAJLG5ELHitYJ/6zatw4rdQ1+LG7E4jVg7m47Ln7jF0Pod/u?=
 =?us-ascii?Q?PI4D192Zq/5S7OpQCNVaPjhTkOFX75Gcw4npoHPAItRIN2AyQkI97ElZ62v7?=
 =?us-ascii?Q?EyHX08sBDkH47ksaf0nDiWi5dEDQBy8dibttSAbTvPvXN194xoTl4E1IiMc8?=
 =?us-ascii?Q?JDPJrA3zDClVAK1R3CVi/ubqrRG2+BuIKsN8iOX9BVkt2bAIr87Xx5qV5bwc?=
 =?us-ascii?Q?6RonoO8M6eYLY3PNCOU9Ii8so3B5UR2Y+0zBak+d8jXrwSIVDPQ5O0rb1/Va?=
 =?us-ascii?Q?Q4rTNDouJh15L6dGOgG1riylwHc2OGg4eVepMtUHYuFUiUVjyLgpDktxCKM6?=
 =?us-ascii?Q?7E+PREQC6fG2zfWPRARvlWjJT7JjoO1xWRlKqnmRSuyisIQ4qfa60m+8TF1b?=
 =?us-ascii?Q?mFloyeIb8AfWiQUuc02RgPjZ4msNmXCU9TZj/t5b51px8JX02DtfHsd3nErH?=
 =?us-ascii?Q?NP1R5zPMpA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aef89916-f14f-4706-b1bd-08de4ce11dec
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 05:04:48.6571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2ei2GI3rxJ3aqv4j2tkFl9C3/GE/JjtieV5vo4Ta8ZYu6eDkGzgInhWToIuc3rFccmWh5vW75w7BJye+bvvzSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8967
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Wednesday, December 17, 2025 8:50 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kahola, Mika <mika.kahola@intel.com>
> Subject: [PATCH v2 11/15] drm/i915/cx0: Verify C10/C20 pll dividers
>=20
> Add verification for pll table dividers. The port clock is computed based=
 on pll
> tables and, for hdmi case, the algorithmic model is applied to calculate =
pll
> dividers.
> If port clock differs more than +-1 kHz from expected value an drm_warn()=
 is
> thrown and pll divider differences are printed out for debugging purposes=
.
>=20
> v2:
> - Move clock derivation from dividers in intel_cx0pll_enable()
>   earlier in the patchset.
> - Keep intel_cx0_pll_power_save_wa() in intel_dpll_sanitize_state()
> - Use tables[i].name !=3D NULL as a terminating condition.
> - Drop duplicate intel_cx0pll_clock_matches() declaration in header.
> - Use state vs. params term consistently in intel_c10pll_verify_clock()
>   and intel_c20pll_verify_clock().
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 121 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   9 +-
>  3 files changed, 130 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index ea807191cb4f..a8c37a14d427 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3824,3 +3824,124 @@ void intel_cx0_pll_power_save_wa(struct
> intel_display *display)
>  		intel_cx0pll_disable(encoder);
>  	}
>  }
> +
> +static void intel_c10pll_verify_clock(struct intel_display *display,
> +				      int precomputed_clock,
> +				      const char *pll_state_name,
> +				      const struct intel_c10pll_state *pll_state,
> +				      bool is_precomputed_state)
> +{
> +	struct drm_printer p;
> +	int clock;
> +
> +	clock =3D intel_c10pll_calc_port_clock(pll_state);
> +
> +	if (intel_cx0pll_clock_matches(clock, precomputed_clock))
> +		return;
> +
> +	drm_warn(display->drm,
> +		 "PLL state %s (%s): clock difference too high: computed %d,
> pre-computed %d\n",
> +		 pll_state_name,
> +		 is_precomputed_state ? "precomputed" : "computed",
> +		 clock, precomputed_clock);
> +
> +	if (!drm_debug_enabled(DRM_UT_KMS))
> +		return;
> +
> +	p =3D drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
> +
> +	drm_printf(&p, "PLL state %s (%s):\n",
> +		   pll_state_name,
> +		   is_precomputed_state ? "precomputed" : "computed");
> +	intel_c10pll_dump_hw_state(&p, pll_state); }
> +
> +static void intel_c10pll_verify_params(struct intel_display *display,
> +				       const struct intel_cx0pll_params
> *pll_params) {
> +	struct intel_c10pll_state pll_state;
> +
> +	intel_c10pll_verify_clock(display, pll_params->clock_rate,
> +pll_params->name, pll_params->c10, true);
> +
> +	if (!pll_params->is_hdmi)
> +		return;
> +
> +	intel_snps_hdmi_pll_compute_c10pll(&pll_state,
> +pll_params->clock_rate);
> +
> +	intel_c10pll_verify_clock(display, pll_params->clock_rate,
> +pll_params->name, &pll_state, false); }
> +
> +static void intel_c20pll_verify_clock(struct intel_display *display,
> +				      int precomputed_clock,
> +				      const char *pll_state_name,
> +				      const struct intel_c20pll_state *pll_state,
> +				      bool is_precomputed_state)
> +{
> +	struct drm_printer p;
> +	int clock;
> +
> +	clock =3D intel_c20pll_calc_port_clock(pll_state);
> +
> +	if (intel_cx0pll_clock_matches(clock, precomputed_clock))
> +		return;
> +
> +	drm_warn(display->drm,
> +		 "PLL state %s (%s): clock difference too high: computed %d,
> pre-computed %d\n",
> +		 pll_state_name,
> +		 is_precomputed_state ? "precomputed" : "computed",
> +		 clock, precomputed_clock);
> +
> +	if (!drm_debug_enabled(DRM_UT_KMS))
> +		return;
> +
> +	p =3D drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
> +
> +	drm_printf(&p, "PLL state %s (%s):\n",
> +		   pll_state_name,
> +		   is_precomputed_state ? "precomputed" : "computed");
> +	intel_c20pll_dump_hw_state(&p, pll_state); }
> +
> +static void intel_c20pll_verify_params(struct intel_display *display,
> +				       const struct intel_cx0pll_params
> *pll_params) {
> +	struct intel_c20pll_state pll_state;
> +
> +	intel_c20pll_verify_clock(display, pll_params->clock_rate,
> +pll_params->name, pll_params->c20, true);
> +
> +	if (!pll_params->is_hdmi)
> +		return;
> +
> +	if (intel_c20_compute_hdmi_tmds_pll(display, pll_params-
> >clock_rate, &pll_state) !=3D 0)
> +		return;
> +
> +	intel_c20pll_verify_clock(display, pll_params->clock_rate,
> +pll_params->name, &pll_state, false); }
> +
> +static void intel_cx0pll_verify_tables(struct intel_display *display,
> +				       const struct intel_cx0pll_params *tables)
> {
> +	int i;
> +
> +	for (i =3D 0; tables[i].name; i++) {
> +		if (tables[i].is_c10)
> +			intel_c10pll_verify_params(display, &tables[i]);
> +		else
> +			intel_c20pll_verify_params(display, &tables[i]);
> +	}
> +}
> +
> +void intel_cx0pll_verify_plls(struct intel_display *display) {
> +	/* C10 */
> +	intel_cx0pll_verify_tables(display, mtl_c10_edp_tables);
> +	intel_cx0pll_verify_tables(display, mtl_c10_dp_tables);
> +	intel_cx0pll_verify_tables(display, mtl_c10_hdmi_tables);
> +
> +	/* C20 */
> +	intel_cx0pll_verify_tables(display, xe2hpd_c20_edp_tables);
> +	intel_cx0pll_verify_tables(display, mtl_c20_dp_tables);
> +	intel_cx0pll_verify_tables(display, xe2hpd_c20_dp_tables);
> +	intel_cx0pll_verify_tables(display, xe3lpd_c20_dp_edp_tables);
> +	intel_cx0pll_verify_tables(display, mtl_c20_hdmi_tables); }
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 3d9c580eb562..c0ac67f7b11f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -78,6 +78,7 @@ bool intel_mtl_tbt_pll_readout_hw_state(struct
> intel_display *display,
>  					struct intel_dpll_hw_state
> *hw_state);  int intel_mtl_tbt_calc_port_clock(struct intel_encoder
> *encoder);
>=20
> +void intel_cx0pll_verify_plls(struct intel_display *display);
>  void intel_cx0_pll_power_save_wa(struct intel_display *display);  void
> intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state); diff
> --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 9aa84a430f09..7127bc2a0898 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4613,7 +4613,7 @@ void intel_dpll_init(struct intel_display *display)
>  		dpll_mgr =3D &pch_pll_mgr;
>=20
>  	if (!dpll_mgr)
> -		return;
> +		goto out_verify;
>=20
>  	dpll_info =3D dpll_mgr->dpll_info;
>=20
> @@ -4632,6 +4632,13 @@ void intel_dpll_init(struct intel_display *display=
)
>=20
>  	display->dpll.mgr =3D dpll_mgr;
>  	display->dpll.num_dpll =3D i;
> +
> +out_verify:
> +	/*
> +	 * TODO: Convert these to a KUnit test or dependent on a kconfig
> +	 * debug option.
> +	 */
> +	intel_cx0pll_verify_plls(display);

According to me having this done during every boot does not make sense, may=
be as a test it may but here having the driver
Spend time doing these calculations for every table for all the rates seems=
 like a waste.
Specially when you take into account that all these tables are static which=
 means you have the values and the algorithm beforehand
And before adding the static tables you can get this the algorithm tested a=
gainst the table and fix it accordingly.
Also it should be the responsibility of anyone who adds any other static ta=
ble to see if the clock matches.

Regards,
Suraj Kandpal

>  }
>=20
>  /**
> --
> 2.34.1

