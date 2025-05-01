Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D48AA6099
	for <lists+intel-gfx@lfdr.de>; Thu,  1 May 2025 17:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52BA510E868;
	Thu,  1 May 2025 15:17:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DwjeMde2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD33410E867;
 Thu,  1 May 2025 15:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746112648; x=1777648648;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TJRTMFTYYs/RhH6cyaPP6j1cdrx+2oPdMU9gbxPhpxw=;
 b=DwjeMde2wF8OMRWjNtxY9vZATX2K6QitFm2cmUMgyYm/JPQ4xbg6rLD2
 B7nAVsBkUPBDAUmAnmAVv7L6cr8CGf6Forxt8LaWm0jeuW+XWgDQn5bhG
 EcQAP1E0WWJF5+8EsfmG3TugZEOUwKx7JnG75pGPL8MMEOjnS9qGKXTwl
 IqefUEvDBCOAqM1BZDJR4QMqt0f/P2Z+wyOsHvLeNV6hqHz9jhcz3wgTE
 r4rEKPPIi1MS8QTvsmH81BdPH7G9Tkf0rK0+N2csr1UXPSHc5SiusS59v
 VJGe47Qv4MYnSnBdhWNurs+Di2BmpHk77KGhpqj9w4APWeFETmFDOcx46 Q==;
X-CSE-ConnectionGUID: aOGvXFAJSsyFPYwBvUabrg==
X-CSE-MsgGUID: hr5GmbOrT6GXPYFE365sdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47039362"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="47039362"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 08:17:26 -0700
X-CSE-ConnectionGUID: hQQvhxq6SQOtubT4Z0ePvA==
X-CSE-MsgGUID: cyFJ+LU3RWWx8whjOnyc7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="135372135"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 08:17:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 1 May 2025 08:17:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 1 May 2025 08:17:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 1 May 2025 08:17:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x5ikraTIqgUybOH+njFO7g1g3tLl43zoWzQW4UzRjL7TdDPbBMQcbXhrQ7OidRPwIfUJQ2uV+sG2M0b9GKFu1Lbot6E1GzrI1cl49pA9+wrDQW+2QqfamqZ+CSCdGvW4X3zCzSQe/k/ipYYNWRocNwSmM/c7Ac0Weo5H6RHLb5daDsO19+/AUH3nvLZ+5pXPaXVNJOClGbVtBJk4isGBIlDZ1ttAgjV9sKyIjNO94cqIxhAU/CjWjGZl0g6AeEo0e+JIEJjtekYkNCcRiDrTY5lQhtti8yBFdoCVwba48+hv1zOcc9mFLm6inj/KMo436dfs7tTpfkui7sS2oJoeCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jn71QBO7fCzDADwlcaP5R1kvpSO/JXw28V+pocVS8go=;
 b=NC4pUmu8ZFPVUTQ8DiM8NsDVHT4nvT2Ld1wJIwzbFjHtD6uONRMKmxBoeKlnlhtuqCrtXIOrLkBFhiZ/d1jbqwDPhZTVZHlIzdFRlNVD7XF7/BeTY8JSKx9TC6q9An3RcuXUN0F20iNQo34o5EZT6wyDsryaBOxzKkVs0NT4jU6+RLeAwpCbM84ZowEILb2Miv6iABHj8YAtmIJptJsbYpeS19T1+aAcj8cjGWk+HEpK7FOvojZahkfjNW9+Kg9WvsI1sSwHqM0YHRFKspGpROL6DOx5emi32TyX8UITiPCWrR/xwL6aQC8rKOHxDSlTeaDpuhY7gXdNDvlS/5ZUuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Thu, 1 May
 2025 15:17:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8699.019; Thu, 1 May 2025
 15:17:20 +0000
