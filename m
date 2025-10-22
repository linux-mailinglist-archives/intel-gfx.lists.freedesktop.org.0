Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69195BFB033
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:58:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C09FF10E70A;
	Wed, 22 Oct 2025 08:58:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MtYabiwK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5549310E15B;
 Wed, 22 Oct 2025 08:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761123488; x=1792659488;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oewnbbYVo2tqrfM6q7g1CvLGI7btPJyBW0NBzTbcg/g=;
 b=MtYabiwKbQCwPjLRK3jSJX1p37Fi3/zGD0RMb8eVs4K8y54xWgkignCb
 ovXdhsSMc2NSiPJVxm9FlseIvHsXxRsB3et5mW6UH43HrKolxYMNG9CW+
 eA33+A/yq3BFIIes1bfAhRHxeEo+KfAWgHFk5Ruw58JuhXJzRjC6zAQUv
 5v/K19s1/BTAaqRQ5ygsA/6HdrAHHKnRCYYHiQqHeqDxRCc++Y+PIYVMt
 t7EEu10sOXqDw6ps0EjogcjkFuWVBONpkkJQ3u3k22LkLzgnXyhI/D+ps
 pocRtoLUhYbzy3Qs+YxqDo7H+oZfZfwFwqd0OWY1bTTXSURRUPoh0wjat g==;
