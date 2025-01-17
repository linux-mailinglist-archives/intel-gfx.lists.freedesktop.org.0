Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DC8A155CE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 18:35:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A97DC10EB53;
	Fri, 17 Jan 2025 17:35:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WGKkqYi2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D3EB10EB50
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2025 17:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737135336; x=1768671336;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xn13EnDiGbiPcdSc8dRH6IJnXK+zdiyuBe/S8oX3zdQ=;
 b=WGKkqYi2tFnzkq1j9FDKBTWYTTA8S8OZC33MC/MTJKTalArmgtm7ksNO
 xP8I8hU1cTHJTnJtSZi1HyH9W83eWZo/Ga31IWtcIQ6FYYFM5ssEPYOEa
 WW0bRrWuMtXs5XcYymiRz5Rk533K3rO7mT2iZw3wGvwjEP03agybzV4uA
 8NEmePdf4e/9AiidnkQQPLwumhltYFHKPR7TB45oLnmV3Lr6+LBsoUJAv
 NBrS7qPwhLQjV5ZWIxxw6eOMywKyz60P4G2kvc996R+4l00hdLgkkf+Rk
 O5b9kYCVSgt5UgjAFRBxm+izv+xrTS3QaO3RjYaTQJjO/Ud90WXSoq2VN g==;
X-CSE-ConnectionGUID: XeZ5KFaXTVeGzkjfv524Xg==
X-CSE-MsgGUID: 8v2RiC1GSrqAeXaMH4y0jA==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="36785529"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="36785529"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 09:35:35 -0800
X-CSE-ConnectionGUID: gbOUNzN0Rc2R3Nwr/okN3Q==
X-CSE-MsgGUID: IUFG0HHJQp6qk2upM6IV/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="110867451"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 09:35:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 09:35:34 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 09:35:34 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 09:35:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w3dmZI8V28iCqiyYWscOGsnWLSHu9i3OzoToQCXe1vD+Y5JEU7SY8gVrRCYjMqYBKP/6yxsZSVr+doQLAX2V4DS/YkovNTZaGAsuzAwRr6QnycrPYkZgd8YX6W64pBB755mC6DjfjZOR5IB8La8XyCVqzPERtTsdhTpRffyIEyVQLaLaslNTrlkqeoLyfBMys97KTj3iRLBPgf6nhsQhvOUu6uucZXt3/k6gxD2JFtYHshE+h8XD4rHDlStFqCxOc0Q6PP4bYo1cfCZXfoNj8dKNh/f4OYATn39VTLx2cZRRqEZgeOqJ3t6bFp04uvbpL0T1o/WsSUZexxgnBQmIqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tzg4AO36WlyBHr9VEaMOLSgUJEBINY9Vw87yJAwHsGg=;
 b=yU7fneGq3i/1+DSXGwdKaUbbo7QXb28GTnvmLqF3d7CrZihh+fJT/9VWosm3ec3zooOFPtRkDPtYrvhte8uosg5PbaV5NDVBKpqXExV2a7Mxy+yMvbloLGg/pqU/Eb1Mfc5LFl5N3kB/Lnl1/rQTVHV10zF4H3nCiFPGFBHGZF1jb28D9jWIb3vvr79xTm+O2LYp8/9jMWxppJQSXw2EZoGZSJ7z7YDF6kv8nKh2TLrrxq0psEy3UvnhRdiY0WAz77xI34N/q9QVXFutHvRBANNufeyIvEMXELIsWF3DqndHOtk1u2ythpwON6b4r1jjHM4MPncAX29W1ZLpBXq64A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by PH7PR11MB7663.namprd11.prod.outlook.com (2603:10b6:510:27c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 17:35:29 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 17:35:29 +0000
Date: Fri, 17 Jan 2025 18:35:23 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 4/8] drm/i915/pxp: fix typos in i915/pxp files
Message-ID: <4k2arad3qbkrrtjadcs6wrqhxk7jx4nhyppclep2pbkeca6we3@avvzqju567al>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
 <20250113184318.2549653-5-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250113184318.2549653-5-nitin.r.gote@intel.com>
