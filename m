Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5EFAAD44F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 06:00:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9728E10E13C;
	Wed,  7 May 2025 04:00:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IbJ6DNJz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2238F10E13C;
 Wed,  7 May 2025 04:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746590404; x=1778126404;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kL49zlzpyI4hcbTftNZfKPfcEMZg/ZNB7tzrIR95vaY=;
 b=IbJ6DNJzE9qct5+6V+RvvtiohGC8GDO//L3WOQFQlQ19TVGf1GzDneaV
 LZy/aVegxllupn2d7DeMashRNMaPvjFMfTYqMxC1uaD9Gp6/GB4w48CEe
 0ZO3jhpQqU3G39fPyUDOm2wN+KFw8kWh/3+Vn1yPl6WWLjjnSg6h8hZ6a
 3b0tVsnGCiIiUEfl8QQ6yUW/hbJRtt8XMs+rTj1xgkVC6eMUoJ3xxeRp/
 +SMq3ZsM8KdDvYkZryhOXBL/Zm0Vbaqh4CBTVbi8W7ls2e56z0YdVgNxv
 EWgk1vcDnoSJ2pXeQiOp3VPJTEqWX4KVNSgonKJhiWAvIbYqeSoxTvC7+ Q==;
X-CSE-ConnectionGUID: B7C14kJRQGa4RjQrPXOEDg==
X-CSE-MsgGUID: wFqWrIDJQ/qIHj9Gb4blLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="70806120"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="70806120"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 21:00:03 -0700
X-CSE-ConnectionGUID: cvzO5om3TfexVn7YmPrtvQ==
X-CSE-MsgGUID: /FXZ8CZxSCWFOIHQtJIYKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="136840953"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 21:00:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 21:00:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 21:00:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 21:00:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UiUiTexh/DdX7hJoM12JwsQVRlS1sxAyoIs8y/e8OjsB14dJlxUrAZO00J+i7TX1Gt/YUtPigLKVEL88nGC9ZU0j3P+rwigKoln6fZBrpeG9/mTEnt5GFjfOw0VZb1hOBeiuV+U2/3hNMiaSR4kvrKwOcyhXWBRaiAb2QDm8q0mYPogld0EzOxrf6+CHe/Pol5PhS5OcRzNqnSpmKbrbwlGZmxdt4jdMv58W8CnWJHUQedkSdYoCT3Mt3ML6G6uI1MUT9ItHWiyJQCKySk4sCS5+41x/xDFLMgVX/UGW/1gW6+JkgxN3zOmEwJkccHJmPCaUWqe+Uk6oKnvrYGPBlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QSY4XhWe77JnSF6K0Yl0y/7QyyFYI+9Snc3oytRzXoA=;
 b=SI+V9oGqeQ8qf/YYylZ6YfmQJeQEJ3e4Bgxkeszj4i4dhfFDTy1TGKm1/PkvsTg2VoWeJxP7TdRmgS5EDw4YTXoj4Hpd24dyreA6427FJhIFgeSDFYvvG1KDWdd9bletFmPhDl0Rdyq7HERpdLiYUuCo7rj+3xv+yyVwbeNPpj930srRZ1FEXjkqHOvJKCWQ6ktwZsv66K3T+7v5MnAotJbW6gdmRZvPsLecxH+D1xw2D2ki4lcCAVYSGrubKqGmYAn3PAweXuiHneYuF+oICkjrCIIJM1ZcLyApl8HrN1NM3021If4EWBRYI9/SaJfFhb2qsfw3PTT8Z/ja8BbYYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6183.namprd11.prod.outlook.com (2603:10b6:208:3c5::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 03:59:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 03:59:27 +0000
Message-ID: <f5d72e0e-894d-4061-874b-d56d13741caf@intel.com>
Date: Wed, 7 May 2025 09:29:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/12] drm/i915/display: Factor out intel_display_{min, 
 max}_pipe_bpp()
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-10-imre.deak@intel.com>
 <abe21867-4735-4e73-a16a-bee34658cae7@intel.com>
 <aBon62ld9JyoRuY1@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aBon62ld9JyoRuY1@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0011.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6183:EE_
