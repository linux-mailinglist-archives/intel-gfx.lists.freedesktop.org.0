Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA9FA072D9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 11:22:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396F010ED50;
	Thu,  9 Jan 2025 10:22:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MukZgF+r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 865DF10ED4E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 10:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736418137; x=1767954137;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=JdgJ+V/42OSjDIf1slapuQzn5+Tmn9bsGjv0rPBzOBo=;
 b=MukZgF+rLm89bIv3UVqQ3ccA6R1go7k8z9uCn849dE5P85PWI3c9Y+uC
 2WCii1HFI4iI5sdCPha5kF1tedsjHl0I5SAEvC9XHlrzD9TJZmG0KuhyW
 JadHvKJLkkXk3DL1hpZRxife0LDxX3YING8M+/M/vhvc0eRcuoR5IEC/7
 441Nwt4Tm91nhSfTwnKHxwKjuxC7LJlgZemN9voqA7WLTe0ZuDGdDbymo
 WwPP6l0ixrYs1tzysFJ4c+Ppempl0JPX57wRx6HNTaV02XOa1NTWqhEDM
 V3+kDe/hjCjxVcVxQRrReoWs4u9D4yRBUo9MvJ99SS22m778rO5WEQoDc g==;
X-CSE-ConnectionGUID: 2woNGj5tRFmYsQR1M8rdcA==
X-CSE-MsgGUID: QxF6YCkST/yHY9PBDn3WuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40438376"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208,217";a="40438376"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:21:13 -0800
X-CSE-ConnectionGUID: 9SLO4pQ/QQmdUBdTDANwhg==
X-CSE-MsgGUID: 8Ck8bgJ4SIq82gibAYQEMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; 
 d="scan'208,217";a="103911315"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 02:21:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 02:21:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 02:21:10 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 02:21:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HlBcaRUTJI5FEBIbxZLBGyWD48Lg61ZltZ2s+uhDfWP0ygHBwEIZ2i7eUGYGiM1AjDa8LFv3i5ZFn1K0c0ISJEf6GYfc46lmMGrXOB36MTqB1hWSezSsKGeHDLNU4qSTGlt6ezmLCd9Dlt0k8/Bn8Rk1M3VTEk3xCus+OBhMLGq2UNMb8lfE3HcXkbiuHcSHM5SJ9k7S4He0YR/pPUWwG5mzXKRrUBT8kO+xc4v35rP0c4bE4AJVSpKyUoc0VVft8yd5WedNZV7rjoUd+br14S0dNwb2iZG5B8l1NIpXsQJA1mqi5hszrFyO8EhrXM2kWJl0C0N0ZmHt6aUuUxwsNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lda+dCTlzNQ0AVZAs938s3+S8vaHaniqhDM6osxrDVE=;
 b=eRsF6++VElggnVbY01j23s3umRh4Im7pzRJpTTDpx09eO4YwTZP7XGfjgNeBRVJoBnyPxhJSguCIKZV+UStH3SUxbCbOHk//hpoCQYr32SEEyR54vIhuyvcyrFsdadiHIIXUtDHTp+d23JbNt+MnZYAJ9FUM6qhX3dgCrhPurZct+Kuwahrvotr4iZScec2YBv/9p/Xe88q/NOrvDtX5CFdhTfZVVQOr029D2smkI7wh/t66HVKPciUGzLfVeozEcRMfJJ+/y09apkpujojB0wn05LcOZqBFQy1Bs91rwVJqtxY2xc39nkQw3rQWvJj/XwixoXFQcA9PBWbEc/7bNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by CYXPR11MB8756.namprd11.prod.outlook.com (2603:10b6:930:d6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Thu, 9 Jan
 2025 10:21:02 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%5]) with mapi id 15.20.8314.015; Thu, 9 Jan 2025
 10:21:01 +0000
Content-Type: multipart/alternative;
 boundary="------------t5wZC4Y6DOP9DbJCb4om3C0O"
Message-ID: <f3c92a31-37d1-423e-a578-b8d91f17a48d@intel.com>
Date: Thu, 9 Jan 2025 15:50:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
To: <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <riana.tauro@intel.com>, <anshuman.gupta@intel.com>,
 <karthik.poosa@intel.com>
