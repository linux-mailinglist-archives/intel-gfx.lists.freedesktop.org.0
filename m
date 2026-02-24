Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KkrNY0VnWkGMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:05:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B581181463
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CCE910E48D;
	Tue, 24 Feb 2026 03:05:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CkGSuaGc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F43510E144;
 Tue, 24 Feb 2026 03:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771902345; x=1803438345;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AyirCb7PkidzK7T672+FQqTZZXVgKkYeZZEQ/lGr7wg=;
 b=CkGSuaGcO5k/MSoppz7epHI9nCYtcgZJeYGsacHiHVpQmNO73gHTB8KF
 jQVWMq+FumcrRrl4oS5MX9OI+Bdx/XXjQXZScye6/ka6KNPG6bDle5xxx
 zjVGEjLOPknboQG1IlGahO0gmAjz7RfUv//F8PaI6mWDdGJDEfRItoNI7
 EOd/PcuIb93q5WtRrGSdPcn9p+/DrQgSrZluWD321Ycqs4XigHfoXQHvK
 oU/hxw2DusGv2QZ5XPn3yQxKuisPfUOt2jsZCTFH6+UG2ILjSXdd9xPkv
 FfiSx3yo4cT6ZXT15CxqyjfNz3ZjHa1JpzxzKj/t8aj/9xjfbquUvXz8I Q==;
