Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E119D43EC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 23:30:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 115A610E19E;
	Wed, 20 Nov 2024 22:30:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BV9RY+Do";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3062510E114;
 Wed, 20 Nov 2024 22:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732141811; x=1763677811;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=43hP7FAzao7PTlqN7t/qb9P02jrkdPg0RNKI6GNVHHc=;
 b=BV9RY+DoYEupemJ6/KFVVlrtGNe9mLEHtg67oR85F82f8cjlwemCdSGa
 f/WwE+/IEFl4WweIfk1zhZC3OSVAdgC8zn3PaFo+uNFmWxFduATe9/s2a
 3OsKGMi/wQtnfQiameiAGlGfKqFFGuJ5Kjr3r6FwJKnvP09bQpiprRIOt
 6cCjBHObN/tKWWjlmyQnDsya1XYr/F3r2LOezSZW/mf3+rEgMEiTg9Czy
 ivQr6pyYpEXDIfdikDQJqYM9XgxBYYQImZC/2muU6ZbEUDEG7FPfnasoQ
 xUoeieAnclzdd3yOVDcp93cAmpyJV3mK18H6kyYmknnuZ0zt4+oDnuP3U Q==;
X-CSE-ConnectionGUID: dQIZXQ8PT9mWfsoQ+IBCHA==
X-CSE-MsgGUID: Fz9BmYlnSsCOGEh/28i1/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="43611139"
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="43611139"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 14:30:11 -0800
X-CSE-ConnectionGUID: oyHjyhECRCGjFiI7qt5yFg==
X-CSE-MsgGUID: 2qz5jKi6RDWDiMTRhsNQrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="90451747"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 14:30:10 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 14:30:09 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 14:30:09 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 14:30:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t9QCYBil6C5jNKzhUXLf1oReCHx6tH1pXPbX6Cr7svPAK1CSWIm0aBmHgpIwKGX5B55MPRA+1uh0D+iGqY2gYLRUwEZULaSz6X5ykGxK/cFuUEflBmnqLqsERu25FRABQzXCXzFDAK8pq+GcbSUSb3lubCrE8+TnaDnanbHWsG4ut0SsmGkSfGuQF9GPBouVPPfnxpWGD9+J81P6QxIVSULvq2PYRnCfLhV/6UReZ1RCFqT568ARwPMqJJVCoSi3QI/fdcVbWzNMTTLWM53LV+3OZaTmkPnq9NGk0iiR3+G5YSacDzDpFyeVDZdHYvPo6IDgx7UUG+gkvI+wkuh29A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=43hP7FAzao7PTlqN7t/qb9P02jrkdPg0RNKI6GNVHHc=;
 b=iA9RhlPiSa48bpJ1SgaUl+yz94GCdkdiAopZ8jkoJKuT9zWOb1B6ICKiO7dUTIZvBKppP91TTaK1ryGMrLMa/UpLdNhkPplTh514VTcahfqtoaNBj7uYHFkGQMNfoMloUMM1QhWpVCXMK4QoksZlPYgwMKgrmEgIwSqf6xsD/o1b86oWU/aCtThDPs2LGq7rU02HlQp9xoG8eIuc76EYuxJg8glRE5WZ3kGaTWVCO610oEnpkvYao5BSBfUzC5Iw3BoYdFfEmwX8ktjxOKv0aPDV3Vvvqn6U87cuQKhRSGu+PlNP4++ju+qwL1OcDZDA7m6ojVLkDpjT9zVOn9jRkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH7PR11MB6833.namprd11.prod.outlook.com (2603:10b6:510:1ec::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.20; Wed, 20 Nov
 2024 22:30:06 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 22:30:06 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH 8/8] drm/i915/debugfs: add dbuf alloc status as part of
 i915_ddb_info
Thread-Topic: [PATCH 8/8] drm/i915/debugfs: add dbuf alloc status as part of
 i915_ddb_info
Thread-Index: AQHbL1KvJ+3OFj8di0ykQ6M9AZ/Zj7Kq3O6AgBX76QA=
Date: Wed, 20 Nov 2024 22:30:06 +0000
Message-ID: <9b098d16eea5da3fb561964953260e929dd77608.camel@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
 <20241105071600.235338-9-vinod.govindapillai@intel.com>
 <Zyvx49k6xg6vA83T@intel.com>