X-CSE-ConnectionGUID: N/0rGh5GQpGKBNhZtKcWVA==
X-CSE-MsgGUID: gQY/6bDWSIWy8e3E4WPy4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="50838399"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="50838399"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:58:08 -0700
X-CSE-ConnectionGUID: ZHiSBCFKRHuKbUA7BjnzZw==
X-CSE-MsgGUID: r9jWvqQ/Qm62i9iNo9X5rA==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:58:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 01:58:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 01:58:07 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.68) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 01:58:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yOqAIFqmMVnBt0aKZZZNUz7X6E1AM6jOjfjf5ZblOiZWTFRDsSXoUNk2czFt20VS7JVlzqOVOBTkNlYONY1pmTIUnomIHt3aXZ3hl78arqQHv1DguvR8QjEuQ0nHtsCvluYsSlgX9oe6g+H3xi8mjSOMyHhO0NxD6pR/4hZAapMy5ZhTXxaSHOB3Hr8XhOz9i+aqnnsCCXigYtyR4GETTiHvf5vBCyjTPCHdaI0pAODpOQ+zA8KX0eBDkZVXfQ15/oqPwhQq/ToYqWyX2X7YXq+7cgMqmUUtGPfcDKeXjl/otezWjPOeJS418uvTTndIgLOoIpExgu3HD0lV4nN0Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oewnbbYVo2tqrfM6q7g1CvLGI7btPJyBW0NBzTbcg/g=;
 b=I0RxDJ81eUnAHq/QoXZKsPxG3SIy1+UFd3dpQ78GPNcZQKDJjA+2thBoFXqxIjfi6RFGvHP4H+LCbl6jGEfpnqZtNnoMXgGXTrYGbR7WFPeJyXGAZY7H7aLWYJijg95YvtgWykSYNh7EvvVKmAVsVaZI0qOl97n9OzPHpEeqYuOLbAn1AtSC8WJkiq2SFX74er/PAo3dx8cGrBJDcWKiRapITgMPnTfFQ0DqgeeElOVvVcgzoXiz8E5rQLaPWXDUmGy431k5p6JrYNcHrPVYz1pByIRze+FD22lmuKGyKfkzoaizg/09XRz6g6mwggA/R6FB4hpgoP/LZ9fKwcUktw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH7PR11MB6378.namprd11.prod.outlook.com
 (2603:10b6:510:1fa::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 08:58:05 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9228.016; Wed, 22 Oct 2025
 08:58:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: RE: [PATCH 04/25] drm/i915/ltphy: Program sequence for PORT_CLOCK_CTL
 for LT Phy
Thread-Topic: [PATCH 04/25] drm/i915/ltphy: Program sequence for
 PORT_CLOCK_CTL for LT Phy
Thread-Index: AQHcPYlnAOsuBJOAFEaU1IBmOHCl2bTN5o0AgAABy0A=
Date: Wed, 22 Oct 2025 08:58:05 +0000
Message-ID: <DM3PPF208195D8DA97B08782D935568B15EE3F3A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-5-suraj.kandpal@intel.com>
 <e7e2172b-1daa-4161-825b-ca3363a6ff12@intel.com>
In-Reply-To: <e7e2172b-1daa-4161-825b-ca3363a6ff12@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH7PR11MB6378:EE_
x-ms-office365-filtering-correlation-id: 7503d1bf-cc15-483f-a27e-08de11491d20
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Q0VxaU05cGxiY0xNY0JMa29BcTArbDcvZytBZ0pEa25LWGgvMkNzenQwYVNL?=
 =?utf-8?B?Tk83Z0toMTR0NW1WNXFFdDVKbE5jK3pWeTBNTDBJMWJhT05vSnVIaFRTVFBk?=
 =?utf-8?B?Z3pxQ0xMVkI4dkIreWJnZUJEOHF2Q3NlKzRnWVZoNlVBakFCT2tkaFJqczcx?=
 =?utf-8?B?UzVycTFCc1g1V3pDcERFdnIvK2h1NytiaVFqdVNvZnc4VllHSVkzbmMxQ1hU?=
 =?utf-8?B?RU56cWUxN0RCSEFBdURaNzRoYW9HcVQ4S3hZMHkrSndTcXhuSW84SExhby9Y?=
 =?utf-8?B?cTd6djBiTThaSDY3MXdxUlBBMDNyWWlwSytnSXd0dUVwTGpkcXNpR2JSd1ZT?=
 =?utf-8?B?VkFQMitPeGtDYnBzeVJFZGpDRStpbjZub25qU2xHaVVQcFZKSnBRZzdhTk5L?=
 =?utf-8?B?RGF5MVRXTHRSY25XQXpTNWN1b25TYWpnV3piYXF1THdUOUR0TXRsemRMOUJ1?=
 =?utf-8?B?SkVjbjMySzhYeVR0T0ZzK2luUG1YRE9wTVgxTWRxTXhCR3ZnTWpyQUVhQjRw?=
 =?utf-8?B?QmtubHRjSU5UK2VWQk0zNThiZ2tUN2VNeG1Pc2tjWXJ0Z0N4TkRyQlJhL1Zt?=
 =?utf-8?B?QUdtYmQ3TjV3S08vUkhuRXNiVnJxUnQrMjFrMkFYR0k4M3lvN25aWWc5ZXRO?=
 =?utf-8?B?YkI4RnJtMmozYWV0blFnOTN1N2VXK1lrUjlHZWRzamRGNmVoK044a2swWDJT?=
 =?utf-8?B?alJsSGxSY2JwcXo3QmVJcjh0UGw1Y2tUUURMNnVlYTh3TXdwUU9INW04dzNM?=
 =?utf-8?B?VHQwNUVLS0pQb2xNOHpyeUhxcUNCSVYyRm01VUJLb0pXcEZsc09UUHdLcUxG?=
 =?utf-8?B?ajk3REp0d0l1REZsbnZ5OFlOMHhlT0hXRm1OTHJYTm9mWkdReCsweU9zVW1m?=
 =?utf-8?B?RjJ2S0VWeFlVQmY1dnQzSXRhWm9Xa0kvOEh3aHBvNDJmS3hZeXI5cjJwTG9v?=
 =?utf-8?B?QlBrYzJWc3dWSjBLOTVTaTJRbTZJZDhYd1dZQ2tZRm5nUUptK0o3UVJ3MDZY?=
 =?utf-8?B?VGIyVWQ2b1ZVU1RrN3c5MExmb2ZZR2szZVhDM3NxSEhjS2oraWVZQ1V5b2xB?=
 =?utf-8?B?Vy9KMWVwbkt1WDBZY3pOWWNoMnB1b0UrK09ndGNuaXRVeklTTXJuYXhkbThC?=
 =?utf-8?B?WG9ibFlDOFRteWl1Y21yNDkzbUpJVTdON3JzMGNJNjdWMlJVdndja0JOaWdF?=
 =?utf-8?B?OHFDcHNhOHJNdndZZVIzcGh3eTJ3Y0o1Nkl6TWZuQTQvMm5rRUhyKzJIUVNj?=
 =?utf-8?B?N21yem5jTWZkUmJBRUl1dHhTREtxcWlWdXFyaTRYN0tmR2oyZXRIQjM3THZi?=
 =?utf-8?B?clMzMHB0cVZyTXk2WHJ4c0VEdE1IeGdQMmtHQmNSeWVVQmd3REhoS0tPYnVn?=
 =?utf-8?B?aGh4bjZjOFAwYXh0K3Z0bFNYZlB6QXd4dndZamNQR1BiLy96SmIrN1dZdHh0?=
 =?utf-8?B?ckd2bFF3d2M2ME4rWlVhcGY5bFBKdWVjUlhPMUJXRGhic2hmRG40M2pVcUh3?=
 =?utf-8?B?WGhZT3E1WjkvaEJGNFZoZVJNOWhkOHFtdHVkVTlaK2xWY2JDYUR0RE5xbUpQ?=
 =?utf-8?B?OHhKQ1A0MGxuaVZwUnFTd3dnNkNuSTR5cVRUKzVab1VsNkdXRUxiRElpQ2d6?=
 =?utf-8?B?WjdYTXlJWi9IaFRmdDF3elJoRlBhbmUvWWZ0ZlZTR3U5VS91RWwwSTh4bWRo?=
 =?utf-8?B?T3RHS3ZqZFBuWTcyVXY4UHp4NHQvbzBUZ2k0VG5DQlZhaEhXMG42TnMzeEp3?=
 =?utf-8?B?TzhMc1JlVDdscUZhVElPZGJnMUZXdGEraVVxR0lPTDlkRWpEZ0IwT1l0RDZP?=
 =?utf-8?B?UWdOVWxXcGpiKzZUMnVOY3RSNXp2dVFtUGlIb05CY1hKQ1JnVTk2YkQxbmpI?=
 =?utf-8?B?QTFBaFk4eUc2YytzNkE0clo4MVJsNjFQU1lTa3JyZzFLUy95Wlpza210a3dw?=
 =?utf-8?B?Mk1rTUx4Yk0waTlUN2J2ZUJpQzFVNFhvQ1Y2QjhBTms2L3AvQkVmTVVvTTQ4?=
 =?utf-8?B?bm5FVXNPdS9sWFdXTUVPbzgya004S01rWUUxMzI2VGdtL1JpS3l0L2s3RVV4?=
 =?utf-8?Q?cItJ1N?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmxvTmYwVEtoQ09DSzNaUEcvTEVpLzFoOXNHSEN6WFU4d21mRCtieVlzcWNC?=
 =?utf-8?B?MWpRMGhFa1lVckU0WVIvSTdoUThiaGVRRmcxVkpSWHl3b0drakVSekpWN2Vq?=
 =?utf-8?B?VkJ0aFVWUXgwUHQ0R3l1b1FaNUtmZC9ZSjhEeThSdnQ5RWtxU2VreUhTR0NW?=
 =?utf-8?B?WVFWSEp0K0hQOE5xYnJNYVZvN2p2aFhvY3FqbEFGVFF0YlNxOUFtWUtySFVa?=
 =?utf-8?B?SjJHT2pKQ3NtSGNKTElKeVZGb29USFdUeHVoVkprWmtjWHdKMk8xeGFiV05K?=
 =?utf-8?B?N3hjSXUxMStkcmFJSGNHK1RyMlgyS0lKYlBxUDZia3R3bEtkVnNpckVza1dp?=
 =?utf-8?B?ZDR3MDNoUzVsRXRIOHF2T1B3OTIySWVia2oxdEVXNlF5S25pTXY3REczckVQ?=
 =?utf-8?B?NzRlT0Q4bmRnZ1Z4dEdFcXZ6VVhqdm1GUTVoOTZUNFlsaDcrZWhTVWgvaWRX?=
 =?utf-8?B?MjRWejZ5cW1CU2dvby90R1NuN0NYUEdBSnpKempuRnltWFMyOFBOQzZ0cmhI?=
 =?utf-8?B?L0xINXlzVVp4NjIrZHJTV0YwTldydFR5dGJPQXVwZnlGZkhDVTdXZFdVU1RC?=
 =?utf-8?B?MFRGZWpCakVIN3AydkZENXdob2xnUzB5ZmM1SUR6QkgvMjVyZDJFcnpHcS9s?=
 =?utf-8?B?dEt4dExjYXhPOXcwZzEwcmM5ZnFLNG9jczhvVEttZ1FWNHNpYlRoVy9BTFgy?=
 =?utf-8?B?OThhQzJLL2ZiSzdpRTIrdW5YdHgwaVNoMW9PeTJ0UGxtZVJ2U0xqNEUwM3g0?=
 =?utf-8?B?UU9TencydU8xWmNpN3VkMFJtdG5EdkJxZy8vSHRtRXViR2dOU3FCaFA5SWpH?=
 =?utf-8?B?dklKZSttRlRhTS9pa1RHY1NjZTVEL25la3R4dXYxZ01yRVlvQVJ1QVNGN3Bw?=
 =?utf-8?B?MDJ3TVBYeVhIbTBDZ1hBNzBJZnNXQ3QyVmVlWUtFZlJiNWJyUUtRK2FTUDlp?=
 =?utf-8?B?eDlSS3JKS3N4NU5OQmtlV2ZKL2E3ZlplN2g1bUcwQ3NUU0VvTXVSZ2ZmLytv?=
 =?utf-8?B?VllwOFp1OUthRCtuRkVBS1k4L3AyTmVxN09uUTVpTFJJSmc5ZUxmd2VabDBQ?=
 =?utf-8?B?SC9ISGlackc3aFhYTXhQM3Vqbm45NVF3MnlxSW96VUlHaDk0MFk1MnJzNVQ4?=
 =?utf-8?B?bHZLQWM4V2hGM1Qzd0N1S0hudTllMFFiZHY4L3hPOGRwYzlhcHRBWUZIL05C?=
 =?utf-8?B?SkhOSDNubHgrK1NDa0dzeGNhYkZsWDd3MWVnY2ZTOXhXcFJ3elFqODJZbUdo?=
 =?utf-8?B?cDhSQjVUSXNHV3FjS0tNekVxNFdmNXVGU24vVUlaSUdKTlZNQXpIbW9hSytn?=
 =?utf-8?B?M2pBaTN6blRZV25ndjZLYkl2WStYRGM1S3NuWHo1NzVLeUo0ZlQ4eE5FMzlL?=
 =?utf-8?B?Z2dMSnlLS1hEZC8yWEJveVpLV0dzY0FnOC91ZlF0c3pEQUtWK3Zvdys2OEN2?=
 =?utf-8?B?dzJBaDNreTkxZkhVSVlHVTJBNXg4RG9pQnVidmh0NkMvREhVTDNiQU51ZnVu?=
 =?utf-8?B?Q1JvMXFZZ1c3UlZuNGNWcVVsaU1aNDBOK0pZR1VaZDdqU1VaYlZFMFFOVjUy?=
 =?utf-8?B?b1dNTlFwTGJGa29GNmtBTGUwTnRjSXNBWGRmVGpOR2xmWVR2TVpaeXZETlZY?=
 =?utf-8?B?TDMrLzRmSXV1Y3h4VjZtSGhnYXcybkNRSm40WnUyT01QVXpxcS84dFZ2aTdO?=
 =?utf-8?B?RGZPTHNEZ2FVZW9LSlhOTkEzNWZwRnRnRURsemJBVDVTV3ZRb0FIQURXb2Nx?=
 =?utf-8?B?T3RIVWtUdGZMenFkWXlGSlpyNU01SmZCcnU3TlY1S0E1Sm53WUZxTG5KTW9x?=
 =?utf-8?B?RXVKOUJIcWNKdFVnYkNTSGpTejlWVmw0bDBYMG52d0p5V01hd2dxNVJwNlha?=
 =?utf-8?B?aXdZZnNVUWN3Mzh2bmduMi9yU0ZDYVlZVmZoWFpHQ1NJWXJiNXBpeFdaZkJk?=
 =?utf-8?B?UHJiTlRoRzM2OUE3UktBYkt3Z1RpOFNSYjhleVRRbmt1M3JTN1ArMlRGQVhp?=
 =?utf-8?B?by9OcXlMbFRGK2dadVZtK3ZYdlN6ZG1ubmNkL2xEN1lXQy90cmVKc3k3ekt5?=
 =?utf-8?B?Zk9vZmRRVG1qREJ6Mno2Z242aEk5dEpaRDVwS3pTMFlZd3Z5UlFqZ1BJdys4?=
 =?utf-8?Q?rVazjH2PuYGe16ARTZT7TaIed?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7503d1bf-cc15-483f-a27e-08de11491d20
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2025 08:58:05.1804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OwynR/h9ey8FXeF/wkDois+hU43zt7Kta16t3/AMR+DVAzh0RUpU7bVYPwL6EAdMnoSHdYvp+Vc9HVuE/6Mtmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6378
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

PiBTdWJqZWN0OiBSZTogW1BBVENIIDA0LzI1XSBkcm0vaTkxNS9sdHBoeTogUHJvZ3JhbSBzZXF1
ZW5jZSBmb3INCj4gUE9SVF9DTE9DS19DVEwgZm9yIExUIFBoeQ0KPiANCj4gT24gMTUtMTAtMjAy
NSAwOTozNywgU3VyYWogS2FuZHBhbCB3cm90ZToNCj4gPiBQcm9ncmFtIHNlcXVlbmNlIGZyb20g
cG9ydCBjbG9jayBjdGwgZXhjZXB0IGZvciB0aGUgU1NDIGVuYWJsZW1lbnQNCj4gPiBwYXJ0IHdo
aWNoIHdpbGwgYmUgdGFrZW4gY2FyZSBvZiBsYXRlci4NCj4gPg0KPiA+IEJzcGVjOiA3NDQ5Mg0K
PiA+IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29t
Pg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBf
cGh5LmMgfCAgOCArKy0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jeDBfcGh5LmggfCAgMSArDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2x0X3BoeS5jICB8IDM2ICsrKysrKysrKysrKysrKysrKysrDQo+ID4gICAzIGZpbGVzIGNo
YW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gaW5kZXgg
ZGIyYjA1NTIxYzYyLi5lYWI0OWMwOGQ3ZmYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IEBAIC0yNTg1LDcgKzI1ODUsNyBA
QCBzdGF0aWMgYm9vbCBpc19kcDIodTMyIGNsb2NrKQ0KPiA+ICAgCXJldHVybiBmYWxzZTsNCj4g
PiAgIH0NCj4gPg0KPiA+IC1zdGF0aWMgYm9vbCBpc19oZG1pX2ZybCh1MzIgY2xvY2spDQo+ID4g
K2Jvb2wgaW50ZWxfY3gwX2lzX2hkbWlfZnJsKHUzMiBjbG9jaykNCj4gPiAgIHsNCj4gPiAgIAlz
d2l0Y2ggKGNsb2NrKSB7DQo+ID4gICAJY2FzZSAzMDAwMDA6IC8qIDMgR2JwcyAqLw0KPiA+IEBA
IC0yNjEyLDcgKzI2MTIsNyBAQCBzdGF0aWMgaW50IGludGVsX2dldF9jMjBfY3VzdG9tX3dpZHRo
KHUzMiBjbG9jaywNCj4gYm9vbCBkcCkNCj4gPiAgIHsNCj4gPiAgIAlpZiAoZHAgJiYgaXNfZHAy
KGNsb2NrKSkNCj4gPiAgIAkJcmV0dXJuIDI7DQo+ID4gLQllbHNlIGlmIChpc19oZG1pX2ZybChj
bG9jaykpDQo+ID4gKwllbHNlIGlmIChpbnRlbF9jeDBfaXNfaGRtaV9mcmwoY2xvY2spKQ0KPiA+
ICAgCQlyZXR1cm4gMTsNCj4gPiAgIAllbHNlDQo+ID4gICAJCXJldHVybiAwOw0KPiA+IEBAIC0y
NzA2LDcgKzI3MDYsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jMjBfcGxsX3Byb2dyYW0oc3RydWN0
DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4gICAJfSBlbHNlIHsNCj4gPiAgIAkJaW50
ZWxfY3gwX3JtdyhlbmNvZGVyLCBvd25lZF9sYW5lX21hc2ssDQo+IFBIWV9DMjBfVkRSX0NVU1RP
TV9TRVJERVNfUkFURSwNCj4gPiAgIAkJCSAgICAgIEJJVCg3KSB8IFBIWV9DMjBfQ1VTVE9NX1NF
UkRFU19NQVNLLA0KPiA+IC0JCQkgICAgICBpc19oZG1pX2ZybChwb3J0X2Nsb2NrKSA/IEJJVCg3
KSA6IDAsDQo+ID4gKwkJCSAgICAgIGludGVsX2N4MF9pc19oZG1pX2ZybChwb3J0X2Nsb2NrKSA/
IEJJVCg3KSA6IDAsDQo+ID4gICAJCQkgICAgICBNQl9XUklURV9DT01NSVRURUQpOw0KPiA+DQo+
ID4gICAJCWludGVsX2N4MF93cml0ZShlbmNvZGVyLCBJTlRFTF9DWDBfQk9USF9MQU5FUywNCj4g
PiBQSFlfQzIwX1ZEUl9IRE1JX1JBVEUsIEBAIC0yNzY2LDcgKzI3NjYsNyBAQCBzdGF0aWMgdm9p
ZA0KPiA+IGludGVsX3Byb2dyYW1fcG9ydF9jbG9ja19jdGwoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsDQo+ID4NCj4gPiAgIAl2YWwgfD0gWEVMUERQX0ZPUldBUkRfQ0xPQ0tfVU5HQVRF
Ow0KPiA+DQo+ID4gLQlpZiAoIWlzX2RwICYmIGlzX2hkbWlfZnJsKHBvcnRfY2xvY2spKQ0KPiA+
ICsJaWYgKCFpc19kcCAmJiBpbnRlbF9jeDBfaXNfaGRtaV9mcmwocG9ydF9jbG9jaykpDQo+IFdv
dWxkIGl0IGJlIGJldHRlciB0byBtb3ZlIHRoaXMgdG8gYSBkaWZmZXJlbnQgcGF0Y2g/DQoNCkkg
Y2FuIG1vdmUgaXQgdG8gYSBzZXBhcmF0ZSBwYXRjaCBJIHdhcyBhbHNvIHRoaW5raW5nIG9mIGhh
dmluZyB0aGlzIGZ1bmN0aW9uIGluc2lkZSBpbnRlbF9oZG1pIHRoZW4sDQpXaGF0IGRvIHlvdSBz
YXk/DQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gPiAgIAkJdmFsIHw9IFhFTFBEUF9E
RElfQ0xPQ0tfU0VMRUNUX1BSRVAoZGlzcGxheSwNCj4gWEVMUERQX0RESV9DTE9DS19TRUxFQ1Rf
RElWMThDTEspOw0KPiA+ICAgCWVsc2UNCj4gPiAgIAkJdmFsIHw9IFhFTFBEUF9ERElfQ0xPQ0tf
U0VMRUNUX1BSRVAoZGlzcGxheSwNCj4gPiBYRUxQRFBfRERJX0NMT0NLX1NFTEVDVF9NQVhQQ0xL
KTsgZGlmZiAtLWdpdA0KPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
eDBfcGh5LmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5oDQo+ID4gaW5kZXggYzkyMDI2ZmU3YjhmLi5iMTExYTg5M2I0MjggMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmgNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaA0KPiA+IEBAIC00
Myw2ICs0Myw3IEBAIHZvaWQgaW50ZWxfY3gwX3BoeV9zZXRfc2lnbmFsX2xldmVscyhzdHJ1Y3QN
Cj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgIAkJCQkgICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gPiAgIGludCBpbnRlbF9jeDBfcGh5X2No
ZWNrX2hkbWlfbGlua19yYXRlKHN0cnVjdCBpbnRlbF9oZG1pICpoZG1pLCBpbnQgY2xvY2spOw0K
PiA+ICAgdm9pZCBpbnRlbF9jeDBfc2V0dXBfcG93ZXJkb3duKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyKTsNCj4gPiArYm9vbCBpbnRlbF9jeDBfaXNfaGRtaV9mcmwodTMyIGNsb2NrKTsN
Cj4gPiAgIGludCBpbnRlbF9tdGxfdGJ0X2NhbGNfcG9ydF9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2Rlcik7DQo+ID4gICB2b2lkIGludGVsX2N4MF9wbGxfcG93ZXJfc2F2ZV93YShz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+ID4gICB2b2lkIGludGVsX2xubF9tYWNf
dHJhbnNtaXRfbGZwcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgZGlmZg0KPiA+IC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0KPiA+IGluZGV4IGM2
NTMzM2NjOTQ5NC4uOGM2ZjYwZDllMGFjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jDQo+ID4gQEAgLTEwOCwxMyArMTA4LDQ5IEBAIGlu
dGVsX2x0X3BoeV9sYW5lX3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyLA0K
PiA+ICAgCWludGVsX2RlX3JtdyhkaXNwbGF5LCBYRUxQRFBfUE9SVF9CVUZfQ1RMMihkaXNwbGF5
LCBwb3J0KSwNCj4gbGFuZV9waHlfcHVsc2Vfc3RhdHVzLCAwKTsNCj4gPiAgIH0NCj4gPg0KPiA+
ICtzdGF0aWMgdm9pZA0KPiA+ICtpbnRlbF9sdF9waHlfcHJvZ3JhbV9wb3J0X2Nsb2NrX2N0bChz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiArCQkJCSAgICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiArCQkJCSAgICBib29sIGxhbmVfcmV2
ZXJzYWwpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiArCXUzMiB2YWwgPSAwOw0KPiA+ICsNCj4gPiAr
CWludGVsX2RlX3JtdyhkaXNwbGF5LCBYRUxQRFBfUE9SVF9CVUZfQ1RMMShkaXNwbGF5LCBlbmNv
ZGVyLQ0KPiA+cG9ydCksDQo+ID4gKwkJICAgICBYRUxQRFBfUE9SVF9SRVZFUlNBTCwNCj4gPiAr
CQkgICAgIGxhbmVfcmV2ZXJzYWwgPyBYRUxQRFBfUE9SVF9SRVZFUlNBTCA6IDApOw0KPiA+ICsN
Cj4gPiArCXZhbCB8PSBYRUxQRFBfRk9SV0FSRF9DTE9DS19VTkdBVEU7DQo+ID4gKw0KPiA+ICsJ
LyoNCj4gPiArCSAqIFdlIGFjdHVhbGx5IG1lYW4gTUFDQ0xLIGhlcmUgYW5kIG5vdCBNQVhQQ0xL
IHdoZW4gdXNpbmcgTFQNCj4gUGh5DQo+ID4gKwkgKiBidXQgc2luY2UgdGhlIHJlZ2lzdGVyIGJp
dHMgc3RpbGwgcmVtYWluIHRoZSBzYW1lIHdlIHVzZQ0KPiA+ICsJICogdGhlIHNhbWUgZGVmaW5p
dGlvbg0KPiA+ICsJICovDQo+ID4gKwlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRl
LCBJTlRFTF9PVVRQVVRfSERNSSkgJiYNCj4gPiArCSAgICBpbnRlbF9jeDBfaXNfaGRtaV9mcmwo
Y3J0Y19zdGF0ZS0+cG9ydF9jbG9jaykpDQo+ID4gKwkJdmFsIHw9IFhFTFBEUF9ERElfQ0xPQ0tf
U0VMRUNUX1BSRVAoZGlzcGxheSwNCj4gWEVMUERQX0RESV9DTE9DS19TRUxFQ1RfRElWMThDTEsp
Ow0KPiA+ICsJZWxzZQ0KPiA+ICsJCXZhbCB8PSBYRUxQRFBfRERJX0NMT0NLX1NFTEVDVF9QUkVQ
KGRpc3BsYXksDQo+ID4gK1hFTFBEUF9ERElfQ0xPQ0tfU0VMRUNUX01BWFBDTEspOw0KPiA+ICsN
Cj4gPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBYRUxQRFBfUE9SVF9DTE9DS19DVEwoZGlzcGxh
eSwgZW5jb2Rlci0NCj4gPnBvcnQpLA0KPiA+ICsJCSAgICAgWEVMUERQX0xBTkUxX1BIWV9DTE9D
S19TRUxFQ1QgfA0KPiBYRUxQRFBfRk9SV0FSRF9DTE9DS19VTkdBVEUgfA0KPiA+ICsJCSAgICAg
WEVMUERQX0RESV9DTE9DS19TRUxFQ1RfTUFTSyhkaXNwbGF5KSB8DQo+IFhFTFBEUF9TU0NfRU5B
QkxFX1BMTEEgfA0KPiA+ICsJCSAgICAgWEVMUERQX1NTQ19FTkFCTEVfUExMQiwgdmFsKTsNCj4g
PiArfQ0KPiA+ICsNCj4gPiAgIHZvaWQgaW50ZWxfbHRfcGh5X3BsbF9lbmFibGUoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gICAJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ICAgew0KPiA+ICsJc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7DQo+ID4gKwlib29s
IGxhbmVfcmV2ZXJzYWwgPSBkaWdfcG9ydC0+bGFuZV9yZXZlcnNhbDsNCj4gPiArDQo+ID4gICAJ
LyogMS4gRW5hYmxlIE1hY0NMSyBhdCBkZWZhdWx0IDE2MiBNSHogZnJlcXVlbmN5LiAqLw0KPiA+
ICAgCWludGVsX2x0X3BoeV9sYW5lX3Jlc2V0KGVuY29kZXIsIGNydGNfc3RhdGUtPmxhbmVfY291
bnQpOw0KPiA+DQo+ID4gICAJLyogMi4gUHJvZ3JhbSBQT1JUX0NMT0NLX0NUTCByZWdpc3RlciB0
byBjb25maWd1cmUgY2xvY2sgbXV4ZXMsDQo+ID4gZ2F0aW5nLCBhbmQgU1NDLiAqLw0KPiA+ICsJ
aW50ZWxfbHRfcGh5X3Byb2dyYW1fcG9ydF9jbG9ja19jdGwoZW5jb2RlciwgY3J0Y19zdGF0ZSwN
Cj4gPiArbGFuZV9yZXZlcnNhbCk7DQo+ID4gKw0KPiA+ICAgCS8qIDMuIENoYW5nZSBvd25lZCBQ
SFkgbGFuZXMgcG93ZXIgdG8gUmVhZHkgc3RhdGUuICovDQo+ID4gICAJLyoNCj4gPiAgIAkgKiA0
LiBSZWFkIHRoZSBQSFkgbWVzc2FnZSBidXMgVkRSIHJlZ2lzdGVyIFBIWV9WRFJfMF9Db25maWcg
Y2hlY2sNCj4gPiBlbmFibGVkIFBMTCB0eXBlLA0K
