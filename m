Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6952DAD6836
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 08:50:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFBDE10E75E;
	Thu, 12 Jun 2025 06:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kVc6r+EQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8209C10E721;
 Thu, 12 Jun 2025 06:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749711017; x=1781247017;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A+oKa6RIxTMWV36eSIS84iQiKCY0C827/zNW/kPk9Gs=;
 b=kVc6r+EQQDrdtslEEf6axTITQn7xJ+pnu7kWXuC23GE2Hjq9jJBfW8wa
 5bAGwVQk3YOggecUOAcEd3m3zp1i5Aup/0mHVSQKgH//Pyr1SD8tCzHk8
 m6ByzhMY/SCHDEjf/3YOutE6TB9oAnwvtI4EAvewodgfmhuYxuvgQbxJ7
 kNjql9XF2Al0yMEIEVIWdKe2YalNSGcayQb/xMuIorOGA+I4dwmRJD6MZ
 5hH1hjklFcyLb74mk2uUWJELEC5JjeuRJZ3qnEdYdzp143qDvw+I+Hg+H
 Kx7TngZ0dUw753qe+MJswof9nkZVy2htTU/mdX0ELGI6uEyP7ds7/IlpX g==;
X-CSE-ConnectionGUID: n+m2QpFTR4SW8N/NXFwBQg==
X-CSE-MsgGUID: paZvj1XxSmOcqBjpDrf/7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="54504467"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="54504467"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 23:50:17 -0700
X-CSE-ConnectionGUID: 5p7lB2SKQFqAZ9TN4ys8aQ==
X-CSE-MsgGUID: b5PM0GngRryliLmN+EOKcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="178391911"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 23:50:17 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 23:50:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 23:50:16 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.89)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 23:50:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EOstrWdfE2xOH3gfVcjyqYjGsfOmwt/esS5dDH8O+xtnJ1PynSiVSxvkA5vUD5FhuCoFyePaRjBOv3e0ahmTYELVF306ytiI0T82tmiw3xkpSC5qkjOsvMSsxNcABAElqISIt94Nh7hWLoFwp5C+GsK1/HiGfkIr000X4OmAUm27BSSDl6bld4eSQgBEr1kjgyP7XS0aDe1RwVjk/pQTENCzbdtPXyeCplnOKZgtJQ5vnvJDpW2fr7r4PCxOYCTo8WonV7FPeOy+KfrTy7+3X/I1tlWgttycnMAj25WGCwdbOyWPsGsKhfrfF5y6oy2wS87QwizoGbVmuMySF1Q8ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fl4EGgELovBWIUktfqRMvCLVZqrgI6JdWAu6N+WabrA=;
 b=CDLsGvfXxw1B5B71wvBCyB5MocAKtU7HzPe3XKv+q+mN7K9XhzmfH1qvIWznKqhY3vtBf88g+oDrWbsh2aduNGQrLD0p9zqQ8DmMnrNPFWDiwQVYxUhSoLoNILzth75gM2EpKrT6vZ559HPF66dnIM2mFzcikjbWaPChmTXrRL+qt9NAbNMPuntb+wtaNJxjI/lwgyyAr98e+pb7st+iwiIWzIdWFpw4ZJhi1o2wygyabZPFVm+gOfJ5wzpBD8JnBYYxgxv82sJmiwtt27TCP2/a/QlwlwNBdm/ap0sxpUMLN4JKsbdOu8UwWra97zWS+lVTf1+TFFfzSzBPyg7aZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20)
 by MW3PR11MB4572.namprd11.prod.outlook.com (2603:10b6:303:5e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.18; Thu, 12 Jun
 2025 06:50:12 +0000
Received: from SA3PR11MB7463.namprd11.prod.outlook.com
 ([fe80::d1a3:bf59:866d:6424]) by SA3PR11MB7463.namprd11.prod.outlook.com
 ([fe80::d1a3:bf59:866d:6424%7]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 06:50:12 +0000
Message-ID: <142f581a-42e1-4e34-a1d4-e15e8970d634@intel.com>
Date: Thu, 12 Jun 2025 12:20:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/9] drm/xe/xe3: Add support for graphics IP version
 30.03
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-xe@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
 <20250611134431.2761487-3-dnyaneshwar.bhadane@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20250611134431.2761487-3-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0168.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::23) To SA3PR11MB7463.namprd11.prod.outlook.com
 (2603:10b6:806:304::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7463:EE_|MW3PR11MB4572:EE_
X-MS-Office365-Filtering-Correlation-Id: 56423cb8-322d-4697-0aca-08dda97d6132
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ME16YmNyMFZHdGQrbnFXUWJ5TmFiUDVmOE4ycXlWcFhrNDFiZmhxckpVUnRO?=
 =?utf-8?B?N1licXBJZlYzQ2xJYjFjbk5lSFZoWER0N3VhNkcwbjVBdkFMYUt3Um11QjVI?=
 =?utf-8?B?aUY1UUVTRm15eFh3U1F4bzUvTkFIVlovcjIyRGk4dDNtMnZmbmtiWVVsd3kv?=
 =?utf-8?B?MXQ5N2NuUFNaaFhTWkVRTXdVUUc5ZUY2L0E2SWhEVjBXcFc1SmpmZ3lhcGhU?=
 =?utf-8?B?bG5xazI4OGxXNzNMSWhObnpoS0s5aXBxZm8xU3hNME1FV1cwdllLRW9rdTd0?=
 =?utf-8?B?R0ZRZnJXbXB0OFc0citMakFUSHBOMHQzVHZNTmJqZ3c5VG9kK2UzanZ2aGY2?=
 =?utf-8?B?dVR6SGhoODRKOWUwcERMWlJkQjBhV203Y2NXK0RQcE5sQ0FOdVZsRUtHdy8w?=
 =?utf-8?B?NnRuTmNYSXFVWHpYa1RxTnN6eXpsc1ZoK1BBVTJVSUZJS1RoMDd1ZjVSRGx6?=
 =?utf-8?B?ZGNZU0Q3c1ZGMmNkbVdhRW1FRXluZjhYd0ZWYS9EdjJidXJpVGlXc2l5a08r?=
 =?utf-8?B?b2dFM3loS1J5UlZYVWxXdHJiSW1MWUQzUkhmNUdNalhaZVBYa0tzQWMvU3N2?=
 =?utf-8?B?eUZDSW1nZGg1bE9wdzhHaTdYaS91YkZPWW4xamVST2ZaQ1N1WjJTNWxoVWV4?=
 =?utf-8?B?N2JuT2lVbm9NN0wwYWtCcmJUTzk1SDJtSWNpcC9sNzZndS9RSUNTaEpMNUt1?=
 =?utf-8?B?YUNuQStITVRlSUJvakQ1Sis5L3A2bmFDKzBoRnl6dTZNTHRUazRZeUxLcGU0?=
 =?utf-8?B?TlZRWEpKdVNMeUpMYTVPcTJyaFBNRk1jbTJscVZIcVZ4RkJibTJsanUzYjRr?=
 =?utf-8?B?cmYrWTlJWmFiTk5ITGFnbi92NUVpWjJRRkRYUFFhamc4dW5aeng4Y0JlU09G?=
 =?utf-8?B?SFIzTExXa1c1djFKRWhTK041YkpIcDE4Nm1lM3BScHptc09JTUxsTEpva0R2?=
 =?utf-8?B?OWk4a1lZb3ZRclZSa1JCRUt6WHZsbFZSMmxDNW9wYVBnNGhLaHRBVTVVanhC?=
 =?utf-8?B?eFFzdzJBMUl1L1pPWUt2OXJrN0NDOXlWbTlFM3Z0RFlpUUFGNVBNcXVPR2d5?=
 =?utf-8?B?NGs2QlNqVUtaMVdnR2VmaEdRN2NrQ2dvVHh0VlBVeksxR0g2c0VzNjhDUVo3?=
 =?utf-8?B?S1dQWjMrS3RxTnRYc1o0aVYvd2t0VWJjSEp5VCtLN01SL2FSTXRpeVVWMng4?=
 =?utf-8?B?Y1BiYkg5Y0VhQlEwMTFJMXdiSVBmSnRTYWN2WmRLRFVLUTRKNWNhUm5xU002?=
 =?utf-8?B?SVNkTlgwdXlwd1V3UUV0dFNWck5XR01qbTFDOVR5dk90TnZ3b3JNWHVPZ2oz?=
 =?utf-8?B?ekVjVHV2Z0M1UDE1WlNscHo0WUEwdEFjWURiN2pYbHN3TzdoWHVKL24rWkd2?=
 =?utf-8?B?YnlxWTVlaUJvdWFFNEJxNCt2K0JSNTR0blU4dE9vNDN0WThBakJXNlcyaHox?=
 =?utf-8?B?bjVWMkNyZGx1bnZrbzQxQ0ZkakQvcmJKZitLKy9kR09HL0RjMVRmcGpiSFVR?=
 =?utf-8?B?UnB5cm1wWVdPQmhxTm1pQitpaHhPQ1hJQ3dIaUNlUzNvVDBWalI0WEFxVlBy?=
 =?utf-8?B?ZlRVVXpveGYyZFFBazFTejlDNFFpNFYyWFFyYjdKb2xYMWdNRlFZampHK3pY?=
 =?utf-8?B?WkpMdlNkY1BKdXp2QkluS0RtMzhRem1jRTBmQWJUWlZ0RWJzTXJac3gvOEZH?=
 =?utf-8?B?MEltN25GdDFVT1IzdlJWYUwxVW5jN21wRU81ek94R2pRRkpRdVhmWGZaM1ZE?=
 =?utf-8?B?RlRpZXl3a3d0NUdLcFU5T09lT2JSRVlVMFdDVjhJc1o0dFpzWU1KR3E2N3Fr?=
 =?utf-8?B?MFVsQ2FqQ28xOHFxamhQQnFmS0xhNk1VeVRma1B2UWcxcURXeEhpYUw0N0Vo?=
 =?utf-8?B?WGhLZEZJRnRYMXlTUFBrc3B0NmRrQ1V5Q2dOenZudEdSVEx4ZTQxcU12V1Fh?=
 =?utf-8?Q?Vfol8ecaYkc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7463.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFEwZ3pHOWJXeTZZZWEzMkFiMC9JYlVDQ1dUUENld1lpbFI4UjZRR1JNd0c1?=
 =?utf-8?B?WkZEN21TYzUyV1VDaXpuZ0hhWW1XR3NhN0QzanBBdThVUWFINWZIeVZMWVB4?=
 =?utf-8?B?QmIrUVJZUmlpR2N6Y0ZpUVNzdENZZDRmSlZFbnlRcWN4VjBrSnZDZVk3ME5u?=
 =?utf-8?B?VFFvUG02TXBDNVJYS09PMDRpTCttbjNTQmc5WkgyaS9DT20zUlUwZEFhZEF6?=
 =?utf-8?B?NGVtMWtyRDE2N1I3cWVWb3JhT3Myei9FOTZJaGUzeU11aUlLZDErMWc0S2Fl?=
 =?utf-8?B?aVJ1Wmw4M1dseEVGWUZJUkNmTWF3Uk9CcHFSZ1RiZG5oNzdjS2d6M0doRS9a?=
 =?utf-8?B?VjNXRlBGVjBPNXBKbWhuSDVWTDl4Mm1UZmFWeWN1WlpLTkJrV2tyRW9TOHRK?=
 =?utf-8?B?LzFlR1YwditIR1lyOFIyYnd3djRzUmpTMFJacXZPeGxTcEkwOW8vNUduUWtH?=
 =?utf-8?B?NEhZbHplczB4SVEraENJdjA4ZmhZbDNXOTAwbUlMVysxTUQzL1NmWWI3M0Ni?=
 =?utf-8?B?bTJ1b21xNVVxY3VHd05id3FLaXVMdm93Z1RzWmplNGlaMFBKQ0FvaEFMazJR?=
 =?utf-8?B?UjR4MzA5aEdOeGpDWlZxaUx3cjRyaUk2Nk1MQlNlSHhGd0ZNa09GR25GVTIz?=
 =?utf-8?B?ald6QzQ4bUFSVnVJWjA3ekZKaVdOcG9XWW9wTnRJUG5kMkRDbGZiNjl6a3ln?=
 =?utf-8?B?cmUzL2RTRUd4TVNWSFhsSFBrL3hlZG14NSs0V3FZazhITzU0Uzc1cmVmcldp?=
 =?utf-8?B?TzM2NnlVVlJFVllQeDZTTXVCTm85dUhEdTh3d2FZY0FTT1FSZ2RSS1VURmFm?=
 =?utf-8?B?UHBudGJOVEowRTZJc3YxQkZNNXNpOGE2MHBqWWJOME5iWWFhd1dZK2pEbHdJ?=
 =?utf-8?B?cHNRaFZNRi96QWJTOFZPT0xlSGZVdUtGVlBZdTlsNVJHNHNjM2pRYXZoNnJq?=
 =?utf-8?B?NURoYXFza0xHSSt4aGd0UG0zeUoxUTlLZTU1N215NDMrT3ZxWXliZzlmU3Ez?=
 =?utf-8?B?YzU2d3BUZVYzbC9kMCsxV1hPZWs3Ti9heFZkWlhhcloxS3UvSXJlSnYrbG1N?=
 =?utf-8?B?dUYzcHFuSmsvekEyYWZ2RGE4VlJwejNFYTA3NEJiYkgvWE5jWWRYd3gwcW5K?=
 =?utf-8?B?L3VsckUzU0VORWp4TTNqRmdLV3htN0FKbGJUN05MY2hBUXk1dDQ2UmgwRzg4?=
 =?utf-8?B?WW9mTWhkN01GQ0hOMGZjR0ZFM0lhbjRhL1FuemtOaXBFRnd6aGhqdEpKUkgw?=
 =?utf-8?B?bVJQYms1NC9nVWdDandHVmJBUWlteDQ5MHAzK3BlcGJkRzVuenVobG5Rck9W?=
 =?utf-8?B?dHF6MHRCTWpRaVdXai9tbjRZNDdPbldsUGtJbTllV2VYZTVzQW5iMFEwUkla?=
 =?utf-8?B?NlFpY2YvakNxdTBQbytyRFFVV3pKaTI4SWdTcEVPbVlyL3RmRUVBcUszelp5?=
 =?utf-8?B?L3h5ZE5jK3h4V3JxVkdXNlV0LzNNV3krUjJvUUg0S0JqTy9Zb1lFN29vYStZ?=
 =?utf-8?B?TlR0OFk3UGFKS0ZSbUdJb2pIYksyQTBneVV6a2N0ek1mRXZkZXM2c1VzQzNr?=
 =?utf-8?B?aXIxb1pSWkdUOGJVN1pFMlRMR09hNTdFcTRkdTgxNHVycG1HVE92MUVqNVJ0?=
 =?utf-8?B?aGk2aVo4UG1vd3BZT2dweldtWmVoWDFkaFBGNWVabFhybWQ0WkVQZ3pEbHd2?=
 =?utf-8?B?S2ZJclBvWEJuYmFCOGg1N29rcGdIZGNZRDdxSTNlYzVmZGVLN2pBckIyTTJT?=
 =?utf-8?B?ZFUremFneVFPQ1VmOW9aS1FBSTQ1N1V3UE1oUVBLMjVaVFo5b2g1eDFEKzdl?=
 =?utf-8?B?Q0hvVW82UWszbWpDdmMxSHFsNjY4Ym5yOEl5TWs5K3p5Ti84Zm9RMGFHcE9I?=
 =?utf-8?B?RHFZTXdHSkswWlNxV2x5UHZmT2VBYUI2eXlWaENKdWtMNnFCVmplYld1Z3BZ?=
 =?utf-8?B?MVJhUlVrU2hwbW03a3NlSk5OTXp4Q2x1d1E4MG9FUzJNK3NuSWIvaTZhRzRo?=
 =?utf-8?B?QWhXMDgwS0pvMTBzMlRXNVgyTko3bjFXOGo2NGdPdVAzY0VGUFRkeTVab1NK?=
 =?utf-8?B?V2svK0ZrL05GYks2WUVsbnJyUWc4R3RNNlhZYXBqNlNTaHVHKzNRRDNERFg0?=
 =?utf-8?B?Q1BQN0NoNXpYWEtpWWdGT3RsSDkwVGFVb2FBMW1BR1RwUVo4STY5UHpuNHlD?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56423cb8-322d-4697-0aca-08dda97d6132
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7463.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 06:50:12.4689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bd+cMd0etTlR9ozchFW3b8y9DqbW6xb4rt7jlzV9hKEk6Al8WfRGK0uhdP4ZdIP/lSlJz8xg+DztFTw0PJSXljBPDNY6VoAW7Gq2ZKW9Cyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4572
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

On 11-06-2025 19:14, Dnyaneshwar Bhadane wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> Graphics version 30.03 should be treated the same as other Xe3 IP, but
> will have a slightly different set of workarounds.
> 
> -v2: Merge and extend the WA onto existing entry (Bala)
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>   drivers/gpu/drm/xe/xe_pci.c        | 1 +
>   drivers/gpu/drm/xe/xe_wa.c         | 2 +-
>   drivers/gpu/drm/xe/xe_wa_oob.rules | 7 ++++---
>   3 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index b5559800db7a..8824a8016b1c 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -183,6 +183,7 @@ static const struct xe_ip graphics_ips[] = {
>   	{ 2004, "Xe2_LPG", &graphics_xe2 },
>   	{ 3000, "Xe3_LPG", &graphics_xe2 },
>   	{ 3001, "Xe3_LPG", &graphics_xe2 },
> +	{ 3003, "Xe3_LPG", &graphics_xe2 },
>   };
>   
>   /* Pre-GMDID Media IPs */
> diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
> index 67196baa4249..8693d098aa9b 100644
> --- a/drivers/gpu/drm/xe/xe_wa.c
> +++ b/drivers/gpu/drm/xe/xe_wa.c
> @@ -609,7 +609,7 @@ static const struct xe_rtp_entry_sr engine_was[] = {
>   	/* Xe3_LPG */
>   
>   	{ XE_RTP_NAME("14021402888"),
> -	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3001),
> +	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3003),
>   		       FUNC(xe_rtp_match_first_render_or_compute)),
>   	  XE_RTP_ACTIONS(SET(HALF_SLICE_CHICKEN7, CLEAR_OPTIMIZATION_DISABLE))
>   	},
> diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
> index 9efc5accd43d..5c0d8b720946 100644
> --- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> +++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> @@ -32,10 +32,10 @@
>   		GRAPHICS_VERSION(3001)
>   14022293748	GRAPHICS_VERSION(2001)
>   		GRAPHICS_VERSION(2004)
> -		GRAPHICS_VERSION_RANGE(3000, 3001)
> +		GRAPHICS_VERSION_RANGE(3000, 3003)
>   22019794406	GRAPHICS_VERSION(2001)
>   		GRAPHICS_VERSION(2004)
> -		GRAPHICS_VERSION_RANGE(3000, 3001)
> +		GRAPHICS_VERSION_RANGE(3000, 3003)
>   22019338487	MEDIA_VERSION(2000)
>   		GRAPHICS_VERSION(2001)
>   		MEDIA_VERSION(3000), MEDIA_STEP(A0, B0), FUNC(xe_rtp_match_not_sriov_vf)
> @@ -57,5 +57,6 @@ no_media_l3	MEDIA_VERSION(3000)
>   		GRAPHICS_VERSION(1260), GRAPHICS_STEP(A0, B0)
>   16023105232	GRAPHICS_VERSION_RANGE(2001, 3001)
>   		MEDIA_VERSION_RANGE(1301, 3000)
> -16026508708	GRAPHICS_VERSION_RANGE(1200, 3001)
> +		GRAPHICS_VERSION(3003)

Can we merge GRAPHICS_VERSION(3003) here into 
GRAPHICS_VERSION_RANGE(2001, 3001) above just like the other WAs?

Thanks,
Sai Teja

> +16026508708	GRAPHICS_VERSION_RANGE(1200, 3003)
>   		MEDIA_VERSION_RANGE(1300, 3000)