In-Reply-To: <Zyvx49k6xg6vA83T@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH7PR11MB6833:EE_
x-ms-office365-filtering-correlation-id: 0a228e77-a211-4c63-c313-08dd09b2e253
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aFhyRUMwWkttSUtVQ0ZXRGJ0TklBcytVZ1Nub1NhMHRpSFc0aVpLNVJuYWI4?=
 =?utf-8?B?SytWb204R281M3NONmVBc1B4cUpJQUxtQWZELzA1SFZaOHJaTFNCL3MyZjJK?=
 =?utf-8?B?cndaTUFBSktoL3hUandxUUpjSm9FbU9qMzYyUHplR2FkRjFGUnIxbzdCM1V6?=
 =?utf-8?B?VkVyYk1qL2s2RUpwWCtyNDFrSXQ5Y1c4VkNyWnRWTEZUSlZEMzVLZlptZG4v?=
 =?utf-8?B?NzVwUUxMRENFNnJNK1NzVEh6TlNjV0FiNFNBaDcxdW5LNHM4RDNJTldzcHdj?=
 =?utf-8?B?YXV5VE9vMGozemtlbWlDOEZnVStMOUU4RGp6ZTJEb2U2RHMyNlRReEhuS3gw?=
 =?utf-8?B?eDhuRTB2d1lJMUVVR1hrbE1McFdKQmhsbzJXZmlMY3E2UFVUZ2JZbWlQRkI4?=
 =?utf-8?B?RnlYb2p4QjdoTUpETFcwVHUvWkl4S1U2ZEhtQWswZ3k0SDYrYnI3VkErMHZt?=
 =?utf-8?B?SVBtZldiVmwvZ1BPb09YM0l2UUtqUHYvenFTOU8xb25nSFU2VWlKdDJ4RDdl?=
 =?utf-8?B?S1MzY2h5SFdEYzE5dDdNRTY4VEFIemp3K21vdHNjVXc1MVYySnJvemtRNjNs?=
 =?utf-8?B?MVpGdmt5MEtjeEdBY2thalFCaTJ1aXRpakV1Vlhvd0QwODBqcUxKcjhNWkJq?=
 =?utf-8?B?OEdyanc1WGV5OGRmLy9IVCsxR0pYN0IvSmtMa000MUowOHppaFo4Z2pTQXVx?=
 =?utf-8?B?Mm1OS2o1WklIT2FMRVFtZFRVSTBJc3dWR2gwMWhQQVpaT0ttb2pia2U3R2tN?=
 =?utf-8?B?dWFFMHlqNVJZc1I3bEIzUnVHWnAyclh6SktHZXJudUwwaGM1S2g1RUdzLytu?=
 =?utf-8?B?K1Z2Z1VvREtOL21IZGdmOGZCemh5N1RkVEJ5WWRqWlBJQzNFZWlKOGMraEE3?=
 =?utf-8?B?VWtoRDFrOUx0ZDJQbXpTYlUwS05aS0dJMFNIcWpBUDdpR1l1UG45Mis5RFNQ?=
 =?utf-8?B?WElHYVgwY3AyNW11WERFb0hNNmpZc0tCWVd0eCtRWjF3cWVMSWk5YTZNZjVj?=
 =?utf-8?B?S25rSXpERzV3dTBOd2hOWWpYNlZ3cHpkdlJhdno0NXgzSUIrK0h4UG11ZUNx?=
 =?utf-8?B?dXRPK0pQeGtDOW5WN2hXSEpaMU9QQXJtb1dxY2RPcDRWRzdrWWtML2t5MW5W?=
 =?utf-8?B?K0p6Zm1rNy8raVljcU1aMU9IS2Ryd1hpZHNMMWFzRUErV2VCTit5TGZ5dFIw?=
 =?utf-8?B?eWtaNllmb204VFhvR0MzbG40QTlyaVRSY1ZDVUFUQzF5eHlzZFpRQ3B1VzZ0?=
 =?utf-8?B?YzdRcGpIbWtmU09VVVJMM2pweURldG1qcWZoYkkxT1RQZkN2cXVPbHBiOTNJ?=
 =?utf-8?B?SlY4N296aXg0K1Yrcjk4eXhoOUdVeUo0aHZnRnd5RWtTcWQ4QWNIR2xwVGdX?=
 =?utf-8?B?UXZWUEkrdFRzZC96TmFCclFqUWRGK29FeGlwa1NiUHdod3I1dTRlM1dWdHY1?=
 =?utf-8?B?V0VIZVU1V2JQY05FSGpOQTA2TzcydEdlQlNrZE41Y0UzMDNMMldicmpQblRY?=
 =?utf-8?B?U2d0WjBrWndNbHU2MEd6MHpDWVlRNVJxZ3RtaTN0Qit6YnlaMUNqNytvUGk4?=
 =?utf-8?B?ZlJTUXJ3NENwZFdqcEF4Ty94VXU3MnRkR1ppbUtXSWpubmRQOFIrTnJXSGZo?=
 =?utf-8?B?bWZLUFk4TFMzejNydjNKc0pBM1BFcDUwb0MwdHEyTE5lZ3RlU1pvM1RJRlYv?=
 =?utf-8?B?Qk5Za3FtV2Z5YnUrSm9VTmFDcmdiQ3VlTEpJVUtXd3lCMnJ3cGxOc25kbEJr?=
 =?utf-8?B?Qk1zdk03Q0ZlOUFBRHFOWUwyRzkrRjFhRitWU1Z0KzdrcHdmY2RoaytSSmRY?=
 =?utf-8?Q?pHjxCZ7MCXBMbT3rR6kwKBAQgRQw9NtiBrgjA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzJaclMvbnM4dUxWRjQzRWlXUkY2ZzBjTlllVkRMN3ljSXkwRzluc29kaElr?=
 =?utf-8?B?Uk44UHBXaEF3bXQvV3pvTFNmZlZmMWMzSGJEdUZvSGRMQTR5Q2oxcGZzek44?=
 =?utf-8?B?Z2hKSG92UXp3TWs0UXN2ZzBtMWVxSTVyWk16aEd5b0tvS1U4Mmg5RGd3M1hQ?=
 =?utf-8?B?TzRXMzRWR3R4MUM2UmNUK1ZBbWNhdkxGc2FEMlRiVFRhRE83cEl6cVVwVGlI?=
 =?utf-8?B?N1B5bnVxTUEwUkkzZVZNcVN0a3JKdVN4aXRmZ2F2ajNUd09WaWljMDRWcjFU?=
 =?utf-8?B?azFWNkJIZVNSYmI1ZHUxRmRhSHNCNHoybWNoSys0dlVZOVcrWHpGWmFLUkZ2?=
 =?utf-8?B?K1RXeHZ6aG5ieVF1cEJkSW9Bb1lGajU3RTlMcDQrdndSQXd1Q2VKSng2K0M4?=
 =?utf-8?B?Znc2V3JvbUJKMTlHRmdZeGVrOG9zRXJ3bGhlekhBN0d3TEhvTlUvbmwvc0Ja?=
 =?utf-8?B?WGVGWkdyRlVod0NjSFNVZEcvcVVDMjFkSE5LVGlhalJ2WFkzNCsyMVVibUlo?=
 =?utf-8?B?Zm9wb1ZnaCttejZZS1NWam1PdWtmZEJsZ1JQaUFKOUFpSGoyVjdmRzdtQ0gx?=
 =?utf-8?B?U2MvdVNUQU11YTVzdzIxV2Q4VXB0cU5LOXJvKzJDc0k0VVpIZHFuYXByd0RF?=
 =?utf-8?B?SlRtVDRHbVl2dGg2NUFURWtMOEFvNjMzanFvclBBcUZXWGRqdnFIOUYwdFov?=
 =?utf-8?B?cTV2QVVWOU0yRXBrYWxRQkx1czNrRCszcnRYdW5CWjJ3MXJEc2pPVXhhV25G?=
 =?utf-8?B?WFVyb214YWN0Z1VoNXVmdzBJKzJrdzhQUWszRUVEaVIyVUxxSi91WHNyWEVx?=
 =?utf-8?B?d3l6eHk4anNCQzBaNm1yUEpyZjlUSnliYkNWTWRpU09XdHBETHRjM1lGT0Ny?=
 =?utf-8?B?VGJXMkoxTzIveGE0NjZEdkNTekFqcFozTHB3MG5BRFkvNk40Vmg1dTVwQ0xp?=
 =?utf-8?B?R3pLT01GeDF2bjdGRUJSVldmclpxVEhmTHhRTkpUSEJRVEU2TmpSRkIyVVIy?=
 =?utf-8?B?dFE3K3l3VVNCOHdrY3pzSmlMWTVtREpCOUNOM01SK29SRkZNSVhCcnMrVjQw?=
 =?utf-8?B?MEtYMnNZSi9tdjRuZDV6L1ZYdWRTWnowOTJyblhCR3BlWTJ3bHBLQXJRT0Ro?=
 =?utf-8?B?akFkTjZ4TnBpVlp2VllCOFFTUkpib3p6Lyt2R3BhdXlVYldSMmNqRnVSSFFx?=
 =?utf-8?B?YWppRW01RXBxMVRHZ1M2ems1S0NKOWUwc2ZpSTU2TWlSR0pUUzVzcW1aeFJt?=
 =?utf-8?B?K010bStGc01wc1ZxbmloTHpiRW9ldFdYelVSVkE4Znh2ZE5iaUJMeWJLVGxh?=
 =?utf-8?B?UW12RlUvNkJ4YU5Nc0ZBOHlsQldvZDNpbGd1bEdLL0laMGlKUzN4Y1NqNW9l?=
 =?utf-8?B?aFp6R3RTWG5EWDhFLzVLTWR6ODZkRGZ5UWtUbmFVdU1NVXBmdjFRR1ZWLzVE?=
 =?utf-8?B?THdSTzB0emZDR3lHU2YxQXFQbTZyWG1YemF4QkVHNDdROTUvaHZLdTNBTHRh?=
 =?utf-8?B?b2VMWDUyYW5yM0R4ZFppeWpTbVZIalJuV3RscVBob0V2QVdnUVZBTGdkcUJO?=
 =?utf-8?B?S29UeGZqenFwdzBrd1l2Z3FaY3lqakdBYzlIaEFKcGt1dVJUbVBscDdzcTRC?=
 =?utf-8?B?RHQ1M21jYW51U09KVG10MDczc2J0Qk12UDdtRkxzM3Q3eFlmWXZVS3pZYWly?=
 =?utf-8?B?K3JsbkJsOExqdVo1RksxOHhNYWxYZ1YzSGhUaXdqYXhvbzd6aDZWVDFPUFhZ?=
 =?utf-8?B?WFMweURBWitsTzhnZk1BaVpZU0hLUWhYQTVVWUY4UCtkRlNIU0tTSWVLZTE2?=
 =?utf-8?B?cDFqK09TUzh0Zis0ZExXSXpiWHlyVXgrczRjMFdwaEJWOC9WRjJZbEZoZTBw?=
 =?utf-8?B?b0U1eGRWUVRKVnBHNkJRL0V2MEdJRWJoSEFoaEgvUWZwSEJBQXRFUVErRGx2?=
 =?utf-8?B?Y2NvK2ZHU2tjUUxuM3NGZkFsWVEzVndGU1ZMTGxzcFhQeXVGL3M1N1liaXR1?=
 =?utf-8?B?eWM3R3g4dGlBeTBEcC90WkJrWWVKOUt1LzZUditGZlYvTmpKZDV5Q3V5cTJv?=
 =?utf-8?B?bTQ4Z1h2Y0N5SjJSL01uMm5Nc1NtRkloMWQwcHhFejAwZ0hvc3EvcmR5YURK?=
 =?utf-8?B?a0tNQWVxTFd2bTl6Q3V3QWZ1NnJPUXhES0F4TXpZOXI0QVQweTJkcGErV0tL?=
 =?utf-8?Q?+I7OYRXPEsiHGHbD0cKbmHI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D97C8BD17AC03C409C77BCF044D0DC6D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a228e77-a211-4c63-c313-08dd09b2e253
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2024 22:30:06.2388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bRMOq1jyf0haB2ivTt++88w0DWqKjMJKcxFytLllQKroFN90KCwAIQGAqxoS7urbj/5M9RLMrSC1ld7ZcITR8q+e4ou4D/GjT/V6IXp2whg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6833
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

