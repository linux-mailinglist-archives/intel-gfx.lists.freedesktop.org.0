Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8F0B2F6C5
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 13:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACCB310E93D;
	Thu, 21 Aug 2025 11:33:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g0OgFaYD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A716310E93D;
 Thu, 21 Aug 2025 11:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755776024; x=1787312024;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jSgOBCzHIqUmbXozz7rnhaV8Nb4blXsL+MvmExAyTv8=;
 b=g0OgFaYDSNhu56dpsvrjPWWwsUrhb3Wv50HI3xBJwV9UQyUfVg86IYUq
 ywYhl0k23+XxQyaQQHntmVPnZ/cQzIPLkM4x+HhgPsLmIH21bfsD1AOI0
 /pVts3oPsHkDzHwe8olkm+ZrMlOtwFz6u0MgZ4yqebfMtVHfFFoGEbb1+
 h/FY8OcVJP1d4iasNsw/dcX3FspTXPQzDfMklbtnV2a/1R0L7A0tH9CAm
 womCtM3giAvMLUGlcMv8BUiAZt7cri80lYqLJv8pbxyysxoK71/oprqNa
 mm7tRGsBNQLl6Q5q66J34/8L/tVAVLE8ZUy3s4nvQyucdENpeUMAPM2D4 g==;
X-CSE-ConnectionGUID: yEc1Fz12Svuiqxo9S0MLUQ==
X-CSE-MsgGUID: a9b8M+Z/Q0y/n6iTO3kemw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57981418"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="57981418"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 04:33:44 -0700
X-CSE-ConnectionGUID: GP8MdMWwQb2UjYQCf32CPw==
X-CSE-MsgGUID: lOxx2UJKSHij/cQUS2wlWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="168633169"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 04:33:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 04:33:42 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 21 Aug 2025 04:33:42 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.77) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 04:33:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pkuusjYmwZgtBub/EVXe1d2UbLoaPZfi+LIMjgLZZTeJFL+SnM5ArRdrRwdlAB7BBcSAYfceTXLc9tf6l8QG9FbeCdT1zKWvZrV3UNPxPctEWk+9wj4ymAcnTvM6W51DL2PWyzYyqd6KidZusfLMpHOAgTky13JgAzS4tS/CQzJhqgb5jOl0EvVLVYjKEeKh7Rf/4lYID8yanxHi8lLRS6afN2trlUEz4fYoS36T8lOXIehRuxorgRhYdS/lDNfpkxfVi5R+Da393ZFYLK7qibPOTuiVtjTwGDumTBS/tdhE23azfBdPI5oxh9MaRGBxI7sxT0B640EFCvo3v2mF6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RARde1lSUcvVmo7NsMxQ1jjgqerBBXTEDR0uYASYS0U=;
 b=JbMnDWRK4daZhEoCGwW7qizRr4DnVuWchXGnaijyvc5OqN+JMIOLaaKbvkSKAi0RiLeUpBPrBYkqF30h997mOVkFzbd0mLc055qZxXfeX5T7VyZxEZRFi2VJzE99chxiIB4ROuV1Mr2vObNlbbW5PhFQBrreUaq1DXQUaVO0+v07fVVBM+FyisBDwrzwBCO3ZTf3FhW4Z2DDdDK/nHd+mOajRhPTSuJZ8AB0ZRwG0bXK8HS54pFPyAMLjpWOLp2eUv+c4SM2sSSv3HM7+66N5VJCvyiCayBXQl+POHUhwJl/AbSRXBW1pFtYnfDSGnvcfDDqTwp/3gP6dpA2eZjkwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPF8A49C4DF4.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::83f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.15; Thu, 21 Aug
 2025 11:33:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9052.013; Thu, 21 Aug 2025
 11:33:41 +0000
Message-ID: <52e7d909-1a3c-4928-ac6f-6b624ba85204@intel.com>
Date: Thu, 21 Aug 2025 17:03:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] drm/i915/edp: eDP Data Overrride
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
References: <20250821042653.269227-1-suraj.kandpal@intel.com>
 <20250821042653.269227-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250821042653.269227-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPF8A49C4DF4:EE_
