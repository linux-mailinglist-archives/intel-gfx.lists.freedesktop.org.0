Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0BB9019ED
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 06:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FD8110E133;
	Mon, 10 Jun 2024 04:46:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b2Y/MWoY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5345E10E133
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 04:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717994800; x=1749530800;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=flEJvATO4k99ZP/PfYXTUA15dEUcJ9oxPMGhyUxX2BY=;
 b=b2Y/MWoYr9SASlHK4Du556uwYH53jy752XwJED+fEtok+pjnv0a6TERr
 f1UGnW1oFxV4AvEJ2GmjldSCKA+hY3XqjGOpxuqlLi8iTnM7dxybVasmU
 7HYxwigkiVMGMg5RCZhptimDnQOHXz9d53cUp/uOFa0xOxEQ96fWV70JW
 MfBve4cJVMWrzGDlZvFB4/SaS6h7ZQb+FuZzZvu8ye6ukmu4j4bRD1k8a
 lOezxjXLqzjKyrvdRw8Ryjx36YlOmq6fbSauJRUQaDKt+iw/t384lkiyK
 dlsJmCpGK/4LRCtmXP7F39IXcP9/f2hLt7+0NUfcVZyddDplwQpu+1V9W w==;
X-CSE-ConnectionGUID: cO20v+5+TC2mQh/TyBv+vA==
X-CSE-MsgGUID: avBhk90MTh+9gfNonLM1Gg==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14436920"
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="14436920"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2024 21:46:40 -0700
X-CSE-ConnectionGUID: IJHbR42mQhyHrj6CuJJv0A==
X-CSE-MsgGUID: 4GBKZP9rTzi4u49DegLrdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="39063859"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jun 2024 21:46:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 9 Jun 2024 21:46:39 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 9 Jun 2024 21:46:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 9 Jun 2024 21:46:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 9 Jun 2024 21:46:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lJHkBd9xngXfSH+1bdM5kpGzXSQFkhFYy7RSfQJQBzjhltci4OVbOuarQru9CYY9vblVdCZzKgbFI+xl3x9o8EeMLFuP6PTP9MggdhlKcKy/MuJMn0Jwn6W3wehV3Nl4GpArWZVxTdlrM9A6RGpGO2RrZ8/CEJlJTuMdUwbxnBkSOnJ12spyNwMH0MRD2mQnlPoYDRCL3DE8QJuLbnT+/JWtZ9fCV8I+xPZoRsAeVExJtiVYN1npPelM4EdpsuBE3WpmJoFSxM7Nb89PYP8tbkGEVaukslCrxzkCTGMHKccS5CM2Fcm0z0n2R2buRG/Qg4njaK54nCxZ1s6GNGcewA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u8OoNF2BxKKtei3AP+Zhc0Db09rGr2C5UV2HeXCDK44=;
 b=HocRmtNueibpsZzgVtKeKNBssQTfOOuuOndrGrb64LqGXQr0p0ZLobKRTXO22nmFs90OPf299ByVmDL7Fia311xSJQKLwO9XM1IAR4zcS6VB24V3FO/hB1KhVTuKMS4Dtw2FMnJECIOxeHbW5DXOUtpebjBT7xIG/DtVbQrr6n0mWllbhG2SUbBYZUonvoO6CdcQjkSTb7/e38d5m9XxcQBHyn+MwfhfbSh5WOHUpL791K7Am9A7I9bRTo2XCO8Sl2IFFT2bllby7UBgeWUsiC8gVhHKbgwRcF/YP2yfxIIw4ZvLlXXxAYpPdjWgqxjvz6hz0qAyvVgsbT3Md8uAmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB8108.namprd11.prod.outlook.com (2603:10b6:510:257::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.27; Mon, 10 Jun
 2024 04:46:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 04:46:36 +0000
Message-ID: <e9edd862-3c7d-4639-931c-d594e5bc5024@intel.com>
Date: Mon, 10 Jun 2024 10:16:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 2/9] drm/i915: Separate VRR related register
 definitions
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240610024825.823096-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240610024825.823096-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0011.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB8108:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f6901c9-a809-4c45-ab1d-08dc89084f21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V3BZYXhSdFpCcjErRFptSzdUTEowL09ua2IzajZlVStPQW5RZ1NtMmY3dkxQ?=
 =?utf-8?B?TzBhNUowS0plaHM3Q0dRa3JWYjdTRHdNK0VCQkRHMkFNaUkwNHhIa2hIN04r?=
 =?utf-8?B?aHgyTG5NSDE4WXNpZHNDNXdnQ09HeFpCbXpZQ1RLQ0svWnc1anpCelgrTE0w?=
 =?utf-8?B?Vzl3eExSbWIxMU1ON2lIVk1uWGhaclNsZjRNS1J0aVRXNVdMcStNZmR5OElv?=
 =?utf-8?B?Q2Q0bUFHWDY4UHhRODJHeXVaSi8wRE51YWhyVFk1L1JTeG13WVh6V1FnN0M0?=
 =?utf-8?B?ZXpYU2NtTTVxdU9KTnk2SE54NXVRZEZGNTVDTGx5U3Rwb3lSU2ozZ2tmNVd5?=
 =?utf-8?B?VGk3YnNwWjdNUFZoVXBBbTdaZ2JMUGJjNWE5YmwwUlZUMjVySWREUklGdWRa?=
 =?utf-8?B?ZWV2d2REVEJSTC9VQWovN0pFdlpsKzdkNG8xWmxuZlhVOEViSCsrNlJObHdz?=
 =?utf-8?B?L1RWSWNOaHBPc213MisxRjFsdERiK3JyUmR0Yk9zeDcreHRuaXNjaEFXMTNH?=
 =?utf-8?B?ZHBkUFo4TjVSaDNWZlpwMHJ0eXlyZjE5OTFGY1FvbWhVTlBBcEJ0SEtvZ0xZ?=
 =?utf-8?B?cmtUOU8rUEdIbHJzMENBcjJTYVNHeXpYWEJkblJVaThLZmxTaFhITjlVNDFW?=
 =?utf-8?B?aG1PV2tjV1EzK0ZRZ3dzM2hCNXR2ckZ0aU9sVkU2MjNBbm1rczlHbDl5K1RX?=
 =?utf-8?B?VUMzM1NVbjBCREVCdmJUN2xWSzBPQm1xdDJNMUVsdjhjdXROdEdIZ1VwK0Ju?=
 =?utf-8?B?OVVHSjRwbU04N3pOYVl5QlJHWFJIQU9MT2N5VDQ5bFo5Y1ZCcDBQZVQvR0ph?=
 =?utf-8?B?V0JVd1hmd0dRL2R5MklQam1xWEsrS1NSbzJ2T3loYkdLenA3RTJBdkpDcGJV?=
 =?utf-8?B?TkpNM0VtV1RwZG8vU1VXZzJXRkg2RGxINWdTanlzQitla0ErM0J1djR4akd3?=
 =?utf-8?B?dkRockIzS0RLTUhWektSUGMrd2JmZ05OdU1GazFVVDVMbmRZOVY0NVIyQUpw?=
 =?utf-8?B?Rm5IdmZrYUFtRnNSaGdYa09yV1RlbENFS0pocEwzSFE1UFdlZjdqd1dRVEJG?=
 =?utf-8?B?RTlyMUQycU5HelNmMVExMlorK09MT0plUHBON2NnUjFvNU1IcW5kVDduRUZn?=
 =?utf-8?B?c21SKzJMMHRhaWMrN3VnWDliQ0FzaVcybWpZeUE0S21DWHFSVE40Y3llS3Qw?=
 =?utf-8?B?S1orTlJ3SlY4MmJjb2M3VTg2UURKVkRBTHNNR3FuOEVMcnFiMTZxUkRmRTBB?=
 =?utf-8?B?cnQwWGZ2UC9KMXVkUkFmYXB5ajY1WTh3MzRHMmpvSjd4ZlMvSnBFalNWYkh2?=
 =?utf-8?B?V1oyRHZjZG4zanVuR0F5ODhraGg0Y0hjNEtjejk0R1Y2VEl5dXRrZkJoZitH?=
 =?utf-8?B?ZXR2c3Vwd3hYYjdYbFcxU3lpWFdsb2k2N2xpU1pqUDJ4WUNuV2hrdFFpSTA4?=
 =?utf-8?B?RDhsa0QwcEZwWkZ4SW5OK2F6enpMYkdobDNDbStocVNqN3BvVHVQbklNYWJQ?=
 =?utf-8?B?RnVrcGNwUHJCbFJlRTNvU2NjVHJHbE1xalY1d1Q1akhTUW1kTHZ0VU84NTE4?=
 =?utf-8?B?UE5hSDFNdWNrK0tQTHRITTI1eFRXa29uMWEyVHkzd0tzTHREU3hnVlFkS01Y?=
 =?utf-8?B?Y0RHUGg4ZU1VdWtaQW5COXJDZXJld1RJdzFyaVRLMDh4eGlNNURRVDlreDFx?=
 =?utf-8?B?UENsalROVHZMVXI4QWlDNmg0UzFtQm1nK2pPNkI2cEp4eEh2aTNza0RNU2g4?=
 =?utf-8?Q?HCywJvFyj+arvPDoA2nCo9SDlCBeJrfS15ObaWU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWtvd0FGTzBHUEEyVE1ZUW5PSHFOaUQyTFVyNVBMUXdTOUpSUW83TWp4N3hG?=
 =?utf-8?B?UHBoSUZ4VytRdUkxaFk1SVFDdFd4QVF1V2cxTWMvWmxoQWRrUmZNdTdWQWxD?=
 =?utf-8?B?Z1BBN2ZCT1lFMFpFMkpISmNCMEJLaW1zU3RsNlNyQW5XTDd1ZG9JK2dhRXJy?=
 =?utf-8?B?MmRCbWovRVNXQWhXNzVHRjVwTkZyZjhsOWxaNUFwcWlzVDVCd1V4ZVNkWGZi?=
 =?utf-8?B?MUhTaVhJRUc4SzdQMzN5MWdyUTk1WkNuKzZ1dFJZWlUrTldUQURKM29rbm1n?=
 =?utf-8?B?Z3ptbGZaRmNWeHZ1aVZyaXFTK3JMajlZRmxJWnJqdUt0L0hQQXFKSjR3TUVX?=
 =?utf-8?B?STRqbWo4UGNocXovajErMXlVQTRTbUQxbnBuRlppbUJqdDJ6MmsxZ284d3Nh?=
 =?utf-8?B?UzVVb3I4RFdETGRwWHF0MkVGVmM2ajY1WUJqQ2Ryc0pUNmpUa0E3dWRGZThP?=
 =?utf-8?B?Q0lTckp1S3NVU255YWtOaHhuVk13VWNXSTVQbDZPRjRTWHFrY2tVYXVKSWV0?=
 =?utf-8?B?ekQyTTMzQUgvaDBVUWRSWDhiMDZVQlA1V2x2QmM1eVpiWWplSmliZkZmZGNi?=
 =?utf-8?B?M3RqeXRMOFlNclN4cmVPSWFaRm1vU0VVNVFSME9VVnc5R05aMk5ES2RFaHBW?=
 =?utf-8?B?emtHZFBWK3A4OFUwMWU4Q0pRUFRENVpBcDU2SW9iNk1tZHZvZFYrWk1oeFlH?=
 =?utf-8?B?aXZkekloK2N1SWJ6WG0yYjM2cjBNN2JmN1hxNCtQQ3lrOVlOaUpsS04zdFJq?=
 =?utf-8?B?Z1lTbTNoakFPZTQzMTg0Q0tCR0czU0RHRTFlZEphelRja2o5T3QwcUZZUWJu?=
 =?utf-8?B?UWJGcGMvZ0tvdzZNMDVDaDFxR01GRGdqWU14OU1IKzhxVVptTjU5R3Nmb2hp?=
 =?utf-8?B?Sk83ZVByZ1Vrb0hpZHRCNjRUYWIwc2JSS0xZS2cweUMyK3FXR0ZiRGQ3MjJM?=
 =?utf-8?B?UUtncFVKUVRxR21xMlpFZlVlTmoyREF6TUxlR0QyUXZiNVk3MVpqaTJCdWhJ?=
 =?utf-8?B?a0RGWHhwY2w2a1RTb0tEWERPRGNrZWYzamRUemRhelVrRVd1dmU2SC9LL1Z3?=
 =?utf-8?B?Z1lxa2xhcjd3NFFvRys0VTBreS93cTRKVklVUWRHTERQbkNyeW5BNkVmUTNy?=
 =?utf-8?B?dEJRczh2MjZmNXRuRlZ5TDlVTUVBQndtVkdyR3dmeFNueGl5NjAwNU5VWWds?=
 =?utf-8?B?WUd3U1B5V3VySEhzNno4b2Z4aHBrRHdNa2tHQmFjNUh5QzBJRDZ6MFUvdS9J?=
 =?utf-8?B?Sk8ycUVydW8wWnNXd2VGeVhQdTU0QnozMzBXOG9XVmlDbVhCdFMzc0dyNWdS?=
 =?utf-8?B?L1lQYUh1RnByQ1VnVjkxWUdLQklFUVJrKzcvN09mcWprVUhDM0poRUhsYXRX?=
 =?utf-8?B?aVNBSWJ1RmJXQTFYYkY1K2RoT1h0RS9uS0FYcEFRS3pHcWNid2ZqcllJeHk5?=
 =?utf-8?B?NUNuSTZ2ZnZMb2NOQUdCUkcya1RTZlVOUmY5RExnSU5SeEFLQUJqbXdaUjJn?=
 =?utf-8?B?ZEhMeEZBanhhWktjdnZOVGNwMzRFVERVejNyaCt6MzV0QVBrVnEyWkhZY3JV?=
 =?utf-8?B?UEdNZEVVWkNGV2RDTXdKU0VhWU9VQ3NZbjVNQk9HOHV2ckFvcnVoVFh0UGVW?=
 =?utf-8?B?ak85bnNUZkxYQ3N2VFZZYW1BaEpBWGJ5K2pETHVic1o2ckM1WmpJS3NtcDBG?=
 =?utf-8?B?Sm83Q01FYkV3cFFPdWpLSmRDSlVhUS9Ealk3b0lPWnBINzZPNTB0LzJ6UjhX?=
 =?utf-8?B?czM4ZWpDaUNOaGRBaGxPQVVkYnluOVFXQmRqeGsvb0I5REl4Z0cyazR1L2JX?=
 =?utf-8?B?NTl6TEhQZ1I5VE1BUXV2N0lFakxuQXZkV0QvSHU2aU9IQnVYNXJtQUFxU2s2?=
 =?utf-8?B?Rjl0MTNodmdIZGgwc0Fjbzc3ZjJEU1NmZTNoY1NUbjQra3NGZnVMaHQ3MGZG?=
 =?utf-8?B?SEJCdUhSeFNnUW1NR3VzTHVuQXF2MnNsTEFYY0pYdXFxNHV6dGNGMVYxbERO?=
 =?utf-8?B?N0lvMGNiWGw0ZjBQUHNZV20zUk9QcXAyaEN4czE5Ny9VdCswdlFuRE5lSktJ?=
 =?utf-8?B?dncyWTQ0SWRKUE9uN09EaXRKVjdUeDJpVTBVbE04NUNvVzZqSndrTTF0MEJk?=
 =?utf-8?B?ZnlMbS8yZzVCWmozbzNYWDZGSTJzY1R2bE0razZUMWpWNm1RTlAzRVROU2dw?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f6901c9-a809-4c45-ab1d-08dc89084f21
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2024 04:46:36.1347 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ItP9ZUM7IbIm2muOkVkL/1PMWQJdHPAQt5fZwIwn5U7+SCp8wJ3/Gfk/oeYD4W9oOgOyw+ToRQ2MgOwc5LvMQ7XbI37TXIX8moetG6XLlrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8108
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


