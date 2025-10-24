Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7676C06AC1
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 16:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB66D10EAA6;
	Fri, 24 Oct 2025 14:20:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QQRsAQ97";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DFDC10EAA7;
 Fri, 24 Oct 2025 14:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761315631; x=1792851631;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J2rJoZjcsMMeTq3FswFPZrlhtCsAvoWp8TD2h+VSCVA=;
 b=QQRsAQ97aBQ5oMHAnIGd5NUXCGVf0w/bhbLfWxrsJwfu+ksu2/d4HHWP
 Te311Bkp/jgmiaOZBCqwYvt+7oGam1lDe2N+hvHCjmV7fhFEYcrYv3FFt
 lxI67rTXU8Vd6ycznlwFYr/DT6ld0u+0T/kYBG91tnYZ5+M7Trft+OLG3
 v6pikMHE76x5EFmmG5nOvTEYw/x2QzPqjWrLdyKDbPTBLkZKLJkgrBMH+
 h8PB9BXcVaqg8w3fYPDL+Cyi2H9N8qisOacPZ1BRe1ZOS7cxmDTDjmcBo
 RJ13JEEMuc4CY5iVDpMZv79mXt4bXdLodz2BmX+rMNSLpTJ1UfzGgM/0H A==;
X-CSE-ConnectionGUID: VNv0TfYSSaCQtgDNHwU6dQ==
X-CSE-MsgGUID: 0SR2oKonRAaUN16mQL4Vrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66113572"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="66113572"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:20:31 -0700
X-CSE-ConnectionGUID: hB8kfSe9QtW1aTlW9t3HVQ==
X-CSE-MsgGUID: 6bo5l11dRJC/QPHdphd2hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="188733905"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:20:30 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:20:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 07:20:30 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.55) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:20:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dcLdRvJ2t4emYs7J06XyG8ZM496lzfHu21SeSUlO37A38dssIrs/BXLj/JEKyipPVSCqTqhyHcjitterFZk4vZV2QJ6SHN8sEqe801P+mECfl7OeiKHEkJO/Xc/z4X8pzSrCPb6iAmcHdCxI5m1QncYQyFFWmSHcsO7NwMDsborXjIEPS9ib6XLIKA/sYfXxB6JdvXCETLXgmqUl6N5oHvb1y8pbYpec2XovPDb3YjQkNkqW0XHLI7J090+goPEJH66+PukDoAj6lzlG+H0WPctVd9uPdbRfeoouzir5YgqkYhSypKeZZQOjVAyg55D9L/7mg//11Waz8cJImP8wlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0V5kZBv6cXzUOBXAVtm7jpu8ysIe0rnwB3Thqzsan8s=;
 b=mG6UUN4os4A2gBXZ9tZEsggUSg2rSNdn8bdGZ3yn6BNX9I+aPB/LrA14pnHRTW2InSJiAo32m1dZKcz6GbTBdBphpV+Ipsd37VciKvxvtL5IiGGPua24I6pYwc+KfsytjPbZZ8usdz+WWl4rWvinJ8ZtiUgvC6hDyD7pkwihv7jrREISgGXEGeMuHq9LHr8WN9NjbtoeNEfDMBNJlfs6gbPJMEx/FzEGBuTb472cIPCpB1hvCdvxf5w4ZwEYA+encOE74I9qUaRNi0aZyQ1pp35as6e604kRvMJCAbAJcJ8VmCXTzQguzdujlWcTV4finiKLcDDbCn4b2lyIOK5eBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6489.namprd11.prod.outlook.com (2603:10b6:208:3a7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 14:20:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 14:20:27 +0000
Message-ID: <8e612490-b09b-46c8-ac39-313812b8e78b@intel.com>
Date: Fri, 24 Oct 2025 19:50:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/22] drm/i915/vrr: Nuke intel_vrr_vmin_flipline()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-21-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-21-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6489:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ded31f2-fbbb-454a-c651-08de13087a28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WnhiNS9Gclc2bDR5V2E3T0J4ZE9ONkh3ejlheHNqM2Jja0VHY0FRaXNpR2RJ?=
 =?utf-8?B?MXB1QmRwN2hJMGRTbDhhbVVRK2xnaTVhYnUwdzV2cE1qVUxLUUVLYjhBNHZG?=
 =?utf-8?B?Y2RSNlRkZkNxT3k5YmxBdklFMUY5VGg2UUNOcHhobkp5NkZIZHNUaWd3cldT?=
 =?utf-8?B?MjRFQUZ6emg0SmgzK2dzS2h3eXUwZmJGNmZPV2g1bHlhOXVjVFBrQlJOTlZt?=
 =?utf-8?B?bGhMWXpMTjBQZVF2SnR1MS9uTEJadUhjRVI0amYyb29xREZoNnVDMW0wM0g3?=
 =?utf-8?B?VkJJaEtKcUg2cTVPUG1GQnUwV1FKdlYwQ012bG9vOVgvMER1T2NiclBSY1FF?=
 =?utf-8?B?VnZwTGcyY0hrRkhXQ3FtV0h3NXd3a0VYRHZmNWlxTEl1YjE3cUpOeFhXM280?=
 =?utf-8?B?bVRZV3dEaGo3WDgvRXJFd084aHc1dkMyVDA5T011bEZ1Vko3dTZsdDVkcW5E?=
 =?utf-8?B?K1VYRHdnNTdWWHMzV3AwZkZQQ05Ga0dtNEZWVGFwSGxSRm9kczRMZStZRlhh?=
 =?utf-8?B?UmN4UjZYK2pRYTdGKy9SZ1VUcFVsQkVVTzFTU2k1bzVPc1ZQekRvdUQyUkdB?=
 =?utf-8?B?UnZBdkpTekxlRDNrcUtmSW9iVWZjNFRmVkRyUjMwbHd6WWUyNncvZG4wd3RF?=
 =?utf-8?B?ZTVOaDhmTTVkcnlpN3dKcUE5R1FiV2hXYVlWSWtEdUNyWUVqT1plTG9JeUtO?=
 =?utf-8?B?c2RadW5ycU94K1cyL0VxSHpjSFppVDByVGhleGEwZ3BnTXZxdlRXVjdXZUZn?=
 =?utf-8?B?SjA5dmNtR1pEUE5kTTUwZUVQN3hrbkxQTVFoK2dxbmhxdkt5cTJzZkIxU0Yv?=
 =?utf-8?B?QVB4ZzhadHNlVnI5N3dWb2ZaWUZlTGI0Sk9JREl4bGdnRzhKUzFQdHNGRmlO?=
 =?utf-8?B?ZkJGTTlFUlF3VVNLVjFIbjNPSENaOWNSNnFVbzBuNnFwMGVmMmZFY3p2Q2Vu?=
 =?utf-8?B?cThZRDVkZDVoWXFCR0x6RmpHZTZNQTNPTUVsVm9ZN1JlZTEveDdjRmFuWUxj?=
 =?utf-8?B?QVFZeHpienJqRXUwNXl3ekUwekdXd1FTOE9TNEVRYndPTHlEbERWaURFS2w5?=
 =?utf-8?B?a1hmTHlIdU1BNWY2NkF1RG1zajNBZnREbjdBSDkvY1NFMnZYditkZXk5bVlK?=
 =?utf-8?B?VjNCU2ZlOVpuWVlTdmN0VDRTZndQQkFkekZkT1JHenZSRVNrZ2ZXMWdRc2cr?=
 =?utf-8?B?ZUVPaUE1S0hOQm84c24yYmVxY1d5VXBBOXh6Uk1GclJJWENUNlYybkVzV0tq?=
 =?utf-8?B?WnJjTlg1a3pjZDB1MDhYU2JEWmNZOURnSGxEaTgxK3FJdlZZemJmSlFlOUpD?=
 =?utf-8?B?MWtWOEtLTVY1Z0xiUU5qUVU3dFVUQ1Y0TGthNWxoNjVmVDVSYW9oSzdvWHg3?=
 =?utf-8?B?OThZRUV4NGpNTmFEaExIZm03R1laRTBGR251VklwbEZ2T2JucGJOZ1VUWE9P?=
 =?utf-8?B?RUxlZUhqQ1B4eUk1RXZwYnVFN0MrRjlnQ2tNUGtVZXUwRHl2bEJFZjl2cytk?=
 =?utf-8?B?bSsreUdsTk1NaGU3cy9QdTZ3MVpHS1dENWdicU95d2NyOUZ1eDgvTnBvZnBT?=
 =?utf-8?B?Q0V5UVB2Q0NqSXpSWXpIRDJ3R0JOTHFTRXFYb3k5Tk05NlM0V0xucFgveHQ0?=
 =?utf-8?B?eW5vckNCOHhlbmI3b2NvVjI0MEtQY0YrL2tQMGdpdzZDQjZyWlQ0R21IZjZS?=
 =?utf-8?B?aUltZ1lXVUp5N2x5UWRoWWNCWXdrYkRQWTZ2a0QzQTBFYkV6Zy9uZUJPYnRk?=
 =?utf-8?B?Z0Y4VmY4YnNydW45Ty8zZFpTWDNRWXh3b3ZoK2djK00rSFNDSTQwRm43b1Jk?=
 =?utf-8?B?S3ZGQjJWN2JVc1BWZWtBZzYreG5HWlNtNy80T09nM2YyU2ZpS251cURFUVdW?=
 =?utf-8?B?dmRZSmV1OXE4OVBUdjM5UmhmT2hRUUVydHFQZzJxNE1wVzNPM0N0eGNLOUg4?=
 =?utf-8?Q?jmDz+uk+3u9RxDKxo1cE5teQ3RTwbMQP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTBkVXk1NFI3Ty9LaXRudFhUSVRsd0h4MWJ1eG03ZFBxY3dUV1FmcDQ2MjRK?=
 =?utf-8?B?bC9YeDloVE9GdGl0cW1nWkJzWStzY3hKOW9NWHVBaFVWQWZjeDVKWlNxa2U1?=
 =?utf-8?B?Y2tPUXQwQTJpZ1NaQllUSXh5V0xiQklLV2dqZW5ldVl4TmxpKy9NQ09vSUd3?=
 =?utf-8?B?d0J6MGZwVzR4QzJGZXlkenJFb2NIMmxsSitOMThaNjhzNXRoUExXckVhSVly?=
 =?utf-8?B?cjlBK3g1cG1xK1dLMHNGR3V1d3o3RWhtVDJnenhyeXQrMDAwOTJNT3BVOWo2?=
 =?utf-8?B?anZDbDh2cCt1aXd4SDZBQ0JqRnpaSFRQdEhhTDZZVkswYjNhYVJtblluZ2Vx?=
 =?utf-8?B?YTczL042cDRFVkRpamJndEk0V3BiNVRpRE1Vc2xRQkNTREprN3MzdjJXbW1x?=
 =?utf-8?B?VnRObTNpNWd5WEJTZDF2d0hrTGwzYktHdnpmbUdSYjc5ajEwdHlRZ3ZIK1JL?=
 =?utf-8?B?OTY2Y3ZxYjVGcXdEZVJjNVczTEJkeVIzKzVyTGhyTVhtMk54ODkrYTRYL3BR?=
 =?utf-8?B?dFZxWUpzNGkvMW13NmczaHRGLzdyQnJrbHpSN01GVkxZVWEyc0RGMENJUkM4?=
 =?utf-8?B?cVgvZHREQ3RFcFJCcXhnL1V5Nm1EZ21lTGl2YVpsZFFDeXQvTER6S2R1ZE0v?=
 =?utf-8?B?cDBSNlRzbFNCd2ozUlNYb3RxQnVVSGF2UC85eDBHMDRFNW8yR0lhRk9QZ1Ra?=
 =?utf-8?B?RFpBdVRaUGladnphMTlCM2VQVVExbEFaWnpjbVlVd0JsWjlxZFBGYW84NnlM?=
 =?utf-8?B?ZFlHOHFJM00yNjJQR0tXOEFSTUZDWFlTSlRVMTNLb2JmWWNNYTRzSDlwM3B3?=
 =?utf-8?B?UUZVWm5ncUNCUk5RNEJPY1FNQ3RMQkd0RlU0S0xxeEN3K1hmb2ZHUFExSkNq?=
 =?utf-8?B?WUUyNGE4djZTVFdMNEV5TW0zdDA4SmFhcUlZSXpKY213c0dMQ2tOMWRtVlM4?=
 =?utf-8?B?NVVFSDBYb3NEKzF2aTFmTlA5Y0pxZHdSYTlmeFVkbktNNmNRN2xKVkdwRFFy?=
 =?utf-8?B?aTc1TVFzRHVMeUR6R29aY00xdWpCbTh4dEdQQWs4MVZvL0hObUJpbDRFRC92?=
 =?utf-8?B?WHk4czk0SkdwU0YwSnhPT0E4SCtLZDdwVjZjVjhMTk8zbDdid2IyeE5XWXZu?=
 =?utf-8?B?NWJGZ3FIbFhDSEtQSm4xeTk4bWRTNGNzbXZ1VDJkU2w5WFl0Qjh4SlVUVmF1?=
 =?utf-8?B?R2dXaGJoMnlTcVpla0RpbVdGMk5VbVliZWVYZnl6N0JBK0lBZEVpOGc1eEl0?=
 =?utf-8?B?elZxRXhXYjlwb3VtYXExOVRrQVdjNUZZU2kwQjZPNm1TT1NVUTlDTTFieU0z?=
 =?utf-8?B?blg3cWFONHpXa1NmazM2RFdMbEJlMWRNY3dMQmI1MEdlK0lTazFtTDg5N1B2?=
 =?utf-8?B?UFo5cUR3SEdQV2d5N2MzRWM3WTRNQ1F2WVUvOUF2YzJDeWtVS3NQdDRtRjBZ?=
 =?utf-8?B?M1VZUWJHTERsTkp1enJ3Zjc2KzRIekVxOVNjS1RoRXdXb0l4TVQzbUNOWno2?=
 =?utf-8?B?QngrM3FoWFZ2R1RyaFB2WS9oK2FqMnh5VjBSWnN6QTNDemNJY2lVdFNLVFZy?=
 =?utf-8?B?T2MxcEhXb0twTUVnMEg0YWRPMGRka0owQVRBNnhiR3hKNmRJOTQzcmtJVEh1?=
 =?utf-8?B?Y2VVR2Z4ZG5BR1gva2tLSWVQS2w4L3ZsUnQreFNabDBmcHJoVEY4S2VvaWJz?=
 =?utf-8?B?YUVDNjdjVmpNTE1MZlkyL2UxQ3hJQURMb1dkZXZuSlVTVWg0ZVNpbU1JRHhZ?=
 =?utf-8?B?VWVycFJtSFFQVHNIbWl0RkJVQjdEK0hKWmdjdUdMMGN2WVRRUEpUZFYwZ0Yw?=
 =?utf-8?B?K2V2bUhsSFcxOEJxSXV3cmZqTzlkREtSYVR1a050RnFXMVhETWdaQnpkbXdi?=
 =?utf-8?B?aGtESGpFTjUwVXVkOXZneEI2ZXJjYWZLSm1Ub3U2dW1jRldQNlJMMUtabjFQ?=
 =?utf-8?B?SEI2aHdoWlJjeXBPN1Z0Y3hBYkI1d0xHL2dDNzQ3RnVWcWZLWFVBRHh3L2k3?=
 =?utf-8?B?U0FwL3AwRUk0VnV0VG1QUmljZ3R6ZWx5b3g2d3EzYlZNNFJrcUU2MUhPY2NF?=
 =?utf-8?B?cUFUOGEra0YxY3U5cWJlZG16WGJadGJ5RGhBN2U2Z0lvQ3pNTklaSjZzS1FE?=
 =?utf-8?B?WEF2dERROXVvZTBBVk1LVnQ3Nm9GZFFleVJGSEdCQmVweDEwZUN4YVk1cHBV?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ded31f2-fbbb-454a-c651-08de13087a28
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 14:20:27.3367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bjfg00KVJdHC2XWaNZFblyVqBiwhMqbMqSfIQP9OfGjpLQYw1QgDRw13GpKXDAuxdqnRcl8LfUFD8JEIq+iXtv3GOES2Sxmv+9PXQjBGrRk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6489
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Now that intel_vrr_flipline_offset() is completely hidden from the
> higher level VRR code, intel_vrr_vmin_flipline() has become rather
> pointless. Remove it.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 9 ++-------
>   1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index ba92e0a76855..8875e5fe86aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -108,11 +108,6 @@ static int intel_vrr_vmin_flipline_offset(struct intel_display *display)
>   	return DISPLAY_VER(display) < 13 ? 1 : 0;
>   }
>   
> -static int intel_vrr_vmin_flipline(const struct intel_crtc_state *crtc_state)
> -{
> -	return crtc_state->vrr.vmin;
> -}
> -
>   static int intel_vrr_guardband_to_pipeline_full(const struct intel_crtc_state *crtc_state,
>   						int guardband)
>   {
> @@ -147,7 +142,7 @@ static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *c
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>   {
>   	/* Min vblank actually determined by flipline */
> -	return intel_vrr_vmin_flipline(crtc_state);
> +	return crtc_state->vrr.vmin;
>   }
>   
>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
> @@ -781,7 +776,7 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>   {
>   	return crtc_state->vrr.flipline &&
>   	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
> -	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
> +	       crtc_state->vrr.flipline == crtc_state->vrr.vmin;
>   }
>   
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
