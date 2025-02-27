Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D539A47CC0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 12:59:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D26010E31A;
	Thu, 27 Feb 2025 11:59:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ch+M9Mfj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0E610E31A;
 Thu, 27 Feb 2025 11:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740657592; x=1772193592;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=v7qrM0XYOlSxNk7q7kNYEKSQ6vPo6hXH1vAVGriqVw4=;
 b=ch+M9MfjnbZos64cxzr7KbFYXJSY0tWhP/YICiKnGFgrD7vzLZsT5Ayg
 q9h8uEelsT5Kc9vHwTBRSu8CND76MkhgRvTgokhtp7i8eRiRshD2DHhHk
 otgsFe0x4GSl0aNxwiZ40G+azkgqDJKnkJLBqADkw0WafIMH1W5YC/kdK
 +lT8qIDhaBKZQqEoC32mjj8CQXSJJBCmEa29jKw+HgVDVs5Fb75AQcB89
 sgSlH59OEfR7CjGSay+KDCrxGUAsbHf0BJiu/b2ukBGaJTb6qks+zEbmC
 b4FFEtv9G3pwm50QaQFCrFdEhyqmvASegTEhv6etII/Lj8j2tALKwE9Zw A==;
X-CSE-ConnectionGUID: 2BFjxO3rQY+iJdhDrlAz5w==
X-CSE-MsgGUID: IMSfDFUcTfCIl5oZ31tiYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52938805"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="52938805"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 03:59:44 -0800
X-CSE-ConnectionGUID: I0PM9OlxTAWIsqp1waqNGg==
X-CSE-MsgGUID: mjN66199RgSkAkry0xI1fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147924071"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 03:59:45 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 03:59:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 03:59:43 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 03:59:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cu2f4lgeMv1aPKZN7BtCeJq+T6c/4DYplLWes5vd0gJKJTZIo8s0nM2UKCe5dad6g7Ljf7n1301OvqHLO5HDErUvEMXxXIbgyM/6Ld9tb1OuKTX5wgH9ZrBqWRqg1fXxCW0at4SxHen+wW+JpuAHbpJbNMuxbnNPR7iZL1eXVvvWVx+6YqPxUJx72lu4xYZuGRh64FNQjhoHbzAqHLTgP3+8INYPpVjpT5bmYp2LTcPN4rGvSwBhWSI8gghLomBZ60WBfSLWzV8Cu/k1oSH5iKUPFpByygsrUegGght7Azn1+HkNnvVHpVmLKzMln6knYYLlF8mR7fOnyg7imqQ3sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uD9GLSbf6WpIsTFSeutBlcOvVaWq5z2jPNCQYxOrnjs=;
 b=DyBE6U0ijiZuKXH5ICijeBobyFQTjI6WXHET4fihxitzqGvzGNn2ILRJF69wxkKNu5N2/Tcv8ME0ZI9tpvojaigsHxMR95HNbmn8i1d0tt6X8iEkj6hCbeRh40yeYhku+HvTb6azc3HbEfYY3ktq0H4rY4BpAhJIJfGL3mf0Ii6S0Hm7ZSpmo1lPI7r+5SVBDr3WLTNg323MEIIAEc0URUrDmINUzOKjtp5V5tRQVsJQ1oIlkbySassEdSuH4eQUgMpL1NWYPD6sOMLDNUqk2dlrKKdx0jz60SnCf7mXPjQ93z5QPJE+0wtHbfZNjirrBYA+ZlPCYFq1tsjn5Lrdpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7889.namprd11.prod.outlook.com (2603:10b6:208:3fe::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.21; Thu, 27 Feb
 2025 11:58:54 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 11:58:54 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250226222613.GH5109@mdroper-desk1.amr.corp.intel.com>
References: <20250226-xe3lpd-wa-14020863754-v1-1-8096dfeb3c6d@intel.com>
 <20250226222613.GH5109@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH] drm/i915/audio: Extend Wa_14020863754 to Xe3_LPD
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Thu, 27 Feb 2025 08:58:48 -0300
Message-ID: <174065752877.19033.7634559042177985506@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0098.namprd04.prod.outlook.com
 (2603:10b6:303:83::13) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7889:EE_