Message-ID: <3a97d2ac-648a-453e-a6ff-b6645441ffab@intel.com>
Date: Thu, 1 May 2025 20:47:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <jouni.hogander@intel.com>
References: <20250429143055.130701-1-ankit.k.nautiyal@intel.com>
 <87msbxvps2.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87msbxvps2.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0173.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB4833:EE_
X-MS-Office365-Filtering-Correlation-Id: 0125ba25-1824-4e5f-3209-08dd88c343d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SWQ2NElndGc2UDhJTnZJSWZpVHcxMFZXSTk3aGVOajBtZFYrTzFhSzVkSEEx?=
 =?utf-8?B?S0hkTzFYT2tET2MrYWFlYVZ2REVDSDlrc0VOcUh3dlFUR3NnTHUwT21aWWxG?=
 =?utf-8?B?Wm9Rb2kxMTJyM0lYcGw1bnZIQzZlWVc1OWh1YjVNQ3lwdmJhRWhLMmlUYjhz?=
 =?utf-8?B?WWRXUmpOMmhmMkJMNktJZHo0YStMSW44SXlSdUxaNG94TWVuUGVINkZNbHd2?=
 =?utf-8?B?b050TUVlRkhIVGFLT3NSZUVPVnZTQTV2U240NWFJVzVVakRORWVPUStERjVh?=
 =?utf-8?B?dDg0a2VodTBSWnBLZTB4MTlSS1dMSUtzcENPcXFobEo2ZEdsRzAwZE9UR1hS?=
 =?utf-8?B?NTVERThYT0k4UjBCdkZIWkpXTnNhVTY1dmtIcE55RWJkbmFCRmQyR1U0eTBD?=
 =?utf-8?B?RFNwTU9DL01uQUVkeHY2OFFTNGZxSmErOUJWRG5yUERKMFg3VStXU090SENs?=
 =?utf-8?B?QU1ObythMXR0NnZyRk1SVFJLRWRrOEpkTkp3T3ZtZ0JaYW44ZE8zaXJ3Z21M?=
 =?utf-8?B?VmRqZ0NXeld0eWZ6eEpaMm5CSUpGWkc5SlMzdFVPdkZiWmh2Zy8zTnpRWTIy?=
 =?utf-8?B?aXBIUVVySERLZkxsWW9uV2d1cmgrWTR5M3RXaGs5ZEY0SUVLbXRBMGh1eUN6?=
 =?utf-8?B?dDA3aE9ONjZDUlB5UG5YUy9ReUE2NXpXb0NraGdPTkVxUnFXNDJ5WkhNTjZv?=
 =?utf-8?B?ZHhPRTZrY3p6WmZ2ck5sbldXc1haQkRtYlNscmZzR29mcEQ0ZlIrY21YSXJW?=
 =?utf-8?B?S0lLTzdrYy9XOW9STlF1V2dWK25BTVppUzJmemQ1WFVSZjRPdk4weWJIQksv?=
 =?utf-8?B?Ty9WQ2tYUUFCWUJhM0Mxa2ZCOHBiWHhGblhQVm0rL3ZEcWVLODgrdloveTAv?=
 =?utf-8?B?SU5GQzM3TmVDZlJycFVMd2VZSm5rZENIQVlJQTF1L1Q2bVNLNHFMbVVISXNX?=
 =?utf-8?B?UDdnOTlhTnArYWM5bUJsem9oNXJtLzFHbDA4U0kyS2c1cTZva1czVW1FRTVK?=
 =?utf-8?B?bmJ3MXFZM3NlS21sVVBWZDVJQ3NhLy9YNXFZdG10ZjlTL1plSS82eU1NVlQy?=
 =?utf-8?B?dFRCRzJ0UVZ0R1JLR1gvRERIUTlsQUFua3lkbmxpNS84ZG9xWEprWXQzeHlN?=
 =?utf-8?B?RGs2Ny84bWNRWngwNGRIRmgvcStCdTExL094VzZwcHc3bWhvU29sM043a1d2?=
 =?utf-8?B?d0EyNmNmWXBwK3pjUnpwZHZwc2krWWdaVGY1eUxWb3ArV3RxL2VHL3E0ZjNP?=
 =?utf-8?B?VkdybUVCWkVKUUNvQmt4NTFDNXpUKzdxanVIWE5KVVJzVTRybjhzdHhQczZy?=
 =?utf-8?B?anJZOFB3N0poODdBQVBaV2JsUm1id1JVOEY5R2FOeEZ2a0ZhZmJIb3U4S1cv?=
 =?utf-8?B?aDdLVUlPZGZack8vOHZsVE8wNll0SHpyYWJBNC9uN1crZWtrRHFIVzRod3lZ?=
 =?utf-8?B?ZlN6dE1BZFg0L0FmMXI0TFQ2dTRxSVREUVpMc3ZobHhYeHVhcWwxeWJxZWNH?=
 =?utf-8?B?cWRiL1VhM0MrbE9jUVBiQmFFOHRzaDMvUFRoc0dld2J4RkIweTRRS1I4cVY2?=
 =?utf-8?B?bUlIeGJrNUl3czlUQ0dPOHdsbFkrZ0hwRThVYVBFcE5vTm5NWHgrRGMvRjR6?=
 =?utf-8?B?akMvRFhEK0c1bjlCSEl5UkNaYndsYXZYaHNmM2pOZC9IQVNmV012aVRpNE10?=
 =?utf-8?B?SSs2WGVmMzFlbUhQai9YSTZDdVluaFc1dFN3SHkzK1VyMzJaNDBETGh6dllr?=
 =?utf-8?B?N2dUZkpydzArQkppQVNLaHVybVFMS1RtQ2o2OVJZZ3pOMmlKUkVoRHM4RE5I?=
 =?utf-8?B?c0Jtc09ZVXdJakR0SHQxVFN1c1g3TVQrOW1UYkJYRDJobkE5WFV4enAxcXNw?=
 =?utf-8?B?ZldML1laT3AyTFN1dlh5RkRUdFd4c0hvSG5qbFcyUXJaOUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTNIc0hoc0Z1M05tSGwrQTFsMWNSekRBRVBIZUZKTGFqcG8rbEZKMzlabFRC?=
 =?utf-8?B?UXdkOWxpRGg2TjlKZGl6Q3VuSjZQblNpT0s2OHJqaklWK1NiY05kSS9BcmpS?=
 =?utf-8?B?Y1RWYUhHNGRydks3UlBBZ0h1b0hRS051dThYRjhUWFU0UnI3NE9ycEtMNXQv?=
 =?utf-8?B?MUJtNmlRT1NxaHBjdzhoaVNZdGNQelBlV202V0RxSHgxUG40UEF0enVWWVJq?=
 =?utf-8?B?bXZ4Q1RVb0JKUi9pdCsveVJqdkhZYVFlQ29iQWlMUmxwVjhzeDJISHp1V1F6?=
 =?utf-8?B?aG40SWllbFNEaHVqWFQzUkd3ZWdmd1Jva2gxTUdMMkZ6aithdlMycVZWNHkv?=
 =?utf-8?B?ZTVPeHVxZndGVzBEQUJaQkQvc1JKZnJkNG5WUDk0VGJnNHltVW9aME85UzE3?=
 =?utf-8?B?QU5qSDZUSjdVa2t3YTlTRUxyN0l3cEhQZjF4Nm9aY3pDT2lJUGg1MVJ4WFB2?=
 =?utf-8?B?S1FrdllrWVNOZVFXTjNqWU5TYVZGOFh3WXk3NkJONk9DajVQcy9wRlhNYlJO?=
 =?utf-8?B?NkI3MVNJNThjQ2NDbVJ2enlnemxTejFNNXVTa2l4RWgvSnpuc1IxdUJuOGNG?=
 =?utf-8?B?WVBRMlFzMmhMMlA0STVzVnkxUVJOUWxsT09aVEdnRWQzSlc2amtGbkE0VUFH?=
 =?utf-8?B?VDZ3TXVpS1kvN1hScUFrUE9JVzBQbUNCaE1hSmMvZXN2UmZpQ09ya2g3aXNO?=
 =?utf-8?B?UlJNeFRsOFV1bk9pMklqZVpRNCt1eUlldnVac1RCRFhIMmlDR21VRmdjV0Rj?=
 =?utf-8?B?dENmb0dIeTRSbXRQSDZGbkZ6UHNNbzEwSjNrMyt5L1llUUdQRUVHNmxLd1FB?=
 =?utf-8?B?cGgzbG9VcUl4ZS82RDNOa3E5QkVMeDB1VzI3aWZsVVEvYTlDVXFKbXRzOEJG?=
 =?utf-8?B?d2xIV082MFRTczZxbVFWOEVNajlNVytwdm5obWx2eGNDQ29OcXZnWFd2MDd4?=
 =?utf-8?B?T1RWUFRFcWVmZ2lRdzgyeGpDY0pnNVZRWlZLUTNsOGtWQ29aNk9XckVMR09v?=
 =?utf-8?B?anNBZEpZUDllMW9XTUx4Y2dzS01mbGxSaHBMUEFXdjFhdUFwWDBhNlkvaDBZ?=
 =?utf-8?B?YjJiOVozZ25vcTFscEExUlRxRVZRR1ZMNGZ1SDhGc3RXTjJONEhuaFpOYkpq?=
 =?utf-8?B?dm1hblJFWXBwdktadkoyTTBpUForWHVxemV6OVZhNlY5bGxaM3Bza0RTQmpE?=
 =?utf-8?B?WnVEeXBkOFZxdU0vWkkwRkVtMURvRmltSjgwRFNmQ3hhWDN0YnUvM0o2b3NN?=
 =?utf-8?B?UjJGQnVNY1A0eE5ZMmJybmxxREpDNXQwWU9hWjBvdXp4a1NvMjFCSVZGOVJm?=
 =?utf-8?B?MlJIQ2FTRjlEVTBNcGkvc05RNDJxemdHVEdCcUEzVGJUU1NJNjM0a3ZLam16?=
 =?utf-8?B?WldRa0FzbjRtS2Z0NUllRHRnRVhMNkwxWGY3ZGo0S2ZkM0UrNExpT3VlVk54?=
 =?utf-8?B?ZlJKWUV5aTJuZDUrSzMzbjVNREErMWVhTzRSQTltN3g4eEJHUEl4YkFLSzFC?=
 =?utf-8?B?YkM3SjJaZFdRWnFmUmo5NU9KeWhFbTFoYktDa25na0lhMHFTSEJ3bGRUSjlE?=
 =?utf-8?B?Q1E4Q3dldWQ0ZHRnSmFrMlFwTUtxeDA2cjd2TGVTUnhhUjhwZ1Y4V0lCN0pt?=
 =?utf-8?B?N0lOTmpzaXZZL3E5bHpxc3pVbXNpa1krTkRsSTQ4YW9BSUFoQ1BzVzk0MFdI?=
 =?utf-8?B?enhIblZvVW5ReWtkMGFQWGhzbGpCQnF2ZDJiVTVJT0o3RzNzdkpKSzlhaE9X?=
 =?utf-8?B?Mk5EYXpZTkwxeFpZQWkxU1RVbFZqSzZMSzYwMDVwMDNiRTVKYTErTjE0WlNU?=
 =?utf-8?B?RWhIQWcyVVpnNXdsZFpsU3dLREhEM0YwcjJ1aEVFakNrTllUem10U2Y0SUZy?=
 =?utf-8?B?dXVuU1pVcGRJV2w3QUpGQlRVakJRUkFOVEN0d1RnUmFnZ3Y5Yi9vMUE4T2ZZ?=
 =?utf-8?B?Y3J4aXhoMzlJZ0xlamVZYVRHTy84SGZ2SVlYYVNkVXlhSnlMeTB0bjdqOE9n?=
 =?utf-8?B?Z3NKQ2JZdjUvWFBnL0hWOUtFeHdVQU5SZWVMVHhlQ3gzN2JGZXQ3cW9tbHBs?=
 =?utf-8?B?STJEU2cwcnNZS1M3R1ZyQzFIcnBidHBPbGVtdE9oeXJlL1gweExhV2tsd3Rt?=
 =?utf-8?B?NUlUL3RxZThvOG5ZN2p0OVJibGhKY1pJK08vMmpJbnpJTXhlbTJXUVh3Zzlo?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0125ba25-1824-4e5f-3209-08dd88c343d8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2025 15:17:19.8593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MVXKRLHyqjAUN02kpnabvyxcwPQvum6U+cGKyziTs4Ysa8XcuLxrF8+pDU7ToW0M/Jly2AAvrc4Nvn1Uyw2iqyped5fNxEap3gx3rnx2GgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4833
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


