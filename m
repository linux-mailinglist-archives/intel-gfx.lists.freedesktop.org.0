Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3819C693D7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 13:02:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A01410E48E;
	Tue, 18 Nov 2025 12:02:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iv+S8zHd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F7810E48E;
 Tue, 18 Nov 2025 12:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763467363; x=1795003363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HiJLSJCuIIEmU/pr4O+r0nIZmmt8vXuIi+/CuYaO1lU=;
 b=Iv+S8zHdYpvw0DrLMboaNhFnGomQjNIaNBfl+/0K/6gcA/3PeRIJsT71
 lJWd9JE56G8ygiWXnru7upTwgo0l0K4UAtHsPbadh5eF/yepsFsWznoob
 CvPzKfrRA/0A+QmNWhsrw230g2J27XlwjdjIkMotGljunDzT/88PSWd/s
 mc8B2FJmEc351mUtnkIdU09YTxqa3Hp+1Z0BZ+VK7snhcnIrl9KPeLTaZ
 eIp06uCDe2xpu0QjXayDqEd0uDLsUnuGmZKJTB7bHNlKF978s8s1MVuYO
 0T1RLMYsMp+KYPR1K41AVyVsEo8+QG7TpDi99YI51iiGufmRE3NwexHbq Q==;
X-CSE-ConnectionGUID: 5up83R4ZRdG+muefCD8fQw==
X-CSE-MsgGUID: 5/AO/EnVQSqeJNpcGkh0lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="82876690"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="82876690"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 04:02:23 -0800
X-CSE-ConnectionGUID: NeKd8WHASbyfh4ZEPNHKjQ==
X-CSE-MsgGUID: S+fX5VpVRFSyPOL/nBax9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="221648176"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 04:02:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 04:02:22 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 04:02:22 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 04:02:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kwPQNFyP7O3z3fZ6MVmHybcawb0UFxkv2wr1TqKngKPHr6T8M7JGuuhTA4myeGoMs6ttCWEJ2so+jtXqFsTVwWO6r2Ux9kklb4/aOKFJH9fGnAzDER66l5OHGuERSbzGTqCLBN+movJMcww0Q+OdhQ85o7b/rNS8AXYAYuxnfS8iP144rW3OwOV+Ytmd/x5PDGJ9nFT3KpIWAaJRg/KqGSBcL+ZyjCh0EIjPmk+PDxoYp3QT2NCxodx4IxSS3+paAWoDrVbePjRL0/2Iz73UEX+vlkCsyrmVoE1lZpegggZn0jfGf5qVYzsE3nRMq68uQMkdU0dNzie0eJ3Pds4Jlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HiJLSJCuIIEmU/pr4O+r0nIZmmt8vXuIi+/CuYaO1lU=;
 b=iY3QJAdaH1zpr6wek89i2nts2m0DYcEuVRsN2Cy6t2ifiKiva4/bgwnpN5cukIjN1qTpLqu5AMCOAEjjFU3dHeh0WUKDscMLD5OX6mp4gkLfy0An0iBpUtz7NexPWuKTOtSYNx4YgQxjScqu33D12dCEhDntNWXYKV3VUeZTMnfVAGMu2JfGJL9/14Wg67urbfMCtsEe9PaiGUfdvx0Nv7SEELRQrPiOQ++nL/mFNducXP9Tzu3Fma8Vku2xxYiEfS6/eWy8WbG2mQfB69mJI4XLEcXphzzmwptTgCbIJSMDAfM7KatWmv49qJSwXIdQ8g3mPSiguiM7VGI3vEnmGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CH3PR11MB8314.namprd11.prod.outlook.com
 (2603:10b6:610:170::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 12:02:20 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 12:02:20 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 30/32] drm/i915/cx0: Get encoder configuration for C10
 and C20 PHY PLLs
Thread-Topic: [PATCH v2 30/32] drm/i915/cx0: Get encoder configuration for C10
 and C20 PHY PLLs
Thread-Index: AQHcV7FMHeRritzHAESIQVL6dv3M4rT32XQAgAB0jvA=
Date: Tue, 18 Nov 2025 12:02:20 +0000
Message-ID: <DS4PPF69154114F4357BAC59CB90B93E140EFD6A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-31-mika.kahola@intel.com>
 <DM3PPF208195D8D197F1979D266EBC18C61E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D197F1979D266EBC18C61E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CH3PR11MB8314:EE_