On 6/10/2024 8:18 AM, Mitul Golani wrote:
> Move VRR related register definitions to a separate file called
> intel_vrr_regs.h.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c      |   1 +
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 111 ++++++++++++++++++
>   drivers/gpu/drm/i915/i915_reg.h               | 100 ----------------
>   3 files changed, 112 insertions(+), 100 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_vrr_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5f3657aa8313..871e6e6a184a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -9,6 +9,7 @@
>   #include "intel_de.h"
>   #include "intel_display_types.h"
>   #include "intel_vrr.h"
> +#include "intel_vrr_regs.h"
>   #include "intel_dp.h"
>   
>   bool intel_vrr_is_capable(struct intel_connector *connector)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> new file mode 100644
> index 000000000000..c3237d5c38df
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -0,0 +1,111 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_VRR_REGS_H__
> +#define __INTEL_VRR_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +/* VRR registers */
> +#define _TRANS_VRR_CTL_A			0x60420
> +#define _TRANS_VRR_CTL_B			0x61420
> +#define _TRANS_VRR_CTL_C			0x62420
> +#define _TRANS_VRR_CTL_D			0x63420
> +#define TRANS_VRR_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
> +#define  VRR_CTL_VRR_ENABLE			REG_BIT(31)
> +#define  VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
> +#define  VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> +#define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
> +#define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
> +#define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
> +#define  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
> +#define  XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))

