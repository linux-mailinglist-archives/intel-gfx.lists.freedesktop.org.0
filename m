Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7ED98B865
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 11:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A93310E602;
	Tue,  1 Oct 2024 09:31:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZDjRw9cm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A423610E602;
 Tue,  1 Oct 2024 09:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727775081; x=1759311081;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JZZU7zkaosScHIYR6MIpozx9QkDmbA780uVnd6VwKys=;
 b=ZDjRw9cm7sOEnaFl7tgJIh4r9dIPADQ5wrzL+h7oS227hTerPaa1KccT
 J0oDN2m+fVpheJFsWsNiVDyzadIh+5KzI61VS0pByak0X33DuHys9aRp1
 OP16XgDJX0XH5ZwDYOV9Z2qmnoMBtpW8TEqI5+T4sIjOJvtpBMCxez5lt
 bfNpNSkVJHNl1VUFFtYVXu1cITKgW1aR/YYdKkdUzkDnXXbRROV/YUQa/
 DJ+YYBD678kOxODK1Od+5yVTtCm65gM/BFOm1dFzL31rnPndUpzPBA1oI
 ke3sjvokjIb/eGavrpnzFXiXIn9Y99DJTVGku/GvfYAuI7pc7hjdVqkNu A==;
X-CSE-ConnectionGUID: ucRgcSbQT0WyTfDCnC95vA==
X-CSE-MsgGUID: v0zPUt09QJ+x2cm8ttU3ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="27026638"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="27026638"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 02:31:20 -0700
X-CSE-ConnectionGUID: O3LFyQrbQimtVaidb/216Q==
X-CSE-MsgGUID: kW0ZZgh0R2+a4BN7JnRXiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73864151"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2024 02:31:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 02:31:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 1 Oct 2024 02:31:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 1 Oct 2024 02:31:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vYEvyelcRm7aZfhTv+cVc6/MbeI+ULmSky8ePous7vhHKibC2hY6Q1jd+LXJo49wP7aDEMatP1Z5rH+tAZke2kjKVU1ZEQ2stl4T5z14VaUG8oieeUR7XTF6pNGqTTFvMFvIIW0589Ll4MGSEkNOoe43LeIAQ+9U4jEIUzkpC3grz2Fbxtzezq0EID9Q/vYgy33F12PdBNlOoOXLqi2Hp7yWGJgSSpFokfN6l1A/B7AINk1qJSROBExijyL/GJzeNiXVivRGCIhuqrnjP2LBiWektjnvVyQ6KEC0R/TDeclJfTzMEcLNgz28LHBdHYhu/imQ3JzNurGGBDWMQfnnQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2jlfGfZxh5tAg9Ja1hewRXB4lsXrSJXrD3DOdXSCxzQ=;
 b=YivW2nXt/BEHcJpDvRbhR3vAlhL9oW5YFCRzQwMuYSZiOpLlrzmktI1FfvEdlsPkp2WvTBTCZYKol3EKlIZyd97SnH60QxKDVjOSvpu0bvez0P4VbDKf/w5qO959NgxyrKSR8+FfsmR0LauSlDpOWxMuNpGPY5D38vti4/M1ZiVYTXrc7Jj0tmHckmnpJcwrZKIMVef0820bcuSNjo6QqJkvhvgnIeJb9fDOLgxMt+vM575kTOzGfRCElqUlUCy4fuFXY0PW+rm2k10USf+DHMTkDXCVOUZ19TaYqqQcBhHPEQOpZ+xlPNiVp8fzbOCx1YaqHVvC2ZEpjnYEL+LmAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6213.namprd11.prod.outlook.com (2603:10b6:8:ae::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Tue, 1 Oct
 2024 09:31:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8005.026; Tue, 1 Oct 2024
 09:31:17 +0000
Message-ID: <d0b566aa-fd9a-4469-9af6-d076b78df3e0@intel.com>
Date: Tue, 1 Oct 2024 15:01:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/13] Ultrajoiner basic functionality series
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0101.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6213:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ba613e3-dd78-4e85-9c5c-08dce1fbcd04
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZURXbVUwQ3hqVWZFenRneE9jZEJKZms1UDMrN0xJUU8reGROOWRFa3JkT1c4?=
 =?utf-8?B?UFFXL2xkbDg5alVkQXR3RVZTY3JHRk9nTEt0bi90M0luOFA3emJLdVdYRW5L?=
 =?utf-8?B?WXZhbW5MQTVTcW8wZVdDQlhXb1BMRWtrNnFnVENQMlo3MEFwekxmU1lpN2Qw?=
 =?utf-8?B?Z0EyUTlwczdvVWNKcWZ3TEdEb2M0bVNxNGpGVVdCZ1RSQjdwZ1ljSlNPQVFs?=
 =?utf-8?B?MUJIbVAxVWt6UlJxMjdnci9qdVRZMFJJMkhkanlGYnVidmVLNjRtSG1mK0NT?=
 =?utf-8?B?QkMvM1k3NDMzRndXQ1pxWjJROVJrNi82MG0rVXdzYjZGTzh5V29MeGc2S0NY?=
 =?utf-8?B?ZUNyWklQcGxmQzNOeStrQUxUVHN2U1FBRm42dHVucWhkUzJtL3pPZ2ZYNlZT?=
 =?utf-8?B?QWNnbkpkMmluNFZyZnVJQlp4alNaNzlOaDQzNjJuUnFmWFE0VEthNUJGSHBO?=
 =?utf-8?B?SW42eVU3QlhBT2hHRmVYNVM1SnlDV2tOWnBxZHlCVmdMYlJaVHNEbzBsRG5X?=
 =?utf-8?B?NStGb3F3NXIwT0xFVWY0bnBpSm5mU21wbkpaaTdSTSs1Lzk5Wm8xTzFkUW5C?=
 =?utf-8?B?dG45ajVnMmNyeGxmTm1IRzFCVGFzYm1VMWJ4Q0FBYXVjOFhhcjRPNHlZVVVW?=
 =?utf-8?B?eTVFc0FaZ3B6SERqVUEvL1FRZW9vU3FKQjJOMFVNYUwyZU8wMi96SHhZMEhJ?=
 =?utf-8?B?bW5CWDd2VWdBUUswcTVLbkR3V3R2bHdVR1o2WEtMMnRsZlh5OHROODJ1YTZO?=
 =?utf-8?B?QmtEZGVlWURSNEFLZ041K20wZzdGdzF4eW00S2NrQlN2emxxOVloT2doRXkr?=
 =?utf-8?B?NEM2UkQwQU9xSWozSHdRUWdxVG9hRE5PUTJublFtb3JXQlZKc1picEYxcCt0?=
 =?utf-8?B?NGZUS29Objd4SjdUV2oyL0sxSFJ5Y1NTNXYxSGtVQm5DcnFZUUJNSW5uMlZ6?=
 =?utf-8?B?OXNKOVlmVDBPU0RUTTVEbmFsRkNpZTFScE9HdTU5UHdzUjNxS3NMY2pudEJh?=
 =?utf-8?B?bGZRODFsOWZBamtVRUQxKzZoVXVTamMzVnEzV0NKdlFGbTBtTlhOMTA2cTk1?=
 =?utf-8?B?TkRPdmhPOXlkUlIxaTVHZHJ6NEVEdW1BOWJKeTFKdytvSm5uTFlGSlhmcUp4?=
 =?utf-8?B?b2xMeDdqYXBNNCtTU2JaMXdVYXI5dXFrS1k3UXlMUHpMOEpJeU05SDhqYWN2?=
 =?utf-8?B?NmlQZHo4VndaTCtCY1lJTXNkcTBwY2kwSjVIUnl3WFBWNmM0ZWhrdFJ6bmhz?=
 =?utf-8?B?UlN2ZUtZU3VOZVY4UWc1VjR2anhLL1hlVENxTmZKdU1JSzl0aW9Pell4cy90?=
 =?utf-8?B?c1ZBcnRFZm1FYTZLelI5RExqZG9tMnp3N29OMlVRaHFOOEdEOE4zS1F3bksy?=
 =?utf-8?B?VWF5NTZvbVdFWGxORktjYUIzcW5CdWdZUVJiZHFWOVB4MTNrS2t4MXA2ZVk5?=
 =?utf-8?B?VnpMd0RwT25zMjE4anM1bFFhZmZibzBHMGJ6Z3VvajJKbGl0TENCcUNLQko5?=
 =?utf-8?B?cmptc0RoVlBEck9Pdlp6VXZMdlVFWEdZN3JvV3lpcUd0ODJqSUNZb1pzaG9B?=
 =?utf-8?B?ZjF4bG1BZG5lMTR2ZmRDcnhlaHVSZ0RheFc1N0c4Sm1PVTBWUDdHRkJlNWgr?=
 =?utf-8?B?dDcrRlQzZ1dPZ2ZuSzUxSXlLejhCTi9LYlNqZVpxZmR4eDZoc09YbmlYWHRh?=
 =?utf-8?B?eGFnSXFVdU9xam1DeEZtWVpMMmtoanhHLzZnN3ZpRVBTRXdNV1JpeGRSRVNB?=
 =?utf-8?B?SG5EeVM4cVRWRUFlUUo5V3ZwS0dxNEl6akU1VVUwdTlpeDl5dW1WRFEwc05l?=
 =?utf-8?B?VFYydUZlVDAvUExIS0VtQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmxDVytFRjVXWlJMQTVBWWxrRnNVMzlpVzhhcFdKVzFGdlR4VHpJT091c2xK?=
 =?utf-8?B?TG9nbWN0dHUxRnlpZWVWcUs1NTdIellDbkFNemJpcWRLb3QzN2lIY2dkQzc4?=
 =?utf-8?B?cDVxTVFzSGxCaEQvNlVaOC83SHovRTlFSjU1L0JFYklOanBiOVd0YjZzeUdR?=
 =?utf-8?B?NExzOStxajRqRkVaSktDM0JtRkgwZDlMN3JwN0ZWbWJZenpOZ0xkajVLUFBp?=
 =?utf-8?B?NVN5dFp4UzhUVUZFWWE1eWMvY2dVQjBtM2Y3dVpmd1BIOWZRYjFndDJYV3FY?=
 =?utf-8?B?QzJNUlRHaDhYS2xNQ01YdVBoUUEyOCsxZ29kZy9naUFJT1JRZ1lnaEYxWDEz?=
 =?utf-8?B?dzFqekdUemFqamdiY3IvOXl3T1JqcXZSaVgvNG4xYll3NVVrT0tENnZNcGU3?=
 =?utf-8?B?ejJQemhsdEZxS2R4QjdydTNVUnN5M0VFMldTbnNVQjJpdmVvSXd5N2tVaDBP?=
 =?utf-8?B?ekVsN29LM0VMWU9QOWtYQldzZEhTUHlwdHM1MTd5TTVVbUhiQmlsUzJJbFYy?=
 =?utf-8?B?TFZDVjRqNjRFV2dHMWl4SklJRFhXWHVMYXRpRkdMSjAyeXpHTXpKYWlCanRq?=
 =?utf-8?B?YU5pNXpLMFh6UnlDWm43QkNIcXRuQmJVem5BSkFkZGNQR0s5dmhDTUg2NHZ2?=
 =?utf-8?B?MUc2NXFBdEVsdUI3ZkJDNTUvMDA5dXZCUmRWN3J2T0EvTkdVYkRmcE1Rc0lO?=
 =?utf-8?B?THJQUzRvUXNNM2dzMUdGYmU2L1AyT010ekhzdTdFakZNUkREZ3pTKzV2SGdQ?=
 =?utf-8?B?dm0zSGJwSE8zQWJWYm9BOHFadTA2dFp5VXdrWmpnRk9LaElEVUFNOHYxSmVD?=
 =?utf-8?B?ZzdjeWJSZE9hRkpGejRlYU9KbFF0QlBCYjlSQ2h1WUdPdlAxUmloOFpzVURK?=
 =?utf-8?B?NUMzS3Q2Z3hPbVhWZ3BqTHdNK0R5MU5FNjJLM2ZZUStIb3hUYzhIZXVwdUFn?=
 =?utf-8?B?dWxlYk5pQVhJY1oyMElYTEFOS1JPWGpCcEdZMVhVTXczQmNXblVueG1qdUNH?=
 =?utf-8?B?ZWRvTEVlR3F2ekVTRGN2VEp2UG1uVnpTQzBYY2x3bDlCT09seENmaWZNN2Y5?=
 =?utf-8?B?eitZMk05RkJONWZyYU9sUXZyYVNVTm12amFFcWdEajJTbWRFSE5raWhIbkZQ?=
 =?utf-8?B?K2h3NEhvR21XTzRGNXg4U2pPYUJuTysyc081MjRaVVN2WDB4VFFqdUs4SVBO?=
 =?utf-8?B?bDVjRUJrclBtRGVJbjZrOHdnRXVYRjcraEIrNk9SRStJNTRjakhtbFlxTDM3?=
 =?utf-8?B?VjB1MDNmOTYzdDFCUHBRUzJ5U1RBMEplemFBd09VcnNpelpEUXZQa0VWbHJ5?=
 =?utf-8?B?UlI5RFhGZ2hBWUpobFROWmJIRVdtNHRQU3hxVGJIRE9NNkljRHU4Z0dsWG8y?=
 =?utf-8?B?bG5QMnJ6a05Xc0ErekVvZlVmMTcvcDZSY1FqcHA0YXJHa3IyanN6OE0zd1I5?=
 =?utf-8?B?TkdVenp4cUVHL250OG9BcjlaWGU3M2Y3QWxxcEdYNXRCZGQ4Q25hM0tVR0Zv?=
 =?utf-8?B?d1p2aWFDWWFHS0tOK0x4cDNwYjE1TVJiY2NoTm9jRExrQ1gwbTlkbng1V1ZE?=
 =?utf-8?B?TUxtcWJzeFYvcXk4ZVk5MHJHMFJaVmxvKzYyRVpScFBqRHp2RTNxZEkvcDQx?=
 =?utf-8?B?d3JoVnRWQUU4OStRRTYybnBDMm0wMXgrZ2RhQS9DcURrUjI4Y3c5TXBBRDl0?=
 =?utf-8?B?K3BMTjZ4bDRzTUJYM1ExYUZFQ2VNSnc2MTREeldpejZqVzN3enRxdURidzZo?=
 =?utf-8?B?ZVZRc1BLaW9OT3hEZ0cyblhmTENxRjVxb0RCdGtKYUdzVm82dys3N0NTaWNt?=
 =?utf-8?B?aTJIUUNoakxYYjNnZUV1MXI5emtHNGdGbXJQZG9jemhVOXNTOUExdFZqVEhL?=
 =?utf-8?B?L3RiMzk2YTFpSlpaWDA2ZUFERWdHZ0xmeEphVUlDYXFWejZ6V3NHMUFaT1pQ?=
 =?utf-8?B?RFlDZkNaeU5zMDNJbGMzYlE2NE9wWmJQTXhvelp1dnREUWM4Y2V0LzlteDh5?=
 =?utf-8?B?YTNCUldvcG0weHRraTZab01kRGRMbWhySVl4QjJCajJJMkNYS1pjWGk5RS9o?=
 =?utf-8?B?VE92cnpVakM2SS9vRzYzczlBUjZsQVFhaUg1Q0NoTm1zbHUwRFhpVVpvaHhm?=
 =?utf-8?B?YmZIaDdXZjJUbUNYd3JTa1h5UjJDZHRTSTNmeHprU1RncUNzdEI0czZrU1Jp?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ba613e3-dd78-4e85-9c5c-08dce1fbcd04
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2024 09:31:17.5976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rap99aGhCowwn/m+ocSn7o9F58TY8orZIg/rGvVeaxvqypdTX22cCVnrgrCtG2fEAa+dF0FsnUqgMmHshP9rW4QDVKOG+Wh64kyRG1lfZtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6213
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


