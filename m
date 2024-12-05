Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8379E4D7D
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 07:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4916310E263;
	Thu,  5 Dec 2024 06:05:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D3eOKuOD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 741A110E24E;
 Thu,  5 Dec 2024 06:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733378758; x=1764914758;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nASkzjXif2ltdKuF/Mtw0J8+0m1zF/1WiErlv4TGrfM=;
 b=D3eOKuODSBQbSyx2TYho4XL0zXqkHJGbNCEAyT8RVdKz4MLSC5gc/HEy
 AH5+GdQFrJ4aAO3obu3nVdpYVGt5J9OtRU4/vng2qAV+L8ofWSAkgUy9l
 IGWhwlM5XyVc9DdAI1D94c6jYB7edKP+I02GmFS7Pf0LP4i0zrkM0lE65
 baOgKC/Ih0D1g4dTBMWnAy/V0w2C6bUEP1IgVDIoq7jEujp15txznH+u3
 6E+Vin1pSUexfEkVi3E/JHCs9lKb5YmZTPcpEuOfURnjUfeguCYGzPc04
 9X3pm37dTHMeWp3TkI617D4ojfV3zpiPw5xZvUzg5dGCDEy3cL84awP5l g==;
X-CSE-ConnectionGUID: wSXJxJNGTKKqMVD5ctXw7g==
X-CSE-MsgGUID: 1Nk0ddDLRJieKisNCkpQ+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33413990"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="33413990"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 22:05:58 -0800
X-CSE-ConnectionGUID: uzNykFDbRveaVYN26ueCig==
X-CSE-MsgGUID: uyetxbXDQoulkR6lNTKPsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="93839270"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 22:05:57 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 22:05:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 22:05:56 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 22:05:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WjyxVmNIrK1gEjg149NokllBcPW77u9mC7TWkaL3nlsrUJylH8lAC5uojqVBbm9AV8YLnefv7LQLjPf8CaY4e3/Bh8mHd9lorxTWAiM+83Rr96Suw/xUA7rQWwRZAF52yvU/H4H/Yt3UGdMxuc2cdsakoCa5XImDvHjAS8ff9rT7pVmGmBqDUp8VMdl98IUIJXxiRcPVYqB3Q/dQ+oLkAnN9AIAhdQaf2hrMHQ7sBomyWZwBWWOSn2LL7Xua5Xx5GEanQ4dIpPSQk+6sgsU4rpQU+WJOajq+BjSm+flpemYliWrVK0LXelmkMlBSt1XGdxEEFUmmTNR3bQTRIKC09Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nASkzjXif2ltdKuF/Mtw0J8+0m1zF/1WiErlv4TGrfM=;
 b=lt8M82G28cTw4m+3IcHQnUAg27VSVofZ2qRjlkkRVBPuICBzQQE59XpCrZH1+SecHLa68P3iXPFAEjPxiskV2uMJe8gi7KZUz8d5bmnqGG75T00z7ohtFa5huW9OhF0rzPsECi3lZz6D3s7qBnBHDBOlv4UG4FeM2SCD+XA9ab8Dc3+PP7BMWSNhHKX9Pl9/76nROc7whKef6YtjSWEc5co0K0I7XIFslc+lyFxs7ceOBWQv3ECUZSh23iAxtQduej/4+CV0WB6LWcrxNBBEY9YdQTU3pthMjcgIV+rL0JOp2JiNC9GDDrQDuUrvISMyxdKKkBee4NsNM39mDsHVnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by SA0PR11MB4688.namprd11.prod.outlook.com (2603:10b6:806:72::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Thu, 5 Dec
 2024 06:05:54 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%5]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 06:05:53 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtOiByZW1vdmUg?=
 =?utf-8?Q?driver_date?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm06IHJlbW92ZSBkcml2?=
 =?utf-8?Q?er_date?=
Thread-Index: AQHbRmlsCXqn49mxf0GL6CAdoYshEbLXKP/A
Date: Thu, 5 Dec 2024 06:05:53 +0000
Message-ID: <CH0PR11MB54912D6192BF048962AF1AC9EF302@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <cover.1733322525.git.jani.nikula@intel.com>
 <173332941290.2565367.7669910611173295133@b555e5b46a47>
 <87wmgf1kig.fsf@intel.com>
