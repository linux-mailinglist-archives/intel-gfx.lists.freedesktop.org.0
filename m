Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6472AA6D5A1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 08:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE43510E20E;
	Mon, 24 Mar 2025 07:59:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FL2u9vGI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E346310E20E;
 Mon, 24 Mar 2025 07:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742803183; x=1774339183;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zqjqDec0KCQGeq6Ug4LKqonUN9msjvyzh/ynve3A1mo=;
 b=FL2u9vGIpu7mvtfwyMOPGp7yVhCqcdfJ4S8xRE0UteVKjc+20i8G+ick
 wtZCnKS2G4frxuPWxVSGxQB+ZYCUPmJEtcf9qf9HDc9h2YCuf+bXXSruo
 L2aMge2sq5PMQTxFsmqTb+VHdD4tB1hkTki6w4xiZItWDPGAKSUzlOWOF
 z6tBpE0Ucdb+7/fGf3r0xAtB2Vkzth6hDkYPTKQFgF4MLdH/a8b2qdVlR
 7PBoOFdMdH7kKQWO73qHJsvHCnSYO38cOjdL7XhbfiEpvfNEspZkkccI+
 Z3mjJHE0tZtrCT38KOYYL+NIf5ovq4Xd4I4ZA/JC3Cp49udaJxj/gOtLn Q==;
X-CSE-ConnectionGUID: 6JatohK/QWOJKlCLjJygcg==
X-CSE-MsgGUID: jcCRGSo6R9OdX3SFhDITKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="47648718"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="47648718"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 00:59:42 -0700
X-CSE-ConnectionGUID: EUpBvUf0SCCPJL8hgWNkZg==
X-CSE-MsgGUID: bGdNQeypTRGJPiBki7iw1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="161208251"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 00:59:42 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Mar 2025 00:59:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Mar 2025 00:59:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 00:59:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MC5KUTm6JBDYyLcWETfy2CXuHLEHTOvKdWGlqzVrqK2NyWnomXIUU8+yxd7QHa5/2pUwWZPvCR5UV5LoGV2lwZktADJWV4myyKIiXg4DcftpEz+Q631vBIKnw7G+riZwHP7rG8RkOx8RmRx4bOS53/Q1yLKIxGTc858Py6ChdSB9SuwaL4o7jI9DtxIgwDL/KjVXUyXQEhBRg21whB/Zp142wPt6zxCpDDHZAmNzRzv41Vk5ZI1S11N3bzu1LZPzKLWWMaktPWR6UifqFD3oCNgNDyEaf8MV69yUi0gGDvTnJ4243wCkjEZVdlD3//VOg6rUxLWwqa2Ktq8KNQQNAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zqjqDec0KCQGeq6Ug4LKqonUN9msjvyzh/ynve3A1mo=;
 b=O/LDx45BNvrqNPGzxHNwK3KluTNdpFJYS9UDM/sxRccgxSPFXMu8V1+Zt3fW6JspTsFh697P0qdqAN01Ypa8jStl2x7Jq6h8RE9gBBezgRMTJP63peR5gqgeVKRno7VqJu/9aq3aCfZq6iKygv1pytjCwyiluDRbOr6+Hgc6PM91a9neoN0B+/4jPirAb6BLKuMb4O6asyB5uG03AE+wsIZb0NNk9uutUGFlyB2/FRY4E2QA0uzH9GQxHiSJM50OcgVw5kyp4zOvaglxFeOaJh/uMMiBThyB0fX5LJYNvR2pgB5CHiqaTLJrhm2qmcyJtbiLSELLlfr8fuZSQbch0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7832.namprd11.prod.outlook.com (2603:10b6:8:f5::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.42; Mon, 24 Mar 2025 07:59:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 07:59:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v6 8/8] drm/i915/lobf: Add debug print for LOBF
