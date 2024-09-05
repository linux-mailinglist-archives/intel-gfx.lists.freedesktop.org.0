Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CF196CF30
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 08:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ECFD10E6DD;
	Thu,  5 Sep 2024 06:26:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F1qDrLhU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2F2810E6DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 06:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725517590; x=1757053590;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tr+/tfD6KhQx3L8409cuc7ZQm1bKaUKF9AO257lZmDE=;
 b=F1qDrLhUCaW595zHr0z762TvTl4WoY+cAyr4iO1J9Z/q140VJVJFvORT
 y+9EEbHLm/2mdMdibxBxU6GOru9X8CJhImwhXXe8DAUvpCDni883UMzrZ
 KYz7FGZbUFKmgHTHS7BAsxxh/+l9VMv7bhkrPEb2SwKJ7Bm7a+Ea4/ozX
 FY4fPbyrpuFmTPnlLJSkfvNwV21uIOunVYcBE6LVnVSvaTqlgZAEB3MTZ
 ovKOweC30EAeDjyo0M1L3i/zeEJi1X8MnbUPlL29Ac5n4jV5vXiVIAv01
 DzSDXGjKPKWcqjl6w/UcYo+I2IA6vKsEa5avVLOtEfh0lqINQlKOAtxf/ A==;
X-CSE-ConnectionGUID: 3cddL7uhQrKTAHpfxXCerg==
X-CSE-MsgGUID: DtInapmdTnSecQ++1WPaSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="28003765"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="28003765"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 23:26:30 -0700
X-CSE-ConnectionGUID: o4cSoXUNSiGIQ4fmUXWxwQ==
X-CSE-MsgGUID: uM7PUme6SHSHkIke2/DphQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="66039203"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 23:26:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 23:26:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 23:26:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 23:26:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 23:26:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZA03bEHzZoAFTs9G9Oz9A7vPOb2umcGq0sySOCAjM1gibEUnqLLFU2svgA07Pnjwmsf0qQy31fbxGjlyGR4ZoqX5Ps63zEtV7T/RB1S20MESpPSQcAzxMOl5p8GN0F9CC09OKUl4AIrQV8vkX7Bm6UNAw5xVE2Y8amTvpOAawjjE47BEZRL8YuhQx35J70XnLq/XY1cCoAALo3GZq7s4ADwsuwRhge0+sIs/9d3g99Olyo490Z7ZEt2WPU3WGvet5CUjfbZ9xa2OwbgeonuBbysLqK+0g8XMN8LwNGkHSVzd2F+nnWr0FgVdf199pc4FvemAsLxxS8RLxgkVrE8kog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bjUexXEqRI9eaw+mYeEKZaZNtRviqSiFvy8q7rxog0c=;
 b=E/KscREd763PsWMIzzTUrV3k7JH2vCgTSaDSBoxzMfNNRMqWXGOUqRMsQAmjDzn8l8Iy+goU1t9biaq5FfILecSbiaUPIpeNKcYT+RHv/WVValeOEAbcT0SiHOs3TBZSze2FGZA3fQ6iqcy0hQdtMEpIg8KEiZltakiVMBkvw7jGtGsqedtSLobIb+/cmkHFD1YY7pibwtYfwDLkrbHC9zprw2eeCVGQ9vtqAPmEjdb0vRM3Qh60cilekekmYQCuUBe4O8D+/EU22VLJyD2kqtJAr1GcUNI9sj77NkXoIvX8k8Nc8gR6hzwepge51Z5RiKcQjRh2702lq77YN2DtNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SA0PR11MB4687.namprd11.prod.outlook.com (2603:10b6:806:96::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 06:26:26 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 06:26:26 +0000
Message-ID: <07c01d49-aa9c-429e-bd4d-65cf2648329e@intel.com>
Date: Thu, 5 Sep 2024 11:56:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/hwmon: expose package temperature
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <tursulin@ursulin.net>, <linux@roeck-us.net>, <andi.shyti@linux.intel.com>,
 <andriy.shevchenko@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <linux-hwmon@vger.kernel.org>,
 <anshuman.gupta@intel.com>, <riana.tauro@intel.com>,
 <ashutosh.dixit@intel.com>, <karthik.poosa@intel.com>
References: <20240828044512.2710381-1-raag.jadav@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20240828044512.2710381-1-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::19) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SA0PR11MB4687:EE_
X-MS-Office365-Filtering-Correlation-Id: 26ef25a2-2fba-4293-1d39-08dccd73ab82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WVdrc2l2cHR0OHArUjBUM2xHcndqcWdoVWVYK0ExNmpvK1lkUXV6MU15ZnF0?=
 =?utf-8?B?MU90bjY3eDRSdWcxMjZJZ3ZuTld0cmkxd0lQYWJ3d1UraFlBZ2NyQjFDRWZY?=
 =?utf-8?B?TkNoRDVuR3ROR01Va1dXS3owdU9Rby8ycHp3cTBqS1BiUDNkc2pMTC9JOG1C?=
 =?utf-8?B?dkFRc000YWIybDBma1dPMUg1ZnpBWXpINXN0MUYyTUovSXd4eXlhaXQzQTN1?=
 =?utf-8?B?Szk5dmpGY0Fja3liZmN4NTc1cU5zakJtQTh2YndQdGZsQmJBUWZHeEl3cG5w?=
 =?utf-8?B?Z3U2WlpXbWhhQzN2MDNmQ1QzY09Hemd2ZittWDJud2dYeWZHU2RjTGp1MkVp?=
 =?utf-8?B?SXRXNDZJdVdaK0ZuNXlkTVBIVzdEWjU2NTlBYTVjRHYvYnFEK1VoZEhXMzM2?=
 =?utf-8?B?ZFFYZ0NVN3RDR1Z0MlRUbmNNOWs2NWE3VkJicitvL0t6b1p0bWNBNEc4TmpP?=
 =?utf-8?B?OHZpcE4rZm1oVGtNY3llK3VsU3lHVFUxd0ZKblcydTFWbEkxNDdwTmNMWXpv?=
 =?utf-8?B?TzJmekdvK2h2eFlJblhXcm5Ca1ZpcEh5dWNYTTgxeWNCSVFhdjFNR1VMcUFz?=
 =?utf-8?B?UHpaMWxIWlczNzlxWVZONkRGMEFMN2VPUDAxeEdGbDZ3K3I1ZC8zcGYyMFZa?=
 =?utf-8?B?TmdVUXVmamhLVVhieG5leHBjd0NwMS9GZE45ZUMxNDEvZWs2NUlrWUdHOElo?=
 =?utf-8?B?MnpncW1ydkZTb0l0QTlmcHAxdVQycVppS3NVZnFJbUQyR1NINVdvbHdaNjBn?=
 =?utf-8?B?UEhROEhhbHZ0WlZWS2J6OGxQempBZWlRanFFbHB1V25jeDZQeEN1a1A4VE5C?=
 =?utf-8?B?ZW1DUG9WOW9yYmxLTWNhcWxyOXpnVkZTbHZxWm5LWERvL3hRR1VvemhzS3J4?=
 =?utf-8?B?Tm1meTNvQmZyTnBndlU3c3VKUWtyRUF6MVoxU3pJNTZYdzcvL0RQVnZnK3JO?=
 =?utf-8?B?VklMY2hWMmpSZFU2YWY2L0ptTkg5WnBTOE53cnF6bm5FS0tuZ1ZvblAxc04x?=
 =?utf-8?B?aDNnSG9DNUlxazUwbTRUMzRrVmNMRWtpQnRVN0xIQS9idWtvQ1BGcHBSdGZQ?=
 =?utf-8?B?M25WSU9nSjZZOW9QU0l3dDU4L1I1cHlPZXhVVWluaDkvSEFhVVExVVR3YUFQ?=
 =?utf-8?B?czJpSVdQR1c1QllHRDg5V1JQTHFVanp1WThXRHhUNDJjWEJxNTRJS3dwQ2hP?=
 =?utf-8?B?VHoycHU0TXp5NENiVWJIQkxhREtzem0xQ3JrRjVPcTZnTElqYm44NUNZYnJU?=
 =?utf-8?B?NnQrQ3FYNmt5Nmk4YmpuZ2RVZWwyeEdTd3laOEh5QVNBcFhFeVVpQlQzR1Rr?=
 =?utf-8?B?ZExMQ2RZNXFPZld0VWg2aVZrS3UydCtIT2tFcHNqL3RjRFBpMGZiVlpuQkV4?=
 =?utf-8?B?OS9adkZPMkgyWWx6alBIams5NkhpUFBDamxpbVV4eUU5d3ZNTU1oRHAvR3N1?=
 =?utf-8?B?MW5BTk9XQTlXMWlYQ1E4dTNFemZ3blVIRGluNmd6WldyWlRzR3oyTHFOTGk4?=
 =?utf-8?B?czBxdW1zb0doMm9odHFVWldvRDZxU1kzeFRJcjI3c1RJZDM0LzE4dVhMR1kz?=
 =?utf-8?B?Y3JEQXFPUDhCWm9MMWI4azdqRHpkbnhXc1RTRHVDY1J2dDB1TWVZYnl5aXcw?=
 =?utf-8?B?elRDODBqK3VMZElqSHNHeG5FclFCeVUrOHlxWEk3SEtwdG5JWVlTNjdMNlph?=
 =?utf-8?B?Q3NEQmJqM3RXdHRxQlVSenZCN2txaDVpK3ZyRmtxQ2V1UUNsakxSdEdTRGE3?=
 =?utf-8?Q?T19Ci3Jvv6iUJJPSE8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1ptWGhZdFZIUDlSK2FKZjduRUxTM1lmSVVmZFd6cWttcytZNzlucStCTFF4?=
 =?utf-8?B?bzNKTkFiME43L1A5ZEpNVDhoRjZDUHgyd0daWFp4TW4vK1ZBTEs0ZVpUaW9E?=
 =?utf-8?B?TzVEK09kL083eVhhNFZsbFV6dEFlRHcrdkx5UXdUMTBNV0Ixa3l4SEpyb281?=
 =?utf-8?B?Zmh0WlIyeURaeTNYRlpPQVdJY014aFgzMnJsWTdXUlhGZytrVFhTWk9wTllR?=
 =?utf-8?B?RHh0bUhuclNqUWIzMEVrdHduZjk4dmhpckFjRitXUXAzSWNKSkZaTGduV3VL?=
 =?utf-8?B?MmhTejU0WVNoZ20vdEVEL1ZuTktOSW13MnVOeVhkSnN6TkxyMVNpMDFEMHda?=
 =?utf-8?B?azE2SURGeCtiZEhtQWFmUkZlMGROR1U1UDlyKzA2THlwd2RTYVNQZUI3K09S?=
 =?utf-8?B?dHl4YmVaK1pVSFdGdG95cWcrVjVCTFlBZzdXdXNxYWhNVncrWm91Nnhha1Vx?=
 =?utf-8?B?UHVFc0NuVkRVRjNoakVucUo3NjIvazFFVExzaHpFbExHeDRjZ3RuamRmemhR?=
 =?utf-8?B?VHFrMEprNjJQV1pKeHFnTzV0dUlvdVM5UWhSTWVQOGFwREYvc2ZXdmo5blRm?=
 =?utf-8?B?QnhJNE1ENFk1Q3NIcDU1RGJ5d2EyWk9MQnoxRzExU1hHdjhDemRrQ0ZBcDE4?=
 =?utf-8?B?UTFoa2hOVXM2endBWnYrcFE0aWxCOFJVdFE4OWh3OEk2WEF3ZHpIb09iUEF1?=
 =?utf-8?B?NVFGN3k5MGxqU1ZwZk1kcjh5VWRCYlRWeGtHaU5qTTE1WHAwVXdjTEhiczli?=
 =?utf-8?B?aWJteVo0bzFUUlRiQjVVaXRtSTRhVmJ3eXdDVkplVG9HSDY0QWQySUpBK01C?=
 =?utf-8?B?NkNBU3oyTWhMcGgycnRTVFRUSXZZMmRINGtaWnNOYVBIQ0R3ODFNOTdVTGNt?=
 =?utf-8?B?TXhQNStFckZFS1NZMStMQ2pSbFZYQnNyU09KYnNGZ2ZNTXJSQjRSYUsrRURP?=
 =?utf-8?B?bjE3bU1LbTlsVDV2eXRsT29DNnBKUnh3d3IyRkhPL0U5MmdrVDFVUnBFTzJP?=
 =?utf-8?B?cjA1UFF0ZUhmOEk2NitacjBkaE50bTkvMEJSaTIvb1JLUVowd3loT2p3K1kr?=
 =?utf-8?B?Tnd3ZEI3dWhHMDRMWUhLMUM1THdUK3lIMEVrRCtPTlc3cGozWFBVeG9RcFlP?=
 =?utf-8?B?M3lOWHBHQzY3TGxRNWF6eXoydTVrT3J2TVQ0TERjU3FnQ2RQQ2tyT3FHZFhE?=
 =?utf-8?B?Vy9LbnBFY2RNdGpkaXE1MU5XY2grTkxUMlY0anJ0aGRCNTlubTdMUEpWc084?=
 =?utf-8?B?YXJmempyWmFhVFlxVlI1QnUwWm01RFhyV1M2WDd4am9EQU1XQzl5NXpQWkhS?=
 =?utf-8?B?MzRzZ3FNcmhDa0d0NTZ4ejFvZ0pMSC9zeFpxUDdTazM3ZGdlSWNvYktVcFdU?=
 =?utf-8?B?NENlMy9YTzNndHdjK2tEVVZrTll5Tk5BQmViUU5talpIQmM4bDh2bkZENEor?=
 =?utf-8?B?TzZyRHhlajROVlJpTnpHeWkrazV6bUFSNkVPYnBJVStVVUMzL1pzejhjUVJw?=
 =?utf-8?B?MG1mVVE4aVBkWjN5ZlIyaDJRdHNnU1QvUVhVUmRIU0lqTFhLaVM4SFZ6ZTVL?=
 =?utf-8?B?ZnVlNURaelF3TUh5ajc1N3NUMXpaNkd4UDBBUERCOUZNcnBhWjdydHF0eXVG?=
 =?utf-8?B?WUliSHloRkF6YUh0UmU2aVY4MTVVQWowUHphNXh3MWY4VG1lTG1hS25WS1VD?=
 =?utf-8?B?NzQ5NThSdFh6aDh2S3grdHFHMzZWbG1nTDMzazZxdmFGcnVPb1VvNy9yV0M0?=
 =?utf-8?B?RjBkWkZnVGFzZFpXSDliRDFnKzJ6K0JNb3Q4M1NhelgzcXFTbWx3MUR2SmUy?=
 =?utf-8?B?ZE5jSGFoQjJYME8rQzVDRDkrNXBmODVJdWNuQVFldTc4NnZXZ1Y4aEJ5eW9p?=
 =?utf-8?B?VjB1U2ZwbHgxa216WklSVDJFcnp6cSswSlRDTCt5bGtZWkpJSWtjdkNwMzA0?=
 =?utf-8?B?S2h1Z29HTUtVM2tSQXhnQzNzKzVTS2dMTVhhZ1JpSWNDeGhEc0hickFrU1lB?=
 =?utf-8?B?MHp0UGNyWFRWdWM5em5qNXVUcFFHZlVzMmxLYzZKTHdIMmd1OTFTUlBaNno2?=
 =?utf-8?B?QnlNSjN5VmVsYW9ad0hjQ2JMZzJhc0t0bU1ZWGR3eTJEUG1oR2JYZUpEUFRX?=
 =?utf-8?B?bFdrRE52RFJQbmNwM3NmODRQeXRrUW04ampIWmVuRDlBUlhDa1o4SFA0eWl0?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26ef25a2-2fba-4293-1d39-08dccd73ab82
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 06:26:26.6419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ssRNyIvvLCxn17kkwu0rEY2QlVWVcaoXBIIFzn97fuAkNpHtDDnMvAk24hUPeWSJuxagj5rbAUQLYX+G7D3rnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4687
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



