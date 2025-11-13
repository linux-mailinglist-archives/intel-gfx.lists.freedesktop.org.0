Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B17C56206
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 08:55:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCD310E0C0;
	Thu, 13 Nov 2025 07:55:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUqZ6c/a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81D2110E0C0;
 Thu, 13 Nov 2025 07:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763020517; x=1794556517;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bawhb6jes65Qa6+NWE5C4uzDpEev46pD60aW0yPzBR4=;
 b=eUqZ6c/a+b6EnUTCqAWuRgdssgnoSjC+ULaiszAVlXDPFP7dxDreehPw
 ubp4dmzu4BkGYNufgkopY0AWWhPfeBVM6OlfviyFcewU6CCzNxFgWsaHR
 JpE5NLagtR+WybfgOhLJH23w7lKGnCpiEZZG6wr3RmuNA6rSTWzawAmYX
 VJChIMwc1glq9R0/tJAtTZK7ApyJ0uFIWspE1qSUs8UvhVAfQGy2ds1la
 z2wHTmRxtLLB+FrpBWq4gG0Je45rdjiCv927o6XmMCejAd8dwWkXgYfdz
 YPhnw/WLme/HpwqsFy5dIL1Iq10L+bLijM9ntNYM4Cp0ThdfBr3T4N4KM g==;