Thread-Topic: [PATCH v6 8/8] drm/i915/lobf: Add debug print for LOBF
Thread-Index: AQHbmQZw3rypTRnrrU2XqqowZIufArOB8zIA
Date: Mon, 24 Mar 2025 07:59:11 +0000
Message-ID: <5df74e9d7274a91c4f42c9318131fc3c9e863594.camel@intel.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-9-animesh.manna@intel.com>
In-Reply-To: <20250319191508.2751216-9-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7832:EE_
x-ms-office365-filtering-correlation-id: 508b60fa-30b2-48ba-0fb8-08dd6aa9c347
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MEEzV2F5YVcyeXlEdm0xdWtTSzV3d1VJZkZtV0dWU1pXZVdRRWU4K0c1c09L?=
 =?utf-8?B?dG5NVnVqV0RlUGV4UFpGM3lmQWhuMVlBMVEvcGlEVVBIb1VhRWtZTktJNGdw?=
 =?utf-8?B?K3lucVAreTRzVlArUWZrdHpEQ1ZYdU11UGxJVXNINWJEOS91aThhamYyMUZi?=
 =?utf-8?B?MVhlYlJ3SW9VWlVERlhuelVnclZCV2FxTnVjMU1WUTQ5SnJQQ3VPYmhIQjJM?=
 =?utf-8?B?bTkxc3ZJUWZPM1NIK2RtVXI2dDFnU1kxbFR3Mlc5MjU4ZDZMb29yL2dVd2dj?=
 =?utf-8?B?TTZFRHA2S1NZcVB2aWo3MFBUQTVKeGxMdjVkWXhLQnhXSmlsOVF3Z1g5LzBJ?=
 =?utf-8?B?Und1UmhLcFNwSllFbzZ6MmIrZEY1VWp6SzFMT05DRTQ2TVBFRElSWDloblJx?=
 =?utf-8?B?TXB4M2VsR0cvR0pxd2RQTWRYSE40L2IrMWFmdlhsVGp0MmhsT0JmMUdBcGVp?=
 =?utf-8?B?TnQ5NGM2ZFF4dnk4TjhiMDd6a3laTVpHR21qQ0I0VmcxZnNVYkVEcGdNSHVu?=
 =?utf-8?B?YU11YVlaa1g0MXJiYStvN3dTME95UVhRQzZoWTVYUE5OTDhTQU5jSStxejdx?=
 =?utf-8?B?WldVcUowSXdWUHdoR2M2WlRIcTVaTE1UU3JJUHBPcUh2Q2ZKMXVnZzFuemll?=
 =?utf-8?B?cW5JL3ZNNnVvOFVFTi8xdHQ4UU90c0VzYld2aitRWlVUc3JrTHd6M0QzRDQ5?=
 =?utf-8?B?QitmdzM2eTRaZE1nQjg5WGxMYVBsN3VPUExtOUpLRXk3UXFsT2swcmtNMDNC?=
 =?utf-8?B?UWJDNzZyUENlK1lzNTVnZllCS1d6a2xnN1FCV3dTU2pzbER4ZE8vMHRqRjFO?=
 =?utf-8?B?ekNsWFk0dVlEQ2IyOVFHeVo2a3dYSUhCU2htS1B0QUtlbEZoaXAwNkpsSkhO?=
 =?utf-8?B?dG1xb05JMkhQL1ZNL21sN2FSQ2NrUGY1Mk1VVHVlOXRtRS9nS0tWdWlMWEJw?=
 =?utf-8?B?dHJuQXd3RGZrVWhaZzRuMXRCVm15VHp3YWN4djNSaXBjRjl6bmdKcHNNY1V0?=
 =?utf-8?B?dGhNd2thdUZrbStUcXk4ejFFTkc4U1ZGM20zdlJKYjliR0pHUSsvbXBrVGx4?=
 =?utf-8?B?OGFMQ0xnM0VKVjU2aDUxZ1RhRmE3U1RNM050MkpVMGt1M2hRN1IwTUkzZm9o?=
 =?utf-8?B?bFFvVVhVOGNSaXNKK1hMNkFjUjU2b3F3Kzd5WnNwc0VOcmlkQ1Y3UmNMaVhu?=
 =?utf-8?B?eXprb0JOaFl6VkNaRDVkZDdGSGFGQWtTWGhoT0Q4SW9Qb3hSS09GVDltUVJv?=
 =?utf-8?B?UWpZV3VpaVdEdG8yWjZzOGd6clN6QkNtbVdtRGJyWER6cXByVU4xVEthaEN4?=
 =?utf-8?B?T05NejhNV2FJSHlwQTBzSit0Z01IN3pjM0Z4Mmc3WTg1aTU0ZGZZdTZzOUt6?=
 =?utf-8?B?cVJqcENGMW5mTU5PUERSenBDMGluSm1qSHRIR3Nwb3NRa0dHelZiZE5ETXhL?=
 =?utf-8?B?aWRhWHE3ZEt4cENaUEp2WkdpKzZtVnRpdW40U05iN2dRNm0xWktqZWhuMEhv?=
 =?utf-8?B?bWZoeFhwQWlTNEEza1diZlRXUjBIY0xIb0F2R2NlalBoKytIRUVIbXplTWZa?=
 =?utf-8?B?RFBoQ09BVlVuWkVjWWdEMlRFbFh0NnA2YTM0dnlUQVhnVCtyYnc5K040OFA4?=
 =?utf-8?B?dDgwbU1TdjU3eW9GaWZwMkRDL1Z5MUIyUjBWNGtMMmN5bS91bm5hOWZkZFpI?=
 =?utf-8?B?NkpjSGEzN1BROGN0U2VDR0hMMVlBUGR3WGNYdXU5VVdTT1grSGZzN3NlMWxZ?=
 =?utf-8?B?MXRETlFaNVhDb3daNGJDQlIwRlNmWTcvRmlGM3preUdhdm8wQmh4TE1WZ0xm?=
 =?utf-8?B?bndVWGhpbjFCaUdVME5UUlI4TC9rbnduVkYyd2NpbGtQYjYrakRuSnQrTVI5?=
 =?utf-8?B?M21LZ2FDcnRPaEpwamJTVmllNDB1VjNoRkkxb3ZaRy8rTmJSc21JejVXRVJL?=
 =?utf-8?Q?ZiuqkaeUxOECHEqPazIYfGU8qjDYLFg0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a05RLzhPUzRsWjV3M3dNYXo5WUFwQkpYWXhQZVJONy90SXRPeWhrLzNVdWdJ?=
 =?utf-8?B?a3pGaWZCTnJuTnFxNWRNdzR4UTFMRlJoS1RGdjYwM3FVaHRKc2ppb0RoaGoy?=
 =?utf-8?B?LzRpWkR3bURZT0hKUkg3MDZxc25JZVNIanlMMzlUdEVoYW9kQlkvMW1mcUJu?=
 =?utf-8?B?SkRnSWNUeUo2cHRINDJXNFNmdC8zeXNmT1JERzlnRDhNcE9qSy9HekZGNENS?=
 =?utf-8?B?WnN1Y1BINkxyNFd2dmFKNVlNbnVidnAwcXhDOWlxUHpFUmVsUW5sSVFvSkFo?=
 =?utf-8?B?cHJSWWovK3pVM25JcXVYN1k2YkZtQjV3VVVQV21zcUg4akgzemRCbVA3T0tY?=
 =?utf-8?B?ajNURHdXb282Z0YrZDVTZjU0SHljdGhVeGttcXMwMTcyaXJSN0tnQWhUWHF0?=
 =?utf-8?B?LzN1M01rUnUrQ3VvR3A1Z3B5R3NLV0J0aldtZ09zTWdLZ1RrbktqZEx5NHVZ?=
 =?utf-8?B?amxvdDN3K3lLZG4zUFYraUwvWGNycmhTMDB2WStUWjJIaXBIRnhkMW9qaERF?=
 =?utf-8?B?aVNqcSs3UU43WDNUb2xlVnpPdytHMDk5ejRPYUMvR3o1d045TFl3WkZuUVdI?=
 =?utf-8?B?UVdTc2c4V2MrSHM1ZXFHR3hqYVZiUVdsdW0vV0VrR0JGeis4NjJNckZZMVF0?=
 =?utf-8?B?b2pTdVFyU0g2c2FVR2ZscmZKUFBwTlFNcjBlN2dPZlNLS1ZRQkFHUHA0a1Jx?=
 =?utf-8?B?OWE3akdoZWVhdndNNmlRYldWNDZ6TkpHTkZ6ZVlaSjR2TVlaZDBta2NxdGFq?=
 =?utf-8?B?eXJ4dTUxdzVFMVpOUSt3VFAyUkVjdWI3eUV2bG0zMkpBYzZuMnNGcXdCZWNz?=
 =?utf-8?B?VlhmTllFRWY0SjBCRWhINkM4Sm9yeHhPQUl6SnZ2akVjTDRIUUFwc3RaYUZv?=
 =?utf-8?B?cjNkemVPME9ybVlnVXh0NFk1TjlyV1B3ZFMyUkdiTDJ5ZDhxY2xwYUF2UE5W?=
 =?utf-8?B?UUFidEZKaGZVSVhLVkJ5ek1qbmxsVmNOdHZhWkFGRGwydjhDVzl3Z3U2TWky?=
 =?utf-8?B?L3BPQnBBRC9oUTZHMXBQYTVhVGtkQkNVSnlrUENYblY1YkY3YnZQZ0ROL25J?=
 =?utf-8?B?OU1WNTNUZ0pQb0E0ZjZkNTJEOXlkc1dRdUxDbTZYZnRmbU1XRVpUQnBGVnhi?=
 =?utf-8?B?VE5SRDk1azkxM2E3Z05hUVl5MlVUVXpWejVHRFc5TFplNzVINC9EWSt1R25O?=
 =?utf-8?B?bkZZcjFWaGNabm5sei80VVBHZkdXUEcxdC9lR1F6RmlVWU82NDJaZ3FnblV4?=
 =?utf-8?B?eCs0d01uV2EzOTRPSzh3U1NncnNDOXRtNHo1Q29jbnhEUWJFTDdPbDJVVlpr?=
 =?utf-8?B?ZHB1Tm5iYVJLaXhYcG15aERsL0FVVEFXL1UzdDV4UEczWmF0Nk5iTlZpdHJw?=
 =?utf-8?B?VlVrM0IxUzJpSEM0aWdJMmNwT2JTaXU4OFFEZzVrUDJtYkRsNzFGZ25NVGRI?=
 =?utf-8?B?SmNDYkVtRkhHc1lpL05nY0VGR0ZMck5MbENESHpJSjZBWUdHcEJTY3lrQzNr?=
 =?utf-8?B?bnZCNnR0cExKUnlOSXllbzZqYVg5TE03dmdoVFA3NkZ0QXFDN3hqZG92d1hP?=
 =?utf-8?B?MWJ6di9FaGpZQjNmNFdIYTF6OVF1Smh2VjlYRkJRTS9aaW96Mjl0bmJmbzZY?=
 =?utf-8?B?Zk5oc1ZqSWZSLzhHT2l4Yno3ZDdaOGVDMkkvSVNpT3ROYmFuUnRaN1UxWU1Z?=
 =?utf-8?B?aGxFVVZYcjRkMFhOVmRGOEFnNzZ5dlU4TTBxMS80REl5dVBUVUkzK1B2NzB2?=
 =?utf-8?B?VUpJZnlsOGQyV1A4cFFxa2ZqanluRHVVTnNWdFlHYk5NMUZRejREYWdXYlJB?=
 =?utf-8?B?dSswOEVRYy9MOXcyb2IvM0dzbk01S1dGckp4R2RUc1o1NGZZMk5aZk9xL2NP?=
 =?utf-8?B?NWZja1lXMnkvUWN3bnJJRmxpSjlvdmN4MWhmbVlsMDQ3aGhhb0hJM3RKS0Mx?=
 =?utf-8?B?TWlPdzhtMGNWa0dvSm1jTTlBbkZHaDh6T2tyeC9ZaENIZXNjN2p6R2hHWGVR?=
 =?utf-8?B?T2dZTzM2R2pTZ2xtV0hOQmU4S2NRNVpFS20vdzVOV1VORVMvT2p2Ni9NS1gw?=
 =?utf-8?B?QWdKZnJMcXFCbDhRNERjODZ0MU5iYzVocU1aRUEwV0VDelhZcUVpT25wdWJT?=
 =?utf-8?B?Q0p2NENNUHZtSWV6S08yZlFTU1lNUUkyc3YvQ3FhQm9pMjZYQXFqbm1jU3Jo?=
 =?utf-8?B?SVhpSDQ5WENuZXJTRHFzMiswTU5GbW42Zkh4VUFGL2l3bXhacGdSU1pGZWh4?=
 =?utf-8?B?Nk1wQ2tjYWpBNVlOb0RhNjdpSHNBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8ED038E319256B4E975E4AE5B009CEF5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 508b60fa-30b2-48ba-0fb8-08dd6aa9c347
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2025 07:59:11.4134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ysvz/0MhuHc62qC/b/wCY/lPYPvuQceGw9ucfjj62bkpsFLbFUpTAz0+cEPqN0YYqvNVce1cuepHtVrF6R7fWBtsi+Jc0+YYbA13iZYK008=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7832
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

