Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOxmG+PNemnU+gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 04:02:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7558AB4D4
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 04:02:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DC9A10E7AF;
	Thu, 29 Jan 2026 03:02:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Adas0UUk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FB810E7AF;
 Thu, 29 Jan 2026 03:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769655776; x=1801191776;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+CIWc3M/D4ZhDed6IEBruYDyYP1dcC+vYjk/BnDaK0s=;
 b=Adas0UUkI5Y0tDlWD5uVUjMr636l/U9Kta+DMbFQook5kK8OY9ye6qAZ
 CLGcYpWcpqZjQptfxyNjUzXYqHA+78DbbwXHjzoIWTiUyIxbYWfF7/5RS
 +/mISnI4wgz9MLRvBmu9DQp9diwy5MU4epkFc8UyYH82DeNGkoCWwDCB8
 dBjTnVxsGf+h4dRw4tPG24177cNj03N5v2eHAmymkqYtm6jd6OUA88Y3v
 xdfV/6eSyAg0IoWaXAyqT+MY7jpsoa4awDWag4JtES3liiG1SmEM6jWdL
 FQtrwZ5PalfNde7oDZD8v7iTken1UsBh2KYfLVuY9CV2NJs1dY9yhFacQ A==;
X-CSE-ConnectionGUID: +V2ohioGT1SlWjstrMNNSA==
X-CSE-MsgGUID: qQLYmc58SAeb2kJPfvjJjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81520650"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="81520650"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 19:02:55 -0800
X-CSE-ConnectionGUID: kxm0aR2NQO6Mz8z+QkpmJw==
X-CSE-MsgGUID: vY9f9mepSVmQsDliC33SLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="207684907"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 19:02:55 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 19:02:54 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 19:02:54 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.44) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 19:02:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dVvT1JsuCxO9drywJNPSYXlETFqaXw5PFF+UXxuLAQip6Zrg8FOK3i+7nLj1+J56Nuf9i5rsg9V383wu1v/01cD27pGm531my+sMyO33uC1a9mZzCJgGDIGgu1Lw0E7GxjB3cVLLwC2yOHMwxn8CmfYUtXSOov6iNr2wWupwJLmcmbjYwzfmD55qpUX1z467KqTC1VSwPR492s8NUg+/yQXESH0Zv4YkiFCamtAawdVJxydVF3aeoX5RY+000qYbs2AbdAbzku/CYajhRo2TcTV1QZUJhxWvW1RHGyNT9aivvU5Jswp0E64lj6aMCadVoTUMmdycb9AbQWW0A6yO9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oAW/h4PJG7Qkq+BcSb7T4ndY7MKWu0C8k80MHB3crZg=;
 b=rGY4+YZ8vzNnxGURYGLcNrEI+YG3c82PSXrqayC7gWxZwcsR3Zr2ffOVeuf/QzoF1aLj31xwxJJOTLSx2aJQUrPURttjDhRz/OyRD4PbTvPtyesFC1GB9rzNPbpt+BQMnP6Z6BfbVKwDkXEA3qYW5jpHhpOSFWgWCnpuZ+FklNfjB/egYrFjsNxf9HlZdGyavCF1e4O76ggv3GysKmNm8yFRtq0SCrui5RwzufFEAspsn3PYHEz7OBoGsfT4613FlUZmHwFIu12lkWQWcRX5qZC32u24UfYgvwICdy7/Nr+i3aK0qXUxAtBumoq6wptwUnuWPHH0TZ5X7/xK04gwfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CO1PR11MB5090.namprd11.prod.outlook.com
 (2603:10b6:303:96::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Thu, 29 Jan
 2026 03:02:51 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9542.015; Thu, 29 Jan 2026
 03:02:51 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 1/4] drm/i915/display: move enum aux_ch to
 intel_display_limits.h
Thread-Topic: [PATCH 1/4] drm/i915/display: move enum aux_ch to
 intel_display_limits.h
Thread-Index: AQHckGbFiEnOJ0lF6EmEYYFCwhw1cLVodlNg
Date: Thu, 29 Jan 2026 03:02:50 +0000
Message-ID: <DM3PPF208195D8DC42A2BC1A6C94039E0AAE39EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1769612208.git.jani.nikula@intel.com>
 <86ccc91ee1ca96fa145b750e2f1935918ec288d0.1769612208.git.jani.nikula@intel.com>
