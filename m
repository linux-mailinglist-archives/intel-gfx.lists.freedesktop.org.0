Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1243B4882D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 11:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D06810E4B3;
	Mon,  8 Sep 2025 09:22:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B6cEZzjY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA04C10E4AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 09:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757323335; x=1788859335;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=QAT5Is2gZf1HGasX2U/YCGPbRMH4Bbz2fNdVdJFD/OI=;
 b=B6cEZzjYwBxAXgwK1vlFcdJxhKfK5k8ht83gVcEDfGPXs20rSbxXmg5a
 vhjY/YoZieTwTtXR1qjmXIzgBFHrtz8Bvqqjj8YQFxPHFIZ2vYzYTJgaU
 k1XppaAjtRfYSbZOBlspanYL2xePq3rZ+T03ZGZ0+B5LDP29H7amoK3BU
 RSe/i93yV7KPxKg8ccR1M27JD9ruY27Gg7HWikYPC0nZLE2n+qut5ptfp
 RDeLUldDYTPGTQyW6JQuV/PSlvKM4DTajMNXnVXwg+XkWwYynmt7rH8ap
 mLUPSNhXiSH8WAs/fgy5sd+z42xmlgwYlkY+981fuJERbvZSBrt2Chm4J g==;
X-CSE-ConnectionGUID: LqyYZ6NxRJu/gvFuEZo7SQ==
X-CSE-MsgGUID: SaMBEPuhQziswtaVZ3T3ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59503053"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59503053"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:22:14 -0700
X-CSE-ConnectionGUID: VUEyDeN5QletdHobdK3EHg==
X-CSE-MsgGUID: I6WK3wGvRCuQJhjFZCtWPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="177062720"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:22:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:22:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 02:22:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.48)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:22:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vj0oe+R/8M/nFek2Qi2DC+jvSlNvu9r8fbsFsaVC3j7uHk5tFO66jmO6L6IFB9ObBxaG32kN15+dUZ4Tm6N+BxmDkq9SNgN6wnlUp4lrHUT9aFIards6ddhkwWDvQ2tGzxlKEYGX74WqQCYUFLUairJLpiy+wrBhvXd8U2ucXqo07nYOZvJH7A/VFI4lvJiOJZ4fDRqiVdJ9wBdqAJq1sj6HeQG8FlBhxNStx1kpp3D9a8Zqt66XWvkoJrO/Kv5XCy5hHXgg14H7Tp8Vd7HDKAhqy1IzHrlQPorj1GhitkM6xj2n8HZCMQhKh8pjR/nBU8fhbRPJ5dVw7ASToHH48Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EnIGgpTuZ6GsyhoR5Fb8GzJL8M/FfVpmJPxDzfBwX10=;
 b=GclPq+K4SJp4gUpVUig6l/nooZwI0C//2/2XfhOtNW8u6MII3dc2F69KQXRqZVTLFuHW8ibZhGczNCaMJ9Z4LPbyyx+FyXAhCo/NKgJdJlvRcbkmUxweKRp2yyhSQplgNs/pUQhTeoNAdvobWDw+vYb8P4OnMHCZO5E9/NH4qHIAZWUVssf9uN9PtvbZ8ySfF1jc7RmtUuPl18y7S+zI0CLxTLrjhf8EY52u8OmHMv7LqveDF5Zys+pP0TSqYeGZLsLsQP+XcQRWOf+1bOWJuEp6WMZ3hQig6lTRoWSk3HRjonZ6Rwr2yLOSOXnhtPI1hSamr+pwm7VyemsRipjLuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB6005.namprd11.prod.outlook.com (2603:10b6:510:1e0::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 09:22:10 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 09:22:10 +0000
