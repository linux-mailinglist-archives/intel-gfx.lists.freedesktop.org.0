Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77784B916BC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 15:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFAD10E1C2;
	Mon, 22 Sep 2025 13:35:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A6dFSv1R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43CD110E1C2;
 Mon, 22 Sep 2025 13:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758548145; x=1790084145;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vIGrmrCSHSyynRAuCN/Evwj/dvgbcA2/E39XCNp1nsA=;
 b=A6dFSv1ReIh58wab0fJaKeMLseEDwz9vYlJBsM310UiVwpLuwMxZnNDq
 q/WIpzAzYakJWvcAZ73lSHIeqxFclRI9b+BhCAbocBnpYf6135CO3trWE
 2u8f65uMPUL+z13Be1vlHZ2IauqqljVFfR2bXCrAguOQv3KKK/d6NUWNW
 L72hSDmAb1fTezqO3QXwjjPX3nwXmrNiZNyinzO0o21gojSAOvTqiasEI
 74DaL7kj2kPn742TmPVu89kOSC+wGsrz3oVbCtruRBIAM+frTdxmR2RpQ
 35Uv2rbZ5tSZG67Dmo5eum+YleIR+RicoVyVUqyaB7eCK+/bZC90Ddpum w==;
X-CSE-ConnectionGUID: 0Kbr/tJpSCWz9ycR01NiIw==
X-CSE-MsgGUID: 48eZy/RjTi6f3i3qq46Muw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71055627"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="71055627"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 06:35:44 -0700
X-CSE-ConnectionGUID: RL9Ld5sDQ4+NTUMTinTB0w==
X-CSE-MsgGUID: Z8NBPHEdQM2oCq83cEt1nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="207432888"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 06:35:43 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 06:35:40 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 22 Sep 2025 06:35:40 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 06:35:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M2r8jEDI4irbR2SyLQYkFX9v8My9Eukjau6OKmNQGPPj1Ok5P+ocTBQXgwRDR/DRNS5HqkrmcOVA3SwI1fUKSmF80tNIo2KEHfyYJ2R7HO5tJ62qg0H2rSn67Tc2DgYqHyVttJ+yl2XNed7II4y03RHlcoAY01lgTUTk/FsRqWDL6d+lxrwEDAS04I2DXKM4mqVT9Uvtt0v2diSUHnRiJxEHsimycFv7OI4A6lvEwqC791cUGSL+DJBK7RHnssCCRQXrvDYRln8albJAvZ7EWQbioKS0Vrik9IcBYMj5uA7jo9F0V0M2MJ9e7I5dHsXtl5sB0J6/GC0CGRI6DMIMPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PxA1g+JzbxWzFTyx+1C3ZksS4eAJcqSsh/Tpyul668Q=;
 b=Pk457x6lp9V+TWTV/8k/ihIhRiew0OzWAqOw8CMBjt/xHR+iuKDLLaK7TOqLsK09AfY7izKDPx/BQIZmILmnX0HTU+g4djVl0vYKyieR8MZAdiFq3cuous3eshq7ejWuQtZb3Ta5DO2EvQw6Q8jvXBO4K8G4zHjPcMcN4mfgoSeGhwaBzgmW2J+coLACZJjy2mG61AVj0Mh8jKsusQ/Ph+IWvFuPZB5SLZRroI8wZlFig56rl3ttY1YHP07mD7L3eo5A9KRgrsAieQ7ODFV5kwUE5P844Pp+b3cniWNJZ+EqA11+lYZI9C4i2Lc7N6ZUXezIrYN36n63mvx8VIVdWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM3PPF83579A393.namprd11.prod.outlook.com (2603:10b6:f:fc00::f35) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.18; Mon, 22 Sep
 2025 13:34:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9137.018; Mon, 22 Sep 2025
 13:34:56 +0000
Message-ID: <2a4fe894-d4ad-44a9-912f-578394f6d2fa@intel.com>
Date: Mon, 22 Sep 2025 19:04:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] drm/i915/display: Wait for scl start instead of
 dsb_wait_vblanks
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-9-ankit.k.nautiyal@intel.com>
 <aNEkV70k8Nv1WFzW@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNEkV70k8Nv1WFzW@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0087.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM3PPF83579A393:EE_
