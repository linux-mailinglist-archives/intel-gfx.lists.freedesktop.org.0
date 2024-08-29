Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC3F96439F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 13:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C840C10E654;
	Thu, 29 Aug 2024 11:56:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oAZMhud4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9190C10E654
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2024 11:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724932597; x=1756468597;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jw9DP7NqciwUAbzxZOqoCrnO8n4recy8YkHcNqUB6Ms=;
 b=oAZMhud4RCRHCkOs46EV1NZOSI65CIaHDaxvNTWhTZLQHU/NqAgP8mTW
 VX6B55FjJjXjlJrfIeJK37sIhV2c2VMiZs5fd11nGv4TvjGlhxyDL02ZY
 ouIvkHVKck+OtuBJIasfEXqsJ7Z04MI3Ikr8QsiFuDP2cFspwVAtDAVb6
 6kOwC6yh/c/efv0DYF8dzwE4gieMBcvFl5FEnfKyX02u2avy40xVrUH9Y
 SfVr4/rkn+MqTFCYqxjfK2YwIFZLDTj/cSon/q9Uv4rzvIbfSpJEbx/1U
 gz6wbSxZi8MqSB9XhQJbpsnSLnCJk30QiM2eEOTaUeqgNXl1MEnOuSmmJ w==;
X-CSE-ConnectionGUID: ATYZTyGcT8aewPsYibP7Pg==
X-CSE-MsgGUID: HrLzJF9FSFOi9cLTw9dAQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34923473"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="34923473"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 04:56:37 -0700
X-CSE-ConnectionGUID: gyxqT1CBRQO0gpdpkCVZwA==
X-CSE-MsgGUID: kcOWMKNRRzydPW8psohMZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="67699010"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 04:56:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 04:56:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 04:56:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 04:56:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aUUhMMUWBvgmrixz/mb3svw+pI1kZXiquQtMxL4FgWYTzS8f7jglcrCfUjitopZdME00S61CAoP+5J2ZNpGmn+BDjcrG9I8SKX8SrHXJ2//dkBplb8HACfTtsHozP6v1uR0ZKalpo9+VmvPC2guaBg0OyDq6ubmXw0XCUWeipKqP3PMSfomhgcR5EIIIRxZE1mSeyqYV5RnfVtwAD2oW/yTSY7dhW8BHDmdeLTsXPAnvEvkzB8IoP73c00CJZMIBUUF+OCELCxbrzLxD2n4gGs7oJJt4Za4CYC8b0VaSEmrxRTLQbVMHjFpWaqOAAUPnVkO0hkbw+OkGnz/B/Z4J4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jw9DP7NqciwUAbzxZOqoCrnO8n4recy8YkHcNqUB6Ms=;
 b=QVG+8kD6k32l7ddZXeMh40auyhhbo0hkLnlMvvL8JgJPzHeqcYnqvozPkAMsAIuTvpisWYt5dh94Vy+uudGwSAJVmmxrcKxPik+FwYhdux8/oRMLanek/IfxvgY/TDnM6nzAsHb4S3lB+FfT0KqcPs2OqTzUi/51M9sqzIh42ewt1n8EQoIWLZwl3YRVyvsHi9+xE/dVreuDxiES15vviS054/tscznLYYL6ngUh99847WZRh9vQyeTG9U7/4FMUTBoZVBpdPn+RwcNU4N9ksiQilsjWVZyp3OwsLYpCNeXNYH/Lpezxa/qea9Xp3uAYvrEYGUjKTqfIhpsvpdinHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5)
 by MW4PR11MB6569.namprd11.prod.outlook.com (2603:10b6:303:1e1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Thu, 29 Aug
 2024 11:56:33 +0000
Received: from PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::d7f7:58f4:7360:54]) by PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::d7f7:58f4:7360:54%4]) with mapi id 15.20.7897.021; Thu, 29 Aug 2024
 11:56:33 +0000
From: "Musial, Ewelina" <ewelina.musial@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, Patchwork
 <patchwork@emeril.freedesktop.org>, LGCI Bug Filing
 <lgci.bug.filing@intel.com>, "Czaplinski, Michal"
 <michal.czaplinski@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKckyBGaS5DSS5CQVQ6IHN1Y2Nlc3MgZm9yIGRybS9pOTE1OiBub21v?=
 =?utf-8?Q?deset_and_i915.modeset_cleanups_(rev2)?=
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJtL2k5MTU6IG5vbW9kZXNl?=
 =?utf-8?Q?t_and_i915.modeset_cleanups_(rev2)?=
