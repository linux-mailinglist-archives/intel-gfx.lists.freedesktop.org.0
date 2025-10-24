Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A22C06A25
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 16:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C0F710EA9F;
	Fri, 24 Oct 2025 14:12:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YhZzy51K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15BFE10E1F9;
 Fri, 24 Oct 2025 14:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761315129; x=1792851129;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=beq9nis54z1C+A2s2RUgrd9h+eqWl+UYtvXNlgTTmA8=;
 b=YhZzy51KXo9ygV+p/2IBVqr9yfWVB7Rtk3IzskB/KDJIFKPgVfk/7fsz
 WKOI2mEMi9+wfQIy1aCX6jgiiwV13TZLrYm40ns6rO8sPmvNf66rgYOoB
 scGNHS5mwR5GabKkVf4kk6w0BQ15kC3VrNV0x5LW/FIcZCi72xE5R14EI
 HtAj3wTHobLZodV7jOGIuz9RMzUgaYF0DYpZdjs0AtEXiCOz0ThrOo6/X
 /gZFg1ZOpUCzyG/Wop09bpeWlpnQwXq0Fu6eQZ7KLj+Ynro11l5X2YtMM
 Qo3ya/WnFe97RoAWTomAX47flkFo8d5+34hC/XSTd4gZSZNMqz6NoxF+V w==;
X-CSE-ConnectionGUID: zNev3kSHQvyOcveJrxY19Q==
X-CSE-MsgGUID: nzgQ/cXsS4W6+oax++fATQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74168472"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="74168472"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:12:08 -0700
X-CSE-ConnectionGUID: ZuMcink7TMqb8jjSGZxcGA==
X-CSE-MsgGUID: c96IsylzQ0ufDFNxsju5Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="184920152"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:12:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:12:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 07:12:08 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.3) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:12:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v09konf210GnbEQMRNb+aRScGajl8tVzKW3A0Ykz3WidRn2nZB7BBZYshS8GJQe69yLyJYgjbj9QtBeP9G4spbBmzAybKH/N+j+XwFq+lhvgpwn/hHsy7cFQyZRkPH8QqoNp92yDqHaujG8g3mUEyx2iqDlSE/GkqTY67tgKAw4EzITXbaRa6wHHLT/Ev3ds2jf7uOqWbmhvjIL4Qdrj2L0WTOnCyx2cORkHt33aCL80dmMV7PVFKZxrdAjRvSsg1iKk8FitMRWlUbNqw3ZTuc7A2a45sEhxoMBxADbrxN5vzoTYtLcSQmRBM+KjVwdm2VNOhUApSE14D9R2Txam2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uoZI1Vapnkg3D0lXLz7lAw7LIimoQ8NhX2bz8LHCj3U=;
 b=KaBVAprMr9IAw+o1yJ1DQhWWrzqNA80/Cp6cYsZEoLy5+B1sxFakZhO0pmspvyYfOTCWxmoEAc0X6SmbV0kRnTRUWqlaizDXO44mWAEcH2Tv2PAr5teRl7KDCsTMQQLMVS//COiqByAFpiSYOaz4i1VHWzNam656cFjLdsBZsSk6mCNuJaD432KSKqF2nMhu35ReY959NHc8W3FQBTne7EIpKT4DWJZrgkrEgzIxniQTAmOGWddmb5sLacBtSTRl2sUXI6Rbh7HrJOOrYJbQSZ8WSwRoVhvfZeQM6cRuKokqHrFStXmuEtvUsETG+4zA896hjPhNbzXzx2KMLchbCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4651.namprd11.prod.outlook.com (2603:10b6:303:2c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 14:12:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 14:12:05 +0000