X-MS-Office365-Filtering-Correlation-Id: ce2d09d8-ee48-40fd-de9c-08dd57261bd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amdwbXp6MDhDWWZKVlJERGN6WkZqa2FBZmhLS0Y3cW4rSGU2STZhbWh2Qkx3?=
 =?utf-8?B?WDFBYVYzc0FXR1dTTXNPSmZKVlZhRjZxcEc4akpOdWpqN29QSmxTdSt5VXJN?=
 =?utf-8?B?MlZ0bldYRll1UFVhbzA0NUhSQ0N3VFNQbyt1TnMzT01yM3BpVlRXR3pHVVYw?=
 =?utf-8?B?bXRNdHQwcWVDbEpUcWZ2czEwRkhiTE1nUGpjMkE1eXhyRitXNU5YMG43UW4w?=
 =?utf-8?B?akRQQjdpcTNvYmk1VGZrQXZ2R3JYekFyY3V1M2lqVzQrZmVJTEVWeEJNa3U1?=
 =?utf-8?B?bXptdTBCcDQyV1Jxb1R3UENEQ3VNRHAvRlNpYkxBQ1JnQ1c1dVJHUFV5TkdV?=
 =?utf-8?B?ZEFqelpSWS9LenZ0TStJd2Q4YjM4NEkvL29FM3Q0M254K3dzTGxsUUlmTS9D?=
 =?utf-8?B?R2ZZbUNIR3lrby9SMDQ4S2pScjk2RkxWb1BaMnFvQ21neTRUTUV3MTBWWmpy?=
 =?utf-8?B?bkZmTWlVaUxKOWNWaHI0TjVXNXM3dDAzWmd0UGhRL0tGOFozR2FZSmxxWnB6?=
 =?utf-8?B?T0tqdnRpaGRYUGg5cFBaNFI1clpqK3F6Y0lVTE9GTGtHQzYrTkZiR3JpMEVT?=
 =?utf-8?B?eCtuNU56Z0FNV1NsWHFJOTNKWHBidU5PTjRIUnArTW9kbHllYmwxM0pZQTV4?=
 =?utf-8?B?TERqREU1a0ZuWTlDeG5wVjVlS3ZmV0R1QzQyU3Y0Q2JZY1VURVFlSDNPWW4w?=
 =?utf-8?B?cFF6WjhRck9YdnRQYUdGT1ZzUHF4NFJCL2NLVUdLbWxuN1FtdTM3ZGMyaDF6?=
 =?utf-8?B?Wmh4dDZCWkRDZ2dkVXpSMnVwV3p6ZEt3ZlF4V001Y3NVbjFrZWZlekxMU0dr?=
 =?utf-8?B?SU0wYUdmV0xSWDkvaWVWWHg0VU9UV1A2RHR2VGY4QnJ6Zk1KUFQxdVIwekpJ?=
 =?utf-8?B?Wmc5amxUaWxURkxGY3Q4WXpuTkhqZjdYbU1XMnVoYUJneGlvblc4b1FtYTh1?=
 =?utf-8?B?c2lmZTlBNHIrVTJ3WEZVMUVpSnIxSjByeHIzSFdFcnc1VXZXT1hFM202RlQw?=
 =?utf-8?B?T1FDamo0a1BVM1IxQlJOQk01bnB5elE1cFN5OFVUWktDMUttQlR6dkJYU0VJ?=
 =?utf-8?B?VVpWcGdrNHQ3WkdjbU5BODB5bEhienpBc1cyZXh5eVZBdVhJOHF0aXh0cTNL?=
 =?utf-8?B?T1ZIU2dIV2pHL2FPSER3OWRNZlZhbm53QkxPWXYxcEwxN1IxRExUUkc3UjBG?=
 =?utf-8?B?Nkw1UWFmVmtrYlh6TnlqaE53eHhqc3dsT0cxYkx2b3VFWVJLdzhycFhmTjc2?=
 =?utf-8?B?NGNzQnpwa29mb3hacnNCZm5WWVFtZ2NvN2UwaDVEMDVocFVKajROSDJEOEFn?=
 =?utf-8?B?eTc5SWR3THdYVDAxM0pnRnVMNGMxdUVud1AzQ0t5VEkvNU1UMjhUeGJBTGxC?=
 =?utf-8?B?UEFBNmdlWHI0OE1zRDZrWmtBcWdFeVo0U2ZWTWpNK3QyMDd3bGhJYnplblJh?=
 =?utf-8?B?VHlTb3g1NDhFb0cvN3Fuc3NuS1hQMmZIWVhYa2RaeTBBdHVIVVczd2JWVmdk?=
 =?utf-8?B?UDZ1R1hZeEJ1Ym5SdTFtdGp4NkVnL05ZbldCbVJKcGZGKzFzNVhtVlVVSkdp?=
 =?utf-8?B?aDRCL1VBTEpSNGZkckNoUUN1SUdKU1laZHVaMXEydE9ybDNsbWQvRWZrKzZ4?=
 =?utf-8?B?dXhCTS83ellvZDRQSkpxZmtpaHRpdVhSL0t6RmpnZVQwY1J0cDE2WXI5UW1H?=
 =?utf-8?B?d2hPTTBMS2UrVlBaNmgzenN1UHBwV2Z4TERIWUI4MWF6U2d5L1BEVXcxRHFa?=
 =?utf-8?B?L2NZcU9JZFRiaHdpRnhSc1hTWXV5Rml0SEZJY2l2bkhrMnlaODY3TEJFSEJC?=
 =?utf-8?B?N3VwTTdGQVNZREU4YU9UcTBhVjdIazA1MjhOMEw4ZHFaanhqZWZaYVQ5aGp6?=
 =?utf-8?B?WSthTDV5QVBXcEhmOUFmR3RVQTVia1ZNNTc1UU9oTGEyclE0MUJ4TUduQkE3?=
 =?utf-8?Q?K5bp7ZExiVr9EOWvNEV/IzCEZvwBd8/z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXVLYVNRUUtIb0kxRzIxR2swZFVpUi9ZaWdvQVJuYjR5RjBDZld5amgzQlZt?=
 =?utf-8?B?VXFWQzJ2VHhsYWE1aVduUDBVYUJOYkNtdWh5M0JDWEd2eVhnN3pnSzJ2SkRY?=
 =?utf-8?B?eE03cm1Jc2E2VDZOT3R3WDZQVE93UC93cUZkL2h0R0E2WHNyMGhtV2NvWXlV?=
 =?utf-8?B?UHI2YTlpY2FhSDNGWTNndW9WSVRycS9nN1FiaVJJSkhWV2xWaWUzWlc5MEhN?=
 =?utf-8?B?MURzUjhjc0lPVU1oRDZFbTdKUGZhZFMxZmlPUnRQV1pHSmtvYTNGb1lpZUlW?=
 =?utf-8?B?bUN5RWZCS1NmcFplU244clNiVzU0UWE5azNreXNDelRPcFdUdWpMZmliWGh3?=
 =?utf-8?B?M1IxdFNvRW8vUE5OMkZ3c1dvY1FvOGNYTWd5WXEzWlo3TnBmSjRZTVNGSFUr?=
 =?utf-8?B?dm1XZS9qM0NURUhvTVVQaitYNHpWNVVSYmlkT2tEMU51bWRxTFJwQUZBMk53?=
 =?utf-8?B?OHFzWFdNQmtTbDlPYnpwYVFOY2FFM1VUQzlNQUpuRU03bEZaclhSejY1NG05?=
 =?utf-8?B?a09jQlRJL1dPL3RwOSt5UGxaUmZoVnRqc0t4R3MrcGwrMVN5cVRBTzRTR1p0?=
 =?utf-8?B?d1oyUW93ZUVxSkIxbDBVWGoxY0hUTjBodDBwdVJlZmJKL3JGWU8yWitBMEt6?=
 =?utf-8?B?V1VDd29MTzd4aTJqM0g3Sk1HK1FJeHB4Q3VGMVo4NTBVSVRUckZudzJwZHBh?=
 =?utf-8?B?QkFVeXYydjZJbXRZMUllVkVscGZCd2laL0ZuemZBUFRkbTh5T282OUNhdXFG?=
 =?utf-8?B?WUpBZXN5bUU1b1JWbG5rNGl6ZGdCdDJKUE1WeXhselU1MXdncGNpb2U1YWJh?=
 =?utf-8?B?RFRYak9HY1NFTjI3UjM1czF0QTVSdzNYV2FCOVVIS1JGa29zMzB0d1J1UFMr?=
 =?utf-8?B?QjB2UXpQd3NBMU1LOW00Zlcyc05zSGdQdkljaitQL2VCQURwdmtQNUJFTGJi?=
 =?utf-8?B?SmxaVFpxakxQdUI5a0lpcm41aUdhZWtmYitweUNNbS8zZXppWmNXdVJ6ZHQv?=
 =?utf-8?B?ZUg3dTZIcmZ0TE9SOHA2UW9SbGt0bjh6N25DZTYwMlBUMGRiVHNsbGI1cmpC?=
 =?utf-8?B?K3ZQVVJGaEZ2c3lsMG9MSlY1NlBkdXdTTEhXdkJOSk5qMkkyR1lyNEoxTmF0?=
 =?utf-8?B?RmZudkJFUUJyMmp5QjM3dHU3ajFpZEN6N090elhnbFZpRWxPK2U2VnFnajZU?=
 =?utf-8?B?M2h3VnJsSGx2SHRtRGd2UjNGRGswMVVlaHh5aHVWWTRpYjFqM2lOb3ZDNmJY?=
 =?utf-8?B?OUVzQTh1NndtMEpHMWtTM0MxbmFMb0RIUjJpT1llaEFIcmdCcmZHa1E4OW4x?=
 =?utf-8?B?YTNZclAxNlpQdmtPZHNWVm45TGxPYlVVMkw1MFRqOUtodDloSUFYOVpPL000?=
 =?utf-8?B?TmdPeUExVXoreFp1bzAvQklhSjd1MjlXVmsvZVZOODlrZ0xSc2RDclJORms0?=
 =?utf-8?B?UWhaM1VKMDVyUVJock1uK3lPRm4vS0NTL2g2dG5PNndodFBjRjk2aFEvdUJ3?=
 =?utf-8?B?b25mWlIvWGVkelcrYXVXOVVUemNQWGpSTVI4N2kxTk5JTktDUkdPcFVLQWpy?=
 =?utf-8?B?cFJKZDdoQ0o4LysrN0h6eE15OWRxTTZJOFFwWFJ0ZDhnaUk5cFdsb3FZYVdQ?=
 =?utf-8?B?dUd6NUowM3RLVWJYd2JyZFFlb2FNczkrVmZ6d2tORnlKM2dVaVEvRmVzWnpH?=
 =?utf-8?B?aElIRlJFYzBFbDZSQzB4dlg0OUhPSStaSjV5TnArRFE3WW1WWWMvdHV4WmNK?=
 =?utf-8?B?OFljbGxETmFVMTJtN2V3MzZyc1pzUjdMcnV0NmNFbldxQ0tuR21BL2N5RmZY?=
 =?utf-8?B?NlRvTU9ZTXdrU1FkbmhkMjVtRVFkR043N1RPQmdHMFpQUzcvd3JiK2tDT080?=
 =?utf-8?B?K3Q0WktKQXlNdU5Pd1AzRVVqSHJIZCtHYkRsNTdyOStDOWFteFdDaFJtK3M4?=
 =?utf-8?B?MkFqOG42eld4bEpLRmpkS0xSQTliYVZyWVNacFpHSVFHUTRQODcwWVhsajFp?=
 =?utf-8?B?czZDakJrQ0J3aDl1OVRpeFJIRjBuWnB5UEtqSmhtTitxTUhJdTBva2FlZXpP?=
 =?utf-8?B?ejF2UkczK3p0eCtnRVFKdjM2Q3A0ZjBJYk9qTHExNnlZOG9GR0hQL1ljWEY0?=
 =?utf-8?B?T2JXcUE5OUludUk3VkFQVG1xeVVENVVKdHkyYmFIMlJnTEhqZXdhY2VuY0Mz?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce2d09d8-ee48-40fd-de9c-08dd57261bd9
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 11:58:54.5487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jrDasbvDr3OhUX/MSR0QIQHvrqBmKHqewlsTlo5CuGUGQHIvTjxMAEeVCgSqor+YO5d2JxqZs7AGC0fNsTR2GQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7889
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

