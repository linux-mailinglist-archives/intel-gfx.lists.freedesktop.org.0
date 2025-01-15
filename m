Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5E9A11C08
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 09:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7722810E55B;
	Wed, 15 Jan 2025 08:33:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ebkq/1iK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F3E10E561;
 Wed, 15 Jan 2025 08:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736929991; x=1768465991;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uSYD/F1nU0SdUlXq/YtN6cxyqBivAvdVl03acp/SRnI=;
 b=Ebkq/1iKGd8/Pf9Pcnj+6sGB4IXfn6H56MXTVRmb8PvgwfbiKj46jXXj
 nAjJ5ti4ZtW8CLHR3PtdNf1Huv2VgwEDcLsSvPRyTehTj/afC2OO5pWJt
 FanPVCiRbutK9hHQ3s3bKIIgmyagt4KBM0Fe2ub87RKp3Zi5rO1IOE168
 3f08wAE9e1FxPKGkUPQvSdnqpajRWYN4BC5h6Z7WtNt/HHU7QGtcC9Bq0
 hUSZ92dwLdNTFL2IQ5lHarLejTyJ1Q9aVvcEY38fBR+KvJ9fAirQjLqy8
 aD21elJ2mezpLVo3xW2Km3GHtp4ifohC/ScLktQpMyvuC9JLvd6tBIiGE A==;
X-CSE-ConnectionGUID: eK2T3J6YSvaRemZpUxYzWA==
X-CSE-MsgGUID: 76gmOIc4S1KP1duVksZhXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="37168767"
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="37168767"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 00:33:10 -0800
X-CSE-ConnectionGUID: tPM54FaZR3GQSF8KLsfmMw==
X-CSE-MsgGUID: smpZ9IosReCvzuvZzPTfEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="104900324"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 00:33:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 00:33:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 00:33:10 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 00:33:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uSUhUdN6KNxLmmfYDojMBJMCi1xNzUpFgQ1XfaNTSoGpGHzNhe+nXxvvVzlco6WeVLoHR5IIk94elE7l5FIHsgV2WBDO258845JVgbpw8wT1TWZJ2jfwQ2Jt8JdeGr35oqaKUp2ztYj2JkOTYulvEbLXd4zSodGZ9UpJag9jNX3bQtYV1iIjDTpn0r1rh42cKZX44RHxS5mTq0fvTNGpoR2aoaEKC6H3T1TfEcLlzHDuU0GOLblmL2IuPMtNYNVhkTSX69znK0jaPOyD22V2/OhRrqDL2SMU/SlsC10NaRLUe9mYIzfKr/JjmY9nrumN2nOQ/trMR5RzKObP7++l3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uSYD/F1nU0SdUlXq/YtN6cxyqBivAvdVl03acp/SRnI=;
 b=UliDjfk/UtBoBpchxHVCuY02HB6ctNR5nAuUlu9+rroneGiLhYTKv8/v1z11o1Xz5efhBOwAsCg5+3/AV0ncXp9v+yToeEjypLmOg4rLBxY06azFZGdZT40tkm5vq0wJkhdRsKMUkpRd6Jdkfc4Z6i2XdL5P+me7WxPrRvqNcCUhTcQxThzUHHeB0j33ad9KuHMOJA6EBzCN01dPezK+Lzp8W6iq1bJE/SeN5/kl0lB6rUrmfFAchcFvXDx021SrGW088JJOOKTS8KC6aHmU8rqfsk09yYCvb8FVX1hIpEzSW/2n59r0wCQAOcRkO0+IZ9968Cxzoh1O8YRrXcIyKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by IA1PR11MB8861.namprd11.prod.outlook.com (2603:10b6:208:59a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Wed, 15 Jan
 2025 08:32:39 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 08:32:39 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 04/10] drm/i915/psr: Add register definitions for
 SFF_CTL and CFF_CTL registers
Thread-Topic: [PATCH v3 04/10] drm/i915/psr: Add register definitions for
 SFF_CTL and CFF_CTL registers