On 4/30/2025 5:12 PM, Jani Nikula wrote:
> On Tue, 29 Apr 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> The register EMP_AS_SDP_TL (MTL) was introduced for configuring the
>> double buffering point and transmission line for
>> HDMI Video Timing Extended Metadata Packet (VTEMP) for VRR.
>> This was also intended to be configured for DP to HDMI2.1 PCON to
>> support VRR.
>>
>>  From BMG and LNL+ onwards, this register was extended to Display Port
>> Adaptive Sync SDP to have a common register to configure double
>> buffering point and transmission line for both HDMI and DP VRR related
>> packets.
>>
>> Currently, we do not support VRR for either native HDMI or via PCON.
>> However we need to configure this for DP SDP case. As per the spec,
>> program the register to set Vsync start as the double buffering point
>> for DP AS SDP.
>>
>> Bspec:70984, 71197
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c      | 20 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_vrr_regs.h |  6 ++++++
>>   2 files changed, 26 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index c6565baf815a..2447bdfde5af 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -576,6 +576,22 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>>   	return false;
>>   }
>>   
>> +static
>> +void intel_vrr_set_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
> How do you pronounce that function name?

Haha, good point!. Now that you have pointed it out, this sounds very 
silly and particularly difficult to read aloud. (^_^;)