Message-ID: <0582b039-e1bf-4406-b030-cd9b03d1832c@intel.com>
Date: Fri, 24 Oct 2025 19:41:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/22] drm/i915/vrr: Always write TRANS_VRR_CTL in
 intel_vrr_set_transcoder_timings() on !always_use_vrr_tg()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-16-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-16-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d5::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4651:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e9911c0-77d3-43a9-7421-08de13074f73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXVzd3FVKzdiaXJxNnpIL0drejJDOGdwY1J2Q2ZsTG1YdHFqWDUvVmRzT0Fl?=
 =?utf-8?B?VU52bmdlUnV5cUpOVUE2RXVUeCtmcmZST2FUY08wYTV1bVZQVldkSG03NHlF?=
 =?utf-8?B?SHZHY0k4ZCtRaTk2Uyt0Z3M5NDEwRG5LQTVLUkJGcEZiYms5WGxnVjNycmJI?=
 =?utf-8?B?SUh2Y0RGaUk1TVJJWnArS1RDd3hLT1lCTk5ycllBaTFwT3NFbDg1dEdPYzc4?=
 =?utf-8?B?TjE4Z3pXUFZWV1ZBTHN1bWZlTk1maDZ4Q290d1lNZEZha0Z3UEQ3bkN0ZVNt?=
 =?utf-8?B?UVVYa1U2WVlBcHU3dlVnYzFyWVd5Wmc4bXcvRHY1dHMwV293bW5kMVVEZU9T?=
 =?utf-8?B?VEtVRVFmNklia3F6Tk9XN3I0NC9vNXNHWTRRNzM1RVlnb0I5MDB5NllFU1Zu?=
 =?utf-8?B?MEJPN2VHSitmTVdTNDJnbUF1MEQwZ2Q5czNDZzZMK1RZcGdBSVNIc0IyY2xH?=
 =?utf-8?B?WEwvejdrMFlhMVpZdWhTSHgwMmNCWHFhc3grTVdsY3FMUllERnpPeDJETEE0?=
 =?utf-8?B?SUh4V0U5THIrZnBKU3NLclZMYkhkYlNhR3MvYmkrUCtPQlkzU0dyQmZWZW5o?=
 =?utf-8?B?MkhxQnV1cGYrZVEvTi9KdE9MQWlYenk2ZEJkUFNueXRDclpUeTdrYWg1OGhz?=
 =?utf-8?B?SFNUbm0zK01xN3pGbDAzU2NmWFpZcng3VU5WU2ZCcktLUjUxclMyQlZ4d20z?=
 =?utf-8?B?aUNlUldoYmJMT3ZKRjcxSlphK21uQWpJcUdSZ1dIYjFldWVKQTllR2F0dUFU?=
 =?utf-8?B?T0F0bHAvWTZtUTd4REh5ZEZVbDVGMkRRbzJialNmOW9YREFyc2hITWdCT20r?=
 =?utf-8?B?eUVYdmhvL1JXUHN6QkZNckZXczIvc2ZuZlZDd05VRW53amNMbk5TWjk5QldN?=
 =?utf-8?B?NlN3TG04elJodGlrbjhnL2ZNb3VLejM3dS91RThSSkt2QkVEOCtENXFCMU95?=
 =?utf-8?B?WDhFa2pjaS9kSlR5QnRMQUVURmNxTHhSamtJeHB4RUZtcWNOVnZZQmE4c0Y1?=
 =?utf-8?B?UFNPV3hNakQ2V3c2OEw3UEFic0FPS1IvTzRaTjBhK2thNlBCQnV0bnNSZERq?=
 =?utf-8?B?dWhlTm1oOGVDVURSSUk5bVRwNlRKU2hlaTY0VlN6TnVnNGV5aWs5cVRqRDZL?=
 =?utf-8?B?c3RzSmovOEZ6NlpZS041dXd2TnJwVVBmNytHU1pGd1F2VzZUU1hqODJtdE5l?=
 =?utf-8?B?cUl4NnMwUlEwTmsrS0loS29wYTZFelFwb2RHTi9EWVpXRjYraU9xVndQRkJk?=
 =?utf-8?B?ZGx4TDNSZUR1Vy9kZGJBR1dVT1dSRHNpaThrck52MCtiRWdGY3J2UDNNeW00?=
 =?utf-8?B?UU5Cb25vZ3FBQ3IxT3hjN1ByV0lkV29OTmRxemVtbk5mTzU2SWJ2SHNESy9H?=
 =?utf-8?B?c2FzbERsL1RXWkVJL2wwWC9GeCsxVHlZODBtR0tqOHZlTFViY1FEL2hocFR0?=
 =?utf-8?B?T1dCK3RkaUp4WGllRExxTjZpcGhCOTFKWDdKNm1DZFBpazl6T3N5ZDdDVWM0?=
 =?utf-8?B?ckJ0SHZIRFdRU3IwaUx0dTZXN2JnUFBVU3NhcnVTRkZtTGZ5YncrZ3d3V0hk?=
 =?utf-8?B?ejlFQ1h2WnhuNGMyVUJoWU5YRzNIYXhNUEx5MFdrZXVCUFBaUXpuMkNaYnc4?=
 =?utf-8?B?TUJDQ3J0MU5CMW8raDE4VWgvWjc3L21qcDREQVJ5NHdlNm1Lc3FrOE9FT25w?=
 =?utf-8?B?T1dWdFQ0SUo0ekd1OTJFRUhuVitseEZVOFIvbVl2WkJwVVNTMHl0RWlmakk2?=
 =?utf-8?B?LzVoZHBRa3dCa1BnMnhRRlY2MXZkTllCdkVrS3VLa1JhRmdUNnhOem82OVgz?=
 =?utf-8?B?cTFGZ2NBYlBuekZmMkxZcTlzbzZBRGlsdDhJQVJhMWhmMnlsTDB0SXNJZWlZ?=
 =?utf-8?B?VXdzeE02UG5TQjVJWHRLaG5leG16akNpZjUzZXduY0EzQ1crQU5USEdwellt?=
 =?utf-8?Q?PhkFlqfvMJI/WCyrMBDZArvg6wvc+1uV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkRJTWp3ZGF2WGNkamx4MGxHY1MxK2lGZVA0TWtseXVmNjlCTk0zQTNhdjd3?=
 =?utf-8?B?QXFJZ1liL1JySis0L20wbytHZStMVnlzdE80VlVhL08yRzFrMjFSM3I2blF3?=
 =?utf-8?B?TldFaXp6Mlp4UGhub0F1Y2RZZlRZdzA2Sms1RHZTS3hIelh3TVZJRXZJMktW?=
 =?utf-8?B?Y3lXTC9EUTlkN3NXMEdWeTZwS0liMjJSc0FJaXAzckY2MmVBUFlwRit5ek9I?=
 =?utf-8?B?dC9OcHBwN2dMT3BoeGl4WXFQUHMwSEJRQUNRMldRamd0N1F3QTlEMnV6US9o?=
 =?utf-8?B?Y0p4ZmdWb0JTZFByWlJzZW42dU5ZNW5sQ3V0Y0s1eGRNem9IdUt2L2xkSnI1?=
 =?utf-8?B?OGhQNDNWNXJON2N3RWU3QjFDVzBBNWoxZHJVaGZTVi9oZHUyT0lTZHJtRTln?=
 =?utf-8?B?dkxlaVlHakpMeng5Y01nNG5RU1Y3VCtkZ3FVK0VDczBjVk9TbXBTR1hLRkJ1?=
 =?utf-8?B?VVFtNUJ0akpLblZESWVhaStLUFhNbGlFVnZjMjZNWjVtQWtHRG1FWkREcVlH?=
 =?utf-8?B?YmpVNDM5OW1JcW5pekFuSXV6L2VmOThmQXhKSDd5KzdDYkRxdC9JV1ZtMDFZ?=
 =?utf-8?B?SzVTVzFTUEI1dlI1bHJKL0d6K3lsWkQxSWs0WUlSdERrb09IeTVrK1Vsenp0?=
 =?utf-8?B?RFNjUkZ5M3pvQWkwaWdnTmdMNTlRR2RqanVidURtWVJFeXVjMzdKOHA3ZDV3?=
 =?utf-8?B?MWlGZzhmckVvcGM1a2JMVy9YVlhjblhGTHlBc0lSU21UK2lNenFzbkp4OXh4?=
 =?utf-8?B?VGFveDdrbXFZL0NJZEJyU2RVZ2hEdEluaFpHeGNaNVJ2cENkVGRzZVlzYnhS?=
 =?utf-8?B?ek9WOXhPWWYvSFFXeWxZQW83ZmF6bnhrUkRIZVBvdGtDMWM3K3NzNVVGVGJy?=
 =?utf-8?B?N0FZYnFacXNQSXlaWGZWejQraCttaEtNOGp2d25pU0lHUk02dU1FQmM5a0pr?=
 =?utf-8?B?TVNzVmJjRU1SVWtkdDBQaFlwazB6QVNrQ2s1Vlhkc1FQcjVrL2wvYmNJNWZX?=
 =?utf-8?B?TTNLanlPQ2grUUdQRVdjQ3JadEpGOU1wWGRMbFV5SjJzWHY4UW5mc1hXRWs1?=
 =?utf-8?B?N3k5TzIxZnR3MWtMUnVqcm5DS3dIcjkwTmVlWG1OL2E5UWtVSEZ4dUdLUWMr?=
 =?utf-8?B?djV2MlJ4SXFPdFpsWFR6RTVocEt5ejExR25DNERzYmY3UnZrU3l4TlBiMCtS?=
 =?utf-8?B?VXUrNHpHYmpuZmNRN1FnOXJmdzdCUlRHWFpvZW1oK3lDZ0xEaVpEQjlRaGJN?=
 =?utf-8?B?U3pCMkgyeEFzalh3bElUcnZRNnZmVWZ6Qy9tWDlteWpLNVEzZ3hRS2RGSmFC?=
 =?utf-8?B?NnUrbmx6enlJUUlxS1B5WmtHeXgwRVlxV001dGg0VmVvRkhMRXBNZ0pyYW9E?=
 =?utf-8?B?LzMyU29PYlplZnRmZEQvVWFER29DSnhaVjNRY1pnZlFqS3pvZFRZSU9EOWhv?=
 =?utf-8?B?T1dnb283VytGeHIwdmxhaHI0Yk95cWhyeFhZa2VwYnovOXZqaTY1U21sYU5E?=
 =?utf-8?B?L1M5eGlkMHA1NnEzVGtLSEJGVXpXbzVtSW5zckdYU0N6SXV0S2EzREM2VGho?=
 =?utf-8?B?YUF0OGFEcno1ZDlBTW1iUjJWaU5kVENoejBVK0NMdFo1bDdXWG5NcEdqYTdL?=
 =?utf-8?B?K3RYQTV6VkxOTk5WMENyVEJKQVFEelVoZktrZHVOTHU3R2Jjb0ZXTkY3V2NE?=
 =?utf-8?B?bkF4MVZubkozYnppWWxhWTQyL0ZSOFdiMy92SVBxMUlxb2YydzB5MWJGdXAw?=
 =?utf-8?B?eWNvOEY0OGRYZjVSZHFncHdVVm9yMW80UVJjY2lxMW1teVJIczkzc0NEazZi?=
 =?utf-8?B?eS9SdVNqWUxMaXF6M0ZNZGkxUlpRSzZ0bHM3aXJsOWdsVEZFaC9LOXZtd1dW?=
 =?utf-8?B?Vzg4OHVXdkptVHdUZEVxTjFjRUVOb21WTllrYVlPMDd4WXFKRGpMM1BEREU0?=
 =?utf-8?B?dWYwdldBK0dJMWtKTjVteVd5amtxRk1HbnFDdkZpS0x0VHpkM0NsNGJVODZJ?=
 =?utf-8?B?Z2t1Njg3bEhaUHQwWkZjN202QnFaejRkRGxIOFhoOWpuUkE2S3QyWkNicjZz?=
 =?utf-8?B?SHNJS2dWdS9vVHcrYjM3cHNrMExWRUZOUnVhakJVZ2M1bzExdXc4SC9razZY?=
 =?utf-8?B?dEpXQ2VlM0JOQnJucmt2YTR6SEhmV3NOL1ZXczBwc21NakE2OW1KajlIWkNz?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e9911c0-77d3-43a9-7421-08de13074f73
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 14:12:05.6021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wNW2xpDfG7mCly7Gukg3Q76DULzFQV6HBx3YpEy9e/IfIp5NroiouGliW44BRIJkY6GdnGTjtPRJrEWVvU5LvJpiYfZ8lGYnZrwcJaHZjKE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4651
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
> Currently, dependign on vrr.enable, we may write TRANS_VRR_CTL from

