Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB7CA123EF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 13:44:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD85C10E674;
	Wed, 15 Jan 2025 12:44:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KgyVyXlC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82EB010E674;
 Wed, 15 Jan 2025 12:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736945081; x=1768481081;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Jpgl4cKrO2JIB1cL0tM/dS6t0UIj8F5wWBOLK4juOxk=;
 b=KgyVyXlCdWfgJrjQ4SRr+JoJo+DAQjNMKYH8v2jM+gPspmSaJHYQ4VyY
 7ycVvHQ3nq64pRwLnMTL8argIQ0m2auInLlqQNeFvZNucie7lTwtfKVB+
 mpfLNLOYJZp6SzK9/o3eJGn6XaEtFp14VJdHAHlGVZ7+1FV9sX2cRDHjF
 pZWMJ7khFM1lR18r/ZV3k5Fwl8S1PgE/5aixVpWG7Cni26eqmfLoddUb1
 NSk5Yxd2cgTDzC3obp49DJ3vUXLxTRtI7vNFqy+TicFRGFOuihy55XlTH
 sbVGUwzALznuPlpJ6JHy4cHK9A1refMQHKn1fSQh5XCDxLXXp8KaB/4Cp g==;
X-CSE-ConnectionGUID: wOJzCcarRTmFm6v2AQtJKQ==
X-CSE-MsgGUID: FgoYaL/fSYyinNl/gPRlWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="47864893"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="47864893"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 04:44:40 -0800
X-CSE-ConnectionGUID: nURD1MjtREahJ7j2obx4Nw==
X-CSE-MsgGUID: wQ2HS98GTJSFm6kiG+jANg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109167870"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 04:44:39 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 04:44:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 04:44:39 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 04:44:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L/aiglaOuQT6HIxziZLQm4HJ9DgjTGpVMjBEiwdhIqZrhGrRseNfJ1RSzkL1CwTaoZdr5ozsjE14clHBX+95iVXJNeJt9Jfe9mA9SziuhE5ZbxofOJxB6aEE+JJeqUVDZNYYcordqCodx8jedmSrCN1q0ftnPJ/blfp9qZiKyQgFtLJdq+6JZqtzB4zIYho4vuY9cl0HuGiTXg1XcuAq4FthO+KISuPRvStyv+LJYSqBQNgEPAYXbLEPGbrlDqHn/IrzQXJZTc8/R6Pr7BjnuO6mh4OMMFO1tDwwzMZgKmFODDpl/1pg+1za3Is8q8SCz2tImCU17x+O+fhZN6D4RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vstwntdABoFEv181h6H1Zqq3unBc3y1eyI/WEaRQflE=;
 b=vv9cmyS2FBfBgM6ki2AU3olrVFHehfWE3Y0drO8NiftZ3rxXIhY/lhlB62KiW1wgmUXpTijD/KwbwIpgNydJ+y7s5VYrpowvWxPMGJArVXS8uvJqqxPsBT/zjV5tIVAiSsCCW/s0mbQL0ZTpsjW2CkC1g4RTtSKLZSgis+fSI3iQ4hXXx1V91unzyNLjzM7FdECZbB1KdoCtw2EGNHRsMj/4jjh52V6ME3dJF2549iDLUBJL79BiHhw0GneZ4SVkDxPNzjGLmPjS748sCK1u9T4F0ovV99tnUv2beGCZ6L1vr4laWuYMT9/99Vc8DaikNrHV4gvr4uNx4MHR5b6YeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Wed, 15 Jan
 2025 12:44:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 12:44:20 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z4afvb-BsavfTC54@intel.com>
References: <20250113204815.114019-1-gustavo.sousa@intel.com>
 <87msfth14h.fsf@intel.com> <173687228001.2823.13065824358956469360@intel.com>
 <Z4afvb-BsavfTC54@intel.com>
Subject: Re: [PATCH v5] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 15 Jan 2025 09:44:14 -0300
Message-ID: <173694505428.3159.15238384116175670777@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR2101CA0019.namprd21.prod.outlook.com
 (2603:10b6:302:1::32) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB6522:EE_
