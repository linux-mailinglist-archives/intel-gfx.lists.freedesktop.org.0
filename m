Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA71397396D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 16:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F9310E810;
	Tue, 10 Sep 2024 14:10:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SXfsDuY1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758CE10E810
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 14:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725977419; x=1757513419;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VvrCMzQlrNf5vK7yqDHjydI1+UsCdYdWJxeBq9hC6zQ=;
 b=SXfsDuY17Fyf0dJmsaJJbct4q+2B1xx7hpODxYY1i6ZL+t3xCaOZn7Py
 0bMm0kVkYY/XfWBEAhQKqr3PofTq/HoAc5bzwV1OounHzfXLP4r4IcsoC
 BY+wRw+HfNw5MoOhWwtgt4XPWwoJYxK1adnBohtIwb1GMFVhmlwhJu8YJ
 XtZ08ma43eIMaghsy0dzviN4yew9lmvQuAEHdYZ4KAedcBLo/WhDs9lZ2
 srbCxPV2RaVHQ82J4WK03VuzjVtnpHMjEgOePD+ah7Ia5V4p4UINI65VL
 HqwBYeAu8kej7hfvUKSoitVW1O61UyYfwV8FJdn0wi4lyOjSel4kkOoO2 A==;
X-CSE-ConnectionGUID: llMi9DKeQjuf1bf9ncnnBA==
X-CSE-MsgGUID: zuKRcLxXQmWEZmm11XLrBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="47244835"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="47244835"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 07:10:18 -0700
X-CSE-ConnectionGUID: BRaArwtwQ4KBn+yrHQcr/g==
X-CSE-MsgGUID: 9Vf4v4oHSeuBR1xXvtDsiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67283241"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 07:10:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 07:10:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 07:10:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 07:10:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 07:10:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uPqhtSS04Y0Kmb56Sz7mxSsT00+b0z1Wlx4TSz+lq5FInFq2Gv//Nv8CB6aqMAKsDpFX8MTkh6kWQ2NRKILe+N18vAPy4jd5Lpx9fbOdnl+yC/e5gYrTj0xGNLxUTD3/jy45vrH89Nyborys3cdTk67wFTQpdhiSPh13QZ1oLIxm5lk3vg24HZv66aMkMGYIZArr1Yw1AJlTRgZP6i/tdEH6ltFGF/0rQgfCuMZrvx4ZQ2C8QXw11LmqZIZzHsf5Ne/4J3tWLdSr03kl9M+UaYM/unmIJfqD4Oa6pHIdxPsv/i0cfmOT083zKAxtwKCyPOurF1xWxRkp4cR18DI5rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=syHHx+arwukDMru8egi1XZvdfHUvQPymWUP91V92Hf0=;
 b=e+pGQVVMH7Lki9kqdmXsfGDEB49qF4/mE/lCcrGYDhCM2B75zOSsf/4m+JqAJdx01pdZD2HH85MFyQ+PUKkC+m3iHQWHUgfD6fcG4Y5gsBRcqBDXZhnTlxUaVgwYx9gNIT/RWblU2XFA4Sfm4wu3wI16jwWKMuYZg+K6Z62VeC07SXMVXmPJiw4yKPWpoUjYE5zr9ctVyHjI+ykwa52R9qLXjvSMQPgBHMXV1qLUQ4yQ0l8BSwTJl1Ulb23r9BbtiWhQBjLjGThCA4KVCJ2nYliBi9XN/CMJtlNtDeoO2Ww171Flg/L14VjOrH2IWbWQsf90YejtYc2wPpU/VRyxUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6215.namprd11.prod.outlook.com (2603:10b6:8:a9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.25; Tue, 10 Sep
 2024 14:10:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7939.022; Tue, 10 Sep 2024
 14:10:13 +0000
Message-ID: <e90b713a-6f17-41bd-a5e8-f125fab0b1b8@intel.com>
Date: Tue, 10 Sep 2024 19:40:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/14] drm/i915/display: Modify debugfs for joiner to
 force n pipes
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-2-ankit.k.nautiyal@intel.com>
 <ZtsVs38KicPJZff1@intel.com> <ZtsXjQoYgtEVdjRK@intel.com>
 <b62b3ba6-7954-4dc8-8ce9-2aba2b7c712c@intel.com> <Zt760UZiDGIvQGth@intel.com>
 <4f8e660d-94af-4eb0-be6a-a503c01ed617@intel.com> <ZuAxsG4lQsqJhhJK@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZuAxsG4lQsqJhhJK@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0001.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6215:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a1a55c2-d59c-4997-6932-08dcd1a249b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y2hxU21DYTlyNHlVYWpDOFNZVVFLR2FzTEFHREI2Mnd4bjN5MHo4SEF0aW1C?=
 =?utf-8?B?Tmpyc292WTNDM1RqWmMvY3dPUTJjMmpDZnpTTjk1QXJPN202MDV4UXArTWVm?=
 =?utf-8?B?cEpGeE1zc0VDdGFOK0RKeEZyVjZTY1pjVTMzcURmWjVYWTAvRFNJUmlOaEtT?=
 =?utf-8?B?UGQ5VzRGdEJJaUFwYjNQdHRHTVdSOHBlaVRyeGFRa2QxRTdZcUtzY2V5YWp3?=
 =?utf-8?B?bCtZKzRhUzNTRHVVVEg2SVg4bkkwUk8xYllBbzFNa1FQNkZ0eCsvRzVmNmhO?=
 =?utf-8?B?b08yTUNZaWFvMXRZY3ZtWGRmYlg3eGhyMGtjTWR6Nm5mYkJYVkoxazJudlFV?=
 =?utf-8?B?VzVuV1htQ24rRzNqcGxjVWQ5Wm9XOGFoRno3b3Y2NUIvVDNDOFpjUWY5aUxp?=
 =?utf-8?B?Ymc5NHJCaENRaWJJMllINkZQNUVyckc1TCtSdjl0NGU1Z0VMNHRkS3o2ODBN?=
 =?utf-8?B?WksxQ0x5Tk9Vck04WDVZZVV5aVh1V3cyT3JEUDBXeHo1aXFpaE1RUDd5MjV1?=
 =?utf-8?B?Wk1mK0k2VCsxMjJ1ZUtJSnR5YkF6RVRGWCtyUStSbUZKbk1nZFVGVm1aT1Z4?=
 =?utf-8?B?R1U4amoxZUF1UnV2ampHZ3pKYzVEV29uUHlkZDMyVDVhMkpnazlVdlNzOW5n?=
 =?utf-8?B?TVVPYWYxM0tzTFZ4MzB0dkRMbTd6STFzUzVWR0g2cjIzZXdyMHc2SHZhY1dV?=
 =?utf-8?B?L0RKcWtvREVtbVMvM3NpRDFBblBHV3dvSlYrcGZldUFMZmovN2V6bkl5ZmRL?=
 =?utf-8?B?RU9DZ2syelpMU0Rma045NFdxYmZHYU0xVlg5NDNXbUI0T3JhbGVGbUROZ1Np?=
 =?utf-8?B?aFdEODhaNTFZc1hrU0VYZkxsdHlXTnZJZE1FWUxEZzFCZnJTYnBwYUcrR0Jx?=
 =?utf-8?B?VERyblRFMkFKVjJ6bm9yS1pBNDVCWEZPOVZPTlRtR253OXZSY2JZVk0vWllq?=
 =?utf-8?B?NHBWWFlKb3VXY202ZEF4UHJvQjN0Y3pqVlp0NTNTYkVDVkc1Y0l3L0lSK1RQ?=
 =?utf-8?B?MitDNjdvVm1mUk12MmhibDJ1U1Z0N3VCaVgyYVFCSVg1aU9IL1M4ZWVKVUE5?=
 =?utf-8?B?b3dSK09LLzdMVzVENmZqWXdSRjVuVHpiTmtlM3QxQ2hBZGFPS0dua0dMZmZr?=
 =?utf-8?B?cUcxeEFDOFZyTE1ScXJkd05IMitCRUV3VGNzTFQ3eng0TG5PM2FPV3dZYXFw?=
 =?utf-8?B?VjhBaG5ncUF2TVF3L2ZkUGE2bmNSSUdvQlBrczhkSWNCTzM1VjlJbm5oeXA3?=
 =?utf-8?B?c2tZUWZDd1VkY3lDNzBDQ0JVNmNKU0U2S1duclhreWJLRVF1dWhFZGU2VzNa?=
 =?utf-8?B?Znc1cEFRNlJHOURXZXkrSGFQZEZyN0pxVDU2THhwSVhmakNva0M2bTFCYVA2?=
 =?utf-8?B?RGlGMm51WXVxYU1QVExzb0RXYlV3U2Y3K2pRdkk1Wm84UmVLdGp2THZreDhn?=
 =?utf-8?B?Q0pMd3BFVThzU0dpem1YdGtHNnR0Q2FZMnRLdzRaZDl6TkJ3aTIvN01zc1l3?=
 =?utf-8?B?bU5ONVd5U3hCbG9EaGZsRitaa1hWL3hsWTNqVnI4NmJsL0ZvbGFWRVd5OW5w?=
 =?utf-8?B?YUxhM2NOMktraGsyYjBEaVpMeERQQWNTSVRjSVJUL01EeU5FeEtJanR0Tmt3?=
 =?utf-8?B?TDlIbVBjajBrMFdrREROQkxLRHFaNnhwcW9qL3FRTE9VNDNia3c4VmZpMWlx?=
 =?utf-8?B?WHRvWWhHQWVrWDRvUFY5WmlxQkprN2JTMml3WVJqQ2NaSTJuN28wM1hCaDcx?=
 =?utf-8?Q?WaXcqnprhnSwdggo/A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VklTKzQ5VmlHaE50eFdvSk1YQS9kcUJ4WHNjcmU0WTVzb0dNUXp0SE9FNkRy?=
 =?utf-8?B?VmVVRkFsRkRuU2ViZWd2RFdvS2J2Z1Z2SW13N0g5dGxFUDU3ZXd1WmV5eHhw?=
 =?utf-8?B?SmhRU3R1QUJwdFoyRDBiR1F5QzA2ZWRKWlUrRkNJRzBtVi94WTR0dE1LRExF?=
 =?utf-8?B?alB0QkVaMUVmN1BGMHJUWTBCelhDc2xSZmxPWU1qanY3RmZLb2pDaTlyQk53?=
 =?utf-8?B?eEJTcHJqc1BZTHRWVEpaanNxcWttbXdWWEc3TkhFNXJXeHVhK01XK3F6ckJM?=
 =?utf-8?B?VTNydDZUVlRwRDJzQzlTVlpQNG9MdEQ3b2E2YVdhcUFGWHVLQ0lDaHdTZmNr?=
 =?utf-8?B?S2N5MFNNc1B0Yld2NFlYTVEwUjYxNTNMcCsrTDlzVmlBZWFBTW1CWFB4cHNC?=
 =?utf-8?B?UFRsZzRCdE1VSW0wSHVOS0RrUXB3R2o5cDA4Z1lTU2xiTVB1c0plTWs2Z2pI?=
 =?utf-8?B?NnFHOEp0aEFtRnNVOGxKMkl5VG1nMjBBMk54MmNmNlJRUTYxLzF6SjUrQ1RG?=
 =?utf-8?B?RlRlOWpZcVdmYWRNa3pPeHJtN3dGeWhMdlhtK3pLNk5LTmYrcEJpOVRCcms5?=
 =?utf-8?B?SjJRODhzRXQ1OCt4cjh4U1Z1Um9xUWxZRlZGeEJVWXVvbzVMdk9NZElvY2xU?=
 =?utf-8?B?eHdUMFQ0TTgzZjhvUHArRXJwUEFyTEVyN2R1OHBpOEN1dlcrMmVmVDBJT1kr?=
 =?utf-8?B?WWhueGRXbWV5dXhPV2xLYmU3VlZ5YWFyTUlKMFU1VitFc2VDQU5NT2FDNHpq?=
 =?utf-8?B?OXNGOHB2VFNodVN2Ri9CeHVHUUlZNTFxK2hERlJYWlhaenM0RlNzRm8wL3dl?=
 =?utf-8?B?VnhuQjJJaC9lQ0M2TnZBdmI5NXQyK2pHRkxrWWkrNkQvaWdQNDdRd0JKNnBh?=
 =?utf-8?B?QUFVLzVmeVRHdW5PZXNkNzVpaTFlU3c3dnlLOW9iMWxxR25ENFpXakNoYlkr?=
 =?utf-8?B?ZnNyb0RHM1NqK05CeHNEUXRFdWJoaFBGOHVLMk9JMVBFNzdrNlN3NWJiUWNl?=
 =?utf-8?B?OWwwVGtpSEhoMXBIMnM5VWtsVmRLWnJyNFNxb1ZWNDBKN3RkNUFzazFJSUJH?=
 =?utf-8?B?L2FOQzJIT1FxOHdZdmI4bUFaZ200Q3NWOXl2cCtkbWhEazZoYXVmejRPcFdt?=
 =?utf-8?B?NFZzWjZvN2FWMjdWVzhnbWNVbGxzSXI3OW55L1dKUkxDK2xVU3dSaWg1aXFw?=
 =?utf-8?B?R1pjZjRkSWExZjlKZDV4b2xMZlhzdEJkUXZ0bzAzY0RCdVVxL0x6Q2hvckgz?=
 =?utf-8?B?NE5zVWZUaDBYdVBEdmtqbzZWOEpHdzcwY014L2lIVCt1TzAvV3ZpVFdGWnR1?=
 =?utf-8?B?bmZCZyt0M3JLbXJCMUNhZkdCUFJELzVpL3puR0JOVFlYUkVlTGt3enRPbG9V?=
 =?utf-8?B?azZ1NHlPL0QwWGY1ZDc0aHJjUy9JWkxKUDFMZjZVTTBISXA3MHdyR2RnWTcy?=
 =?utf-8?B?dXBPSFJDMnpOODFXck9XZTNTWERzOVRDelBmZGJISE00SUxIVmdWaGJ4bHBr?=
 =?utf-8?B?d0tRcFhqTVBod05aNm56Mzh6cXBWTXB4VzRMUkdxSjZhR2szNy9tWWYzSHZ5?=
 =?utf-8?B?ZkNqdTh0UFNSZVUvOXRBd3ZPMk9HYkNPY3VXdUNXYXRweVExc2JaWkxNRlR1?=
 =?utf-8?B?TkxEeVpNUEpLdkxGQ01KeTM3TENLQzNhV25xSVQ5MjVxR3hKOEtnVEpGOStB?=
 =?utf-8?B?czBHaGJWU05LN3VmVlNIZzI5WDdhcGJXNmR3VzdNOUJzWFRwRXREalkzSUM1?=
 =?utf-8?B?UzRuMkl0OW9BcEhaSGo5TmdHdmtHZVpESU1Vcm9MY3ZhVlg4T1VvbUF1RitO?=
 =?utf-8?B?WmlTNGtvTm5oUzdLYWkvUmo5alozOEh0eVQ5MXNoZmVqOU0yZC91dG9LNEtU?=
 =?utf-8?B?S0F4UmcyM2FqN0EzNXVGZFl2WHJ5V0RxTlNIWk9OVFNGUEswRWY4TEo1RGJ1?=
 =?utf-8?B?ckRDa3U4azBHQzg5RS9vQWR1NGY2Wk52bzdTVkRsdlZFaGd1VWpqeGJ3UDBj?=
 =?utf-8?B?S2NwN3lBR1dzalZKSUpJRGdYM2JLUGFTZmx1ZjlGeFQyTE0xbVIxeWo0Qmhx?=
 =?utf-8?B?K2pOUmpFRnJvd3VWQk15TnNMT2FIeE8xbGtPMU55NmlIcTRya1pKb0hRazNx?=
 =?utf-8?B?dEtEOHFmVVFVdkh1Q2hpS2M3NzBuTW1rODBGTEtrN3FhaVZxdDZrZ1duRUV0?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a1a55c2-d59c-4997-6932-08dcd1a249b8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 14:10:13.4804 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3JqAbRGOETEXaCURray6c/LLiSpH5KrdSX9hNH/howpKBS9U8pUh/bSceK1R02R4bzeMbDfuEwVLTo169FhD27SgNnYxZl2eu7PI+LFeBRU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6215
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