References: <20250109093010.3879245-1-sk.anirban@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20250109093010.3879245-1-sk.anirban@intel.com>
X-ClientProxiedBy: PN2P287CA0013.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::15) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|CYXPR11MB8756:EE_
X-MS-Office365-Filtering-Correlation-Id: c9310d0c-efd0-4f95-4c15-08dd30975137
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WDF2eTBnbjVyQWhXL0dIOXJoMzh6TTB1VnFxQnhOR3JnV2VUZS9jMDJIQkhj?=
 =?utf-8?B?YWdmOWxkc1IzTVVNeUd1NmdFeXFTM0g2dktIczVUV2I5YUp3QWpEaWZLSW1C?=
 =?utf-8?B?ZXN4bVFHdnNtdENxY0d0ZE9WSEZEL3dwbk5KZ3dHbng2dHIrMnRsemd2NWlz?=
 =?utf-8?B?V1hxQ1ZCRU1QTGt0WXczbUc2blo1OU9HVGU3ODNtUWFSalZxWGpmZGc4Smdk?=
 =?utf-8?B?RXhBSWdVbXZuT0ZNenJta0lHTkQ4azBTQ0dOQlA3L3Qxc3ZZZlpLMXRPWGto?=
 =?utf-8?B?eHJpVTJnL1VPTUhqM1Z5WGFlTDc0b0RleGJQd2M4SDczY1dZZTgxK01reXZF?=
 =?utf-8?B?RmNrMmI2Rk91Y2lpSlV1eElqeTk3T2N1bG9ZTzVVSld6OEZOV21tbG43cnM5?=
 =?utf-8?B?RkJLWTRGdWc5Vm5wbmZsd0sxZ0l2RjVTUlZLM3lDNVJ4c2hXclRYdENOaHlH?=
 =?utf-8?B?M0NTOXNKc3UvbEF2K3VtQ3E3Ymc2TDF4UVMzbVdLcXdmT0NZb3lVb3Z2UU9x?=
 =?utf-8?B?ZjBnakpZOVUvVDRuaGZEWU52dW55WEpNK0p0WU4xRHJoU09JSDQ3VFpPREx5?=
 =?utf-8?B?cTcxUzNablkxdTN1R1ZtcFllaWZxa0pidFZVYVdVNVlMTEYwT2lhVEpsMkFn?=
 =?utf-8?B?NUtBa3Z6SmdHWUNyaTd5RnoxaFd3ZVRQYWJhZnBpQnNlZW82NGEvd1RHa0lD?=
 =?utf-8?B?T0NvL2grdzVIN0ZuMWVtSmxYUmFQRkwwdzFybWRuTyszcDdQZ2tMbXZuR3lB?=
 =?utf-8?B?dU0xTENOTVZVeVo2YXpnSHBIU3p0bjBnVnVKVmx0N2RaQ3I0aW5kc1ZtWFp4?=
 =?utf-8?B?ZTFRaEtsYXE1Yjd2NElTb1lVOGE5TUE2NHdFLzFaT2RnOUs3UmIrSHVlUXhh?=
 =?utf-8?B?dnZ5WURqb0ZMUS9TYlVqOTJsQkFSNXZQVVF0WGtYSGk1Uk9sNGRHb1RFVU8x?=
 =?utf-8?B?Y2JHLzQyQ2ttUjBiQWNrc3RTUVVDR1l4RDFQa0FFd09mUERrUndTWVlQb1Js?=
 =?utf-8?B?VFFIMG1GSGRhdHhDZCtBVzAvcURqRlJPM1g0RTdOb1ZzdjVFTE1iblpuQ2hs?=
 =?utf-8?B?Y0NNd243blJEZjlKSGVXc3RPSXI0aDFqS3greGN3c1JQYU9YNFNwakF4TW16?=
 =?utf-8?B?akZaWThYcms4Qk1JQ3JQTUQ0bEdlREF5MGN6WC9xRFBCRDNqdU1PdmlzTWNi?=
 =?utf-8?B?RGRISmpvMnpEZVJLcjczTXhuUUNVZHIxUFlFNUpHOTJYbXMxdTBvN2V0TndI?=
 =?utf-8?B?TXg5dndJZGNpMXZPbU9vYUxGNXkzNEx5SUhCTUVYWEtid3VPcFZ2bFh4c1U0?=
 =?utf-8?B?b3U3SzNkVVdRWGxqQ2d2NmNtM3ljRFVqNW5hM2RUSldYek1vSkRqK205VldW?=
 =?utf-8?B?LzB2VFV2c1JPNDVWU3ZIS2Z0VW81bng4c1pLQll1UWFlaWViU2h5RjhCWUJE?=
 =?utf-8?B?cmlsNGNNY0FuRDBOMks3SVcxbjZCcmU4cXJibjlBZytBaWUrVjdiVnNUSHc2?=
 =?utf-8?B?VzNrOTJNQ1ZaRzVOZGkxRzA0YjhxbXBybDI1eE92U1IyNkpONzdjZ1lNb2dX?=
 =?utf-8?B?ajg1OHlTbWZYTTllRDd0UE9UU3c0ZHExeHowc2U2MzE5MXdqMjJQSDVaOFo3?=
 =?utf-8?B?VGlscmg3M1pKOHZPTlhnQjBIT3hjNkp5ckhtbS9FNDFqOEJjZTFDNUxRS0ho?=
 =?utf-8?B?VjVleGZ5b1hGQkR6ZGQ5SWJsTGZyakYwZ3lRK2loYUJWL0xnMDJ5bWgvQytU?=
 =?utf-8?B?TGFiOWpHUzMxQ3FvWTZMbXE0TGQrYnhFUVR5ckZCdU9uSHlqdGwrT1JpRi9r?=
 =?utf-8?B?RG9uNEdVb250QXpVR3RGUGRiRktuRWFsMGZIdUVkL2tkQ3dpOVE5SWNxaStj?=
 =?utf-8?Q?SRcmpI8Oxazwg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHp2NXJuVHd1MlhSeFFTR3hJTENONEJ0Nkh2ZUszRnIrUjF0VUZ0YjVvNkdM?=
 =?utf-8?B?SS9vdkNENFhDYkxYclFGTG1BL3ViVGNaNm04ZXFVb1cwTEI2NkFZeVVwZVB1?=
 =?utf-8?B?dTIxM2JnZk0xY09pNVVmOGl5WHVDTllxalVyUVFhak5UckFaMkpBQ0FlQVc4?=
 =?utf-8?B?c09KTWp5dXUrK0E2bDR5L2dRY1NoUzJRN1VrcHl1ZmJaUzNobVIvUU5jeDla?=
 =?utf-8?B?SjE1cEdFMlRNcjE2WG1pWUFWempXQmcybFY3eGlVTG0rQVhvMXVHcnR1TDhX?=
 =?utf-8?B?ancrakFLTk10WWE3OGVlM1RyTSs2WHVwQ1dSVEZXV1U1RzhrcGRzQTZlZ0N2?=
 =?utf-8?B?ako0enEzVFRqZHMrc3I1d0FKU1hBWHpYZm45QVpWOVhwNzQycjdCZGFyeFRW?=
 =?utf-8?B?L3dteVJVSk5GZDdTUjdvcjRMNmtoV0tsekJBdG9zdVpKSHRlNnI4MkNwOFhj?=
 =?utf-8?B?KzhLdUtxV3FiUmxWeDdsNUZITXRRWlU5WW9hQUlMWStrU2JIUysvTEhXaWtS?=
 =?utf-8?B?dVNzeFdnL1BTdkU0UU5IUEtZYjdEOVlzM1NKU1hZNnJOVnZkNmlEUi9WOEwz?=
 =?utf-8?B?dUVhQ3kvM2lhSGJGbWRoL09uVnd0UVB5ZnJTWDVrRGRSMnRjdnFsMkN0NDB2?=
 =?utf-8?B?WnN3dEJGNmZNb1dXajI0S1g4cTZxd3daTWFqRHhiSWwxcEc2ZkdIZTdkcFpo?=
 =?utf-8?B?RjcvSERKaFpjYWUxSzNXa05Pb1IzN0MzdkprY09NNlJtclJwZjhSLzRab2tu?=
 =?utf-8?B?enRtdUZtMDBmYnpwV1lnbDd0SW52K2kzbmpNVHplQjRlVmplRElsUjQzK0hz?=
 =?utf-8?B?QWRKd0xXcFhucU16aDhZc1g0UDFqN0tSMDhuT3FSbGx0ZEN2NU9kK250VENP?=
 =?utf-8?B?dEE4QlRuQWFPcW82QjZ3SUVIMEIwLzVDRWV1M05BVVpaTnhrREFrWnFkdmNu?=
 =?utf-8?B?cE5TdXRkVHZ1V0k4LzI3WUx4dWF3Rm1PVDJWaTN3M2pWU1ZSRFo1T2FwUkc0?=
 =?utf-8?B?WVNzOWcvL3hmR3JrYk5Jd25Ialh4VFRHODk2RnJZM3JGb2F3dGh4KzE2TTlw?=
 =?utf-8?B?bE9Jb0NzdVJJbG9ZL1FOTlEyVTY1K0xTaVlPcnpHV2EwSGIzMWU2Z3hYeUI2?=
 =?utf-8?B?YzRlRm5XVFJqT2RmbkMyZGxEWXlEaE5ZZ0lWZ05nSWdieHpPSXZvOUlsTXQx?=
 =?utf-8?B?dmRPRDVVdGdoM1dvNkNybFFqM3N0OWdPemNDQW9Hb09PbVlRdDVPc2FEaUdu?=
 =?utf-8?B?N2dsWjlyeUpTdjhmLzRkYkRyK1ZLL1hKMGcyeisvelNBZzFUZXNRSXREc1dI?=
 =?utf-8?B?Q1MwK2NYWm5kbytJS0dKWTM5QVNmZ0FaSHUrSUJ4Qjk2RjlHQ1R2d0JoSlRL?=
 =?utf-8?B?OGI1NmoyeHZ6SG5NVXVGYlh4eWZsRWY0aG5MRTFhWkpxdUxxS2RGd2FtY2hZ?=
 =?utf-8?B?L3dydHo1Q2w2OHYwaXdBeFErVDJQZHpYRUcvb3ByQWg4QmhuL3ZTc2xGeEky?=
 =?utf-8?B?THdoWmJSN0lOOUorZmNCQTlQZy9PcE5JVCtXUDhUYXoyNmtMbnJBMGhCZTZP?=
 =?utf-8?B?Q01OWFFBNWdDcTdOZ3IyVXZqVFRXbFMzeXE1VE1KSW9CZUY1U1h4YlJIUWpW?=
 =?utf-8?B?aEJTNDlZSHhiTGw3UDYzTytCRXNxOGowQ2dMUFZnbWFmWUNPVzlyZm9xd2Jt?=
 =?utf-8?B?YkJhZk0zR3JiK29vWVNoaUxyYzZEQ3hnbnpXS3FMc3hpQ0lXQTV5aUxsK1lQ?=
 =?utf-8?B?WGcycXVPc2xUTC9GUW1OcWc1NjF5SytwTEUyL2JZNU11WGlQWFJiT3g1NjFx?=
 =?utf-8?B?aDVUZFVMRytWdEU0S280ZGlsalRhVGRNR0Y0aVR0NzlES0FNay9qSkE0T2Vq?=
 =?utf-8?B?UU9LTk1CY0lvSkt4NG5RQWdienNtNldYNFNwdVRpZ1J3YU02N2pnQXIrZlph?=
 =?utf-8?B?K1kyRkhIUkN2VDlyNU9GVG91djBFazBFbktDOEIxa0ZNVWovemlOR1BIUGRw?=
 =?utf-8?B?SUE2d2g4OWVvMXpuN1kyZ2czTVM5RlYxTU9FMy9WNkpKU0h1TzZiVWJLU3ZJ?=
 =?utf-8?B?RVFWemVEZXJZMG9pZUlYeHFxQnZVaWRZRzllQ1E1K05yakQxRkZWZ29ZNUhj?=
 =?utf-8?B?YXBmNkZ6ZjdyT3hMNmY4eEhZWnF4QlZOOGJVQk1UNUtQZkFRNFdwUy9SMG5l?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9310d0c-efd0-4f95-4c15-08dd30975137
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 10:21:01.8398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xxSU0+7O8rMQK/vJAFrdY0VkClQkkKOF5NJE3Arh5Hc2ZDrBCrAaNuN9gvVYr9U/HP/Ra/fZ8XHfOez8qekqeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8756
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