X-CSE-ConnectionGUID: RqCvmtKdS1usxaP4+LH3+w==
X-CSE-MsgGUID: CbzO//I4RcyWX60NzPe9LA==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="87738874"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="87738874"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 23:55:17 -0800
X-CSE-ConnectionGUID: GeWIo1keSw2FhWZwTw7pzg==
X-CSE-MsgGUID: P6k9TNTKTUWIfOtamPEG0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="189446896"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 23:55:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 23:55:16 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 23:55:16 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.71) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 23:55:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ttcn6jgqgm7lb/yLt3wbEAH6Zdxv6l/MTsMiKJOmQLYwwRKldsrCvTSgosN19LotcKXRXfWV+GulhBpCPYCKORp3gb2AzF+2fhCMdUS84uzGETe5o9yOIbZvSykS4FXgIEo+eV3WA9iBMA4EkunnKG9bsiYostosV1CC/yB2zLgAO0Vk5xQCrUkU7DbbHLvi1/XM1zoLxGOIj+JImJnqDuJBEubbNujs7XvQG6axtIHpw9VLUi/rpcTgJiDc6WUaDaNZSkrzmGEFaTnnfkZVgSJ7j+0LsbHTTaBfXHuXQaaobjBwIGuY8dVpGYW07mPOYnf23Aj/dH/mNS84tD2UyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CXedYRs2YAv3zfq2cmSej70ck9GP/jMm/7S8W0WIssA=;
 b=KWXB5STMDFz3Ye2H30Jz6QDrN3KtsmhhPl85vwzlk+dbfGtrYCZ7UBuPSOFPYpB7yMBFBpjKCqnxaBaS8pyQ00zrGXwVwSm8XWM4jEpiB15DNB0g0c7azJkOMAbkwwtf/QH9eFCqS0fXyMfRMwpWPK/QCrpaMLO1JL1ayoECL/dyfxYtWufsv8ZNKkKVjQs27eeJ3qaot1a/rZZBGqqBuToraXcRkOUx6PlFF3e3IWYpNUpRo81ZnFjBu3WIN8RWtZzZ4bJhieJ/xJuSIzuB9EpRNneaYvy/b5OnOEZCWQxlrYFIuFKWCPOzp5x5BN1TzOxPuIQT0iLhUt1wkEp25Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA0PR11MB4607.namprd11.prod.outlook.com (2603:10b6:806:9b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Thu, 13 Nov
 2025 07:55:14 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 07:55:14 +0000
Date: Thu, 13 Nov 2025 07:55:01 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Petri Latvala
 <adrinael@adrinael.net>, Zbigniew =?utf-8?Q?Kempczy=C5=84ski?=
 <zbigniew.kempczynski@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Ayaz A Siddiqui
 <ayaz.siddiqui@intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>, "Tvrtko
 Ursulin" <tvrtko.ursulin@igalia.com>
Subject: Re: [PATCH i-g-t] tests/gem_lmem_swapping: Run smem-oom helper loop
 in background
Message-ID: <dfaualx72dk55fq7bdo7tf5lpdjf6qgzjwgsk77yflgzaelwnq@jw4fjrwqwion>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251112104913.701052-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251112104913.701052-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: TL0P290CA0010.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::14) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA0PR11MB4607:EE_
X-MS-Office365-Filtering-Correlation-Id: 39f1cd07-bfc1-4a05-40a3-08de2289fabe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkYxV2ppN0p4L1I5Y1EwbWt4UnFCTWxhV0RLaWhIQzR6akh2RGtVMmk2OE5T?=
 =?utf-8?B?NUpqekorT3d4OTFmN1plamdseElieFRuWjZjWjk2ckVpT1l5ZGp3U1JsbzRL?=
 =?utf-8?B?VGlSK1B2L1cwdWIvbzlIUDJDdXlqVmpIUmdBc1NqTTVDeWVSQS80N3ZqM0dR?=
 =?utf-8?B?bHQ5Y3lZcmZiVDFTNDIxaXNFbmJqM2dLcDBCMUp4TVpzTDNscjFzSjhReXFx?=
 =?utf-8?B?ajl0WUtEanhYWWtBdEJXemlIMEkrQytDVVZ2d2h1WXBBZXg3ZE1ReUI4UnNs?=
 =?utf-8?B?a2Y2VnloeStsdFV6MlB1Q2I5ejhFUDd2RHA4MThSQ0ZFQnNUT29HVi81enJu?=
 =?utf-8?B?LzBGeGxVYzhYNm1nOGsxd3UyZmRWSnhaK2k0M3VvdW9JRmNLbXRIeHBRYjE0?=
 =?utf-8?B?bkVIaFEvN2o3eGIxMlV4MnFrU3VoTHRXZnlZL0xSOWxOLzRJVlZOUXZkQTdY?=
 =?utf-8?B?T1NPOG9Qb2RIVHZtazJvb3RHSXZEWVNvaG40aDVXM2tleXBPR29BR2kwWWJz?=
 =?utf-8?B?VUtYV1JyV3dGZUFZc1FUYTJURzNDTGNvb0RiYWh5SXNibjcrQWpzUVl3bGp1?=
 =?utf-8?B?U3VYU1BRQ3JlZ2g5cFdzS2c3dXdpOWtmNDQ1c3dJM01Qb20yWGJPblVDL0dM?=
 =?utf-8?B?QUVkSm5YWlZDY1Y3M1l4UkhUREJCdFErWHhOUk0vWWUzd241d3NITSs3M0JK?=
 =?utf-8?B?cFh0blRGcG8zOEZEbk1WUFVkSXpCU1JMNlhnQ05ObFhHdVdtZnUrZGtyUzRZ?=
 =?utf-8?B?MEhlMHpONTgrL0NFNUhITTk4N2JXMUxYK1puNko4eGVPem9OTVRIcTNmRm53?=
 =?utf-8?B?VXhub1lOaHIvVy9mZmZtT05XMUpzRnpYc293OVJ3MkNSSHZnSXNQN0VNTGNT?=
 =?utf-8?B?WklRalBSSHBXejIydnhtWWtNNE92V2NrU3RLZ2ZQSXVrNldwQ1JYbjlnV2NF?=
 =?utf-8?B?SVA5dTFMeERrVXFaQnRFZ3V1QlR2SFdRUmZ6WFJkZ1l2azhMQ1RxK3lsTmtH?=
 =?utf-8?B?ZmJBeUlBaGJxQlVDS0o4Yi8rSFR3SjRZTkVIS3hpRStVMGZvNnpSdnloeVBr?=
 =?utf-8?B?OWF2Y0pYbjkrWHJjOEZBMUFpT0VWellub2hLZmo4eG1zUDFnYXpnMmZXSkly?=
 =?utf-8?B?TGo3Vk5oQ09RSlI4TVNEOXNjdk0wWlFrcW8wM0E2TUNWK2I1VW5ESWdmc3lT?=
 =?utf-8?B?eE4yd3FQSWFkZU9BeDhMTUsxckNCdk40NS9oRnNoVnZ1cE41cEh6OUkxejVo?=
 =?utf-8?B?TFE3T2J4WXlxRUtTQTQwRVVzVFdNVnRCU2JYMVFORzdiUithdU1KdFhrWFZs?=
 =?utf-8?B?NGR3V2xTcTlhY3MyYWRYNVc3b2tybmEyUmsxVlhEd0Q2eTgvbjhBdWtmYkpi?=
 =?utf-8?B?WkgzT2FxUDBSaWdoWFpXZVFteGIxOWdudXJMemVWQldxMjZINm4ydE1INGVP?=
 =?utf-8?B?V3Jta2pGYlpXeEs4ZStiekN4bGg3bHdZd0VzWU95NWlxNkxDRkVkWnNiTWd2?=
 =?utf-8?B?QWF4czZmMXZyZ1A5Y2pwMDhnZFFDZlZkRjhGZnR2bkVISi9vNTEwR2hldjNp?=
 =?utf-8?B?b0g3a3lnb09DUnE2YkVyK09SQm1mNzNYalFkM1l3Ulk1N0xMVC9mcTNPQk51?=
 =?utf-8?B?UjI3Yk54OXNSbHpXa0dhbVlzamUxa1h3alp6TTRFNVpLT0NxOHcybzdJRlhI?=
 =?utf-8?B?WU9IOUc1cFg5clB4UEliNWdvNWVHNG5kdTBud21HTUpjOURjT1JSeGc3OHRW?=
 =?utf-8?B?cEphaUdydnRqekZNQndGY2JkZXdSbjBwWHAzaXp1MTZtNVBuWWRsc1R2QVhT?=
 =?utf-8?B?N0pqOGV6ZEZuU1pMb3p5Y0RnL2ZtaEl4akZQL2k3TE9tRUs1Wko0NjNlMVRq?=
 =?utf-8?B?TG1ibFI3YlprUVZSN3A2MFBIbzViYzlLaStPMktEOHN0Smc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmpiK3luQ0c4ZXBiYUd1N0ZyQ1p5THpBL3diMk9SRGJmOWdwUkhOODhBWjdB?=
 =?utf-8?B?NXFQSE9GQ0dhWHdzRW5MOGNoWmxPQnBhWmRrY3FHSzVnTldGV29CdFhreUJj?=
 =?utf-8?B?cE5oOThnT2oxZC8zVzl3SFQrOHlCMTZHNFFxVndhL1hjemZHSDNNYThJQm1q?=
 =?utf-8?B?bVdTTlVGaFBRZ1JEbW5LRVN1SXo2c1FKekNUVnZ1MVVZeUZuemhSYVZRWU1r?=
 =?utf-8?B?OHFVQUcwSDk5cmhkYUw4R01Sc1cwSU56WVJSRDJ1dU5Ia3o1dFZlUGJpcGFF?=
 =?utf-8?B?aWQ0cHV4NVBMcjBTYVB5TnNhdi82ODhwRW1tek1GM0tyUjBhUjFSN09Vb1gz?=
 =?utf-8?B?amVKV1JoVTd6ZEdFM3NycWFyVUZDbENLa0hNcTRKczJDRkxydk11S1FsYXVF?=
 =?utf-8?B?aEdXd053a0FhVHMrVkE3ZUxqT0s4WGxZZC9GQ2RWS0dWTnA3aFQwRTJQd2ZT?=
 =?utf-8?B?aVowS3djZnNOaG5JNnRxWVNyQW5aVk9FNkRQaFFTR0QvclVUVlg3alp5a1Fy?=
 =?utf-8?B?QmFQaXdaa3JjNDVBVEswa2Nza3d6UkxWKzRoZjhLeUtZbVBSeHk0RGZoT09N?=
 =?utf-8?B?cXNYdU9hZ1M0NXNZVVlkVDFUSGplNjhVazRXRDAvTTBpSFBkcVRZK0o4RjZk?=
 =?utf-8?B?RUJ4SERwbE1Jei8vazNRcFlEVDRycEJuem5YN1FvbFJESWRDckFXSm5wQXNh?=
 =?utf-8?B?UTZ0ZHFKMVlId2pjMmtvT0FDWWNMcGhWKzdtTTg0ZWx0WngyTUd2VGJZVFdH?=
 =?utf-8?B?SVBBc2x3ZW5SZWpud3d4d1E2RmhBYTdNVUx0ZXRycjA0djJiNEwvZEttc3pO?=
 =?utf-8?B?K2VTODFiRU42YUdSS1FqZnhYN0Z0UTFGNzA2NSswQ202ejJRZ1BiQW1hZTFH?=
 =?utf-8?B?c0ZSeDlSSFdnSmt2TzFqNkNvb1VpQ0ZyWW8xS3BrejVaMGt6ZmcybW1vODFq?=
 =?utf-8?B?ODV5WEtmNkI1WGU2Z0N5V0lmZVdiWnZrZ0NPYUJxT3lRZ2dYOGYzRGpVRzBR?=
 =?utf-8?B?c0ZjUmZTTlBCM3d3WW1JYldKbHdSS2RGWW5DeTdlbWlKQm1BN25teno2dnpR?=
 =?utf-8?B?TmJqQk1LOVlGV09UYmluSW1RWXF2S2V2bGpsQVFlRkJOQk1lK1BvMEpudU5a?=
 =?utf-8?B?K3YzYTRVYlpSTytob1NJNW12ZVVmcWg5L2RpZWh2djMxNkRUUHU0WGtmUWFm?=
 =?utf-8?B?ZVNOT3h5OEpJOUZzMmZmSjVXeE0vNitoZ2tNWlljaEk4WUtpRC9IR0RkOHRD?=
 =?utf-8?B?blJxSzJjc2tKb0lXenZ5UElrbUdnNHhPOUM4SzVzYVdCRWdzMUxGUTgwUmpn?=
 =?utf-8?B?ck00ai9KL3RYUFJwQzNsS0c2anBaWXEwUS9ZUW4yU08vb2NicVFic1hXczZF?=
 =?utf-8?B?L1FtQXZKVTVlVHJVMHo3eHNSWUpkeEdLK0tOQkxrc3cyUGRzME9iYlBkRkhl?=
 =?utf-8?B?RkJTYy9XRnl0dHRjcEZERGhqMW1BRVE5MzR2QWpLRFBWTy85MFAzejlqajNq?=
 =?utf-8?B?TVVJa24xSmVBQVNFQU11Y3NGaVRLKzlha3Bqc1h4M2xvUURGZXpENFVWSTB5?=
 =?utf-8?B?ZGFpVkRFUVZadGFIU3R2ZXZwNDFiZ0g5OEM2SkJRNVdBVU9YVFlxeXdFcmJi?=
 =?utf-8?B?bTFJN0JEb1B0ZmNMK1VKWjRqVUNUS2pvMUN1RWdtV2RWWGtBaVZaM05ULytl?=
 =?utf-8?B?MU1kMDZXeEQvc2crWlQ1Vnk0N3NlTzdaeEZwYklwTk1VcG96Q2tXMDA1Ylk0?=
 =?utf-8?B?WVRVTndTbURhelFDSTN6WmU3SS9KQ3BNSk9Ya2xNRmxJUzJ4ekh2U2ErUVhY?=
 =?utf-8?B?aU5FcE42cnNCUEQveU1BT0tZUHVzb0ZNNlhBMmNTTDdFZUpVSGg4aVU4M1Bt?=
 =?utf-8?B?YmhHVUVxVEZ4eEtKYnNkUkc5VER1TDB4NjBaTGNUSERUSHQxRDhGZmEyWlNK?=
 =?utf-8?B?N2VycUtpRlV1TC9ONmxPMzZwUTFxWnBVejNLeVN0alBkcG9USi9KWHZrRndq?=
 =?utf-8?B?d3E0aDh1Y1JpcTRRRlVob3lFVGltbzg2dllqRlEvTGdSUmZtTTdKQlhGVVpq?=
 =?utf-8?B?K2FpaUkvdXJTOHhIc2VpbldFb3FZMytkOU95VzVuK2wxZTZYRFczUklqZjU5?=
 =?utf-8?B?T1J1QTQrcldxTVhRcm5rZVRQVXp0c1BmeDh0S2lyMzlLM3RKVDV5NUpNc3J6?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39f1cd07-bfc1-4a05-40a3-08de2289fabe
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2025 07:55:14.7715 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RdHRKwjwbJzS/VKVB5gIwqoioP9HH0CFVm+DSKzNcX6I8BK8NJqv4K0/SdTWR21y3PuKj6v33XTtGGkktLzE3FyVEghHC3ZB9VplPZ89kQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4607
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