X-MS-Office365-Filtering-Correlation-Id: eb5b3470-87c8-413d-7192-08dd8d1b8fea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amMxa2grZmU2RVVyNXZEU3IycEc4bUd0ZUdsUUVuZStnc1VkK0h5QW1HSEpr?=
 =?utf-8?B?QXlVSmIwUUt5cFV6Wk1qSloyWndwWU5MeUd3UExsQ1c3bG4rNy9iSSs3N1Rv?=
 =?utf-8?B?aGowR282Nlp6RVZ4Mm9adDEvK3ZLUmViVUc2YW83WURhdGdJUU5PLzFsSCtE?=
 =?utf-8?B?ekdtVzNubnJUcGFQTGJDa1U5MVZ1MXErYmpCb1pNdkFLQm04RWE4UlVUU0k0?=
 =?utf-8?B?THIveUpGVTJaNER4OGNrc0tENXFDNmZKSEdlRy94Q2ovUVZqNUpqWmZ5Qmo1?=
 =?utf-8?B?Q2hLcUpRSUhUcmdZd0F3SWNLWEhLRFlGVjhJdnlNdDVkSFoweDVwMWNZZ0RZ?=
 =?utf-8?B?S01hM1JhMXBzM0lKZUZQNDVoWGx6bU96MzE5S3JMeXEzRHBBQSs1NmZVdXhM?=
 =?utf-8?B?V3J3Y1IwKzNwaXlhM3R4V0ZBT25tMURPWG1lUURxeTMwbzlTeWlheGhXenNN?=
 =?utf-8?B?b0V0YnRWQUIzWVFMazd2a0p3eE5KN1lQZWhIVk10YlNsV2ozOW9Ybms1d1pF?=
 =?utf-8?B?T3NEeFB5WVBhbUhmSjdmeld1N0ozWFBNK3BMRFd5Qm9Ma2pGdHhTQTBNN0U3?=
 =?utf-8?B?OEpidGNWNEJFdUlNKzNUeWNlVTJIOGt2aURyV3VxUll1ZkFITkNiWXVLUGta?=
 =?utf-8?B?ZXJaV1RGeHpINVNpUndldWlneU9uNUNVZkI1U0VkY1U3Y2tMKzBHSXZIRGVN?=
 =?utf-8?B?cUROb2xOVVd1MXNYTFNhMFo5ZGhDTG51M3k3YWhkeW1VOHJWOGFCMkdITVhG?=
 =?utf-8?B?L0RHV3Vram00SGlpMGlwZVRkblppSEliM3c2dXdJSEx0eGNxRGZGbGFhekJs?=
 =?utf-8?B?TWNwOWN3Y2U2NEZVcUg4TWVJQWltbW5DQUJTdGVxa09TOVNLYm1nOG9PN0Nq?=
 =?utf-8?B?dFlKdmhBRmRiV0daYXZnWDN6eEViZ0dETHcyM0JVV296Sk9peWFmandIWktp?=
 =?utf-8?B?RTRkUzc2ejNqd2dNbnIzVG1XTy9YUFAvOWRwZ2g3eDVjYWZ0Z0RweUNPRTFX?=
 =?utf-8?B?bDd4WFVBL2JSVHh0cDdUYmJLbTBQVlNTc1crSmtNVGFxNVE1aUMvMmxQNFRr?=
 =?utf-8?B?NFFBQWZYWG1UbEhVaFdTWng2elBZRkRrZDNEVE5YVHFDZmFFY083dHlVcVIr?=
 =?utf-8?B?aGJEdmRkSGxVaVpzdTE3Zmk2dFdtV0hncEx0bFk3Wkl4MDhReTF4eExDN2VK?=
 =?utf-8?B?RlFFQkJJUnhrakl2ZjYwdytjZzdSSGM1dkdPYjIyR0RkOHVPY0VQVHdJL0h5?=
 =?utf-8?B?cDNyWDVHSU1SUU9taVQwWDhCSHVuUDE1R2sxR1ZqVmg2cERJS2kvWDVUUG83?=
 =?utf-8?B?V3BjalVGMklTdG0wNWlRRGlXbHVZWEJ3ZmoxZThhRU96dnIycmNwQ2UySy9L?=
 =?utf-8?B?anNWUDVERzNiUXczb0EzYy9DNTJmWWNlVUUvZGRtTnE0T1VWUUpjWXgySUhm?=
 =?utf-8?B?NWhaUVhEMllyRGhCMDh0OTRKWTFSR09IZ2FEN2preGhtWmg3Q3k4OHIxeUhr?=
 =?utf-8?B?cWNkVWt1ZHI0K0FkMzhJaFJzb015OUYvcU1qaGNxbmUyMWQ1UVhCbE9ycFFG?=
 =?utf-8?B?bjM4V3piOFlDVkNrU3NaUndDWnZjQWRWWFVrZUgyTUxmOGk5ZVRZaXhmM0tt?=
 =?utf-8?B?eGV6NVplenVxTFRFYVZFeGo1U0o4bmYyUmk3MmxFSm9DZVY4OWl6TEZ6NEFp?=
 =?utf-8?B?eWNQV1dNZ29Fd0xKS0RZdjVsZVV3R2VXUTEzSFdxQXF6dTdwbFNHTm5wMDlL?=
 =?utf-8?B?N2RPZ0NWSVBLU01OMzFFUVV5SGxHdFRBcEF6Y3pyaDgxL3VXbjJHS00xWkpF?=
 =?utf-8?B?a0gvT1hzOUZrTFRJMXpEZ09uVlluWEdLWHVxbVhoS3lVcWI0VXN6cVltSFMv?=
 =?utf-8?B?NlE3ck9qVkt4ZzU4cURLWVVERDc2aDV1VkNtaVJWei9hV3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVBPMWlrUXZGUVF2VW55cTNWcEJvZmorOUNUeGdxK241Y1puY0FxVmZXU1Z0?=
 =?utf-8?B?SU8xRW5sNS90MmlRdktDKy9Bb2VZdURPL3JsVDdSYnRxVU5pMGNmRExCUTlC?=
 =?utf-8?B?RCtVZkd1cjl3R09sb1FFeGdqdit6LyszZ3R3REVaZFEvOGlzcE5XbDRIMmVJ?=
 =?utf-8?B?aUtSbjRUVlhLM1RHOHc2RTJ3TjFNSlNyQXNVeHhYVTZKWDRMdWlBWDh3b09U?=
 =?utf-8?B?dVJSWjlKYTRUclBEa0E3MUwzYkdzZlZrSFVyQXQrOEVzL2pDS09PSE9Gckpa?=
 =?utf-8?B?cGt0ZmpUWDNnQXZMd0RVa3ozR0FhdlRsRTU4aGJWcFFzak5kdks3a3FOSVY3?=
 =?utf-8?B?RVpKVHNSakhjV1VWNDVQVnBZbmNWNnZ6c0xXWjZzd0x5M2FzN1I3QTNlcFpJ?=
 =?utf-8?B?dEVUcU5tT29jd002cEtXbUZHN25uekRycUg4cG15UC84UUxMWnhYMGh0ZHU5?=
 =?utf-8?B?UXdzYUN5VHc0RTY4ME9ROXFJdVp3RWc3Y2puUmJBTE5iUmF0U0l6VHV4R0w4?=
 =?utf-8?B?UjM0NDhEVDFwNjNuTGlJempkR0R1ZGJsNVhzNzEvRzBPeGl4MzhJMnpXTFlS?=
 =?utf-8?B?ajVrV0Y0bTNnalRTUytWUXIrd1daSkpuNElZZG5FZXlWMVhGOFhOT2ppVm1Z?=
 =?utf-8?B?bGlLQ2tSY0VGR1RGQlBiOEZPaC92VU9RbGFDeWZFQ0s3QmVTWlhLL0FFUzIx?=
 =?utf-8?B?VVdwWUlOY2padk55cTlxN3FDMDhZUFlvVEwwbGo0QzU3UHlmV3BDZWRsaGZk?=
 =?utf-8?B?dlF3aFE2ekdpREdzUVVVMVlwS0JzNzdRQ3Y0UTFaTGRHRmNmMDh3amwreHND?=
 =?utf-8?B?RjRpNFppTENjTlNTL21TU3NsSDRaNkY3QitjZGtQMkVRQmswajY3SUpxdGdI?=
 =?utf-8?B?OTlSemV3eWVKUGNOdWlmWDVlQTdxT2l3SXNSRWR3elhyUkZCRXBPTUlHV3Bz?=
 =?utf-8?B?SUk5OWQrQTZuK1RnN2xOOGMrYnN1bVlha0docGR2c1RwdkdpQXNGMjdnWENT?=
 =?utf-8?B?eU5tcmVoaVEyZWgxbGhZUi9xWXNPZVY5WHlQT1FheGNzSE5hdXo4Zm45NXdD?=
 =?utf-8?B?ZWhlMkxwZTV3TEg0aUNFNHo1T3gwQU9qOHYwYXM2RWZzcS8wYmtVYzJ4blBv?=
 =?utf-8?B?Y1lNVldPNS8wM3UrSFV2eS9RcDRVOElXOTRXRUJGazlxZEsvLzVrNjFBckZU?=
 =?utf-8?B?UUFRbEFoa3NNT203VXJWV0tjb1REVVc1QS9hekJKSGhLM0JGaGJvYk5kNlRs?=
 =?utf-8?B?dkNnMTl5ZHViSEhkZEJRMzY0aXVHdGlIOE4weDV2SzdWZlZsSGlYVjV6bkNp?=
 =?utf-8?B?UitKWVY5TklMRnBwQi9jY2dUMVdOMG5CNjVmWmRSNlZSdC9FWkMrL0JPOUZi?=
 =?utf-8?B?K0t1aFIrZ0t1Mjk0dm4wN0FsK1AyMnR2b3F6QjZWcHBDOUV0ejJ4SXdzTmVC?=
 =?utf-8?B?eVVXTitET210TndtaTgvaXhyN0hKcEhrME0yelptWSsvMmhWRkhRbEJQTHl0?=
 =?utf-8?B?YTgyamY0b1k2RFRRcXZhc3ZOYk5RWHhEM0YrTUNPNEV3emtrdGpsajl4SGVz?=
 =?utf-8?B?ekNkK0FnVEU3c3A3Y0NqN2x4ekNiMjBOZDJSRHJmcUsrS01YQVowcVpxRjZq?=
 =?utf-8?B?cXcwVVlMNlFqMnd6ZDhyZlF5enluZS9zMDJIZUh1blpVVFJEK1BmVHE5TU85?=
 =?utf-8?B?cjFXTXVOMTFvNzh6LzRpbGNGTkUxQ1hPbVVqR25JejI1ZmlYQWt3V0cwV0d0?=
 =?utf-8?B?U2QzWkpacVZWSnhJZmlrM1IrSUxubjdSSHRaM3Fxa2RDcjhzMHcxWjZydFRN?=
 =?utf-8?B?VVdaUWZlajYxSFRVUGoxbDlPb2pySHRoQ2RZTU9mVFBzWWNYWTJYaldVa1Rn?=
 =?utf-8?B?NjZFOFVlNVpiRi8ya2IwdVVEQmh2MmtQQlZmNzE5RkRZWk1xMW9UZG9hMkMx?=
 =?utf-8?B?NDE4NS9PQjNJaVMybk9WUGJQMUpmS0xRczlaOEFnZWRhQ20vSnV2U001RlNJ?=
 =?utf-8?B?bytYeDcxV2Rzb3poeFNkOTBmRjNpTTRYR2ZWeDJ6RFh4TnFHNVpSYnZ4bDBN?=
 =?utf-8?B?QnlweVhaMFFzTEsrUi84M3dKVEtNZC9ueHQrdlFNUjV2SkVnRkRZajRvTnBk?=
 =?utf-8?B?SlZRaEkvL1dMNXlFR2tZbDhLTFM0V2twTGFVbjd6V0F4S1ozcGxoUU5KUkJO?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb5b3470-87c8-413d-7192-08dd8d1b8fea
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 03:59:27.8661 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hqASUMsU6pjui1CNTkYGxDbwxLQTsTKLjHYj5UA2YN3q9xIfP7KvuV5cIPi61oAE0vCbHzT4RAU+VzBlFJrnhsDDdN0DqIwZtPUd8P8VEgc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6183
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


