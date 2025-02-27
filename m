Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D630A479F7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:16:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D9DF10EAA5;
	Thu, 27 Feb 2025 10:16:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jWyU8D4v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9666C10EA93;
 Thu, 27 Feb 2025 10:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740651399; x=1772187399;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ErqIDpRlI9+lE7Ni3Hga34ynxh13OcUZUSFJbYcpu1U=;
 b=jWyU8D4vYgcKlVpswVpKkN36fNtiTyOqlQeMNocgmUZEMiVwCp3tnDRE
 HfK5Qq/XedVH3sZMgav2nEdPxMdMkJYMMjJI3Od2wHVc/GYMV/jw38bMl
 rYBUoCP+Magd2rtQDqzvPKBLjPuLIw5fGBd/+qIcsKJM4OH8zoJVwreSw
 p8H/726mTYsLsQSmWX4pKKNtvxPwRoahxtv+yftdXYiEDqMB2Evjp4Agd
 AgoHqBuOFoxjM28E4vJaWuZJJa4285x2Vjb5/Nah86XTx4jCK43LH/+rk
 FpfGn7Qjlp7aQCaOvjmOJtPV+F5y30JMzBHZhJvgzGMyZ9SyitqQ1Ar9r g==;
X-CSE-ConnectionGUID: lSB89tQdRDW34+GmipmrFw==
X-CSE-MsgGUID: beSLbM8wTjS97AnvgC829Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41415669"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41415669"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:16:38 -0800
X-CSE-ConnectionGUID: c6obJEGlTXGwF6ByKgQsag==
X-CSE-MsgGUID: f5k2gDCVTS+HQy1kv4cH4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="117009240"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 02:16:38 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 02:16:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 27 Feb 2025 02:16:37 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:16:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iZpUq1QQqjk9Eslr3Pzb/rNhpRx48JScZAcjdNqrEYFhVxZCOU2PblGl9b/vkbCg1X2LIqw+ZGOZXDbt/4yjwjwflc75/RACB4j3f+kVoZ5VxjF52IYqW+Fu9+aFgza80RdqVec6LpT1+YTNDlx4ZgEeMWBnrU2GBCxiVJJQVLIjOTnywYiG250b9L02w+3TkF84wJY6rpIIY4vW+pJsRFYMZtk9KYsnZkenk4s4QOy44N0N6Xz9+gmlW/GxlzAxXCweyDpAg1v17MvFTap3LpKAPnLr3OD10POqiDiLEORUH6kyC8wimsOLkmsBf/+ne+jnorkJLjY/INcuItRoMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6CK+VsTNU1odCLgYH3G30wuf58UGN3P3Axr/E05oyO4=;
 b=VqILegHjoZDZIuvjSjEew40y4toMowGQcFtTztjfPUsOTTFCVuCFeGpHYT8lt6KL9NWwEclEqfLqNuSh6kHK1hvJcKM1xBpSHp8094L5sKdU++4wv0QyQkwdIXPA1TNV3X5DiumziowSsHfB+CAaEsiziQ6wFF2XnqEtfsg/s1Q4YoZLr4Ilqsk19cW3sAJsLpR1CKZbgyLPiXfKHLp+yLba+jy508crETm9JKEtTtmni/Pp11KYZSz/VPR3//S3mAwPkcU19X6rzWMyVD2jO+742RIrhAPNKkCL6s9riDbKfbnjteUbPxd7LN1PL1veIXNfS5h04XTcifod91opiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8453.namprd11.prod.outlook.com (2603:10b6:510:308::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.21; Thu, 27 Feb
 2025 10:16:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:16:34 +0000
