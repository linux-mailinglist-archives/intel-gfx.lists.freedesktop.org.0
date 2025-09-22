Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1A7B922C7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 18:17:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0814410E1E1;
	Mon, 22 Sep 2025 16:17:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dVgvKd2x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86CCB10E19E;
 Mon, 22 Sep 2025 16:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758557858; x=1790093858;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=BvnGIB6FtwsDLjihLvulUURQpCv7F6MgF9JuNR/mrnE=;
 b=dVgvKd2xOxn40j5UwWw26IO2CXgsnKw3EGcNHuaG83Oz9nC9kEa335/I
 az8BlcZH9sds6l4g2Fkas0aYCUhBl7wXA0X4il6knacXTR0V7NwQlmK12
 CvTRzRG+HrqO6SOaNB6M221hjjadhTHqeXSwPr1Ckht40EOPY74ulNQaj
 wTNMCTOrci3mV4Yw9r2FnpwdEQ7nemwdsevPwyacMVBNJhFh47udiSQE8
 vp8xzN5SnURUBc+GCdH3idmHW7xVz5AmZP6zbMZ8M4x3o9EnYPv/E5apX
 fjjGQhP6T1ryZG6QzTVtyyN3DgnOL/bXscl4a9eYzJrTtKEj4hfLKxdnI Q==;