On 28-08-2024 10:15, Raag Jadav wrote:
> Add hwmon support for temp1_input attribute, which will expose package
> temperature in millidegree Celsius. With this in place we can monitor
> package temperature using lm-sensors tool.
> 
> $ sensors
> i915-pci-0300
> Adapter: PCI adapter
> in0:         990.00 mV
> fan1:        1260 RPM
> temp1:        +45.0°C
> power1:           N/A  (max =  35.00 W)
> energy1:      12.62 kJ
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>   .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 ++++
>   drivers/gpu/drm/i915/i915_hwmon.c             | 39 +++++++++++++++++++
>   drivers/gpu/drm/i915/intel_mchbar_regs.h      |  4 ++
>   3 files changed, 51 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> index be4141a7522f..a885e5316d02 100644
> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -83,3 +83,11 @@ Contact:	intel-gfx@lists.freedesktop.org
>   Description:	RO. Fan speed of device in RPM.
>   
>   		Only supported for particular Intel i915 graphics platforms.
> +
> +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/temp1_input
> +Date:		November 2024
> +KernelVersion:	6.12
> +Contact:	intel-gfx@lists.freedesktop.org
> +Description:	RO. GPU package temperature in millidegree Celsius.
> +
> +		Only supported for particular Intel i915 graphics platforms.
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 17d30f6b84b0..9f1a2300510b 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -7,6 +7,7 @@
>   #include <linux/hwmon-sysfs.h>
>   #include <linux/jiffies.h>
>   #include <linux/types.h>
> +#include <linux/units.h>
>   
>   #include "i915_drv.h"
>   #include "i915_hwmon.h"
> @@ -32,6 +33,7 @@
>   
>   struct hwm_reg {
>   	i915_reg_t gt_perf_status;
> +	i915_reg_t pkg_temp;
>   	i915_reg_t pkg_power_sku_unit;
>   	i915_reg_t pkg_power_sku;
>   	i915_reg_t pkg_rapl_limit;
> @@ -280,6 +282,7 @@ static const struct attribute_group *hwm_groups[] = {
>   };
>   
>   static const struct hwmon_channel_info * const hwm_info[] = {
> +	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
>   	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
>   	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
>   	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
> @@ -310,6 +313,36 @@ static int hwm_pcode_write_i1(struct drm_i915_private *i915, u32 uval)
>   				  POWER_SETUP_SUBCOMMAND_WRITE_I1, 0, uval);
>   }
>   
> +static umode_t
> +hwm_temp_is_visible(const struct hwm_drvdata *ddat, u32 attr)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +
> +	if (attr == hwmon_temp_input && i915_mmio_reg_valid(hwmon->rg.pkg_temp))
> +		return 0444;
> +
> +	return 0;
> +}
> +
> +static int
> +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	intel_wakeref_t wakeref;
> +	u32 reg_val;
> +
> +	if (attr == hwmon_temp_input) {
> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> +			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
> +
> +		/* HW register value is in degrees, convert to millidegrees. */
> +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) * MILLIDEGREE_PER_DEGREE;
> +		return 0;
> +	}
> +
> +	return -EOPNOTSUPP;
> +}
Let's try to have synergy between previous attribute, such as 
hwm_fan_input, and this one.