--------------t5wZC4Y6DOP9DbJCb4om3C0O
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 09-01-2025 15:00, sk.anirban@intel.com wrote:
> From: Sk Anirban<sk.anirban@intel.com>
>
> Fix the frequency calculation by ensuring it is adjusted
> only once during power measurement. Update live_rps_power test
> to use the correct frequency values for logging and comparison.
>
> v2:
>    - Improved frequency logging (Riana)
>
> Signed-off-by: Sk Anirban<sk.anirban@intel.com>
> Reviewed-by: Riana Tauro<riana.tauro@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index c207a4fb03bf..e515d7eb628a 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -1126,6 +1126,7 @@ static u64 measure_power_at(struct intel_rps *rps, int *freq)
>   {
>   	*freq = rps_set_check(rps, *freq);
>   	msleep(100);
> +	*freq = intel_gpu_freq(rps, *freq);

I am seeingrps_set_check will wait till act freq become desired freq, in case of 
timeout act freq could be different. I think it would be good to check 
freq returned by rps_set_check is expected freq if not then read freq 
again after msleep. Regards, Badal

>   	return measure_power(rps, freq);
>   }
>   
> @@ -1202,13 +1203,13 @@ int live_rps_power(void *arg)
>   
>   		pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
>   			engine->name,
> -			min.power, intel_gpu_freq(rps, min.freq),
> -			max.power, intel_gpu_freq(rps, max.freq));
> +			min.power, min.freq,
> +			max.power, max.freq);
>   
>   		if (10 * min.freq >= 9 * max.freq) {
> -			pr_notice("Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n",
> -				  min.freq, intel_gpu_freq(rps, min.freq),
> -				  max.freq, intel_gpu_freq(rps, max.freq));
> +			pr_notice("Could not control frequency, ran at [%uMHz, %uMhz]\n",
> +				  min.freq,
> +				  max.freq);
>   			continue;
>   		}
>   
--------------t5wZC4Y6DOP9DbJCb4om3C0O
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 09-01-2025 15:00,
      <a class="moz-txt-link-abbreviated" href="mailto:sk.anirban@intel.com">sk.anirban@intel.com</a> wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20250109093010.3879245-1-sk.anirban@intel.com">
      <pre wrap="" class="moz-quote-pre">From: Sk Anirban <a class="moz-txt-link-rfc2396E" href="mailto:sk.anirban@intel.com">&lt;sk.anirban@intel.com&gt;</a>