X-MS-Office365-Filtering-Correlation-Id: 6bb05e89-818b-4c6f-90e6-08dd3562548c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0xPdnlBR1pNYUFWZUdBYnNPS1BYaDM4ek40aFBMcnBjajRjM0dWL3gwdWZZ?=
 =?utf-8?B?NXRhaTY3OTJrS2IzVTZKTEd4SVN4ODA5TU9lSlhkak9QdytEVFcrYmUzV1dM?=
 =?utf-8?B?Z01yY3FpeE5lbTZoOXloN2lRRnowWGR4cjk5QlgxdjVCOG5PcjA5TEtsVHow?=
 =?utf-8?B?U2pISkR5UVZCcGRlSStZb2daOCtiQks3TmtnTUJYemEyc1JZamlxMTVBTGd6?=
 =?utf-8?B?dVhIQWVLak04VE1HemMveFg1aURNbU5YcUtSNFlmbU9wMmg5UXlZQW1ZTDZQ?=
 =?utf-8?B?dlpma2w3MXNXN3QvZlorcytvdjdJaUM2bldQMDBraE14QkFYNE4zVjk4bHow?=
 =?utf-8?B?YkIwMlBDV1l2WHZndzVseDJLRUlBQy9RZHh2VzI0WDRldmFra1JCb1ZndnRK?=
 =?utf-8?B?eTlFTFNkQmlCRzk2QXlWbUd6QVBqanBFOFhqaCtmWlN5dXoyM3RJVVl6eHJI?=
 =?utf-8?B?NlBhalY0enIvQXdKZGNrdS93dHlwSnFlcG1HMXJSVDZBbDNsb2JGR096dU93?=
 =?utf-8?B?NU95aCtJcXF3aGFYd05SMkdoWHJxNVg5dUJGbGdhOGxQSjlHREtScnc4anly?=
 =?utf-8?B?bFkwcVdjWWxrM2gyL1VhZ3ZIY2VVQi8vamNjS3gwWHoydGcrVzhsZk14Umtj?=
 =?utf-8?B?emhhWjFITXl4TjZKVzFzczZzZkhBeHBvNHptakp4eE54YkllQzVXbTMvZWRz?=
 =?utf-8?B?RStxSGJRRTJqeXRLaXVZN2QxTndmQ25LS2ZXTVRJME1GYXcyb1ZSelBzQmFS?=
 =?utf-8?B?aXFBaUdPaUJSTEhXU2xrVU80UUVvOEx3YjRSUno3V2hJWkRiQU1GYzFPejFp?=
 =?utf-8?B?ejlNY1NlQS92QjZnTWkwT2cwcExpYWVBTjZDTkJTY24yN3k0b21NZE9TZVpB?=
 =?utf-8?B?ZUFiSjFha1JwUkxacVRSTTRGUDN1aS9jSHdXc2wyQVVyR05xR1Q3WUpEK0Vo?=
 =?utf-8?B?cjFWUy9laTN1MlhJVEpncGdhZksyV3lYSXRVNjVmMFFkbGNhbGRpZE56QkV2?=
 =?utf-8?B?dFRsMmdVZnFiUEwyd2pKeEg5UXl1VWpPZHdqS0JYc2I3U29LSUdNSDlwdTRJ?=
 =?utf-8?B?ZlhEREZLbEFiVlJVWlNmckRKMy8wZ2FCQkpNL0hxWDM1SmUwTWs4WWVnYUNZ?=
 =?utf-8?B?SzgxbTFPSnZYbklYZmF4bTIyaHplSW9taEhZeW5UTE1leU1pdW1sOW1mV2Vs?=
 =?utf-8?B?S3Yyb2FpdEZ1RmY4UG9zbUxlZTV2dmhtZWd0dy9mS1R1T0dra3JNamg4WTRI?=
 =?utf-8?B?bEQ4RHFScklWeFl0SWlpbXFBVUNKSE91OVhBaGc2aTcwSmFIRmRhaW1GakRt?=
 =?utf-8?B?NEFPVGtoancxem52QVo5WkdMRkVNR0dUMGVqOTNWT0JkNG5RUitISnlyd1lp?=
 =?utf-8?B?cHFvT1hwa1I5Q3JibklxcGdLVysycWRmRmJnYTBReThmMlpZWU9ydG1Na0hY?=
 =?utf-8?B?RUdNTS8wZHR3eGtjbDZPWktxVVBra2hHK0tTanpsL1R5Y0NDTUlpbkthZEJm?=
 =?utf-8?B?NDNyTGQxL25ySFFJWkhZTTQrN2I4TWZwa29qMUNESDR1dExDVXRvMG95VDBO?=
 =?utf-8?B?bk5ySnE4YmZIQ21JSVNVaDJRb0FIT1dJK080L29pYW9sOXR6NEJiaHV3Zm1u?=
 =?utf-8?B?aUJ3cE5Jd1R4TU5ZdVV5K3Fkam1FbS9nalUwZk9Edm1GZW1JL0xvRkp6aHNQ?=
 =?utf-8?B?MDQ3R2puejdDeTBpUDdMZVhISXBTa2tVVGZzaUR6TFE5OXA2OWN2SWdPd3E5?=
 =?utf-8?B?bkpSd1VPY0xZc1VNc01DbW0ydW1qV3JLdWthcTJaR0RCb3ppUG5kbXY5VDQ3?=
 =?utf-8?B?Y3kvSytDNXE2Q0MvNHh6L1BDeEpWU0w0SEZITCt1aXJoVFlzNTNkRVY4WFdP?=
 =?utf-8?Q?YgirKLE9zBOlG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjRydGJpS1B3VjBTUjl2OGpnNGF6UjdJS0RkU3NBZFBvQWs2Z1h4RUVKdm1N?=
 =?utf-8?B?YTdhSml1SEg3VG5YNmZDVDQwTFVjenZYSXptZnkyeVRENWIrVXE3cTRycmVX?=
 =?utf-8?B?L3U5RHVOaVprLzZMMWp0RnZHR2h2M0JKbTdReUN0Y1IwYlIyRmE4Z1Bub0NY?=
 =?utf-8?B?K3VrbC9SM0VTRkg0bSs0MTEycUJOWUF6M0lkTVlxQkd3T0YvVE1JVmEzdjBx?=
 =?utf-8?B?MElUZUVmRWRmeDRjOXhxOGhHZWdlbFdxL2lNSVl6dElDWnVNZ3FiOWNySmhH?=
 =?utf-8?B?NWdXNkQ0ZjZKZWtjL0tRUjdnN1BhdlN4OE5wSng1SGJUL0dqN2FZZDdURGtM?=
 =?utf-8?B?L2Y0eVU4OHRXQ1NZNjBnMXRxTkk5V2ZDdTR1b2F6dzMxS3V5b0loWUxMQlpj?=
 =?utf-8?B?dC9JckRkajBPYUt5RFI0QlNiZk9neGZkSzdIQitoQWF5UGViSjRiRmNZTTJH?=
 =?utf-8?B?N0JSWHBJZFE2M3JsRXVpY2I2NG9CN1ZVTThFdko4N1NkSE05OWJCN2F0NGhW?=
 =?utf-8?B?WFFEZXUxZUdLdkd2Wm9QWlk3Uk5QR0U0VkhTbUZxY1AzZFRuN0NBd0JMS0M2?=
 =?utf-8?B?R3lDZERFQWx4ZTV1amg0OVdMQzlKVmFqTXJWME9OREViMnhHQitqTXdLWkJT?=
 =?utf-8?B?T1FKYU5FbVhtdzNQRUY3c3lOVTdseWdKS1hVVnhJaEtWTWQwcUdJOE9wT2VC?=
 =?utf-8?B?VVdNNEh6OENLSjJkQ3ZjS0tyNzYrUWFHUkhKdDYvZmRjL1BxbkRVa3REOGdL?=
 =?utf-8?B?ZVI1bnJTQVMwd2R5d0F4amlDK3ROUGhubE5FdVdKaWl3dTQxbno2K2dWTjlV?=
 =?utf-8?B?UXM1VXdQdW1MVVVpQXhyVnY1bjJBK3ZyQ0xuSXREUHFTNncvT1hDZkFPaE5p?=
 =?utf-8?B?R3N6SGxFK3k0bXE2U2JZcDZVMmRCY3lFOTZSc0UzNFdkbm15aXZYZkZtdUIx?=
 =?utf-8?B?OGQ2SU9OR1ZvNTFHSG1lRW85NU1jb05GQ3dDVG5Qem9rZE54SVQzZnYwOGVG?=
 =?utf-8?B?MzFrSEFNL1lGcFdCcUN4VFNoSHpLbXlXODhYQS9FVjdYWWp5YytWVFpPSGZu?=
 =?utf-8?B?WE5QU3ByVHpKQnVnRVovM1hqc0RUSWE0b0tIK2Q2OGdHa3ZBQTM2MWhmcjBR?=
 =?utf-8?B?WUVuYUZSWlJDb2tIai9qWWM1REowN1BzRFloQUx3cTF0WVZMN0RiYVB1bGhI?=
 =?utf-8?B?TXg2dWhqRFNNNVB1Q1ZpSWpiL0tWSnhGcHNNVkxZbWpOaUcyVllhakpML1hS?=
 =?utf-8?B?WktHRmFSb1pHQkR2THRFdFhTTEEvVXpTRmFSdmVSNnE4V1ZVbFF2SElVVktY?=
 =?utf-8?B?SU90MlFHVDVvcXZ1cGs3M3hWeDVxS2NTU2pMODRNRVVSQWFJSFBTa0NPd0RB?=
 =?utf-8?B?dXJ1UVp5K1F5aHNKeE5sMDVkUW5IYlN4dmc0UUd4azRGYkJ1UmZ1MGNQTmdH?=
 =?utf-8?B?UThhU2FTTU9tdmJJNTlEeG56azNvOHJFWDFWWWhmNFhRbEgvNEl6R3JWSER2?=
 =?utf-8?B?R2lDRExocWlzU3AyS0hsOGg3WXJvVVJMTm13V0FZaEIxV1R6d3AzMXNGL3Zp?=
 =?utf-8?B?RjE2Z2VudHdick54YWxmZzNvbkpQR3pPSjZ1WTNVQ0c0cHc2K0pqbUhJRXoz?=
 =?utf-8?B?ZTI1K1BuZW5mUEFidXlwMUVtaGp4a1VsU2pnOWpTRmR2aHRzT1NUcmY0TWly?=
 =?utf-8?B?ODM4eERUUk9sUTdkdEhpTnU3TWRLMS8rVnhuQUZjVkRIZkpUUk14WTFYRTVw?=
 =?utf-8?B?STVOSDJKaG14Zm54V2tzNGdGNHc5TzVMWFBZQ2kvZFhuaTlJbGw1dG92TTBH?=
 =?utf-8?B?ZTdvWmRPY1J0dlJTRUV6QjhQVGN2cGN4TGN3WWF1RGFXU25uaVc2V3VPWEk5?=
 =?utf-8?B?MFI5RVFIVmExV3hJbks5eEljT0Q0Y2dDRWlTOHR1ODBvNnk1S2wvd04wSFZh?=
 =?utf-8?B?UThHVnNLOFRQNFNicEZnZytwSHRNYnVZZlFadGFjT3pPMmV4M3dVM2hCS1p4?=
 =?utf-8?B?TVMrRjBjQTNScVJFcnBKZElnMW8rakZrTVZNaVhBQmNmM3dHb3F0aWhOUmww?=
 =?utf-8?B?c3orZTdEb09vS2lwdEpoWk1TTGpJdVNiZ2tERHRFRFc1aGpleERLMmNNeFFo?=
 =?utf-8?B?MGJPcWs2Y1VKYzM4VHNmOTBrV2tIaXMxWHFhNnNKSUVNWTlCcmtOQ051Qlp0?=
 =?utf-8?B?M1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bb05e89-818b-4c6f-90e6-08dd3562548c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 12:44:20.0409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PHy8Z7Vw4hTjxGy1vPDOkjFdp0DZ9vLgXi5mCiH6+7J2DFKPe0udXd5DUmY3JWKyHFQDIo1ccw3ZkIIxPm4qFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6522
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-14 14:32:45-03:00)
>On Tue, Jan 14, 2025 at 01:31:20PM -0300, Gustavo Sousa wrote:
>> Quoting Jani Nikula (2025-01-14 12:21:50-03:00)
>> >On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> >> The CMTG is a timing generator that runs in parallel with transcoders
>> >> timing generators and can be used as a reference for synchronization.
>> >>
>> >> On PTL (display Xe3_LPD), we have observed that we are inheriting fro=
m
>> >> GOP a display configuration with the CMTG enabled. Because our driver
>> >> doesn't currently implement any CMTG sequences, the CMTG ends up stil=
l
>> >> enabled after our driver takes over.
>> >>
>> >> We need to make sure that the CMTG is not enabled if we are not going=
 to
