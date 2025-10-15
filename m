Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3CBBDD4EE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 10:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6967810E707;
	Wed, 15 Oct 2025 08:07:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hRXhLR5o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB02710E280;
 Wed, 15 Oct 2025 08:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760515638; x=1792051638;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zGnMfumWk5mbVz7IV02ZuXkVFhTsoG263zbTHFexzPU=;
 b=hRXhLR5oYN7C9+kvqXsR0EyqWwWPnLKjbfd5BANtI7sQw+XKCgCyh70s
 MBCFrbeLIeEJgwnggOBUOC321M+cBCaRCKlcs+ONzLi/wRxpSmWHAqZG8
 Azt0dPfss1YG8f2qCbBOFkYTjd8c76MSKXg+IczJHeuNT+kDlWGdrkYAt
 /rS/3GeRwHDVrMHpkxK/aTO8cMXcC+VeOaArBppx4iGFbS2spr/cdIBsi
 gZf9VRUy/B7A+L8n/dqooj3jdphr9at48IIgKk5KIYYtpRzxtJ38KTw6c
 Brq4V0V3QYKfY4xORAaPBjkPG4FK7QsxlvhNvtVGH27OqbpRIaQs6Dak2 A==;
X-CSE-ConnectionGUID: Yi77az1xRIGBkFa1Sb7YWA==
X-CSE-MsgGUID: yzUTWVjeQ+u8p8QlUghN0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="80317010"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="80317010"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:07:17 -0700
X-CSE-ConnectionGUID: s4zGBGt1RWGh/5mWEf3a4g==
X-CSE-MsgGUID: 0oXyUpEbQBqHotqKUD9MlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="182888957"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:07:17 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:07:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 01:07:16 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:07:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a1vOyZx6riIpaOFQs9YzRFnGvaQXUNzG9JSynOWAlOkNs5driLf47BC7BHuqceB662kCYak1GGEe1cYxhU/4Ni9kGiObVrnLrX21GyG9jOMnQiMcy4Op6S8UiKuIK7jssyKMLSpQilEfoR0LM3KpO1Mc9b1LZ0V8cRiGEZ8Y8ufLt1wmuQNZYtCekU2ZDYyOIVEnf0q246dIdKRkmno0mM8OfGbJqX+7B3kxPdq5vvcizOg7iGU7YHA5Uufr7dFPPOb60QtvQy6WceJm2aydYQnqVVf2dPg4zqEjPhxxfY62bHgbgEP8IwbksRFFiQXwe2SjNd3geTyTJT6E6CKwRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R3I+aaIy6epzNoLfpEcZAC8m4Wy/CMUQ106Y7OCQDoI=;
 b=G/YYo5utl6Wo+KH/x/Pn53xwDIj7lb9EH1UV3P5HbUJ5NtvdKVHfTpPnlNuY2FPxWdLc0gzY9rXE+dyKq8SXNaDE5QW4QoDg4qnzUIPSHiPISVqUJm8MN/mfWRzHAeuqnDNAwPE1UX7RaChKPRlz6YCP7v2yz9S2/VQtSDr5OLcaop6kpkjsbjweT1ATaTptjSxPzR2ODXnsQYILtd4G9uCqVRlRZt1JgG1CoXP/8Ahs0ZOXe2wQt0AfZx2Md9F8Lg3+erPXnwRQsXlO+1/blwNH/0v6MMictWXKRXsn92zwPqJgyTN7mmh62Cqn51Kbj2pray0jKFm0s57ZWS/x5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by DS7PR11MB8806.namprd11.prod.outlook.com (2603:10b6:8:253::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Wed, 15 Oct
 2025 08:07:14 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%5]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 08:07:14 +0000