Typo : depending

Otherwise LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> both intel_vrr_set_transcoder_timings() and intel_vrr_transcoder_enable()
> on !always_use_vrr_tg() platforms. Streamline this so that we just
> always write it from intel_vrr_set_transcoder_timings(), and
> never from intel_vrr_transcoder_enable().
>
> The main benefit is that intel_vrr_transcoder_enable() becomes symmetric
> to intel_vrr_transcoder_disable().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++---------
>   1 file changed, 3 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index d8fbbef1ae23..67b1ed606d8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -562,7 +562,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   
>   	intel_vrr_set_fixed_rr_timings(crtc_state);
>   
> -	if (!intel_vrr_always_use_vrr_tg(display) && !crtc_state->vrr.enable)
> +	if (!intel_vrr_always_use_vrr_tg(display))
>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   			       trans_vrr_ctl(crtc_state));
>   
> @@ -759,7 +759,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> -	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   
>   	if (!HAS_VRR(display))
>   		return;
> @@ -767,13 +766,8 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
> -	if (!intel_vrr_always_use_vrr_tg(display)) {
> -		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -			       trans_vrr_ctl(crtc_state));
> -		return;
> -	}
> -
> -	intel_vrr_tg_enable(crtc_state, false);
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		intel_vrr_tg_enable(crtc_state, false);
>   }
>   
>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