>> >> use it. For that, let's add a partial implementation in our driver th=
at
>> >> only cares about disabling the CMTG if it was found enabled during
>> >> initial hardware readout. In the future, we can also implement sequen=
ces
>> >> for enabling CMTG if that becomes a needed feature.
>> >
>> >Doesn't this patch disable the CRTC, not the CMTG?
>>=20
>> It disables the CMTG and that's it for LNL and PTL.
>>=20
>> For platforms prior to LNL, disabling the CMTG requires a modeset;
>> specifically for those, the CRTC is also disabled during the
>> sanitization process (not sure if there is a clean way of forcing a
>> modeset from the sanitization routine).
>
>I'm not sure why this whole global state stuff is needed here.
>It seems to me that this should be handled more or less the same
>as port sync. Ie:
>
>- track the cmtg state in intel_crtc_state

The main reasons I implemented CMTG state as a global state were that
CMTG is not a exactly per-pipe thing and it could affect multiple pipes
(A and B), at least not on pre-LNL platforms.

On pre-LNL platforms, we have a single CMTG that can be used to
synchronize the eDP TG of either or both pipes A and B.

As of LNL (Xe2_LPD, in the current patch I mistankenly considered
Xe3_LPD instead), a second CMTG instance is added. In this case, we have
CMTG A wired to pipe A and CMTG B, to pipe B. For dual eDP with support
from the CMTG, both CMTGs must be on. For single eDP, the respective
CMTG should be used.