X-MS-Office365-Filtering-Correlation-Id: 82e41969-3f9b-4eb9-9041-08ddf9dcd17a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TXIzajlFekRCenRrTmFxWHlsK0FPQUZEdnRPS3BuNFFSUXRhRXpwRlFlYjlC?=
 =?utf-8?B?NzZyNGxnMU85aUJaYS9qaGJZRDBNRXN0OWtab3BQQytObUVSbWdQQTBlK0dk?=
 =?utf-8?B?Ny9JWnNTdWtpZmRBNnVsYUZTS1hDRXFROFZUQVJBdzQzZ2pITC9wUnllbnU2?=
 =?utf-8?B?M1htVlc0NG9GZ3krd0doeThFazJqVDBKRWNUdURTQ1JRS0Q2azFrbjI5R3N5?=
 =?utf-8?B?RUpoMnhNU20vbHV1aVozbStCMjhkV1V3dEZDdU1ZZ3kyaUVxcFB6Q25MN1M2?=
 =?utf-8?B?R1hPWHZjZ24ySEd1YkJ1TzZlbjJidUgrN1c4VWdLSFhtN2k1L3dDZGtvbkpm?=
 =?utf-8?B?anM4WXBMNlBiem8xSUJxK1ZQVmFJLzJrNGJrRVJGWTJDdC9RVWcwZ2NQdG1O?=
 =?utf-8?B?RjQwTkMwQTNlbENza3dTWWdsU0JYMlArcnBOQVJMdml5V0h2SlBQM0JOb21N?=
 =?utf-8?B?Sm1MRWUrK0d4Rk5Vc3BxcFJleHZ0Y2dJUVAwRTZqcFJGQUUyWnh4QjV0OUhr?=
 =?utf-8?B?L0Ztbm12WjBLQ1Rxd0xSa2lIWEJhSis1UUVGMmU0UjI2TGQwaThLaGRxMnZi?=
 =?utf-8?B?Sm9KbWpYME1nbUlJSG5UQWYyVWRwYUZLMWpDL0QwRkorbkZld1Q2UFZIWm1x?=
 =?utf-8?B?UFVhVnlMa0JqNnNHb21RUnpLemFhWEszalpuaXJiQ0wvMmNJSTh2dVd6WlNK?=
 =?utf-8?B?MHF1amZNdGVNS09makd3bUlkT3J5RCtvQU53c2hlM0VtYXgrbGh1Y1lrb3pa?=
 =?utf-8?B?eGtyNnpYS1NmVE0xQTNiaHpLVzA5Q1JPZU40YjN5dnh0ejBDMlZwbElzNXJP?=
 =?utf-8?B?Q3JsY01GcittS2g5c0E5azQyUlYzTU9aUmhVdXgxWjV2SVpHVjBNU0U0L0lY?=
 =?utf-8?B?dVVka2c3ZklmNWs2eGhxSkNrQkxiZXREV0djZ3VJQlI5MXJPQytUTFVUb1Bk?=
 =?utf-8?B?Wkg0MVMyNksyQUlkZWJ6OGdaZmZYNFhwSjdhblNaZ0FoRVdtRmdaTXoybEtE?=
 =?utf-8?B?VWJQcG1sYjcrTlFuMkp5N0ZPMXlUdDc0aDl5d2w4TFlRM3FUWEo5UTJLMFdE?=
 =?utf-8?B?M1U4Uk1DVVFrNGpicmk5NFBjMEFHekFNeURiZmgrZTZwcDhLZDdOcjhpa2Q1?=
 =?utf-8?B?YmVRZ2QzWmFtR1N5aEVrOU5jcHhNTStEVndQWlhvZlV3Wm8zb2pPQkNzbURV?=
 =?utf-8?B?aGJVZjVXZWVHSGtSR2t5dGhRV0JmV1daT3QxaGE0UkVyWmxyTTMxKyt6LzNV?=
 =?utf-8?B?ZjhGekNIcFVyamprZUhSQnc3K3NPR1NWVXErMkJFVjZQWEEzelJJK1BXY3Mv?=
 =?utf-8?B?UHFFYkVUQUZySmxjOS94dTlqV3RTRnNDMlRHaDVXMDNPTTc3ZkhWd3dJZmVv?=
 =?utf-8?B?eVJMYnY4RHg5MmlkVUpBcWxoamhUaEpuOGZldWFLVWR2Sll4WGMvRUdSNXpK?=
 =?utf-8?B?SE9ENkNtV21TMzZudm5MeFV4SWc5TVJPaG1GRlU2NlpBUXRpYjZ3VzNjc0hK?=
 =?utf-8?B?MjVDNlU3NmtVenNuUEFHSDliUmlFbEdUMGV0bXI4VmpiNHZYN3BUMEJTcGNq?=
 =?utf-8?B?amV4N1Q1QlNUNUVtdzc5QllIbFVtNUNjb1p3L2c2bm04b3ZSQkFTUUxFNjFv?=
 =?utf-8?B?WENDSEV2Vk9Hd2V5eVFDWHRuem5BbzZwM2cxSzIzS1FIRFpiNHIrVXJlY1NK?=
 =?utf-8?B?cWZUUDc2N3BnNkV1K0laVGFUT1lWdExpSi9EWUk1OXdaZXpMTkNwdVlFKzNS?=
 =?utf-8?B?bDFjNUJhYytxNUJoNHZQRUNDbTcrTWZvYVZqVEtQWHdKWk1BeTBBSmZDTkY0?=
 =?utf-8?B?anpYbnlaSXg0NzlIT0ZoTHAvcFBMRFk0akxsU1hUWHkwb243MU5NbUYwV05T?=
 =?utf-8?B?Z284WjIzNlZCbjhHMzZ5RS8vZDNzaHlVQTJZTjJEaHRXeXdEclB0dVkxMGt2?=
 =?utf-8?Q?I69XjcH6JVs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NW1ydU03VlhzeC9ob0xsdGs3K29tZGhMS2VQaWNmOXd4akxVUTRvOU5yeFph?=
 =?utf-8?B?QXMwR2pDLzVlS25sRHJhSzJqdDVTbXFjQ3B2RTg1bjVaaU5kNDhYWmNSUUpa?=
 =?utf-8?B?eis4ZHpyU2xWeWFwWlNxVmlvQW1PcGNTUUg3L3FNaE5QWHVSVGtwb1E2bm5U?=
 =?utf-8?B?UVlKN21sOUFyTTlyNlh5ZmQvTUM2N0NVV045QkpqSlFVc1lqYnM2UE9OY2hG?=
 =?utf-8?B?eGllSTJWLy9vY1ZmVzBSZkdMS1BFNmhlbGQzSy9jdnEzZ2I1OXh1aGhxOXQ5?=
 =?utf-8?B?RHpHOFV0eEpycVBWRE9hbm1qSzdCMEMvVDk1WFFZb0VIUW0vM1ZzVksvVlFM?=
 =?utf-8?B?b1UwZ0tseE9NYUdheHozaUNIY004aTlUazM5WkNPQWh4N3p3b2J6TWNCZTZI?=
 =?utf-8?B?dERucmF2RE5sSTRzY2ZSZWlTOWw2dXBpK0NvSXQvaldBMHZ3NFo0aVpUeWJF?=
 =?utf-8?B?cjRzNUlOT0REL1k2cmFWMjdUc2wwV0ZqT0tkMkhURnFhUXRPU2U2dS9ER2Ns?=
 =?utf-8?B?Q1BxcW1tOEEwaS9VQlNocHdDNUFEN01XZ2dBTk9YYkN2QnkzUDJTQ0FqdlZ1?=
 =?utf-8?B?S3BHQnhKTStCVytYeXpDS2E2R0c0eE9RdEJ5THUrTzlxQmdGTHZuU2tjKzRQ?=
 =?utf-8?B?aTB4UmduTG1GWFEwdVBneHNsekJUNjNXMWtJcGNlTkJwWDZaSEFOYzlTb1lH?=
 =?utf-8?B?S3dzY1FhRmsyMzNaNDZTUmtTV1NtS0dIYUszdU9kcWJ2UEt0N25XTjYrUnZG?=
 =?utf-8?B?TURIOWpUbnozcTBVdVpYNm5KNlNuOFg2MXhGOWw2K2xHM1pNWXNyZXNya0t6?=
 =?utf-8?B?Q05qMXRwb2xZaTZka3RxZURMRy9WS2l0dWhRTnpnL3VuZGZORWM2QVo3VHpx?=
 =?utf-8?B?WGM2SjdVODhDQnpyK0wxWi84Ny9PandLd1pBcmtwUzIxTjdIQlcyQWViL2xw?=
 =?utf-8?B?Zi9pZGdVUXdPUkNZVVdEbnluLzdMNlB6bTl0TE9FTS9OWWxuSkoxd0UycG51?=
 =?utf-8?B?M0UvTy93WXo3OTdwM3lkUE0zdm5tMWJteVVRZ3lSVDdBVGQ3ams1bjc4bVho?=
 =?utf-8?B?bkpnZ0t3L1F2Rzg5QlBrWUc0aFVOMUh6M1JIOEtvSGZxNFlJRUtqR0VHcHpF?=
 =?utf-8?B?SkdwQXQ2d3E4TFVNSzZBekhHTXB5LzQzSlVNTWFaVU5hZEZwcmFMV0p6enA5?=
 =?utf-8?B?cGR4MXFNSE1iZGkrc3hSY2NkMVVEaGo5akNpcVh3eGVmTzlnZlRMZWQ0N0h5?=
 =?utf-8?B?VmlDNmw3dkNaMEk1SzEydGoxc2h2ZitXVk1mUTlqbGFMcEduTXJPYUtWa3Fr?=
 =?utf-8?B?a2RlZFpzb2NUV0VKdGsvTkNUK0szenY5cVpyU0w5WkRSdDVEemFaaWJlVFZh?=
 =?utf-8?B?dTl5NmJpTVZWTWs0ZGxXOCt3VjQ4V2dGaUFZcUFoNlNvWVVsR2ZZb0UvVU9v?=
 =?utf-8?B?Y1JxUzgvR04xOG8xWnAvUnpNampxUE5wNEJKMHNnNDlCVG14ZkVPVVhzZkdD?=
 =?utf-8?B?RjE1ams4b0lZNWdCTzlYN2RKZEp0Z1VqTi9kZUV5Z3luZEpHZE5YYXFqZmQw?=
 =?utf-8?B?MkUwNEwvcEZnZXBzV1lqbC82L2ZabDdWcXRCbE5FMHBXTkFyK3IzamIyZWF0?=
 =?utf-8?B?d2pZOVFQNWJxOURRZDdHRUlmMzNHdG84NHp5SUVGeXR6aVRwYkR1MSt1b3dJ?=
 =?utf-8?B?ME1sWXc2T1BXejc5a2M4MHYxM2NvZDZzRmdmaDFRK1EzQVEyQXI4UkFuakZm?=
 =?utf-8?B?NktXTkNuVWxDd0p5cEtjSWF4bGkxRFMwWmo2V21iWFNFVXdvcWJoVTlFaldE?=
 =?utf-8?B?WXMvTlJFNFo1dEVxWHpDNWxsL3N3aGlDdm9OL2NZK1JTaU5zRTcxSnBkcHFY?=
 =?utf-8?B?SU45RVYwL25NVDRPdHErQmFLQzFkSzduQlJkbHhVdVp2a2ZVOUJUTjdjazNl?=
 =?utf-8?B?MmdHcFNCY01wTlQyZTBnUTJBdzFrMEZTNjczZUVIUkE5bDJteUkvUk11K1Za?=
 =?utf-8?B?Y2NvcHJvQUtGcWQ0QXRoMnRtZFlBODFNWW5CU3FDQmJkbUlNSllXQ1pHZElw?=
 =?utf-8?B?OUV6eTFGQUFBOExDRUdtU1ZTNDFtTmhucUx0ZUw1U2w0SnZkam10NDRTTlFX?=
 =?utf-8?B?SlE5VzVsT2drTUZBaFlYYVRtZFFDdGIydjhZajE3R1lFVDVCODMwZVlRak1C?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82e41969-3f9b-4eb9-9041-08ddf9dcd17a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2025 13:34:56.3117 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y2FDzgdWmxGMVQY97SBv3Jv7zIDWN5wGlheX4GZYOMRjuHXRkAviFNJh3lX4cmicvH1z/dcMyShjzbYVxChywm+8NOpX+4cyxtMhxdT3Hsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF83579A393
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