Message-ID: <7d0af3b0-ac43-4ebf-a9d4-13cdba8df9d6@intel.com>
Date: Thu, 27 Feb 2025 15:46:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/20] drm/i915/vrr: Track vrr.enable only for variable
 timing
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-6-ankit.k.nautiyal@intel.com>
 <Z78SqQsiwE_syvg7@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78SqQsiwE_syvg7@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8453:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e497c10-9649-4d9a-841c-08dd5717d00a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RE1vTURwZklzRVQwNVlubTdkSytGTklQRVo1K21CdmUzelRrTituRjI0UUxy?=
 =?utf-8?B?MHcyellIVUhVQmF3a0hwcnVhTDNPdjZSUm80eDlXQ3RiVjdGTDVkNVAxRHdn?=
 =?utf-8?B?VVRDdXBMN0tlZkN2ekV3VzY5Y0owL3NsRGR4WjM1MjhzWlNQdzJQNHFzTFVB?=
 =?utf-8?B?Qk80TDFMVlNOYk5MY2xoTWxuNjB0NGx1YzM4Y2Z3RVJzYlM0Q1lSaXdIb21J?=
 =?utf-8?B?MHFpTDRDeU8zWGsveEluQWJFTDZieU03MUdKSWJvTklzcXM0K241RXhGUDFU?=
 =?utf-8?B?Y04weUMvRkFWdGJPUmJsWGtSTGlLdFdkRVcrcHk1azdvaFlRRnZUQzdneER5?=
 =?utf-8?B?ZVkzeElJZk8zUkxQRkdVMkRrb3diLzhRcjQ1MHYrZXh3ZlZvMVJWV1ZGZVU3?=
 =?utf-8?B?NVJDMU1kRC91SEhRMmJZSmo3TnpMQWtYSkpIWnptdXQ3QnJMbFBVYVc4VXU4?=
 =?utf-8?B?bWdXRUM0UDFSQWpFTU5lT0pIZmlpUU5lT2Fhc3MwY3JjeW5TdlIxb0R1b0FK?=
 =?utf-8?B?Smh5ZE9uYTVESzdIWVNRN1l0OVhPblNYU3NsMHlGOXhLYU5na1BlZUQxdW5F?=
 =?utf-8?B?N2VYNVdiT0IvTUhWNnBaUzVmejVRS0t0VzdoMGdYMGxrbWsrQXR5UlkwK3dW?=
 =?utf-8?B?bFBSQ0hMYVBQS2ZoWHlIcDI3SjRUUEhSd3F6MjYyYU0rSEdwZHpWNUpEWElk?=
 =?utf-8?B?VFhkT0llRjlmdUxNVFo5SWN1c3QrbDBjcTc0OTdqeFlBK2g5ekd4QmlDRmNr?=
 =?utf-8?B?eUJKZlNYQXJCUmZ2KzFZNGZBNGVKZGsxSUhDOXhoTFdreHJRdmp6OEE5ZDVu?=
 =?utf-8?B?Q1ljQzlsbzFkSzhaS29RTWZzOE9RcTVPbEIrNitKUCtwWlNnbUFVUE1MaHA4?=
 =?utf-8?B?TXczRUhhbUM1YjBIVlpMNG1tZVRXMDlKQ2E0d1d0R0RwTndkWGQrM0pqdkJL?=
 =?utf-8?B?ZXZGTWZWNnVUZ2Fqb2FXYS82a2RNaklFL0QwNkdvNnJIaSsvQzFOcUNLaGU0?=
 =?utf-8?B?UmFGczYzcEpkYjI4VWNVeVpaUU4yTHF4NU13ZTBDTk5jcHRMelEvQ1V2YzA5?=
 =?utf-8?B?VzNMbjVOdTF2OGQxYlRZcFE0MzNkSnFTRVpOaFZ1R24xWHRGZFVSVWpIcEQ1?=
 =?utf-8?B?UmdISVhwYklsTVVQckh2MlM0czNaNEtVUTIvdXRzWnNiOEtQQ09TVUkyTkxI?=
 =?utf-8?B?dEVJb2lML1k5ZTNGTFRSVFVva2dGWkVDaTkxSHFZWFJubmtTaDlSYS9LaXRK?=
 =?utf-8?B?T0VIekJHcWVpdmhJOGlNUjNUMFJsWFhmMG1pcTM4amEzMmpGdHFVcGg3cHor?=
 =?utf-8?B?cjA1R1FuRml5YjM5TmFtZUthRHBNaWk2c0ZMVXRzUFV6dE5IaDJkTGpsMER3?=
 =?utf-8?B?ak9oa3RuT3JhT1M5N2djMlM1T0Jjc1N4OWVQbFJ1bVM0WkFjVm1xWkd1NFlk?=
 =?utf-8?B?R3ZWaGN0QmNnMFFjajFFVk5HTVJkTjRpdEl6N0J0aGtzYm10NThsVzMrbFZX?=
 =?utf-8?B?TnVlcnBHZTBYdkx5V0M2aEJ4UXp2TVhzMy96KzF6UmZjUFVUUEhPaEdzVkNT?=
 =?utf-8?B?SVpjQVpOdVpNTGx4aUJwYkk2eDBSUW8xMUYvMTRNSXNubHhTS0FSb2Jsb2Y2?=
 =?utf-8?B?QXpreEpRME9MN0JzMXJnVXlPNk9TcHkwazNRUUliNUl3YlpDa2x6OXBMT09z?=
 =?utf-8?B?Tko5U2xGSEFHa1BQdm0rVWVUbU1LWFh0bGVBSkFIblB5SEV3TkUwemVtUFV5?=
 =?utf-8?B?WHQ4VU1lSnYvai9SWkdWanBidk5EcmNxNWU5Q1Z0cG1LTzk0NWdqYVRIOE9v?=
 =?utf-8?B?VkV2YjYxdk52N0hxNHBCeWx4b2tBaHdHS0tyVmlBYXJjaW1KYXFjV3F6Q2M3?=
 =?utf-8?Q?vu2JE212hTv4t?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmlEQk9MbnRqYmpaWGp5anA4VGJ6N243bHNTQ0xsRCtzbDBXUnVSKy9GSFZW?=
 =?utf-8?B?NmZpQnBlak9Zc1IyWU9XZXZWTE1pVjh6d2dDU1BwUU1JWWpCU3Izb3Q3STl5?=
 =?utf-8?B?LzdLM2tyd213dVR3WkkyMVhQdmtabGNjTFZvdkdaM1c1VkxIdmJJL1hnVTZI?=
 =?utf-8?B?UzN5VG1GRnFNcHRXU2ZVY2RUVGVJNXJsaldZMXZ1ZGkrc0I3RUJNQ2dOclA2?=
 =?utf-8?B?Z1k4Q1RwUWwzdll5czA3SHd3RStPV3RYVDdYaVRVVkdhN2xYMmVQWjlmVVdn?=
 =?utf-8?B?RGFzblVKaGF4cFhIazNLcjVhWnU1eXo3bnpJVlBxOUthUzBxMVdqUlJDa2hE?=
 =?utf-8?B?cjlhR3ZraGhGWGdXSFVzQzlHUlFvMXNtWHljMWdNL29adUZSKzFzTFFOMGNU?=
 =?utf-8?B?RzBoYk9CV3VWVG5uQ1pNWGJjcmtvWFZ6dFc5eENnMEYxc3VVZWpUT1R4SmRS?=
 =?utf-8?B?YlZEKzFRTW1wNSt1Nnh2NFRSZGF6OWtUNDlTSmNjajhpOTdVc042VWtJVXhF?=
 =?utf-8?B?eThwdWJJY3pvbFNJRlJOelFCZmJ4a1VzMTBHLzEzSVM1WHExOGQ5T24vUHUx?=
 =?utf-8?B?amVzNlk3akc3MVNaY3VtQlBFYlhHWGtkTGIwQ0g0dmQrRkVTTklLa2VnbTBa?=
 =?utf-8?B?U3AwWXZUWlhwSS9JQUZ1R3Q2VmI5SkVpK0EzNDE5MUJneGRFS3pVTXlZTVhY?=
 =?utf-8?B?WlRldThqME9GRWZsaGJhSHJweFQ5Y2J6YTY2ODNuOGx6azNsQTNLSzFoZ3Qy?=
 =?utf-8?B?ZFB1YktHTk9LakJHdWVOOUVxTSt6bFZiWnVSd0h1d2pqeHRXQUFyNDhZQkll?=
 =?utf-8?B?QTF6Mm1ab1pNdTU0NVdPTHhaMmtHMVlORXZ2YmhOVlkwSENTcCtSS2MzbFNS?=
 =?utf-8?B?Q3U0Z2NRUlZ6MDdMWGZ5UHhmZmRCYW1RMWh4NzVHb3plMTZmazdCVWFUMmh0?=
 =?utf-8?B?d1Q2bnFldmYxTk4zOUc3aE9mekxDclFkWS9nL2lXWWRSMFlzQ29GNnY4R2xn?=
 =?utf-8?B?VGQ1OVhRQjFlQ003NU54UmRjcDZYMW80a0I5NlJOMk9zWkozbFJuZjlLZ2NE?=
 =?utf-8?B?d0RFbjJMOXp5Rk5oczZ3b2RVNXMzOXFpMGZlN2hOUkU2T0NOVXAwTXZMTW1Y?=
 =?utf-8?B?R1FQMXZnc2xjZUxKMHJZbHF5RUFiUXppVnZyZE9FVHpYRXBFWFdOVCtWZHZj?=
 =?utf-8?B?aHZyMDk0T0M5QzYwZWQ4R3hVZlpZdGJ6c0s2KzMwbldMN3hZMzl0TnoxRWRO?=
 =?utf-8?B?Sy9JQUJMSlQzTXpMRnZaaXdkNksyZ0hqWms1QWxVWDFqWmRYN2JjQ1FWNkYy?=
 =?utf-8?B?ajhTQXZJajgzcDVRWlFsSmJUS1JtdUFPS2RwWWx2TjRzRzVmWi9Kajhrc0Z5?=
 =?utf-8?B?KzdyR0Q0SnFFQWhPZDM3MHFhcCtpY3d6OU1QYkR4UVFtOTc1dWxmU2JkUzZR?=
 =?utf-8?B?TW9hNkh0dlZyZVJEWXh1b1lZVzAzd0JRNFB0S0lIZVVER2lIRzl3YWhIZ0N3?=
 =?utf-8?B?U1ZIc1lPWWhLTiswNk1POE1pajBtRytLUUhyc2RtaDY1VXJ4eW9WaGhLb2xm?=
 =?utf-8?B?ZFZjekdXaEtQZmJTU0k3di9hTFRaYXVFQWVXZlZTM3BlNWJZV3REL0JhSkQ5?=
 =?utf-8?B?YmNST256WTlyU094TWJLaFpEUTBlNUtYZ3BUZyszQmhlTnVuOWRIRkhQZXlC?=
 =?utf-8?B?bTRFTFFiNmtDc0dlYWJTOWY4d3htbG9sekFYQkVUMFg3WkVwUlZQcENad1Bp?=
 =?utf-8?B?czZHelN6UXJUMzFCcEtDakJ3M3hqY3NsL0FyemJVN0x2SktJbzQ4M3F1Z1BM?=
 =?utf-8?B?L2xzdnA1QVNheFRSbGNydHVIR3ZhZDdIaGRTdVFaRXkzcVJYTllPb1dOV2Vh?=
 =?utf-8?B?akZuK3Rjd01vUHhURnV4Q1BTUXovNDlraGNkak9yb0V4WklPS2M2SXFxK25E?=
 =?utf-8?B?MWxlZ2twNW9GVlpLZGpGWlcrWVE1SEtveHJWR3JhZW1UTjFqRjBFUXVKWCth?=
 =?utf-8?B?SW9ENEM2R1VSRGV4SU9iOTdqN0JmaWQ3RGhVVUV2MTU2RTNjNlRCc3MwYlcv?=
 =?utf-8?B?Y0ttNFI2MXVJQWMydkNUbGwwT2h0MUl3VmFUSlh2QUkvaWl1TzI5a3FVU3pX?=
 =?utf-8?B?Q1RLT09NZEFLTU1XSEdiZW55UnVlbVJNakVhUnRTM3J6dTdNTzA0OU9EeGlp?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e497c10-9649-4d9a-841c-08dd5717d00a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:16:34.7426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SSd0H8xtp1xOZo/afQuuYIJ79BCA3V2FzhZvWXwJKviv9pNcg3QVpWXA6eOm5xyCV2luduQCIqPeyEof3EOG+95mp+noiytP4ZRgk92kJO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8453
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