Yeah, maybe tracking the CMTG state as part of intel_crtc_state could
work. Just need to think then on how to handle the pre-LNL case.

(Furthermore I would also need educate myself on how our driver handle
port sync that you mentioned above :-))

>- read it out

In this patch I only kept the state necessary for disabling. Should we
keep it like that while we only care about disabling the CMTG?

>- add it to the state checker

By "state checker", do you refer to intel_pipe_config_compare()?

One possible issue here is that for LNL and newer, disabling the CMTG
does not require a modeset. So, could we be causing an unnecessary
modeset in some cases?

>- add the necessary bits to the disable sequence
>  (no need for enable right now I guess if we=20
>  force a disable)

Yep, I believe I have the hardware programming sequence to actually
disable.

One thing I'm strugling is to find the proper place to cause the
disabling. In my original approach (see [1]), I had that done as part of
the initial commit. In this current patch, the disabling was done as
part of the sanitization.

[1] https://lore.kernel.org/all/20250104172937.64015-2-gustavo.sousa@intel.=
com/

>- flag mode_changed=3Dtrue for any crtc that has cmtg enabled
>  in initial commit to force the modeset

Well, for LNL I believe we can skip the modeset and trigger it only for
pre-LNL. At which point exactly should we flag mode_changed=3Dtrue?

