Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CE0CB9291
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4067610E8CE;
	Fri, 12 Dec 2025 15:39:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GACfjnJV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E46310E8C5;
 Fri, 12 Dec 2025 15:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553970; x=1797089970;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=6rKeptRSBEdZDIxFiVNovFM226qmhR3OC2V35055zHQ=;
 b=GACfjnJVsI6XGcezKvc0oMotBhY86H7eS/58p/odnBOx5iNvUWXADpZW
 u++oGnh7BPpo4uorG3f2j8s345UPmILVX9NVyWfKnJJg9rv8tEWCUBmXS
 yHfBz8dJGSgouTlp7JgSdb1/wKPZ0Nv0KEhHlEQwsNUXecCMD6VVwDy3c
 PLnfv/taKfON3SuLKMzXfkL0OQ/sfDBw4LYbLkWLHxuEf6l+x56WyarDw
 9tbvWa4dcaWhPJf7675JgmMlHJcHHKvO+ZgoHEnJSSyuF8VaNyZi20Sdc
 3OfaL4Elvtl3F0w7SWheItTehZ7pprI4HW+rkGJVCEKif8ZCxOYG62XHl A==;
X-CSE-ConnectionGUID: IW6jLkRHQEyqV4MkI1LV0Q==
X-CSE-MsgGUID: 7u9En/eSRUGmnB/vxqM1mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78261007"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="78261007"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:38:09 -0800
X-CSE-ConnectionGUID: xo0N+u8tQlCkgdm9FcDA7Q==
X-CSE-MsgGUID: RDrFbvZpRe6YQy1nY9OQTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="202191962"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:38:08 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:38:08 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 07:38:08 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:38:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YxUuf2LEuszwwnz99o4aqrYQZC8LpgbjeeARbLUJIWutXbkKlElJOaCzHT5hqUYQ2OnTudvpTIFTnRuWEa7TSDspvmiBTHaEADDRW87Ru2/VbAqLWnO3rYSI1SyaOD5/wU98FvBQAKJwIxZdYMybFWNkeKaRwTqKcS7dIcgFEbObXnhUbiu51FE+3Z+SNXtSFeC2MqitFrG6S34ZN8VogIEUo4/ifgQqdIAkfhrrxIdHmEuVIl+K6gdg0OA/4FIqDYazF99ase+V8XI9qm5IIg4bc8zFfBm/OJC0nrQ9ATd4vXtSvX9vlnQ/MHcjgc4kMB3/R1xRt42XjqIXwpJSyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6rKeptRSBEdZDIxFiVNovFM226qmhR3OC2V35055zHQ=;
 b=JCFnRA20c1fLzY42C1YM92arQDniBb3gqGgMS5bFhHYEGYYGz+Bl7454PptpiZJnbo6Hp1C1cRtVd+IgiqoXHOdmySDB5bUZXHMmNUI5guRLt6zRd2RsDYFGCbBEyiLkSFHSf34ljfnRJvw8WWgQZDKJLxaPWiRuDqCuOS97MQ4P0pExtancpAV9v/Anko3lSfAU8Z+mgJQTwjJDLWL/8wA/V5fKuYamBQrI9WembJm8g8i4TfTWhXVEMsHNqckDV/1aSHT/fBwSMBrvUAiqyH2riQuWeiPm9FFNfKum3mtisX52o6iFR0bkYnTI2EjMUp8RVr1UGXLLzrp93Ve6iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH8PR11MB7990.namprd11.prod.outlook.com (2603:10b6:510:259::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 15:38:06 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 15:38:06 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 33/50] drm/i915/dp: Unify computing compressed BPP for
 DP-SST and eDP
Thread-Topic: [PATCH 33/50] drm/i915/dp: Unify computing compressed BPP for
 DP-SST and eDP