On 9/30/2024 10:05 PM, Ankit Nautiyal wrote:
> This patch series attempts to implement basic support
> for Ultrajoiner functionality.
>
> Rev6:
> -Upgrade the debugfs functionality to enable the joining of a
> specified number of pipes.
> -Modify the display helpers reliant on the pipe joiner mechanism
> to use number of pipes joined, instead of joiner flag.
> -Checkpatch fixes.
>
> Rev7:
> -Use struct intel_display, minor refactoring, and rebase.
>
> Rev8:
> -Address comments from Ville.
> -Simplified debugfs for forcing joiner, and added option to disable
> joiner.
> -Modified the ultra/bigjoiner helpers as suggested by Ville.
> -Split few of the bigger patches as suggested.
>
> Rev9:
> Rebase
>
> Rev10:
> -Rebase
> -Fix enable_joined_pipes as suggested by Ville, to avoid propagate
> is_ultrajoiner.
> -Enhance the mask to iterate over joiner pipes, as suggested by Ville.
>
> Rev11:
> -Address review comments from Ville
> -Split changes to dsc helpers to separate patches
>
> Rev12:
> -Move 'Refactor enable_joiner_pipes' earlier than 'Implement hw state
> readout and checks for ultrajoiner'.
> -Few improvements as suggested in review comments.
> -Use --patience for Patch #8 "drm/i915/display: Refactor
> enable_joiner_pipes"
>
> Rev13:
> -Refactor get_max_compressed_bpp_with_joiner and split changes into 3
> patches.
>
> Rev14:
> -Fix issues in patches#11~13 for num_joined_pipes = 1.
>
> Rev15:
> -Rebase
>
> Ankit Nautiyal (8):
>    drm/i915: Split current joiner hw state readout
>    drm/i915/display: Add macro HAS_ULTRAJOINER()
>    drm/i915/display: Refactor enable_joiner_pipes
>    drm/i915/dp: Refactor joiner max_bpp calculations into separate
>      functions
>    drm/i915/dp: Use num_joined_pipes in bigjoiner_bw_max_bpp
>    drm/i915/dp: Modify compressed bpp limitations for ultrajoiner
>    drm/i915/display: Consider ultrajoiner for computing maxdotclock
>    drm/i915/intel_dp: Add support for forcing ultrajoiner
>
> Stanislav Lisovskiy (5):
>    drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity
>      checks
>    drm/i915: Implement hw state readout and checks for ultrajoiner
>    drm/i915/display/vdsc: Add ultrajoiner support with DSC
>    drm/i915/dp: Simplify helper to get slice count with joiner
>    drm/i915: Compute config and mode valid changes for ultrajoiner


Thanks for the reviews, patches pushed to drm-intel-next.

Regards,

Ankit

>
>   drivers/gpu/drm/i915/display/intel_display.c  | 320 +++++++++++++++---
>   drivers/gpu/drm/i915/display/intel_display.h  |   3 +
>   .../drm/i915/display/intel_display_debugfs.c  |   8 +
>   .../drm/i915/display/intel_display_device.h   |   3 +
>   drivers/gpu/drm/i915/display/intel_dp.c       | 106 ++++--
>   drivers/gpu/drm/i915/display/intel_vdsc.c     |  11 +-
>   .../gpu/drm/i915/display/intel_vdsc_regs.h    |   2 +
>   7 files changed, 372 insertions(+), 81 deletions(-)
>