T24gVGh1LCAyMDI0LTExLTA3IGF0IDAwOjQ2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVHVlLCBOb3YgMDUsIDIwMjQgYXQgMDk6MTY6MDBBTSArMDIwMCwgVmlub2QgR292aW5k
YXBpbGxhaSB3cm90ZToKPiA+ID4gRnJvbSB4ZTMgb253YXJkcywgdGhlcmUgaXMgYSBwcm92aXNp
b24gdG8gZGVmaW5lIGFuZAo+ID4gdXNlIG1pbiBkZGIgYW5kIGludGVyaW0gZGRiIGFsbG9jYXRp
b25zIGZvciBhc3luYyBmbGlwCj4gPiB1c2UgY2FzZS4gQWRkIHRoZSBkYnVmIGFsbG9jYXRpb24g
c3RhdHVzIGFzIHBhcnQgb2YKPiA+IGk5MTVfZGRiX2luZm8gYXMgd2VsbCB0byBzaG93IGlmIG1p
biBvciBpbnRlcmltIGRkYgo+ID4gaXMgYmVpbmcgdXNlZC4KPiA+IAo+ID4gQnNwZWM6IDcyMDUz
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGls
bGFpQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RlYnVnZnMuY8KgIHwgMjMgKysrKysrKysrKysrKysrKy0tLQo+ID4gwqAuLi4vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmVfcmVncy5owqDCoCB8wqAgMSArCj4gPiDCoDIg
ZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9k
ZWJ1Z2ZzLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X2RlYnVnZnMuYwo+ID4gaW5kZXggMTFhZmY0ODVkOGZhLi5iY2U0YTFhYjA1YzAgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdm
cy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
ZGVidWdmcy5jCj4gPiBAQCAtMzksNiArMzksNyBAQAo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfcHBz
LmgiCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9wc3IuaCIKPiA+IMKgI2luY2x1ZGUgImludGVsX3Bz
cl9yZWdzLmgiCj4gPiArI2luY2x1ZGUgInNrbF91bml2ZXJzYWxfcGxhbmVfcmVncy5oIgo+ID4g
wqAjaW5jbHVkZSAiaW50ZWxfdmRzYy5oIgo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfd20uaCIKPiA+
IMKgCj4gPiBAQCAtNjg4LDkgKzY4OSwyNCBAQCBzdGF0aWMgaW50IGk5MTVfc2hhcmVkX2RwbGxz
X2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCj4gPiDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIDA7Cj4gPiDCoH0KPiA+IMKgCj4gPiArc3RhdGljIHUzMiBkYnVmX2FsbG9jX3N0
YXR1cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSBwaXBlIHBpcGUsIGVu
dW0gcGxhbmVfaWQgcGxhbmVfaWQpCj4gPiArewo+ID4gK8KgwqDCoMKgwqDCoMKgdTMyIHZhbCA9
IDA7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0g
MzApIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1MzIgcmVnID0gaW50ZWxf
ZGVfcmVhZChkaXNwbGF5LAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFBMQU5FX01JTl9CVUZf
Q0ZHKHBpcGUsIHBsYW5lX2lkKSk7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
dmFsID0gUkVHX0ZJRUxEX0dFVChQTEFORV9EQlVGX0FMTE9DX1NUQVRVU19NQVNLLCByZWcpOwo+
ID4gK8KgwqDCoMKgwqDCoMKgfQo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHZhbDsK
PiA+ICt9Cj4gPiArCj4gPiDCoHN0YXRpYyBpbnQgaTkxNV9kZGJfaW5mbyhzdHJ1Y3Qgc2VxX2Zp
bGUgKm0sIHZvaWQgKnVudXNlZCkKPiA+IMKgewo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRlKTsKPiA+
ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gJmRldl9wcml2
LT5kaXNwbGF5Owo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBza2xfZGRiX2VudHJ5ICplbnRy
eTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKPiA+IMKgCj4g
PiBAQCAtNjk5LDcgKzcxNSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kZGJfaW5mbyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgZHJtX21v
ZGVzZXRfbG9ja19hbGwoJmRldl9wcml2LT5kcm0pOwo+ID4gwqAKPiA+IC3CoMKgwqDCoMKgwqDC
oHNlcV9wcmludGYobSwgIiUtMTVzJThzJThzJThzXG4iLCAiIiwgIlN0YXJ0IiwgIkVuZCIsICJT
aXplIik7Cj4gPiArwqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICIlLTE1cyU4cyU4cyU4cyUx
NnNcbiIsICIiLCAiU3RhcnQiLCAiRW5kIiwgIlNpemUiLCAiQWxsb2MgU3RhdHVzIik7Cj4gCj4g
VGhpcyBndXkgaXMgbWVhbnQgb3QganVzdCBwcmludCB0aGUgc29mdHdhcmUgc3RhdGUuIFRoZSBo
YXJkd2FyZSBtaWdodAo+IG5vdCBldmVuIGJlIGF3YWtlIGhlcmUuIFNvIHRoaXMgZG9lc24ndCBi
ZWxvbmcgaGVyZS4gSXQgd291bGQgYmUgYmV0dGVyCj4gdG8gYWRkIGl0IHRvIHRoZSBpbnRlbF93
YXRlcm1hcmsgdG9vbCBpbnN0ZWFkLgoKT2theS4gSSB3YXMgdXNpbmcgdGhpcyB0byB2ZXJpZnkg
dGhpcyBmZWF0dXJlLiBXaXRoIGFzeW5jIGZsaXAgSUdUIHRlc3QgY2FzZXMsIEkgY2FuIGNoZWNr
IHRoaXMKZGRiX2luZm8gaW4gYSBsb29wIHRvIHNlZSBpZiB0aGlzIGRidWYgYWxsb2NhdGlvbiBz
dGF0dXMgaXMgYmVpbmcgY2hhbmdlZC4KClNvIGNvdWxkIHRoZXJlIGJlIGFueSB1c2UgaWYgdGhp
cyBiZSBwYXJ0IG9mIGEgbmV3IGRlYnVnZnMgZW50cnk/Cgo+IAo+ID4gwqAKPiA+IMKgwqDCoMKg
wqDCoMKgwqBmb3JfZWFjaF9pbnRlbF9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBjcnRjKSB7Cj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlID0KPiA+IEBAIC03MTEsOSArNzI3LDEwIEBAIHN0YXRpYyBpbnQgaTkxNV9kZGJf
aW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKPiA+IMKgCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX3BsYW5lX2lkX29uX2NydGMoY3J0Yywg
cGxhbmVfaWQpIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGVudHJ5ID0gJmNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJbcGxhbmVfaWRdOwo+
ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZXFfcHJp
bnRmKG0sICLCoCBQbGFuZSUtOGQlOHUlOHUlOHVcbiIsIHBsYW5lX2lkICsgMSwKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VxX3ByaW50ZihtLCAi
wqAgUGxhbmUlLThkJTh1JTh1JTh1JTh1XG4iLCBwbGFuZV9pZCArIDEsCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBlbnRyeS0+c3RhcnQsIGVudHJ5LT5lbmQsCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNrbF9kZGJfZW50cnlf
c2l6ZShlbnRyeSkpOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBza2xfZGRiX2VudHJ5X3NpemUoZW50cnkpLAo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBkYnVmX2FsbG9jX3N0YXR1cyhkaXNwbGF5LCBwaXBlLCBwbGFuZV9pZCkp
Owo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiDCoAo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlbnRyeSA9ICZjcnRjX3N0YXRlLT53bS5za2wucGxh
bmVfZGRiW1BMQU5FX0NVUlNPUl07Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lX3JlZ3MuaAo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmVfcmVncy5oCj4gPiBpbmRleCA2NWE1
NDgyZmFlNjAuLjUzNTUwMzU2NDMwZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZV9yZWdzLmgKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZV9yZWdzLmgKPiA+IEBAIC0z
OTAsNiArMzkwLDcgQEAKPiA+IMKgCj4gPiDCoCNkZWZpbmUgUExBTkVfQVVUT19NSU5fREJVRl9F
TsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfQklUKDMxKQo+ID4gwqAjZGVm
aW5lIFBMQU5FX01JTl9EREJfQkxPQ0tTX01BU0vCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
UkVHX0dFTk1BU0soMjcsIDE2KQo+ID4gKyNkZWZpbmUgUExBTkVfREJVRl9BTExPQ19TVEFUVVNf
TUFTS8KgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfR0VOTUFTSygxNSwgMTQpCj4gCj4gRG8gdGhl
c2UgYml0cyBhY3R1YWxseSBtZWFuIHNvbWV0aGluZz8KVGhpcyBnaXZlcyB0aGUgZGJ1ZiBhbGxv
Y2F0aW9uIHN0YXR1cy4gV2hlbmV2ZXIgSFcgdXNlcyB0aGUgbWluX2RkYiBjb25maWd1cmF0aW9u
IHRoaXMgYml0IGlzCnVwZGF0ZWQgYW5kIEkgaGFkIHZlcmlmaWVkIHRoaXMuCgpCUgpWaW5vZAo+
IAo+ID4gwqAjZGVmaW5lIFBMQU5FX0lOVEVSSU1fRERCX0JMT0NLU19NQVNLwqDCoMKgwqDCoMKg
wqDCoMKgwqBSRUdfR0VOTUFTSygxMSwgMCkKPiA+IMKgCj4gPiDCoC8qIHRnbCsgKi8KPiA+IC0t
IAo+ID4gMi4zNC4xCj4gCgo=
