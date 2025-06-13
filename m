Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED078AD8300
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 08:15:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B17110E8C2;
	Fri, 13 Jun 2025 06:15:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SAOEW2Gz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB93310E8C2;
 Fri, 13 Jun 2025 06:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749795330; x=1781331330;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZiNRYJZadutFrS53gJKaj6sCH4mV4/KsUNHlBkS4F84=;
 b=SAOEW2GzELvkzSd0mxjKAESjObXfM7dKUrTDTjTsyAcQsvPRaj9Uqtli
 X+cTphc8qF7XchWrTjn/yEmocqYfN1D9fpOEAQBCjBD8cxWnd5+LFe7P+
 9JugNdWNBdCXAi8yGpUa21ttLKNIeSyh8alGgqcTmkFLNRbncFxAWyNwv
 YMEUybWDvI+SgFqV0kmV1qckMTh+4og+LAJAPn3MSR0fAHp9o8zvlJVqx
 7yNVfoVLA7RUKDHLihYVmiw+KyZIRyVvUYrAJgi78oRYXtF/QAkxvjk+7
 ZyX6qk/tbzwnsgVfodgjHQ1rbaLo+7Cpp+Zrwq8hkVzXYl5yOMst0bv4q g==;
X-CSE-ConnectionGUID: cvDb70kRQFO61gqTCytiFQ==
X-CSE-MsgGUID: 2uGD9CQITFmsGlIVilFPDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="63038940"
X-IronPort-AV: E=Sophos;i="6.16,232,1744095600"; d="scan'208";a="63038940"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 23:15:21 -0700
X-CSE-ConnectionGUID: RzhSAjLpQ7ykw1NlSgPwdA==
X-CSE-MsgGUID: U6m5i2QoQ2K7rZOYOioX/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,232,1744095600"; d="scan'208";a="151563181"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 23:15:20 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 23:15:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 23:15:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.60)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 23:15:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VTORwGlJ3vneEdEpiMzYtAlb9MgUXeAPxq7cqQz+iSU7nhRqY9v9McrUkHPQUGjI5DgIwM8l9KkvPWLX4N6PUxFJIO5ghxgUL4MRfxxYk0yOBayiZjQSar42vrvCU+7JpChW48FQwYJv77lcvRC0YDrP7648U2nQiQeX8Dlmc2YaN8r4U9M7SinvPs1Bud/xU0VWUOyMjXx8vdP3YZ6OFL1+zNlfFYJatRQaFiMYp9bjUjjA2VtgwckrOGy6rO8Va+C82EumoCuGIJg96CJ956xTSR+/A+y8wYznqpjYZtztokuA+mbQuMqKc3IE71M5usuT5LEDPGfYBdsJ5ouDTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WNTc5wv356et2FzNnNDtjqlMsRu0vLogtXsp3iVB8us=;
 b=mlEwORit2HD6kkTcwnBCcUIJn1S8Zls+W7+Qeo9f5dj305yGclUeQgDT8rIWIWpdNzLzqh6IViXCs/EriSPjjP+IReQrcdK4xMmTHK9XZIntc9D47BQTeZr411fZP88KKyV3Pw7AKamK486A6YIggoHL277NlBR+SlZX7asCJC9fY3rLHKsrVqDM8wv8TcySYwY8mq2mgZDVpzaczKh24V6BdEHJ5WnTFaatndL4WmgzwZDjh7uXJ7q0oti8P45yBBtUKrD15eroSww8v2cXx0r14GKUks6b8y0xFofa/ZUf9Xc1iQFzdglAB+UeifCTQuwDhQjc0I8rUWCsSJ9m8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB7167.namprd11.prod.outlook.com (2603:10b6:510:1e9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Fri, 13 Jun
 2025 06:15:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8835.018; Fri, 13 Jun 2025
 06:15:18 +0000
Message-ID: <bd3a2162-7fc6-42fd-808c-934720cbc5c2@intel.com>
Date: Fri, 13 Jun 2025 11:45:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250612075330.837179-1-ankit.k.nautiyal@intel.com>
 <174972962084.14553.9763596946172547950@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <174972962084.14553.9763596946172547950@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0121.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB7167:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cffe0b2-64ec-44e6-73a0-08ddaa41ab2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZTA3bnY4RWU4VmoyTy8zeUpacHRmcEpRdzhsNjg2SEtFQlZHSENsN1dNM0M2?=
 =?utf-8?B?Tk1WdWJsbk9wMWhjQU9DMUlEWE5DZy8wZzVpcHZ4VTBka1BnM1pySHRsMlVw?=
 =?utf-8?B?MGJ1N1lkbVoxUEh5eW52TU8xUGFzZDNoODRQYzc0UWxnb1hFSXp0YlBERkJQ?=
 =?utf-8?B?aXAwL1lUQXFhVDUzVmc1N3plSC9NQmUwcFU1cnVFdkVpZ2NvOGRnaFh4WUVJ?=
 =?utf-8?B?RElJbXI1U1o2WkNHSDVtM0hQNDBKYk9kQ3JFekxpdVFnVVpuOVJ5eitLZjhG?=
 =?utf-8?B?a3Z0MkNiRlNYWS9QdStnTTl2NHFKaW5GNWdvanA3aS9RNktkRzl4bWg3eEtJ?=
 =?utf-8?B?VDlmeXdPTkVkK1R1Tzh1ZVdaRVI1YjZIV3NSMW5uaVNIVDlsRCtMblprRUI4?=
 =?utf-8?B?Z1Z0RmxzNU4yQnB1dUxhWnBGRnMzTW1BbTBJVWVIMVZraVkwY2JhaDA3ZERY?=
 =?utf-8?B?VTdqY0JvTEQ4S2tDVmhpZzVQeXR0T21RMllsTjlURG4zc0pLSmRrMlJQaHZz?=
 =?utf-8?B?SEIzcHRCTFRBZlNUcVpOVm84alYrblJaaXBITGx4UU9EZVo0ZHRTc2Uza1BW?=
 =?utf-8?B?K1Fobm5ETzhqenp6WTB0dUtlNktvbU5SN2RkWEU5dUFMZk5EWUpjSzdXVVhK?=
 =?utf-8?B?VUFjU1NWR1Rkb0d3eFIrU3hESS84cmhpQTFNMjRzNXovbzJ4aDArc1QxNmFk?=
 =?utf-8?B?MWJyT1ZjQW9kVThPdTd5UlhXd3lEUkp2NWZGb2dsU1V0ZU0ydEdPb2xHK3R1?=
 =?utf-8?B?MDhrb0I2a2RLUFBOT1hvNW1CL3A3TjgxN1lldmsvMUY3VHAxd043WTVQaTBx?=
 =?utf-8?B?VW5vOW85eEptZ2xLa1JBRXArcG5IYVF0SGw0NHNlZmFwYjNjeVdzOEkrOWJR?=
 =?utf-8?B?bnVHVnF4OGJUZ0twUnFLVzZsRkNvK3BmVFVkMWExZUtiMFVwa2ZkVThkdlRj?=
 =?utf-8?B?Vk9id2IrbEpsbjZ0ZnVubUpYYnJlOW9RVmMrV3VZNnNUQ0FIOVg5bEJ2UUxH?=
 =?utf-8?B?ZUIvdDAzWmM0MDFJU0lPZTd2MFMyOSsrVDFlTWZhcjdBNE1pMzN5UTQ1SUk1?=
 =?utf-8?B?RWkyWHpqbTY1VmFVa0xQSmVNUk9ZNzRFQnlzTjRZUmY0Wlh4a25YUWVlMUEx?=
 =?utf-8?B?STRieFJlTlBpWVpncDlEWmdxRmVnVFdpOFpUWk5oL0MyU2syUDRWS254YmNM?=
 =?utf-8?B?TmMyMW9GL09KZFFoMmtRa2FZMG5WWGdndlpkUlh2M2ZiOVVZa1dQbnB1M1Fr?=
 =?utf-8?B?QncvNy96U0YwTk1tcmIzSU83ZzlkcGU4VyswUHpTQXB6NXpkNjRHemdyM0ZP?=
 =?utf-8?B?SEM5Qklxa3N1c3UvZHNhblFrckx6VVVhMlJaMWFsdjBBYUdDMkhrR083ZFdv?=
 =?utf-8?B?dnZyVTgyYVB0eWlTdndnejVBSWJiN3R2UHJGcHBrUzZuKzI5OHJVeDhVZ0pV?=
 =?utf-8?B?cVBaM2ZHYkxpVEUrNXU5SmM2THZZdTVsRVorNmRWNTZoWGNNblZrckFlVkRy?=
 =?utf-8?B?Y2VDYm0yV2YrZGJHTDQ4WEVmZ0Qxd2Y0cUp6WlZhUUVVcVhXYm5KMStjMUJB?=
 =?utf-8?B?SFdrWDZYb1hzMEMvSmtJaHR0NzFBRU80SDJTalcxMHBIc2hRN0syWUdMZmJ2?=
 =?utf-8?B?cUVaQUx3UzNEdlpPSG1pc2Ntc1JoazR4d1ozTVB2TXVDYzI0R2doektPYSts?=
 =?utf-8?B?RXhkYkxLVnJYWGIxN25WWXYxUmtVUytVQVhNYU9KcXJTaUtVL2pLOFZBQVRI?=
 =?utf-8?B?TDM1QVBVQ3JzbWx3WlBuRXlOMGF0ckpibEd1OGhFRW02VGd2U1VSejRucHha?=
 =?utf-8?B?NWhZWFlhQXVCbER2RVJ4STFHekhGdC9DSUVWOVBMMC9aVkZ3VFRoWGY4Z0cx?=
 =?utf-8?B?c3RFTWhaYy8vUTRseVVhUUxncm5rcjg2eGcxcU5QUklBTVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTY1dW9DNUJselE3bHB0WGNxQjhYWEZPMnFxcnprSWora2RmcDBwRzMvOXpX?=
 =?utf-8?B?blVwOW5vd3pVM2hrayt0OExPdklyUzRHWkhUWUNnZGt0YlAwMkJkb0ZtRzRJ?=
 =?utf-8?B?UVpRb2FWTkQySmF0MFRReE5xZHpkUERUQkU1QWlLUXliU2JKcW9CcXFBcC8r?=
 =?utf-8?B?aFhXMjQ5WEJvMkpsRHhyajlPMkxwMDhldXFKUDJ3Z1o3SmQxRGNBVXpxWm5Y?=
 =?utf-8?B?ZjZ0eHN6V2hZT0l5aVUwNWtDU2hWOWxaYzd0dkZpNWluL29vQWh6cUY4QW5w?=
 =?utf-8?B?bURLZ3h1N1BaaHpERklJdzE5VWZvRDdLVHVwZFpwRzlZZ2MyMzFoNGZRYWRp?=
 =?utf-8?B?aEIxVGVXMnJ0cjNYMkxLRUpGOWxxOGhER2FsQXJUelQrbmZIQmQxaTVFQlpK?=
 =?utf-8?B?WDZkZ3FhSm56RDFvaFBHemloano5bldRZEIrMVBKNTJjbnNobVdBd1BSYW81?=
 =?utf-8?B?a2xLM1Y0STcvRXZ2SkxIQ1lHNWw4VWNyL2NBaWdFWHRzQ1JlNldCcDRwbWdu?=
 =?utf-8?B?ODRHRlE5MXE0NlVKZE9tb3dHcVF3MFJsRnBoUDRsR2lhS0JubTRIZWF4eDl5?=
 =?utf-8?B?Wmx6NkhSTDJUTHM5VS90NkJnQ2hleE5kUUNxRDJQNVdHT3FYL0hLZVRNMUdl?=
 =?utf-8?B?d2dRVkdBWEV6ODJiaHhWSEVIMGZzV0JWVlRyd1QzcENzdWkyd0pWblRlZFpw?=
 =?utf-8?B?MEtMazZBWTU5RkFkMC9kTjA4TVlMMVRRNXhCc3I0ZU03NXVnYWs5YTV6UXZm?=
 =?utf-8?B?NmwrVVd1ZlpZcmlpMmxRZ2s1QVJVdjZ4anZmK1lGaUdvbFk3a2NtOEJJZjVX?=
 =?utf-8?B?QnJCTzdrdVVjNGVBb2NxcnBjYkhVT3M1aEtCZ0FVajkzVEpuZWREVkJmdDND?=
 =?utf-8?B?Tys5LzhsMDNjaHM3QWlnbWNuc0VZb2tLMUhNeGtBWmJ5MEtMeWx0clAzNlVK?=
 =?utf-8?B?cmtuVzdRRENrYndIZzhwcHFnazZQTmIyQmdtN1YwTEQyVEpOWTd3ZlhJbUw5?=
 =?utf-8?B?TXVHQVhTUkJFMGY3THBxc2xYUjJOdlJSU2tPRXYyRUQ1aUZPZGdBVzdSYWZ3?=
 =?utf-8?B?VndpRTNCTTM2VXJSUzlIQXNaWEdRTmdYckZmbGxWT29aeTFDWjBLS0o3U0Fl?=
 =?utf-8?B?QkFRVU5oUldISWFzbi9EOTZuK3hJejBsVnR4S0J1OGJ4SFJVTTNHMEwxS3Z3?=
 =?utf-8?B?ZUlybTAwVlBXK3hjTEkrQWJsMUlKS2hqNVd0NUM5UmR1aFlwV0M1ZHZsWlp4?=
 =?utf-8?B?eWU3ZlB0Ky83SjNzOVR2V1l3ZlB1QWx0ZEtnS2pjNUFnN3dSbUxUY3dwRUhU?=
 =?utf-8?B?aHh6aWxJUnV6YWVoNmNFRVBDK2ptektQVlNGU3BvZGp3clhEbGRnSlQrc0p1?=
 =?utf-8?B?Rmcvd3YzWG5qMUFmTnVaNW9MWkhhUHBKajhWd0pkclJFdENTeTFuS1NJbDZJ?=
 =?utf-8?B?RVBoMzFFSWNLRjg3cEI3V3FSd1hjOTdyL1l0YmtGWDF6N28xMmtZK1RGUUJL?=
 =?utf-8?B?QWVxWHBvLzNkdzdWLy9xWldiK2lYYUVtTmxaSVk5cjhZajZYb29DeWtqTzFW?=
 =?utf-8?B?MzN1cGVPbFM3dE9raTBIU2wzemZlc3hnSWg0ekZZVXVmUUN2UlJJdWxwdUha?=
 =?utf-8?B?OGg3Y0ZWV0NaR21KSlJ6L3NVbzBTakZ2QmJrNHgwM3lQelpmeDN1VHlEQ2Fm?=
 =?utf-8?B?L3FMRDNWMTY3TjUxZlVkM2E5Z1JudnNpWWF2Qkp6amVabnpWb1luWFVyYjVF?=
 =?utf-8?B?czlIMWo2aExSY29KUXN6RFVCQ0NJL1o2dXBOOTN3ZEFpMHErTWFqTXRLbUEy?=
 =?utf-8?B?TFUxK3dhUXpRUFY4TGllYnJQczh2TXVBNEp2MjlVU1VUTHFodGZlTmJjYlRp?=
 =?utf-8?B?TkkwZk9Eb1hPZytwend2MitlZFJzaEo1bUIrczgxOHBhRGMrYXM3NXFLaGlM?=
 =?utf-8?B?S296bXlZSVdoS3lTN2dLQTRZUVQwc0VVUStNOWNNNE9zZzI5bHRUdEJCT2lx?=
 =?utf-8?B?cWQyT3RHMmlSbCtEMHF4bHFJNGlXb21WTFNzZE9UOHY0UnJ6UEU3bFRXakVy?=
 =?utf-8?B?OXpPdE5NczJNWjk1MDVXcTJYdWpGbkVRZnA5NW5HVFRVVEVRQ0R5UER2OXNr?=
 =?utf-8?B?TmZKbjJCWHhhdmJnc0hOUEZ0VU15cm5YdUt1OExCMkJLNGJ1eWo5c0RlSVZa?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cffe0b2-64ec-44e6-73a0-08ddaa41ab2b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2025 06:15:17.9954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KzCjbpBKHcQSIdBw8mPlmRDzeTzl8n08Rht/EBNHgPXt5jMtnF6kJw9ULk15VFEQNebU3/DgCyqBNx/oZKIKB0rFPSqQhX1u9jcmOZY+OWc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7167
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


On 6/12/2025 5:30 PM, Gustavo Sousa wrote:
> Quoting Ankit Nautiyal (2025-06-12 04:53:30-03:00)
>> As per Wa_16025573575 for PTL, set the GPIO masks bit before starting
>> bit-bashing and maintain value through the bit-bashing sequence.
>> After bit-bashing sequence is done, clear the GPIO masks bits.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>> drivers/gpu/drm/i915/display/intel_gmbus.c | 38 +++++++++++++++++++---
>> 1 file changed, 34 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> index 0d73f32fe7f1..c96167c70228 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -242,10 +242,17 @@ static u32 get_reserved(struct intel_gmbus *bus)
>>          struct intel_display *display = bus->display;
>>          u32 reserved = 0;
>>
>> -        /* On most chips, these bits must be preserved in software. */
>> -        if (!display->platform.i830 && !display->platform.i845g)
>> -                reserved = intel_de_read_notrace(display, bus->gpio_reg) &
>> -                        (GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE);
>> +        if (!display->platform.i830 && !display->platform.i845g) {
> I believe the stuff specific to Wa_16025573575 could be done in a
> separate "if" statement. The conditions for Wa_16025573575 already imply
> (!display->platform.i830 && !display->platform.i845g), and using in a
> separate "if" statement reduces one indentation level :-)

Makes sense, can make a separate if-block for this.


>
> That would mean moving preserve_bits one level up, making it available
> in the function's scope and doing the registers read conditioned on
> preserve_bits being non-zero.
>
>> +                /* On most chips, these bits must be preserved in software. */
>> +                u32 preserve_bits = GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE;
>> +
>> +                /* PTL: Wa_16025573575: the masks bits need to be preserved through out */
>> +                if (DISPLAY_VER(display) == 30)
> Instead of open-coding the conditions for the workaround in three
> different places in the file, I think we should have a function
> needs_wa_16025573575() and use it.
>
> Also, note that the workaround is also required for WCL (display version
> 30.02), and we would then include that in needs_wa_16025573575().

I agree, will make a separate function needs_wa_16025573575().

Thanks for the suggestions. I will make suggested changes in next revision.

Regards,

Ankit

>
> --
> Gustavo Sousa
>
>> +                        preserve_bits |= GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>> +                                         GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>> +
>> +                reserved = intel_de_read_notrace(display, bus->gpio_reg) & preserve_bits;
>> +        }
>>
>>          return reserved;
>> }
>> @@ -308,6 +315,23 @@ static void set_data(void *data, int state_high)
>>          intel_de_posting_read(display, bus->gpio_reg);
>> }
>>
>> +/* PTL: Wa_16025573575 */
>> +static void
>> +ptl_handle_mask_bits(struct intel_gmbus *bus, bool set)
>> +{
>> +        struct intel_display *display = bus->display;
>> +        u32 reg_val = intel_de_read_notrace(display, bus->gpio_reg);
>> +        u32 mask_bits = GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>> +                        GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>> +        if (set)
>> +                reg_val |= mask_bits;
>> +        else
>> +                reg_val &= ~mask_bits;
>> +
>> +        intel_de_write_notrace(display, bus->gpio_reg, reg_val);
>> +        intel_de_posting_read(display, bus->gpio_reg);
>> +}
>> +
>> static int
>> intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>> {
>> @@ -319,6 +343,9 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>>          if (display->platform.pineview)
>>                  pnv_gmbus_clock_gating(display, false);
>>
>> +        if (DISPLAY_VER(display) == 30)
>> +                ptl_handle_mask_bits(bus, true);
>> +
>>          set_data(bus, 1);
>>          set_clock(bus, 1);
>>          udelay(I2C_RISEFALL_TIME);
>> @@ -336,6 +363,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
>>
>>          if (display->platform.pineview)
>>                  pnv_gmbus_clock_gating(display, true);
>> +
>> +        if (DISPLAY_VER(display) == 30)
>> +                ptl_handle_mask_bits(bus, false);
>> }
>>
>> static void
>> -- 
>> 2.45.2
>>