On 9/22/2025 3:56 PM, Ville Syrjälä wrote:
> On Sun, Sep 21, 2025 at 10:05:34AM +0530, Ankit Nautiyal wrote:
>> Until LNL, intel_dsb_wait_vblanks() waits for the undelayed vblank start.
>> However, from PTL onwards, it waits for the start of the safe window,
>> defined by the number of lines programmed in TRANS_SET_CONTEXT_LATENCY.
>> This change was introduced to move the SCL window out of the vblank region,
>> supporting modes with higher refresh rates and smaller vblanks.
>>
>> As a result, on PTL+ platforms, the DSB wait for vblank completes exactly
>> SCL lines earlier than the undelayed vblank start. Since we use
>> intel_dsb_wait_vblanks() to time the send push operation, this causes
>> issues when SCL lines are non-zero.
>>
>> Instead of relying on the helper, instruct the DSB to wait from
>> (undelayed vblank start - SCL) to (delayed vblank start - SCL) before
>> sending the push. This approach works for both pre-PTL and PTL+ platforms.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dsb.c     | 16 ++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dsb.h     |  2 ++
>>   3 files changed, 19 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index bfeec3706f35..8d78037d5a2a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -7265,7 +7265,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>>   				new_crtc_state->dsb_color);
>>   
>>   	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
>> -		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>> +		intel_dsb_wait_for_scl_start(state, new_crtc_state->dsb_commit);
>>   
>>   		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>>   		intel_dsb_wait_for_scl_lines(state, new_crtc_state->dsb_commit);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index 400dcc87a992..e94a05cc8c82 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -826,6 +826,22 @@ void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
>>   	intel_dsb_wait_usec(dsb, usecs);
>>   }
>>   
>> +void intel_dsb_wait_for_scl_start(struct intel_atomic_state *state,
>> +				  struct intel_dsb *dsb)
>> +{
>> +	struct intel_crtc *crtc = dsb->crtc;
>> +	const struct intel_crtc_state *crtc_state =
>> +		intel_pre_commit_crtc_state(state, crtc);
>> +	int undelayed_vblank_start = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>> +	int delayed_vblank_start = crtc_state->hw.adjusted_mode.crtc_vblank_start;
>> +	int start, end;
>> +
>> +	start = undelayed_vblank_start - crtc_state->set_context_latency;
>> +	end = delayed_vblank_start - crtc_state->set_context_latency;
> For these we perhaps want something like:
>
> intel_vrr_safe_window_start()
> {
> 	if (ptl+)
> 		return crtc_vdisplay - set_context_latency;
> 	else
> 		return crtc_vdisplay;
> }
>
> intel_vrr_vmin_safe_window_end()
> {
> 	intel_vrr_vmin_vblank_start() - set_context_latency;
> }
>
>> +
>> +	intel_dsb_wait_scanline_out(state, dsb, start, end);
> And I suspect we want to do this just before the usec wait in
> intel_dsb_wait_vblank_delay() (for the VRR case only). No need
> to bother higher level code with this, I think.

Ok sure. I will re-arrange this and use the suggested functions for VRR 
case.

On quick checking, it seems we need to use start -1 in :

intel_dsb_wait_scanline_out(state, dsb, start -1, end);

I tested with initializing with bigger value (like 5 instead of 1).

 From the dsb utility which you had shared, also we see that it gives 
(vactive - scl - 1) as the safe window live status change for PTL.

Regards,

Ankit

>
>> +}
>> +
>>   /**
>>    * intel_dsb_commit() - Trigger workload execution of DSB.
>>    * @dsb: DSB context
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
>> index 1cb5ba1a0534..5985d0024dae 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
>> @@ -73,5 +73,7 @@ void intel_dsb_wait(struct intel_dsb *dsb);
>>   
>>   void intel_dsb_irq_handler(struct intel_display *display,
>>   			   enum pipe pipe, enum intel_dsb_id dsb_id);
>> +void intel_dsb_wait_for_scl_start(struct intel_atomic_state *state,
>> +				  struct intel_dsb *dsb);
>>   
>>   #endif
>> -- 
>> 2.45.2