The above 2 lines seem to have some change in space, as per git show 
--color-moved.

But other than that, patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +
> +#define _TRANS_VRR_VMAX_A			0x60424
> +#define _TRANS_VRR_VMAX_B			0x61424
> +#define _TRANS_VRR_VMAX_C			0x62424
> +#define _TRANS_VRR_VMAX_D			0x63424
> +#define TRANS_VRR_VMAX(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
> +#define  VRR_VMAX_MASK				REG_GENMASK(19, 0)
> +
> +#define _TRANS_VRR_VMIN_A			0x60434
> +#define _TRANS_VRR_VMIN_B			0x61434
> +#define _TRANS_VRR_VMIN_C			0x62434
> +#define _TRANS_VRR_VMIN_D			0x63434
> +#define TRANS_VRR_VMIN(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
> +#define  VRR_VMIN_MASK				REG_GENMASK(15, 0)
> +
> +#define _TRANS_VRR_VMAXSHIFT_A			0x60428
> +#define _TRANS_VRR_VMAXSHIFT_B			0x61428
> +#define _TRANS_VRR_VMAXSHIFT_C			0x62428
> +#define _TRANS_VRR_VMAXSHIFT_D			0x63428
> +#define TRANS_VRR_VMAXSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> +						_TRANS_VRR_VMAXSHIFT_A)
> +#define  VRR_VMAXSHIFT_DEC_MASK			REG_GENMASK(29, 16)
> +#define  VRR_VMAXSHIFT_DEC			REG_BIT(16)
> +#define  VRR_VMAXSHIFT_INC_MASK			REG_GENMASK(12, 0)
> +
> +#define _TRANS_VRR_STATUS_A			0x6042c
> +#define _TRANS_VRR_STATUS_B			0x6142c
> +#define _TRANS_VRR_STATUS_C			0x6242c
> +#define _TRANS_VRR_STATUS_D			0x6342c
> +#define TRANS_VRR_STATUS(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
> +#define  VRR_STATUS_VMAX_REACHED		REG_BIT(31)
> +#define  VRR_STATUS_NOFLIP_TILL_BNDR		REG_BIT(30)
> +#define  VRR_STATUS_FLIP_BEF_BNDR		REG_BIT(29)
> +#define  VRR_STATUS_NO_FLIP_FRAME		REG_BIT(28)
> +#define  VRR_STATUS_VRR_EN_LIVE			REG_BIT(27)
> +#define  VRR_STATUS_FLIPS_SERVICED		REG_BIT(26)
> +#define  VRR_STATUS_VBLANK_MASK			REG_GENMASK(22, 20)
> +#define  STATUS_FSM_IDLE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
> +#define  STATUS_FSM_WAIT_TILL_FDB		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
> +#define  STATUS_FSM_WAIT_TILL_FS		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
> +#define  STATUS_FSM_WAIT_TILL_FLIP		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
> +#define  STATUS_FSM_PIPELINE_FILL		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
> +#define  STATUS_FSM_ACTIVE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
> +#define  STATUS_FSM_LEGACY_VBLANK		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
> +
> +#define _TRANS_VRR_VTOTAL_PREV_A		0x60480
> +#define _TRANS_VRR_VTOTAL_PREV_B		0x61480
> +#define _TRANS_VRR_VTOTAL_PREV_C		0x62480
> +#define _TRANS_VRR_VTOTAL_PREV_D		0x63480
> +#define TRANS_VRR_VTOTAL_PREV(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> +						_TRANS_VRR_VTOTAL_PREV_A)
> +#define  VRR_VTOTAL_FLIP_BEFR_BNDR		REG_BIT(31)
> +#define  VRR_VTOTAL_FLIP_AFTER_BNDR		REG_BIT(30)
> +#define  VRR_VTOTAL_FLIP_AFTER_DBLBUF		REG_BIT(29)
> +#define  VRR_VTOTAL_PREV_FRAME_MASK		REG_GENMASK(19, 0)
> +
> +#define _TRANS_VRR_FLIPLINE_A			0x60438
> +#define _TRANS_VRR_FLIPLINE_B			0x61438
> +#define _TRANS_VRR_FLIPLINE_C			0x62438
> +#define _TRANS_VRR_FLIPLINE_D			0x63438
> +#define TRANS_VRR_FLIPLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> +						_TRANS_VRR_FLIPLINE_A)
> +#define  VRR_FLIPLINE_MASK			REG_GENMASK(19, 0)
> +
> +#define _TRANS_VRR_STATUS2_A			0x6043c
> +#define _TRANS_VRR_STATUS2_B			0x6143c
> +#define _TRANS_VRR_STATUS2_C			0x6243c
> +#define _TRANS_VRR_STATUS2_D			0x6343c
> +#define TRANS_VRR_STATUS2(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
> +#define  VRR_STATUS2_VERT_LN_CNT_MASK		REG_GENMASK(19, 0)
> +
> +#define _TRANS_PUSH_A				0x60a70
> +#define _TRANS_PUSH_B				0x61a70
> +#define _TRANS_PUSH_C				0x62a70
> +#define _TRANS_PUSH_D				0x63a70
> +#define TRANS_PUSH(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
> +#define  TRANS_PUSH_EN				REG_BIT(31)
> +#define  TRANS_PUSH_SEND			REG_BIT(30)
> +
> +#define _TRANS_VRR_VSYNC_A			0x60078
> +#define TRANS_VRR_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
> +#define VRR_VSYNC_END_MASK			REG_GENMASK(28, 16)
> +#define VRR_VSYNC_END(vsync_end)		REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
> +#define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
> +#define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
> +
> +#endif /* __INTEL_VRR_REGS__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a10591424338..df58cf38e144 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1147,106 +1147,6 @@
>   #define PIPESRC(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
>   #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
>   
> -/* VRR registers */
> -#define _TRANS_VRR_CTL_A			0x60420
> -#define _TRANS_VRR_CTL_B			0x61420
> -#define _TRANS_VRR_CTL_C			0x62420
> -#define _TRANS_VRR_CTL_D			0x63420
> -#define TRANS_VRR_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
> -#define  VRR_CTL_VRR_ENABLE			REG_BIT(31)
> -#define  VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
> -#define  VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> -#define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
> -#define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
> -#define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
> -#define	 XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
> -#define	 XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
> -
> -#define _TRANS_VRR_VMAX_A			0x60424
> -#define _TRANS_VRR_VMAX_B			0x61424
> -#define _TRANS_VRR_VMAX_C			0x62424
> -#define _TRANS_VRR_VMAX_D			0x63424
> -#define TRANS_VRR_VMAX(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
> -#define  VRR_VMAX_MASK				REG_GENMASK(19, 0)
> -
> -#define _TRANS_VRR_VMIN_A			0x60434
> -#define _TRANS_VRR_VMIN_B			0x61434
> -#define _TRANS_VRR_VMIN_C			0x62434
> -#define _TRANS_VRR_VMIN_D			0x63434
> -#define TRANS_VRR_VMIN(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
> -#define  VRR_VMIN_MASK				REG_GENMASK(15, 0)
> -
> -#define _TRANS_VRR_VMAXSHIFT_A			0x60428
> -#define _TRANS_VRR_VMAXSHIFT_B			0x61428
> -#define _TRANS_VRR_VMAXSHIFT_C			0x62428
> -#define _TRANS_VRR_VMAXSHIFT_D			0x63428
> -#define TRANS_VRR_VMAXSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> -						_TRANS_VRR_VMAXSHIFT_A)
> -#define  VRR_VMAXSHIFT_DEC_MASK			REG_GENMASK(29, 16)
> -#define  VRR_VMAXSHIFT_DEC			REG_BIT(16)
> -#define  VRR_VMAXSHIFT_INC_MASK			REG_GENMASK(12, 0)
> -
> -#define _TRANS_VRR_STATUS_A			0x6042c
> -#define _TRANS_VRR_STATUS_B			0x6142c
> -#define _TRANS_VRR_STATUS_C			0x6242c
> -#define _TRANS_VRR_STATUS_D			0x6342c
> -#define TRANS_VRR_STATUS(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
> -#define  VRR_STATUS_VMAX_REACHED		REG_BIT(31)
> -#define  VRR_STATUS_NOFLIP_TILL_BNDR		REG_BIT(30)
> -#define  VRR_STATUS_FLIP_BEF_BNDR		REG_BIT(29)
> -#define  VRR_STATUS_NO_FLIP_FRAME		REG_BIT(28)
> -#define  VRR_STATUS_VRR_EN_LIVE			REG_BIT(27)
> -#define  VRR_STATUS_FLIPS_SERVICED		REG_BIT(26)
> -#define  VRR_STATUS_VBLANK_MASK			REG_GENMASK(22, 20)
> -#define  STATUS_FSM_IDLE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
> -#define  STATUS_FSM_WAIT_TILL_FDB		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
> -#define  STATUS_FSM_WAIT_TILL_FS		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
> -#define  STATUS_FSM_WAIT_TILL_FLIP		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
> -#define  STATUS_FSM_PIPELINE_FILL		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
> -#define  STATUS_FSM_ACTIVE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
> -#define  STATUS_FSM_LEGACY_VBLANK		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
> -
> -#define _TRANS_VRR_VTOTAL_PREV_A		0x60480
> -#define _TRANS_VRR_VTOTAL_PREV_B		0x61480
> -#define _TRANS_VRR_VTOTAL_PREV_C		0x62480
> -#define _TRANS_VRR_VTOTAL_PREV_D		0x63480
> -#define TRANS_VRR_VTOTAL_PREV(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> -						_TRANS_VRR_VTOTAL_PREV_A)
> -#define  VRR_VTOTAL_FLIP_BEFR_BNDR		REG_BIT(31)
> -#define  VRR_VTOTAL_FLIP_AFTER_BNDR		REG_BIT(30)
> -#define  VRR_VTOTAL_FLIP_AFTER_DBLBUF		REG_BIT(29)
> -#define  VRR_VTOTAL_PREV_FRAME_MASK		REG_GENMASK(19, 0)
> -
> -#define _TRANS_VRR_FLIPLINE_A			0x60438
> -#define _TRANS_VRR_FLIPLINE_B			0x61438
> -#define _TRANS_VRR_FLIPLINE_C			0x62438
> -#define _TRANS_VRR_FLIPLINE_D			0x63438
> -#define TRANS_VRR_FLIPLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
> -						_TRANS_VRR_FLIPLINE_A)
> -#define  VRR_FLIPLINE_MASK			REG_GENMASK(19, 0)
> -
> -#define _TRANS_VRR_STATUS2_A			0x6043c
> -#define _TRANS_VRR_STATUS2_B			0x6143c
> -#define _TRANS_VRR_STATUS2_C			0x6243c
> -#define _TRANS_VRR_STATUS2_D			0x6343c
> -#define TRANS_VRR_STATUS2(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
> -#define  VRR_STATUS2_VERT_LN_CNT_MASK		REG_GENMASK(19, 0)
> -
> -#define _TRANS_PUSH_A				0x60a70
> -#define _TRANS_PUSH_B				0x61a70
> -#define _TRANS_PUSH_C				0x62a70
> -#define _TRANS_PUSH_D				0x63a70
> -#define TRANS_PUSH(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
> -#define  TRANS_PUSH_EN				REG_BIT(31)
> -#define  TRANS_PUSH_SEND			REG_BIT(30)
> -
> -#define _TRANS_VRR_VSYNC_A			0x60078
> -#define TRANS_VRR_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
> -#define VRR_VSYNC_END_MASK			REG_GENMASK(28, 16)
> -#define VRR_VSYNC_END(vsync_end)		REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
> -#define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
> -#define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
> -
>   /* VGA port control */
>   #define ADPA			_MMIO(0x61100)
>   #define PCH_ADPA                _MMIO(0xe1100)