Thread-Index: AQHa+VVPBSWrBoeNV0u2uVZi/CAjKbI+IHUAgAABt7A=
Date: Thu, 29 Aug 2024 11:56:33 +0000
Message-ID: <PH7PR11MB7073766774A836C569E2519093962@PH7PR11MB7073.namprd11.prod.outlook.com>
References: <cover.1724843853.git.jani.nikula@intel.com>
 <172485475830.827467.7681242890043675648@2413ebb6fbb6>
 <87r0a7wntp.fsf@intel.com>
In-Reply-To: <87r0a7wntp.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: michal.czaplinski@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB7073:EE_|MW4PR11MB6569:EE_
x-ms-office365-filtering-correlation-id: 39108176-0096-4ff4-04c3-08dcc821a0dc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RkRYNnQ5MnBHbHgyWkxEMGl1Y0pyWEFMZXNESTVjSk84WEdIdllQZ2RrR1BQ?=
 =?utf-8?B?bEcrU21IKzBXV2RqY3NXTUtvM0dHcnZCOW9HcURqZFBTU0dmY2E1K2lmTzBs?=
 =?utf-8?B?NUIxMzJwSVBKb3FMWnNvK0pVQkZNVEMwT2NvR3N0VWl5UkpLUWo4U1ZTdmtJ?=
 =?utf-8?B?WDMvTUw0Vmd3SjY5WjZEeEhpRWVZMjBaRnBXbGViZ2k1VVlIT0lqYThsRkJw?=
 =?utf-8?B?eWF1cDdpSE1vRUFPMjZVR1FrUzZHUnRnRU9xRnArZ0p6Q3FONGxhUE55Szdp?=
 =?utf-8?B?by9pVUhIQkhDdndHQ2Z1Qmc5VEd3SU45eEdPQ1ZHY0orMmNubXhYcEZWUDgz?=
 =?utf-8?B?NXJiZ3pLaTQ1bWg2aHFRTWFseEc0TFRxV3daaHdpNEVtbEhCd1Q5bHpINVJD?=
 =?utf-8?B?eHd4U0hpTkpHbG9HaTdhalNPaGZUSWNqVFU2aE5GMFhodk5Fb2c0MVRpS21Y?=
 =?utf-8?B?UCtzVkZqYlZGL0VMUmEzajlKczV5RGdES1I2UEhoanVwc211QzZ1bUFmRXhF?=
 =?utf-8?B?VFg1dDkrUlRYOWUvSFp0dytUL21HUTVaTENQRktGTHl0Mzhpbk9lbGYxOW93?=
 =?utf-8?B?UEZVRjc1cTZLR1BacmZua0Z4YnhJNVBCNG9VL091dy9oL2tTU0hKSXRsb2I2?=
 =?utf-8?B?TTJvYWRpTm5CWmlwcUhkR0dJWTk0YWhhN09CcTc4T1V6STM3bVBxeFIzNGlu?=
 =?utf-8?B?UkJxUkJXUEp6QnVaYlNJR2JFd1lpVDRWR1BPOHdIaTdOY0pHclZteXhCQmlh?=
 =?utf-8?B?eWtFc2ZjOHJQNEFmdGlNaTRzeVlQbGFCUDBKaTBSUEI0S0dCNlBweE1zcTM1?=
 =?utf-8?B?cVVRK1N4bCtMa1owSGdKZ1hGOE9rVmlCTXlRS2xEcXNoQ2MwbXRZbnpVcHhT?=
 =?utf-8?B?OWdUdWg0SnVQZjMwaFFCWGZyT0ppWFgyUkF6YWMrenZIeHFoOGw2TDdTTCth?=
 =?utf-8?B?RGV3cHh3V2Z5aFhoamdXdnRUM3lyYldLcGdtOWtsdFN6Vkc4dlBXY3FKSEJ4?=
 =?utf-8?B?QnFyd3ZVbzBuTlZjcE83SFVGdk51RFJVdkRBTnM5Z2taTFNqVVdoV2lKN1U5?=
 =?utf-8?B?SkVUSzEyQm10RDk2TEU5UHAxMnpZa3pIU3RoQjAwVHlvRUt5L0ZLQWVHZmk1?=
 =?utf-8?B?NWord0tIY0pxcnpjYUhnOEJGeDRvTkplYVM3eEZ4Tm9maG5mTXp4dGtuTzZZ?=
 =?utf-8?B?SGNzbktVVXJlRTRkSWM5S1FjQ0tEOUV3T1NYNXUwbWllVStQNmVsbFhqMEdW?=
 =?utf-8?B?VGFUbXE5NDdrMWs4aFIxbkFMQU1mMlNtUlVpL3hCZWNBb1lhemFvS0trVXFH?=
 =?utf-8?B?Y2JoZ2RoQ1JsOVB3RktkdUVaZ25hdFdhajhFRkNwbzU3bHk2TFFnR2JzeHFI?=
 =?utf-8?B?WGdGbDh0eVB0UVhpSmlWV2NiL1dSaGh2cjg1UjZXTDdmb3VMWk9IUlNaMmtt?=
 =?utf-8?B?NzEyN0VtTzhGeTdHdDRGZ3IrajZFZzh6OGoyQ0tReUxzWXNTSUMwci9CdXIw?=
 =?utf-8?B?cnR2Zi9QM3liTTlzVDRNb1Y3VDJYdE9NWFdNcE5rWU0vRk12Vjdla3owUllh?=
 =?utf-8?B?Y09CQnpzOC9RYi9VU2p4dHByTllGTVpocVNIdW9UYWlpK0gyR01TVU9iT0Q2?=
 =?utf-8?B?ek1PVWJRbnlLREorOExGU2tVMlZ2bXQwb2VKL2JDcFJaRHI0V1ZZa25QYVli?=
 =?utf-8?B?Snp0T1FpYk9YTXhXaUIxZG52UFZxYjR5ekY5L3BDMENtZG1pUDFtMGxSRWta?=
 =?utf-8?B?WFYzdkRRc2o4MVk1ZjdESklCLzdBa1hPNHN4QTdkelQwRStSY3d4Q3ByMzFY?=
 =?utf-8?Q?7WdfTQ+32WEOj4CbFy4pGqXrvks4W7eXseOno=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NW5NbmJuamRtc0JtbGVDT1NiM0ZsMlQ2bGZ2UjFDc2lyYVNyOFNUeE80SFJs?=
 =?utf-8?B?L1RpZjVQeHNiYmpQUDEveHZadkNvbmJKWmxpbVd0OEhYVDFLM3ZYbWE1SjNw?=
 =?utf-8?B?N2NWT2FpM05OY1I4MVBkM1k4dmJ2NmVmVFlRelBRcmxiWlhLckxkMzdoN0dr?=
 =?utf-8?B?V1puaU5CazhON1JsMzA0UkR3ODdzVzBuTTJTYk5FMnFUUnBXU3VINjlWNDF3?=
 =?utf-8?B?MlJsOGg1cUpwMkMyQ3lYLzYyRGVwdWZCL0k4dGZOaWo5RmRHWUs4VFVORG9h?=
 =?utf-8?B?cnFNU0dlRTBSMzZkTnA2a1kwV2VYbG9lYnNORzRRcndrT0g5a2U0c3BkTHhw?=
 =?utf-8?B?VEFnS0dQNFg0dzZ1ZXp5U2I2S3JCRWZtQjk1VUF2UzhRaDEvMk5VWERUKzFT?=
 =?utf-8?B?aVk0RWowUW5tNkFzUGM2VlNHU0k3Y3ZJZGRBVEU1dUNDUzU2Wk10R29KcXow?=
 =?utf-8?B?b0lCbGRGaGIrY2dpaEpmUlVXMEtnNUVyTDNRb24rZW50QytjZGNUZXIrdVhY?=
 =?utf-8?B?Y09JZFhQaE1MTWZudTNEcmU4Vko2cDNTSFRNSW93Z1FHOE5XY1VWdnpSazFT?=
 =?utf-8?B?bHNGdzF2c0FnY1pQV2lqVmtHSnp5WlFrRnhrdkVBMTVGV0xzN0Z0Wkd0Qmd6?=
 =?utf-8?B?YXhwZlhGa2xnZXdhZkxvS1IreEhjT2JGNEdEb1dKa2YvQ2h4UTdGZkRyaFVJ?=
 =?utf-8?B?eUpJU1YxL2pJUzdoWm1aV3dBaDUzSXcwbmxJYlJoeTNhVm1FNEhOZmFmSHd3?=
 =?utf-8?B?NGRndEFOaW5aTGdMWjYzaWlUeDdkdllJQ2Q0WWdUcWNUVlZqYW5SQlFaN2JK?=
 =?utf-8?B?UjJHV2hHL2F5emdYbmp2djYyMGZmL1NlaFdyalhqSmYyaHZDa1pnWDczNVNj?=
 =?utf-8?B?eFV4NGRxRTdNQlVJYW0vNXQvaENaUHArdVhJVi84NzIxNHUwcVFjZk4xVzNh?=
 =?utf-8?B?QUE1YWNXc1FxaFRWc0oxN3cvTmZKb3JKZ0REYWJEUXZsUmM2c1BDdEpUS3dm?=
 =?utf-8?B?NVlyZ0dxdzNPN2dtdTFiaG9WVHl2YTFuYzVGWjFTTGxkR2Q2bTdsUmsrdWt5?=
 =?utf-8?B?L29lUWRCSWVYeURIditxMnZ3bERmTFl2anM2QW5RTWNKL1JEaFZSS3FZT25W?=
 =?utf-8?B?OVV4cWlBaHE5MzBNME1YRkxJYXliRmhNa2xXbXJHUVZSRmh4c0pKN3ZhaVJB?=
 =?utf-8?B?NG9ORVhFZndvaTJDMGRaVGNPTENkaWdVZ1VndUFSc2dnSy8zTEZJTUdXS3p3?=
 =?utf-8?B?YUtrM0cvMW5FK2dPUjc2RERuV0Q0ayttRkJUcnNueVhPU2FZVkxaYmNHWVVU?=
 =?utf-8?B?c2dSZnAwRThkYlhQMmYrMzJIdUxqRlZDcTZaajJDempFTmJDQUtRK1hQaVd0?=
 =?utf-8?B?OGQ3dUlYeGxaK1UyeTFTMEFzdE5ZNmNpZTlkaWJHV3dOL1dCb09EZmxCTWR0?=
 =?utf-8?B?MEV6VE1WZFd3RzRobHpGUGJPU3d1ZlhrNDF1M09LUDJUUG55NTBabUUrcUc0?=
 =?utf-8?B?aEpuMzBlVzNmcmhjZXdJbGJ6Y1l2YnczWTFFdjJtM3JnaEQrR09xYzZLajBq?=
 =?utf-8?B?dUdjMDBtMXRPR0Q3YmhVc0FYR1REbVJOdUR5VDlZYys0ZkhSTTA5WkpLMEg0?=
 =?utf-8?B?RkFnZDZleFE1Ym9rdkd3UTlqT2pRdVZOVno5K0hUcXZZbDNKRmttUDJTd3Zu?=
 =?utf-8?B?clY3dDh1L1dsWUtVYXVkbDRpT2tKa3EraU1Qam80R3RkWC9Dc0k4SFkxY3o5?=
 =?utf-8?B?SkdDWjQ1MHVQb3IvMHg1SENvTVBEVVpiTXh0amMwMGNEbWRyL0tjK1pDOStP?=
 =?utf-8?B?L3NPUTd2QzFDVGRSMnhEWTJuTEhwYXhNNjFSZW5DWUNIenBRUS83VjB0K21P?=
 =?utf-8?B?N0tyNUdtWXB0MXJDbVd5NkY2amZKZ1BiWVRHUktDaGJVWDZjQVNsUWhvZmN0?=
 =?utf-8?B?UmdrWHFlU0daVWlpVkZLc09lTHVhZWt2REJtREx2cWZyVXdsa1JRU1o1QkJI?=
 =?utf-8?B?VmkvT0JOMjBuZVk0Q1NUYkdac0NLM1FnYlA4TlJOamp4Q08xejJoTTNOSW9D?=
 =?utf-8?B?eVNQYVRNeVN4QWZ5OUZoMmJtaE1lZVhHMjQyNFFQbVY3Zi9IUE1JSGRTU3VJ?=
 =?utf-8?Q?wRPak5hVuyBk2S2OHcQvnTvBS?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39108176-0096-4ff4-04c3-08dcc821a0dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2024 11:56:33.7635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: osjugpfURJtRW33PmGxhWahMkvKVXWD6UgArTlakhx76fnsKRy+zXd3Nb7yQmaBhupLgQtiWCcpHUPazKLAgSSDIVybRyw96LOnVjfMUhYs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6569
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