Fix the frequency calculation by ensuring it is adjusted
only once during power measurement. Update live_rps_power test
to use the correct frequency values for logging and comparison.

v2:
  - Improved frequency logging (Riana)

Signed-off-by: Sk Anirban <a class="moz-txt-link-rfc2396E" href="mailto:sk.anirban@intel.com">&lt;sk.anirban@intel.com&gt;</a>
Reviewed-by: Riana Tauro <a class="moz-txt-link-rfc2396E" href="mailto:riana.tauro@intel.com">&lt;riana.tauro@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index c207a4fb03bf..e515d7eb628a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1126,6 +1126,7 @@ static u64 measure_power_at(struct intel_rps *rps, int *freq)
 {
 	*freq = rps_set_check(rps, *freq);
 	msleep(100);
+	*freq = intel_gpu_freq(rps, *freq);</pre>
    </blockquote>
    <pre>
I am seeing <span style="white-space: pre-wrap">rps_set_check will wait till act freq become desired freq, in case of timeout act freq could be different.
</span><span style="white-space: pre-wrap">I think it would be good to check freq returned by r</span><span style="white-space: pre-wrap">ps_set_check is expected freq if not then read freq again after msleep.

Regards,
Badal</span>

</pre>
    <blockquote type="cite" cite="mid:20250109093010.3879245-1-sk.anirban@intel.com">
      <pre wrap="" class="moz-quote-pre">
 	return measure_power(rps, freq);
 }
 
@@ -1202,13 +1203,13 @@ int live_rps_power(void *arg)
 
 		pr_info(&quot;%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n&quot;,
 			engine-&gt;name,
-			min.power, intel_gpu_freq(rps, min.freq),
-			max.power, intel_gpu_freq(rps, max.freq));
+			min.power, min.freq,
+			max.power, max.freq);
 
 		if (10 * min.freq &gt;= 9 * max.freq) {
-			pr_notice(&quot;Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n&quot;,
-				  min.freq, intel_gpu_freq(rps, min.freq),
-				  max.freq, intel_gpu_freq(rps, max.freq));
+			pr_notice(&quot;Could not control frequency, ran at [%uMHz, %uMhz]\n&quot;,
+				  min.freq,
+				  max.freq);
 			continue;
 		}
 
</pre>
    </blockquote>
  </body>
</html>

--------------t5wZC4Y6DOP9DbJCb4om3C0O--
