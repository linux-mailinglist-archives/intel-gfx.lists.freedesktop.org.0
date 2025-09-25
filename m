Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB23B9F9AD
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Sep 2025 15:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C529E10E92B;
	Thu, 25 Sep 2025 13:36:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h4O6N8wm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB2F510E91B;
 Thu, 25 Sep 2025 13:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758807417; x=1790343417;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k+G9XDTZ4pdqeiBAwfwmzJQM2Po/EJqz+PXQZeaIuQw=;
 b=h4O6N8wmsBOVtZ1thIaVD9kVvM6gCGca/q2ozunUWm8c7k3idotc/rV/
 2BFIbVQQ7jd6qb3/+2s3tCXHXZOP8LcWVzLxy7zolsJHwIVZJs7PftA4x
 Oi3VN9nFWPoWV/J5gJGXDIDlczerlMX4KKEz4CxlbNjKV4UptywlJsfNr
 //yzQJmbKVTogQKZQqXopDA9jaH3WvkcUyJ6uQv3aMczwo+jc9qlpjbtq
 0PRZGXIoUgQt7Y6uwxVFf2JsMUbn8Dq1D14R8CnNbbOjQkOIiCTgs/KG0
 wNz5MVgR+C5bz72E1tpG2+yqa4FDC5vAnuBJkqpECRPq10SH4mjqXX+T/ Q==;
X-CSE-ConnectionGUID: i4x27JdORHSIqQ7NJwQ12A==
X-CSE-MsgGUID: a3PVBuR/TrqjvH15usxn8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="71745022"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="71745022"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 06:36:57 -0700
X-CSE-ConnectionGUID: wqfyCcwXQ5eyZ84q2Yw8lg==
X-CSE-MsgGUID: DICgEQWxRduszL7Hves5QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="176911560"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 06:36:57 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 06:36:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 06:36:55 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 06:36:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UQUMZV+1pIUozBPMjYyR3n5pP6aIs7Sk2ApbwU080JhfMfOYQ6aZc5GC+cGChkoRxpFRss422hSE0I238IegrBM3mIhx/dtsAPhKsw2jA6vksvYAxclJ55vdA7f1lh/whArHheTvlNBGiOY2LApaIFVrBHoriYvkekPHAfvE7dteRby9K9pC78zTagTNcVwbBVwWCXXZnA7eTNnFPh05IWjLfRCk3fr8uN82ioy2uYuD7s/HP5KBu3GXfyojdhjbJRAYfV7JYQSrs08Z8H5Uinh2SgqEW81TvlJR3noWBZc5Jos44V8/p7F9//qjs1FM+tWSx1hbZne3e5nQwx3qfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FVQEbsLFTW06oFCBNUnph64IUmGRtZYqOLylzQTHPWE=;
 b=Lyl2ApX9yXoUgxsXKTYaxIRKNQpuTcDiTUbCWIMUYziymVRQIjlE4CR/RpZQJF48a1TXPgOVcHTehjTvGbqBVTbAaJS2GVgxW2UwMY+DgOCNQccxCpIeLZIZ2xZKVVv9pk29GtTGbyD7z1BDWQ+2ToXtr+ZsBKEGZPNi9LDonxDVRpZsPVYObEOm53INstC3yORXL2DbVOf7iXGTeqtWrvvTbuMiH7hC0z/LjkLCqmL8BNUgmgOKZ6iXK4Skbudo2HPv6aUpeuJKJwzLSjS/cE8K7OrEOy0cEZhVhAmIsEcIRZ6i5AQJC40BP7WIOBU08nBazhhXx7HKj5+dzWMZwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPF8DE294191.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::843) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Thu, 25 Sep
 2025 13:36:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.008; Thu, 25 Sep 2025
 13:36:48 +0000