In-Reply-To: <86ccc91ee1ca96fa145b750e2f1935918ec288d0.1769612208.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CO1PR11MB5090:EE_
x-ms-office365-filtering-correlation-id: f7c24a21-d22d-420f-74ad-08de5ee2e3c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?ah5wPMpCFTYSrOeyH36iLAvFDfjWcupFxfQkDEOEQmhUvxha/NyI+3J4j6Ao?=
 =?us-ascii?Q?Fis0wjbW24Zg+InS5cTkaH+4s6IttlRuGfpMaaLxCFfhcs2DcIGPB5n11zvn?=
 =?us-ascii?Q?U38bU6XFN+17TkGxVCzOUNVQoZBrFr0kg98r2JIH4sGH+mShR+bGUbJ1dgUV?=
 =?us-ascii?Q?j6d56v3MCpZr2WDAQq5X6pru8P5Y8EiDjqWNxsMys5xWLCCcWcQOynmivRaM?=
 =?us-ascii?Q?+R0V+aPw+54ZEEUlwyGQNngcV9VmNDsrym6gqxyoSbswpI3o1tRr6YMAakZn?=
 =?us-ascii?Q?U8QO/2Lmb6R2y7nUHKlXvbrRAW0R71VjMlqg5pXbaMcFTL1lpSOyy+FLKjO9?=
 =?us-ascii?Q?451DGB730vbwt9NPuFdU15TzXlQUeqng/IKJtnWi5Kr/cefIHjsFkRCWgPID?=
 =?us-ascii?Q?XKSXEp0oD+rZ6K6/WE6NF91VBA+dY+d/IUkjEPFj3RxvxyAU3jVZgCt40gP9?=
 =?us-ascii?Q?qexicyj3oHbuBMvgVOn/Iuc883ELlVjEQaJ+EkHnWAul4Zxr8N+sIoM3/1Rg?=
 =?us-ascii?Q?7lvllH0WoQJPS+3LDWS2bfX0qbnBhmB9ORleDwYBHOJTq7utueSeGNCQfHFP?=
 =?us-ascii?Q?8YeJfMuJhrz8PANB63ahZD86830KNSkEqsTZv07fzw8hxJYRMss2uNk5Xi4S?=
 =?us-ascii?Q?ch/Alh1qydOeU8Oe5/3NsbC9d+Gij//j38iryOCr6PS2XSvT11tTG8beFVAw?=
 =?us-ascii?Q?s/t5nv2MbpXAjkzbbM1UWrXuR2EWpWafbPxfbaci21loCXSVED4sIM6xCZqd?=
 =?us-ascii?Q?QzBU7WOMFfI6xMR3zB0X0fbK5YgWWYMw1ehRNrHpx02EZ/P7R7cn4wP4zpsm?=
 =?us-ascii?Q?svO/HdOSbh6Mop3NzAa/5P2tnD7onV6yGPCmDfd6Rh33mychOb8QCNTz4jlA?=
 =?us-ascii?Q?Z2Lmb2O/YcOTAUOBQ6A6gGrI8mtd/q3Ywt0zUj+6v5uAFANk998gikJGg/Vh?=
 =?us-ascii?Q?Xj9HxGkhPBXXcLm8JHNsCFlhfIBJ/NZwRVnlfXxA+8cFE+eWUQ2JkQI2+uZB?=
 =?us-ascii?Q?1dOAKVoN4K2NjubA0YdmtvAr2cBJ3hjrXLygZiX91J5xItZv+/9YCTByv8OR?=
 =?us-ascii?Q?Sp+FkhfIkSFVYtLGg+rNOxfuxHX0+Kr9UW8CAgLtQI7DACsTELRFEGe/Lmgl?=
 =?us-ascii?Q?4x7FV86luMXHhx+MdTHOU1UYtzUbjiWwCMUWAB4jGgcZ0+eg+a06S9PsnMLw?=
 =?us-ascii?Q?bW5BxDXMMed76wtEUowvWYlWlJnH4Yc5xALBdIMq3eO1fna8adIMp8jl7LNw?=
 =?us-ascii?Q?CH4SrCKSP253OCWI3hee/0joowCgCAiw2RqTKDSxdXrL8sMiZXQzZn28T2eV?=
 =?us-ascii?Q?wudNOpfCdvqp0ktowyyD8UEjUPc5tn37ID8/fy9J0j0WdpvjWSF9Ky8PvIYB?=
 =?us-ascii?Q?E4cS7DSDM3tbuuYumNB9wpXBHm/r7sj6nFAIO0cWm7l8xJM9M6F2y/PzYYbu?=
 =?us-ascii?Q?e32Sfe8QY5i5YQ6helhJDpKtd0SdGtyizsz8Xv3HEYPiHf1btOIt1l3zRHsY?=
 =?us-ascii?Q?Gd1cm4RZQbERiNbWgpMKnRjphfPAcI6KHc6zZBrJi75RegTmmqR/A9qvD+s6?=
 =?us-ascii?Q?RdfF4PyyCthcFj6q+QFl5s9csp76nwzQEsAXyr3xe8mLrzQbxazRT0JD3BGA?=
 =?us-ascii?Q?5N7xq38AlqQViDNQHn5b020=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y8L6QzB6I8kqAOhtQFTrx5fKiO+IMwYsDNAEl8vjtVE7968EbTR8dLOd4gel?=
 =?us-ascii?Q?qBt4QOwcSLIDMtBffJnI4E3SQRdWYHbHufSbMerovK0da3647tWBLXXCXT1L?=
 =?us-ascii?Q?H9b0SCPG9cb+ehLqk56aeJI4Z1nq2Q2respcGqS6iTkqRdx2HBG4pipPK2LP?=
 =?us-ascii?Q?UkNVllGO0S7UOsbDilQ+X9JtZQUXA8W1yDWxA7z3Ib/iM6gaGXV7xswOIGQe?=
 =?us-ascii?Q?2Lc1jf2s3ivIlmvP4FD6IeGY6iAipfdPBRDuQclSn+F1jqb4e3vsby+hzcGI?=
 =?us-ascii?Q?6vz1t+sRG22C+zoDG8WZuxOz2PxY+7GaN+BuPyHt03MPnVkd5Y2gQqQIdBZl?=
 =?us-ascii?Q?+M8JlN6EZTcH7bP4E3JhIqpIyN04LitGXkJHs5boZmAAEf3TwIFGOn7NJlKt?=
 =?us-ascii?Q?tvHGH/lCvcCo0n7gekXG4aega9vVkIqKeot1u9FP0k2frji8+4tkZL0g6Ujq?=
 =?us-ascii?Q?ZEA1XQ4V3LIg1oZExtQNYnW7ZKpgmuzV+tP5rX72ziXetk2HczrcvkIfcuYx?=
 =?us-ascii?Q?keTzszm7YiTP+/SjDlCWwkNNglSU1SdOU6GuYlBVtACtp91K6VV+86reGYp+?=
 =?us-ascii?Q?kTSDU3nUTsbns/XjBwqs2W7g1LjPWRkmd/Ap07FrbfIo59n37nQsOA1mvVO7?=
 =?us-ascii?Q?rfmkUWf5TrutLTkbfdXQ30s11/VB/aIGbBB42nGYPjRs+XAdSltY8M0dt60o?=
 =?us-ascii?Q?gGMTSZMi9VKq/cR41b9UjDU3HHFHF4yQYCx4hdpRfRXVYIGOf18E9l4Rwa4P?=
 =?us-ascii?Q?HHljBUqel5prRxhhfpElw5NeXgTpuZDxnatOTkudJlvRyEz893V2GBNGZxsJ?=
 =?us-ascii?Q?KlMhjf9WT8cxE0nwcVJbO2jbv4Ky4WksbCMMhYjsHXokprdDsMsqXtwnzbRF?=
 =?us-ascii?Q?ySPloHBphkEdwjVCxys7mPcfGLNBEhJkp08jJjrHg6wvUpBrSX7d0sMhJ+ZQ?=
 =?us-ascii?Q?NXIqFqoHfYwfzPCux2+phKXW+Nh24/pmZrpxEViGgo6je2Q884lDYB09pDuI?=
 =?us-ascii?Q?oVBMq/e/3tT50np84WiO4fZX8qNr7MaoDalsWPls4pPhs31IdEqQEqMJyRtA?=
 =?us-ascii?Q?LZ0c0CYa27T3/2jLWdr1JrVkLipkT1sm7s+VN1NnkW77jg1hOuEPPJllnubR?=
 =?us-ascii?Q?OlXpWZRLEqwlJDb5GYNow18aFoU3eKpcWG0mtjPbbCH/lG7rlX484vLke66m?=
 =?us-ascii?Q?WhNZ+NcPweNsJB936ze4hsbWha0tTDrZmVDjT4E2V6BbtXP4VhTIeMdgXEs6?=
 =?us-ascii?Q?DppDGHqvG25ue3snoVDXxN8l0eBjh2XDJ/pqE8wn62bU/5WSDkTK41rGrLFA?=
 =?us-ascii?Q?JtikiHrp46JSaKE9JUeIV03jfp03M8QGGukcBFqDQrbX08wLAZsbv5DSFu8X?=
 =?us-ascii?Q?Deu+76vGgaghtUwcKBVqoRJZZpINc/9ALRyh2GmiIvtGtd/QU3zR+e9tGLvs?=
 =?us-ascii?Q?pRMyEQhfBRR1oQ4gs8QtT2KRP/iYz20ZMLqV4C6ze1Up2MFtp8cqmpDYX434?=
 =?us-ascii?Q?olYXD8EXmthxfyMGtuYUP0He9/GD9Kpp/YkuM2B2MrZ6RpEzHL+icPHukVFE?=
 =?us-ascii?Q?T+MuX4jvwV9yi5YGXEIdwza+/Ticg25xa6rOGZx9gp7dHromcAhTidWCvIz9?=
 =?us-ascii?Q?NVRQMo5was+xrIPvofos94IYikHRc4U7GxOGHDfK3GDnmNGoGd9+UVxuMyYu?=
 =?us-ascii?Q?IdmUu3PEuTB3v6Ny1qkjg9NYLSVrb/81AL7e7VGjdnK3qK2WFhXjTBtTdHFG?=
 =?us-ascii?Q?Nlfm1PTAzA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7c24a21-d22d-420f-74ad-08de5ee2e3c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 03:02:50.9848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uXw0+MgFJCvMpGQ4M8q7k0Npdyr8tshn1Fk46bon3R+/JxxdVsj7b/y5h7AVvUC9TES/ZOHB3ooBsMceqlQUzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5090
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
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C7558AB4D4
X-Rspamd-Action: no action