Quoting Matt Roper (2025-02-26 19:26:13-03:00)
>On Wed, Feb 26, 2025 at 11:08:46AM -0300, Gustavo Sousa wrote:
>> Workaround Wa_14020863754 also applies to Xe3_LPD. Update
>> needs_wa_14020863754() accordingly.
>
>It looks like this might also be needed for Xe2_HPD (version 14.01) as wel=
l?

Yep, display->platform.battlemage covers that today, but it would fail
to capture cases where Xe2_HDP get's re-used in another platform, if
that ever happens.

I'll send a second patch to convert that to use display version instead.

Thanks.

--
Gustavo Sousa

>
>
>Matt
>
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_audio.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/dr=
m/i915/display/intel_audio.c
>> index aaba438ab41e3c1c06d609593dc40dff33785d3a..67344cdbd8196fcca99af531=
1cf39d8e9bd810a4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
>> @@ -190,7 +190,7 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bp=
p[] =3D {
>>   */
>>  static bool needs_wa_14020863754(struct intel_display *display)
>>  {
>> -        return DISPLAY_VER(display) =3D=3D 20 || display->platform.batt=
lemage;
>> +        return IS_DISPLAY_VER(display, 20, 30) || display->platform.bat=
tlemage;
>>  }
>> =20
>>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
>>=20
>> ---
>> base-commit: 4a2f1c823287a84dc0bd46c5a93545dfe49967f2
>> change-id: 20250226-xe3lpd-wa-14020863754-5f11f757cf20
>>=20
>> Best regards,
>> --=20
>> Gustavo Sousa <gustavo.sousa@intel.com>
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