Message-ID: <99f4dbe4-e840-4073-ac51-85b3091d4cf9@intel.com>
Date: Thu, 25 Sep 2025 19:06:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/10] Introduce set_context_latency and refactor VRR/DSB
 timing logic
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0004.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPF8DE294191:EE_
X-MS-Office365-Filtering-Correlation-Id: 2353d7d2-ad96-492d-ee8a-08ddfc389354
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2ZpZFEzckpKZ1pGeVM4dEFHbFBucHZJOUJzeEQ3clA4TTE5cFRTZDZwZDd5?=
 =?utf-8?B?ODY3R1dSWVN4UGx0R3AzVStzNVBnd2xoNkx2bXdJcXVuQkcvcTFuekdGc0Yv?=
 =?utf-8?B?QUYwWnhoSThJY1hzait1UG9IVUY3RHpGVnJaZ1JEdVNsbXZvRUg5NkMrTktI?=
 =?utf-8?B?Qi93VUtSZTZoREV0SFh0V2twS01FSXlQS3laRnNZaCtjODdjOWNlQ2lmRFlr?=
 =?utf-8?B?S3Q3eWc3R0lNZGU0MHZ4NVFIeWMwb0VhNkVpTEdYNG9uTFNEMm8xZTVhNW9o?=
 =?utf-8?B?YUlPM0F5ZEJCUDVBNVoyNWF6SU14MmJtWTg0OEdUdGFEcEMxcDFUVW1rdDFR?=
 =?utf-8?B?SE0wSFVyMzhXNVdYN3V5MlVOaGU0Szl5NWIySEJrV3l4UVBOL1Boay9EOTZY?=
 =?utf-8?B?dFFvd2E1ZmFYVE91ak1oUGcwcTcyUzl2MDNwU1UyS1pVbHcyUG14Mk9VRVRT?=
 =?utf-8?B?bE5IV2ZYOXFKVzRJMkVBWEpwVFBSTEZsSk53dVNGSXRyOE1XZkhtQTN6cUJV?=
 =?utf-8?B?Y1h0MWE2WnBETW5HY1JWR2Z4T2N0MnFNRUIwL3hmUVZ1c2M0QVYxSTlpMGIr?=
 =?utf-8?B?Rmw5Ukl0T0VtUVRuWTBUeHBBejcyUnZuK0JCWGpvWjgvOTRLblZpcldSNEc3?=
 =?utf-8?B?N0dXZDRxL2ljcm5UNHRMTzY0QitGVWd1dmxJdnlHVXB4YVpYbzZpMys0aVA3?=
 =?utf-8?B?eXA1bmhNRmdXWWlUd0dZQndQTGVIb3o2QmdYU21OQ2lMRGRqY21GSUladEJn?=
 =?utf-8?B?RlFJNWtuampZZjVIYjNCcVZkbzJweUUxWEpyeDlrNGl0WlhCbDhyMERjM2RS?=
 =?utf-8?B?T1pFK1k5TjdkYlRvVFQzWmZQRFBvbCtGS1hWQjRjYnFUT05nMDNuYis0dVdJ?=
 =?utf-8?B?cnY0dFRPQUtrcXhnenpITTdiQkJOMkEzWHh2bUxFdjgvVHpSb1g3VXNJaTFO?=
 =?utf-8?B?bFpwYzhBb2pVTGdxTGdiWmppWjdQdUlreXl1QkpZYTREeXhIK1RyNkMzV3V6?=
 =?utf-8?B?RTdCWjIzS3JLNDJDTjhhVFd5Vjl5NkxRa2R1cWE2ZmoxWGtQWkZBS25tZEdZ?=
 =?utf-8?B?YkFEb3NldDlVZ2xIUHNiSkxUV2xPQ1pFUE1rUmN0eW5FanpWblBHU0d6Nlps?=
 =?utf-8?B?WWFzNi9YTldwNVJwVkk0TjNLaWdsekhVUWNMeUJ6SElVc0hialRPZXVzSTl6?=
 =?utf-8?B?VW56Q2pYMWJjR3dyNFJIVGV4T3ptMU9vTUkxaGZndjNtTFNOdTlsQ0ZwdEFp?=
 =?utf-8?B?eC9Ma3c4dHZWYlp1ZG9TR21mSzJncVRicTNyUmdGS3ZLazRqUnlmbEF2Uk1s?=
 =?utf-8?B?RVJtVUF1RTM2eGZtakpoaWNlRjZ4aHpjVGtHbExJUUtJcDZRZjVraHJFcThx?=
 =?utf-8?B?TndldUZ1OUNEb01GVUpVYStzamZ2Sk5OUU5pbk1pOHhUZGxtcmMxK0FWcHRn?=
 =?utf-8?B?MHhQcWZHL1AzOHVnQlo3OUE3ZXh4MGE1TGhBanlVU3lGbTJubHkvU0dkZEQ5?=
 =?utf-8?B?ZTc3dlRSMWkwelVweHBNOFVKMFdlQmZ6YWcvSHY0dldPenphQkxRVGxnL3pC?=
 =?utf-8?B?M0ZPWHZqNzRpVkw0MFJIU1ZHNlBDWkhvMkVIQ0VVeWpIQ1BIdWcwaTYzRHU2?=
 =?utf-8?B?VjdEcHBNVDRUYTQ4L0Z5b0NCaklwNkdZTmNEN3BuWDRhMnpaQVNpakNWLzdh?=
 =?utf-8?B?Z0RNY2NWM2tCL2ZJUlpVR09wNlpzcHJDS3hiWExRNjlhVGkwUWRlOHVka3ZY?=
 =?utf-8?B?ZTFMZUpwYm9VSGlCS3c0TVlQQmlkT01Kd1l6dzEzcmp1MlBhQ0RIK2YyRlFy?=
 =?utf-8?B?YUI0RDFQSGhvTXpKcWtJZndUbGdPdmNTYnhXbXhyRWhBYk1iODY3Rmh5cnlW?=
 =?utf-8?B?ZTYxUHdYZS9yUy9BSzlTMEhnOWZhd0VuVEFSU3ZBY3JHb1BLcW51RlhxaEdw?=
 =?utf-8?Q?lAjaT/1/bPYKHMKa8dclZ0xuNNviDP2h?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWtXSmVzVk5vZ0E2dXBvcGlKeCtvWWJ4VmJjaVc4cjZGdUdCZ05hZHhPSDhl?=
 =?utf-8?B?MTRsZlp0TmVna1VSSDRuL1Q0TDlZMzh2WnJUUEM3c2Z2VDIwT0hUN2poZVRU?=
 =?utf-8?B?bUc0NzJGS0p2MUZnNTFSRnovcEZaM2hGV2hhb1Z1QUVKNVBTQ3hBV0hKVWFC?=
 =?utf-8?B?WnJKUHhRcGZOZVE5dUNmM2FEVGF2YXdyeVQwemx6ZmNFQWMxYWJNcU5Vbk1i?=
 =?utf-8?B?OVJ3Wmd5cUlVZGlQSHluOUx4L0xic2dUSWk3WEtSVFFXQ20rWW9VREM5ZTM2?=
 =?utf-8?B?VEpNdi9ZMW93SmUrM3YxV2VIcEoyTXlXL2gxdGQ2WXZHVU5hN1U4ZC9XRVA1?=
 =?utf-8?B?ZXNPekF3cU1OOTBpOTdwWkU4ZFg5VFVoRFZDbGJRY1Z4VnFCRXBCeTZ2Zkp2?=
 =?utf-8?B?VDJxb3BwbStkNWc0ZFVTaUxuaStZdEI3THFHc3VDWjlkUmJrQzJGNFpNZ21U?=
 =?utf-8?B?M0txRnJSWk8vZW1RSy90TG9Zd2VMRktsU205dnFwcDhVQWh2VjBwaS9US0Q5?=
 =?utf-8?B?T1hvbUZSSUhJbUorR2Jyc0pmYnl1YmxmWlVsdC9vTFEwQlhtamlScjZRbGcz?=
 =?utf-8?B?bURuOVY3NXIvejlzaUV2bkZ5azU0UHpyNlNNZndRTmR3YWNldUpjSTV6aXor?=
 =?utf-8?B?YkRIMWlkUTFoQmVQTVBqbEhXTWRsTE5GM3BYTUtSWFNGK05GYXAxSkFncjMw?=
 =?utf-8?B?N1p2QjBrc2lvUEIyaUtISlR0VVBsS2NpNDQzMFhiYTRMUTM5dGd6UGpCQkgw?=
 =?utf-8?B?ZTRuZWhJRUVzSy96dXpUOU9OcHhIK1ZxY1BuL1huN3QzOHRNKzBhVVZodmFL?=
 =?utf-8?B?dFpVeW5QcU91MkM1eUIwWEhmQVFpSUVPVWlkMmNXdmpldExxbzhEdXpPekxU?=
 =?utf-8?B?SCtVNldnRDB0UDZCekVyTFBCZUhtWlFocHhGZ2ltVkxMUitaQmxiRXJwQXVS?=
 =?utf-8?B?SU5kTG1CeFI0aUhyTXNsQXVYVGx0cER2U1ArUmNrcFhpRi9WZksyWElQWEJr?=
 =?utf-8?B?T1Zhd05ydCthcENPTWJUU3JHeUxRTU0rdHd5d2FCbnhVTG1TcFJWMWpYWDZO?=
 =?utf-8?B?L0NHU0E3M0ZVNkdncnZBU3J4VEVUemtHWVNzUUUzZDFiSlJ1YitpT2x2VFJ0?=
 =?utf-8?B?L2d3em4vM1VTMnoyMjZCTmlHTVZEUi8vYlQ2eXNtZmtLNzV6QStBMDdJL2do?=
 =?utf-8?B?NUZJSE5SeEMzMXo1RVIwUmVzNHlUREtoM3MxdWpBa0JmREdjZ05ZOFREMWlm?=
 =?utf-8?B?NlJYTzdWSnJNZ0Z3UFhXZHFvdlFISHBoQ1QxZTBVMXVTS1BGOUdEakw0eURD?=
 =?utf-8?B?Y1pzcE9aaU56cmVvT05BTjJ1clpWQUQrK0VuL0theStCY1ljRWJqVEdoeGZ5?=
 =?utf-8?B?S2RiRjVmSUpqb2d0SURXOG5uOHpuMFQrUHFWako2ZDlTK3pOOU9uU3o5N3FU?=
 =?utf-8?B?ZmNaV1VOaSs1RWY5SGh2WkY2MFc1WDBqRjZWWXhiRDcxU3FKcDkxVHE4SFM0?=
 =?utf-8?B?VVRWLzRCQk9aclFUN1hQT3BuQWE3a3JxUnVFdWZ3T3dSMEs4V0FLVzhCeGQ5?=
 =?utf-8?B?R3ZqWVhpYU5NZnJ2QXZuWjBlZE9UK3J0OXN2VVlMdFNMQkpScEtKUTN5RE05?=
 =?utf-8?B?cVlJc1UwdmVJdzlDQ0M1b0NUUDBHVFBtcnNwNlg2ZERXVWRENkVrbHBYdlVa?=
 =?utf-8?B?ZDR5ZlBRZnhyTkx6MlRYM3dxd1pEaDVDMTBFQmwyRVpORW1GR3lvNkxSU1Bm?=
 =?utf-8?B?TlYvRUpFaUpwTU15YnU1ZUk3S0J0MUhudlpmb2tIUTRUREN0QkhrQVZRanNU?=
 =?utf-8?B?Sk5NUVhYVHY2eC9nVUNPYXBGT2J1VnlITkEzUHpPRE83WHg3QVU0Y2pZT094?=
 =?utf-8?B?bEgrek9SbGk2SDZWc1l4SSt6T0NCTmd1OVdzaW12UnE0ZmxNNHp1Y3BML3NF?=
 =?utf-8?B?TWFLMWg3cTNKTitpTGRMNzEvQ2s4ak1vWHRubmg4RUdyTFFZVk8wa3FUQVQw?=
 =?utf-8?B?Nmt2NlJkVlU0T0RkWmZvZHRkWmJ6RzR2UHNjL2UwNDExWGFQYlFlS2d1d0w3?=
 =?utf-8?B?VlJLTXc2d0dWaTNNaXJobWh6TjlHRC9VUm1aTVVuOXA5cjRvVjR3QmlMMmVG?=
 =?utf-8?B?R29MenJYem9hbGxReUJLVVQ3QnJVK2NaWlpNam1GVjRRaEc5Q1hqd3NyQzFZ?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2353d7d2-ad96-492d-ee8a-08ddfc389354
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2025 13:36:48.2219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7OC4nrr4BxTZS+gS+95tNmPX5Cit9gpRRJINOishnzh+aSPH0JS+y7VcYP2jJTj2sbmqQx9YC/iArle86Px49wRP8SRj9WFVqfIASc/fqfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8DE294191
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