In [1], I forced a modeset in intel_cmtg_check_modeset() for pipes that
would have their TRANS_DDI_FUNC_CTL2[CMTG Secondary mode] bit changed
(would would only be from 1 to 0 in this case).

>
>I guess the one open question is how to deal with cases
>where the same CMTG is used for two pipes (assuming that's
>a thing?).

That's a thing for pre-LNL platforms.

> We may need to extend the port_sync master/slave
>handling in the enable/disable sequences to deal with cmtg
>as well to make sure things are done in the right order.
>
>Also it looks like CMTG is more or less a full blow trancoder
>(ie. has a full set of timing registers). The docs are rather
>confusing but it looks to me like they're saying that one
>should still program the normal transcoder registers as well,
>even when using CMTG. I guess if we ever implement proper
>support for this we should at least have some kind of
>sanity check to confirm that.

Yeah. I had to go through more documentation outside of the BSpec as
well as go asking hardware folks to understand it better.

As far as I understand, the CMTG is not exactly a full blow transcoder.
I suspect it replicates only the functions related to timing generation.

And it does not actually drive the port. It runs in parallel to the
timing generator actually driving the port (i.e. the eDP TG). The only
interaction between the two is for synchronization. When
TRANS_DDI_FUNC_CTL2[CMTG Secondary mode] is 1, the eDP TG will sync with
the CMTG's TG start and frame sync signals.

--
Gustavo Sousa

>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
