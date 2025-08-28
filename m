Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF70B39548
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 09:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5E310E6C5;
	Thu, 28 Aug 2025 07:35:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cjb1Y9xz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6271B10E6C5;
 Thu, 28 Aug 2025 07:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756366528; x=1787902528;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pDKd21tabhMzTyhtnKohSWJSEbYcGNrSko9yTcB1I9k=;
 b=cjb1Y9xzZv1N7BoXaVte15c1UJMtreTtaOKt2dIhrdqO5qs9Hizsk/wF
 iq7//JmK/ZSLxsVQZjYKg2LN/e6cWxI0pT8xXxCkwRjR5LlaMoRXeZiOp
 Da5YPlNFRFBYax8uzm+JCJfkqi7xlV2XES8DggIAGqIPoXc3iaNyq0Q76
 UkETt6hhOi9gCVrXv5d/nbNPLjaP5Wu0h9oyYB6nAniDQfiCMxLWVvGBT
 lhXFAUZhEUeszAMLTwCUMhgl0v8OdB4jl+1OY2cwAgesoqn+snuDX4OQX
 QWJYjWM2rFa7X7ZXfSyvlfqhfLG0pL862xJ9C8Qp6Z2hrq1/QNRtvazVa A==;
X-CSE-ConnectionGUID: boDFAxmsRVqn+dXvwVZvmA==
X-CSE-MsgGUID: ap+To/07QXOVTIuFfH73aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="69720757"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="69720757"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 00:35:27 -0700
X-CSE-ConnectionGUID: K7FjyVhfTp6Fa8z7JwT83A==
X-CSE-MsgGUID: 07j7XGJNQhW/cjo5Z06nRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169944672"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 00:35:27 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 00:35:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 00:35:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.53)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 00:35:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sitjrhrqKRNrLbbkmpy4kNA2rFhKp86mNdMoE2VJf5zuthvoP/1oNBR3qRrY11Unsk2w+QNSt3+YCmrBjT0UBYUs8TMiI3ImT45lx9Qc5onKCLRBfz/QznF135J7IC8EvHDnax/LErk+QA4g44MNDqMHT8m+U/5DcrqsAghwsVotyNUalQOqU/zmc+4RR+BBVNE/NiWze2ipIie+JKUKYBYSgSdukN3q6mbz5VoSypT89OmEaamFxB6sbZuSrAby/H5DUOVE92GAgJESJWUdpuOezcXD25re4pcl2f6eUU3TTsuumAe3eFou7G4WCke6WhoVu2bOvcuoZcZMgKIILA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pDKd21tabhMzTyhtnKohSWJSEbYcGNrSko9yTcB1I9k=;
 b=AyHp8Bah+LVnEQgA5MzTw+QWPz+e4pD9oOL30USLuAi0ldsWIZvWY99U/OVvh1oi3aLS1uRUstkgD6cgRORLQrB6Ltq7SPHN6jPz4uCkY2ZY2k4d3Mw8qOEcoSdnNVLKrDiyy1VpfFBJioYr4r5wWxSLxtXTO1c5IT85cGoWdy/MXzPD0698tTRiNZlUgdU3ozKI1xcp1kwJ6kzaYRyKvbBBIJ3DyzKAgFh1YAQpxzaLwEq0YZETDB1iehd3uHxZDFst5zvTOYt5Ad//xH/tacfL6EfPhdPjiiOkca8y9aHMnOhFGNWdUQf8lbYHcacDEMMAMzH5nH2cGvmwhrPHyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH8PR11MB7120.namprd11.prod.outlook.com (2603:10b6:510:214::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Thu, 28 Aug
 2025 07:35:20 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%4]) with mapi id 15.20.9052.019; Thu, 28 Aug 2025
 07:35:20 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 3/4] drm/i915/alpm: Replace hardcoded LFPS cycle with
 proper calculation
Thread-Topic: [PATCH 3/4] drm/i915/alpm: Replace hardcoded LFPS cycle with
 proper calculation
