Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DFDCE8AC9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 05:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E5A10E354;
	Tue, 30 Dec 2025 04:14:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JVBSqp0c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B9E510E354;
 Tue, 30 Dec 2025 04:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767068047; x=1798604047;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xLLPw/70kf8c0Cd8TgMFf/CfNAVY2Q3eITIFhDCpN3A=;
 b=JVBSqp0cqArlDQyuXzN+GhJP14gGvL3ZTWJK4YjnjCU4qD4MlAWXZs8g
 DcZxzZyjLL1lWrAg8xqE6VKZdUKJ0OWDSG53nogNctI1Bwy22cJZLf3YB
 FMTKkTTkniHC2y8cJfQMaIXaZKq+oc4Y0pUxjyO7HWpwQ9u5+QGHOEwXL
 mtpZ/LMFn/DNU6S39LPf1AQfzYVfBWxYHJDkNVrNT62d4ii+hW6YJHBsR
 je0zuGInv7S6NjmrJCS+8Rj+d+EGea5M2O7h0Bz5I15drHyKikbPuRVm5
 eI9sH9jksrA3Z/GyoKfQbbbvj+d2cOGggUKxAAhLwKg11fN03x1aHcZec Q==;
X-CSE-ConnectionGUID: HeTFVrtCRt6J1Xn9PogO/A==
X-CSE-MsgGUID: 9bPK7FaURBmJaVaskT4HFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="68558625"
X-IronPort-AV: E=Sophos;i="6.21,187,1763452800"; d="scan'208";a="68558625"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 20:14:06 -0800
X-CSE-ConnectionGUID: 3ygskFEASXmsxpSc+aZxWQ==
X-CSE-MsgGUID: sEV3KcH/TQy9uLq4nQ415A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,187,1763452800"; d="scan'208";a="202057661"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 20:14:05 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 20:14:05 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 20:14:05 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 20:14:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UTExx/P1Sizvd9z2y0FGNTEsEyk5LTQl5nkMhKv84+R/tSbZKE0i6VlcXdGVuIUA2IfLjmaZHaDCADAciWJaNKhFyvsbqtgtlDUd1WpMnBsR4Pdo0Ht750hyF8qYc5apMpZCDy1Yf8i2SkJDSCQiHbLvTMu2RdKhFNtACf6MAOrKrjiglV17jG5gkiuf6TyIqHSXYMXhVgwU0Rs34vItonouTtpPA/xZmweGmeVay/QFFlNve55XSRagkZR4kID4VsKgJCIMgaaE/cGxmorAHY3yo1SUtW07Tb0LXSPbgr/3r+By0ZaZJsFhTBHPdp9r9pFKSY3fuw4QwTy/0hC9Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xLLPw/70kf8c0Cd8TgMFf/CfNAVY2Q3eITIFhDCpN3A=;
 b=hs3sXwdaUCLRGICsQGsOcNHM4SEKi/0ZRyjkMzflQw2I7PXi+9n0x1hqxaWxljvvDLy6zLx5hdzpe14e8wvjHwU/2Uw/YkktbDJLoq7NVBtklcG7g9Q+7KrZk/7KG/FEfqClhaVUpbgn7Hq+nJ2Zy1jcLu5IY+qYsgcdfQ9N89asX3b3zAYEv2W4ChDbLBNt/SHJ5JOIDxE/Ib6YjjxdkFYqSPrcdgR9GVvO315tRDAY/3r6FfPwbwtFAWya9xL+N044bIsEpRU0416Qr8Zc/Dqjr625Sg/xHYaQbCsoGU8B5cdq5AJ0b4wZdolP09DhrRqK6y/O9Sswltg9GEnPhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB7357.namprd11.prod.outlook.com
 (2603:10b6:8:136::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Tue, 30 Dec
 2025 04:13:58 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9456.013; Tue, 30 Dec 2025
 04:13:58 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH] drm/i915/quirks: Fix device id for
 QUIRK_EDP_LIMIT_RATE_HBR2 entry
Thread-Topic: [PATCH] drm/i915/quirks: Fix device id for
 QUIRK_EDP_LIMIT_RATE_HBR2 entry