X-CSE-ConnectionGUID: s+YoctWhTleD6VO9zeLOTg==
X-CSE-MsgGUID: jHblrkbtReW0FtUMFA2ytw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="73091889"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="73091889"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:05:45 -0800
X-CSE-ConnectionGUID: w8yKOBMjQqacZzYNepej4Q==
X-CSE-MsgGUID: +8tHwMfwRFag9YUtLEsfwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="214855941"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:05:45 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 19:05:44 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 19:05:44 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.70) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 19:05:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BE5o9LeNhLj1sJ/21d3eBo2/wB+EgjGm+a1ltTP3NR8dEvvAN2zSGRysUpAnC2QZAQEHYZdGgGrSQum5AOPONFlW/QarDb6/3w28DgMupN0Dmronph7PNza0PT8GwtFDa6hxUvZtC7AV+yusgu+QsLaiNEjiCx4wUjoh6T6wEIAHKJ0w0yt+NhAf+iIknu5pnOx8DACfzcDxq2UvwuVGu5tFAGQhC5+qLnZCfcRPiML8UU1WxeQQSfbaZRmSSwIeaF1kiVzUhaDNOLtNaf+O3mqgbunJR/HKUPfe3R/3ZCOw4DTFAn0WVoZZQpbzoUograN/liUZXyZ9Lm8wIvWWKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C9Ie+rHAw043HnUnIIMpnYdqnymqUrniNF6GnBUDsC0=;
 b=s9m5wmMXws3iLrXp2hpgAufYqJtLn6bnOHvymwjjY3h2QiGZQIv1VgOqb8KHbzVuymzHMfxTOeleeg5AA5bi80gSCX+BxM8KGbAkXUAjV3L93sMD6NBAbbBIjgyi/xZBf1TY/Bco0p4UgGjtcf7gEiC12MdSOUOYbzIMIMTW1TDeM4JdZ5PZze4q7TpIRwewOnzD9N+vCQxaHF4c+X8/6UQlxc0zQQF8WSuj4LE+UjCpjBeCxZqQGeB5fRPEujH1Gm3H3B0+MwA+LdVGvEsjyrAplgyw1GfQNsyA9AG2k0ul3wgQO+ssuOQgX81Vhg85k85kgV9hnrA+UaNDjCIHvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB7966.namprd11.prod.outlook.com (2603:10b6:510:25d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 03:05:37 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 03:05:37 +0000
Message-ID: <9191bad3-fc90-4524-831d-ef6f62123f75@intel.com>
Date: Tue, 24 Feb 2026 08:35:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] drm/i915/backlight: Provide clear description on how
 backlight level is controlled
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-8-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20260220050217.2453681-8-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0097.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d4::12) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|PH8PR11MB7966:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c760be8-b670-4bb6-89ec-08de73519536
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VG8yOFpLaFQ4eWY0V1pNN2RmU2o0NUczYmp5RVVOdE4zSmo4aTZqR0lDQ0VM?=
 =?utf-8?B?S0kyMnhIS0pDcmQ2dEtxaURDSkJmdFlsVG9BTmhIYkdTTytUMHA1R2d3ZG5M?=
 =?utf-8?B?VklCUjV4TVRycHA4NVlKamVIMnVRT3VDaGliREIxZ0NCR0krb1oxbmNJMVRZ?=
 =?utf-8?B?dnNlNm93VGsrQ3NZL1JhdXNUNUVJTGw3Uk1IWHZteERBRm9oYUpWS0RUSnlW?=
 =?utf-8?B?UGRZeWNFc2dOdDdNMUJtN3RyaE9CVEV0cXJEdExzdTdFemdlNEVDTGl1NTJa?=
 =?utf-8?B?eStId1VLVVJqNks4NTk1SE80cjVtcHlWNGFwOTB1bTVQQzNrTHAwUjVxSUVl?=
 =?utf-8?B?TTlIeWlZVCtnVFo3elltZlBGOFZiSmkxQWVDNk8zcGNEOGFPcHJUSlBGL3h3?=
 =?utf-8?B?bytYeXBZc3NFcWZZVjM0VXNxb3YzbXpQMmtqdFRYeXlsS3BTb215dWMzTnVi?=
 =?utf-8?B?VDc5SkIxT1R6ekp3eGJMeUFOQkJLWnFIeUMyM0NVNG9naE1CajZFRHVNWWFG?=
 =?utf-8?B?bUFlUVB5aExXOGd5czRGMUVJa2c5YkRKWWlYZzg3elA0MnZWdFVYcERqUEV2?=
 =?utf-8?B?Q1dXWWhBZ2h4V0NwTzdwcDNqZDNDVDEvYUQ0Y3A0Zy9OMVN6MWNKNnBTQkZq?=
 =?utf-8?B?V201UFJpRUt1OXFESHY1MVVjVVJESTdZcDFBem5TMGhUdHY2YVpQbWdIUi9r?=
 =?utf-8?B?NzNhcEZlOG1GQjQ0U01yY3l2N09MUDd0cUI3dytsZ05NM3lJN2xvSkd1ZktJ?=
 =?utf-8?B?d1RRMytDbm5VVjFWSW04SkFPeDZxTDZBN3Y0SDUyNmRvNHgxdXlseUtJeDUv?=
 =?utf-8?B?TWZ0Vm1CTXJNallhYmdiaW52WnBJVW1jNnpTYjIrcVhWS3hHbzd4cnNnRlJZ?=
 =?utf-8?B?VE1vUXRrL1c4UjNTeEpBZ1FvQ1cwWlRwMVVCTzFQMzRSdVFKVWtrRHliVXAy?=
 =?utf-8?B?YlhyV1YxV3liZUtDNXBuV2dWdFB2UlpSeDZaT1hLMU5wcFdXRTdWbDJLengr?=
 =?utf-8?B?Y0RtWk5OVU5yaWo1a3JyM3MvLzB5YUp1anJIelFEbHpzclptVE55eitYYTBn?=
 =?utf-8?B?ckhjeUxMT1A2Vy92dHZ4UXppZXR4Vlo4VXcxdG9FQXJhdDFFakw2TlpMbHVY?=
 =?utf-8?B?VEdPNVI4YkhwMC9vdmJwSUVwS3ZyTnQyVVpEMkpwV1Erd1pXMThNdkF1VEx0?=
 =?utf-8?B?UGxkeS9WZjBGNzE5dUIyWkk5ZFBZMWZYSjdNUWMvbWRLejZtRXlqWjd6Ym5N?=
 =?utf-8?B?eFM2dE10bnJwQmxoSG1ZaEZIY3ZGbFVQc1N4VXhsTjhuMkFyUEg2djNvaUNN?=
 =?utf-8?B?QWo0Y1VlL2RvWFd5bHkvc3M0dTRkelVKelI5ejYxTUM5NXhORi9INkhPRzdZ?=
 =?utf-8?B?MnRmNWlNVUxnSjZjWitQK08xQlFmMG5ObGRoNnlVci80ZXdFRHU5RUt0ZFZW?=
 =?utf-8?B?QU9MeTJqSTBPWUN1NGgyQ0JwRXAwTDhNdWt1Y3pVOGZWM3dxdFdYSjhCY3Rj?=
 =?utf-8?B?NXdvZ01OamxkYk1PTWdUZUQ1bE4rbTBsajZpVjIyMGVreTIvMzFkc29nZmc0?=
 =?utf-8?B?Q2VOK0lGUDJSNERLejJjVitvYzRjN3c1SllFMFNZSVdLL3dGSWxIK2cyQ0pW?=
 =?utf-8?B?T2U5ZEhYeGZOUndsVy9EeXorZmZubFZkOU5VUkJ2N1lnZEdKdGZPMTVLdTU2?=
 =?utf-8?B?Q2lwdWRNejgzdVJOcDZCSHFMK1k4d1RBRCszT2NrT0NRYjkwdHVCZDM3R28w?=
 =?utf-8?B?eExJaGVDLzBuditBV2IybkJBcWk0T0hyMlVNWXNzR3NMZkZmVnZreU5XOHRi?=
 =?utf-8?B?cEY2Z05nVUJ2QkVBQmRwRnJDdzc2bW94ak8vRlBwaWtlbzh5eUYrUmtaeERa?=
 =?utf-8?B?NEdGZVZvWE8zZHFYakF4R3I0UHNhY1YvV0EwV3N4M250dkhYTnhxSjZ5SEpQ?=
 =?utf-8?B?OVMyeC8wNFI2d1hKQkI5aGpNNXNmN0NxemxtaDhLTzV5K09wNDMzRWtWbFBD?=
 =?utf-8?B?RnJXbG13MitPdHVTU00xQWtseTcvYVNkOXdzTnFQWHJiNHhzQk9TSEM1Qkhs?=
 =?utf-8?B?WTh6SGgzd1EzTlZxNXZIK0hkUnhQai9LcEd3d0c1S2lqSS96N3p4YVk3emU1?=
 =?utf-8?Q?Yoe0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1hkeVZ5cGNxM0lvcmFWWW9PNzZHWHkvT0RqQWIzMXN5T3lIczdNMHFnajZu?=
 =?utf-8?B?UTJ3bkNJeFh5MUI0M3RzWmw2MlhyOGFSZk1wSWsrY2JsMmlvdEdoazk2ZGcy?=
 =?utf-8?B?UWg3a3QwaHdUR0JPUUE5UmU3T2xpN2Qxa21tMTBubG9TK2xSMVc0SXFFMyto?=
 =?utf-8?B?OFRBZnlBZVM4RUZhUVd1bU1LbnJKWCtxdDVrckJ4a0ZDSVRWK2NuT3NodWF6?=
 =?utf-8?B?ZWFncE0va2FtZ01XeHZhVUtVTC9aUVhmSC80QlZreWJkY1hJZG5IR25JQ3I3?=
 =?utf-8?B?ai90SnJyNzZDRURyQkVlQVdvTlBOT2RzTFd4UTBhSUFhN0JiNlhkL042b08r?=
 =?utf-8?B?NW41WHl2aVoxWFNZTjVXcVJJNXcwWDJFYlMrU2EwbXFvUFZzWUZVeG1FYTg5?=
 =?utf-8?B?NEl4QkxZZjVKQW9tQ1hPZVIxNFF5bXVhVnErbmc5ZWV4MGZrVGlJd1dxWUV3?=
 =?utf-8?B?WGx6d2NMaUQwa1BGZm9JdWdXVSsxWnR6djVJNjlBS0U1dzV1S3BxbGdCdnVL?=
 =?utf-8?B?YXlDQUhOMXQ4VFdNN0lZSFR3QUtldHRmV2ZNZXhoRzJMRFl3a2hlbjhtOGky?=
 =?utf-8?B?NEdIaFpvRFlCenBTQkRzbGwzTHc2UjRWVjlRWHZjUTRveWZVN2dsMENnd0NV?=
 =?utf-8?B?M2ZITXdUTTR6bUh3YVk5cjJaclE3ODZ5cEYxbWFjWERwWTBwaHVxR29acVJl?=
 =?utf-8?B?TS8zZDVveFVKL0tPUHdibW84M3A2Q2E4OXdxQ1UxY2pPYWpQVitZTURnMllS?=
 =?utf-8?B?QmhSY0QxcWRpL2xTTUFsVG81ZUVmRXp2VWtUaEtEdHRCNEZxQ1pkd05DNU9m?=
 =?utf-8?B?VjJaK2lKQUFia05mQmJRRmRFMXpDVmQySzRMZHQ4dlgvVDlXdU96YW5pSXpp?=
 =?utf-8?B?eENDVFZ5K21LWG4yN2xHaCtIZ2NVTFNkcTYyeHBqSkJSS1RYc2E0VVRiM25s?=
 =?utf-8?B?WitldFV3VElvQlltWlhQQ1cwelFFUjZta29JbjN5NFBIVzJBNjRZdCtvNUVt?=
 =?utf-8?B?ejNFWk5HS1ltUmxPdGpaWkFDNlBMSSsxdDd2NDNMb3V1Tjh4NEJxQUxsQzFh?=
 =?utf-8?B?MlppMXA2WHRuellCSXQ3cjNZUUlHYksxTFJ6NDVWMnRlVXlPU1ZPOVUxTXAw?=
 =?utf-8?B?QmhwTGdOWDkrN2REdnoxNWJHN2lEdW5qVGhQYkhlUlVPNVVjcFRWSGN1SzZ4?=
 =?utf-8?B?TmZ4K3lwWW1MMDM0TUlnM0hzZFBVOVJKaWUrTXo3S04ra3gzZ0w0YXhyZ2dH?=
 =?utf-8?B?K2g4T3hJbEhMRkJWOXk5SmsxRE03cVlvZnFFUnh1OWJEQVNWUy83SWpEU01J?=
 =?utf-8?B?NEdhaFEvd3VFYTdHT05RbFRONEVzWWJpbVU3OFMrWElmRDRFZUJUTGlVczVJ?=
 =?utf-8?B?b21hVVltL0RNd3pyZy9xMytDZUVKNzBRLzVFN0JnZ2dVTy83dFpSM0tpT0hp?=
 =?utf-8?B?eGJYeEM4WlBjTUlpQkYzQmtmUzI0SE9yYi9ERkdaYW9rV2hZd2ZOZWlLZnJj?=
 =?utf-8?B?MkFKem55cE1EU0lFcUc1U1BsNkF2d3p2Q1lwWWU1dWVqaGxhNm5MTjErMHpI?=
 =?utf-8?B?MjhDL001cEV6MENQTzE4TTBJUUEwS3NtOGtoWG1OWkFxUE5MZE5zbXp5TDk2?=
 =?utf-8?B?WXo1L0w1Wkg1VDBQWjNuVDhWSGJHcG5ITXkrd0paSUxBYk54Mm94OXdxZWdx?=
 =?utf-8?B?S1JlaVVQVVQzMGh3TTZReC9pa2M4eXhsTjRueW5mWkR4MFRpS0dhVXJhN0hl?=
 =?utf-8?B?a0FsNmdXQ3ZBL0U5VEYyaFArVE41TGN2Smx1c3ZDdTd5VlNNOFZ2d0RSM01O?=
 =?utf-8?B?cWJjRDQzQzRwaEdYRU5mN2pFVHZ0NjNDV0t2YXpwTm5JaU9aWHZFcHhoUVZY?=
 =?utf-8?B?VXFpNXZ6NmYzbzZZcytrMmVBQUNNUXdPTDRCQ2dDa1RpdkRvYUN0TG5hQ2tT?=
 =?utf-8?B?MThtMU9Tei8rekVXdE9DZk9UcTlkNlZWc0t5VlByYW5kQm5IZE02Ty9DeU00?=
 =?utf-8?B?aithZ1N6VmRZRis4MjRkNUw2Zyt5OGZqUjFSSE1tU3E3Zy9TVDY0dk1ucDZw?=
 =?utf-8?B?OW1WV2pzZzUwci84Y0VCY0dEcTQ0T3YvZzRiYzB1dmU5UUdBRWdicFBIR0hz?=
 =?utf-8?B?eTRqQzFlb3pibkZLZjcrN29sZ3cvVHQwclo1ZlU1WSsyWThlZDRONXhQWUx1?=
 =?utf-8?B?ZjF1SFYzdnhmbTVIaEdlMDZaQ1F3MmZWTXdQVG81Q0RCdjVtVDliOEFPRG1u?=
 =?utf-8?B?L2Y1YXhzTUJKYzVSOVRPbXo4SVNvcjZ2TDRCTGNYTlZDczZiWkwrMFNLWEQw?=
 =?utf-8?B?U2l5bEpRcFZhVENjb0l4SlM5RE5HMmdrT2Y2dGZtSXB1UmtCWGRRZXNCY3JM?=
 =?utf-8?Q?N6WPl/tEyYnkGlzE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c760be8-b670-4bb6-89ec-08de73519536
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 03:05:36.9555 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zng5SSvH1ex2Gvp0RHYjEsyubkrNfb+McsjC7D0ewsLX8d2c673jtQsaRvasyenxXi0vlmYodYeHMOrS5LnREg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7966
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4B581181463
X-Rspamd-Action: no action