x-ms-office365-filtering-correlation-id: cc92965a-4281-4964-4a71-08de269a53a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bkNLR3E5NG9iOWpnVm84L3N3Wm5FVmNBdUwxaW1nMnpvQzM1bUVMdFdpalZJ?=
 =?utf-8?B?S3NIQWJDOHk5Y1NsdnFIcDQwZmxJc0RXQVU0c01iQ0NJeHhYZWh6MkEwTUU2?=
 =?utf-8?B?VUhta1ZSU09uQ1B5SmUwem5qcy85UksxYWpLazdEYUQ2VHZkejlRZzlvRnhR?=
 =?utf-8?B?SU51MUtRVWV0RnpXWndYSXBtNWJNWkZ2ZmxJNjhCSlQyUnRhSmhYOEdBVkZw?=
 =?utf-8?B?QUhaY2s2ZUNJR3pBY0RBM202OXM4QUpjaUtmLzRKOFVkcmFiaXNhUXB0MEY4?=
 =?utf-8?B?QzFNbTgwVGdTYVUvWi84UE11MEx2VXVWaFM3SXdnUkVkMFFuTEs1REVTVDFV?=
 =?utf-8?B?Z1FabjdaTDVvOHZ2dGVJOWV6RkZpY2FTWVZpSjNNVnl1NmwvS3A4NlBOZTBx?=
 =?utf-8?B?Q0YvSmZoZzN1SzRZWlA4c1dsbnp1NFR0SDdZWUZtMjhFNHkzdm5yMHR1MEZW?=
 =?utf-8?B?OThiSEVyMXpNMnRCRlk2YWZQNEJNZnk3d044c0ZNNWxlQXY4WU40bHV5WUpR?=
 =?utf-8?B?VjRoelVxVFBOMXM2WXhKN2RnRWtrNWhnS29vUlpSUUtmN3hVWEVSaEhKS2FW?=
 =?utf-8?B?dk9jTXJGUVZxbXlZbjV5N0RuK0tZTnJyYjFEWTdjY2w0NzdFTGVkbWZXWi9w?=
 =?utf-8?B?T011K0FxVnpwRitIR1JKdGh3a3RmbDl1MG5FRURZbDZCeERac01xemdKZkJP?=
 =?utf-8?B?NmtFOXhNNzZ4ZW1QYUJOajBkYjN5NHZnWHlWZEM1K081bEJKVUxRQTRHcUdr?=
 =?utf-8?B?anoxTHdKSEVOcHRQbC8xMGV1eXZkbFpMdUhmaDBYOGtmaTA5d01xazlJWTJG?=
 =?utf-8?B?M1VwWnNyZkVDWnR4VDl4c24wV3NiVXpnRXVHYkxZa0FEMUtFWkRIY1JIOEpD?=
 =?utf-8?B?akdxQjJyQThPK0xRTE1PbjdrMkJVV09vdG9jZmpwc0JCczd6TU96Y0xOY0RS?=
 =?utf-8?B?dWF1V2xDMW1SSStqZ0ZJMVgyTWVsR3doS2FNS05ncER6NnB4Q3VtdU1uTTlL?=
 =?utf-8?B?enZLY1MyUE9Xa2xuVnpjQncvRGs0NG40bUVld2hSc0tqRUQ5K0VxdkZlN2ZL?=
 =?utf-8?B?eEVxL05ydnR2MlpUeHRHbmI0TGwrdGVkVllLMlVGMmVWaG9HNUNzNDVOclc2?=
 =?utf-8?B?dnBlaHdhN1hxWWhxUjkzRXphRmpGZUg0dXNXazdxcHZjQ1YrRG00cUpnbUZy?=
 =?utf-8?B?YWtWZXBOTDM2aFNVZmtsdXozYVlwT25CRk5VMG9IdGpUOVFlQThTRUhxSzRT?=
 =?utf-8?B?cnRGMk1TQnpaL1ozTTIrSWxqWFB5NFJoVDhtQzhiRHUvSy8wNHN0WkVhZmtR?=
 =?utf-8?B?bHYvWEhCSy90bEtoQ1FxLzRUWklGWVNYQVo0b2w0Z1lBeW81ekJVaENmYS9L?=
 =?utf-8?B?YmdZczNqSmNQcFhodHpWMzRYakxpa204MjBWRHVvRkNqTkVNWUpsRjFMUGpO?=
 =?utf-8?B?cm1JUWFHZDRhNkF0NFJHcjZ6WDdOcnFwY29GU3d5bkltQWEvVXdtUEEweWNk?=
 =?utf-8?B?bW11V3FwUUFDREcrcU8reUdyKzQ1YXI0a1h2NFJEQWVFMHluSitjay9GQVVQ?=
 =?utf-8?B?REY5MzdMcExHM3VXdDEzN0xvYVFNWE40d0ZQTnN5eThCc1JXdjVaSjM0ZG9E?=
 =?utf-8?B?emo1dGpFam5reThWQkU2V2NNOG5qVDd1VHArTXNnL1h5aGFQanIyczRzZ2pN?=
 =?utf-8?B?UnJtRFFnL251VUo4QXdaV1hqUkZnaVBlYUpsY1RabTdkd3FacnJHVFM4czFi?=
 =?utf-8?B?a0NOd0FlMWR1S25MOXVETklpYVZKTVI3ZmJqaTFidnZlMjJVNERpcjZxNkYz?=
 =?utf-8?B?WVRma0ZDR1ZXYTRPdUZ5dnhYWTdtRUI2V1ZXZGZsTUJUN3dtaGZQNGJlN3dT?=
 =?utf-8?B?Qkd6SlY3cFord1luTE1WZmdJR25xdFhzN2RtM2duaXlmN2FNbkx2dG9OZDJJ?=
 =?utf-8?B?aEo1d0pEc3c2K2pQRHJHeHRyZEQ3TEsvMFFCaE4vV0lxNklQaEVKZ3lteFRy?=
 =?utf-8?B?VnErd0w5bG8xZXkydTdERUpRWElyWTdTQ0FjS3laNUNEbE9tbFpMVWVlVHZF?=
 =?utf-8?Q?tdb8J2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVo4OHlxb0dNOUlzTGQzMVV0VmJmTXM5N0NpbWcvUDZ4ZElCZS9EbG50SG5l?=
 =?utf-8?B?aWlpNHltYktCM1prNlVuR1NBWEk0VUlHTW5Pem5BNHpOQ3lYYVBZeUZ5RFBR?=
 =?utf-8?B?VFM1YkJhVytnT0QrM0ZyVHI3bDZkOFRBN3FIRWNJZlNGRjhqNHFGL2dvZm5Q?=
 =?utf-8?B?cUdXWnM2NllJYlNmUUZKellpVDJMM1p4RnpOZmM1MjhSeGNKMWlaZTFGNHAz?=
 =?utf-8?B?Zk1PZnZSR0lkSGVZREVvRGkveXRWTG8xVlArMDdpaCtyNEVMNjhyRUNiSnJu?=
 =?utf-8?B?NnF0RXZiYkFUaG9LVDZ0K281K0xmdHJHc3dqV3FxVzBWeml0SG5DS21xMU9N?=
 =?utf-8?B?TkY5K0VFTFFNRE5taUdZdUY5ZlhQcno3dUpKWGcrNTViWm9TQnJKbVJwWkF3?=
 =?utf-8?B?SHlqMFdVbUZVQi9LTUVmVGsvY2tyUlpNRDVnRW9KM0pEdG9qSmt5WDMvbnQw?=
 =?utf-8?B?U1J0cXVMZDlJQURzQzVibkJraE9PTHY2UXZ0SnE2VWR0OCtXWVJySTRUVGUz?=
 =?utf-8?B?UmI3aFVFbEdrZmtGc1F0enNHN2wyVk5oREo4YlZYQ2NWZFlSOHdlU1NkaEQw?=
 =?utf-8?B?ditsUzJaaDZ6dFROY3BrTWdLbG1YZ2lqMnV2UFlIQ0lsQzlqcDh1RjNoV3VS?=
 =?utf-8?B?bnpZSjVwV2F5cm5DVCtna3BnNjAzRTNCZXd4S202V1hPZU9yMDFpeGdKWStr?=
 =?utf-8?B?dHVEclA4QnJNdSt1OFN1L0RBb1NlRGtNbWd2L2lIRUJSYmVTdEdTQ1FVazNW?=
 =?utf-8?B?ZTIxUGxwQkxvOTVIMzlNQ01LcTBnZ1I5SngrWVJ0L2dVZU9PNU1SV0Nma3Rm?=
 =?utf-8?B?RmFmNUVVOFF6NEpKNFpXQy90d0E5T0pkRHdwSlhaQ0JybHA1QUhHMjFPaUpm?=
 =?utf-8?B?Mmx4WWZQR1NvZFFjRjVnVXVOa2FwQzR3SGFyaUxSSS9GZkMzalhMK0huK0Vy?=
 =?utf-8?B?VG5oZllBWTNwaUdEVUt4VWpaTUdZMXRqdXB0ZFgyZkVFUkR6MFVFQXMzSU1p?=
 =?utf-8?B?QVkwUVZsY0ZPdTc2VDZBdDBZRlZab21iNmEvZnhFU3VOZFhoa204SVlWc29P?=
 =?utf-8?B?N1RWNS8ydW5uWE5pdFg0NDNKcUJocklhRXdNdmoyaE5PaG14THVsclFFaGRr?=
 =?utf-8?B?aE1XTkxqUHBnd25zaHlPYmphYWRYVEl5d2l0Qm8wWnpnc0Nlc2RCaFYwK1d1?=
 =?utf-8?B?VFloNTZwQVE3emQ5OWNKOHJyNUlEWE54Wkh0VnF2cE1Hd1RBQ3dLVUtxR00v?=
 =?utf-8?B?RTVoT0JDdDBaQ2ZjanJZejc5QXE4VHE4dy9jYkFLNGVrL29SRlRrVDRJVmZ1?=
 =?utf-8?B?MEtYR1k3VjM4TXd6eFNtMUdOcXRMU1B0QWpoZ0VsWS9XTDB4ME52S3JSbE9X?=
 =?utf-8?B?VXlKcHRybWFMZ1luS1F4U3lsSTZURnhzVVV4N09EUGVQcnQxanc1eFBTS3pQ?=
 =?utf-8?B?RktEZU9vTmZZZmZjNHdlaW5qZTFIWmZQYVMrSW1aeVJOdFh4S2dVNzdhdkpG?=
 =?utf-8?B?TnR4eTZPWE9pTGxxa25sbXNwTkwxUGZSdG1WREpIY3lKN1gvcmlqSnlFSnl1?=
 =?utf-8?B?SzlCU0pJOHFFQ0owazJtU08wVGswZW5yZGRJcTl0MFBtZGpMaWw3ei9rUFZv?=
 =?utf-8?B?bFArK3h1cmg2ZTdIUzhrUlVwV2JUeklIV3gvcEg4dnhBWFdEejNESVZpQnlV?=
 =?utf-8?B?dHBlWkEvd1U3RTFRNnQ2UjdJcEprTFVuQ291STBLbW9rbGJWclZXbkVFS0NT?=
 =?utf-8?B?c3BiN0xrZHg1bm5ETlpFMDgrdEVyYkJldHNWN0pCUE4wUUNHdzQyVXVGUzU5?=
 =?utf-8?B?Z2dXV2RJWUNZdUhqSHhsRGxWaXJ0cWg4THVUdGp5MDdoMVpGRjJBS1ZSRzVv?=
 =?utf-8?B?UWxOYVhYVUp6bjh6Snl5STgrU3VyWTBtOWNBTTNreGZyVm4yQVpvTlA4SVNT?=
 =?utf-8?B?N1lNa3c1bFhYcUhUVFA5b2RYQ216NitWcXlYL0dlSjFtL0FCdzFOSFpEN2Na?=
 =?utf-8?B?c3FwU0txYzVBSnYzVEYwdGVObjVKNjEvemo1YWRwbjBDM0Fjd2RiMTRodjNZ?=
 =?utf-8?B?dFlyK0FSRlJtN0xHM3ZKNHdpZDJNZ2tTMEpySmN2RzVWMlpxUWt6VHNHOFdV?=
 =?utf-8?Q?s+NRDrANL8PH7Sfqa0GiRG7m/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc92965a-4281-4964-4a71-08de269a53a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 12:02:20.2685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O2x7/ntNBbUf3gjCZrVNk+NivtjENThM7KBlwp+1+abt1NGSYyKpFIjNiSC1KHxVTUnfFDW8sq0y1DzPStQMSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8314
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIDE4IE5vdmVtYmVyIDIwMjUg
Ni4zMw0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgRGVhaywgSW1yZSA8
aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IFtQQVRDSCB2MiAzMC8zMl0gZHJt
L2k5MTUvY3gwOiBHZXQgZW5jb2RlciBjb25maWd1cmF0aW9uIGZvciBDMTAgYW5kIEMyMCBQSFkg
UExMcw0KPiANCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMzAvMzJdIGRybS9pOTE1L2N4MDogR2V0
IGVuY29kZXIgY29uZmlndXJhdGlvbiBmb3INCj4gPiBDMTAgYW5kIEMyMCBQSFkgUExMcw0KPiA+
DQo+ID4gRm9yIERESSBpbml0aWFsaXphdGlvbiBnZXQgY29uZmlndXJhdGlvbiBmb3IgQzEwIGFu
ZCBDMjAgY2hpcHMuDQo+ID4NCj4gPiB2MjogR2V0dGluZyBjb25maWd1cmF0aW9uIGVpdGhlciBm
b3IgYSBDMTAgb3Igb24gdGhlIFBUTCBwb3J0IEINCj4gPiAgICAgZURQIG9uIFR5cGVDIFBIWSBj
YXNlIGZvciBhIEMyMCBQSFkgUExMLiBIZW5jZSByZWZlciB0byB0aGlzDQo+ID4gICAgIGNhc2Ug
YXMgIm5vbl90Y19waHkiIGluc3RlYWQgb2YgImMxMHBoeSIuDQo+ID4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTog
TWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDgxDQo+ID4gKysrKysrKysrKysr
KysrKysrKysrKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA3NSBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMNCj4gPiBpbmRleCBiZTI1YTZmZGQ0OTEuLjY4OWJkMzIyNDkxOSAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IEBAIC00Mjcz
LDYgKzQyNzMsNzcgQEAgc3RhdGljIHZvaWQgbXRsX2RkaV9nZXRfY29uZmlnKHN0cnVjdA0KPiA+
IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gIAlpbnRlbF9kZGlfZ2V0X2NvbmZpZyhlbmNv
ZGVyLCBjcnRjX3N0YXRlKTsgIH0NCj4gPg0KPiA+ICtzdGF0aWMgYm9vbCBpY2xfZGRpX3RjX3Bs
bF9pc190YnQoY29uc3Qgc3RydWN0IGludGVsX2RwbGwgKnBsbCkgew0KPiA+ICsJcmV0dXJuIHBs
bC0+aW5mby0+aWQgPT0gRFBMTF9JRF9JQ0xfVEJUUExMOyB9DQo+ID4gKw0KPiA+ICtzdGF0aWMg
dm9pZCBtdGxfZGRpX2N4MF9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiA+ICsJCQkJICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4g
KwkJCQkgICBlbnVtIGljbF9wb3J0X2RwbGxfaWQgcG9ydF9kcGxsX2lkLA0KPiA+ICsJCQkJICAg
ZW51bSBpbnRlbF9kcGxsX2lkIHBsbF9pZCkNCj4gPiArew0KPiA+ICsJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0KPiA+ICsJc3RydWN0
IGljbF9wb3J0X2RwbGwgKnBvcnRfZHBsbDsNCj4gPiArCXN0cnVjdCBpbnRlbF9kcGxsICpwbGw7
DQo+ID4gKwlib29sIHBsbF9hY3RpdmU7DQo+ID4gKw0KPiA+ICsJcG9ydF9kcGxsID0gJmNydGNf
c3RhdGUtPmljbF9wb3J0X2RwbGxzW3BvcnRfZHBsbF9pZF07DQo+ID4gKwlwbGwgPSBpbnRlbF9n
ZXRfZHBsbF9ieV9pZChkaXNwbGF5LCBwbGxfaWQpOw0KPiA+ICsNCj4gPiArCWlmIChkcm1fV0FS
Tl9PTihkaXNwbGF5LT5kcm0sICFwbGwpKQ0KPiA+ICsJCXJldHVybjsNCj4gPiArDQo+ID4gKwlw
b3J0X2RwbGwtPnBsbCA9IHBsbDsNCj4gPiArCXBsbF9hY3RpdmUgPSBpbnRlbF9kcGxsX2dldF9o
d19zdGF0ZShkaXNwbGF5LCBwbGwsICZwb3J0X2RwbGwtPmh3X3N0YXRlKTsNCj4gPiArCWRybV9X
QVJOX09OKGRpc3BsYXktPmRybSwgIXBsbF9hY3RpdmUpOw0KPiA+ICsNCj4gPiArCWljbF9zZXRf
YWN0aXZlX3BvcnRfZHBsbChjcnRjX3N0YXRlLCBwb3J0X2RwbGxfaWQpOw0KPiA+ICsNCj4gPiAr
CWlmIChpY2xfZGRpX3RjX3BsbF9pc190YnQoY3J0Y19zdGF0ZS0+aW50ZWxfZHBsbCkpDQo+ID4g
KwkJY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9IGludGVsX210bF90YnRfY2FsY19wb3J0X2Nsb2Nr
KGVuY29kZXIpOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCWNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPSBp
bnRlbF9kcGxsX2dldF9mcmVxKGRpc3BsYXksIGNydGNfc3RhdGUtDQo+ID4gPmludGVsX2RwbGws
DQo+ID4gKwkJCQkJCQkgICAgICZjcnRjX3N0YXRlLQ0KPiA+ID5kcGxsX2h3X3N0YXRlKTsNCj4g
PiArDQo+ID4gKwlpbnRlbF9kZGlfZ2V0X2NvbmZpZyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsgfQ0K
PiA+ICsNCj4gPiArLyoNCj4gPiArICogR2V0IHRoZSBjb25maWd1cmF0aW9uIGZvciBlaXRoZXIg
YSBwb3J0IHVzaW5nIGEgQzEwIFBIWSBQTEwsIG9yIGluDQo+ID4gK3RoZSBjYXNlIG9mDQo+ID4g
KyAqIHRoZSBQVEwgcG9ydCBCIGVEUCBvbiBUeXBlQyBQSFkgY2FzZSB0aGUgY29uZmlndXJhdGlv
biBvZiBhIHBvcnQNCj4gPiArdXNpbmcgYSBDMjANCj4gPiArICogUEhZIFBMTC4NCj4gPiArICov
DQo+ID4gK3N0YXRpYyB2b2lkIG10bF9kZGlfbm9uX3RjX3BoeV9nZXRfY29uZmlnKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICsJCQkJCSAgICAgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpIHsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiArDQo+ID4gKwkvKiBUT0RPOiBSZW1v
dmUgd2hlbiB0aGUgUExMIG1hbmFnZXIgaXMgaW4gcGxhY2UuICovDQo+IA0KPiBJcyB0aGUgY29t
bWVudCBuZWVkZWQgYW55bW9yZQ0KDQpBdCB0aGlzIHBvaW50IG9mIHBhdGNoIHNlcmllcywgd2Ug
ZG9uJ3QgaGF2ZSBwbGwgbWFuYWdlciB5ZXQgaW4gcGxhY2Ugc28gd2UgY2FuIGtlZXAgdGhpcyBj
b21tZW50IGZvciBhIHdoaWxlLiBUaGUgbGFzdCBwYXRjaCB0aGF0IGVuYWJsZXMgcGxsIG1hbmFn
ZXIgYW5kIGZyYW1ld29yayB3aWxsIHJlbW92ZSB0aGlzIGNvbW1lbnQuDQoNCj4gDQo+ID4gKwlt
dGxfZGRpX2dldF9jb25maWcoZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+ID4gKwlyZXR1cm47DQo+
IA0KPiBXaHkgdGhlIGVhcmx5IHJldHVybiBjb2RlIGFmdGVyIHRoaXMgcG9pbnQgdGhlbiBzZXJ2
ZXMgbm8gcHVycG9zZS4NCg0KSXQgc2VydmVzIGEgcHVycG9zZSB0aGF0IGluIHRoaXMgd2F5IHRo
ZSBwYXRjaCBzZXJpZXMgaXMgYmlzZWN0YWJsZSBpZiB3ZSBuZWVkIHRvIGRvIHRoYXQgb25lIGRh
eS4gVGhpcyB3aWxsIGJlIHJlbW92ZWQgYnkgdGhhdCBsYXN0IHBhdGNoIG9mIHRoZSBzZXJpZXMu
DQoNCj4gDQo+ID4gKw0KPiA+ICsJbXRsX2RkaV9jeDBfZ2V0X2NvbmZpZyhlbmNvZGVyLCBjcnRj
X3N0YXRlLCBJQ0xfUE9SVF9EUExMX0RFRkFVTFQsDQo+ID4gKwkJCSAgICAgICBtdGxfcG9ydF90
b19wbGxfaWQoZGlzcGxheSwgZW5jb2Rlci0+cG9ydCkpOyB9DQo+IA0KPiBIYXZlIHRoZSBwbGwg
aWQgaW4gaXRzIG93biB2YXJpYWJsZS4NCg0KSSB0aGluayB0aGlzIGNoYW5nZSB3b3VsZCBjb21l
IGRvd24gdG8gY29kZSByZWFkYWJpbGl0eS4gSW4gbXkgdGFzdGUgdGhlIGZ1bmN0aW9uIGNhbGwg
dG8gbXRsX3BvcnRfcGxsX2lkKCkgaXMgbm90IHRvbyBjb25mdXNpbmcgYW5kIGhlbmNlIHdvdWxk
IGJlIG9rIHRvIHVzZSBhcyBpcy4NCg0KPiANCj4gPiArDQo+ID4gK3N0YXRpYyB2b2lkIG10bF9k
ZGlfdGNfcGh5X2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4g
KwkJCQkgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiA+ICsJ
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIp
Ow0KPiA+ICsNCj4gPiArCS8qIFRPRE86IFJlbW92ZSB3aGVuIHRoZSBQTEwgbWFuYWdlciBpcyBp
biBwbGFjZS4gKi8NCj4gDQo+IE5vIG5lZWQgZm9yIHRoaXMgY29tbWVudA0KDQpUaGlzIGlzIHJl
bW92ZWQgYnkgdGhlIGxhc3QgcGF0Y2guDQoNCj4gDQo+ID4gKwltdGxfZGRpX2dldF9jb25maWco
ZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+ID4gKwlyZXR1cm47DQo+IA0KPiBTYW1lIHF1ZXN0aW9u
ICB3aHkgdGhlIGVhcmx5IHJldHVybiA/DQoNClRoaXMgaXMgYWdhaW4gZm9yIGJpc2VjdGFibGl0
eSBvZiB0aGUgcGF0Y2ggc2VyaWVzLg0KDQo+IA0KPiA+ICsNCj4gPiArCWlmIChpbnRlbF90Y19w
b3J0X2luX3RidF9hbHRfbW9kZShlbmNfdG9fZGlnX3BvcnQoZW5jb2RlcikpKQ0KPiA+ICsJCW10
bF9kZGlfY3gwX2dldF9jb25maWcoZW5jb2RlciwgY3J0Y19zdGF0ZSwNCj4gPiBJQ0xfUE9SVF9E
UExMX0RFRkFVTFQsDQo+ID4gKwkJCQkgICAgICAgRFBMTF9JRF9JQ0xfVEJUUExMKTsNCj4gPiAr
CWVsc2UNCj4gPiArCQltdGxfZGRpX2N4MF9nZXRfY29uZmlnKGVuY29kZXIsIGNydGNfc3RhdGUs
DQo+ID4gSUNMX1BPUlRfRFBMTF9NR19QSFksDQo+ID4gKwkJCQkgICAgICAgbXRsX3BvcnRfdG9f
cGxsX2lkKGRpc3BsYXksIGVuY29kZXItDQo+ID4gPnBvcnQpKTsgfQ0KPiANCj4gWW91IGNhbiBo
YXZlIHRoZSBwbGwgaWQgYXMgaXRzIG9uZSB2YXJpYWJsZSBJbiBmYWN0IHlvdSBjYW4gY2FsbCBt
dGxfZGRpX2N4MF9nZXRfY29uZmlnIGp1c3Qgb25jZSBpZiB5b3UgaGF2ZSBib3RoIHBvcnQgYW5k
IHBsbCBpZA0KPiB2YXJpYWJsZXMgYXNzaWduZWQgQWZ0ZXIgY2hlY2tpbmcgaWYgaW50ZWxfdGNf
cG9ydF9pbl90YnRfYWx0X21vZGUNCg0KVGhpcyBjb3VsZCBiZSB3cml0dGVuIHRoYXQgd2F5IHdl
IHNldCB0aGVzZSBwbGwgYW5kIHBvcnQgaWQncyBhcyB2YXJpYWJsZXMgYWZ0ZXIgY2hlY2tpbmcg
aWYgaW50ZWxfdGNfcG9ydF9pbl90YnRfYWx0X21vZGUoKS4gIEhvd2V2ZXIsIHRvIG1lIHRoaXMg
Y2hhbmdlIHdvdWxkbid0IGltcHJvdmUgY29kZSByZWFkYWJpbGl0eSBidXQgc2ltcGx5IHdvdWxk
IGJlIHdyaXR0ZW4gZGlmZmVyZW50bHkuDQoNClRoYW5rcywNCk1pa2ENCg0KPiANCj4gUmVnYXJk
cywNCj4gU3VyYWogS2FuZHBhbA0KPiANCj4gPiArDQo+ID4gIHN0YXRpYyB2b2lkIGRnMl9kZGlf
Z2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgCQkJCXN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgeyBAQCAtDQo+ID4gNDMxMCwxMSArNDM4
MSw2IEBAIHN0YXRpYyB2b2lkIGljbF9kZGlfY29tYm9fZ2V0X2NvbmZpZyhzdHJ1Y3QNCj4gPiBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAJaW50ZWxfZGRpX2dldF9jb25maWcoZW5jb2Rl
ciwgY3J0Y19zdGF0ZSk7ICB9DQo+ID4NCj4gPiAtc3RhdGljIGJvb2wgaWNsX2RkaV90Y19wbGxf
aXNfdGJ0KGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsICpwbGwpIC17DQo+ID4gLQlyZXR1cm4gcGxs
LT5pbmZvLT5pZCA9PSBEUExMX0lEX0lDTF9UQlRQTEw7DQo+ID4gLX0NCj4gPiAtDQo+ID4gIHN0
YXRpYyBlbnVtIGljbF9wb3J0X2RwbGxfaWQNCj4gPiAgaWNsX2RkaV90Y19wb3J0X3BsbF90eXBl
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAJCQkgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIEBAIC01MjYwLDcNCj4gPiArNTMyNiwxMCBAQCB2
b2lkIGludGVsX2RkaV9pbml0KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+ICAJ
CWVuY29kZXItPmVuYWJsZV9jbG9jayA9IGludGVsX210bF9wbGxfZW5hYmxlX2Nsb2NrOw0KPiA+
ICAJCWVuY29kZXItPmRpc2FibGVfY2xvY2sgPSBpbnRlbF9tdGxfcGxsX2Rpc2FibGVfY2xvY2s7
DQo+ID4gIAkJZW5jb2Rlci0+cG9ydF9wbGxfdHlwZSA9IGludGVsX210bF9wb3J0X3BsbF90eXBl
Ow0KPiA+IC0JCWVuY29kZXItPmdldF9jb25maWcgPSBtdGxfZGRpX2dldF9jb25maWc7DQo+ID4g
KwkJaWYgKGludGVsX2VuY29kZXJfaXNfdGMoZW5jb2RlcikpDQo+ID4gKwkJCWVuY29kZXItPmdl
dF9jb25maWcgPSBtdGxfZGRpX3RjX3BoeV9nZXRfY29uZmlnOw0KPiA+ICsJCWVsc2UNCj4gPiAr
CQkJZW5jb2Rlci0+Z2V0X2NvbmZpZyA9IG10bF9kZGlfbm9uX3RjX3BoeV9nZXRfY29uZmlnOw0K
PiA+ICAJfSBlbHNlIGlmIChkaXNwbGF5LT5wbGF0Zm9ybS5kZzIpIHsNCj4gPiAgCQllbmNvZGVy
LT5lbmFibGVfY2xvY2sgPSBpbnRlbF9tcGxsYl9lbmFibGU7DQo+ID4gIAkJZW5jb2Rlci0+ZGlz
YWJsZV9jbG9jayA9IGludGVsX21wbGxiX2Rpc2FibGU7DQo+ID4gLS0NCj4gPiAyLjM0LjENCg0K