X-MS-Office365-Filtering-Correlation-Id: edff9a81-fa84-4f02-72e7-08dde0a693c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S1JTbHpyd0NETENpeS9tcEFscmdHYk1YbEtYMEhzQXllRWhzQ2V0YTNERjc5?=
 =?utf-8?B?d1dJTmpJdFdvSEphMitzQTZIQXYyTmF3K215U3VRS0FONFYvTkJGd3R3dTRq?=
 =?utf-8?B?eTVRYVdzN2NkUzZrV1QxYUJXSGpqT1gvV2dnaEY2TVVFVmxNNllLTXJjbW5Q?=
 =?utf-8?B?SVZyUktSSnVsbFVpWGJuditDbkhCU1ZFcnB0VjFWUy9nSkNwZVlxcEcyM2Fz?=
 =?utf-8?B?T2liRDZYUDFXSThyYmdxTjhLM09tYVk0VWppZVVCQVloSWt5SVgrM3FpalFO?=
 =?utf-8?B?UjFnWnJCVUFEOVNnUW5LcW5mblBGdWh1ZmJYQXV0eE01YWkyK283aFdNL0lw?=
 =?utf-8?B?L3FVU2N6OUN3aHk4a2U0MGlMZ29qKzdKZlNWMjVvZ3gveThQSUoxYWpYWDhP?=
 =?utf-8?B?RmtSVGRXNnJuV1pmUngyb1dtQk5YMG5LUEcwUjFKUGNhanVrNnFBWjR4a2dR?=
 =?utf-8?B?S0xMbmZLcUhzUldQaGNlTzI2KzNoRkZYUVM4MDR1WGJ2ZXZrTC9YemV2amhD?=
 =?utf-8?B?ZlF6cGladWswN2E3OFRoWllTR2E5VVo3b2ZFMkhybEVaT3JQekxvSU5tcFJP?=
 =?utf-8?B?WWRQSDRza2FKM3htRWdCN1JJZldHWWpxeC9aL0V3K0UvbUZZS3lKRk9IV3lM?=
 =?utf-8?B?WEZ0WEtkZTZOaXV6Q2JLUEVtQkErNkpZVlJYc0RMakZhRkY5c0ZIZWNPNDh4?=
 =?utf-8?B?dzhXR0VyTGZtVHhqTUJ3N1V2QXdxNHh5SndKYXRQZUZwSEJKbGs2Ym8vYTlO?=
 =?utf-8?B?cmhlUWhuY1IrQkhTVDBqWFJvSW5JbHBmYkQxUWN2NzQ0aGVGbTVLSlBxaXR5?=
 =?utf-8?B?bUFWUWVYcDdGWWpqS0RjaGt6YWtBZm4zSytNSHRJWWJJMnVSNGIzYXJSczFw?=
 =?utf-8?B?UFM3MExxRHN1dlRvbzFGN1FyeEZ5a05raGx0NVd0WUZOcHRlVU84N1NVYkc1?=
 =?utf-8?B?b3RzM3JINnJ4bTM0WXNxaG9JbW96NFMrRDhHMStadXVidUdMeTJsYWs3U2pw?=
 =?utf-8?B?ZDlLSFVja1NZcGVxSmhPb1pwZ0lwNEpXSldQV2RKNzJwZTN0dDU2SmJHb3dh?=
 =?utf-8?B?U2kwbjV1QVk4UmpNdUdQYU01QTcxTTdlNm5oSXc5NUhBS3FmcUVGTDFLUWQ2?=
 =?utf-8?B?TGZ3SitXWTBDQzYyR2xaRVZOd0tsbXpDWjZxUmhxNkRiSDAzK3hOVU9ZaTNk?=
 =?utf-8?B?b29GUTJsbk5aODBES2h5MGo2cmNVR290U1c3dmViRWFma01aOG5hZXNOaWcr?=
 =?utf-8?B?Vk8rV0s0RTh0OXZHVWtHdHVXQ040VEMzck1QbzJFckRrU1h1N3NGTkN0KzJJ?=
 =?utf-8?B?c1A2THZKQTUzeStZZGVvaUlhVXlGMi84ZUlSdjY1bElkdDI3TE1oMkFPQ3Yw?=
 =?utf-8?B?ZjEvQk1LdmVJZXJIZkFSdFpqdlpkSVhHQ2g3bVBIMzBpYllVMTBMTFgzb0o4?=
 =?utf-8?B?dENzREQ2azA0Q2d3MDQ0OStyY3QwRlExbWlXUEdQbFZONGVLaGpSWWUrd1ho?=
 =?utf-8?B?RFZPKzE2dEVxcklVVWFuUTdsTy9YMkNMQTVaYW1VOGp4bjVXSWh4Wk1SNHRH?=
 =?utf-8?B?YmR1VDA4V0U4d01ydndTQ2VHY2FOTGR2QWxqSjE0THIydlFFckZyMDcwN2cw?=
 =?utf-8?B?SzdoNWkrU0IxVldCcW5xWWlGbHljQTlobS9UV2d0N2VzTkR4ZGV0WmJjL0RP?=
 =?utf-8?B?NEFwZmR3NUQ4V0NYbnlJZEM4TjI4VEpLZGVDUy9SOUhjRXJWcCtsV05HR0Fh?=
 =?utf-8?B?d3huemhNK2IrVmUyS0s4K1hWVlErZ0pMcW9DcUxaNnJkMUxOek1XUlFIenZL?=
 =?utf-8?B?YTgrczk2UisrRnJ2eWFZNWF3ZUFHWVdXbUttbDBHNG82bXBLN0I4MVRiSVV4?=
 =?utf-8?B?K2Q3NnhxMjV6ZTlwbHV6SklIQkdyTU1kODc4eTI3dFZBOEE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVl2VXZpNWw0WFM1YWpBMWJDOUNyaEtjSVlyR1JSd29icnFCYU1zTkxidHBS?=
 =?utf-8?B?UlcwS2RQWm0wNG9IV0dZUm5lajRPakRzSlVCck8vTzB5MW5yNk9POHNubVRM?=
 =?utf-8?B?NG9paCtWdGllL1E2b0dRaVpwRmczRUN0RDRrU3RVcmdGN3NkWEZTeE9mWm1n?=
 =?utf-8?B?TGpPb1EzczNEY1lYZE9yQ0xDYmkzOVhiLzUzT21hclJrTE9Od0NhSzR2b1cw?=
 =?utf-8?B?RkJ2WDl2RStBMFVmbmJpN2tDR2V5Skx3eHdIY3ZmRFY2a2VIeU1QM05OcXlo?=
 =?utf-8?B?T3JncVYvRXhFUFNoWHdxRnV1Zzh5VVJhcmNmWHVKVW1LYXBEOVRCK1NKSzVV?=
 =?utf-8?B?SW96QkZXcWpWaHFGQ1YycDVENCs4WkZCZU81bGFGcUNRQ2Fub2E5OTFkdzJL?=
 =?utf-8?B?em9SaEVKMkhrTllScTV5c2VROEJtSWZOeSs4UzUwallhV3hsd29lYjBIenJa?=
 =?utf-8?B?NWV4RndrOVl0TTNEUXRNNEZBYXVwSmRTeWt2ZGQ2RGg4eXV4TC95QUxDNzNh?=
 =?utf-8?B?S1NoRUM2SEV6TGx4TUE5NVF1dVc4MVBaeW1WN0VxZnp5c21VMVFTRVBxTEVq?=
 =?utf-8?B?L2RnNzV4QkVTdzV4Si9MeXNucXpLSWJDeWdFN0c5dDhwWmZzZitZRkxWcG5Z?=
 =?utf-8?B?UzhPKzFvV0plM0R3WHN1c1dNYkFWSGpTSHNaSGRlWDBjb3hzaW5vQ3AxMnhB?=
 =?utf-8?B?dkhTckNHRVZiTWhEUkZQWUpDYmV4emdDVFd3dnUxZXhTVlh5Um82VGs1S3l3?=
 =?utf-8?B?TDRGcS9lbHZnTitKOGtpTnR5RnVpcXBtOTk2NTNWNXNnMXBUMHprbm9neXYr?=
 =?utf-8?B?c2J6Y0JDWUF0b2YvamRTREZmNlJaK29qcEo0OTRTNkxCOWpiam5BQVUzbzBK?=
 =?utf-8?B?ejFQc2RJRGRna0Z3VTRMZk44MjQ4ekZYUndScE9LaURUcTJrU2JXemMyRlRN?=
 =?utf-8?B?VjV5LzNtSEYwM01CeEI3dENFTHZnTzRlYUh1UDBpd29IOFVlTzZ2ODZhNkJD?=
 =?utf-8?B?MTdPbStvQk9KWkJmYW5rK3lzWWpvb2lpQ0UxMmFnTGw2Z2RCRG91c0FzV3lR?=
 =?utf-8?B?STExMEswazNLWHhPdUwrZENoN2xtTGpvSVpVbTNqMTByWVpvYkVqNjRMTUtK?=
 =?utf-8?B?cnFmKzRBOEx6Q0NFcTFSVnRwdnA1a09GeGFJYXl4Ti9yN2hPRzcvRE1OM096?=
 =?utf-8?B?d3kvRnE0MUhiNkhUUitCczI4VXVvZERhNjZqeEJ3WEV5UG9Gay9SWFpsL2Z2?=
 =?utf-8?B?VG1zYlVNLzdLam1IY0NWU0wrMUM1R1BJeDJTNWlhWmpvWUE5cUdpUlZiLytt?=
 =?utf-8?B?SzlNcERIaVk4OFlRSFRlb3NnMkkwQ3NDc3JXZmdZdko1SzFVRmhIYkJCOVJR?=
 =?utf-8?B?TnNPa0lFOXRQVENCV1RURE9KUG05L2FGUU9kdlBRUUt2S1lSOWx5WEFxSXNK?=
 =?utf-8?B?ODd2OVg0TUg1ZXg3dEtHV1JsSXppSGR0eU9ST2Fva2s3bTdKNWdJbnJrNHBJ?=
 =?utf-8?B?eGVacnRsc2xFK3dMVkJBT2FhOSt3SVlRai9NNEFaL2poWFl3RmZyTHJOUUxq?=
 =?utf-8?B?cEZ0TU9SdFdISDgxcFcwRkw3S2g3WG5aOXJpb2ZxVWd0MkRFSFBqbmtvd24r?=
 =?utf-8?B?ZXRPNEM2OWRvTldQNU1hTUExV3BlV1RRNDhjWk9xOGlDZ2MwUU16c203eG9F?=
 =?utf-8?B?aGRNall2amhQcENFRDlQbzhma1ZHNWtxVUswdHdSY0w5WjVISWpUR3JoeVhN?=
 =?utf-8?B?eXhxblB1UXIvUjVzYzFWd2hEMXdlaWFKb0lmVjZuUzNOb2RocnQ1UXpWbnNk?=
 =?utf-8?B?UkFhOXJHQXVCZ0xTMkZ3dUVqSFlCOVpQdjBTd0R5TENkbXdLdjF5V2ZDQ0d4?=
 =?utf-8?B?N2tJUVF6cWliME96YVhzSWRmRUpteEQyRUxjRFJLNGdhMWxRTlhZeUp5enkx?=
 =?utf-8?B?aFQvUUNUa1VMTFo0ZFZHNFFyclJrcWVsWEdjL2FVV3kwbGovcU9peG50WTNh?=
 =?utf-8?B?ekNXUHhDRTFIZVBBSjlFNkJpM1NLN0xldnpNWmI4ajZMS0RFK0tGOTNqUkRE?=
 =?utf-8?B?aGJ0NkwvcDJFRTdSd3IrOFBuVjl6UmpBN0tIczJNcGk5cjAxVzJBallkektR?=
 =?utf-8?B?SHlXWE5sRWtNOCtxaUora3lIbW1zcklyU0hlRkFZUnBHaGtubVR3LzJJQUtO?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edff9a81-fa84-4f02-72e7-08dde0a693c2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2025 11:33:40.9407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZxECxGbPAzUrGYwRi7LkzFZPOIdQpcXOANLseenu++rqAyfYuvKzvP7FHrs+4hJnQQXrZlT6JlRXe/uDP+ZT5NRJgSPjz1cjzr5TNA4vwZI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8A49C4DF4
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


