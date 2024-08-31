Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A2B96728D
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Aug 2024 18:03:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD0010E134;
	Sat, 31 Aug 2024 16:03:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UjX3q6uW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45E7310E134;
 Sat, 31 Aug 2024 16:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725120182; x=1756656182;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hkjGSBYsNeVq4xfGMlwkVHhaHez3Jyhv95Sd+d1R/1w=;
 b=UjX3q6uWw5ELUg+I4vyIrz+YX9AZKOXSpSJaBa6MNu+rkAOOys8pP8pe
 6k1CpC4HcF0TRIJvPF36D6xac/PTgG2fE8Fa8+v1i0r/Xgn4EXosrL4Nj
 ws1NMTRaWaj0XGUpJv1fFWoz0driyLk6ZuPFWOgL+5CxR26M0++5BYf9w
 YKxDbX8dMwEi/9oSFkXGmKl25fwjFt5deg0kW1KfK8w8Hv0YThVRFBNS+
 RbtmcedEZMGXLJhWVjL/6Ag1TJBgVo8+XRexFOHEp8bUa31hWcckqq0Ka
 YQuEekmmJPybVrM62zj3vYTFsv8zwWdNZT0JIzhXPd8tQFyQpjNE4Vwej A==;
X-CSE-ConnectionGUID: HnEkQMXtQkq75QZxWOkj+w==
X-CSE-MsgGUID: zDrLq9t7Qje2LddKAiXMGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11181"; a="23328202"
X-IronPort-AV: E=Sophos;i="6.10,192,1719903600"; d="scan'208";a="23328202"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2024 09:03:02 -0700
X-CSE-ConnectionGUID: xg0xni4OSYO0tFVwmlQs1w==
X-CSE-MsgGUID: jzorJdOETq2eWFLpV2KUfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,192,1719903600"; d="scan'208";a="64922477"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2024 09:03:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 31 Aug 2024 09:03:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 31 Aug 2024 09:03:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 31 Aug 2024 09:03:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ek9lp7LP3V66oal8AIkOj4ZAAwSz9vlLwJUbnkfEURjRgMYQyrjCWn3y6GudPtvmYEqYuZNgV+vUEV+guPC7jQfZ9IZwLSCBnETrtXAvT29H9sy5VO6uzd/KgUXDob4MylCtMG5rneAlj4liwD91T2gsjBF7O3NeeToFZKS0yQkk/wMg/z2bbPVuHfksJNRgScXTF53uVBnD+XvLRs5e1mQNrzYVGmZmsyw6ibocTEpRktPIZg5qOeO6ufsAhL62D6iBcXC5LZ8oNR3sbFrxomuuzuj5q2tMTfsMHeDwffKwSyo8naAatpNnnUuk9kAJZcQw1uz83ohyZJdfS5XQwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D5YBI804tOX9+e8ggn9IkQv+r/xjN4qHgW6ZbLdcp7A=;
 b=cgdfaO0GO0rQf/YqLHa4k2zi9qaVhgLmCUEqRAru6wMDkyhAx81np/yuHqLZHG5padP2VNDXnriJpsC69QANerbwhwoLXiYZTk1Ia/8eUa6WynZa8XMf/StrlXc6BuNf1ClfYhiEBriJDC8AJcxuiv6P6PFY7Uh7uaPmkFvCta/4uGUaqFkVMnI4uyOLhLaZsrsd5mP1mUhLekrMcnJHbJ3+gIMxOghuP3WSu9x5GfE4nMv19KHs6BPwdzTmWQrYsh72voEYysI2Qw9oW90+2jQK5z3PoRPhT4zdj2CKiUIO5N7bxV7xAyKbnv0RFiIvzQFxYcw2Z7Jt1gYMqMBqrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB7056.namprd11.prod.outlook.com (2603:10b6:303:21a::12)
 by SJ2PR11MB7645.namprd11.prod.outlook.com (2603:10b6:a03:4c6::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Sat, 31 Aug
 2024 16:02:57 +0000
Received: from MW4PR11MB7056.namprd11.prod.outlook.com
 ([fe80::c4d8:5a0b:cf67:99c5]) by MW4PR11MB7056.namprd11.prod.outlook.com
 ([fe80::c4d8:5a0b:cf67:99c5%3]) with mapi id 15.20.7918.019; Sat, 31 Aug 2024
 16:02:57 +0000
Message-ID: <2802ae94-9f9d-4cdb-bb8c-c91672611b7a@intel.com>
Date: Sat, 31 Aug 2024 21:32:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/xe: Add missing runtime reference to wedged upon
 gt_reset
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>
CC: Matthew Brost <matthew.brost@intel.com>
References: <20240830183507.298351-1-rodrigo.vivi@intel.com>
Content-Language: en-US
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
In-Reply-To: <20240830183507.298351-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0064.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::6) To MW4PR11MB7056.namprd11.prod.outlook.com
 (2603:10b6:303:21a::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB7056:EE_|SJ2PR11MB7645:EE_
X-MS-Office365-Filtering-Correlation-Id: 75fa649e-c300-456a-5c6f-08dcc9d66117
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d1JBYUQwdlNhajBqYjVsYWFlaW1JMHRhaDR3NCtYeVdzaTNPblVxZkZieFNp?=
 =?utf-8?B?bDdkYVVMelV2b3NmaUgzNGRnZnNCRDNMY0lYYVorc0FVR2FOUkhqcndEMWxy?=
 =?utf-8?B?bklrZ3Z1YnBHcDdoN0NtL29NUkxTU1UxUEE5ODEycHhxZ2t1ajBrMDUwWUJY?=
 =?utf-8?B?MGNXTDUxbURLYXg5UDh5cjUyMGdKQ0ZmNnFVSFptYmVvQmhvbGZGbmJtTFBT?=
 =?utf-8?B?WS94cjk0Z3dkODNQWEw2Qm1VWG1meWZaQ3h0aFA4L0xaeGFrWnN1SkdPQ2Fa?=
 =?utf-8?B?SGNMY3prMU9pRTErSCs0dldwRkh6U0ZLalgxRysxTTdkZmhISm5rRzVPdWVF?=
 =?utf-8?B?NDVZTEhKZVE3ckc0WHFFWFVYdVZubXRVaUwwUk9Pd0RoMFlZVGlaQ3pZQ2xz?=
 =?utf-8?B?STEya2JjM1lMOEIvMkxKenVCenpuT1VsNi90VWR6RDBPSzNFbk4xNzNFdHo5?=
 =?utf-8?B?YjhRaXZSdFdqL0NvM2wyZ2tXNnNySWp0SnJCTzNGTEppQmxZQjM4MTlISkNJ?=
 =?utf-8?B?S0RGV3VxTGFYNW5zRDhRYytZZk9Jbnl1TXpjd2xPblFyYVVXZ0dSaVMxdnY4?=
 =?utf-8?B?ZUpWaktYVEdRSWQ3OXkweE5CRkFhTytwTVlkMzdkc213MkRmQlVTTXdrdmJF?=
 =?utf-8?B?V3pjUjNKR3hDZDgyVkdXS0xXWDZtMi9GY25Qblo1djltNHpNemZ6cUdLa3pD?=
 =?utf-8?B?V2cyQXB1VWdnWEJzcFoxYXY3WFpEMmlrYW5hWER6SGIrWjRxT0dabk5kOEt4?=
 =?utf-8?B?VGRON210OHNxNEtlNkJOSk4wVzYxNWtJL3NTZU1zK1dZMlNRdW9hUDk3Wktq?=
 =?utf-8?B?V3hMTy9LQldZV0xhRko0Y0d3SHBpOHBQZnJjeXJmajI1bElUMG13WkxDR1dj?=
 =?utf-8?B?cU04QkIvZXRjOExkVmdHUlA2R1AvRlNtcm9yMW5tQjJVeU5HUS9Qbzc4RTVF?=
 =?utf-8?B?VWMvWlFaanNJcXZzeXp0Z1FpM1Q5cXpxOXh4SzBSN0UyYVplYVZTRzlpS3JT?=
 =?utf-8?B?WnJrdzNvNktNNGFidCtSNkxFQnN0QjM0eUhqNFNlR0ZwVXhsakE3YllYQzhM?=
 =?utf-8?B?TkNJZDVya20xKzd3cUV3NEdPcFRmNEgxWkdQM0ZNaWxKempZaDdHajl4alJz?=
 =?utf-8?B?ZDV0SXBVYVNaOEdBNnBsbktXSXVHTm9yYW55Yksyd2VRV1dPaFZ5S1JhSVZY?=
 =?utf-8?B?NUpaQURTbWdCZVIwVzZrc1JyN1RUSE5XSGxnRXdFbTZMWCs3d1pZUlZIbHR4?=
 =?utf-8?B?anBtclgzSVBGOFdxSDFWMldhMExYUXpDOVd0eUFBaWdlRTM5UjVXd1ZMV1VG?=
 =?utf-8?B?Q2g4RHpVKzFjTVJoVHAwdkRDTHp0NkpFcVVRRDFPa0x0RXVWUGJTcjhGUnJI?=
 =?utf-8?B?dXFxNDljemdneWRRaXUyeE1hNzZFbEdxaVJmMjZCaGNnbWM3WXVKWm5yQkMv?=
 =?utf-8?B?RVJYMFpCNEZVMUNSM3F2Ty9WS0E2VnR6YStkYXdDQ2JoRFlSelJ0QnJvNmww?=
 =?utf-8?B?R2h1L2pTQ1hJYXdlam13RktqZjcyN081N1Rja2xGOW95RlkxNzdDMndSRmRy?=
 =?utf-8?B?S3gvSXFpenlXUFlLUWwrNm01eWhMU0E2emRhS3l0R3NiWjl5YUJtUmx2SXZK?=
 =?utf-8?B?UkFYV2NQVXJEcFk1UEZ0V3c5NmQyMDgxTHozdVMyNVoxQW9NOGdSMjl1Zitj?=
 =?utf-8?B?UkVCV0p3eWtKeVFmbjBsdlpVaUlUdWF1NEptbnNFbVZ6eG9PWnBpSXhFNW83?=
 =?utf-8?B?NWtENUloQWd3WERUQjdhNmdwMmVPSmxLZzVaQ1A4MGx1UGtLbElhWTJtdWFq?=
 =?utf-8?B?amp5aFUrbENMek93dFBVdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDN5YTdrWUpXY2lGTFRJVC9tbDZRem10L1kxZ0d3RDl6TlQ5K1IvcHJ6Nm1N?=
 =?utf-8?B?UHNJSnJBUkNmSE9nY0c3OGROK2hiMUZ3eWVnbXQwYlI4eFpEUkFPUURhZTJl?=
 =?utf-8?B?b0FYWG1hMitSQlNvMHU2R283Rnl2UFRCM3kyNUcxNG4yU1oyNTlDcnUrQTg4?=
 =?utf-8?B?Sm1VTzU5a3haYllnUThVRStiZ1JtSTlWNWhxOEV3RmFyWkVJZ2pUUGdPa3Fw?=
 =?utf-8?B?SXdQTVk0dW9GQUU1OHVVOTlaWTZibG9hTCtYYTZEd2RLbFIwTUJab1pIUkRS?=
 =?utf-8?B?WVpDRVpVL0tiZk1oTjlHUlprVlFXbnVQMXdUbDdyTTZxVVdLMW9JVUlIUXZr?=
 =?utf-8?B?Q0VTK1RJQ1IxcXlZTnB5eWVDZjA0SWRQNXhqZk9ybVh3dWlZdVYyU0g0dkZL?=
 =?utf-8?B?NUsxeHhMOXFBTFl3UnZFeE9ZRWpOcjUrcEd2RnJYd3A1VFRDbmJVYjBKMmd4?=
 =?utf-8?B?OGN0NU11azVXdkJXWEJkd0loV1pRci9NeFpZTXVGR2tlTmdjWXVCSlRFOHF1?=
 =?utf-8?B?L0liNHV6L2I5b084emVTeUc5cjBqU3ZDYmhCdW80ZDdWOW9rU3Q2UkpPaVZ0?=
 =?utf-8?B?OXQ5aGh3dHhZalZ2N1U4ak9STDRhWDhjRVhPazlON3JaS2tCOFI1TGlYeFRI?=
 =?utf-8?B?YlBuNlcyekxCVWltRitqblVlZDNDQTBwNFZNMXh6dE42Qi9pTnB1RStSL3lP?=
 =?utf-8?B?NnRiMFdUTTlRczgwTjZHME9xY1BIOGdmRFgzQlZEQk9wN2NHUkZ4alhxOHJQ?=
 =?utf-8?B?TWVZa3owNlNobzZkMkYyb2dyVmFtUVozZkpvZGIxK0pMVnVISmwrcGx1NmdX?=
 =?utf-8?B?QmdIMkNkKzgrRDV2WTUwMWRxeHhXcHB0V3lweVdxUGxCdXdYbG9lQXlWY3l1?=
 =?utf-8?B?bzdtSjA3Y1ZzQXVhOUJESmJHK1pKVVJTeXJNWlBRVDdJZU4wWVNuemlJRkdR?=
 =?utf-8?B?VDFMNy9FWWwva2VZRTdkS3V6Z05GT1dRV2tNR3V4bForRGw1NXNxZWlwdmZu?=
 =?utf-8?B?NmtleDNJSk5YV1QzV3YvN2g1bTZJMk1KU0dyaWY2UkROVUNpVHE1L093VUdT?=
 =?utf-8?B?SDRaRGx1ODdDZlhsSWdmSFlKSHJrUEwxQlh1ZXd0NE12SnpJdlo4N1YxOGpv?=
 =?utf-8?B?cklDMERKMWVIZDNSSmJhUGRTK2NXa3IxV2U0OGtDOGNwR0g0bysvaHduTzBZ?=
 =?utf-8?B?M1NZRkhiWmNMSncyamZFRUYzb21rQmVnaHpZMXBWaVpyOWsyVGV0WmVOak80?=
 =?utf-8?B?bEt2L0hIaTZaVExnQWU0czRqWG93aXVLT2dwcWJVeU9EODM4MzMzSlpOblV0?=
 =?utf-8?B?SStmbzlPMjhTWVlVQ2FZaW80TGt4bmwwN2tOc0dFak0yQnVSa1VxRUhOcjl2?=
 =?utf-8?B?cEQxa3Q4T1FOTGJqa3haWm5LQkdMZkxMVCtmeXg0RXRBRnlObkNaVlo3Q1h2?=
 =?utf-8?B?YUkrTW1aQWlrZlBzWXRhU1QyQTlFMFNDM0tpYm81MUxoZWNQbWpvdHR2QzVK?=
 =?utf-8?B?a0VXYmpPUGlWQk9IV0pVTVRJeUozdHBHUjFUMWUxT3J6YndSWDhWNE9UcWxa?=
 =?utf-8?B?bjNZUDc0U3dSYzhpcy9pRzBvbTVpMGs1endROFpKMDJUZUxCWVVyVlJKeWtF?=
 =?utf-8?B?OWJDWGdGK1oyb09iZDhrenUrd0xIdmROSnByc1lTTExNSkVwQkNiVHJXZDZr?=
 =?utf-8?B?WEE2QzVrRSs5SXFkNUlad09RZU1nT3ZnMFFsT3FiOEhYMFI5dFh3U3RWb3R4?=
 =?utf-8?B?L2Q1UzBlb0tFSXhuQ3R4aTZnbm8xUTlaeGtQM0VLZXVRTnhBbXp5VitwVHM5?=
 =?utf-8?B?NHlWTFRqWmx2VW9IRDFmMXhsdElCMndXYXJIdFNna0kxQ2FLS055czNPQmwy?=
 =?utf-8?B?aTQ3YlpPTUZmbU1sUUNuOUNjdmsyTGlTNlFjTzkydnhmMEhEYTlvalNBeXE5?=
 =?utf-8?B?Rlo5RUdkSE9FeG9QZy82aTQ2TE1pN1EyV3gzamtPM2puYWVKL0k0R1NlTzZC?=
 =?utf-8?B?eUYvanBwTnJ3Kzh0VTJxVUhOMGplK1NEL1YzNGR4eUNnSDJxVEhlTWQxbXpR?=
 =?utf-8?B?K2xqcmRwVlZnWStDR3IyRENZN1BjemVXRWljNlh3K2pUSnBUcVFhOHAyaUNV?=
 =?utf-8?B?N0NKM0FTU3BOL0RFQUIwa1dOZzhQM1UwYWhDVnNVRWVHNXc2QWRkVzhPeWNB?=
 =?utf-8?Q?Yi9DcHKx3x/usYpOMzOF8po=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75fa649e-c300-456a-5c6f-08dcc9d66117
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2024 16:02:57.1694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e2iKxKAy5jIoH7BgocpXtLd3U3+MrtTSTeeoOQfeYsI0Wug3NP2DlNZMYvutQtEAw07cprjrGU42lw9uVvCJ2jVO33zMSQSz2zKGDWowuBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7645
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



On 31-08-2024 00:05, Rodrigo Vivi wrote:
> Fixes this missed case:
> 
> xe 0000:00:02.0: [drm] Missing outer runtime PM protection
> WARNING: CPU: 99 PID: 1455 at drivers/gpu/drm/xe/xe_pm.c:564 xe_pm_runtime_get_noresume+0x48/0x60 [xe]
> Call Trace:
> <TASK>
> ? show_regs+0x67/0x70
> ? __warn+0x94/0x1b0
> ? xe_pm_runtime_get_noresume+0x48/0x60 [xe]
> ? report_bug+0x1b7/0x1d0
> ? handle_bug+0x46/0x80
> ? exc_invalid_op+0x19/0x70
> ? asm_exc_invalid_op+0x1b/0x20
> ? xe_pm_runtime_get_noresume+0x48/0x60 [xe]
> xe_device_declare_wedged+0x91/0x280 [xe]
> gt_reset_worker+0xa2/0x250 [xe]
> 
> v2: Also move get and get the right Fixes tag (Himal, Brost)
> 
> Fixes: fb74b205cdd2 ("drm/xe: Introduce a simple wedged state")
> Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>

LGTM
Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>

> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/xe/xe_gt.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
> index f82b3e8ac5c8..dd96dec95b19 100644
> --- a/drivers/gpu/drm/xe/xe_gt.c
> +++ b/drivers/gpu/drm/xe/xe_gt.c
> @@ -754,12 +754,13 @@ static int gt_reset(struct xe_gt *gt)
>   
>   	xe_gt_info(gt, "reset started\n");
>   
> +	xe_pm_runtime_get(gt_to_xe(gt));
> +
>   	if (xe_fault_inject_gt_reset()) {
>   		err = -ECANCELED;
>   		goto err_fail;
>   	}
>   
> -	xe_pm_runtime_get(gt_to_xe(gt));
>   	xe_gt_sanitize(gt);
>   
>   	err = xe_force_wake_get(gt_to_fw(gt), XE_FORCEWAKE_ALL);
> @@ -794,11 +795,11 @@ static int gt_reset(struct xe_gt *gt)
>   	XE_WARN_ON(xe_force_wake_put(gt_to_fw(gt), XE_FORCEWAKE_ALL));
>   err_msg:
>   	XE_WARN_ON(xe_uc_start(&gt->uc));
> -	xe_pm_runtime_put(gt_to_xe(gt));
>   err_fail:
>   	xe_gt_err(gt, "reset failed (%pe)\n", ERR_PTR(err));
>   
>   	xe_device_declare_wedged(gt_to_xe(gt));
> +	xe_pm_runtime_put(gt_to_xe(gt));
>   
>   	return err;
>   }