In-Reply-To: <87wmgf1kig.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|SA0PR11MB4688:EE_
x-ms-office365-filtering-correlation-id: f3b8d16a-8e75-4a45-8c1f-08dd14f2e09b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VGd6eExJMjhtb0Fablh1LzAvT21LaGUxZ0hIODdpZzNKQ2UzUmtPaGR6N29z?=
 =?utf-8?B?ZlVTUnZPQWEwS0JoOEFydk5leE5KYUpSQ1liZGptTlZmcGtzTUlVTEQyeGJj?=
 =?utf-8?B?Wng3emhDWTNtM2VudjJ0RDlVYUI2VkhSSmsrTjRWNTdoLzhKZjQzRmlaTUk0?=
 =?utf-8?B?WkMrTUQwOEJLTUhsTVFrTkYwb2FCa1lDWW4yNktXYW9kZ3VYNS93QytneXI0?=
 =?utf-8?B?UkFya2VCTWFsV1k5OGdKZVllL29GS3NWWEVjY05mNlJHdlNuZG45MGpBUktT?=
 =?utf-8?B?NXZabWlVUCtORlNGNkxWZXF2dktDOW4xcU9TbytCRUNiUm9sZ0ozRCs3RHVi?=
 =?utf-8?B?QStyZDBvQmFRWStsTXJKV241U2dXdjg5YUVEaTNHNzU1ZWhneFUxTkZOQTky?=
 =?utf-8?B?Qk0rVGlNQWM3dTJnOHlSR2p2emxxZWZDcXRCSmxuRit6US90Nng2eWxjbFM2?=
 =?utf-8?B?bXRPTnl4dTBCRVRtbEZJc1l1MHdHdWNOUElGWUM4R0lWRWVKZTZBb0tIV3Nv?=
 =?utf-8?B?ck13YXpDRzJ0cXdXOFEyenNHQjgxNysxQ3hESExnNVBTZzdiZVRQUGdSUUkr?=
 =?utf-8?B?ekVMd3lFdTlKMTN5OXgvaFZvSkk0NVM3VzBpd0ZrRkttN2NEUlZ2Y2VrV2dZ?=
 =?utf-8?B?eUlHc1gvVlVmTVlpVStBREcrRjl6UTB4ZGRMUld4d3EyaTlqWktoOGxJeUVi?=
 =?utf-8?B?R2pjUjllNGpqNXZtcURvY3RCZWVDS3VtUHAyY0VSSUJhWXRHMURKQ2ZXWDN0?=
 =?utf-8?B?MmNwMzBsMlZKYkxOZUl4L1krTkNQYzhoNFZCUUJwZzIvUGFLbmxPckF0TElN?=
 =?utf-8?B?OS9nenJFbGhHU0RKSGNSekhoK0huY0ZDaXJTdWNPS05UY0x2cE1RYlZwTzh2?=
 =?utf-8?B?NTdxL1hiWW9EOUQ3YUZ6d3JZeWxITGx0K1BEK2hrK29IK1NzSFdvMjBWYzh5?=
 =?utf-8?B?OEVJM2ZSNGpkMzlBK0JDQWw1c0MyMHRmRnM4a28rMlQxR0JpbnpKejJVM0Fs?=
 =?utf-8?B?cXJjazRzWWV1d2tUR3dETjN4TTdDOFJDTFoyYlFwMS9iWm5IeENnbWVzejRH?=
 =?utf-8?B?U0wva3MzRi8xSWM5d1ZPT3lRbks5SE0zaVFqakZQaTZ2aW5TL2RGYVdPelg3?=
 =?utf-8?B?L0JHYlBEM09TMisrNDROYXB1Wk0waHV6WjJhVW5oMHgwNUttNmg4OVBhSTFT?=
 =?utf-8?B?cUV2Wi9Xc1BueWRKQ3FmOWRaSXlueXZvbmM5TWlvZG1hRUFEU0ZiazJOOGFD?=
 =?utf-8?B?WXRkQzREZXdmZXA5YXFyS1Qzc2VZQXBMN0RrQnBlakVLeTZKWkZFUXVHZnpF?=
 =?utf-8?B?Vy8yRWxycHdvOWozd2QvV0todDFpNDRlMUN4ZGVDaCtsR0oxNlVlMGlCa05M?=
 =?utf-8?B?dWpDY2JMM09LWE1JUEVoWCtWTlB3dEkvc1hraWZJa2FFZmxQeXEzc21Wa3dv?=
 =?utf-8?B?VzRzRmx3dmFnbnJJRGlLTkJDMVl4Y3prWEVEQUFSdFpRczFzVGM4ekdlSmFI?=
 =?utf-8?B?TDNnR05wVFpyeHZnck00RG40SVZvV3o0WFpZeVZ2WUs2eEJadzhDT2wrNWp0?=
 =?utf-8?B?N085aW96a3ZqTGxuY1gyQTQxN3RTS0xmVU10QWVyRXp1SDRSVjBwbDVPTW5K?=
 =?utf-8?B?aitCY2tTd05sb0pqZXdwcUQwL2RWdkVSMnc4SGJQdFJtOU1CZjkrOENadzNW?=
 =?utf-8?B?R1NySVNOVHBsbVZ3RUNNcnRDN0U2OXB2OGorY3J1eURIYmRWbVZxblp1NG9V?=
 =?utf-8?B?SmVNMzNselNhRzIzSUpzRVM2QU92dnNJaWdPeDZqcVZKaEtSMW9kMG5yRkZS?=
 =?utf-8?Q?wcRsFt0sqBQyecqeRo1btGwR8enYtEJ9RrAOU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFRKK1BlM0VIL2s0d2hhYXI2Ri8xeWZTT3VXTGQ2ZDY3SkhLTnk4R1c3VWYv?=
 =?utf-8?B?WVloaURBdFNiTURYUGtLYU53WWdlcVpabkZ5QVJUckEvT2Nnc2V6NFl3ei9X?=
 =?utf-8?B?WkpsQXQ1S0s1MG5rOXZwRWxkSnl2TUlHMlJQb0FqN3RaWFIwSi9BVmRtb0M3?=
 =?utf-8?B?dTh4S2d6OXJCcy9HbzlUd0dlTUl6VnZVSVVLNHJtLy9TalRaTXdQYU5KRWNP?=
 =?utf-8?B?RTF5Q0t1WWwwWTZ1ZDZRbGp5V1ZjYjV0TWpaSWI1Sk8rblQwL1ljeis0QVJs?=
 =?utf-8?B?ZHhzRlJhTnNnaE51amlmbDkvRUFSRnNDT3FFTkMwVlZlamJmYVJ5SDdwNFVB?=
 =?utf-8?B?K0w2aUZKb3pZQXF2ajNoNjJuUVFDTWFFRUNwVEcxaE9aRE8zQzZLd01HellE?=
 =?utf-8?B?dmVrb3lTQnI4dTh2c0diZmJmVUZMREdnUXAzRkdzR1hYU1Y2NHArNFR0VjZz?=
 =?utf-8?B?YUU1S0c5VmtxVHZ1U0lFMmFsRVRTNkE3NVVGckwzMVdlUmpqMlUrRVh4bS9F?=
 =?utf-8?B?VTBTd3QrTDV4VldBbVVNdDYyc2hZTmpYa2hVOUdQekh3SkM0Sk1rTjd1WlY2?=
 =?utf-8?B?KzNjRE1zY1lTMEhWT0k3UHR0dFdhVk41UWNqMTN2U2J6VVVEK05wdkJTb0h6?=
 =?utf-8?B?OFRxeDdIc1pRUGFoOGF5QmpzM21kZlRIL21BM2g5VHhyMkNSM0czK2svS2tt?=
 =?utf-8?B?ZE56T1UyRjNhTTRmblNPUXQ0em1zY2pqQTI5Yk5YU053a2p2ODF2VHprRU5Q?=
 =?utf-8?B?UlZra0ZlZSsxV3pUYmt0alVnbVMrQXVXMHV2bWFYOTh1RGw4c0MrZ0xmc1dw?=
 =?utf-8?B?YlFrOVB2dUhZRzlHc3ltd2lSRHZJWERIS2FXQ3Q4UG5xZ05GVzB4TEJtclJO?=
 =?utf-8?B?QkwrNnU5SzJJblFoM0Y5cDJsaVdYQTN4MFcrZ01TQjJwRHVyQmR0SG0wakh0?=
 =?utf-8?B?QXE1dE1IQlpSZjMvb2ZJNVdPVVRpTytjbk1jcC9PZTk4V2lwQU5uYTRGV28x?=
 =?utf-8?B?d2tQeXM1bzh6RGFqMmJtM0tlYzJpK3F6dEtDM0NPMzNqMEw5bW1OYmdOWjlE?=
 =?utf-8?B?U1Rpa2V6MTFKT1U5TnN0WlhjYlVIdnNUL3ZNZkxOMVRKaW9RZk0wd01zaTJR?=
 =?utf-8?B?U3BQTnJ2c2QzMUVHeDFtWEMwTWlLSWNsWHNPblp4RzZUY1hhNFUxTjBqbmRX?=
 =?utf-8?B?aHdtVHpzalRTc0FzbGhRanVUUTZhTDNKNHpJR2gxbk1zYkMxYUxNZ3FKYndC?=
 =?utf-8?B?dCtBUWdxa09XTFFSWVFkMndLU3Y0eTJWQ05uRXVNYzdvOVJ0L1FZaWNkY3d3?=
 =?utf-8?B?M0J3V28zQUx0RU02cGE1cEN0eEJQd29BTmp1L2M1TjI4aTBwU0V4SkphYTBu?=
 =?utf-8?B?RFRvd0J3bVdteHBGaXFudnp3aG9TN2xiS2lqM09YRkRFL09MUDBKZ2N0THFG?=
 =?utf-8?B?VVlLdGFaTnk2RFdXeGM1cW05ZXN5R0piRVlvRFJDVS9oaHNlTjZxS1hrVW1s?=
 =?utf-8?B?eDZYUDFXL0x3QWNVWFcwMXVRb0lrbCsrN3ZOWHIwdXJRQStPaFhvc3duNnRX?=
 =?utf-8?B?Vjg2WFZJTWV5VjZHNjNsdVZhZWdOV1BTUGpvSTBKWW9QODlKdXBiVi9VKzU5?=
 =?utf-8?B?WStPQXBoYmdqeFZXamRnN2wxYWxSbW54UlRBSW1GWmpKcXVHT1o5eTRHcmdI?=
 =?utf-8?B?WUh4T3ZiTEdmRHlHa1BrMTVJc2hSTkN0MGZkN0FrNklSbHg4WVhTWnJpQ0VF?=
 =?utf-8?B?ZHg2L01yV1cxbFFidFppcHphS3ZhUXhPRDg5RWFQL2x4dTh4cEc4ZmpqZ0th?=
 =?utf-8?B?azVkc0hpT0lxaHBPSlBPbUxnQXE4UUhpVGp3cE9YWm1PR2tDZklCczZCMjJm?=
 =?utf-8?B?MVhZN3I2MlVLTnJYdFZjWU9JUDRYZzl4SFp6MFFoSWFWT2RMMVFlRFlTYm5M?=
 =?utf-8?B?YmVBckpsb3FNaEU1UERXN1B5SGtiMlc1bGVhQW96M2pCb3J3TFpTbnpWMlZL?=
 =?utf-8?B?NE4xTFhKZldRVGRaSGtuN2NlaWxlZEdFVFIvR09PRExsZEZUWlU3NEhyNFk5?=
 =?utf-8?B?djVYVW56MjNQY3VZUVBodW9JUkFLdlltcCtMRXE3YnRRWnNJdFVTNFRaMjFC?=
 =?utf-8?Q?Fk1xN+ERzAqn3gLPfZ0hfkUOT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3b8d16a-8e75-4a45-8c1f-08dd14f2e09b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 06:05:53.9234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z9eJHWb04RJBr7Dlf3JmUyEjUPUt/Ud4fl2Zr9JcicX/avDYoE0vpyx64UcRIVtTwkhcLGWZGA8WaH5qnm924mMl49xgRfXwY74sVauZVN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4688
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