On 9/24/2025 7:45 PM, Ankit Nautiyal wrote:
> This patch series refactors VRR and DSB timing logic by introducing
> explicit handling of Set Context Latency (SCL) the number of lines required
> before double buffering to safely program display registers, aka W2 Window.
>
> Previously, SCL was handled implicitly via vblank delay calculations. This
> was a hinderance for later work to optimize guardband length. This series
> formalizes SCL as `set_context_latency` in `intel_crtc_state`, enabling
> consistent tracking and timing/delay computation across platforms.
>
> - Introduces `set_context_latency` to track SCL explicitly.
> - Refactors VRR evasion and DSB wait logic to use SCL directly.
> - Clamps guardband values based on hardware limits and timing constraints.
> - Renames helpers for clarity and removes legacy delay logic.
>
> Rev2: Address comments from Ville:
> - Handle SCL for TGL better and meld patch with previous patch.
> - Drop patch to use set context latency in evasion logic.
> - Add patch to introduce REG_FIELD_MAX based on FIELD_MAX.
> - Added new helper to wait for SCL start and end lines.
> - Other minor refactoring suggested in comments.
>
> Rev3:
> - Drop patch to rename vrr_vblank_delay and instead add a patch to
>    replace it directly with crtc_state->set_context_latency. (Ville)
> - Fix few places where adjusted_mode->crtc_vdisplay was missed. (Ville)
> - Minor refactoring to make the helpers consistent with other parts.
>
> Rev4:
> - Add new Patch#10 to drop the single-use dsb_vblank_delay(). (Ville)
> - Minor changes as suggested in comments in Patch#8.
>
> Ankit Nautiyal (10):
>    drm/i915/psr:
>      s/intel_psr_min_vblank_delay/intel_psr_min_set_context_latency
>    drm/i915/display: Add set_context_latency to crtc_state
>    drm/i915/vrr: Use set_context_latency instead of
>      intel_vrr_real_vblank_delay()
>    drm/i915/vrr: Use SCL for computing guardband
>    drm/i915/dsb:
>      s/intel_dsb_wait_vblank_delay/intel_dsb_wait_for_delayed_vblank
>    drm/i915/display: Wait for scl start instead of dsb_wait_vblanks
>    drm/i915/reg_defs: Add REG_FIELD_MAX wrapper for FIELD_MAX()
>    drm/i915/vrr: Clamp guardband as per hardware and timing constraints
>    drm/i915/display: Drop intel_vrr_vblank_delay and use
>      set_context_latency
>    drm/i915/dsb: Inline dsb_vblank_delay() into
>      intel_dsb_wait_for_delayed_vblank()


Thanks for the reviews, pushed to drm-intel-next.

Regards,

Ankit

>
>   drivers/gpu/drm/i915/display/intel_color.c    |  2 +-
>   .../drm/i915/display/intel_crtc_state_dump.c  |  5 +-
>   drivers/gpu/drm/i915/display/intel_display.c  | 58 ++++++++-----
>   .../drm/i915/display/intel_display_types.h    |  3 +
>   drivers/gpu/drm/i915/display/intel_dsb.c      | 54 +++++++-----
>   drivers/gpu/drm/i915/display/intel_dsb.h      |  4 +-
>   drivers/gpu/drm/i915/display/intel_psr.c      |  6 +-
>   drivers/gpu/drm/i915/display/intel_psr.h      |  2 +-
>   drivers/gpu/drm/i915/display/intel_vblank.c   |  2 +-
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 84 ++++++++++++-------
>   drivers/gpu/drm/i915/display/intel_vrr.h      |  3 +-
>   drivers/gpu/drm/i915/i915_reg_defs.h          | 10 +++
>   12 files changed, 152 insertions(+), 81 deletions(-)
>