X-CSE-ConnectionGUID: h9HyxxAQTUeOs4yYtS1hZA==
X-CSE-MsgGUID: Ve1wl1SbSmKmk/Wxug4kMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="63454249"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="63454249"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 09:17:38 -0700
X-CSE-ConnectionGUID: 9d6wLwyQTmG80LR7jcQl9Q==
X-CSE-MsgGUID: RF4aYF1qT7KeIFNhfMcgGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="180527566"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 09:17:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 09:17:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 22 Sep 2025 09:17:37 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 09:17:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=agEX4B++sPvivURrkIMYt/OzGY7O2b1ZxtXG2aMEzU4Rl1obmRNeilWInwJC7EF7kOu5lXgA3tgEsTjxhu5rcoRXZDQdHtZ09lkaJjWtxFvaIVZRRySjW/odN0QITUxXMtVyeD5xaTsDMbpDbJxQmblENDX1cVhPpFB+lYXcIiGWleE1PUhbhlPj25WO2o6R8ejR//pJR1RvRTAC1bZXX0vZ6mRfYSa28gs8wctLxQfDDKmXU9WkxM+KR0rYV5VCrBRAPZMpTc0+3wkxoqFpr2tVOE2RLaF20YHAmVkVn/P3LZxzaD9XABc7NfZCsb17mbK4n4mnvwEpLyUPrDRP7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8/rMq7ogjq0O39nrq2OjDkbVGdzAADgMjfrQNGt+D98=;
 b=Ihhkmddm3pDya+2vuZpzvzxnY+CP9t42AghSlBS8clw1A5rs2RBqxO/wc7+qzD8sItRBduPC9UaiOiHiQB1Y+1aX5k1Ft0F0DnQKouflIIYfcDXnPYjPiZ7masMp8+SXRkDCQEK5SpwvN9DABcbKNZZNlkyQ0Oc9OVvOvdEMyYLyv/VyOlGhp8dllsEtrXMf+6QYmjOyM1zs/Jk6ECFw7qiMfajHE6DaKIPHuARD3zT5hwTWZU46XN5o+KcDmHrkR4q3lISnbxu6zkALNq+wCZ+zShVlnY8NdN3ydEsc5vtkym16ZYjt7BO7gpGc/EyY5Pjn1fy3r5pzQLTji7Cp4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM3PPF208195D8D.namprd11.prod.outlook.com (2603:10b6:f:fc00::f13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Mon, 22 Sep
 2025 16:17:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9137.017; Mon, 22 Sep 2025
 16:17:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250922150317.2334680-4-dnyaneshwar.bhadane@intel.com>
References: <20250922150317.2334680-1-dnyaneshwar.bhadane@intel.com>
 <20250922150317.2334680-4-dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v3 3/3] drm/i915/xe3: Restrict PTL
 intel_encoder_is_c10phy() to only PHY A
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 22 Sep 2025 13:17:30 -0300
Message-ID: <175855785003.2439.13697838995982713306@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY3PR04CA0026.namprd04.prod.outlook.com
 (2603:10b6:a03:217::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM3PPF208195D8D:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a4aa9a2-3d4f-4037-e469-08ddf9f389e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEQrV293M2dtYnd5ekQvaXZZUndCMUpiMkVMckUyd2hyczZjcHJnS3dxNzZo?=
 =?utf-8?B?WWdlVnRpN2hzdVdpb0dHS0kxK2MzdzhzVG1telgyK2tSb0xRN3daOXdhS0VF?=
 =?utf-8?B?Vjh6SkFMVEFEckhvamhiTHhVaTdKY21uZ1BwSDVuQ01PNGhlVjBEK2pObzZn?=
 =?utf-8?B?WlNibi9HUHlSOUpOZTJSZGtlQWdHdEF1czFrZUdHQk5JTXZzRm00clFXbzBQ?=
 =?utf-8?B?eWtIU1Z5aVkwV1owQkllUUpkWGpBZk4rVDBUTk5oZG9MWGhXSzgzcUFFbTRF?=
 =?utf-8?B?cVdEdnVCZDBjeGlkVk13SU9jSlFrOHgwUU5rUStIQ0c5K1JxYWhnWUVOenlS?=
 =?utf-8?B?cTg5L0FPK2ZCUDV2b20wUUlnZ0YwTEQ5TEphaDhKREs0NExLM3lNZkE2QzBa?=
 =?utf-8?B?RjdneHNHWWUxcDVXSTVnTlFyaEp0RmZwYTRIZXlhRFBVUzM1MFZFb1dGN2Qv?=
 =?utf-8?B?ZVQwSWUzb2E1NXA2RHFKNCsvdXZLbXoxdmR4MXpmVWFTWHF0MEQyTHhrRHpi?=
 =?utf-8?B?MFhBbVhWM0VaRjNRN2pvc0wyNXBsOFZvTEs2T2lyTXdMZExtMkZXTjBGVlVM?=
 =?utf-8?B?RzJWZ3VLZlQ4NklRWXkvT3NCNXhNNzE4SFM2UEZpa3p3Ym5tNVd5RnZnemJ1?=
 =?utf-8?B?WTlTUzhxRmtsZGFSc2c1M0dDVkNLZXRseUJhb2RMdUN1dERGYVJVZ2x0QWI2?=
 =?utf-8?B?TWxwaEE5bi9KcUo4cm9XblRydWRob0RjNEVlN0Z0TDNxcmVCN0FIRTR4SXpC?=
 =?utf-8?B?RWxCZ2I1dWtlaklVaGVhWHNSc21ESy9FSlltd29xc3VNMk5idzFZajlKY3BU?=
 =?utf-8?B?UWsyQmxUblBBYldUU2piTlhOSnYyNGlSaU5XYlVyejJKQUphN0JnaFMrOFds?=
 =?utf-8?B?QnZvc1cza3JKMHpUS21mSFRMY1lacUt5V1VucGxrcGpxSDRUVHo4dCtYR2Fk?=
 =?utf-8?B?VjhQeUdXWFZkQXk2MDZ2azZvV2RoQjJZcm55Y1JRRTlTNEZSNml1UGppQ3Vj?=
 =?utf-8?B?UVNHMWRFUUxQWlVqVE5XS080RWdmemN1MjQybnEvUzVJZmphbHFzVm01S1Q0?=
 =?utf-8?B?cVF2TUs1eTVIdmhEMU15WDNzZ2JwVmJvdVA4MFZGRTNIdEx3cnZSL1NPM2NK?=
 =?utf-8?B?RE11ZXJZOUhaQ0tDbCtuendKQ1ZIelRvZFVyUXNhY2lxT240VW1Wd0xOakNo?=
 =?utf-8?B?M2VKRVpYN3lxNjZxNGlYYUFrYUhwcFBLeE9idlc0c3ovUGJRTE9QdVpiM3R4?=
 =?utf-8?B?U0NaS3F1MFFOUDhTUHNSSmg5QWJhMGdPa2h0RWJtL2ZSK214S2lQQnN2VER4?=
 =?utf-8?B?ME8zZnE1aHFUSGJ1MklabXdxM0VhQjNSS3NJSklna0E4a09FZVFURVAxcDlV?=
 =?utf-8?B?Y25YaFVXdDY5dlQ4a3hweGRnMmFDOUJvOEE0L0Z3TVBzeFlncEU0S1lYcUhv?=
 =?utf-8?B?bDAwWkNualVJaWtSZ3ZucWFYaFFwUVNRS2Q3b3pXdTJJTGF1bEFXbEZXWUNi?=
 =?utf-8?B?MXJQUzk2TnJ4d0VVQlZ4S0VxN2lzM3dQeTFIbkJHY1VxUWZEVWJFcVJhRGNM?=
 =?utf-8?B?VDFUeVBsSUg2bWNtbTlzZTBQWndEMmtRTFVDNGhRVjd3YWF4RVR0TFJYbHdo?=
 =?utf-8?B?WGwvQ1Yxa2t2SE1Hbk5ZV0dUYXIrTFFJOXI4dElVL1c0UmJxcFljcEM0M2JI?=
 =?utf-8?B?V1VYRVZNbG5jQWZvK1UzZDZyV0dFSFo3T09IUEVuL0crQkE4N24vSnZRSTBM?=
 =?utf-8?B?UzNIQllFNTZWcUxNQTdCVmZmNFo0ekZ2bU9XQU5oVGgzZHhiQXZ6OEJuYUFm?=
 =?utf-8?B?R1BTZkV2VEFoYTY0Ym5OaHZYWlVtSDkycUtuUkg3aGxQTENQb3RWTWtHaXF4?=
 =?utf-8?B?R3pzem5vcXdlRnFwVy9Ka2ErTksvU2t0VVpxQXo5L0RwR1dGaFV5M2Jhdk1j?=
 =?utf-8?Q?ryDRmaKNa4g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnpBYXppWmZWOGFSaVhlaThOUEFIN3JFL01oRXlRTUtoL1FYYWFSeFh0eUha?=
 =?utf-8?B?OUwrbDRBSFUwZlVTU2JsZU9xeDg1VDQwOFZZSENNR0RiQ0IxWXhMWXlpaGVT?=
 =?utf-8?B?NG1tNEl0clNTd2NIVmhpMFpHZ1JQQ2RpTW9Oa0k2Y2pyRkNReHdYMi85YTJs?=
 =?utf-8?B?eTFiMGNEeHh5SGlEL0xjRVpBTWtBb2FwVDJzSlRheXVId3RaWHVQVCtnU2x5?=
 =?utf-8?B?aXJXLzB3VkdIN05EcGhPdmJPVzBEMTdZN1dCOVpwT0gxcjJVV1huUk1YcWsx?=
 =?utf-8?B?bWdpS1dPWThRYnBHdGRmZFBBcjYwRmExTmhweFhxcndKREhQVm8wY2VWVGM3?=
 =?utf-8?B?QlRqRzc1UWloZlVjN0NxTSs0bmxVZUZzRXZTanhmK1Zhb2YvVE5Dc3ZjbDZH?=
 =?utf-8?B?WnBtVUxKbHBzeVpTdGNhaWpjNlBlOURYRDM1RkNjOVhpUXN5bnYreVVOeks4?=
 =?utf-8?B?cHhhK1hOMnIyYjVENXN4d0RrQkU5blFxM0t4aHdVcEhCaU9jc3lrdXBTT0hy?=
 =?utf-8?B?aE1UKzhvcGxDc2RDOGx3d1hxYjFFbGkvOGt0TlR0WEZINzFjNE9jZ3cySENi?=
 =?utf-8?B?S1NoSjMwNzZRZ1NwOHFHeElsVW1jQlZTVWRKN3RuUnBraFo1NDlhc1N4Mkwv?=
 =?utf-8?B?YmVnUThlVlRQMjZLRk5IYjZoTTJWdjRkOFpzN0oxWGxjMWdOYWE3ZWsyUXhs?=
 =?utf-8?B?WUtieHYvQ1RUcllhOVNhRC84K1U4Z1E0dzhJV2JTQ2txMFYzZm9PcnYzTnhq?=
 =?utf-8?B?UGJBTzNxVVYvelZHbHdkMHhpclI4ZzFIK1BMUmdVRGtrcnZ5bmVkclRpRzhE?=
 =?utf-8?B?WkRzd21KalNDSmxBUHE0aGFrdVhhSkNFTGlLbUNuT2E0YXBQS0xNLzEyMW56?=
 =?utf-8?B?aEQ4dmhTS0h6UUxnWjE1WlhsaGZJKy9sRlRsR0xqajBuK01Sdy9oOC9mRmFl?=
 =?utf-8?B?K3VQU3hqUmdYalFOUnQwdmtvckdBT0NoNGx1dHFTalBHVkltSjdXWUNwT3M1?=
 =?utf-8?B?cU5YclhxSlpyY0ZqcEN3N2ZFMGFyUGdtN2dtUVV2SGZ0RFJsUGlWaGVDVVZ6?=
 =?utf-8?B?TmtGYzF6ejZ0dEtPQ0t1b1JJaEpvZXVZUnVZMlBRRExIdFF0Vi9qemxjR2Nz?=
 =?utf-8?B?bTkwUVhCSWp3cmt4cEU4emdpQnpuUDcxSm9FWFpiOWNkVEx4UU0veWdaamx0?=
 =?utf-8?B?SFI0bHJZNy82Rk5TdnQ5QTRLUm9uS1h2WksrSWtmcVpodFhwbUl0Z0d0Nmdy?=
 =?utf-8?B?VTBDcW9RajJjTi9CS2JzUjRyZ012cEJlUGZBMmFDNkFqaGdDT2NLc1cwdzdw?=
 =?utf-8?B?R3drSW1JZ1Nwd3cra2owVGF0emdpMmoyU0txeGZjb05YQVVGYlpVSkQ5cjJh?=
 =?utf-8?B?b293NzcybTl0TjI2Ukltb2dvRG9za0FqWVVsRDdoTmo3empkYUZHM2FWUDBX?=
 =?utf-8?B?bHNpcGNzdUh5YnJHRjVWRm1RWnFPU3NlTUFrTTd0WTBDY2NaTDlwZXNNTGJC?=
 =?utf-8?B?UTd5V2JuQko2NW5JZW52NFlONHlxdWNZTkNQWnpTSjJoYWgyQ2xXRDRjZFM4?=
 =?utf-8?B?Mm5VQW5SYVVOczdDOEZyMitUNVhVRXI3TXdpdWVhMHJZRGdXdisrZ3dBVTI3?=
 =?utf-8?B?M1NZbFcwTC9jYTZPU1hoK1A1eHpqVG9uQzFLZG52aWJZOWorNkRlcTZ1dFVs?=
 =?utf-8?B?NEZ6V21PTkVHWm5hWVFBZTdIOGc2OS8zdTY0dFRSZHB3YXB0ZzR3ZExwMGVn?=
 =?utf-8?B?ZUNFczFtZDFoU2h1SzMvdlo0Y1ZBYnovTjhoa1pNQmVqMGxaQnFubHczSExE?=
 =?utf-8?B?M1RWYStWbjBQMDB4aDltNjV3TXY5NXVPRENjeTRXblZDWTBodld3UnhaVEgv?=
 =?utf-8?B?allaamFZRVJKR3F3RGs2UjRJRXVabGNmb3lMWHR2dnpjQjAxUng1d2lacHo0?=
 =?utf-8?B?RElaVytseVd0am8rOWtMVCs4OUx6dDZBbGREYWUwU09YRSszRVZ4ZkFtNGYr?=
 =?utf-8?B?Z3hsZUZSVWFYL1RNTkIwU1A2cjMyUWZTeGtxQXhRSGVqdDhZajJ1QkNtM0hK?=
 =?utf-8?B?WVJ6UjNXY0wxMVJkVGtyd0ZWSDhsa0tTd25vNTFwWVp6V2d5djl3WXNGbmt5?=
 =?utf-8?B?OFZkT3dRZ2hHOXVCYUY0eU5WK1VZSERNMDRkZDJxZ0NNSG5nQ3lYaENObDFt?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a4aa9a2-3d4f-4037-e469-08ddf9f389e7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2025 16:17:34.4760 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8X4Q9zGZGOt8cbmc3u4YPwCargISAlunsbcQM165sJ+j2QJeFibH2FNFCt7uTornHm5/SFwpfzgYCqC0j2UUHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF208195D8D
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

Quoting Dnyaneshwar Bhadane (2025-09-22 12:03:17-03:00)
>On PTL, no combo PHY is connected to PORT B. However, PORT B can
>still be used for Type-C and will utilize the C20 PHY for eDP
>over Type-C. In such configurations, VBTs also enumerate PORT B.
>
>This leads to issues where PORT B is incorrectly identified as using the
>C10 PHY, due to the assumption that returning true for PORT B in
>intel_encoder_is_c10phy() would not cause problems.
>
>From PTL's perspective, only PORT A/PHY A uses the C10 PHY.
>
>Update the helper intel_encoder_is_c10phy() to return true only for
>PORT A/PHY on PTL.
>
>v2: Change the condition code style for ptl/wcl
>
>Bspec: 72571,73944
>Fixes: 9d10de78a37f ("drm/i915/wcl: C10 phy connected to port A and B")
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++--------
> 1 file changed, 6 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 801235a5bc0a..a2d2cecf7121 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -39,14 +39,12 @@ bool intel_encoder_is_c10phy(struct intel_encoder *enc=
oder)
>         struct intel_display *display =3D to_intel_display(encoder);
>         enum phy phy =3D intel_encoder_to_phy(encoder);
>=20
>-        /* PTL doesn't have a PHY connected to PORT B; as such,
>-         * there will never be a case where PTL uses PHY B.
>-         * WCL uses PORT A and B with the C10 PHY.
>-         * Reusing the condition for WCL and extending it for PORT B
>-         * should not cause any issues for PTL.
>-         */
>-        if (display->platform.pantherlake && phy < PHY_C)
>-                return true;
>+        if (display->platform.pantherlake) {
>+                if (display->platform.pantherlake_wildcatlake)
>+                        return phy <=3D PHY_B;
>+                else
>+                        return phy =3D=3D PHY_A;
>+        }
>=20
>         if ((display->platform.lunarlake || display->platform.meteorlake)=
 && phy < PHY_C)
>                 return true;
>--=20
>2.51.0
>