On 2/26/2025 6:40 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:47:02AM +0530, Ankit Nautiyal wrote:
>> Since CMRR is now disabled, use the flag vrr.enable to tracks if vrr timing
>> generator is used with variable timings.
>>
>> Avoid setting vrr.enable for CMRR and adjust readout to not set vrr.enable
>> when vmax == vmin == flipline (fixed refresh rate timing).
>>
>> v2: Use intel_vrr_vmin_flipline() to account for adjustments required
>> for icl/tgl. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 13 +++++++++++--
>>   1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 0ee7fb0362ce..4d7f29be55b8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -226,7 +226,6 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>>   static
>>   void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>>   {
>> -	crtc_state->vrr.enable = true;
>>   	crtc_state->cmrr.enable = true;
>>   	/*
>>   	 * TODO: Compute precise target refresh rate to determine
>> @@ -528,6 +527,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>>   }
>>   
>> +static
>> +bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return crtc_state->vrr.flipline &&
>> +	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
>> +	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
>> +}
>> +
>>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> @@ -537,7 +544,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   	trans_vrr_ctl = intel_de_read(display,
>>   				      TRANS_VRR_CTL(display, cpu_transcoder));
>>   
>> -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>>   	if (HAS_CMRR(display))
>>   		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
>>   
>> @@ -577,6 +583,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   		}
>>   	}
>>   
>> +	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
>> +				 !intel_vrr_is_fixed_rr(crtc_state);
>> +
>>   	if (crtc_state->vrr.enable)
>>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> This thing is now inconsistent for CMRR, but since that's disabled now
> I guess we don't really care. Just need to keep this in mind when we
> fix up CMRR.


You are right. I'll add a #TODO here so that we take care of this while 
re-enabling CMRR.

Regards,

Ankit

>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>>   }
>> -- 
>> 2.45.2