X-ClientProxiedBy: VI1PR08CA0236.eurprd08.prod.outlook.com
 (2603:10a6:802:15::45) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|PH7PR11MB7663:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e474fd4-9bbe-492f-afee-08dd371d561c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cnR3eFJObGRKVG11VlZMVVM1Y2dnV3RzYkdFM1QyeVlnVU1kRVppclZXS0xL?=
 =?utf-8?B?Zzh6YUVMRnN3MWR2MktDYkJwVXdRTVhpNlRhSzVHR3VwaElxaDFudzNMWGNs?=
 =?utf-8?B?OHpKRWE2akp5U1NqRWxoWEJaNGUzMTdiZTg4ZXNxUnBlOHlUTlpUR281aGs5?=
 =?utf-8?B?bGgxL3pwY3hPd0lXZFJnU2RxbGFUdU9Zamd0YjgreitYQTZBS29kZHpvT3Ri?=
 =?utf-8?B?WlN3c1J0RXkrWmNxQldLajZKN25DVGxrT1NwYXV6b0lmUE5vcW1udENYblVi?=
 =?utf-8?B?ek5PT0xtMG9nUWQwQUlSTTFHREE0aXhUTDltdHppY3lVOUJwSXY4dGZMTC8w?=
 =?utf-8?B?MjZRM0dXMzgydXUwSXZXQ3ZnVUdjUHAwbkx2WmxXcExPZmtvT2FkSDJnOTV6?=
 =?utf-8?B?cVlEZzh4a1UrbWJJbWtWSmVGT0tDT3RzUGhPLzdTWTRGQ1hZZGZlUVBIRVlM?=
 =?utf-8?B?UGNPOUtLaWJHd1RKTlFHaVVGWXdKR0hvK1lHSWJPRG1BcUNicWZ3cVViYkNu?=
 =?utf-8?B?d1R6RUNxajcwSzlvcmhnZU4xTzZGTGVxKzR6Z1ZHVFcxYXMrY1Z6MTRlQVZV?=
 =?utf-8?B?bDhOMmxEMG42QTZYTEYvUmJZS0xRSzRzbVJhWmpJZVd6MXNxd2txbUVCRjJS?=
 =?utf-8?B?ZENpejIvMXNqWXJCYzdDV1QrbWJHOFVMUUFwcXdrNlVha05GS1dRN1NrZEFw?=
 =?utf-8?B?WHJadHV5Y2pFNEJhS0lKMDJLdEZlK3hOMStuOFpraUZ6eFhtdUxCSWg5QnFR?=
 =?utf-8?B?Q3pFZU01NzVsQ3ptaHBrMGlCUG45NHhQMFJ0VFBHL25vRkIyVHB1VGZWbGk2?=
 =?utf-8?B?OTNBbEpEdG11MXIycytNU3R1U1R0RWxBZUg1dUZrUjBjOFdqMzdFRlNrdldu?=
 =?utf-8?B?d1dOUk1zWUJjOUNWSXFWLzg1S0ZPK2hVb3RVUXNYUW5GMUt3RFE3VGZXTDkz?=
 =?utf-8?B?VkRrTGdlUGdjbE1SYk1YdVJXM3BqRDJlU2wvaFhabUhNbjB0enhVOGM3LzdT?=
 =?utf-8?B?Z1R5MGZaQTh4cFJiWGhXQ1lIdVRxZ3N3UGlhaFR6NGJCa0RwcXYxQjMyUU1Z?=
 =?utf-8?B?aVl5YTdTRUtzeDduNUFBVGZMQXkxVVlaYmxxcFBidWxESGVZZEVWVnJYSmxo?=
 =?utf-8?B?QlZFNEhjbzBTWUZRWUViQ25zN3hoV0JpZXkrQnFFZWNsNzY3aUxOZ2RQVGVw?=
 =?utf-8?B?Skw3YTVGdk1CNDZzQlhaUGwrN25FUElURUtGc3Zkcm9GN1dJRnJvbitJMXVL?=
 =?utf-8?B?RjMycFBRbmV5cEVYYUtRVGkvd1ROdFU0SmxuQTF6TXZwcDEyZkRnVFlWbzky?=
 =?utf-8?B?T3NnL2ZDTHNaNERZVFdzKzl5aUVNTW02L1V3QWtXQWlDNTlsMy9VVjMxcEJY?=
 =?utf-8?B?RnVCZi80SFcwSWlLQjJ3WGZWTWJKZjdJcjd6WUR0aEg4WDJtL2w5bmR5dEVn?=
 =?utf-8?B?SWhTTFhzZENURzlnWWo5dWVkK21LbVVlU3VKMGg1WGZ2eHh5QzRQYTR0a0tT?=
 =?utf-8?B?TVBQYUtWeVZzaW5pUjhZSUJHQU1VOGY3eW4wRjY3QXliWERhbHUwWjIxQXVq?=
 =?utf-8?B?bXBFelVBUWVZWHFQS1doMUVsYlFHWS9rQUw4SGIxalQ2VHZXQ2d6TDAvUVhr?=
 =?utf-8?B?RElXMUQ0aVFkSXRjRlppcUcyZ09DR1prbmp5RXdVVHIzbW9rUUxsTnd3VVQ0?=
 =?utf-8?B?NDMzZkJkQXcwUk53ZFp4cEcrSUlkcTREdlBySE5uYUN1KzVyTi9NazcwWE1U?=
 =?utf-8?B?SXE1TU5nZUdkVFlZeGVVY3lIYXdhM0syZDRlRDdhcDN5a2VvZm13WUJhNmZz?=
 =?utf-8?B?SkpnVlZSKzNCQkhUWVhUWjI4czVjUlB1bW1kUVZDbjhSOU5NSldvWVlBRmhK?=
 =?utf-8?Q?OVLFHgXH8IGJ2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0ZETmkvQ2NFaVRSWmI5QUliS3RZOHdRQk5yYXRRb3BSOEpYMjVnVTJ5ZFpF?=
 =?utf-8?B?VnpaSG1GM3hFZDJmcytXTmNEc2hpbkNtVFJVM0NPTkZ6STNCYUFZWi9FaDhq?=
 =?utf-8?B?ays3TTdDTVZ4dGprV2FHREtPTWRSb1F6ZmErbXRZbDZ4bVl0MHIxa2M0NHVs?=
 =?utf-8?B?UGRpdmpWRHhVb0Vqem8vczdjaFl1cXNuWC9JblMyZ2l6TFdSbWpzMmtyN0ZP?=
 =?utf-8?B?alc5bXJNVURvME01WnNnODl1NFpzK1Y4SUxXVldqM2FUTC95ZG1uc0pSdXBq?=
 =?utf-8?B?a2FRUUpsMDg1RXQzaG5oU0cvWWVTLzF4Qitjb0hQb3VJbTBscnJOaTZsa0Rv?=
 =?utf-8?B?dFl5azArSFJiYndPVWZlU20rS2RPWm8vd3R0QzNZcjF4TTVUYmRadVgwVUhy?=
 =?utf-8?B?V1JtTUs5YVFSaDB6NE5ja1E3WDdpM00rU3IwWXVjWmplWS9QaHkyNDgyaHRD?=
 =?utf-8?B?VXFpVjhrbmY1djQyVWRNQldYSTY4MWZ6Y0N3bGkzYzBkNWg2MFErNVFJenJu?=
 =?utf-8?B?UW9JbkxvVHNKZDBwanBxalAwU1RvdGU4Ukt4YlNxM3k2ejFiTzNnS3NDTTlJ?=
 =?utf-8?B?aWt1REtnTHBoWng4dGxtbkdlN0FaaEFrdEQvZ2FEVmZxblQ3eU0xZ2JsMldy?=
 =?utf-8?B?QTY4blhQcjZEeVAyM2hIejIxQ2FYOWxncWhkamV3aExpanVNdUVyY3FqOVJZ?=
 =?utf-8?B?QzJiQ0JSVkl3ZDBvZnBkOHpXWHVRQ3A5Z0g5T0xhUkJmZWM5dWV2U1pWMTda?=
 =?utf-8?B?SExmU01WeElQait6STRIc1Y5UEVGRVg3S0YzbEh2V0pLUGl1b09mbmtlbkRu?=
 =?utf-8?B?Q2ExbXlHbUptNXVwd0lMZ2daT0NrcVFMU0U4U0x6SWdnWVZNYW85MkFjT3k3?=
 =?utf-8?B?STR4Qkw2Q2h0UzB3c1hySU9ZUmorNnYwQnB2U3ZZdEhjT0Q0alpKVFJFUkFy?=
 =?utf-8?B?bnBxZlc3U0prQzdwcnF0RnNnU1Q2YXRZYmozaHhlL0dhbUtZdVF5Z1RRWk5H?=
 =?utf-8?B?NW1PcHNFVldkWTZTdGVHQ1RVM0FMYVY5VTVWOUdrNW0xOGJMNVFxSFhJUmRL?=
 =?utf-8?B?azFFQTRXVFBUSmFXT1kxcjhNcmtwb0lzNnZKREpockQzam5hVmtjdk9YZEdr?=
 =?utf-8?B?VHFkVkp6R0hGM2E2ZUdqaVlVUFV3UUZhbnM0ZHYvSHU3bkJwOW42K1JoLzdK?=
 =?utf-8?B?K3lyR1JsUm1ad0VlR2xxRGhpdFBuNEcrTjdXZ2t2eEQ4Sk1LN0R4Umx5Z2VJ?=
 =?utf-8?B?S2hNamZHUXhTdE9DbnBjdi9seFlzQ2d5eVpxTm5XYzlDbEE1MUIrajFLY2Fk?=
 =?utf-8?B?QnkvNmYvSDJxWGVWbi9BenlLbXFSb2xiOTgxMVJvRVBPK1pMMkNnL2VJeks3?=
 =?utf-8?B?N1F3TFQzS1A0RGVCeHBIOW5Ua05mM3ZydzZVTHgrZHR6SndQOUwzMWgydFkx?=
 =?utf-8?B?VmNVUTZHWnRINm9ib2FsV0daMk5VR1gwVUZsYzR5K3djb2lIcTB2V3Rtb0la?=
 =?utf-8?B?TGg3anhEejVjTmlHY3VsdVdFaU9LMW82WEFPKzNOclExZTNpUWdjdklhUWdp?=
 =?utf-8?B?b1RyR054alhhNUdDdEFJTlovWjF6a244MXczektjYjJaSmFKbm8wdkZhMmZ1?=
 =?utf-8?B?SGZPeFdxMW1tRjhRcGtiUnJiVnpBTFN5RkR6Vkd0dHl0Ull5QWY5SGtJdmFI?=
 =?utf-8?B?empKcGpxOW5EWVNLMDBNZ2E1YzB5TjV0Qi93U0NzOUZ5ZUtUU25xcFZBbTF0?=
 =?utf-8?B?RUppdVozTjR6V1hDQWRuUVZRMkxPdUJUT25UcDlmanhQdHQ4eEtlY2MrMnBo?=
 =?utf-8?B?WHJaTHZERHpUc2FKRE5vZWk3Tlg1ZENMRlFneFJCOE5vVnN0Nk5hZnZ1aFpk?=
 =?utf-8?B?VXJ4S3BGMGxJd0JDdVpwZHdWdDM3WnBzNXFNSXRLTEVabGV6YVQwa00xY01J?=
 =?utf-8?B?Y3hlSGxmWUJuSzk1aUVkRHRpdG5xc0s2cWF5eWFlcGE4RGw2NEJaR0NJWGNX?=
 =?utf-8?B?TlZUUXN4SEVIY2s0QTZYbTJpcnFnNEhHZlluVUlGaVBrK09YRGZyWWpqcENr?=
 =?utf-8?B?anFIaHNNS2xMNWI0V05mSlhrU0V2ays3UWxmZFBrYUNYc2s5a2QzM3RIMDNH?=
 =?utf-8?B?c1RaNGxVZmR2TUNIRk12OWNVdUtFR2lHTEVaa2pKQkxNdVF2VHVndyt1NU5K?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e474fd4-9bbe-492f-afee-08dd371d561c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 17:35:29.5939 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ol9Q8eM7a/xoxzfmIaqsem7E7N49HxjaNim65NCqQc0lM4+i7TVbUSwvTcxKtupzl2H6NuO8E6WG7CzbjMRVAYfxinjfUo75hbZnQx+Og6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7663
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

Hi Nitin,

On 2025-01-14 at 00:13:14 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/pxp reported by codespell tool.
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
