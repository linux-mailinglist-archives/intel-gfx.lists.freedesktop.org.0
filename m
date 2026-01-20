Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E90C3D3C1E1
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 09:25:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B2010E578;
	Tue, 20 Jan 2026 08:25:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WVQ6ehIc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1FA10E11F;
 Tue, 20 Jan 2026 08:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768897516; x=1800433516;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=soAv3SheJRjO1eArhQcnAyfH0ASC0UpP6a6rok4w96A=;
 b=WVQ6ehIcGRcAT79sk/awPWTdLCWAORSutwV8E2PkPfxOC2fwtq3SqVuG
 9joTpuOQBVgN5n5SGZMXrPTgHmZjVx7LDtCCEVu6rsa/TD9adjZX5PJIF
 XqVYIlI6381vs0jbhjo3ZgO6PyaKa4AfhsT5hHkErcH4gjxvYr9IEX4kx
 7LNb13KI0rzjdmnOEMngWvVbYuIEZ1uW10UGrf5OHfajSLi0OiTe6PQYU
 N//GfSSai0IJ+fnpbrDiGqRRBKyl8r4APxNftVzf7rD9ofBk19L00HiTa
 qI9aDihTIL7BlU2tdt9vGxsxVGVzq99/KRYwx38WXNCsiK+SftByNR9YK Q==;