SGksIA0KDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0MjExNi8g
LSBSZS1yZXBvcnRlZA0KDQppOTE1LkNJLkJBVCAtIFJlLXJlcG9ydGVkLg0KDQpUaGFua3MgYW5k
IFJlZ2FyZHMsDQpSYXZhbGkgSnVwYWxseS4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
CkZyb206IEk5MTUtY2ktaW5mcmEgPGk5MTUtY2ktaW5mcmEtYm91bmNlc0BsaXN0cy5mcmVlZGVz
a3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW5pIE5pa3VsYQ0KU2VudDogMDQgRGVjZW1iZXIgMjAy
NCAyMTo1Nw0KVG86IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6IOKclyBpOTE1LkNJLkJB
VDogZmFpbHVyZSBmb3IgZHJtOiByZW1vdmUgZHJpdmVyIGRhdGUNCg0KT24gV2VkLCAwNCBEZWMg
MjAyNCwgUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4gd3JvdGU6
DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+DQo+IFNlcmllczogZHJtOiByZW1vdmUgZHJpdmVy
IGRhdGUNCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzE0MjExNi8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+DQo+ID09IFN1bW1hcnkgPT0NCj4NCj4gQ0kg
QnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTU3ODYgLT4gUGF0Y2h3b3JrXzE0MjExNnYx
IA0KPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
DQo+DQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPg0KPiAgICoqRkFJTFVSRSoqDQo+DQo+ICAgU2Vy
aW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0MjExNnYxIGFic29s
dXRlbHkgbmVlZCB0byBiZQ0KPiAgIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiAgIA0KPiAgIElmIHlv
dSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUg
Y2hhbmdlcw0KPiAgIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0MjExNnYxLCBwbGVhc2Ugbm90
aWZ5IHlvdXIgYnVnIHRlYW0gKEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0
byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGlj
aCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+DQo+ICAgRXh0ZXJuYWwgVVJM
OiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQyMTE2djEvaW5kZXguaHRtbA0KPg0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0NCAtPiA0MykN
Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+ICAgTWlzc2luZyAgICAoMSk6
IGZpLXNuYi0yNTIwbSANCj4NCj4gUG9zc2libGUgbmV3IGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0t
LS0tLS0tDQo+DQo+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZl
IGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQyMTE2djE6DQo+DQo+ICMjIyBJR1QgY2hh
bmdlcyAjIyMNCj4NCj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+DQo+ICAgKiBp
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV4ZWNsaXN0czoNCj4gICAgIC0gYmF0LWpzbC0zOiAgICAg
ICAgICBbUEFTU11bMV0gLT4gW0lOQ09NUExFVEVdWzJdDQo+ICAgIFsxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU3ODYvYmF0LWpzbC0zL2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVAZXhlY2xpc3RzLmh0bWwNCj4gICAgWzJdOiANCj4gaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMTE2djEvYmF0LWpz
bC0zLw0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV4ZWNsaXN0cy5odG1sDQoNCkxvb2tzIGJh
ZCBidXQgaGFyZGx5IHJlbGF0ZWQsIHBsZWFzZSByZS1yZXBvcnQuDQoNCj4NCj4gICANCj4gS25v
d24gaXNzdWVzDQo+IC0tLS0tLS0tLS0tLQ0KPg0KPiAgIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZv
dW5kIGluIFBhdGNod29ya18xNDIxMTZ2MSB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6DQo+
DQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4NCj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMNCj4NCj4g
ICAqIGlndEBpOTE1X21vZHVsZV9sb2FkQGxvYWQ6DQo+ICAgICAtIGZpLXBudi1kNTEwOiAgICAg
ICAgW1BBU1NdWzNdIC0+IFtBQk9SVF1bNF0gKFtpOTE1IzEzMjAzXSkNCj4gICAgWzNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTc4Ni9maS1wbnYt
ZDUxMC9pZ3RAaTkxNV9tb2R1bGVfbG9hZEBsb2FkLmh0bWwNCj4gICAgWzRdOiANCj4gaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMTE2djEvZmkt
cG52LWQ1MQ0KPiAwL2lndEBpOTE1X21vZHVsZV9sb2FkQGxvYWQuaHRtbA0KPg0KPiAgICogaWd0
QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6DQo+ICAgICAtIGJhdC1kZzEtNzogICAgICAgICAg
W1BBU1NdWzVdIC0+IFtGQUlMXVs2XSAoW2k5MTUjMTI5MDNdKQ0KPiAgICBbNV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1Nzg2L2JhdC1kZzEtNy9p
Z3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+ICAgIFs2XTogDQo+IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjExNnYxL2JhdC1k
ZzEtNy8NCj4gaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbA0KPg0KPiAgICogaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZToNCj4gICAgIC0gYmF0LW10bHAtODogICAgICAgICBbUEFTU11b
N10gLT4gW0FCT1JUXVs4XSAoW2k5MTUjMTIwNjFdKSArMSBvdGhlciB0ZXN0IGFib3J0DQo+ICAg
IFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU3
ODYvYmF0LW10bHAtOC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4gICAgWzhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIxMTZ2MS9i
YXQtbXRscC04L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPiAgICAgLSBiYXQtanNsLTM6
ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbSU5DT01QTEVURV1bMTBdIChbaTkxNSMxMzI0MV0pDQo+
ICAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
MTU3ODYvYmF0LWpzbC0zL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPiAgICBbMTBdOiAN
Cj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQy
MTE2djEvYmF0LWpzbC0zLw0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4NCj4gICAN
Cj4gIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjDQo+DQo+ICAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9h
ZEBsb2FkOg0KPiAgICAgLSBiYXQtdHdsLTE6ICAgICAgICAgIFtETUVTRy1XQVJOXVsxMV0gKFtp
OTE1IzE5ODJdKSAtPiBbUEFTU11bMTJdDQo+ICAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1Nzg2L2JhdC10d2wtMS9pZ3RAaTkxNV9tb2R1
bGVfbG9hZEBsb2FkLmh0bWwNCj4gICAgWzEyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjExNnYxL2JhdC10d2wtMS8NCj4gaWd0QGk5
MTVfbW9kdWxlX2xvYWRAbG9hZC5odG1sDQo+DQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
QHdvcmthcm91bmRzOg0KPiAgICAgLSBiYXQtbXRscC02OiAgICAgICAgIFtBQk9SVF1bMTNdIChb
aTkxNSMxMjA2MV0pIC0+IFtQQVNTXVsxNF0gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFsxM106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1Nzg2L2Jh
dC1tdGxwLTYvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFsx
NF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDIxMTZ2MS9iYXQtbXRscC02DQo+IC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91
bmRzLmh0bWwNCj4NCj4gICANCj4gICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2Vk
LiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcNCj4gICAgICAgICAgIHRo
ZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUp
Lg0KPg0KPiAgIFtpOTE1IzExOTg5XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMTk4OQ0KPiAgIFtpOTE1IzEyMDYxXTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2MQ0KPiAg
IFtpOTE1IzEyOTAzXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tl
cm5lbC8tL2lzc3Vlcy8xMjkwMw0KPiAgIFtpOTE1IzEzMTM0XTogaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMzEzNA0KPiAgIFtpOTE1IzEz
MjAzXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lz
c3Vlcy8xMzIwMw0KPiAgIFtpOTE1IzEzMjQxXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMzI0MQ0KPiAgIFtpOTE1IzE5ODJdOiANCj4g
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8x
OTgyDQo+DQo+DQo+IEJ1aWxkIGNoYW5nZXMNCj4gLS0tLS0tLS0tLS0tLQ0KPg0KPiAgICogTGlu
dXg6IENJX0RSTV8xNTc4NiAtPiBQYXRjaHdvcmtfMTQyMTE2djENCj4NCj4gICBDSS0yMDE5MDUy
OTogMjAxOTA1MjkNCj4gICBDSV9EUk1fMTU3ODY6IGM4ZGY1Y2FmMjc4ZGY0ZjljYTBhYmE2Mjcw
NDdjNWVlNDMxOGZjMGQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGlu
dXgNCj4gICBJR1RfODEzNzogODEzNw0KPiAgIFBhdGNod29ya18xNDIxMTZ2MTogYzhkZjVjYWYy
NzhkZjRmOWNhMGFiYTYyNzA0N2M1ZWU0MzE4ZmMwZCBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4NCj4gPT0gTG9ncyA9PQ0KPg0KPiBGb3IgbW9yZSBk
ZXRhaWxzIHNlZTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0MjExNnYxL2luZGV4Lmh0bWwNCg0KLS0NCkphbmkgTmlrdWxhLCBJbnRlbA0K