Thread-Index: AQHcDCDwseRdaetfgkS16C9UCgLNwrR3w2Yg
Date: Thu, 28 Aug 2025 07:35:20 +0000
Message-ID: <DS0PR11MB8049AF52A8708C528B4215F0F93BA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20250813070617.480793-1-jouni.hogander@intel.com>
 <20250813070617.480793-4-jouni.hogander@intel.com>
In-Reply-To: <20250813070617.480793-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH8PR11MB7120:EE_
x-ms-office365-filtering-correlation-id: f37f4cdd-546d-4ed7-c41d-08dde605710b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?VXhYcW4rMzVHMXJkSU13d3o5QVJaUUxCaUkyRS9JUXUzcFdua0UwVTZIOGkv?=
 =?utf-8?B?a3RkNUNVRVBoZ3FBU21Jcy9yL2NqQ2ZIczdpV0xOaTFidmtvN000NXJ6N3hE?=
 =?utf-8?B?dFBsaWlKMXArQ0c5VWxWaGkwci91QWRxeFdKOU1hSFVlTEJURlhNZkdoY0FB?=
 =?utf-8?B?d2ZsRjQvRHFadFd0QUpUemRWaWRYWUtmeWZpZzFFOWludDhWOCtFY1Y1UE9T?=
 =?utf-8?B?eElsWkZkMHhDQlpFQk5CM2JvOG15aWh1bnY1WmdyYXFnTGltOUd1NXQvaDFv?=
 =?utf-8?B?azBJMGxRVXdFbUhpNElXYlA2RUJIQVFJRzVqc3FoT0NVMmdwQW1Ec3RMdW15?=
 =?utf-8?B?SE1LMDlpRHdaaGU1N3lXMDZwYjB0b0hWZ0hVak9IWGVkaVVHaWFvbldBd2Jt?=
 =?utf-8?B?b0VDdFMvUVU4RzJLazF0ZVFXdE5qRE43T0w0Tk1EQ3ZTVGRxVldrY042NHhG?=
 =?utf-8?B?ZEdNYUlwUTJMRUN2THkzcG9kNmIvTlNNWmp1Q240c0UxUkpIZHlxUVl3bk1I?=
 =?utf-8?B?ZFU0aGNYTmxwQXR2RjU2RVhvaTZXcEppU1hDNDU5TnNPUmFnc2ZVcmNrS2FO?=
 =?utf-8?B?RVArQWNMTzJCZXYzL0lXZFh3V3BZTHIxcjVkQitITGtYWTZpRDBaQVNGVlZh?=
 =?utf-8?B?d1o4UnpYZE4xbUUvaUUxVkxqa2lFVmIrQk5zV1h5ZnJIQzhibUJOR2NwUTNP?=
 =?utf-8?B?TXNsOWxyc3NhNldnMEtUVnEwLzNFY2ExbFVHRUVLRGJSOTRHeWtpL1RLTkhU?=
 =?utf-8?B?dm5vWWt4UVkvT3F0SjBVYTJYVjlHelVmbmhSeENsZC8wMkg0NzdJWDVvem54?=
 =?utf-8?B?NmhST242bE10ZGRnOTBMbUphWmxZTnd1a29NVWdkN2NtZlFpbUVoM2FqdStQ?=
 =?utf-8?B?dGdGVW14bUF2d0oxaDZ4YVJQU3k2TUxSVW9QZm5OWU12SHpMSU1PanlHRDl1?=
 =?utf-8?B?Q1dhMjBuSWlrY3VQcndaNVoyQmJHc3pqSHU4UFBWeGdmdGRsS3hGd0h5Wit1?=
 =?utf-8?B?dVk2MVFQbXJDeEhUcTZKY3BiWXM1a1pXeVlCbWNxcnFtUmlZTnlYVFdpZnc0?=
 =?utf-8?B?eS80VlliS1orNVBlTlZ0NTN6YXgwMWJYeDBqd3R0cUZVYzFVZHVoazdhOUds?=
 =?utf-8?B?OHRrUE1nYzlBWlFtU1JIVXhadzRBMUhNTHgyOHFTV2lmMmVBd1FRb3dCNzEv?=
 =?utf-8?B?dGRvNm5RSGxsSHpneUFsdVNIZ3ZHK29iQ2dyenhqUVRvTitlSFZJejNvZzhz?=
 =?utf-8?B?YzNzR2NqaG9zRlJ2L1BWSTdFQllpRTlwTG1qc1Y5V1d2RnYveHRmMEEwQS9z?=
 =?utf-8?B?ZmJLcmlsQlZsR2pCcHQvcm04bXB1L3Faa1ZsY0xNQk8rYXRjRlhOeHRUK1ls?=
 =?utf-8?B?dldhSVF0N2t6WkNZS2VlSVFaYnRHVzdyVEVOTTBnL3haMWFLb3ErcFdZWitj?=
 =?utf-8?B?SzNMelhuN0xsY3VZNE1VWlBEM2ZJazBNZDV1c01oT2xRN2ZLV3hCanY3akRQ?=
 =?utf-8?B?QmxHaWE4K0ZHbHl5QkMwOVBmRy9laEx3bFVoSmJpb29TNWlrYWIreVczbzBF?=
 =?utf-8?B?ZVBWR2JjM3Z0VU5NTzVrQ1pUMzF4RVFKUlo1RHRFTHk4ZlArK3l0SUtOTGJz?=
 =?utf-8?B?elZqN1hUcUI0L0M5akN5WjFKckF4WkpGcUsxQjU5ZTZEOEZUTHg4L3Q3TVdj?=
 =?utf-8?B?OGg1b1FjcUNaU05OK2hZVTdtSnd5ODdSTi9vUm4xWjE4NmZTWmRxU3RsWHJK?=
 =?utf-8?B?YnVuOVRKZ0RSQ1ppbTh3dXBMZ3pZbFlOeFNXYng0T25PeG9KVmVvSGMzc2wy?=
 =?utf-8?B?T0lMYWJDSm9SUVFld21PODNybWNFUGE0cENPcWlid2FNOWNjcHMrY010Uzlq?=
 =?utf-8?B?dUpIdkhUVVRvd2RhcGorQ1FDdEVBeit6RnBVNTRlS0VjZW54QXFSd3lqU1da?=
 =?utf-8?B?b1A3V2RnQmFnR29HMVRVRGxRdjRGV0tidGJSMndjSlVFR01qK0lkeXI2RU5L?=
 =?utf-8?Q?Br6AWCP9l7se1L8zPjWqXuftNaxUaU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K1UwZi90aE50cHVpdnhKbVhUbWR6ZEpSMnU1aW9EeS9BVVlCcUxaZjl1cndy?=
 =?utf-8?B?cjRDdkFMMS9MbGVUNXMvMWdrellDVGdQcFJBbUtHQ2NwMGJKQ1ZsakFza0Zh?=
 =?utf-8?B?SlYrOVFJUTJ5RkU4V3lmV1RaeEIvVHNLWUJlbkxXM2RaTUdlWFBiWXBtNzVx?=
 =?utf-8?B?RzRpQ1d0bWlIZmlXYzRuQWFnKzg0WWR2QVFVcm5ib21GNVQ5SUJMbjlwWjhU?=
 =?utf-8?B?NEdtN3JsaUFUMGU5SVZQNG9yVjZmcEFIK0hNL251YVlTOWMwdEpCREgrdDJG?=
 =?utf-8?B?UlVCVEl5aFg4MnJQN2taWHZoQm5ObVh2UmNLbU9QZHJ6WjMrWFJqLy9XMThH?=
 =?utf-8?B?b3RkaEJraWEzQjZpVENuS3M3d2xLODd1MGdtTytkOVJVWU1iMmNhbW5DbGll?=
 =?utf-8?B?OHRBdjc4YmN1dmtIZDFma2tFRmhIS2tPblJDZDRUdGQ1WTNXcEQvbE5FUlFu?=
 =?utf-8?B?ZnlRSldldHJZbkk5UHl6d1dXZ0p5bXJCZlNBMXlLeFg0YkNtUml5bXE0RjdF?=
 =?utf-8?B?MU4zOHBVcWFoNUl4T1hNcVduN0Y1dnZvek1nYTBnVGVTbkswcjBBSlE0anY3?=
 =?utf-8?B?K0xhMjZkM0dhcDQ5eUtZaFhqOTFkUnhwZG91Z2wwaThsMkFRbi9qcHZ3WXBn?=
 =?utf-8?B?NGFJLzB4UnQ1TWtxb24zYzYyM2xxVzIybUw2aGM5SDZkZms5blNhYzFVclJ6?=
 =?utf-8?B?ZDdPRlVGdGJheVRpQ3hFM2paS1ZsNWkzYlN4NE1XNm1HbEF3dXF0WlZ1NnJ5?=
 =?utf-8?B?a3lwS3JSUklLU2ltbUFXOVE2aGhVTHY3eWg0Si9NaWZrWjJXNit6cGYwbDdN?=
 =?utf-8?B?aURYZ3dySGZpQ2xwUHpxaVpUTHo1QkFsN3htY05PM1ZIbGtVMXNzUHFUb1lO?=
 =?utf-8?B?WEt6Vmw3YjRNSWNyUmFHUlZEQ0ZwaVlSU2UxbncybnBMMEhLRm1IWDdqWU5u?=
 =?utf-8?B?NFM5V25BSEhZWmZsRDk0ZkYxQUYyZlREeXV6YzRWU2hyb0gwZE01dzFXUGR3?=
 =?utf-8?B?SnpCekhTazk4Vy81VWp2WlhWb1FYaFFqOTRVOWNPa1VXN3g5azE1b2NQSk1n?=
 =?utf-8?B?cEl0a1FrVkdUcFI0dm9aN3BUNlJqQ2dSN3M3Yno1dm9lbklmSk00YVlKTmk2?=
 =?utf-8?B?V2xYY3pTdGxteDR0SnJIWHZzdHRBVVlLRDhabkZ6SzlleG9COWh4TjNRc3lV?=
 =?utf-8?B?REUyUmhCdVArNTRZY09QQVF4VFlUY1Z4NXd1b3g4K2MrMVQ5T0dyWEJDZDFH?=
 =?utf-8?B?L3FwTEY0N0c5WmhOMkszU2JCdGNRRUJVYVh2ekxrYVNDVFkrQTUrS0kvbm9N?=
 =?utf-8?B?WHkySXpVbmdjS243T2tLd21jUzNUU01tZlpGVEYrVW94VXV4cWdoSVVaclBh?=
 =?utf-8?B?ZU9sY0szTnh2elV3cXdyNkwzRGhpek1EZ3dSMG9YbVZBNnFNcjV4NTQ4bzI3?=
 =?utf-8?B?ckE5Y3JHV3dLR2FhUnNqeUdzRm1INjhDcUpWdWgvSDhCZWNHWGpzTllwd1Bl?=
 =?utf-8?B?ZmRPUGx5d1cvNXMyTGFvbG1ORGFYc3JDRTZkOFk5MDF0a2VEQnE4eEZ3WGcw?=
 =?utf-8?B?M1FuczI2WWxHVjg0TjlsbGJqT2ZDSkVRbTg0WXV0MzJTdHlxcEE0TVYvK2Jj?=
 =?utf-8?B?QWJNTFhrMHFXTFpmMlJJQksrSzJZbytyMzJwcDhvUjc1MEYvbVlTNnMwQTBV?=
 =?utf-8?B?bEE4Szd0UkFha05LelJaYU83U2tkZ0FLQUNSTWgrR2hkbi9FSktrRmx3NEpW?=
 =?utf-8?B?UEpOZXY3eGxUcEVoNUswZHNsWTY3VTllUXRtc0s3dXV2WDhaZDIyYlMyZVBo?=
 =?utf-8?B?STdEaitlZ2NWcHk1Q0tGSThmMy9TMDZUOEZyYnFSMHNKTWNQVkFkZ2MrcWcx?=
 =?utf-8?B?ZUFjcTY4NTBBSnd2aGNxZUdFZ2tQY1cyNjhFQjdUeWpRNjllWVR4RUNoRHVC?=
 =?utf-8?B?eExZcTNnZXdUTm9EWWp0VlNXdmttMUlIemRpWWVFN1AyN2lFMHZHdHFBaWpw?=
 =?utf-8?B?WElmRGY4Z0RDOHhaWEZBUDNxYThXcHdaQk9WbHlLWjY4QmZqcnVWTG4rZCt4?=
 =?utf-8?B?V21tZUhWR0Zla2JTQTUwR3hHandKR245aTZFcGdCWUVqeU1hSmtsay8rZkZF?=
 =?utf-8?Q?Eb9ekHqqdKG7Va0btOMOXt4tw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f37f4cdd-546d-4ed7-c41d-08dde605710b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 07:35:20.2269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G1YlyMqItpC5j17HAdb3HvD49fiNmLRByb5UQazDtBcWCBn/Z6Zqpb2nSBecnMrqs6z9PuqJ3HweWyFFEfaN/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7120
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDEzLCAyMDI1IDEyOjM2IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMy80XSBkcm0vaTkxNS9hbHBtOiBSZXBsYWNlIGhhcmRj
b2RlZCBMRlBTIGN5Y2xlIHdpdGgNCj4gcHJvcGVyIGNhbGN1bGF0aW9uDQo+IA0KPiBDdXJyZW50
bHkgTEZQUyBpcyBoYWRjb2RlZCBmb3IgZGlmZmVyZW50IHBvcnQgY2xvY2tzLiBSZXBsYWNlIHRo
aXMgd2l0aCBwcm9wZXINCj4gY2FsY3VsYXRpb24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyB8IDkwICsrKysrKysrKystLS0tLS0t
LS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgNTIgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hbHBtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0K
PiBpbmRleCBhZTU1NmE4ODVjMmEuLmIyMTIzMzA1ZjEyOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gQEAgLTU4LDU4ICs1OCw0MyBAQCBzdGF0
aWMgaW50IGdldF9zaWxlbmNlX3BlcmlvZF9zeW1ib2xzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCQkxMDAwIC8gMTAwMDsNCj4gIH0NCj4gDQo+IC0v
Kg0KPiAtICogU2VlIEJzcGVjOiA3MTYzMiBmb3IgdGhlIHRhYmxlDQo+IC0gKg0KPiAtICogSGFs
ZiBjeWNsZSBkdXJhdGlvbjoNCj4gLSAqDQo+IC0gKiBMaW5rIHJhdGVzIDEuNjIgLSA0LjMyIGFu
ZCB0TEZQU19DeWNsZSA9IDcwIG5zDQo+IC0gKiBGTE9PUiggKExpbmsgUmF0ZSAqIHRMRlBTX0N5
Y2xlKSAvICgyICogMTApICkNCj4gLSAqDQo+IC0gKiBMaW5rIHJhdGVzIDUuNCAtIDguMQ0KPiAt
ICogUE9SVF9BTFBNX0xGUFNfQ1RMWyBMRlBTIEN5Y2xlIENvdW50IF0gPSAxMA0KPiAtICogTEZQ
UyBQZXJpb2QgY2hvc2VuIGlzIHRoZSBtaWQtcG9pbnQgb2YgdGhlIG1pbjptYXggdmFsdWVzIGZy
b20gdGhlIHRhYmxlDQo+IC0gKiBGTE9PUiggTEZQUyBQZXJpb2QgaW4gU3ltYm9sIGNsb2NrcyAv
DQo+IC0gKiAoMiAqIFBPUlRfQUxQTV9MRlBTX0NUTFsgTEZQUyBDeWNsZSBDb3VudCBdKSApDQo+
IC0gKi8NCj4gLXN0YXRpYyBib29sIF9sbmxfZ2V0X2xmcHNfaGFsZl9jeWNsZShpbnQgbGlua19y
YXRlLCBpbnQgKmxmcHNfaGFsZl9jeWNsZSkNCj4gK3N0YXRpYyBpbnQgZ2V0X2xmcHNfY3ljbGVf
bWluX21heF90aW1lKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRl
LA0KPiArCQkJCSAgICAgICBpbnQgKm1pbiwgaW50ICptYXgpDQo+ICB7DQo+IC0Jc3dpdGNoIChs
aW5rX3JhdGUpIHsNCj4gLQljYXNlIDE2MjAwMDoNCj4gLQkJKmxmcHNfaGFsZl9jeWNsZSA9IDU7
DQo+IC0JCWJyZWFrOw0KPiAtCWNhc2UgMjE2MDAwOg0KPiAtCQkqbGZwc19oYWxmX2N5Y2xlID0g
NzsNCj4gLQkJYnJlYWs7DQo+IC0JY2FzZSAyNDMwMDA6DQo+IC0JCSpsZnBzX2hhbGZfY3ljbGUg
PSA4Ow0KPiAtCQlicmVhazsNCj4gLQljYXNlIDI3MDAwMDoNCj4gLQkJKmxmcHNfaGFsZl9jeWNs
ZSA9IDk7DQo+IC0JCWJyZWFrOw0KPiAtCWNhc2UgMzI0MDAwOg0KPiAtCQkqbGZwc19oYWxmX2N5
Y2xlID0gMTE7DQo+IC0JCWJyZWFrOw0KPiAtCWNhc2UgNDMyMDAwOg0KPiAtCQkqbGZwc19oYWxm
X2N5Y2xlID0gMTU7DQo+IC0JCWJyZWFrOw0KPiAtCWNhc2UgNTQwMDAwOg0KPiAtCQkqbGZwc19o
YWxmX2N5Y2xlID0gMTI7DQo+IC0JCWJyZWFrOw0KPiAtCWNhc2UgNjQ4MDAwOg0KPiAtCQkqbGZw
c19oYWxmX2N5Y2xlID0gMTU7DQo+IC0JCWJyZWFrOw0KPiAtCWNhc2UgNjc1MDAwOg0KPiAtCQkq
bGZwc19oYWxmX2N5Y2xlID0gMTU7DQo+IC0JCWJyZWFrOw0KPiAtCWNhc2UgODEwMDAwOg0KPiAt
CQkqbGZwc19oYWxmX2N5Y2xlID0gMTk7DQo+IC0JCWJyZWFrOw0KPiAtCWRlZmF1bHQ6DQo+IC0J
CSpsZnBzX2hhbGZfY3ljbGUgPSAtMTsNCj4gLQkJcmV0dXJuIGZhbHNlOw0KPiArCWlmIChjcnRj
X3N0YXRlLT5wb3J0X2Nsb2NrIDwgNTQwMDAwKSB7DQo+ICsJCSptaW4gPSA2NSAqIExGUFNfQ1lD
TEVfQ09VTlQ7DQo+ICsJCSptYXggPSA3NSAqIExGUFNfQ1lDTEVfQ09VTlQ7DQo+ICsJfSBlbHNl
IGlmIChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrIDw9IDgxMDAwMCkgew0KPiArCQkqbWluID0gMTQw
Ow0KPiArCQkqbWF4ID0gODAwOw0KPiArCX0gZWxzZSB7DQo+ICsJCSptaW4gPSAqbWF4ID0gLTE7
DQo+ICsJCXJldHVybiAtMTsNCj4gIAl9DQo+IC0JcmV0dXJuIHRydWU7DQo+ICsNCj4gKwlyZXR1
cm4gMDsNCj4gK30NCj4gKw0KPiArc3RhdGljIGludCBnZXRfbGZwc19jeWNsZV90aW1lKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0KPiArCWludCB0bGZw
c19jeWNsZV9taW4sIHRsZnBzX2N5Y2xlX21heCwgcmV0Ow0KPiArDQo+ICsJcmV0ID0gZ2V0X2xm
cHNfY3ljbGVfbWluX21heF90aW1lKGNydGNfc3RhdGUsICZ0bGZwc19jeWNsZV9taW4sDQo+ICsJ
CQkJCSAgJnRsZnBzX2N5Y2xlX21heCk7DQo+ICsJaWYgKHJldCkNCj4gKwkJcmV0dXJuIHJldDsN
Cj4gKw0KPiArCXJldHVybiB0bGZwc19jeWNsZV9taW4gKyAgKHRsZnBzX2N5Y2xlX21heCAtIHRs
ZnBzX2N5Y2xlX21pbikgLyAyOyB9DQo+ICsNCj4gK3N0YXRpYyBpbnQgZ2V0X2xmcHNfaGFsZl9j
eWNsZV9jbG9ja3MoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRl
KSB7DQo+ICsJaW50IGxmcHNfY3ljbGVfdGltZSA9IGdldF9sZnBzX2N5Y2xlX3RpbWUoY3J0Y19z
dGF0ZSk7DQo+ICsNCj4gKwlpZiAobGZwc19jeWNsZV90aW1lIDwgMCkNCj4gKwkJcmV0dXJuIC0x
Ow0KPiArDQo+ICsJcmV0dXJuIGxmcHNfY3ljbGVfdGltZSAqIGNydGNfc3RhdGUtPnBvcnRfY2xv
Y2sgLyAxMDAwIC8gMTAwMCAvIDIwOw0KDQpXaGF0IDIwIG1lYW5zIGFib3ZlPyBpZiBpdCBpcyBk
ZXJpdmVkIGZyb20gTEZQUyBjeWNsZSBjb3VudCB0aGVuIGdvb2QgdG8gdXNlIExGUFNfQ1lDTEVf
Q09VTlQgbWFjcm8uDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gIH0NCj4gDQo+ICAvKg0KPiBA
QCAtMTYxLDggKzE0Niw5IEBAIF9sbmxfY29tcHV0ZV9hdXhfbGVzc19hbHBtX3BhcmFtcyhzdHJ1
Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCWF1eF9sZXNzX3dha2VfbGluZXMgPSBpbnRl
bF91c2Vjc190b19zY2FubGluZXMoJmNydGNfc3RhdGUtDQo+ID5ody5hZGp1c3RlZF9tb2RlLA0K
PiAgCQkJCQkJICAgICAgIGF1eF9sZXNzX3dha2VfdGltZSk7DQo+ICAJc2lsZW5jZV9wZXJpb2Qg
PSBnZXRfc2lsZW5jZV9wZXJpb2Rfc3ltYm9scyhjcnRjX3N0YXRlKTsNCj4gLQlpZiAoIV9sbmxf
Z2V0X2xmcHNfaGFsZl9jeWNsZShjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrLA0KPiAtCQkJCSAgICAg
ICZsZnBzX2hhbGZfY3ljbGUpKQ0KPiArDQo+ICsJbGZwc19oYWxmX2N5Y2xlID0gZ2V0X2xmcHNf
aGFsZl9jeWNsZV9jbG9ja3MoY3J0Y19zdGF0ZSk7DQo+ICsJaWYgKGxmcHNfaGFsZl9jeWNsZSA8
IDApDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+ICAJaWYgKGF1eF9sZXNzX3dha2VfbGluZXMg
PiBBTFBNX0NUTF9BVVhfTEVTU19XQUtFX1RJTUVfTUFTSw0KPiB8fA0KPiAtLQ0KPiAyLjQzLjAN
Cg0K