Regards,
Badal
> +
>   static umode_t
>   hwm_in_is_visible(const struct hwm_drvdata *ddat, u32 attr)
>   {
> @@ -692,6 +725,8 @@ hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>   	struct hwm_drvdata *ddat = (struct hwm_drvdata *)drvdata;
>   
>   	switch (type) {
> +	case hwmon_temp:
> +		return hwm_temp_is_visible(ddat, attr);
>   	case hwmon_in:
>   		return hwm_in_is_visible(ddat, attr);
>   	case hwmon_power:
> @@ -714,6 +749,8 @@ hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>   	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
>   
>   	switch (type) {
> +	case hwmon_temp:
> +		return hwm_temp_read(ddat, attr, val);
>   	case hwmon_in:
>   		return hwm_in_read(ddat, attr, val);
>   	case hwmon_power:
> @@ -810,6 +847,7 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   	hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
>   
>   	if (IS_DG1(i915) || IS_DG2(i915)) {
> +		hwmon->rg.pkg_temp = PCU_PACKAGE_TEMPERATURE;
>   		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
>   		hwmon->rg.pkg_power_sku = PCU_PACKAGE_POWER_SKU;
>   		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
> @@ -817,6 +855,7 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
>   		hwmon->rg.fan_speed = PCU_PWM_FAN_SPEED;
>   	} else {
> +		hwmon->rg.pkg_temp = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
> diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> index 73900c098d59..dc2477179c3e 100644
> --- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
> +++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> @@ -207,6 +207,10 @@
>   #define PCU_PACKAGE_ENERGY_STATUS              _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x593c)
>   
>   #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
> +
> +#define PCU_PACKAGE_TEMPERATURE			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5978)
> +#define   TEMP_MASK				REG_GENMASK(7, 0)
> +
>   #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
>   #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
>   #define   RP0_CAP_MASK				REG_GENMASK(7, 0)