Date: Mon, 8 Sep 2025 09:22:01 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH 0/6] drm: Miscellaneous fixes in drm code
Message-ID: <cover.1756995162.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: BE0P281CA0012.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:a::22) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB6005:EE_
X-MS-Office365-Filtering-Correlation-Id: ff5afdf1-007b-4142-0215-08ddeeb93042
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MmRoTkpGWmpGaU1CYUtOQ2JJQ2QzZ3FlOWFodlNCT1pKa29tTUlrcHU5THVQ?=
 =?utf-8?B?aXRlNXV6Ly9ZTVhtdTg2K3VxaTNJQU00UlowYnA1WWRua25CbEN2Wk95QkFT?=
 =?utf-8?B?WjR3bXBIZVhRT3FiSFhkV3QrNWdxZXBQeWx0Y0dBV3ErUE1td3J4bms1TGpU?=
 =?utf-8?B?UVE2T0FZT1IyZm1TV1FyUHUvSHhkQVJERTB5TEd1MVlqeG1TNnpUYm1FQVVh?=
 =?utf-8?B?SFB3Ry9naWdFYVVIWWRQRmZzWHhZbjBpUUZ2eW8vSkpURG9vWTlnUk0zNFJh?=
 =?utf-8?B?YlJvS3h6N09zRXFvY2IrOXc3eU5VNDh5UC9FSitRY2lHVEJ2L1lxY3M4c3Fm?=
 =?utf-8?B?MlpBT2JoU1I4YWZrbzViT3EyZzVRdDBTYTJwZXY0YTVaVktCNmxpTjhLTWpF?=
 =?utf-8?B?YjFvSlVYcXpuekY4dW1uVWlMRTdHUWl3bC96dDU0ZzN5TFkxM0t3SDk2b0JH?=
 =?utf-8?B?cHd6bDBVbXMvWjl5anlScTVyT01jR29VUnQ2bFVmRGZaam1jV0NidVJidnpY?=
 =?utf-8?B?U3AvcEhvcFpYcTFHOGVPK0ZUTWJldGVXcE1qMWVWcVAwdzNoT0xocXd1WW1U?=
 =?utf-8?B?OFNCK3F3OFNiNzAyaEN1TFNFeGZVRkZ0Ny9GWDFSRkl6RTB6RkovZ1ZSSlJY?=
 =?utf-8?B?QW9lU3JRSU5WOXJmamszOVB0NDNkRjB6VkJ3VjRvT25iNVgzRnF2bnBBcXVu?=
 =?utf-8?B?dWtpazVoWUZHZFgyN2hvQUlwekFPcUd2dnVsUU9aTHZtVnFiRnVveTJEUFpt?=
 =?utf-8?B?WXNEWm9UOS9HVk44R2N5REdhNStZS05JbEU0SE5kaHFNNEIvMXdSU3FSZm9Z?=
 =?utf-8?B?WG9HczJqNGRzb1JqaU9EZHdYR2RIazlQdXNaRUphLzV6N3ZkWFcwZzVIVzZq?=
 =?utf-8?B?K0xldEJUY1c1aDV3TGoxWHdwVG9YTk0rZEFTaHA2ZFROMDZOQTRMNG9iQS9w?=
 =?utf-8?B?Ri9NT3FaMmQydVhsVkhyYkdzOFY1RW51bGlIV2JWRUxnYVZpWkNjU3BubjFx?=
 =?utf-8?B?R2k2MjhTOHBBTENkWU1oMlFreHp1VEtnWTNCNVpuMGFMVmZXaldWYmVheUx6?=
 =?utf-8?B?VSt4c0pyOE1IcS9ESUNxKytMTWRzeG85VTFwNU9wM1ZkYVMxNE9RYzRWQ0NV?=
 =?utf-8?B?Y2JCUkN0M25keE04dFp4T1NiNlhXM2xoK0dxV3FZU3gzLzBCaHZRV01lRFFo?=
 =?utf-8?B?a1hMQWg1RXFMbHN0cktXQTZtc3dIcVVLRnhTeVgrS0JpR1RRNHE5ZEhaTWpS?=
 =?utf-8?B?ejRVT0c2Vi92VlMwUDd6ZzlNVm5WMW9TUkI1dTFEMlg5QTYxVjFiTTBpZTg4?=
 =?utf-8?B?RGw0SVpqS1pueHA5L1pnc1ViVGZLY1ZuVWdkT3lrUVMzMXA4RFQzTG5CbFB1?=
 =?utf-8?B?Qnd1L0VqTFBGZ0pyaEJvcXdPNHR2eWVLZ2hCbkU3VXNVVmZ5UUhLWFp3bmtm?=
 =?utf-8?B?UVYrN1BRK2NZdTJvZmh6K0VBTy9YWHpSZ1BEYld2TmRkWFZQcGRUQW5SNkl4?=
 =?utf-8?B?S0tzUzViU0JOV2NqYXByeWlmTG9HL1ZEcDVxUWM0RzFVSUpsZDkvSy9pRjJm?=
 =?utf-8?B?ZExDK2x6QWRVWHpNNER3bkFzcUNuSUh2bTZOQ0JVa2Vmay9VclNWU3VVNlUy?=
 =?utf-8?B?eVZkTWFoM0pvbDJHVzhsL1ZHNHZydFFzMHg2NXkwMDVLN0Juelh5WEdjM3l3?=
 =?utf-8?B?ZlluTnVuMGl2d3pERzFxQm9haXI1VU5NVTh0MzJRbkx3bDhXSi9kNWg4dVFx?=
 =?utf-8?B?bUVZUHJMd2s2WERyRFZpZUxRYzZHQVZ3R2pYanN2bEFMVUdRSzVYU1VFcTZS?=
 =?utf-8?B?MDdhNEpSbmVkOXFDYkdERk9HcVRvR0tuakY2ZGVhSWc0d2dQYmwzN1VRQ2Ex?=
 =?utf-8?B?R1JLblNiSkhXbXZnNTRRZHFUTTltMENnRUZBZUpBNURLdFVmcFBBNVRhUmdI?=
 =?utf-8?Q?BRpCrEm6lMk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WW5LZkZuQUtyYmJqV3FTbEJDOGUrVzdlSlV2SEQ4M2JBMGpIdldoOUUrd3Bs?=
 =?utf-8?B?UkRQdjNTRGtCc3RXdlpMZ1o5Uk8rTURmUDhaejlhZXlDRmJVbGtFRFBPbTlu?=
 =?utf-8?B?ODdiZyszYkZobmh6UGdxSW1BaW50ODVLa0E5NStmMkQ2MnhMWjFtY3Z0bmhM?=
 =?utf-8?B?MlFmY0xTOTdFb0J1d2ZITmtKY2FIaUgxMFZ4ZnFxeW1ZMy9WNzBFZnFpTXBl?=
 =?utf-8?B?Z0FqY3ZnVktTZlhJYms4aFN1Z1VyNUwxdld6cVc1WnpwMFVaRlVYdEt4WEZM?=
 =?utf-8?B?VGJvMUNXa3grMkI5ajAxOWlrVzJpNThqN0N1NW9kcTB5SjNwbDNIOUl4QXg2?=
 =?utf-8?B?aGhuQ1A4SFp2THEvWmx1aWcvSVd2ZDZWQVo3aHlvL05sOWI0RW1pZVpQbk0x?=
 =?utf-8?B?OE1yOFNIeS9RY0s0aEE2R3g4eDMwcGhReHRydHV5UVd6WEJCeVNVcGhjcDBj?=
 =?utf-8?B?RDFsVjNEVThEZEhyY2x0ejYyUEo0WUhCbnkyakhuRVpRNTBPejU5aHRRekpL?=
 =?utf-8?B?emxndWRMQytkRWVTbEV2czliMGJabGhIeDBpWnlvcjF0NUY1OUFkcFhPL0FL?=
 =?utf-8?B?VjRrZ0FLeGVDNG8vTXhzR0ZRWGZGT3Y3bi8vL3B4ZFN1K1VQajNzMnJIMFJK?=
 =?utf-8?B?MFpJUjc3dk5MVVFqYkhiQldIV1paWnBXTmFVUXpuR3MwVHBMR0lvNXd2bmxw?=
 =?utf-8?B?Q0lXTWVrbitoR0dlaVRHOGRlRWVFVTd5bnMxaFBWLzZpcE9kTC9SOEgyQlYr?=
 =?utf-8?B?UXFtQ0VPSDBVK1JkejZqYm9RbGJQNFQvaGNyd0FIQjRSWUtHWFlDbXQxTzVW?=
 =?utf-8?B?WmVhTEhDOXRzWG5jQXNKak54MFFPZ1pjRk9jaVp4OW03dWw5dU1lQ3B1YSti?=
 =?utf-8?B?anFBdUdRWStTWVJ5S1hPMEF2NGZGeXRrTXhHRVBlaDNOZjFZK1VjTjlCbW5P?=
 =?utf-8?B?Z2JicjRhbzJ2Q1JyUnczaXZ6aFFMbEpYZG5DTTk0VUZVTTh2aWFLbHNHME1M?=
 =?utf-8?B?MW9iMC9ick03Y3JVNUxqSVVaOU1tUU4xdkIzajYzU1pucFB5NUt1T1IvZUxq?=
 =?utf-8?B?YXd3cHo3Q2lIQ1B6eVhCaWlwbVNUaTM5VkYrdE1Kd2FaVnRQa21RZWtLMHNS?=
 =?utf-8?B?V2d0MzVDK1huVE1wWUZ1Um4wakhWbmUxd2hHMVVuQzFHcUk5TlU0RHFYaURy?=
 =?utf-8?B?VEovQTFWd3hpU2ZsUWlBekl3d0tMV1RYVE9meVJZQjNPU3N5Y1lLVENudnJK?=
 =?utf-8?B?b0hVVzk4a1lYN1JRdHd5UXVkS3RBY0tsaVN1T0hvSHIyQjhwMGc0T21ld3Rw?=
 =?utf-8?B?MWRlMTI0RENDZzJIUUtrRXhKc0NtSHExTWhsNThXclpzV2ZZdkxOTXJ4d2ZE?=
 =?utf-8?B?clg2NmVVNC9jYTVBdVIwVkxEcklSVXRZYmVVbFJObzZtNG1wNmV3R1RFMTYv?=
 =?utf-8?B?MWpSdjg4Ry9FTGQzWjAvNVhQVmFGcnVwWFp5MUJJUnJqNi9mVEt6cFBxNU5P?=
 =?utf-8?B?emsrMjA1bjVWbDc2bFZZUi9xcW5peW9RWnFzYTVFNVRlUGJ2UXk3SUE2KzNy?=
 =?utf-8?B?ZEFSSnpCTjdGWnRHLytvL0ZVMlZOZGJYVFRabTEwNEN0S1ZPajBhR3lBTHVI?=
 =?utf-8?B?T1phTnhLSTByOGp1RGgxWkJxQ2tNd0xZMTJzbWoxL29FMy81eWE3NVlINjVq?=
 =?utf-8?B?TVdiM2dxRFlTakVGeWkzenVUbVN1MmNSVkNwaDM4b3NkZ2lUM1JpdjdBbVRW?=
 =?utf-8?B?RnBEZkM4QzZQQ1lTMy84Q1ZmdDRYWnpSWVQ4QVV4RHFVaFVTUzkrRU0rZkJQ?=
 =?utf-8?B?TU9GWHRwdURSUjVxOUxEUXRodHhBbWdBYXJWQldqNlIzYXNkenZiVmo1YjlU?=
 =?utf-8?B?dEVIMkdrNlZ2MDZ3ZUVnS3JESnEvZEcxbXg3SXdRRU0vRm1yYVRNWEVhajIx?=
 =?utf-8?B?b01NOFdWU09PWkpMdE11WWRaNmJUa1BKUVBJaTg0Vi84ZDRXc0tBMnJTcENP?=
 =?utf-8?B?cVcwMGxSSXdua2ZqOGJtK1VzcVVHNGIvbjhiTmdrQVFNMkxiaUJ6V2VHWGFW?=
 =?utf-8?B?SUlXcEFZbzV3RDRpam5uRXRqeEJsSTNIRm04RHRKNXY3QUdjb3IzanZ4WEhB?=
 =?utf-8?B?b1lMaDREbzZYbzNKSTdWNWNvaHF2dFAzWnBRdHlSbC94WVFXYlo4dnQrUXI4?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff5afdf1-007b-4142-0215-08ddeeb93042
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 09:22:10.4197 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ADy5fkXjirYvF/quXBgN5bCx+q9EVGywy6z/mKk/H0zARyvbvSccp7PPyp9ioW5qKNoH4kEDb4RuA11Jq/OqIx2ZlaMEAIwsPbFPA6NbvzY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6005
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

Krzysztof Karas (6):
  drm/i915/gem: Avoid accessing uninitialized context in
    emit_rpcs_query()
  drm/i915: Add default case for the switch in igt_smoke_tiling()
  drm: Remove drm_modeset_backoff() return code
  drm: Avoid suspicious operations in drm_fb_dma_get_gem_addr()
  drm: Do not attempt to round_up() zeros in drm_suballoc_try_alloc()
  drm: Avoid undefined behavior on u16 multiplication

 drivers/gpu/drm/drm_fb_dma_helper.c                   | 7 +++++--
 drivers/gpu/drm/drm_gem_vram_helper.c                 | 2 +-
 drivers/gpu/drm/drm_mipi_dbi.c                        | 2 +-
 drivers/gpu/drm/drm_mode_config.c                     | 2 +-
 drivers/gpu/drm/drm_suballoc.c                        | 6 ++++--
 drivers/gpu/drm/drm_vblank.c                          | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 3 ++-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c    | 4 +++-
 8 files changed, 18 insertions(+), 10 deletions(-)

-- 
2.34.1