T24gVGh1LCAyMDI1LTAzLTIwIGF0IDAwOjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBMb2JmIGlzIGVuYWJsZWQgcGFydCBvZiBBTFBNIGNvbmZpZ3VyYXRpb24gYW5kIGlmIGhhc19s
b2JmDQo+IGlzIHNldCB0byB0cnVlIHJlc3BlY3RpdmUgYml0IGZvciBMT0JGIHdpbGwgYmUgc2V0
LiBBZGQgZGVidWcNCj4gcHJpbnQgd2hpbGUgc2V0dGluZyB0aGUgYml0ZmllbGQgb2YgTE9CRi4N
Cg0KTWF5YmUgZGlzYWJsZSBpcyB2YWx1YWJsZSBpbmZvcm1hdGlvbiBhcyB3ZWxsPyBZb3UgY291
bGQgYWRkIHRoYXQgaW50bw0KcGF0Y2ggMjoNCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmlt
ZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCA0ICsrKy0NCj4gwqAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBpbmRleCBiNDRhZWVmMzkwYTYuLjI1
YzQxY2Q2YWQyNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hbHBtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmMNCj4gQEAgLTM2Miw4ICszNjIsMTAgQEAgc3RhdGljIHZvaWQgbG5sX2FscG1fY29uZmln
dXJlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCQkJQUxQTV9DVExfRVhURU5E
RURfRkFTVF9XQUtFX1RJTUUoaW50ZWxfZHAtDQo+ID5hbHBtX3BhcmFtZXRlcnMuZmFzdF93YWtl
X2xpbmVzKTsNCj4gwqAJfQ0KPiDCoA0KPiAtCWlmIChjcnRjX3N0YXRlLT5oYXNfbG9iZikNCj4g
KwlpZiAoY3J0Y19zdGF0ZS0+aGFzX2xvYmYpIHsNCj4gwqAJCWFscG1fY3RsIHw9IEFMUE1fQ1RM
X0xPQkZfRU5BQkxFOw0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJMaW5rIG9mZiBi
ZXR3ZWVuIGZyYW1lcw0KPiAoTE9CRikgZW5hYmxlZFxuIik7DQo+ICsJfQ0KPiDCoA0KPiDCoAlh
bHBtX2N0bCB8PSBBTFBNX0NUTF9BTFBNX0VOVFJZX0NIRUNLKGludGVsX2RwLQ0KPiA+YWxwbV9w
YXJhbWV0ZXJzLmNoZWNrX2VudHJ5X2xpbmVzKTsNCj4gwqANCg0K
