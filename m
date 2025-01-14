Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D7BA1131D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 22:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FAAD10E10B;
	Tue, 14 Jan 2025 21:35:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C2lJxRkx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA36F10E10B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 21:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736890524; x=1768426524;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=qbtEXR4VlNVqRENLp2dR0XhOSZ6mPhDocO8MfpFc2Kc=;
 b=C2lJxRkxIQ0l3nUJ6Jp88dqBx3fatHaLDRdowD0sjz6NWXhOFbz893Lr
 K3tVXSu2OR888/ecB90J0PZkYS2KfEJFjRjB7MwxI8lLBqUyzcmhxJPiX
 VcaGGvCM4t8yu4ldAoGvhSTqkvY3W6SEEX/rAHx/tEYc7mkdenZttwtJ0
 +Auh3S9ffkZvH42grB8zXUMiAKoaWvQxkWWMqXI2hsPY+cawA8eltXs73
 mv4fptScoiScCua89QoHNVnZUVIDWp9RlaxTnpyL+ZzlExjNrha98KBtF
 Qe/eo35V/7uoNbTWFv3MiAg8HBvAkSQ9ctI8ZgvAf+L3KrrANk1JxfRha Q==;
X-CSE-ConnectionGUID: bdIuA47nR+2bmzK6U2/3fQ==
X-CSE-MsgGUID: wPdupq3cRn+X90LrFzG/WA==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="37436620"
X-IronPort-AV: E=Sophos;i="6.12,315,1728975600"; d="scan'208";a="37436620"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 13:35:24 -0800
X-CSE-ConnectionGUID: mV1w3dWMT/WBTserbyoHFA==
X-CSE-MsgGUID: YB9BmHjgQUqWwBqIfwF0yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,315,1728975600"; d="scan'208";a="109873819"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 13:35:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 13:35:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 13:35:23 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 13:35:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r7N1ZHn40wR3TvyExdsYSldfA7k6PFs6DcnhO60kIwzW/VnFB8zLnSkuEVktrbx6VxDuTMdnMZhwPJuoAMHHUPaDgpLslB2T6aIVKzi+BfLebOuHNcQplaBkDRoyvB+1FbqO4GDhJJfW9GefscZk/D9Ea8w6XE8cI0NyLLolsQd5v1AaQxWQnkr10/VlYmeaaiTyjzca8kG8qkzIJ18OhuMYdldQ8XkSydUdtBncARMo10b49B48hbfpiOkR9B0eSFkoeTTncm+jyS6TIXpZY1ld57IPA1rNKVSnA1kUIwRMt8VchW/kftig5j14rAMAyjZgdXfxcCY8nUPd/3EOOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qbtEXR4VlNVqRENLp2dR0XhOSZ6mPhDocO8MfpFc2Kc=;
 b=O5a1DAD56Ta2tUWIB0SUuMaWWai7YGkeuBebSIZtR3sbnqCQv9JQDLMp+TW6fBHju+YvpJSsnukjpswvD5NcnXUkdRLM1M9mJXNmMIlyF/UiEKKEE8bn+Nf8kphkCkPYx9MgFwK3hYISrk9BGem70NVa/WLSOWg/7CNX50vh+qTDmbrFL4aqVw5SjwXOF2HcYvbTJOAOOkJOX9/1DeBvn5tITTrqzjZUXu+Zn87YQqvAUzE+2K6U6V1CFvEUh2ew0A1do4l20iRPa+aaMmG5plREwo1DFmfRdmEBnDdweYbO6k993ArFbHXWLsemV2HcSLm3cLq2LXW3ocNC++oz0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5995.namprd11.prod.outlook.com (2603:10b6:8:5e::11) by
 PH7PR11MB6379.namprd11.prod.outlook.com (2603:10b6:510:1f9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 21:35:21 +0000
Received: from DM4PR11MB5995.namprd11.prod.outlook.com
 ([fe80::654c:a738:ac8:7908]) by DM4PR11MB5995.namprd11.prod.outlook.com
 ([fe80::654c:a738:ac8:7908%4]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 21:35:21 +0000
From: "Chery, Nanley G" <nanley.g.chery@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, =?iso-8859-1?Q?Ville_Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, "Zhang, Jianxun" <jianxun.zhang@intel.com>
Subject: Xe2 CCS modifiers have undocumented requirements
Thread-Topic: Xe2 CCS modifiers have undocumented requirements
Thread-Index: AdtmyrpL34d+kpQlQVO4R5jkZ5MOCg==
Date: Tue, 14 Jan 2025 21:35:21 +0000
Message-ID: <DM4PR11MB599576F247FAFEA284ABB342DC182@DM4PR11MB5995.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5995:EE_|PH7PR11MB6379:EE_
x-ms-office365-filtering-correlation-id: 1045aaf0-2a00-4e9d-e94f-08dd34e35932
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?aeW4gDguNmUjz2lJNfJky9x+q7fEcqgpGHurFa1ya4QuPNt+2gHjQhbNZR?=
 =?iso-8859-1?Q?yAnu2QuruFdKNsqYSoSOaUaeEi+1dyAMsjXPdoV4ONg6w6PM0ljlpuBTtL?=
 =?iso-8859-1?Q?pMcMIgjpjt8Ci1MgDsiFxAWEEDuKlQ62Ar+TBdm+9M4YPl80I4qwR8xJW3?=
 =?iso-8859-1?Q?+BjF+cd0zJwiQZeQ0zBjXetcUD/rKFfc68YCam9Zm7LyyFELlO6np5Y9p7?=
 =?iso-8859-1?Q?aECCw9B8TgwSXnZfugg5CWMrhaM967We9TKEqzEDylOrEENdLaJeV1Ajul?=
 =?iso-8859-1?Q?0t9l2zbka7cvv2ZRXjuq+Qi8jFmKKwysI6VgHF3ZC6EE99Ud4oBFXiOJMM?=
 =?iso-8859-1?Q?aricY4iojnQI2+o9zNwfuolBwxI4Kd2o9EN6VUWhR6J+3RYpCWpSjGb2fG?=
 =?iso-8859-1?Q?lX+VZeW+PmSPO/FXkVgKkbXp8eSSAJF0Q0ON4YyVQgevNOg8TH3iaPV5qS?=
 =?iso-8859-1?Q?9XgW+MpEuCDrZ4xtwFx2pt88RWRL+bYipTtrM20KxQl1bEAJKacgZ2wckh?=
 =?iso-8859-1?Q?vR4UoYI5K2gFkk0T5c2/viiZ+Et2NvDAGdecint/oA53Uu9SErFWaqBXeC?=
 =?iso-8859-1?Q?q2pg0NWJ8yHup7pyfuS75L/RAYnN6p+hewUkFSUgVhVP0O9yJUU/VfhOCQ?=
 =?iso-8859-1?Q?iu1lbG71Dm98WdrWwv6lDeyrzOllPKQDdGJKSPfGtnZjI1CGmnLw2s5OqA?=
 =?iso-8859-1?Q?PHP6P2wjMkoH4a9lq3+c+JI08ZfWppT1GndjIvmQ+JZP/SeNmJPJ9GtFNp?=
 =?iso-8859-1?Q?xQCOSTCsUyoYhz9CCEXNxfjxZrDm1Z5WZ2QbxEH2VKfcNyOIPEYtnx4X5a?=
 =?iso-8859-1?Q?D1/81QE8ymPIT7xDGO9g/eZIbVZ5/fe5TVOCbz1kGq7FKDX2PZlDL/+I6K?=
 =?iso-8859-1?Q?xfeO/4A1sinJ3iUOSWsGRm98PtaJcmLiJwY2X1hB/BJ5q5ZfeiUP+o2iD3?=
 =?iso-8859-1?Q?bHf2+bGFAIvDLWvfG7jcroO7qyeHi/OTnjPZZap0SqNY//mlMsNORpcL8D?=
 =?iso-8859-1?Q?2NsYO52kz50gJIw1yKHLh4WO4JRhJvjYkgOpSxQYMXO3tRYuNiu3corjFu?=
 =?iso-8859-1?Q?ap+itHHw5ZrhFlN6+/qzoy6Hc+2bRTYeCu4ZziBxJd+larT2qtY8ZEf9MF?=
 =?iso-8859-1?Q?gkLqXELDj1Y+F8H1huoyClKiGRa5M9AeFBy3bh8yES5Cwf2xoVmKGDdBw8?=
 =?iso-8859-1?Q?pXC67d80vY33YdZjyi3QPUfsyAHrFJAcN065Uh1tuFtOwFWxgPjgDQ2LKT?=
 =?iso-8859-1?Q?hvpNaLuJuwDIn1o3t52OInJbnwqndyZV16v+/uykKdckiRy0i+kItS2Yws?=
 =?iso-8859-1?Q?wPQbnDKMkld8ubvcOuVQYABo4ePSwvmS/BG9R5HatgHK63Rq2OmfZNbikb?=
 =?iso-8859-1?Q?KrHVEE8M0RZbkXsZ9vE+uvyf2HSAMkl8BToFbF9IlzQTmoOx/9ePtXCA6o?=
 =?iso-8859-1?Q?/3IH2f43MK3LJRHF2pABh/yCm2dhgnZ8MrMV1g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5995.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?galO86JwWO2NVa2v0AM0cCH5LECuMstviEHn1fCT/yMeYN7CIuxDlIfIC6?=
 =?iso-8859-1?Q?K7NHO2ywPMnsk4ZsLuFqrYHFXQ8a/axjBhPIjL7X7/Zhn+rhCROmCZWS1s?=
 =?iso-8859-1?Q?lIn+RkJqOHMsCWxYDv9AmZgX1XyAUIDWtr4Gwaj49XVM33hGiY4E8B9ilc?=
 =?iso-8859-1?Q?7vu+uL7gPK9oErTaWfQT0gbOhOyOkM0gi3/8zYWi4UQ05QF5s5nlsYJA4H?=
 =?iso-8859-1?Q?UAqaJy0I0Vi1lTB3rNyG09SpQmbmrue9OQQCKW0U5w0T//uPf3WDetie/l?=
 =?iso-8859-1?Q?WWCxgzyYAjPLpO84yPPOZ9BPul97heFk5tbEDKMOr2YIM5ADnC5cNjeKTs?=
 =?iso-8859-1?Q?Can1icOnK21rkg77D6XzS7gWJt1izRn55XgwYt/n2WfitwtwO/OUGa2uZe?=
 =?iso-8859-1?Q?YcdN8r4uxT1LmcaNX0NsjsGZBcNGaFP0Xh3UEymlhHBKWYJ7k4YuUf3qfZ?=
 =?iso-8859-1?Q?K0Dr7TNgjlXwJVTvCeFpDUo9tbRB4512i72Sr/DeS0BP1ZkIrekE8mxkPg?=
 =?iso-8859-1?Q?+JdSoiZ5ZQvktPaBCxMSrhNTAsFG+cSyYplObhdSQkuhinwnUs++0H7TuG?=
 =?iso-8859-1?Q?7dSjvhyWbgH4SQ8V99SzQ3o2Oikffo9ceEt5k7diulqR9NDVcmZNZOjwYU?=
 =?iso-8859-1?Q?zKldcs2DkDMzI5ubliMDoXDeyyWJB8yM0T+rn/xQErQrsfTVYmaCkL04mi?=
 =?iso-8859-1?Q?CMSF8dMFhYV7ScDCY2PChl+eDCTsvccp3ZRUe8qkKIOGIy5fZAB8u6Ebuv?=
 =?iso-8859-1?Q?dQZlUCOctWK2Y7FCrTSjusXXm1aGmYl06v6GeabU9vjcgRLUbtAE8nuMdS?=
 =?iso-8859-1?Q?Oyp1fJP8mT+rmirB6Vw7d8UgaECbfFwUD0hIl0AdJmbmpxBWEuCBwDUJ3Q?=
 =?iso-8859-1?Q?gRBY4AP+XEqbfM7d+cRI8XDhWXsFcFEfjXGndcPI3FavSYxWsynEPkB1oJ?=
 =?iso-8859-1?Q?vRJySGZbSwf6jfaEWxg574e5+nadmbbkHlb4KCcsmQ9Ern2Ane/27l34US?=
 =?iso-8859-1?Q?8pp7xGXmN/2GXvfa4eO2Xj3QUv7Twd51PQ64BuTNaaNWbByfxrUzNY6YAU?=
 =?iso-8859-1?Q?N+Yd/cF3Li95KwwbsvNNX3aq0KDziT+EfQnUv/2DcunEJSDjns/mpg1u7U?=
 =?iso-8859-1?Q?Muj7jz67KcGFAFgidtiztnn/IF8Pkuqj0eDVUJAfUAu5tEuuqCF5238XOx?=
 =?iso-8859-1?Q?UNsd5N1cNcwM76mERp3FagbkCxLzJ8m2Zrh7C4PbPnvlgYlGvVMAMWcyRH?=
 =?iso-8859-1?Q?AMVCm/ugV++YaeI9ACwTwJ715PyRc3PYrK9RG0M8UZ1c9A7hwyyhpn7TvZ?=
 =?iso-8859-1?Q?hX6uhDhch6ZEfWxPjM4+CP7bG3787X7zr6g4xLkOYFYICyYaTwm/9yPVNj?=
 =?iso-8859-1?Q?oOh7m8rismXnwOiXPtq0O5GoqGkbfrFGVDg/q9H6u+F0GykHK4EtPruRHX?=
 =?iso-8859-1?Q?QMqvm65rr0azFcucAcM8yWSU5oiF/ZxL7rGToFYm0f3wAUxkHfzpwPaYQy?=
 =?iso-8859-1?Q?9e5RWTkuSde2L2XBJSQ3J+HcNt31EurLUCE8xMkG7qcyuZK+Lu1UHxme7J?=
 =?iso-8859-1?Q?a2SezJNSe/YVypeapEJRSs7JuxGwUndnsF3rF1+M6hEr1KXpNj5GnVlO70?=
 =?iso-8859-1?Q?sbOBvO8F6JtxzgmsCKwDwNEOdbKy3bY53E?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5995.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1045aaf0-2a00-4e9d-e94f-08dd34e35932
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 21:35:21.4691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YRcIrcOhQzplqwH/dJgbcsraOhTghLJIrlWbXtM9gGICFYyAIPDFQBX2W7wiZYiJpzjhQ0Sl4K9eAH+yC/HaYTs+HrkDuPyGm5chK38T1Xk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6379
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

Hi,

While reviewing Mesa's modifier implementation, I discovered that the kerne=
l carries forward some requirements from gfx12:

- 16K alignment between planes (according to tgl_plane_min_alignment)
- 4 tiles wide (according to intel_fb_stride_alignment)

These requirements are not documented in drm_fourcc.h. Could we have them d=
ocumented? But more importantly, are they required? I haven't seen anything=
 in the Bspec to suggest so.

BTW, I reported this issue in the Xe gitlab [1], but I'm reposting here for=
 visibility.

-Nanley

1. https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/3679