On 9/10/2024 5:16 PM, Ville Syrjälä wrote:
> On Tue, Sep 10, 2024 at 11:12:30AM +0530, Nautiyal, Ankit K wrote:
>> On 9/9/2024 7:10 PM, Ville Syrjälä wrote:
>>> On Mon, Sep 09, 2024 at 11:10:16AM +0530, Nautiyal, Ankit K wrote:
>>>> On 9/6/2024 8:24 PM, Ville Syrjälä wrote:
>>>>> On Fri, Sep 06, 2024 at 05:46:11PM +0300, Ville Syrjälä wrote:
>>>>>> On Fri, Sep 06, 2024 at 06:27:54PM +0530, Ankit Nautiyal wrote:
>>>>>>> At the moment, the debugfs for joiner allows only to force enable/disable
>>>>>>> pipe joiner for 2 pipes. Modify it to force join 'n' number of pipes,
>>>>>>> where n is a valid pipe joiner configuration.
>>>>>>> This will help in case of ultra joiner where 4 pipes are joined.
>>>>>>>
>>>>>>> v2:
>>>>>>> -Fix commit message to state that only valid joiner config can be
>>>>>>> forced. (Suraj)
>>>>>>> -Rename the identifiers to have INTEL_BIG/NONE_JOINER_PIPES. (Suraj)
>>>>>>>
>>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>>> ---
>>>>>>>     .../drm/i915/display/intel_display_debugfs.c  | 71 ++++++++++++++++++-
>>>>>>>     .../drm/i915/display/intel_display_types.h    |  8 ++-
>>>>>>>     drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>>>>>>     3 files changed, 77 insertions(+), 4 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>>>> index 830b9eb60976..0ef573afd8a1 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>>>> @@ -1504,6 +1504,73 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
>>>>>>>     }
>>>>>>>     DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
>>>>>>>     
>>>>>>> +static int i915_joiner_show(struct seq_file *m, void *data)
>>>>>>> +{
>>>>>>> +	struct intel_connector *connector = m->private;
>>>>>>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>>>>>> +	int ret;
>>>>>>> +
>>>>>>> +	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
>>>>>>> +	if (ret)
>>>>>>> +		return ret;
>>>>>> What does that lock do for us?
>>>>>>
>>>>>>> +
>>>>>>> +	seq_printf(m, "Force_joined_pipes: %d\n", connector->force_joined_pipes);
>>>>>> This should just be thae bare number. Adding other junk in there just
>>>>>> complicates matters if anyone has to parse this.
>>>>>>
>>>>>>> +
>>>>>>> +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
>>>>>>> +
>>>>>>> +	return ret;
>>>>>>> +}
>>>>>>> +
>>>>>>> +static ssize_t i915_joiner_write(struct file *file,
>>>>>>> +				 const char __user *ubuf,
>>>>>>> +				 size_t len, loff_t *offp)
>>>>>>> +{
>>>>>>> +	struct seq_file *m = file->private_data;
>>>>>>> +	struct intel_connector *connector = m->private;
>>>>>>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>>>>>> +	int force_join_pipes = 0;
>>>>>>> +	int ret;
>>>>>>> +
>>>>>>> +	if (len == 0)
>>>>>>> +		return 0;
>>>>>>> +
>>>>>>> +	drm_dbg(&i915->drm,
>>>>>>> +		"Copied %zu bytes from user to force joiner\n", len);
>>>>>> Leftover debug junk.
>>>>>>
>>>>>>> +
>>>>>>> +	ret = kstrtoint_from_user(ubuf, len, 0, &force_join_pipes);
>>>>>>> +	if (ret < 0)
>>>>>>> +		return ret;
>>>>>>> +
>>>>>>> +	drm_dbg(&i915->drm, "Got %d for force joining pipes\n", force_join_pipes);
>>>>>> More.
>>>>>>
>>>>>>> +
>>>>>>> +	if (force_join_pipes < INTEL_NONE_JOINER_PIPES ||
>>>>>>> +	    force_join_pipes >= INTEL_INVALID_JOINER_PIPES) {
>>>>>>> +		drm_dbg(&i915->drm, "Ignoring Invalid num of pipes %d for force joining\n",
>>>>>>> +			force_join_pipes);
>>>>>>> +		connector->force_joined_pipes = INTEL_NONE_JOINER_PIPES;
>>>>>>> +	} else {
>>>>>>> +		connector->force_joined_pipes = force_join_pipes;
>>>>>>> +	}
>>>>>> I think just something like
>>>>>> switch (num_pipes) {
>>>>>> case 0: /* or should 1 be the default? */
>>>>> I suppose both 0 and 1 should be accepted. 0==not forced, 1==forced to
>>>>> exactly one pipe (ie. no joiner despite what the automagic logic
>>>>> is saying).
>>>> I understand 0 as not forced. I didnt get the meaning of forcing to one
>>>> pipe.
>>>>
>>>> Does this mean, disable joiner? (Perhaps do not use joiner even for the
>>>> cases where driver thinks joiner is required)
>>>>
>>>> How should we handle the case in driver, where it is 1?
>>> Whatever code that determines how many pipes will should:
>>> 1) if the override is non-zero just use it
>>> 2) otherwise determine the number by using whatever
>>>      logic is appropriate
>>
>> Alright, If I get correctly the driver logic will be something like:
>>
>> int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
>>                                     struct intel_connector *connector,
>>                                     int hdisplay, int clock)
>> {
>>           int num_joined_pipes = 0;
> This variable looks redundant. You can just directly return
> the correct number from the switch statement.

Yeah I was inititally going with that, but changed later. Will remove this.

>
>>           switch (connector->force_joined_pipes) {
>>           case 1:
>>                   num_joined_pipes = connector->force_joined_pipes;
> This would now return 1, which is probably a value we never
> want to return from here. Either that or we want to never
> return 0 (which this code would do in some of the other
> cases). Not sure which way is better tbh.

Currently I have coded to not allow 0, so we would return 1, 2, or 4 
from here.

But I am open to what ever makes semantics intuitive, and handling easier.

>
>>                   break;
>>           case 2:
>>                   if (intel_dp_has_joiner(intel_dp))
>>                           num_joined_pipes = connector->force_joined_pipes;
> Hmm. We might want to make the debugfs knob already reject the
> !has_joiner case so that the user won't even be allowed to
> pick a completely unsupported value.

Alright, will have this checked in the function where we parse.


Thanks,

Ankit

>
>>                   break;
>>           default:
>>                   MISSING_CASE(connector->force_joined_pipes);
>>                   fallthrough;
>>           case 0:
>>                   if (intel_dp_has_joiner(intel_dp) &&
>>                       intel_dp_needs_bigjoiner(intel_dp, connector,
>> hdisplay, clock))
>>                           num_joined_pipes = 2;
>>           }
>>
>>           return num_joined_pipes;
>> }
>>
>> With a value of 1 we are kind of forcing to not use joiner.
>>
>> Currently for testing sent this to trybot:
>> https://patchwork.freedesktop.org/patch/613627/?series=138444&rev=1
>>
>> Regards,
>>
>> Ankit
>>
>>>> Regards,
>>>>
>>>> Ankit
>>>>
>>>>>> case 2:
>>>>>> case 4:
>>>>>> 	break;
>>>>>> default:
>>>>>> 	bad;
>>>>>> }
>>>>>>
>>>>>> should do for validation.
>>>>>>