Message-ID: <51e1126c-bf71-4adb-9d22-071b5d02021b@intel.com>
Date: Wed, 15 Oct 2025 13:37:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/32] drm/xe/nvl: Define NVL-S platform
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, =?UTF-8?Q?Jouni_H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-1-d2d1e26520aa@intel.com>
Content-Language: en-US
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-1-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0077.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d8::11) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|DS7PR11MB8806:EE_
X-MS-Office365-Filtering-Correlation-Id: 587bb1ce-45fe-4fd4-1d81-08de0bc1d9b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SkluYnB3bFpzNjZKLzY1bkZ2QVhHYTJ5SG5lNHAyQ3dsNUlWSnpCUmRReVZN?=
 =?utf-8?B?d09SRG5tM2VZQVBUejdWazJva0w2OWU0SE9ickg4ZEFldWlRYXlPV2w4eHNy?=
 =?utf-8?B?QXh4b0ppSWdiQlhaeWl2RVVEdkpPZ3FXTllydk5KaUYzelRQWkJta3lZaEo2?=
 =?utf-8?B?cGJHenBLSzB4K3paMFl5TVd4aTk5NDdRdWF6cUErM1JmbXgzZFVQLzJXRndZ?=
 =?utf-8?B?MHhaemUzeEJPWDdQQTVra1huOVNrTkN5bFlPSVFtQndvWTZHNytEVWU5cUpO?=
 =?utf-8?B?blFPNW5lTXJ1eVNsdnV6aGxORjRQZVY4NmxHNmdZU251TnJjOE0yTVZWeldF?=
 =?utf-8?B?ZFVkcVJRVlBwY1lqSnBXRmUvTjY2ZW43SUhGWnYyL04yNXZGbnpjM2l0MDBh?=
 =?utf-8?B?aTR6SDFLcGFYWHNTUVRuL0hpZzQyZDRCSno2blowemRWUUhWT2FaQm40Yjh5?=
 =?utf-8?B?NDB0QmxwUXBTcEtEYjUzUUViRi80VURTRzJ5YnAvYWdZMnI4UmVCdFVlWVNT?=
 =?utf-8?B?eStLMlpzOS9pMU00RHRMQnJRNW9CTURDeXZMMkRGYjErTE82eU16WjhxQjNs?=
 =?utf-8?B?TVFFaDNhdHlJZHljeGdYbWdhRmxYd2Vsd3YzcFhUdTRJNVIrWjdqYnJDcmJw?=
 =?utf-8?B?WXczYjZIYkYzMmVvNnZReGJMamFrK2FZWTJlMkFYa0o5YzRhWWhyT203dHdl?=
 =?utf-8?B?aHVzRHFremhUVnkvSk9PKzNHQ0F5alJhN2xEbkNBZjdkaWtqVmM1eHEvMzNh?=
 =?utf-8?B?T3BNL3Vxd2NSdXh6L1pOV2k2NHdQWHhGYVQ1SFVBamZZai84WEFpc0tnN1VO?=
 =?utf-8?B?RmZGV1dVU3YyaEdIUHlnYW9DSTl2eWZhQWtNV0JCT1lqSmZld29ZVnFZNjA4?=
 =?utf-8?B?MmUrRkhWSW1QbEZJYVFLaVo0b09ZQmtVYW9YYmJBdXJ4WDc3TkFwQlMwdWQv?=
 =?utf-8?B?eXBQNkl0TDhpbFdTVHRRUzRndE1aU2dPMDR0TjRFeWFiNERCWG9yZDJjM3g2?=
 =?utf-8?B?V0RDVVh6RUJFMmVURVBBRXh2aHlpTVl5elFKWTMrT0VkVVFudy9raWxFQ2Nk?=
 =?utf-8?B?bW9IMVhTNmNtZTdyYzdNSjRaZ1NxcS9GMDUvNkN3WHN0NUpkLzA2VTF1MWpt?=
 =?utf-8?B?UzJiVHFKVTF3Q0JvbzJ3SEs5WG8xRXZkV09RU0ZrYXVoN0hhMndtZ3YvUG05?=
 =?utf-8?B?cFV2RjZ3bHdYMDc5cVJpbnJZL0gzTXlSSHo1TEdBRmlKazhpZTBoSW9mWVdD?=
 =?utf-8?B?MnpyOEp5NmtIUlZxdFZMSEVDbGdIeTlLUGtUSWdCSEZkR254YVdaMDdOOFFi?=
 =?utf-8?B?YktFcjdRSXU1MW9JVVRRSmJmdHFEeDZjSzlmUEdWMUY2aGJqcXVuS3M4eEE5?=
 =?utf-8?B?UnFrTzVBbXhjL2JVTmJ6ZGV4cnpRV0R0NEQ2WDFYTGtxWlZoanJKU3IzNUNq?=
 =?utf-8?B?U0JWSVJ4UFMrQkV1cTk3WVBmczJGUXE3bEE3R0wycVhEU1BEd3lCaURZU2FZ?=
 =?utf-8?B?RDg0R2JzYlVlb2RqWFBXZUdsTzhkaVpUM0JhVEF3UE9FdzYxdDBVdER0LzRu?=
 =?utf-8?B?bWpoZGJsRDU5blYxNzFsK2Mzb01YU1BBRXFKWHlJSExQS0Q0ekZSTnlHUDF2?=
 =?utf-8?B?bTZFOHNDUzlSSkFaUjhLbUxFMDNtOWNISlBNR2drM0x3dFVtcFhtaDgxYklX?=
 =?utf-8?B?elBuWm0zNDRvckFDRHhOT0NDdU1UbW5vOFg4dUNWUWtFeGhkYVdYczhvejZv?=
 =?utf-8?B?RHB4djNXSng4V002RmZ0ZEFabktuNGVtV3Z3YVZCRFMvWVBOU3ZtaU41cXJx?=
 =?utf-8?B?dEU5a2t3VXNYTFB2dVE5ZUIvenZlUE1RVkxYZUZLVGlxYlNuVjhuQUZIdzVD?=
 =?utf-8?B?Qy9CSHFqWTJnRVNBZVBnMFlCZE16OE1UVUhWenBlMG5RZ3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0hvTklmeUpFSnJjRnNtRXU4NDFNR0ZZeS9hdjhiZXJRYWtWWTdMSVE4ZE5C?=
 =?utf-8?B?aHg1bEJqY1dEcmtnaFo1MGFzTU5UcGZVeTl2YXdYY0QwYmRCL0JTWjZYS1pG?=
 =?utf-8?B?R0gxQWNWNFdJTFhibVpsZnlVVmRVY2ZPeUZ0SG1YWFZkbWFFRUdYSVEySURm?=
 =?utf-8?B?dmdGWmNldVZCUzdkN2Jva0g5Wll0bGZ3THJOa3gySmtlK0RJZGkyZWlNT2lv?=
 =?utf-8?B?YTJFTkFZdFdHZHdXc0VqbEhDeWRtV0VNYlM2anhNNm1NZ0dBbzJkaDBZaDFm?=
 =?utf-8?B?UzJBWW9nQ3dRY0pKaFNMaVBZaEtRTnJ2TXR4K1RIYjJFSUtkRGlYRC9xbXBU?=
 =?utf-8?B?ZmJMQVlXQndYQXVyUmtKYjNEQVROOGtnWlM0c2hxbngzRkluUmt2NlRMTDJQ?=
 =?utf-8?B?V0NRa0RUeXhxVS9sYnh2TDRUeHRXWUhDbkZNajZUTmJjWE9XbzBPL0E3MFE1?=
 =?utf-8?B?NXJReDJVQVhDajRiSHBRRzdnVmxueXA0TTZMTlQzM0g0RTQ0UHM3dllwd1c0?=
 =?utf-8?B?K0FBK3gvRmhIb3ovMEFJS3Qwd2RDdFlWVzhsbVRtZ0JxTjZoUFpRNmVsR241?=
 =?utf-8?B?RnZhMncyWlBBblQ4WXgxS3grbmRpdGNkQjUxT1RSVHF4Y2VPYnVZUDFHNzRC?=
 =?utf-8?B?c1RIVVQxeHZxdTFhUUVpRHFNa2VxTzN0bEFScFc4eHU4OEpJOW1wdjJlY2Ux?=
 =?utf-8?B?VUhFTW1SZFF3NDFiZ0NEbFN5bDNNTjhLT0FrZ0tDZzFqOVVsVlFtcG1ibVlo?=
 =?utf-8?B?dVYrN0RJNjZEVUFuQTR5SnBFWTFOYkdVUlBEbC8zQmV0SDlKcVRCb2w0QVRI?=
 =?utf-8?B?NzV6NmIwdnJIbXZXbHYzV0d3bDBIbzR5dEhYSFZldVFkZXRSdVBvdXVPMWdO?=
 =?utf-8?B?UkRFYkVzQlE2bFE5TWVtcGtHL1VnbzJmM0RoVkpIZWY0QjRPNDMvaS9FYld3?=
 =?utf-8?B?SGhXS1hsTmdpZG84eTJzajhzNDl2K2VmcFJOajZ1ZFpHRW1HZWpJZ2oySFps?=
 =?utf-8?B?MVhRNW42cU5FZWVEYWpxaGZoekp5UmRsdWRNM0FLZWlVWllRWXlFU1R2U0tS?=
 =?utf-8?B?LzFHRTE4b2VEd280SEt2a0hVdFJhT1J2SGJjM0xMSnU5SlVFZHRMcGJITFM0?=
 =?utf-8?B?ditBbEoySVh4U1NlL2hXYzZVSFAvcW1JdWVaNDJLYXppc0RCWHIzb0VTVVl0?=
 =?utf-8?B?MzNlMFI1N1NIa3M1cjhRbDVFZEJxY00yRDh5ODY5NlNVYm4ySjBpMTlYVU1K?=
 =?utf-8?B?T1diUWFRb1NnVnFMVmNiOXJ1SllBM0MxUjU4MmR4YVBjSHlqM2NhcDNPWVFq?=
 =?utf-8?B?ZGtEVTRqeUhta1FaSmdHZWJ6MzBrZjY1S1dtVmFteE9nRjNKMmhkdUVVNFhp?=
 =?utf-8?B?M1pLaUdLRTFseTlaY1NzZHdJaHcyTTJWUjV0VmRHUnRlMFVkTitUVUhuaWpM?=
 =?utf-8?B?ZTVLaU13czJrMWsrZzFEaFFRc2xySnBuY1JhQ0s3dkFZSnJtbWh5bGFyMkFT?=
 =?utf-8?B?bEMvQzd3MnJZL1VTTXl5bkppSDNjeGVYd3Y4OGRUK292bkRBMmVhTEgrV0o1?=
 =?utf-8?B?L0ZFeFR2Wm84eTg1ZzFrMXM4Nnd2ZVRNLzVuQnBCRWtaRU5rT2JIM1VyZTFX?=
 =?utf-8?B?NnJ0VWxNUWlDWUtLblZEbkxlQ3loN3hXK1J3SjRJNVVoeXdMYnJyMG1iRlE3?=
 =?utf-8?B?bWtra1ppaEYvZDhkMzRBWlJjSlk4LzlER1hianloL0ljQTM2bXJrUzBNempt?=
 =?utf-8?B?aDc0eThsYzNTbGtad1BHWUU0R09iYTFpN0tyZmh1Si9DaCtGY3cvMVBtdzgr?=
 =?utf-8?B?RlNybDBUelpHa0dKczVyWlVTS3NYZ244NFNsVHd5VitHYkQ0YzkyVnh1OGpI?=
 =?utf-8?B?NDJrRE9uaDBJSWFOMU4za3NKK1ZrTjVBVHJKcHdpM0U4czNMR3JsZlJyNTdF?=
 =?utf-8?B?OEhQZjJUNHU4RkI1L2c4SE05a3RwYkNqcjdSTUVNditYS01mQ0JDZk1WV0Fm?=
 =?utf-8?B?QlZ6eXdKd1h1RmY5S3JoQVcydXdTaEM2VEpTN1ZLZlBQS0pjVW9JZ1pJU0FW?=
 =?utf-8?B?UE1XRzV0ZnZPc1QxNDRNK2FzZ1l2ZlpXZFVwZVFTSVg1aXdWTW9uRE5WRGxq?=
 =?utf-8?B?cWVPMzBwVWF2S1l5bW5mME03eTVWRHZMTkxqUndORWJvZGYrZzhWcUV3YUcv?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 587bb1ce-45fe-4fd4-1d81-08de0bc1d9b1
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 08:07:14.5691 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5CMzCa7193CCySod+J2hHEq1ABrvsa+Vze2irq6PkcOPPEkF19jhcw8Tqg59Po221GNTIolxPbJGoO768ttkXVmSmigeRT5WjK+lRpxjkuA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8806
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