Thread-Index: AQHcX8ehR336rNgl2k+2wGkhKww1P7UeOwwA
Date: Fri, 12 Dec 2025 15:38:06 +0000
Message-ID: <c6068171744192b745dd93059b11c3996061eaa3.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-34-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-34-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH8PR11MB7990:EE_
x-ms-office365-filtering-correlation-id: c0434f3b-66fc-492a-e214-08de39947220
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?NUZ4N0JiNFZOOHd1YzdZbzlLbHl6QTRTQVlMUmFOSGpoeEVuNTF4RFRkTVl6?=
 =?utf-8?B?cnJCWGdrTDlKd0dGWlpCUUR6WkpKNTZ2L2dXUWt1ZUhnT3B0Q3hHYnRvZE45?=
 =?utf-8?B?UG5WL3FoamZhb1RzYWJCRTdNQjYvaW1OSVhrdmhpYkdUdFZDOHRVQzBjZVlJ?=
 =?utf-8?B?WGF1dmY3M2RtMWx3WWo1VzNSTDlTRjF5MUR5QjZxYUV5djBUZ3lhdTFiL3dG?=
 =?utf-8?B?TGdrR05yT3ZSZGJ0ZTBlc2dkTFdTSnNFZ1JCNjIwUm1kNTArWGV0aUxCcUFZ?=
 =?utf-8?B?d2lDaFJaVUJ0aG5jZC9LbDdjNkdUWVIzRHFCOFlpQTh6VklaZUVtV1Y0OHB5?=
 =?utf-8?B?Smk5cDlsTkFsSXZ3UkVJMlJ4UlJyNHNUQkxjUDVyVXdvaWFzNkhTbTE1SWdM?=
 =?utf-8?B?UTRCSm1TcVNjdDJQMjlyVVF1MzEzN2k3cm1rNWlRVTQ1RHIvcmh5L1ZCbFEv?=
 =?utf-8?B?QTJOMU93dkNaRS9ML3cvY2tsSlZIcU5idSs4QU4yQ0wzRlpick5iSjFhTmM5?=
 =?utf-8?B?QnZSc2VaYW1BSm1zeXdPSmFWeVFobUNHVUJDNU50aGdrdmJlNWhteUJCejVS?=
 =?utf-8?B?eExRV2hiandiTUpxZWtnakdYc3hWTGtYcTVYeHgxZmRIdGdXTkFsbDhvWndt?=
 =?utf-8?B?NnErakxLU25UbzVGZjkzUlpERlM1MTFhMCtmS2JNVlFoVmhIeVY2cEdTNmEy?=
 =?utf-8?B?TkU2Y29ITEtxelZuTGg3ZFVQemp6R255U1ZVV2UvbG1oRWhvUEJrVmNTenlP?=
 =?utf-8?B?Q3dyVDBJOWVWd3IxMnN6TlRQQUc2N2FxdGF1U0RYSWlXZll3bkgzbjZTUW1Q?=
 =?utf-8?B?VDFxaVFvYW1NUnMvbmdyWm9RMFpDY3lKQ0tML0xjR24xOGZiYWhRZWNtQ01k?=
 =?utf-8?B?VzhHL2RXK2Z0WFJPa0lZcjFFRUtCZkpnekt4Q1crVkRzZkxNLzh6YVZlczRO?=
 =?utf-8?B?ZkJDSitxTDlnVitmeGg3ZXNHeTI5Rkk4WE5pcnEwSVRCRjJKdkVXSmZUSUJ1?=
 =?utf-8?B?a3c4ZEw2eGgvZDhBUm4vNnlSSFFjeE51L2IxbGlmR0dna254blNQekRZc00r?=
 =?utf-8?B?TDFPSEpFbUcxeXJJVVY5dmxNNW9pOVdHNUVsQmRSSUV0ek5IbmtVV3g1UTQ4?=
 =?utf-8?B?U0V6bDVvNmxhWFJjQlBKVkdzU25uSmlMNitpSVBGa3h0R3BBT3hZWjVPZG5Q?=
 =?utf-8?B?c210aXBPcmIrMHB4cExzMnZqaks1UE9VbXErVE9EWmlBYlhSUUtGS21McVhZ?=
 =?utf-8?B?S1pDUk9NUW83bGJTRE11djZYTlRrcGhtY1ZZMERpT3ZEVklkbldtOENWdERp?=
 =?utf-8?B?OFhnMnZHYnFza3kzNmYrUlcxM0tYNjFhSnFyclhlaTNWb2d1MnE1QThISC80?=
 =?utf-8?B?ZzE2dGcvK295TjZLaEZmOWR4cVM4WEFyYW5IT3BWL2NmM0g5a3RkSW1hZWNJ?=
 =?utf-8?B?YkZDM3ZkVGdPcHpaMzRjUHEyNXFoTHNCQW5nV2cydC9UMEFMR3RBUTROTDdo?=
 =?utf-8?B?RERGdis2WG5PV25KQkZzTGRONVRFcXVvaFdTanpDL08wOEZjRzNMUFdtVWIw?=
 =?utf-8?B?SGJCR0dLYTdPcldjY0JCUFEvdTBETVVGbHhmK1lGaHNNWmNXTzRFOHlGREkx?=
 =?utf-8?B?aFpxSVdtKzhVakNBRmNMM2IwRjVYRTlST1l6cXQxdVpjb1ZuSmswdEdWS0Na?=
 =?utf-8?B?L2srbFBJRWJDQ1E2TnpOdnlSYTZNY2w2TDZlWG1YSXIyb2hMRXFXdnRWSGRK?=
 =?utf-8?B?MVJsRVdMRjdQbGRDN0dUVjZHb1hkZVlkU1J2aldFaGZzZ21KYXZTc29lV3FB?=
 =?utf-8?B?aFljTW0xbnErcXFaRy8yOHpsNUwyaEJYTmUvc3F1anl1ZUVzUjJENUVTZlY2?=
 =?utf-8?B?Y1A5SUozUStWZDJYRjVTVTA5K1dEMWdGSG5NKzV2dDdsa0M3WVFaeVc1ZWpD?=
 =?utf-8?B?U1Y3UVZ5Nll1eGJkaEFUTVVaY1NheTNWUHBjVUFpTWNnbWlwNWZNZVRhd3k0?=
 =?utf-8?B?MSs3R1E1TXRpNndIallGajkwSGU1aFdjNGhyeEZMTStLVGlvSFJzWWZPRVpw?=
 =?utf-8?Q?v0Aa53?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VkRRRnlNTHArYkl6MHVTQi91bE5TaHhvd0RBa1JVVVpwekNiYnRIbzZORlo5?=
 =?utf-8?B?MEt0aWdiaUVCeUdsUGZONTc5TUdwZ3Y5am1qN0FYTFpDNitGTXk2UG5ldzRr?=
 =?utf-8?B?a2V5d0d5ZE80WXZzazZPeWNIZDlybUdIY2NIK1dDSUdaQjJUSExYUEJzdWlZ?=
 =?utf-8?B?M0RibjBBL0hNdnVwZVZsQUNhbTdmVStadzUyQXA4V1k2M1A1UCtKNG16b1lm?=
 =?utf-8?B?Umd1aW5tSVBpRm83QnZiYytZTmpHOHFRNEEyclBJcFdyWEx5Kzh6UWgwckR4?=
 =?utf-8?B?dmIyeVdlTjlkRVpEVkVaaU1LbmxTQ0ZEeFRmYURqbVkzM0V6MjJKbTRuNGxC?=
 =?utf-8?B?QUUzMU56TzYvWFlNMzh1a3hRQ0d5T1F2Rlk3K0w5VHhjTXVJWHQ5Y051Slpa?=
 =?utf-8?B?cEkzZUZLR3pZaDVyR1FWc2xPeWtXMnF5RTc0Wkd3QXlqOXJ3N0xmUjhETUpR?=
 =?utf-8?B?T1EydklLc0V2dG9yN3hzZk1OSnEvcEZzSXcvOXNLSkkvSXpQQ3o3RmIyOGRF?=
 =?utf-8?B?M0tSUlA0dUtvNHg5czFkbG9vK3pneXBpVE1CMDBQZzdPdmpqWUprVjd6UHlq?=
 =?utf-8?B?S2ZQd0lFWVBWWEVwSkZjbG42c3Z6N2NqaGtBSit4Vk1kQXJ3OWg1NHhQRHdF?=
 =?utf-8?B?b2FDOHl1OGp0UFVRRnloaFBMMWc5QmUvaTJ1a2JOR3ByN1pqLzc2ckc1V0Jv?=
 =?utf-8?B?WitBaUFDdFg5d2NPM3NFRHNEdXdjcWROeWhlTW5LMDlZZjdIRmFqZXV6alZY?=
 =?utf-8?B?ZHh1ZzBwT1F1ZFlyWHMvTi9FU0lKU2s1eXcrWlFSVnJiakxQOGhCdW5MVkxl?=
 =?utf-8?B?UjdoYkVaaW0rcFNoeXVzTkt0cFdBTXpyMm5TUStFMSt2ZFdETzBzRnBWRFdZ?=
 =?utf-8?B?eW5TdUxOdHdHU3I0WG11Q080Vmk1MzVXN08wc0pzbXZwd1BQZURqM2JVaERa?=
 =?utf-8?B?WTJnZFgwY3VnNkxZL3NxbzBlMGpidUhxdlloRUVzSFd4ak9KTUNMUENkaVo5?=
 =?utf-8?B?eGlXN2xWS09ueUlXeDFxZnJtN3lkZzI1dmZNaS9YL2Ntdmx6QS9KR2JqVTcy?=
 =?utf-8?B?a3RYaVJlR1dqZGVqcWpJQlMzdmIyQ0s2UFg5Y1VmMHc4djNEOWZESnk1cGdJ?=
 =?utf-8?B?aGQ3eWpQSlhTa2EwQVZBdjMzazhFV0pCSXAvcUN5SUF1RWlNOHdsSDB3cHJ0?=
 =?utf-8?B?Q2VFWEh0RlBYdWpXa1hhL1BWZTByNnFmSG9kbG5pSFA1U2RCUXEvWmJIMGZr?=
 =?utf-8?B?VXhTdVR4ZFhyNEdIYVY5YndkazVTOXNJSEZpQWlMRXdja1d2WGYxQmdrVC9J?=
 =?utf-8?B?NW54cTQ5NndEUGtwVXlPZExNZUFjUmo3SHNhblZCN3MyRkFjV2l3cVRvc0hY?=
 =?utf-8?B?T1BJMDkvNnJLNHdLZXNlNGZRM29GK1JWUTlneldSQ2VMdHVYYm9KV3dJM2kv?=
 =?utf-8?B?NTI4M3FXSXVPSmlzRVNPNk85dHhnOXM5UU80bVVFeDVMd21JYUtyQUZQSnNj?=
 =?utf-8?B?WDdaY2FQdFlxRitCZ2FHcXRoSS9UWWM5VVVKd0d3dDlFdU1lNVJNTExUK1RL?=
 =?utf-8?B?MkVLeG5QZkxmRjRUSEx4bi9JdzJTMTNsbllUVUlhMnM0UU1vVnRUTm1tRHNt?=
 =?utf-8?B?d2pvazBxT1cxekR2OEsyT1ZVV3hSNk45TS9SUG9qYWNWeUNhNmJTdWx3VW15?=
 =?utf-8?B?cDRWZHlsRzVpRDIrOFNpakpJc3NLQW9HNGtKdUorbkZ6Y09DOVQ5ajRwaGNl?=
 =?utf-8?B?YVo4ZHFUWWtMWitXQmprajJIc1hScHpUSGZpZjJzRXplY0h2K3AzbGtXdmFD?=
 =?utf-8?B?LzlNdGhpajhkcDNySzVZVXdVWi9qRWJhWWZjMjkzZlUwTXc1ZXB2ejVadC9x?=
 =?utf-8?B?cWNmUlA1SHZDRzR6OE83Tld1SUl2b1pRQ1B4bDA1cTlQYUh0WWR4cE0rRVhJ?=
 =?utf-8?B?N01OdmhkNjR1Wjl5WU8yUlNySHRHZ0oxbzdrN2l6cUl0S0F6N3F2Y0p3RG5N?=
 =?utf-8?B?MnQwd0hreTd5QWp4SFBCT24xVDYvWi90bmlvOWhuYTU1cjdnc3BsN1pZMU1K?=
 =?utf-8?B?d3VEYUFmOWNmYUxHUXZhdlZseHl6Um50ZkJOTjZid3doY29hbFM4Vm9PcU4v?=
 =?utf-8?B?Z3FtUkZvWHBrSFUyVVpxSkN6aXZReHowODBub2Uwa1psd1dyUGV3OXByWVNU?=
 =?utf-8?Q?ZwArj6HNPJqfQOQdVSggLn0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <100438D8EB13FE4D9098EE5F8391A93A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0434f3b-66fc-492a-e214-08de39947220
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 15:38:06.5306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f726ushRjAAEsUAgDWMiqRepxw3MOvEUWXlPHDkDQ6LTWqvaKO9UX+FhvufSSD/1aVCh53PD7quhvqZ9gRN0+/DHtLqFVAUKAd1DrkoE0yo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7990
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE1v
dmUgY29tcHV0aW5nIHRoZSBlRFAgY29tcHJlc3NlZCBCUFAgdmFsdWUgdG8gdGhlIGZ1bmN0aW9u
IGNvbXB1dGluZw0KPiB0aGlzIGZvciBEUCwgYWxsb3dpbmcgZnVydGhlciBzaW1wbGlmaWNhdGlv
bnMgbGF0ZXIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyB8IDIxICsrKysrKysrKysrKystLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmlu
ZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggYTkyMTA5MmU3NjBiNS4uODEy
NDA1MjkzMzdiYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiBAQCAtMjIyNiw2ICsyMjI2LDE0IEBAIHN0YXRpYyBpbnQgZHNjX2NvbXB1dGVfY29tcHJl
c3NlZF9icHAoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqANCj4gwqAJbWF4X2Jw
cF94MTYgPSBhbGlnbl9tYXhfY29tcHJlc3NlZF9icHBfeDE2KGNvbm5lY3RvciwNCj4gcGlwZV9j
b25maWctPm91dHB1dF9mb3JtYXQsDQo+IMKgCQkJCQkJwqDCoCBwaXBlX2JwcCwNCj4gbWF4X2Jw
cF94MTYpOw0KPiArCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB7DQo+ICsJCXBpcGVf
Y29uZmlnLT5wb3J0X2Nsb2NrID0gbGltaXRzLT5tYXhfcmF0ZTsNCj4gKwkJcGlwZV9jb25maWct
PmxhbmVfY291bnQgPSBsaW1pdHMtPm1heF9sYW5lX2NvdW50Ow0KPiArDQo+ICsJCXBpcGVfY29u
ZmlnLT5kc2MuY29tcHJlc3NlZF9icHBfeDE2ID0gbWF4X2JwcF94MTY7DQo+ICsNCj4gKwkJcmV0
dXJuIDA7DQo+ICsJfQ0KPiDCoA0KPiDCoAlmb3IgKGJwcF94MTYgPSBtYXhfYnBwX3gxNjsgYnBw
X3gxNiA+PSBtaW5fYnBwX3gxNjsgYnBwX3gxNg0KPiAtPSBicHBfc3RlcF94MTYpIHsNCj4gwqAJ
CWlmICghaW50ZWxfZHBfZHNjX3ZhbGlkX2NvbXByZXNzZWRfYnBwKGludGVsX2RwLA0KPiBicHBf
eDE2KSkNCj4gQEAgLTIzMTgsOSArMjMyNiw4IEBAIHN0YXRpYyBpbnQNCj4gaW50ZWxfZWRwX2Rz
Y19jb21wdXRlX3BpcGVfYnBwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJCQnC
oCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQ0KPiAqY29ubl9zdGF0ZSwNCj4gwqAJCQkJCcKg
IGNvbnN0IHN0cnVjdA0KPiBsaW5rX2NvbmZpZ19saW1pdHMgKmxpbWl0cykNCj4gwqB7DQo+IC0J
c3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0NCj4gLQkJdG9faW50ZWxfY29ubmVj
dG9yKGNvbm5fc3RhdGUtPmNvbm5lY3Rvcik7DQo+IMKgCWludCBwaXBlX2JwcCwgZm9yY2VkX2Jw
cDsNCj4gKwlpbnQgcmV0Ow0KPiDCoA0KPiDCoAlmb3JjZWRfYnBwID0gaW50ZWxfZHBfZm9yY2Vf
ZHNjX3BpcGVfYnBwKGludGVsX2RwLCBsaW1pdHMpOw0KPiDCoAlpZiAoZm9yY2VkX2JwcCkNCj4g
QEAgLTIzMjgsMTIgKzIzMzUsMTAgQEAgc3RhdGljIGludA0KPiBpbnRlbF9lZHBfZHNjX2NvbXB1
dGVfcGlwZV9icHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJZWxzZQ0KPiDCoAkJ
cGlwZV9icHAgPSBsaW1pdHMtPnBpcGUubWF4X2JwcDsNCj4gwqANCj4gLQlwaXBlX2NvbmZpZy0+
cG9ydF9jbG9jayA9IGxpbWl0cy0+bWF4X3JhdGU7DQo+IC0JcGlwZV9jb25maWctPmxhbmVfY291
bnQgPSBsaW1pdHMtPm1heF9sYW5lX2NvdW50Ow0KPiAtDQo+IC0JcGlwZV9jb25maWctPmRzYy5j
b21wcmVzc2VkX2JwcF94MTYgPQ0KPiAtCQlhbGlnbl9tYXhfY29tcHJlc3NlZF9icHBfeDE2KGNv
bm5lY3RvciwgcGlwZV9jb25maWctDQo+ID5vdXRwdXRfZm9ybWF0LA0KPiAtCQkJCQnCoMKgwqDC
oCBwaXBlX2JwcCwgbGltaXRzLQ0KPiA+bGluay5tYXhfYnBwX3gxNik7DQo+ICsJcmV0ID0gZHNj
X2NvbXB1dGVfY29tcHJlc3NlZF9icHAoaW50ZWxfZHAsIHBpcGVfY29uZmlnLA0KPiBjb25uX3N0
YXRlLA0KPiArCQkJCQkgbGltaXRzLCBwaXBlX2JwcCk7DQo+ICsJaWYgKHJldCkNCj4gKwkJcmV0
dXJuIC1FSU5WQUw7DQo+IMKgDQo+IMKgCXBpcGVfY29uZmlnLT5waXBlX2JwcCA9IHBpcGVfYnBw
Ow0KPiDCoA0KDQo=