Perhaps intel_vrr_set_packet_transmission_line would be better.


Regards,

Ankit

>
> BR,
> Jani.
>
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	/*
>> +	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
>> +	 * double buffering point and transmission line for Adaptive Sync SDP.
>> +	 */
>> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
>> +		intel_de_write(display,
>> +			       EMP_AS_SDP_TL(display, cpu_transcoder),
>> +			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>> +}
>> +
>>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> @@ -595,6 +611,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   		       TRANS_PUSH_EN);
>>   
>>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>> +		intel_vrr_set_emp_as_sdp_tl(crtc_state);
>> +
>>   		if (crtc_state->cmrr.enable) {
>>   			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>   				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
>> @@ -646,6 +664,8 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>   		       TRANS_PUSH_EN);
>>   
>> +	intel_vrr_set_emp_as_sdp_tl(crtc_state);
>> +
>>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>   		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>>   }
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> index 6ed0e0dc97e7..d2af1b6710bf 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> @@ -108,6 +108,12 @@
>>   #define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
>>   #define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>>   
>> +/* Common register for HDMI VTEMP and DP AS SDP */
>> +#define _EMP_AS_SDP_TL_A			0x60204
>> +#define EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
>> +#define EMP_AS_SDP_TL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _EMP_AS_SDP_TL_A)
>> +#define EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
>> +
>>   /*CMRR Registers*/
>>   
>>   #define _TRANS_CMRR_M_LO_A			0x604F0