KyBAQ3phcGxpbnNraSwgTWljaGFsDQoNCkNvdWxkIHlvdSBwbGVhc2UgY2hlY2sgYW5kIHJlcGx5
IHRvIHRoaXMgZW1haWw/DQoNClRoYW5rcywNCkV3ZWxpbmENCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPiANClNl
bnQ6IFRodXJzZGF5LCBBdWd1c3QgMjksIDIwMjQgMTo1MCBQTQ0KVG86IFBhdGNod29yayA8cGF0
Y2h3b3JrQGVtZXJpbC5mcmVlZGVza3RvcC5vcmc+OyBMR0NJIEJ1ZyBGaWxpbmcgPGxnY2kuYnVn
LmZpbGluZ0BpbnRlbC5jb20+DQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
U3ViamVjdDogUmU6IOKckyBGaS5DSS5CQVQ6IHN1Y2Nlc3MgZm9yIGRybS9pOTE1OiBub21vZGVz
ZXQgYW5kIGk5MTUubW9kZXNldCBjbGVhbnVwcyAocmV2MikNCg0KT24gV2VkLCAyOCBBdWcgMjAy
NCwgUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4gd3JvdGU6DQo+
ID09IFNlcmllcyBEZXRhaWxzID09DQo+DQo+IFNlcmllczogZHJtL2k5MTU6IG5vbW9kZXNldCBh
bmQgaTkxNS5tb2Rlc2V0IGNsZWFudXBzIChyZXYyKQ0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTM3OTA5Lw0KPiBTdGF0ZSA6IHN1Y2Nlc3MNCj4N
Cj4gPT0gU3VtbWFyeSA9PQ0KPg0KPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8x
NTMwOCAtPiBQYXRjaHdvcmtfMTM3OTA5djIgDQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4NCj4gU3VtbWFyeQ0KPiAtLS0tLS0tDQo+DQo+
ICAgKipTVUNDRVNTKioNCj4NCj4gICBObyByZWdyZXNzaW9ucyBmb3VuZC4NCj4NCj4gICBFeHRl
cm5hbCBVUkw6IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzc5MDl2Mi9pbmRleC5odG1sDQoNCkJBVCBwYXNzZWQsIGJ1dCBubyBzaGFyZCBy
ZXN1bHRzLCBhbmQgaXQncyBub3QgaW4gdGhlIHF1ZXVlIGVpdGhlcj8NCg0KQlIsDQpKYW5pLg0K
DQoNCj4NCj4gUGFydGljaXBhdGluZyBob3N0cyAoMzkgLT4gMzYpDQo+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAgIE1pc3NpbmcgICAgKDMpOiBiYXQtZGcyLTExIGZpLXNu
Yi0yNTIwbSBmaS1rYmwtODgwOWcgDQo+DQo+IEtub3duIGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0N
Cj4NCj4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTM3OTA5djIg
dGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KPg0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+
DQo+ICMjIyMgV2FybmluZ3MgIyMjIw0KPg0KPiAgICogaWd0QGZiZGV2QHJlYWQ6DQo+ICAgICAt
IGJhdC1hcmxzLTE6ICAgICAgICAgW0RNRVNHLVdBUk5dWzFdIChbaTkxNSM5MTU3XSkgLT4gW0RN
RVNHLUZBSUxdWzJdIChbaTkxNSM5MTU3XSkNCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTMwOC9iYXQtYXJscy0xL2lndEBmYmRldkBy
ZWFkLmh0bWwNCj4gICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTM3OTA5djIvYmF0LWFybHMtMQ0KPiAvaWd0QGZiZGV2QHJlYWQu
aHRtbA0KPg0KPiAgIA0KPiAgIFtpOTE1IzkxNTddOiANCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy85MTU3DQo+DQo+DQo+IEJ1aWxkIGNo
YW5nZXMNCj4gLS0tLS0tLS0tLS0tLQ0KPg0KPiAgICogTGludXg6IENJX0RSTV8xNTMwOCAtPiBQ
YXRjaHdvcmtfMTM3OTA5djINCj4NCj4gICBDSS0yMDE5MDUyOTogMjAxOTA1MjkNCj4gICBDSV9E
Uk1fMTUzMDg6IDNkMThjNTU4Yjg3YWQxYzJkNmQ1OWVhMWM1NjYwM2EwMWU4NGFiODggQCBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gICBJR1RfNzk5MzogM2I2
YjJkMjM4ZTg2NGZmMWFmOWUzMzE1OWQzYmJmNGI3ZjAxZDg2ZCBAIGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaWd0LWdwdS10b29scy5naXQNCj4gICBQYXRjaHdvcmtfMTM3OTA5
djI6IDNkMThjNTU4Yjg3YWQxYzJkNmQ1OWVhMWM1NjYwM2EwMWU4NGFiODggQCANCj4gZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+DQo+ID09IExvZ3MgPT0NCj4N
Cj4gRm9yIG1vcmUgZGV0YWlscyBzZWU6IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzc5MDl2Mi9pbmRleC5odG1sDQoNCi0tDQpKYW5pIE5p
a3VsYSwgSW50ZWwNCg==