On 20-02-2026 10:32, Suraj Kandpal wrote:
> Currently it takes us multiple log prints to arrive at the conclusion
> on how we are actually controlling backlight level. Make the logging
> concise.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_dp_aux_backlight.c | 19 ++++++++++++++-----
>   1 file changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 043c9aef2ea6..aac6cdb5b69b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -368,6 +368,16 @@ static const char *dpcd_vs_pwm_str(bool aux)
>   	return aux ? "DPCD" : "PWM";
>   }
>   
> +static const char *backlight_unit_str(struct intel_panel *panel)
> +{
> +	if (panel->backlight.edp.vesa.info.luminance_set)
> +		return "NITS";
> +	else if (panel->backlight.edp.vesa.info.aux_set)
> +		return "Brightness %";
Should this be AUX Brightness?
So that it calls out its AUX based DPCD backlight control.
> +	else
> +		return "PWM";
> +}
> +
>   static void
>   intel_dp_aux_write_panel_luminance_override(struct intel_connector *connector)
>   {
> @@ -542,9 +552,11 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>   		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_enable ||
>   				    panel->backlight.edp.vesa.info.luminance_set));
>   	drm_dbg_kms(display->drm,
> -		    "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s\n",
> +		    "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s using %s values\n",
>   		    connector->base.base.id, connector->base.name,
> -		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_set));
> +		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_set ||
> +				    panel->backlight.edp.vesa.info.luminance_set),
> +		    backlight_unit_str(panel));
>   
>   	if (!panel->backlight.edp.vesa.info.aux_set ||
>   	    !panel->backlight.edp.vesa.info.aux_enable) {
> @@ -569,9 +581,6 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>   		panel->backlight.enabled = panel->backlight.level != 0;
>   		if (!panel->backlight.level)
>   			panel->backlight.level = panel->backlight.max;
> -		drm_dbg_kms(display->drm,
> -			    "[CONNECTOR:%d:%s] AUX VESA Nits backlight level is controlled through DPCD\n",
> -			    connector->base.base.id, connector->base.name);
>   	} else if (panel->backlight.edp.vesa.info.aux_set) {
>   		panel->backlight.max = panel->backlight.edp.vesa.info.max;
>   		panel->backlight.min = 0;