On 5/6/2025 8:46 PM, Imre Deak wrote:
> On Tue, May 06, 2025 at 06:37:50PM +0530, Nautiyal, Ankit K wrote:
>> On 4/28/2025 7:01 PM, Imre Deak wrote:
>>> Factor out helpers that can be used in a follow-up change to query the
>>> minimum and maximum pipe bpp supported by the HW.
>>>
>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++-------
>>>    drivers/gpu/drm/i915/display/intel_display.h |  3 +++
>>>    drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
>>>    3 files changed, 22 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index b4ddffe53e23f..cf2c11826ffb3 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -4301,6 +4301,22 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
>>>    	return 0;
>>>    }
>>> +int intel_display_min_pipe_bpp(void)
>>> +{
>>> +	return 6 * 3;
>> Hmm.. I think this is DP specific, for HDMI min is 8 * 3 = 24 bpp.
>>
>> I see this is function is used while checking for min bpp while adding
>> support for forcing a bpp for different connectors.
>>
>> Would it make sense to make this connector specific?
> I wonder if it could be kept simple for now and use the platform's min
> bpp value in the above debugfs entry. IIUC the
> platform/connector/output_type specific min pipe bpps are:
>
> DP/RGB:      18
> DP/YCBCR:    24
> LVDS:        18
> DSI/DDI:     24
> DSI/non-DDI: 18
> All other:   24
>
> It would make sense to add a helper and use it everywhere, but it would
> be a bigger change. Are you ok to do this as a follow up?

Yes we can have a follow up for this, to get this connector specific.

Should we make the min as 24 for now, that will work for most things.

Or else we can let that be 18 for now, and the tests when forcing a 
particular bpp, will then use modeset with try commit.

If commit fails with -EINVAL, tests will try again with higher bpp.


Regards,

Ankit



>
>> Regards,
>>
>> Ankit
>>
>>
>>> +}
>>> +
>>> +int intel_display_max_pipe_bpp(struct intel_display *display)
>>> +{
>>> +	if (display->platform.g4x || display->platform.valleyview ||
>>> +	    display->platform.cherryview)
>>> +		return 10*3;
>>> +	else if (DISPLAY_VER(display) >= 5)
>>> +		return 12*3;
>>> +	else
>>> +		return 8*3;
>>> +}
>>> +
>>>    static int
>>>    compute_baseline_pipe_bpp(struct intel_atomic_state *state,
>>>    			  struct intel_crtc *crtc)
>>> @@ -4310,17 +4326,9 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
>>>    		intel_atomic_get_new_crtc_state(state, crtc);
>>>    	struct drm_connector *connector;
>>>    	struct drm_connector_state *connector_state;
>>> -	int bpp, i;
>>> +	int i;
>>> -	if (display->platform.g4x || display->platform.valleyview ||
>>> -	    display->platform.cherryview)
>>> -		bpp = 10*3;
>>> -	else if (DISPLAY_VER(display) >= 5)
>>> -		bpp = 12*3;
>>> -	else
>>> -		bpp = 8*3;
>>> -
>>> -	crtc_state->pipe_bpp = bpp;
>>> +	crtc_state->pipe_bpp = intel_display_max_pipe_bpp(display);
>>>    	/* Clamp display bpp to connector max bpp */
>>>    	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>>> index 3b54a62c290af..b6610e9175a7a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>>> @@ -524,6 +524,9 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
>>>    bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
>>>    			      struct intel_crtc *crtc);
>>> +int intel_display_min_pipe_bpp(void);
>>> +int intel_display_max_pipe_bpp(struct intel_display *display);
>>> +
>>>    /* modesetting */
>>>    int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
>>>    				      const char *reason, u8 pipe_mask);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 0f89a301e4a0d..73ca9f8efefc5 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -1198,7 +1198,7 @@ intel_dp_output_format(struct intel_connector *connector,
>>>    int intel_dp_min_bpp(enum intel_output_format output_format)
>>>    {
>>>    	if (output_format == INTEL_OUTPUT_FORMAT_RGB)
>>> -		return 6 * 3;
>>> +		return intel_display_min_pipe_bpp();
>>>    	else
>>>    		return 8 * 3;
>>>    }