X-CSE-ConnectionGUID: lgfxNrH3TguvMID3P9sIkQ==
X-CSE-MsgGUID: rV0auFE0QjWPJWVIkyblQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70007906"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70007906"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 00:25:15 -0800
X-CSE-ConnectionGUID: Tz3GqZQHTAWd08BjiZDHvA==
X-CSE-MsgGUID: NUS3UC0rTbq2aZ94j2tO3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="205310317"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 00:25:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 00:25:15 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 00:25:15 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 00:25:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yI0j0y1iXjMH9UFapCDHRIc1ze2OQbWTxUjdTbs6FrEnNg5panXt62KXME7IfXb09mj+Gt31/THov5lS0CH6/UdAp/SXQLdJ8pJpsWrJhsXqWUN+Y59GmSAMhBHfXpT169Aw9vm/APSCxv5Yqm1nOlYd3mXyA/DNqhkCfpJvd7aa3ZlWx1SyAV/W9wIMlowcFuG7zryLVx/XqkDrTB/+HIkDUxOk1P8ieyuwvKhPH4pwNlZUAZHeYmUu3py9UfT4Y+IKB6AZY7JmzPfxivFOY3SMzcO+s2/hjXEp6MA3lCOeaWrwgGL7Qt5y+U13n6FQ+FAoXvLTXaWJ/FOESN8Kew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jmg1oxism3ZOq7/GgbhX8ryC62LCZ/9sNZ83QFvwa+k=;
 b=BqHOrE9Gk3El4a2M2OP59hUy+Vad7RUydgjUYd4dioBnTmuPhn6klOmOBDMckPrjFHhIi56qQKYP7MlSlX+bxBdBwg6G6spb1hl1DpaIJUO69n81viCG8ZWFcbf5uV1owahaaQeQCOace5xZU4DTCmc4xSVXvbmulVGC+JawGLbwQhmj28cVUctIA//YJQVoTnt9ysRuwdxxpzzwb2vD+B9XTJU0JLWW9TAjfAePox8kmRo9+S6nVnhcflvh9smz97+o5OSgkrXGoxLlHd2JoE+yAq2vcU/lS2l1ky3FAivJQYidUzP9TNSvkA9Z5DHhLKDDD7m8AA5N0O6HtUCxFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA4PR11MB9345.namprd11.prod.outlook.com
 (2603:10b6:208:56c::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 08:25:13 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9520.011; Tue, 20 Jan 2026
 08:25:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/display: Disable DMG Clock Gating
Thread-Topic: [PATCH] drm/i915/display: Disable DMG Clock Gating
Thread-Index: AQHcicnKY5SkyZHXMUi0dPRJk+pvnrVauHqAgAAAWNA=
Date: Tue, 20 Jan 2026 08:25:13 +0000
Message-ID: <DM3PPF208195D8D1FB2CE1CF783F2FF0B13E389A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260120050033.635681-1-suraj.kandpal@intel.com>
 <IA1PR11MB646765DC8252C407F4218656E389A@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB646765DC8252C407F4218656E389A@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA4PR11MB9345:EE_
x-ms-office365-filtering-correlation-id: 1ddb0523-877f-4961-08cd-08de57fd6eec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?qNZv7SzYpLgfqMIuTsqpv8gUGFyAIeHS7bWYSFIQLQ9EDkoUxqPNV1w9y/Ja?=
 =?us-ascii?Q?qOogBt5ssa8rnUVVNjoepXb960/6wsMIMqJj6o7EedwrByauQcmgwuxNEE+u?=
 =?us-ascii?Q?it4BtC33gsxczUPugke2AuQtEAT6Gtdb6rqtNs90aPCBNd600O6E66cYRe8c?=
 =?us-ascii?Q?XqXYmpXXWETAbx6kNsm5V0Q7teG70MUfKM54MZimI/rMYOPqshfk7OdWdggJ?=
 =?us-ascii?Q?zDe844yv8jZfpBM6RQcpug3hAL1Wn86l1NdKK2gDMJDhV8EQ7o0bPafelYSA?=
 =?us-ascii?Q?bbjkZsZKd+KrgwPL8NR0AMqYLBdg+039+Ze6pbd7ytyClaQV7FET9UgUSoFY?=
 =?us-ascii?Q?hJU4YnsGtjYdofKkOzQ+5m1Coq4XQ1laDgyDGHhO7LhwVDqlSgd7zljofeh1?=
 =?us-ascii?Q?6r7mF1G1nGuQzFh1cN8S35MOsv7NIAsdcYhyJ32qSw0LOcF2fxRRRAJPhOH5?=
 =?us-ascii?Q?PJ7ChZ4YJ0Iydh9PDXejf+mwZgtsyiqr9LV375FtWwoht+FYXNytBuBeH1Vo?=
 =?us-ascii?Q?jqTxbdyZI/CCjV5+FUAapRNRLGGiG8tF2ZcAYJ2K1Z/RyzAkoEOIMl75bHca?=
 =?us-ascii?Q?Ihcx26I/m0xtDpU4auK9TJD84JG32JTmQ4tvCo5jTHOa9ZJbCYCOTJqyO/Xm?=
 =?us-ascii?Q?ffjxDbVtSkA1syVEk7+s0zM6KlrKIAInDTmngl0VkLOAzRPGrehi19phkUvL?=
 =?us-ascii?Q?DQmxlClOqlx5GfthKeWNkWa0X7xdr0JfWp3iC+fbYr54VSvsMLXBSTUCKHCx?=
 =?us-ascii?Q?st3GQJMGidc8EMifcHyB9aJzbo+QkfV46O36lIEyi4jZTC4/CouFJWc9aiKP?=
 =?us-ascii?Q?kRmXYjS9a207yO/XYzZRER2cv3rOLbNabjWUcdJVGE5OVrh1k3andq6VnVGi?=
 =?us-ascii?Q?3vvpkqdam7mCu8RHTOR0EXp9tzZl4F0RAR+wH1PTM9+oUw4VjGgnoCoARRwa?=
 =?us-ascii?Q?X5V5l0bief4d2G1LVGjG6AeDlsngurPlO8VHgjvunOCtDpbGjrAepi4bnllC?=
 =?us-ascii?Q?DcMynffCGRETjJj5woNu6nN3dDNo8z34cqEzll7GSZCSL7ffrhGOc5jfPEoD?=
 =?us-ascii?Q?FT484qLEv5MpJ0wFfpUJFOYuS39/W9Wogkiw5DePnjkUynoDQb9J5mnJxpR6?=
 =?us-ascii?Q?Mtmagl7e0Ma36AGjbDI66cKvuvkZ+waxTmboHi7xB9jkBK8X2IgUrz9ZxHjI?=
 =?us-ascii?Q?tmI69/2ntNMLktMfxS9AHiH3OCh2QpCXgTXbbMzdPQqNq0REHu5rJAgwhdQH?=
 =?us-ascii?Q?pu4xk1l7emAJnePNiYNlzHyv67YRx4oFFIBtOkc029mzu2liBI8UDt9kzpjR?=
 =?us-ascii?Q?cwIXMrW5p6A8zhergnc32cMKdGKKYLUJGD6qwW9a16U74OktlWxuzB1oWKkv?=
 =?us-ascii?Q?mY8uCi/38CCEGhknj6eAUfh2v5O3n4+2GPz6mowXSfc46r8xpIKA0bnavaz2?=
 =?us-ascii?Q?2+Y7rzF182YgT8OetInwa2l6l4dMJ71RDIz0ATQFIsPXmJV61bJgyDGaYjGq?=
 =?us-ascii?Q?cGx/SGHY1s/AU8SWbcz2klYNIsPRRrTU2RV0UW8J+MA7uhlkjztZ1MB7vd3s?=
 =?us-ascii?Q?9qh6yj3hyoexpR/ym36BG9iZZcGHufdBBDJBctaQ1XFtWgYoNjx6BsWh0v62?=
 =?us-ascii?Q?uW4+cpRorT56GR12Zvx7W2o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LvdODgJptRtARh67Ysi3bEK0Lq7KhtS80q7267m56aNOjuWPcY8sylXxM0D9?=
 =?us-ascii?Q?Sp156h/WUezCuy0NNpNynlzZ4ch++j/NudFq/F9cLK6ZYMMPqDXuyAgbh8Ph?=
 =?us-ascii?Q?dBr/gRxoCRtV1HgC2Y3vdZPoAUBH4W+/JJfuZzhrB3Ujsxh1ZbMTmnQpI21U?=
 =?us-ascii?Q?jLJpI81jkFRfVLaWw5lwOzo3E6SeWM/ZGstifMJGjwEUp50IYSYSB3Hbj1TX?=
 =?us-ascii?Q?uLmhbwajXY36Ju0Cq78iQGaqdU3ddQuOysl7FZye0gOtCDqoaqzot8iQmJk8?=
 =?us-ascii?Q?4+s6bQ4yHzzcNJi62OgDC3QSd4E77DclIAXcyxNF6c7rXzBIwjkHA1OiTk3s?=
 =?us-ascii?Q?65bt0rHDMxLsDOzb9M0NsxKyLsv18ANyctaXUWU9a8sysG7qAeX/gP/WArRZ?=
 =?us-ascii?Q?hAY1XzrfvBvh74GOYBFNvBQxWG9lJCR3Dz7wrpj6qY1o4urEtcFGho0T6qlp?=
 =?us-ascii?Q?3WifyAW+szvrhuLkca/g1PwkSIm03Jx95r9R05sJMkcMaE2EnOXxTQ7uGxeC?=
 =?us-ascii?Q?7XTJRV9N6AMcN3OtdAX7J5teku0bVMmsFlpo4cACUTT5t/1FVrSADMs+O9sA?=
 =?us-ascii?Q?3zn2aG0K6ZZV4KhXDdkhLp17vz7T+VebXPzzIdSTkisZ9KMJr8mm5aqy5pMM?=
 =?us-ascii?Q?7EWAO/FOcSX8ePbGJwck4yPII2zOLPR26BYGiFQ6XQSgvJwTJmLrIp50Ki09?=
 =?us-ascii?Q?jQa4pTuKSxMrLEA7gVbo+HSuT06TuWUv+4PUgsjxtapax7unqXuhJHWxdOVu?=
 =?us-ascii?Q?avkIcjbsUimwRCs8mpFxTXR50Sx36iY24vLSJmxBGD4mhgCJ2Qn0h5VhZmN+?=
 =?us-ascii?Q?vaehbIzl2YMSCmQpmp6uz/VLMv4iGX447CNFbaLJhg2HaHB1gEhLC362Zc2W?=
 =?us-ascii?Q?88SDDwHH6MLGseo5Qubqwqk+wVWybEMb4Go+xeZhF1zUUAeAXpZAUlr5u8tG?=
 =?us-ascii?Q?E4+mUGWZNJJ+A3cI6a6vEVo4UajTuEbCtT6W7K6Gz+c/O5M2zgJg0y072PgB?=
 =?us-ascii?Q?D009XHV6o6XY1dZrgl4+XWj0vJiMOJMRTS/9Nr5SF1KTUtEvyI9l5wdJh9kh?=
 =?us-ascii?Q?Dx65paluttc4PrLjH7RleME4jc/aZVJrWz4/D9fYLpra73/sM0jZHLoz9r2F?=
 =?us-ascii?Q?bjjQvigKAAJEdmlxwSd5AZn++Bi2JHpRswTQJw4XFf1vSzvnsjZ/pxmuITiA?=
 =?us-ascii?Q?5hc0cfxSdg+7wPhr3O7HgqUNOunlzeJcZlLeQ0SUxzi7ypEWNk1tCRPYlljC?=
 =?us-ascii?Q?7avJLTJumf2PVcjwx8o/wcAOvrmqraes0qJLj0JyVqttXh/c6D2sByNKAika?=
 =?us-ascii?Q?DyO5lUAF0NOOVvprzGAAz8YS/g3tea53IEFYjaO71sU99ixQr7llMD/hiXz1?=
 =?us-ascii?Q?xXNkjJnmqsYx1lo1h8BR4YbvHu/ZewN4Fj6qeW6f/9fSKOn6sgBMOPbKJF4W?=
 =?us-ascii?Q?3GZ5Tef6Zn4qNrquU8HZIijzZvAUUbGLPa/5pPFwTkvQXwt+A1eUk5UeZVHh?=
 =?us-ascii?Q?pdjCmYAAabEckhnhpDNPDyyhJbkSTvD0XAt9ON4vDHESAoYz8ASmWqon4qfz?=
 =?us-ascii?Q?SV0/69MDkReis6wdRVsdBjyn5v1EYv0v+QwCLlBA1veT5QNiiplkmxFdwmOI?=
 =?us-ascii?Q?V06qsbyUFGi+ggrvzO8WHARTJMUFtNPkgIX/XR8q3aTUBuIdMhMYOx9Ahp5Q?=
 =?us-ascii?Q?8IJBXbfom1feoi2cNW1WNmwIbV5SE11rKgQmQjWtGiAtaJiGF6nDfXajNJI4?=
 =?us-ascii?Q?UwqyPooxhw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ddb0523-877f-4961-08cd-08de57fd6eec
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2026 08:25:13.2131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: emlGpGslIyVA8v3ljit24BvIzJMUDhYD8jm7Om3u+3eRQjgS+0DN0oo1mREg4pgqUAMcadsVohopX6R1PNd4Lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9345
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

> > Subject: [PATCH] drm/i915/display: Disable DMG Clock Gating
> >
> > Disable DMG Clock gating during display initialization.
> >
> > WA: 22021451799
> > Bspec: 69095
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 7 +++++++
> >  drivers/gpu/drm/i915/i915_reg.h                    | 1 +
> >  2 files changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index d10cbf69a5f8..2d46f00bd0d8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -910,6 +910,13 @@ get_encoder_power_domains(struct intel_display
> > *display)
> >
> >  static void intel_early_display_was(struct intel_display *display)  {
> > +	/*
> > +	 * Wa_22021451799
> > +	 * Disable DMG Clock gating
> > +	 */
> > +	if (DISPLAY_VER(display) =3D=3D 35)
> > +		intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0,
> > DMG_GATING_DIS);
> > +
> >  	/*
> I guess we can remove the comment, only wa no. itself is sufficient.
>=20

Thanks for the review will fix that

Regards,
Suraj Kandpal

> With this fix LGTM,
> Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
>=20
> >  	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
> >  	 * Also known as Wa_14010480278.
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 5bf3b4ab2baa..f928db78a3fa
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -763,6 +763,7 @@
> >   */
> >  #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
> >  #define   DARBF_GATING_DIS		REG_BIT(27)
> > +#define   DMG_GATING_DIS		REG_BIT(21)
> >  #define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
> >  #define   PWM2_GATING_DIS		REG_BIT(14)
> >  #define   PWM1_GATING_DIS		REG_BIT(13)
> > --
> > 2.34.1