On 10/15/2025 8:45, Gustavo Sousa wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
>
> Provide the basic platform definitions and PCI IDs for NVL-S.
>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
> This is brought as a dependency from the series for Xe,
> https://patchwork.freedesktop.org/series/155866/, so the display side
> can be reviewed independently.

Some of the changes below are redundant w.r.t the Xe series you 
mentioned above, but maintainers can take care of that while applying 
these patches.

LGTM,
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

> ---
>   drivers/gpu/drm/xe/xe_pci.c            | 9 +++++++++
>   drivers/gpu/drm/xe/xe_platform_types.h | 1 +
>   include/drm/intel/pciids.h             | 9 +++++++++
>   3 files changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index 24a38904bb50..cc29678be1fa 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -373,6 +373,14 @@ static const struct xe_device_desc ptl_desc = {
>   	.vm_max_level = 4,
>   };
>   
> +static const struct xe_device_desc nvls_desc = {
> +	PLATFORM(NOVALAKE_S),
> +	.dma_mask_size = 46,
> +	.has_display = true,
> +	.max_gt_per_tile = 2,
> +	.require_force_probe = true,
> +};
> +
>   #undef PLATFORM
>   __diag_pop();
>   
> @@ -401,6 +409,7 @@ static const struct pci_device_id pciidlist[] = {
>   	INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
>   	INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>   	INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
> +	INTEL_NVLS_IDS(INTEL_VGA_DEVICE, &nvls_desc),
>   	{ }
>   };
>   MODULE_DEVICE_TABLE(pci, pciidlist);
> diff --git a/drivers/gpu/drm/xe/xe_platform_types.h b/drivers/gpu/drm/xe/xe_platform_types.h
> index 3e332214c7bb..78286285c249 100644
> --- a/drivers/gpu/drm/xe/xe_platform_types.h
> +++ b/drivers/gpu/drm/xe/xe_platform_types.h
> @@ -24,6 +24,7 @@ enum xe_platform {
>   	XE_LUNARLAKE,
>   	XE_BATTLEMAGE,
>   	XE_PANTHERLAKE,
> +	XE_NOVALAKE_S,
>   };
>   
>   enum xe_subplatform {
> diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
> index 452c1de606ff..13c592e1a28c 100644
> --- a/include/drm/intel/pciids.h
> +++ b/include/drm/intel/pciids.h
> @@ -887,4 +887,13 @@
>   	MACRO__(0xFD80, ## __VA_ARGS__), \
>   	MACRO__(0xFD81, ## __VA_ARGS__)
>   
> +/* NVL-S */
> +#define INTEL_NVLS_IDS(MACRO__, ...) \
> +	MACRO__(0xD740, ## __VA_ARGS__), \
> +	MACRO__(0xD741, ## __VA_ARGS__), \
> +	MACRO__(0xD742, ## __VA_ARGS__), \
> +	MACRO__(0xD743, ## __VA_ARGS__), \
> +	MACRO__(0xD744, ## __VA_ARGS__), \
> +	MACRO__(0xD745, ## __VA_ARGS__)
> +
>   #endif /* __PCIIDS_H__ */
>