Hi Janusz,

> The smem-oom subtest forks SMEM helper processes from a loop run in the
> main process.  That loop is supposed to be terminated only when exit
> handler of a formerly forked LMEM process signals completion.  However,
I'd add "eviction" keyword:
...formerly forked LMEM eviction process signals completion.

> since the subtest arranges OOM conditions, the LMEM process may get killed
> and never signal its completion.  When that happens, the subtest may keep
> respawning SMEM helpers indefinitely and complete only when killed, e.g.,
> by igt_runner on per-test timeout expiration.
> 
> Instead of waiting form completion of the loop of the SMEM helpers, run
form -> for

> the loop in background and wait for completion of the LMEM process.  Also,
> take care of signaling the SMEM helper processes about LMEM process
> completion in case it has got killed and hasn't had a chance to do that
> itself.
> 
> This patch addresses timeout results reported to the below mentioned
> upstream issue.  Other failures (incomplete / dmesg-warn / crash) may
> need additional patches, but let's fix those timeouts first to get a more
> clear picture.
> 
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_lmem_swapping.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> index 8e0dac42d8..45bd94adbb 100644
> --- a/tests/intel/gem_lmem_swapping.c
> +++ b/tests/intel/gem_lmem_swapping.c
> @@ -678,6 +678,7 @@ static void test_smem_oom(int i915,
>  	const unsigned int num_alloc = 1 + smem_size / (alloc >> 20);
>  	struct igt_helper_process smem_proc = {};
>  	unsigned int n;
> +	int lmem_err;
>  
>  	lmem_done = mmap(0, sizeof(*lmem_done), PROT_WRITE,
>  			 MAP_SHARED | MAP_ANON, -1, 0);
> @@ -703,8 +704,8 @@ static void test_smem_oom(int i915,
>  	}
>  
>  	/* smem memory hog process, respawn till the lmem process completes */
> -	while (!READ_ONCE(*lmem_done)) {
> -		igt_fork_helper(&smem_proc) {
> +	igt_fork_helper(&smem_proc) {
> +		while (!READ_ONCE(*lmem_done)) {
Huh, so instead of having a single helper that handles spawning
grand-children for manual leaks, we had many of them. Since all
but one processes were waiting for lelm_done flag, if the lmem
eviction fork got killed, everything would spin indefinitely.
Good catch!

>  			igt_fork(child, 1) {
>  				for (int pass = 0; pass < num_alloc; pass++) {
>  					if (READ_ONCE(*lmem_done))
> @@ -730,11 +731,19 @@ static void test_smem_oom(int i915,
>  			for (n = 0; n < 2; n++)
>  				wait(NULL);
>  		}
> -		igt_wait_helper(&smem_proc);
>  	}
> -	munmap(lmem_done, sizeof(*lmem_done));
> +
>  	/* Reap exit status of the lmem process */
> -	igt_waitchildren();
> +	lmem_err = __igt_waitchildren();
By changing igt_waitchildren() to __igt_waitchildren() you
wanted to outline that this test is not supposed to run on multi
GPU systems?

> +
> +	/* Make sure SMEM helpers stop even when the LMEM process gets killed */
> +	if (lmem_err)
> +		(*lmem_done)++;
> +	munmap(lmem_done, sizeof(*lmem_done));
> +
> +	igt_wait_helper(&smem_proc);
> +
> +	igt_assert_eq(lmem_err, 0);
>  }
>  
>  #define dynamic_lmem_subtest(reg, regs, subtest_name...) \
> -- 
> 2.51.1
> 

-- 
Best Regards,
Krzysztof
