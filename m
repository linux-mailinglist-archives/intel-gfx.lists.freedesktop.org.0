Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8A793F8E3
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:59:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 696EE10E0E3;
	Mon, 29 Jul 2024 14:59:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U6j/+Sop";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A06B410E0E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 14:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722265162; x=1753801162;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hIxdK8ubUFMG99oRF/T+rdIyYw9W029xWJAH0zjGnIg=;
 b=U6j/+SopxPvaPIyML65H8Jit0rYR0cHKCP9ljN5eAoaP0vY3Vb3ZteAW
 pVcDYVS8dK1ysM0Aqu4HAD2CTMPfEKz2I5NoyJlc8qj+IfYqes76A7KaK
 N/4BqTxv7cCc3/FxcMvLgcdneC1Zcy/mz6NBVTd+pw2GgpVO4/zORJdJU
 kj98yvyKqlWXZw7W5k/yaCrG5YtKm2R2C34SmSd0vGLowfhdQJSoWXsCv
 ryltd2d9zZKp8NdVKP0Hrxe/uFLSTfR8oVHeseDKwr0G1MayNyJTv8Uj7
 f0XsRtTy5lbpk7RDEV5kcfW9CWeFqcoGyJAo99uVqpj8nWqYUE+XR7tiG Q==;
X-CSE-ConnectionGUID: 7hknRLvkR8a92TJWsiqLiA==
X-CSE-MsgGUID: wjb7XgcbRfO17cd5TLUToQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19625617"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="19625617"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:59:21 -0700
X-CSE-ConnectionGUID: 6qlBzmqZRqGEk0qfK7F1Xg==
X-CSE-MsgGUID: 0ZRPb0UPREK42v9+UOgPAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="58319616"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 07:59:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 07:59:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 07:59:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 07:59:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 07:59:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xr1hpNpE1Afmd4YYl4PnA/lIj1PMt8aIKwye3M/uVJDj/4SLpkt5rOVcvcucLN3lSw0ZksoYDmbydp7ZvqB2qR7SJNEPXH0Se2/VEtHxpIqQy33GN9ExilgPC296ROxh/YRfwueWdaCsxp/z3gYaK+MjJtLuuzBeXjDip1VVLhOudJoLZFVX7oo1XjWSqc0W5P7PRyl3qBDYYzZMBvbtWhRb9de57SpTqQA9qxX5+1eoWc1uiEOviooNUxYmIRdpKQgw67EeuUZbaUoU2eQhIxyrTaE8CL60SgIWyikqA8OpfBhacOBQskdlM1qXlEbnSyuVboakzoLV/9/FC+81eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hIxdK8ubUFMG99oRF/T+rdIyYw9W029xWJAH0zjGnIg=;
 b=p/vntjtn5/6x+22+/MP28btB7Rm8BwipRpvQ8ERMTCLRc/ai6ly7/9ivjtCndnM6ga8hgQ2SobOK5Q6gYGh8vJH+Z/7DbSTqINccGLSVUiDV0nSG0xWUukEYUpushDBrW3h4XmDDeP9hGqy6dmrAWLeb3smcoSBE8aVdGfIXJ/51slKT4tfpNeoBCkOZYenUrLVt24BdjjTcVo3xuaMltPmGy3s4yD7knBqXtwyKq7hcpiMDGoShoISnVC58GDQfbC7zXIWGs5d1kVJ02EzaDWB5I6xkfN4qi9m3Im0G8f0a+0QwV06CqIuryxSPWYZqEvpuplWtSHTv3Ez6gbHqxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by IA1PR11MB8247.namprd11.prod.outlook.com (2603:10b6:208:449::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Mon, 29 Jul
 2024 14:59:16 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 14:59:16 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>, Dan Carpenter
 <dan.carpenter@linaro.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915: Allow NULL memory region
Thread-Topic: [PATCH] drm/i915: Allow NULL memory region
Thread-Index: AQHa1KbN5UTvSEpbjUOefTSt9WtVWrIHJM2AgACIxwCAARGWAIAAkj6AgAQlvQCAAGup8A==
Date: Mon, 29 Jul 2024 14:59:16 +0000
Message-ID: <CH0PR11MB5444CD78CB4EA276F7ECF082E5B72@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <401a092f-f431-474d-82c4-48442b3c70e1@ursulin.net>
 <a8d2b873-fc98-4f14-9c64-c0bcc097956b@suswa.mountain>
 <354eb902-f03a-4046-a957-b41d630b9485@ursulin.net>
 <d791fb20-b90b-417a-a3f0-092c27ed8790@suswa.mountain>
 <14a742a4-6452-4396-9bdc-fae0caff8624@ursulin.net>
In-Reply-To: <14a742a4-6452-4396-9bdc-fae0caff8624@ursulin.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|IA1PR11MB8247:EE_
x-ms-office365-filtering-correlation-id: 9a6a4b37-48d0-4a66-6d86-08dcafdf0457
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZjQyZEszMXE1YnJSU1lxQVJjLzg2VmJZSStrUlAwMEJPemloQWRzS3ZQYUMv?=
 =?utf-8?B?ZVhHTjJ3eTBoeFg5N25jQmZhZEVPVEZEV3ZWQytoOWo4SUY5UnNUSDJSdktD?=
 =?utf-8?B?RDJvUzZ4UU80MnBpc2c2OFJ5TTRtaktHN2IyeCtYcXZYaWhyeVIxR0FNb0xT?=
 =?utf-8?B?WTY5VVl2UERVeWloRDNFOTZzWkIxS2hsdWE3ZTZzd0poYTdhZUI0V0h1OGgx?=
 =?utf-8?B?V1l5Z0FFYmdjVmpqMk9zTVMvbWQ3R24vOXQ2d1EwY3F6alpUcjc0bEIvQmV5?=
 =?utf-8?B?MVRRakF5RWhsZEcyS0dMeG50MEFYcVVmaG8rSkRpTUJaTERNSEwycS9IaXI3?=
 =?utf-8?B?N1hmei9FcUtPcUhjeTZ5b290eDJJaE9jZitheURROGFGdTVJbDY2ditCN0x4?=
 =?utf-8?B?V0FNVkZQemw4SXNHM3JWOWlMb2xicnhsWlJTOW5lOVNXdDRzSHJ1UXBuNHV3?=
 =?utf-8?B?NG1sUEo0V0ZkbXQ2a3lEVHNSRW1vS0Zpd1Ftb1I4bGNaLzhmZEV4ZUtLZXRL?=
 =?utf-8?B?aU9jS25EV1VWd3RKUGFMT1p1TVN1SGNvLzcwcFQvNFBLeERoK3pTSnFUeHV2?=
 =?utf-8?B?RitqTEF4OXRHN0QxWlZlODQyL1hHcUoxVDQyZVJ1VisxT0VidzcxK3FxZndh?=
 =?utf-8?B?My9uVmh6Yk56UDNxS1VsWEtDM05XVGwvSmdrL1ZjUGFjVlZkNVU0cFVkK3Uy?=
 =?utf-8?B?ZzNTdHAzVTc4OW5BMkNkTHE1S2pJdXFONTdoTDZyK28wOFYwY2JPcENaT012?=
 =?utf-8?B?dnVKUGd6OVduNUs3V1c2ZTFjNWw5NWxDSTVhTTQyZHlNOStSU2M4dk14Zi9n?=
 =?utf-8?B?VzRmVlRKWHNhZk5TTmR4cWFwVEFMQWQwTFpnK29GTTVDcEdtWDAzbFg5V2hH?=
 =?utf-8?B?RlE2bTE3cGJUNzNZcE10TWdMT2hrVjlsQTNZbmtOaXhnWjZaTWJRcFFuelhH?=
 =?utf-8?B?aHpNbXRXR0NnU01Ebit3NFdSSE9YZGlDY1BzWVJ3UFJ3a3NmNHlCVkQ1eEV6?=
 =?utf-8?B?dVdJcDFJQktSQ1d6cEY3QklVcnBacG0xVnJzY3dTZDY4SDYwblMzNWF1R1p5?=
 =?utf-8?B?RjZCbXVHK2RqWjc4SDZBUmVRZlByOUVkZ29Sd0lISG1zMGdOcnVOMVFhbnhu?=
 =?utf-8?B?cFo4UDQxaUxuNlJCSU1qcWdTRnpleUFDODBabU1LWnpBNWhHOTRMbTAyMHBY?=
 =?utf-8?B?RXpMVlUzMUpaK2lwa3htNUtFQzBXYzVBd0xUbllrb2xreDdVSUsrdmlSR1J6?=
 =?utf-8?B?TFNOQW9mTTRxYWdsY0w5bUJCQmlZQkRhYnJzbWRSZWU1NUpVaXB3RTJ1WWdD?=
 =?utf-8?B?SWpkQkEwdWdTbTRtS1FCVFQvVnZiTC9WYVd4bnhvL3NCWGEvTS96ek5WY08v?=
 =?utf-8?B?KzRIQjBnYnoxRGg4NDE5cG9HeHdZYkl2dTRKS0VqY2NocGVSS3VxYlJrMkxy?=
 =?utf-8?B?NGJUUlFaWmh2SjA4cC9NNEY0WE45WVJDTC9VODhxTTdIam5kSjhyRHYrVlpv?=
 =?utf-8?B?TExKRWlJdUVzU01uYmdLZklvRGxWUEgrbTJadXlVU004d1lVc04vY1hacWt2?=
 =?utf-8?B?OVNDU1BFTWQ2dW16Q3FGQUdFY2toeXY5Y0s0VmQ2QWx0RGlxb3BIMUhERGhI?=
 =?utf-8?B?bm5vMlJMTDVHK1hES2djY0pnTnlvd1oxZUp0ZVdFRFZsQkdRYUZwbGdYTVVC?=
 =?utf-8?B?bVN5UElQY3VVUzIvV0VLTTkzdVliVFFhODE1Y2dhc29oaEVyWWhHSkpmSkVt?=
 =?utf-8?B?M3IwYWd1WWlYYjFmVDVZbXMrYzlJTkw4OXpoZExaZmJIZ05lYTROQkZEL0xm?=
 =?utf-8?B?eVNxQ3N3U09VbUhtWjlGNGhVV1ZPUFRVZUZkUllsQlJERlFObjJiaVZ5NTZL?=
 =?utf-8?B?aFdySmx0VU1TckFhUDlGS2ZmRHJiallWQmtoR2RucjdjYkE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0kzNVRrT0FkVTZTKzFXRlZIa3ZLTHJkWVJITmY2Szk4aXFFY3IxUjFGM0Ji?=
 =?utf-8?B?UDRrcTFOSkNGTTk1N2dLemliR0dqWm85TEg3RWRlaW9yVVFpc0JSOCtFaldD?=
 =?utf-8?B?OGVrRzNER24xZXVHU2pKS0tVZzRwd0VwV1Jpa0U4bzJub0VoZFpIVlJZdHFx?=
 =?utf-8?B?YnJ6bGl5cVN2SnEvNURpWEFtakNWd0NES1FyNlU2Y3Z6dmZHUjB2OHoybGhy?=
 =?utf-8?B?OEJPelh0WFFlMUZLa0t3bmk1M2tRNzNvNUtyazFrQ1hvWUpIM2VOT3hTcXFZ?=
 =?utf-8?B?MGVHQzd4ZDkyS2VhdGtPNGduVm9EcHEvamozc2FtaDNZRmtJejlsV3kxZW9B?=
 =?utf-8?B?S0ZldHZ3VjR2ajdnRWo1TUNKTUdIdG1oUnNiWFVtOW9OSlFPdWI5ekZaNmZw?=
 =?utf-8?B?TjNHbkI2dDdMMTZBamI0dy9pbWtHODN2bWZjakJLVEV5cXBFOTJvUk1wYU1u?=
 =?utf-8?B?QWVoL1k2dFdhR2RJNkJ2WTU0b0JqZFlzZlJVaFFHemhleUxOc3M4MWduWTl4?=
 =?utf-8?B?aHdWV1lxandsQ3F0VENxMkpoYTczS1Z3T3VHY0Z5Vk5UOVE0WFB0ZVpwcTQw?=
 =?utf-8?B?TkcvOFlUQXJkTlpISnlFZE9XVm5Qc1NUKzBNU3pkSWNGMVVzdHd1MUxOdlQ0?=
 =?utf-8?B?NjNiWWZ2aDNnQ29tc0pCUFR3UnIvRlZ2d21LS1lCOUpWQ0pYVnFEOFp4QzE3?=
 =?utf-8?B?VEJpSkxKTURvcEpISlBINk5SbGw2UE1oclk5OGN2cmlNZENvdEhoRXFlemt0?=
 =?utf-8?B?eldNT3Vjd21tY2Q5MElDZlRkMUt0NFVhOXBiM3lDaTlhMDBRWHAvS0dzakVT?=
 =?utf-8?B?WnN2a0poeVN2UUVhZm05TnJHaFFJUlpJN3F0K0llZkd0OUdFcEV5WW4reHlT?=
 =?utf-8?B?SjNzK3VwRTNqQjdtNStISTJoK2IrQVJjWEk2bHZqMVRRaTdkYTBwdGxGa1FQ?=
 =?utf-8?B?eGs3Nk1aK0IxaWpsdXFraGU4Q2haUURuaENZejlvUnVGTmFMSmh5OFBwYk0r?=
 =?utf-8?B?eDd6RzRpS2p0L1lhOWRYN09Eam9NR0RUS2VLUnlOaW5aaVR2TXFBUVYxNXBn?=
 =?utf-8?B?MXhHZkN1bHhYWnVuRmk3dTFLbm1waVBlUjNDOFY5VHE5a3NsbHFVR0RJbHpU?=
 =?utf-8?B?T003YXA1UU8wRzkwTUx1QkRQNlQ0QklRWUJhb3MrYnEvRU03VmFscCtadjZB?=
 =?utf-8?B?MWVUZzNyV1FoMkhTWGtuOVFWQ09Db3l3MGJnR0VKK0RmOVdlcWdIUnF2K3Ba?=
 =?utf-8?B?U2p4ZHNMaThweGx3SS82cU0yQTY5clJ5UkdnYXhQSFMyVUpOaTJ1ZnNuMUVV?=
 =?utf-8?B?L3VNZXVtTXI2bmZCMFZzL0UzS0pydVpOYm1KUlRGT01oanF6Y2hkRTVqU3F1?=
 =?utf-8?B?ZnowTC8wQ2N0cTFXNWwvL0prRUphRzMvTWZVWlJ0cVQyaTUzNGJycHI2VHg0?=
 =?utf-8?B?ek9iVmN4SWdzYTNjYS9IdnNCcTNtVER0NUJxSFd4LzNySUU5L2JZOGRSWjZy?=
 =?utf-8?B?MGY0MGR0M0RpUWpSa2NFSkxmdjN5NTBKK3hBMGpTNXVsMG1UWWlUZ05wOU9q?=
 =?utf-8?B?U3RYY3lmdUdFRVBZOHRlemlCYTNuaFVIdDNuV2UxSWhHZnVJSFR2RDFIeGZs?=
 =?utf-8?B?L1pvK1ZWeG44WWNPQWtMSmt1N1c5dC9DL2VWalAxNVBoR1BNcTN5YnNmVXpB?=
 =?utf-8?B?M0lEQmlRLzlSZTM2enhZT2FMajBuNzlENDN5OUVpQ3RWdFFXNmxESS95N2Vp?=
 =?utf-8?B?d2wwZWk1QTRKOUhXcEVoS3VKMVozVktCOGdWL3krRSs2dGtIaVhMeXhvSE8x?=
 =?utf-8?B?ZWZ1NG1FR3hQOE1MaGc1SENsTm0wMzZDUzBqNDgxOEZWdStXbzFuVk9XcjF0?=
 =?utf-8?B?QVRsNGZEOEFqTGoyeXUwSmdDeWRrNENEMWVSQmdxY1JTL0ZiOVB0VmxxN1lx?=
 =?utf-8?B?VjJjNGJCb3JZU2J6bDdRYVpBYlBITkxQYUZDQmJkR2llTTlIbC81OGk2WW5I?=
 =?utf-8?B?MVQ1dnR2Y1lkVTRKSk50VnFFTkJwNjAvUzNJMmltMW8zYnhwYUE4NkVUUFl0?=
 =?utf-8?B?RXpLU1pmVGl1SGNaN2d5L3lrUk1zVENDMWVBaUFCMXJFQ2J5ZUYwN3NlL0dZ?=
 =?utf-8?Q?v5Zt/+rmxf4+T7FddJItVumNa?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a6a4b37-48d0-4a66-6d86-08dcafdf0457
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2024 14:59:16.4824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NFjuOIuAM3lDXlobMSnOcubaUmqx2SYky5AT5m8gjKL59eRSY+pV9y3kbJbjHih1N5EeSvG7ZgoWgxXBTg0ZAFO60mHZ4MyAn00vaUPWBmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8247
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFR2cnRrbyBVcnN1bGluIDx0dXJzdWxp
bkB1cnN1bGluLm5ldD4gDQpTZW50OiBNb25kYXksIEp1bHkgMjksIDIwMjQgMToyMSBBTQ0KVG86
IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZz4NCkNjOiBDYXZpdHQsIEpv
bmF0aGFuIDxqb25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZzsgR3VwdGEsIHNhdXJhYmhnIDxzYXVyYWJoZy5ndXB0YUBpbnRlbC5jb20+OyBj
aHJpcy5wLndpbHNvbkBsaW51eC5pbnRlbC5jb20NClN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9p
OTE1OiBBbGxvdyBOVUxMIG1lbW9yeSByZWdpb24NCj4gDQo+IA0KPiBPbiAyNi8wNy8yMDI0IDE4
OjAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOg0KPiA+IE9uIEZyaSwgSnVsIDI2LCAyMDI0IGF0IDA5
OjE3OjIwQU0gKzAxMDAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiA+Pg0KPiA+PiBPbiAyNS8w
Ny8yMDI0IDE2OjU4LCBEYW4gQ2FycGVudGVyIHdyb3RlOg0KPiA+Pj4gT24gVGh1LCBKdWwgMjUs
IDIwMjQgYXQgMDg6NDg6MzVBTSArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+ID4+Pj4N
Cj4gPj4+PiBIaSwNCj4gPj4+Pg0KPiA+Pj4+IE9uIDEyLzA3LzIwMjQgMjI6NDEsIEpvbmF0aGFu
IENhdml0dCB3cm90ZToNCj4gPj4+Pj4gUHJldmVudCBhIE5VTEwgcG9pbnRlciBhY2Nlc3MgaW4g
aW50ZWxfbWVtb3J5X3JlZ2lvbnNfaHdfcHJvYmUuDQo+ID4+Pj4NCj4gPj4+PiBGb3IgZnV0dXJl
IHJlZmVyZW5jZSBwbGVhc2UgaW5jbHVkZSBzb21lIGltcGFjdCBhc3Nlc3NtZW50IGluIHBhdGNo
ZXMgdGFnZ2VkDQo+ID4+Pj4gYXMgZml4ZXMuIE1ha2VzIG1haW50YWluZXJzIGpvYiwgYW5kIGV2
ZW4gYW55b25lJ3Mgd2hvIHRyaWVzIHRvIGJhY2twb3J0DQo+ID4+Pj4gc3R1ZmYgdG8gc3RhYmxl
IGF0IHNvbWUgZnV0dXJlIGRhdGUsIG11Y2ggZWFzaWVyIGlmIGl0IGlzIGtub3duIGhvdw0KPiA+
Pj4+IGltcG9ydGFudCBpcyB0aGUgZml4IGFuZCBpbiB3aGF0IGNpcmN1bXN0YW5jZXMgY2FuIHRo
ZSBwcm9ibGVtIGl0IGlzIGZpeGluZw0KPiA+Pj4+IHRyaWdnZXIuDQo+ID4+Pj4NCj4gPj4+DQo+
ID4+PiBBcyBzb21lb25lIGRvaW5nIGJhY2twb3J0IHdvcmssIEkgdGhpbmsgdGhpcyBwYXRjaCBp
cyBmaW5lLiAgRXZlcnlvbmUNCj4gPj4+IGtub3dzIHRoZSBpbXBhY3Qgb2YgYSBOVUxMIGRlcmVm
ZXJlbmNlIGluIHByb2JlKCkuDQo+ID4+Pg0KPiA+Pj4gSSBndWVzcyB3aXRoIHBhdGNoZXMgdGhh
dCBhZGQgTlVMTCBkZXJlZmVyZW5jZXMsIHRoZSB0cmljayBpcw0KPiA+Pj4gdW5kZXJzdGFuZGlu
ZyB3aGVuIHBlb3BsZSBhcmUgYWRkaW5nIE5VTEwgY2hlY2tzIHRvIG1ha2UgYSBzdGF0aWMNCj4g
Pj4+IGNoZWNrZXIgaGFwcHkgb3Igd2hlbiBpdCdzIGEgcmVhbCBidWcuICBCdXQgdGhlIGZhdWx0
IGxpZXMgd2l0aCB0aGUNCj4gPj4+IHBlb3BsZSBhZGRpbmcgTlVMTCBjaGVja3MganVzdCB0byBt
YWtlIHRoZSB0b29scyBoYXBweS4gIFNvbWUgb2YgdGhlc2UNCj4gPj4+IHBvaW50bGVzcyBOVUxM
IGNoZWNrcyBlbmQgdXAgaW4gc3RhYmxlLCBidXQgaXQncyBmaW5lLCBleHRyYSBOVUxMIGNoZWNr
cw0KPiA+Pj4gbmV2ZXIgaHVydCBhbnlvbmUuICBJZiB0aGUgbWFpbnRhaW5lciB3YW50cyB0byBi
ZSBleHRyYSBzYWZlIGJ5IGFkZGluZw0KPiA+Pj4gTlVMTCBjaGVja3MgdGhlbiB3aG8gYXJlIHdl
IHRvIHNheSBvdGhlcndpc2UuDQo+ID4+Pg0KPiA+Pj4gSW4gb3RoZXIgd29yZHMgbm9ybWFsIHBh
dGNoZXMgc2hvdWxkbid0IGhhdmUgdG8gc2F5LiAiSSdtIG5vdCBseWluZyIgYXQNCj4gPj4+IHRo
ZSBlbmQuICBJdCBzaG91bGQgYmUgdGhlIHBvaW50bGVzcyBwYXRjaGVzIHdoaWNoIHNheSwgIkkn
bSBkb2luZyBhDQo+ID4+PiBwb2ludGxlc3MgdGhpbmcuICBEb24ndCBib3RoZXIgYmFja3BvcnRp
bmcuIg0KPiA+Pj4NCj4gPj4+IE1vc3Qgc3RhYmxlIHBhdGNoIGJhY2twb3J0cyBhcmUgZG9uZSBh
dXRvbWF0aWNhbGx5IGFuZCBwZW9wbGUgaGF2ZQ0KPiA+Pj4gdmFyaW91cyB0b29scyBhbmQgc2Ny
aXB0cyB0byBkbyB0aGF0LiAgSWYgdGhlIHRvb2xzIGRvbid0IGhhbmRsZSB0aGlzDQo+ID4+PiBw
YXRjaCBhdXRvbWF0aWNhbGx5IHRoZW4gdGhleSBhcmUgZGVmZWN0aXZlLg0KPiA+Pg0KPiA+PiBS
aWdodCwgYW5kIGV2ZXJ5IGZldyByZWxlYXNlcyBtYWludGFpbmVycyBhbmQgYXV0aG9ycyBnZXQg
YSBidW5jaCBvZiBlbWFpbHMNCj4gPj4gZm9yIHBhdGNoZXMgd2hpY2ggZGlkIG5vdCBhcHBseSB0
byBzb21lIHN0YWJsZSB0cmVlLg0KPiA+Pg0KPiA+IA0KPiA+IEkgYmVsaWV2ZSB0aGVzZSBlbWFp
bHMgYXJlIG9ubHkgc2VudCBmb3IgY29tbWl0cyB0aGF0IGFyZSB0YWdnZWQgZm9yDQo+ID4gc3Rh
YmxlLiAgRm9yIEFVVE9TRUwgcGF0Y2hlcywgdGhlIGJhY2twb3J0aW5nIGlzIGRvbmUgb24gYSBi
ZXN0IGVmZm9ydA0KPiA+IGJhc2lzLiAgT24gdGhlIG90aGVyIGhhbmQsIGhvcGVmdWxseSB0aGlz
IHBhdGNoIHdvdWxkIGhhdmUgYmVlbiB0YWdnZWQNCj4gPiBmb3Igc3RhYmxlIGlmIHdlIGhhZG4n
dCBmaXhlZCB0aGUgYnVnIHNvIHF1aWNrbHkuDQo+ID4gDQo+ID4+IEluIHdoaWNoIGNhc2Ugc29t
ZW9uZSBoYXMgdG8gZG8gbWFudWFsIHdvcmsgYW5kIHRoZW4gaXQgaXMgZ29vZCB0byBrbm93IGhv
dw0KPiA+PiBpbXBvcnRhbnQgaXQgaXMgdG8gYmFja3BvcnQgc29tZXRoaW5nLiBGb3IgY2FzZXMg
d2hlbiBpdCBpcyBub3QgdHJpdmlhbC4gSXQNCj4gPj4gZG9lcyBub3QgYXBwbHkgdG8gdGhpcyBw
YXRjaCwgYnV0IGFzIGEgX2Jlc3QgcHJhY3RpY2VfIGl0IGlzIGdvb2QgaWYgdGhlDQo+ID4+IGNv
bW1pdCBtZXNzYWdlIGV4cGxhaW5zIHRoZSBpbXBhY3RlZCBwbGF0Zm9ybXMgYW5kIHNjZW5hcmlv
cy4NCj4gPj4NCj4gPj4gSW4gdGhpcyBjYXNlIEkgY2FuIGZvbGxvdyB0aGUgRml4ZXM6IHRhZyBh
bmQgc2VlIHRoZSBmaXggdGhhdCB0aGlzIHBhdGNoZXMNCj4gPj4gZml4ZXMgaXMgb25seSBhYm91
dCBBVFMtTS4gV2hpY2ggaWYgaXQgd2FzIGEgbW9yZSBjb21wbGljYXRlZCBwYXRjaCBtaWdodCBi
ZQ0KPiA+PiBhIHJlYXNvbiB0byBub3QgbmVlZCBib3RoZXIgYmFja3BvcnRpbmcgcGFzdCBzb21l
IGtlcm5lbCB2ZXJzaW9uIHdoZXJlDQo+ID4+IHBsYXRmb3JtIFggd2Fzbid0IGV2ZW4gc3VwcG9y
dGVkLg0KPiA+Pg0KPiA+PiBUaGVyZWZvcmUgSSB0aGluayBteSBwb2ludCBpcyB0aGF0IGJlc3Qg
cHJhY3RpY2UgaXMgdG8gaW5jbHVkZSB0aGlzIHRoZQ0KPiA+PiBjb21taXQgdGV4dCwgc28gYW55
IGZ1dHVyZSBtYWludGFpbmVyL2JhY2twb3J0ZXIgZG9lcyBub3QgaGF2ZSB0byByZS1kbw0KPiA+
PiBkZXRlY3RpdmUgd29yaywgc3RhbmRzLg0KPiA+IA0KPiA+IFRoaXMgaXMgYSByZWFsbHkgZWxh
Ym9yYXRlIGh5cG90aGV0aWNhbC4gIEFyZSB0aGVyZSBrZXJuZWxzIHdoaWNoIGFyZQ0KPiA+IGFm
ZmVjdGVkIGJ5IHRoaXMgYnVnIGJ1dCBkb24ndCBzdXBwb3J0IEFUUy1NPw0KPiANCj4gSSBhbSBu
b3Qgc3VyZSB3aHkgYXJlIHdlIGFyZ3VpbmcgYWdhaW5zdCB0aGUgdmFsdWUgb2YgcHV0dGluZyBh
IGJpdCBtb3JlIA0KPiBpbmZvIGluIGNvbW1pdCBtZXNzYWdlcy4NCj4gDQo+IFdoZW4gSSB3YXMg
d3JpdGluZyB1cCB0aGUgZHJtLWludGVsLW5leHQtZml4ZXMgcHVsbCByZXF1ZXN0IEkgYWxyZWFk
eSANCj4gaGFkIHRvIGZvbGxvdyB0aGUgRml4ZXM6IGNoYWluIGZvciB0aGlzIG9uZSB0byB1bmRl
cnN0YW5kIHRoZSBpbXBhY3QuDQo+IA0KPiBUaGlzIHBhdGNoIGlzIGFscmVhZHkgaW4gYW5kIGFs
bCBidXQgZnJvbSBteSBwb2ludCBvZiB2aWV3IGJlc3QgcHJhY3RpY2UgDQo+IHN0aWxsIGlzIGZv
ciBjb21taXQgbWVzc2FnZXMgdG8gYmUgYSBiaXQgbW9yZSB2ZXJib3NlIHRoYW4gImZpeCBudWxs
IA0KPiBwb2ludGVyIGRlcmVmIi4gQXQgbGVhc3Qgd2hlbiBmaXhlcyBhcmUgY29taW5nIGZyb20g
aW5zaWRlIEludGVsIEkgdGhpbmsgDQo+IHdlIGNhbiBhc3N1bWUgcGVvcGxlIGhhdmUgZW5vdWdo
IGluZm8gdG8gYXNzZXMgYW5kIGRvY3VtZW50Lg0KDQpGb3IgZnV0dXJlIHJlZmVyZW5jZSwgd2hh
dCBraW5kIG9mIGFkZGl0aW9uYWwgaW5mb3JtYXRpb24gd291bGQgeW91IGhhdmUNCnByZWZlcnJl
ZCBiZWVuIGFkZGVkIHRvIHRoaXMgcGF0Y2ggdGhhdCB3YXMgbm90IG9yaWdpbmFsbHkgcHJvdmlk
ZWQsIGFuZCBpbg0Kd2hhdCBsb2NhdGlvbiBzaG91bGQgdGhhdCBpbmZvcm1hdGlvbiBoYXZlIGJl
ZW4gYWRkZWQgKGFzIGEgcGFydCBvZiB0aGUNCmNvbW1pdCBtZXNzYWdlIGl0c2VsZiwgYWZ0ZXIg
dGhlIEZpeGVzIHRhZywgZXRjLik/DQotSm9uYXRoYW4gQ2F2aXR0DQoNCj4gDQo+IFJlZ2FyZHMs
DQo+IA0KPiBUdnJ0a28NCj4gDQo=