On 8/21/2025 9:56 AM, Suraj Kandpal wrote:
> We need override certain link rates in favour of the next available
> higher link rate. The Link rates that need to be overridden are
> indicated by a mask in VBT. To make sure these modes are skipped we
> don't add them in them in the sink rates array.
>
> --v2
> -Update the link rates after we have a final set of link rates [Ankit]
> -Break this patch up [Ankit]
> -Optimize the assingment during loop [Ankit]
>
> --v3
> -Add protection against broken VBTs [Jani]
>
> --v4
> -Fix build errors
> -Create a seprate function to check if edp data override is selected
> and using the correct vbt
>
> --v5
> -Use correct number to check the num of edp rates [Ankit]
>
> --v6
> -No seprate function check if vbt is broken in the reject rate function
> [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
>   1 file changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54d88f24b689..12c8f0d80c95 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4277,6 +4277,23 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>   	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;
>   }
>   
> +static void
> +intel_edp_set_data_override_rates(struct intel_dp *intel_dp)
> +{
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	int *sink_rates = intel_dp->sink_rates;
> +	int i, j = 0;
> +
> +	for (i = 0; i < intel_dp->num_sink_rates; i++) {
> +		if (intel_bios_encoder_reject_edp_rate(encoder->devdata,
> +						       intel_dp->sink_rates[i]))
> +			continue;
> +
> +		sink_rates[j++] = intel_dp->sink_rates[i];
> +	}
> +	intel_dp->num_sink_rates = j;
> +}
> +
>   static void
>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   {
> @@ -4327,6 +4344,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   		intel_dp->use_rate_select = true;
>   	else
>   		intel_dp_set_sink_rates(intel_dp);
> +
> +	intel_edp_set_data_override_rates(intel_dp);
>   }
>   
>   static bool