Thread-Index: AQHbYmiefeIGaYK8CUOl/yeeIXr8gbMXhwbQ
Date: Wed, 15 Jan 2025 08:32:39 +0000
Message-ID: <BL1PR11MB59795D10E1AD5528DB7CE5DEF9192@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-5-jouni.hogander@intel.com>
In-Reply-To: <20250109073137.1977494-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|IA1PR11MB8861:EE_
x-ms-office365-filtering-correlation-id: 97f2ee18-8fca-483f-ed0c-08dd353f2c3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?bTFvTy9GVlJTT3VDVE44NGQxOHhFZDBLSGRNUW8wd3RuOGNCL2d6UmsvZkN3?=
 =?utf-8?B?M0JpZ2JtTXVTazJNaVQvUTdLb1lhbXpJRWExTzdHMmhQdXg3YWZvTFRvN2pu?=
 =?utf-8?B?SEdjbmpINXhxMG1EUklNWEVGN0xPY01pRG91cUxlTE80bGNWTG5sR093N3VT?=
 =?utf-8?B?MHU5bzZibnA5TGRhQ1pFYjEyaEpuZkxYNnEzVFNidHFiVENXaUdIS3FHVnJE?=
 =?utf-8?B?ckE2bGJESlpoMW5DQ2NQU1JpTUxnWFhCWUowM0gvQy9CbTBLTlVYWmRvSUF5?=
 =?utf-8?B?SWY5ZnJvbHQ0aG1SWHNNVDJvWnVhRWNmYllxWDZYaWpla0xkb0puQmVDTzd6?=
 =?utf-8?B?dHdyckF5SktJeDlBYUtQRkZFblBwTDkrKzBkSDFiZGFGN3JUUnRoMFhwUHcv?=
 =?utf-8?B?alUzbGRRaS9hVm9hYi9MdXFzMlArRU1vVHN3SnYvaVhZVmdyc3FQUlMzdFRP?=
 =?utf-8?B?KytxRm53M2NuYm4yVkR3YnFtc0VYQXlqUlBON1BhT1I0M3hrTm9EL0JqRVdR?=
 =?utf-8?B?ZGxmVjEzSFBBcm9icXQxcDlzY25UaGhhMUFIcUJLR3pzVUxmcUMxbFpZVURJ?=
 =?utf-8?B?c2t2OFJxVzNVMGhIdEh1aFkyOUptQ1lNUHpiSXlrM0RIdlpmOVU1VlN2L3NC?=
 =?utf-8?B?aHExU3UraSszM0owaXppQjRrcUdwN3FqbkE5aFFmKzZ0azNOejI1WHVRK1d0?=
 =?utf-8?B?N2hzVDlTMlVkWTVXWVVRaHVDdW9xWjV5M1dyTUQzMEN3bjkwdklFclJTd3hQ?=
 =?utf-8?B?VlZzOHd2bFl3azJvR2pSR0dHM000ZVZxWVZDWHhHRVpGL1lJSGZYQmlKbks1?=
 =?utf-8?B?T2NxVU9ySnhxOHhENGRaTVNiQng1WVVQdUFmQm04akk1TitUdHY4NTlGT2Fm?=
 =?utf-8?B?a1VjU2pPcnQxM0ZZZjNoV0xyV0ZKdGl6THNUMEZsVHJPRXJyOThRWTArMHJp?=
 =?utf-8?B?OSs2Z3VFVit1UkxKQ3V4Q2pMR0pGMkNYUURsZDZyYmU0Wkd3eFozaVAyRzNO?=
 =?utf-8?B?WFY0bG9kL3FmNGZHeFBkNTdhK3VscmdVdzRaTVg4Q2dKSWhTdlJETFpPYTZI?=
 =?utf-8?B?TlhTQUtGeTNOVVl2WWNSdDJrK0oxZHZ1TitGNVRMUk9CZEFZcmkxcDNtenZx?=
 =?utf-8?B?WFlDVkczNlhobDFibTRNSDZGZ1RkYkFIZVI5ZlZjRnJvdlpoRlp5Y0p0QXFk?=
 =?utf-8?B?elVscVRzb25HenZ4L3VtampyQUVQZzZNb3NlRkdCVmg1YXhTWitrU3Fmd0JN?=
 =?utf-8?B?RThnbG5SbFpvV1MwaEJxUTc0MEY1SS9lYUlJOHZBd2JmS3NoK2ovZXh6VmVG?=
 =?utf-8?B?OEVFU0hqUUZLTG1BUlQyWTFSRGU2SS9GK3B6RWQrNFN6U1F3a1NNamRZcGpQ?=
 =?utf-8?B?cldxbDlFNjJtU3JzYk5NYVBhazFNeGJURVR2NURZWHhFYjBSSnowQjdOVXJR?=
 =?utf-8?B?eU5KaTlKNnRIVTNCdE9TUGdiY08yWkppVkZYeEhRMTV0dVk2aTBJYmVBeTV1?=
 =?utf-8?B?WDk0Y2VsQXhrQkFJSm9Xam8xOElvbDdySDFLd3lKZ0dJSlZBT2syOFVmeGpR?=
 =?utf-8?B?V1VmVnJKTGRDa1lFSzl6UnRLdjc1L3dCbVM1ZnhpNU85aUlGMFVLVUFWbisw?=
 =?utf-8?B?enVXbGRRajJURklaTW9oNkVPMGVuQkhvVFRLOXZoREtCVzJ5NlJzVVpkN0xm?=
 =?utf-8?B?S0dJaWlHVmpRRlp0M1B2QVlJYjFiS1ZEOE5ISVlzS1RhRWluRTVQeGRsQXJR?=
 =?utf-8?B?T2FTSEptSmlZY09nNURzVkFIalpWaFZhOG50eGszemxybXVxSEp5TkZqU0ZF?=
 =?utf-8?B?OGg4cEdnQmp4TzJvSUVSMGRyeHhrZlU1YndUS3REKzNLZ3h0b2QzUDhJVit5?=
 =?utf-8?B?bXp2dFgyQUlOZWswZVlxUnFXd1ZWYWdTTUpBVG9pN3N2T25QYVpHck81MEJK?=
 =?utf-8?Q?QjTZ0zp/ZtwdL1ywWMiHEAS4nKUzfcrq?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3RKWmRYd2ZZaUpqUGVESDQyVFpqUU8zS3FVa3ZPT2I5V0w0ZlorY3JjNzhO?=
 =?utf-8?B?QVFjR2tEWmZPRXM0T01IK0VEUUFtOElqVVNNcWFzRXlzVE1weDRlWGdRcGtv?=
 =?utf-8?B?Nk5ZNTFIazIxVmRzb1k1VHk2L0NPTWJjSDE1ZStHY3BQVmpibEZyN25LaC9Y?=
 =?utf-8?B?Rm41VklBQlZOWndpdEdMQ2Z3aUM0RnFwSGtnZGlVK3JuYXBvY0VlRGgrbnR1?=
 =?utf-8?B?dU1YalVJOXA2cGFvMjFVcjZKdStma0VVVHcxN0FlYXNsejJlaHdQVlAxMFpx?=
 =?utf-8?B?ZjIzdkZlYWpnaTBQczZKYkQwVGwrWFoyVWswWkZ4TVVGY29zaHIxQUoyVW5C?=
 =?utf-8?B?ZjAwNERaT0FqWHc0akNEOGVtZFk3R1F1NkIwL016SE9nRTZnNU9wUGZuRVVU?=
 =?utf-8?B?K2NFdGhYT1IzeW5LdDdvbFZ3dzBlVlBKdVA3TDFBbEMxK2VCSmRBSlRKc240?=
 =?utf-8?B?WnJHdWNFY2trOG1RSVpvZWNLMWJBK3lrM3lpMlJKSkdKWmc1QUFBTGh3Snk0?=
 =?utf-8?B?STE5Mk9aMlNzci9lRmY5MER6WWpLbDB1YzZxS1NEdWhVOW52a0VXMWFZRHgy?=
 =?utf-8?B?SCttdUFCYkJ0bmFuS3RYV25kdDRBYWxSMERmUFlsZEVNazU5Q253UnFveEVE?=
 =?utf-8?B?TjRUN3JqVnRyeUQvUDFvZzJTbWNrYSs0YklTR2JuRFdvVzRmMnRITDVJM1Vn?=
 =?utf-8?B?dlZ4WXhKL1JIeGd2OEhVcE15NFV0R2dGS1ladzJlbm1ObEo5SFZWZGNnZisw?=
 =?utf-8?B?TU9hdlNha0tvaFk1bmJIb2JPb3J2cklHbUw1RXh6VTlBOUJ2bC9NZC9PRkQ3?=
 =?utf-8?B?QmsxVXRDNW1DU3YzTEhBK3NMdEdIaUtoZHpQSzhNVElKd2tZTmxzVWE3VDdY?=
 =?utf-8?B?NFgwZVMzaFc5c0tJOENXU0d3S0NnZzVsQkJKNHY3U09UVWowdG5mUVhDUG9D?=
 =?utf-8?B?cFNMVHVob3VhMHNrSkl5OUJKLy9lN241Y1hCRUxYSTg0Tld4b0l5aHp2OGV5?=
 =?utf-8?B?K1lNZGh6eUZKUU9JMmduZjhBWDNNZ3QxQnNiMHZYb1ZLWkNCem9ZN1hIaEcv?=
 =?utf-8?B?NmJCQ3JyTTdPSHU5ZENhQjJXWkZVcWhLa2VZM1orYm5ZbXhDVGZPL29URk1n?=
 =?utf-8?B?bExKQjZkRUxiRVRDZjJBRUtWbDRXb1pQWjByczdFVytSTHl3YzdMdFBsbHJ0?=
 =?utf-8?B?a0l6bDVwNTMvNkllc2p1L1hHbldQbk9OaWFuOXFzamJ6OXZCNHNDOGdZOTY5?=
 =?utf-8?B?bTFSVlc3S1QyMUhhQnlvdEdmRldHTFJFWlF5cjF1R0wxY3IyN1N0Qy9XbFdL?=
 =?utf-8?B?eC94NGk4cGpRWEU5QTJ5QUdVOWk3aDQwUDc3eG1CZnZScFZnNzVuVllWQVFl?=
 =?utf-8?B?Z1F6dzErY3lyVW1MSGg2VkY4NWFQbDM5RDNyTnZmUWhEYUFqSnJHWnJIcDZz?=
 =?utf-8?B?QmI4WVZCMXdGNlBXb2FueFFQSG5IUEhVYzErb2h2RUVLcGUyS0hDSHBzdy9J?=
 =?utf-8?B?ZUlmU1JSTk5RQW9ieVg0elVoM1VYRVdlV21scDNBVm1sWndTODlTWkI0ekxM?=
 =?utf-8?B?NUZ4cDhRQXNySUhsM3YvQm5YWXpLaFJIVnUzS2ZkM3dNRW8vVFJzRE5jSVo3?=
 =?utf-8?B?TEdVdVQzVk1CMjF4RVV6SGVKaTl6UjhsS1lCNlJtYm5sTXJSNDlMSGl4U0N3?=
 =?utf-8?B?VSt5NG4wemRLSk82OEVWZ1hRWUNnR0FvTjAxSmpqbzJlZVVzVHdEZjFDVEZo?=
 =?utf-8?B?M0huYmxJcnJDTWFaNzd1SWxkVjJtMzRzMHdBbGx1NzBnY2w3Z05BUHh4dllx?=
 =?utf-8?B?QmQ3V3JRNTJVd3EwaDhHMjNLcWErUjJqaG45N1FMaDYrcmNCNzYzTDA2QkpT?=
 =?utf-8?B?TnFmTHlORThXNzVEbmZHMHdkcFllWHlmNzE0OUtvY2YxNFNHMVR5bWpCUDA4?=
 =?utf-8?B?K0puRXFTOUg1azFuSzBsQ0JPbDRRclR2Qmd6WlAxZ2xHc3VlcFpTTng2SFph?=
 =?utf-8?B?SXhBeDJHU1lSN0FrelZBa3lSeWRJcnpBOGVaMHhrcWJFTkVpem90Z1o1VzVI?=
 =?utf-8?B?OGJ0V09PY0FmUU9NcnF3MjJEanRUa2kvVzczZHA2djhIcmFHbGdmcTN2WHNW?=
 =?utf-8?B?WEduUWNGeTljSitwb1JaY0hZTUxGU2lsSDE1R3VNcFlmTXZqdEpGMlFJOTRz?=
 =?utf-8?B?ZEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97f2ee18-8fca-483f-ed0c-08dd353f2c3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 08:32:39.7840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4fQqlimmn3njrgKOWRPdr9o3GVp+/wukCf8659mClaRaghv+3wfvo8WY86MONUlZev0AMLPat+/ty9rtsB+w5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8861
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDksIDIwMjUgMTowMiBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDA0LzEwXSBkcm0vaTkxNS9wc3I6IEFkZCByZWdpc3Rl
ciBkZWZpbml0aW9ucyBmb3IgU0ZGX0NUTA0KPiBhbmQgQ0ZGX0NUTCByZWdpc3RlcnMNCj4gDQo+
IEFkZCByZWdpc3RlciBkZWZpbml0aW9ucyBmb3IgU0ZGX0NUTCBhbmQgQ0ZGX0NUTCByZWdpc3Rl
cnMuIE5hbWUgdGhlbSBhcw0KPiBMTkxfU0ZGX0NUTCBhbmQgTE5MX0NGRl9DVEwuDQo+IA0KPiB2
MjogdXNlIF9NTUlPX1RSQU5TIGluc3RlYWQgb2YgX01NSU9fVFJBTlMyDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KTE5M
X0NGRl9DVEwgaXMgbm90IHVzZWQgYW5kIGdvb2QgdG8gYWRkIHdpdGggaXRzIHVzYWdlLiBBbmQg
dGhpcyBjYW4gYmUgbWVyZ2VkIHdpdGggcGF0Y2g1IGJ1dCBkbyBub3QgaGF2ZSBhbnkgY29uY2Vy
bi4gV2l0aCB0aGlzIGZpeGVkIExHVE0uDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzcl9yZWdzLmggfCAxMCArKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyX3JlZ3MuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyX3JlZ3MuaA0KPiBpbmRleCA5YWQ3NjExNTA2ZTguLjc5NWU2YjljYzU3
NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Jf
cmVncy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyX3Jl
Z3MuaA0KPiBAQCAtMjUxLDYgKzI1MSwxNiBAQA0KPiAgI2RlZmluZSAgQURMUF9QU1IyX01BTl9U
UktfQ1RMX1NGX1NJTkdMRV9GVUxMX0ZSQU1FDQo+IAlSRUdfQklUKDE0KQ0KPiAgI2RlZmluZSAg
QURMUF9QU1IyX01BTl9UUktfQ1RMX1NGX0NPTlRJTlVPU19GVUxMX0ZSQU1FDQo+IAlSRUdfQklU
KDEzKQ0KPiANCj4gKyNkZWZpbmUgX0xOTF9TRkZfQ1RMX0EJCQkJMHg2MDkxOA0KPiArI2RlZmlu
ZSBfTE5MX1NGRl9DVExfQgkJCQkweDYxOTE4DQo+ICsjZGVmaW5lIExOTF9TRkZfQ1RMKHRyYW4p
CQkJX01NSU9fVFJBTlModHJhbiwNCj4gX0xOTF9TRkZfQ1RMX0EsIF9MTkxfU0ZGX0NUTF9CKQ0K
PiArI2RlZmluZSAgTE5MX1NGRl9DVExfU0ZfU0lOR0xFX0ZVTExfRlJBTUUJUkVHX0JJVCgxKQ0K
PiArDQo+ICsjZGVmaW5lIF9MTkxfQ0ZGX0NUTF9BCQkJCTB4NjA5MWMNCj4gKyNkZWZpbmUgX0xO
TF9DRkZfQ1RMX0IJCQkJMHg2MTkxYw0KPiArI2RlZmluZSBMTkxfQ0ZGX0NUTCh0cmFuKQkJCV9N
TUlPX1RSQU5TKHRyYW4sDQo+IF9MTkxfQ0ZGX0NUTF9BLCBfTE5MX0NGRl9DVExfQikNCj4gKyNk
ZWZpbmUgIExOTF9DRkZfQ1RMX1NGX0NPTlRJTlVPVVNfRlVMTF9GUkFNRQlSRUdfQklUKDEpDQo+
ICsNCj4gIC8qIFBTUjIgRWFybHkgdHJhbnNwb3J0ICovDQo+ICAjZGVmaW5lIF9QSVBFX1NSQ1Na
X0VSTFlfVFBUX0EJMHg3MDA3NA0KPiAgI2RlZmluZSBfUElQRV9TUkNTWl9FUkxZX1RQVF9CCTB4
NzEwNzQNCj4gLS0NCj4gMi40My4wDQoNCg==