> Subject: [PATCH 1/4] drm/i915/display: move enum aux_ch to
> intel_display_limits.h
>=20
> Move enum aux_ch from intel_display.h to intel_display_limits.h to avoid
> having to include the former from gvt. This currently happens via
> intel_display_types.h, which we can also drop in favour of intel_display_=
limits.h
> in intel_gvt_mmio_table.c.
>=20
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.h  | 26 -------------------
>  .../drm/i915/display/intel_display_limits.h   | 26 +++++++++++++++++++
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  2 +-
>  3 files changed, 27 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index f8e6e4e82722..4cced16af8ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -135,32 +135,6 @@ enum tc_port {
>  	I915_MAX_TC_PORTS
>  };
>=20
> -enum aux_ch {
> -	AUX_CH_NONE =3D -1,
> -
> -	AUX_CH_A,
> -	AUX_CH_B,
> -	AUX_CH_C,
> -	AUX_CH_D,
> -	AUX_CH_E, /* ICL+ */
> -	AUX_CH_F,
> -	AUX_CH_G,
> -	AUX_CH_H,
> -	AUX_CH_I,
> -
> -	/* tgl+ */
> -	AUX_CH_USBC1 =3D AUX_CH_D,
> -	AUX_CH_USBC2,
> -	AUX_CH_USBC3,
> -	AUX_CH_USBC4,
> -	AUX_CH_USBC5,
> -	AUX_CH_USBC6,
> -
> -	/* XE_LPD repositions D/E offsets and bitfields */
> -	AUX_CH_D_XELPD =3D AUX_CH_USBC5,
> -	AUX_CH_E_XELPD,
> -};
> -
>  enum phy {
>  	PHY_NONE =3D -1,
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h
> b/drivers/gpu/drm/i915/display/intel_display_limits.h
> index cb3c9c665c44..453f7b720815 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
> @@ -138,6 +138,32 @@ enum hpd_pin {
>  	HPD_NUM_PINS
>  };
>=20
> +enum aux_ch {
> +	AUX_CH_NONE =3D -1,
> +
> +	AUX_CH_A,
> +	AUX_CH_B,
> +	AUX_CH_C,
> +	AUX_CH_D,
> +	AUX_CH_E, /* ICL+ */
> +	AUX_CH_F,
> +	AUX_CH_G,
> +	AUX_CH_H,
> +	AUX_CH_I,
> +
> +	/* tgl+ */
> +	AUX_CH_USBC1 =3D AUX_CH_D,
> +	AUX_CH_USBC2,
> +	AUX_CH_USBC3,
> +	AUX_CH_USBC4,
> +	AUX_CH_USBC5,
> +	AUX_CH_USBC6,
> +
> +	/* XE_LPD repositions D/E offsets and bitfields */
> +	AUX_CH_D_XELPD =3D AUX_CH_USBC5,
> +	AUX_CH_E_XELPD,
> +};
> +
>  enum intel_color_block {
>  	INTEL_PLANE_CB_PRE_CSC_LUT,
>  	INTEL_PLANE_CB_CSC,
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 052596ac83a0..c0154fd77fc9 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -11,8 +11,8 @@
>  #include "display/intel_color_regs.h"
>  #include "display/intel_crt_regs.h"
>  #include "display/intel_cursor_regs.h"
> +#include "display/intel_display_limits.h"
>  #include "display/intel_display_regs.h"
> -#include "display/intel_display_types.h"
>  #include "display/intel_dmc_regs.h"
>  #include "display/intel_dp_aux_regs.h"
>  #include "display/intel_dpio_phy.h"
> --
> 2.47.3