Thread-Index: AQHcdiDuALIxYIy2zUa951zGDz5Rl7U5mOFg
Date: Tue, 30 Dec 2025 04:13:57 +0000
Message-ID: <DM3PPF208195D8DEB3CBE2F322B3D1A4436E3BCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251226043359.2553-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251226043359.2553-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB7357:EE_
x-ms-office365-filtering-correlation-id: 60e9bf3f-03e9-4e99-1cbd-08de4759dab9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?SzdFaW52VldyVGNtaFk1SDYyZFMxaWJpQlVkMVl4QTN5dm4yamdUYm5FemY4?=
 =?utf-8?B?YVhaNHAwV0MwQUpPbWRoQ2pZejZmUklTODVid3JEdHljQXZCMDhXSzVzWmdx?=
 =?utf-8?B?Z2FpSWNVT2lvZGdZVXA5Sjg4NXJvZ2JjV2txYUE2ei9sSndFRHRHM0U3SGww?=
 =?utf-8?B?SUovckdJMURPZ0xRYlRZZHloMWtGajFwemw1SWI5RWM0RjJzaEYzRk44dmxh?=
 =?utf-8?B?MEpaNDNhbDBVc1oxYTJXWlVQSTJCbTJ0M1d1UWp0TWpRZGtpWFFrMWxtZ05l?=
 =?utf-8?B?cldaaVhtZm9DSTdjbVdrMVBxdXNXK0pKc1picndGYjhQcWR5czloRWlRNXpL?=
 =?utf-8?B?T0lEemtSZUJERVoyQTRjNFRiNEhXeFh0c042ZEFoRHkwbkxYdlE0K2tjbno3?=
 =?utf-8?B?MXZhMVcxa1d0UHZUeTFZbnA1VVJ1cVI3WWhISWdWR3J2NVNJSkt5UHA2d3o2?=
 =?utf-8?B?a0lueFdVUytKamh6UVhqcHBHRXdnWHpsNTdCT1gxK1ZDdTVGOFAzbGxGSTlm?=
 =?utf-8?B?UEd0WU5ZQVZWYzlkRS9wMmRWN25ZVVBmcU9pL3g1VnU5WVE1cTdtaVVuWFVW?=
 =?utf-8?B?VUQvaUgvaHk4OVprcjcwaHYxVVNkejU1cVFUVVI1RFc1Unl1Zi9oS0JtZWw2?=
 =?utf-8?B?NjZaVzllNlZWeTFJMFBDZnA4QStwejZLTVFwbXdtMjFHQmZPV3lNbFI5dHhR?=
 =?utf-8?B?ZmtucVNDKzBCQy9CVm4zOHFUdmJEZE9SYUxtcDhTa0E5WnU0b0N6QmxWdDFp?=
 =?utf-8?B?dVBsbUFpTm5WZUtteVJ3U0hWTDVZNktCZ2tmU2tybGd1Tk8venQxMHcxZUdO?=
 =?utf-8?B?cHVTazJnWm5YTGprVEhNdEs2R1FwQWpHUnVTUGlWMHNvSG9PV1p5L2lFOVpy?=
 =?utf-8?B?QWtsK3ExTENCYXdwaUZLenVWcldYbkR1Nyt1M1lIbkZ3eUZaZ3JzOSt1V0JD?=
 =?utf-8?B?WElZa2kxbEpXN2d0UWUzVHVaQjNFUHpXZEhoRVJyK1Y5STRsemJSYmY1Wmcr?=
 =?utf-8?B?QndJdkMrQmZRbkJaSFVmQnVmUDR0bGNiM2RscWl5NzJtMk9ETjZxVGFzZVpk?=
 =?utf-8?B?aERQckFOQnVhT2tsZ2Y1UWVOM2hhMlZRN3ROKy91dTd0UFd6NUlVaS8zamRs?=
 =?utf-8?B?NEpkMmhGWUpvVlR0cXhZU01Hb2dJWmdZTWc5YldId2ZWdWtoZHZ1TGFaa3Y2?=
 =?utf-8?B?ZjhpalJRL3p6eUZ5T2hwVGpLQWNHQmhiK25Ed29HZW4vdG5uZFZNeXlVbzRt?=
 =?utf-8?B?SmpUQ0xnOE5lcGNEeEpjYzlqa1YyQ2VvdEZxUVlnZmd2RzhlUVpua1h4S1Av?=
 =?utf-8?B?VnFKOTBNbUVrTWFBWFVlOVZQRit0TWVDbUZuY0tEN0JBUlZaZlR6ejMzUzZp?=
 =?utf-8?B?Wk42SmhhRUxCR1Yyamg5MlFpU0lKOXRWdCtWbEsxVUFidnk4Vy9JY0VhcXF5?=
 =?utf-8?B?U0V6cjNjK2VxczBLVEVyU1N2NmpNYWt3MWZlcWFkVTd2SFVxU05McmxXY0hn?=
 =?utf-8?B?elBTSTBrenZ5MGwyZGU3RS9xYUxockJtT0YyV0ErcnJJK3EweHh5M3pUYkJ6?=
 =?utf-8?B?cmE2clY3cTBPR3VROXFURXJJR0ZSZmYzK0t4dUZHNFBQRnFCWEZtMzU4RVYy?=
 =?utf-8?B?WFRpWVl0ZUM2enlWZnNJbHJ3VUMwWHU5UkNGM3AzUUJZendnMXVYV3Y3S3Q3?=
 =?utf-8?B?YjdQR1N3UG1jNkRVR1IzK05xNVE5ZHUyMk8yMkVUM1dkYVo5Mm5STlliNFRx?=
 =?utf-8?B?NE1kamwyeE1oczlZWXNqdkRsTjVKVWc4UGpKOHBpWFhyWFQ4TGJHZElPY2lr?=
 =?utf-8?B?ZGlQdVNzeFNVaDBHNTFaMEJLSGRSUlZIUnpnanJSQ2pOcnByWCtPS2tWQkIx?=
 =?utf-8?B?R1VZd0s3Z3J2NG9lNXlpRmxiNXQ4SHBpR1hRckNGRUpzeGJ4UGx3cDBkQTRX?=
 =?utf-8?B?eER6VlZpM2xNSXlBczJpcm5UdEVQT1NNYnRTYjdiU2RBajFEMHlhZ0xJZnBU?=
 =?utf-8?B?SWJ1eXBIeHhGcFNvM3EwcVRyekQ2ZnFVTm9Cb1FHQUpRMVVTbkJBL3kvYkNY?=
 =?utf-8?Q?iIydFL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWVtOTJkK3RURStTSWl6d3VRNC9JVjhsS3hwZXBCNFI4RXR6WldWK0VMbC9I?=
 =?utf-8?B?WHM2UWtuRy92QkFyc1dCQ1ZlaHdRYS83MnBsRy9vZW9tdmgrVGhWcXA3bmQ1?=
 =?utf-8?B?eDFlYUdiamhkK1FHMldWbEpWZHd2WDQzV0hVV3J5bWJvZHdXNitqUStiaGNk?=
 =?utf-8?B?N1lOb2lMa0Mva3hSMjFCV21jVEVmV0REd1M4UEVCcXRqZmU2bjVZVUxuc0gv?=
 =?utf-8?B?NFRuZE1yNm05VzNkU3JEa3dDQUtjTzFRVGVNaGc5S0dvaE14akFmSWFpeElQ?=
 =?utf-8?B?MzB3VDYwR1RFMW5qUGZFU1R4eTRqelVWSENXTjRFQmx3cGpuUitjOVpFeGNF?=
 =?utf-8?B?R1Q5YmdDNUZlUHRFcTQ4azBQcXErTExWSzQzWUZ5WkhEd3Y5N2hmNXJ6QkJY?=
 =?utf-8?B?NFBpOHVBVWZDL2t1ek9NSmZhT3lHYmp2d0J3U3Z6OVJLdUdGVk1tWHE0K2ZO?=
 =?utf-8?B?QVlTTXdldWg0VXV4WHNiQXRYMFFkaUR1dXlScVBkcGtyeUJwSDlkcVpqSVVq?=
 =?utf-8?B?QmxxbnhhRWhrMG5tWnpUVEFyQ0FKTENZbFFhS2tDK1pKZGRzR0ZHbVE1UnR5?=
 =?utf-8?B?T3BGck1BWUczL1gxU3Z2ZVJMejRYQm41YmkxMnUyQzFFbUdmQkljcjBJQ3BH?=
 =?utf-8?B?M0c3aExhSWVockh3SzBjNXVWY0swVEVlWkhtQ2tsK0xTM1dTbzlPTTJHa3J6?=
 =?utf-8?B?UVVYeEpTS3I4SmlyVHZzb3llWDE5elpUaE80VGJSMm9wRVZGSldIbGhFWTA5?=
 =?utf-8?B?bHh1aVpPYnZxQ2VDSVRTdTBMUnZYOTFsbG40OFFnRHFTMDJ1cGZrbENlWTJa?=
 =?utf-8?B?eXJJNmxDc1EyZkpCT0R1blBIcC90VnZCeDRsN0xpeW1mU2J3ZjBsRmpqTGdE?=
 =?utf-8?B?Z3JhdUl5Tlord2hjR2QvaXRUSXZkN0VzU0JYNU03K2NDd0VPdDdlVmtaeFlz?=
 =?utf-8?B?bTJ4b2ZLY2xybk45WnVSQzlJb1ZDaGVsRUxYUitlbkxRYUROOElhR2w3b3hK?=
 =?utf-8?B?Y0pUZWlKeDdsVmM5RHMvcE0yWTI0czdpeGdWRnVnV2V4S3lNaXFCSlBqcFZw?=
 =?utf-8?B?aEJVNTJkUXlQeEJjZGlabC9OOWJ0c3QySlc1RFlWZTh1NkNPdEx4YVNrT2Rs?=
 =?utf-8?B?aEE1c0IvS0hQN3c0R0NGdFhEV3FnVDhEVUFjbmhtSXVjTW4wd3VFVVlqZTdC?=
 =?utf-8?B?V2ROazlCT3E4TUlyTWw1eFRaVzFOR1BJV3RjclFvM1NoSDlHSGlabzFjM2c5?=
 =?utf-8?B?K3B4ZVJHWFJyZWRHK29TaVRqbDBrUmY4cmtQTTlBZVJVelFwSEZIcHFvTVJr?=
 =?utf-8?B?RW5JUThhRVFxUndOY2YvUUNBaFpxS0VpcmZHTW1YOHRtd2lDeDlVWEgwSjdM?=
 =?utf-8?B?bnlZUVY4V1p0WWl2QzYvVGVQVEVYRXJDSU5pY2tjL1NuQVVXNS95MHQ2TEt3?=
 =?utf-8?B?V0NzbFEvQkl4OTV4TXZsaFB0MHRrWm5NY3VGalB0Q0NYM01LUEg0RklEVTVW?=
 =?utf-8?B?MmE0dXFOY09LTHBxd1dBSGlxQkJISDBrY1ZoMTZqTGdUYmFaOVlCZTlSU3NU?=
 =?utf-8?B?cmNncmE1RVYxWFJ2bHA2TnJnNE1zZXFjWmpBYXk3cnBrb0Z2YzNtMExIMlJC?=
 =?utf-8?B?VTh1RU91cTlwVWxrRUlVQnlEdUpMWkw4aGlObHJQV1RrQlh4WHdaRk9lK0Nm?=
 =?utf-8?B?a01VamJ6M2h5NW83VEhsbmdoZC8vL0VXemd3YUhLZGNZdGc0b3hBaWY0NFMz?=
 =?utf-8?B?c3V3MTlMS0N6MGg1Ymh6TndETjl1WGxJVi9xNENqVE1hVUxIbmR6d0F4aGpu?=
 =?utf-8?B?UmpCeng4V3ZHelJVTGRyNU1xamVXNkJRdk52emtNRjI2RHN0UmtrTTFPdFZa?=
 =?utf-8?B?VGQ1RUpUUmhlUnVtMENsWUEyYVRNVURML1FONUdhNmxzWVN1MExDVStodU04?=
 =?utf-8?B?VkpCMFNIM2Jsc0tZak1HV3hXVEV2RkdabEgyaldMczFZS3E0RGc4SWdZNGo3?=
 =?utf-8?B?VGw4a3VZRyt2YnJFWmhRc3ZZdmcvRXhRK2w2ZG11N242Qmx2Qm9DWkRXMzVE?=
 =?utf-8?B?eU13a2FSUzRON1FKWVpTcVZ5OWw3aXgzY1JNN2JiZkNGQ1FmQ1hZQlRkWVA2?=
 =?utf-8?B?K0hxV3RjallIb1ZkY0F5dGY4N2Fmdi9CMGNUdW9hSkt4WTVZRmNsNVJrR1dV?=
 =?utf-8?B?MFVOMHZ5UElHdTRZamY2WFVoSi8xTm5PU2R5aUIwSGh0UGNzb1g5S05sQWJO?=
 =?utf-8?B?OHlTVFF2MElmRjlPQmZLWGdScUFUdVF1c1RtbGdRTFA3ZElYQnZlM211YnU0?=
 =?utf-8?B?eXBqWEgxMlJrNTIzcXpoN1ZQVk1kdzFhSGtGa2Jud0FNNXNxQmwxdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60e9bf3f-03e9-4e99-1cbd-08de4759dab9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2025 04:13:58.0055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qNhPTWkTtHS2dLK/NQPAhNAD7uQO3XJpcTob+C0d0OiUAXAlcOvPGu6ythmZU+ToFQ1oQd7Q3tTT9hQGYi0nRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7357
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBBbmtpdA0K
PiBOYXV0aXlhbA0KPiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDI2LCAyMDI1IDEwOjA0IEFNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbTsgdmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20NCj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9xdWlya3M6
IEZpeCBkZXZpY2UgaWQgZm9yDQo+IFFVSVJLX0VEUF9MSU1JVF9SQVRFX0hCUjIgZW50cnkNCj4g
DQo+IFVwZGF0ZSB0aGUgZGV2aWNlIElEIGZvciBEZWxsIFhQUyAxMyA3MzkwIDItaW4tMSBpbiB0
aGUgcXVpcmsNCj4gYFFVSVJLX0VEUF9MSU1JVF9SQVRFX0hCUjJgIGVudHJ5LiBUaGUgcHJldmlv
dXMgSUQgKDB4OGExMikgd2FzDQo+IGluY29ycmVjdDsgdGhlIGNvcnJlY3QgSUQgaXMgMHg4YTUy
Lg0KDQpTaG91bGRuJ3QgaXQgYmUganVzdCBhIHBlcmlvZCBhbmQgY2FwaXRhbCBUDQoNCk90aGVy
IHRoYW4gdGhhdA0KTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5k
cGFsQGludGVsLmNvbT4NCg0KPiANCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzU5NjkNCj4gRml4ZXM6IDIxYzU4NmQ5MjMz
YSAoImRybS9pOTE1L2RwOiBBZGQgZGV2aWNlIHNwZWNpZmljIHF1aXJrIHRvIGxpbWl0IGVEUA0K
PiByYXRlIHRvIEhCUjIiKQ0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IENjOiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+
DQo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2Ni4xOCsNCj4gU2lnbmVkLW9mZi1i
eTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMgfCAyICstDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuYw0KPiBpbmRleCBkMmUx
NmI3OWQ2YmUuLjFhYmJkZDQyNmU1OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+IEBAIC0yMzksNyArMjM5LDcgQEAgc3RhdGljIHN0cnVj
dCBpbnRlbF9xdWlyayBpbnRlbF9xdWlya3NbXSA9IHsNCj4gIAl7IDB4MGYzMSwgMHgxMDNjLCAw
eDIyMGYsIHF1aXJrX2ludmVydF9icmlnaHRuZXNzIH0sDQo+IA0KPiAgCS8qIERlbGwgWFBTIDEz
IDczOTAgMi1pbi0xICovDQo+IC0JeyAweDhhMTIsIDB4MTAyOCwgMHgwOGIwLCBxdWlya19lZHBf
bGltaXRfcmF0ZV9oYnIyIH0sDQo+ICsJeyAweDhhNTIsIDB4MTAyOCwgMHgwOGIwLCBxdWlya19l
ZHBfbGltaXRfcmF0ZV9oYnIyIH0sDQo+ICB9Ow0KPiANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aW50ZWxfZHBjZF9xdWlyayBpbnRlbF9kcGNkX3F1aXJrc1tdID0gew0KPiAtLQ0KPiAyLjM0LjEN
Cg0K
