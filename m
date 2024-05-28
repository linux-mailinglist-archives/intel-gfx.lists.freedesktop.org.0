Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC0E8D1751
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 11:37:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F277A10E1ED;
	Tue, 28 May 2024 09:37:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PqPOnjyV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379F510F076
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 09:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716889039; x=1748425039;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=B438iUbRg9+6SLG3dV08uKi6F2Wu9fPFFf0SSUtTWTg=;
 b=PqPOnjyVi0g4nfWFMp1l2Cm8oE5ZFXsSapy9+lOz7eLllpoMoGTVhRNT
 hQ79jvUVjgFKoTJ9Rl3HwoV4Opw/xtoJKPcvYrJ19IzIT5fmtjA22Ooqc
 venKg5hNBonD/HW/pqDzBW2vrfK0cV5+vEp093wW602PwcPBWDJvJ319r
 XZQlb97EQY9dehOG5i/hhN71nEPcec/D1J7GMMYrBT0XRE+YVxreNzVco
 osJ4Q6qk4mUPgaXNUhErKiVxzSMv5igOapArVy8OC1Cc34YEv8tloHd89
 n11EPAu1Qz/XsyVgu2A2X8mB+GAz7M+iu1EZ9cjjAQJscgidpw47pfM8J w==;
X-CSE-ConnectionGUID: ANIdofGeQ7apMDW1r56cew==
X-CSE-MsgGUID: 5w5irUnDR6+tkad0p1pwfw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13343899"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13343899"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 02:37:19 -0700
X-CSE-ConnectionGUID: Sk/5Dbp6RbmvFnlkpc6zTg==
X-CSE-MsgGUID: KxE6wP+BRHmYqMjPTCZP6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="39832400"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 02:37:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:37:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 02:37:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 02:37:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fD6mz4d4nFlxcvUIwELLA2BsejgrRX04iY9Y8+JBA1v6SWsZNQH01QC8xMgB1XlsbsCQsD46llPEGQqEOCUWQNMiwVcQN0jYuvOHlHW2cPI15zg6xEhIndmkhkzT7PElIqQ5n08r17p8THC9rPlTwyL3lC+XNEK7UF8eR+bOMx0PdstADlOlJnmjeMN4zxuk0oLqJ+F/tpDC736F9KuT/f1zIoNfK3zNhcwFE297JER5EA0ZOnO3XnsJijOHyiBE2HI+s+Fyz5wFgWSx2xcm4XZ85E3FwJYPnHzx5XOQJPNNaHyzWi9ktZ86txXzpihwu5pLbanlNDo+pvmL05y3EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uKJrRVXADRaQk9dvESgk842pXgb7NbwLVSxgEHUQrrU=;
 b=R7aOgvmApY3tcD9XbmPeRTIJlkRlULGXBqb45GsrWVpDhwsOTMTREaeDMG2+N7wBkYkA3bH/p2kg2zsQ9PxKxARJjFvykUHLn3rMMr3ktA/Zv3EoTgCDtExJTu6hEoRVlUM7PpcTO3s2YZ0UVJxRFIcIBNuU6NfLKNLxGwXfEU2nBmUke6fshfWWpkSRxgDAsaf/Rc3KDDuXxkRZ8r9pbZH13RdCgb6XCOUNaQpGvoGTh9EzZRebOPVj/zZA61wpjMBZzz/UBUK+LYo5yvJEFnqaldmdGvZ1MBmSjkuk7qD5SYg8NAZnW2EpVqbdZ3x1WHeBia0wTBv5ga41/JLrEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6777.namprd11.prod.outlook.com (2603:10b6:510:1c8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 09:37:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7633.017; Tue, 28 May 2024
 09:37:10 +0000
Message-ID: <8a3a4284-922b-4573-9eef-88211fe03124@intel.com>
Date: Tue, 28 May 2024 15:07:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 5/8] drm/i915/display: Add support for pack and unpack
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240524102432.2499104-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240524102432.2499104-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0001.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6777:EE_
X-MS-Office365-Filtering-Correlation-Id: c873aaf7-befb-4cf3-3682-08dc7ef9bf2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qm1OeDROSWdKT1Z1dFR6ald3dkRZYy9GTUdySWE0azVlNTlKaHJubjhwZWdB?=
 =?utf-8?B?c0kxVk9lV2s5TktPMFppN0tXWXY3R0VKSHRIWk04KzVFNGp6eXlzZEd6TmZX?=
 =?utf-8?B?bDFScUtQT2hkaUIvNjR0dGlCSTlXYndncVcxSVovUTBtaGVYMDQ2SGQ1aWli?=
 =?utf-8?B?UWc0bHAyMjgzMW9wem5zVlhPWkZ6bmJiNjNUYW5IRVN5aUtETnVPdzZkak1F?=
 =?utf-8?B?ZHNHL2tmWVh5VVpqd2RHTnpta0ZjMmp0dDhVdTNIWlhTYm9leUxMVWJQb2Vh?=
 =?utf-8?B?RDFOUDhscmk4ZkhsVDRtSStoemVtN1M5S3ZuaTBtWFI4SlY1NWFpYi93UGw4?=
 =?utf-8?B?djFPelVrZHZ5N041bHUxN2MwY0ZzQVI2MVhDckdoazBweU5SaExvR25abU53?=
 =?utf-8?B?Q0VLd29MNnJmUTdLbFFTbjdDVHIxY1cvZ01ScWpZSUczRE1wODZGRDhCZWln?=
 =?utf-8?B?bkpaSkU3NzFIWWlKOEZsN01pQnI2blR4eVl5TnkwRFl3WG5YNkNDME1oclB3?=
 =?utf-8?B?VUxMUlhYQTdMb3VOZDFUZTJaK0M0dlUzejlOcitVK0I0VkxLdmROWFZXank4?=
 =?utf-8?B?bGFtUjFFeVphTisvWm9oMXJaT3E1TW03emNOUU9wbk9ybkp3Q2l3cUVmNzBD?=
 =?utf-8?B?UHJBSUk3cTRwdElLdnc2N0d4QlNzNWVlVEN1SUV6YUZqYXFyNVNmdE9JbjE2?=
 =?utf-8?B?K3YxM3NYbllGc2tWUk5teUtZV01wSTRRZ3ZCOW5QZCtlSVV5QXlRa2dpWmwr?=
 =?utf-8?B?NEJMOUo3Wkx4Y3dQalU0eWtXMmhnNXFJUURYcUJKYjkzeHhrVWtHamE1REZq?=
 =?utf-8?B?U1pJNG8zUWkweHRoRjYzakFWdHFJQkhvQ2V3MGlVVTB4YThsbmtEbnBBZTk3?=
 =?utf-8?B?TDdjZEtTaVFURExURFdRVEFERHhkMkJCMndhUFRoemJibERWaVF1dktyT2FS?=
 =?utf-8?B?WUF5QzFrSlpOd01RaFgxYVh0bjYzZjZ3ZGNNM0tmNU1hUkJYOXluR1dPTS9W?=
 =?utf-8?B?cWxkelNpcTZndmhCWTRKeFluMXhxMm0rdE5sdnU3SnE2ZmsvUVRmcS9xQlhI?=
 =?utf-8?B?SlQrR0EzbzlzRENrcVZnNzAzTGtaTldPYWhMaWxUNTFWV3d3bU54M2pqQXFV?=
 =?utf-8?B?K3N4ZmFYWm1JeGJYV2FWeW5rNkJuR0hGeU9YcWIrNTVKaElkY2pqWE9lbGh0?=
 =?utf-8?B?b3JPNXhIU2gwU21rZGlJZG5KcVp1STlVa0Z0eWxXOHlxaENWbEhFYlFpdGY3?=
 =?utf-8?B?MDVFMFNUOGVEb3JKWkdubWFxOXdoaDRlbHBGOGh5M29IdTdVVXFkMDh5cHlt?=
 =?utf-8?B?dU8yaHhsM1VTQ0kxMG9VQVRFR2UycXlEQUlOcHZEaVpJcllvUU9MbjdtSmV1?=
 =?utf-8?B?dk1KWmtnS3lUMm9YQk1lbWdOUzN0MTZSRXBsYkgvRFVFYmF0VW1vdTcwcW9I?=
 =?utf-8?B?S2QwU3ZkZjRPQ0gyNS9aa0d1cXdJSG9hc3R0T2hkK3ppV0gwYWRpTzFlWDBB?=
 =?utf-8?B?M2VEak9KQ3N3RXNVUExQcGg4K2YzS0g4R1lkNHRXak8xTmNGRVlEZlZXVFZH?=
 =?utf-8?B?bjhYT3Nrd01pcjBvSWMveVRzaitiaW9JS3R5VGNGdVkwanNuZGI2d0daMlRH?=
 =?utf-8?B?bG9WL1R0UjdUOG9RbSsrNkhqK05kS2dReGMyWUlyTXJDaUVxblFRNytwcTMx?=
 =?utf-8?B?alNpaFU1WlBoby9JTEdmQVZZYWsrODQvNkR0UFZTdkRJenZUTmI5bWxBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHBOM1B2QzZQdERPODlaQzltejFkY25lZm8wdzBEd3VXY21ZTnh5OThxVjBt?=
 =?utf-8?B?Mzg5Q2NoalV2ZUJ5c0N3K082Y1E4L0hGd2NiTWJqeSsvY25oMVpDdlRBYWxP?=
 =?utf-8?B?Q3dmVVlzRG45YmN5Y2d0QU1ZSFV4S1liYWRhdTc1Yk9RUDRNaWU1eXpULzhx?=
 =?utf-8?B?d1JncGE4U0Z1aVJTeVMwTGVCTUMzcU1JSFZ2RmhZWGpnZEN3WTZwekk4OTd1?=
 =?utf-8?B?aHhQZVdnaUNPK0tjS0F4L2xKc2lHdXczWTBnUEEzQTBEamtZVlYvMW5PNEQ2?=
 =?utf-8?B?OUk1QlFJa28vc1oyeGhVaTYvUlpZNWJTMGdCdHc2dVhwMUp6QktKSVZhTUhh?=
 =?utf-8?B?TWZ1VFdHcDVpUTBKRnlLOWRFV3p6clRYc21Fd0RFZkk2SElKYlQyQzRtT05O?=
 =?utf-8?B?SDZrcTdseXJ5V3ZNcFQwYTZaZFRZSUFCYVhDQVhvQ1kvRmRrUzV1OUNtbDFW?=
 =?utf-8?B?ZlBHT3ZqZkgyR3Vvbk55U0RVRWNiQlFHVlFTUjJBOHdxdjlYY3FaMXdlVnJn?=
 =?utf-8?B?dFk2QTBnRHRWc0I2M1dJSnlicnhKUXVmc1hCdGtzZ0F2NVh5bTBuQnpFWjdt?=
 =?utf-8?B?eDY3MFFnRXFUeWRnSklnVEdlN29CZHh3R3hFdzZlWEN6dVE5K2FjVjEySEdM?=
 =?utf-8?B?QUUxSTJYSG8ySlRDRVVBdVYyaWQ2TXM2d2FpTmpFNEdGVW9XcVRNQTVhZ3I1?=
 =?utf-8?B?eExyRm5wZzA2aHJ4dXlMa3lVVGpLMFlnNFFZMU0waW1BdkdlRHVHYm0zb1R5?=
 =?utf-8?B?aEFheHMyVk5Ra0swc1R5UkFIblpjRkRta1ovVCtvdHl4SU1RMkhSWHhDaW1C?=
 =?utf-8?B?dUEwY1AvY1Rnb1pIbWk1OTRpWGM0U0l6emVHNXA5UVNYVURwM1J4M1Y4VkJI?=
 =?utf-8?B?TmNYdGFRYzZzdUVhN2loaDFiakUrQXVrMjd4V3pGRTlXZGhpc3JzVlp0L2x6?=
 =?utf-8?B?RnBJTmJuODRNTTdzUjFQbmFHZVN2NkxjbFlzRnlZVFhuTmlQODVTc3J3RlJw?=
 =?utf-8?B?N09LbjVFUGtSa1p6WWxQL3VnTkpxcUl1RktreXZnejNvdWpoUGM5Tkd3M2hT?=
 =?utf-8?B?SXVBZ3dSM1JRU3EzT0xFQTVzeGd1dHNzUWdZckRTY2lqcWhkdzFEbUM4a29R?=
 =?utf-8?B?UnVIUktmT0dFOWhhUHlSUUFmMVZ4T0RTZmsyeWx4dm5LQ21LU2tJcExPNjlE?=
 =?utf-8?B?YVNVZG5ZbE0zS1czR3NERWZ6VjhHdzJQT3ZXTUx1WjlYajJGQXZIZCtBYmF6?=
 =?utf-8?B?eEZWUkVqK1lpZmVRWHhGd3lNOHI4ZUIvYmtwNlBFRnZ4TDB0Y2EvZUcvZG5G?=
 =?utf-8?B?U21GL0NUcWxTd0FyUXBPREk2dTFzZWptNjFCOW5zSEo4N0tHdjNBMVljVDJ4?=
 =?utf-8?B?U1I4b0RWa3ZSZzBjT0ZzWXZWMjF1YXgxNjB6c0xXMms4S0tvM1A0UDBoWk5T?=
 =?utf-8?B?Witpa1BLYk1xR3RVSXJmVkZPbGMrOU95ODAyKzFCUDRkdy96Q1UyWmFTYU9j?=
 =?utf-8?B?Ri9UYUdtTnF3bVlicWh1R1lYVjhWRzd2MnR4Q2pEaXNUYUZOU1FwZzNsSFpR?=
 =?utf-8?B?cXlYaFBvV2hpNVJlbTZ0RHNOUVRtV0V4aENIRGhJdHI2NHd3eTBLSGRKcHEr?=
 =?utf-8?B?YTNGRzVyYzc2QzZCZklzbUt3WWdOV0xRbFQ1MkZZVXYxV3oxaDYvY0J2dU40?=
 =?utf-8?B?R0FhOXh2YlE2SmxPMnBCQWRYUlRqWU1HM1RKQjVQR0JQVm1PL1NJd3VHNW1l?=
 =?utf-8?B?MmJCNFV6Zm1mZ0pUVUE2WFc1cXFJVnVsUjFMVGg4T2hiSkgvWmFhNjYybEFQ?=
 =?utf-8?B?RW8xdllzS3NINWFXS2ZhWnZMcUlXMTNDdi9sY2o1VDFaSmZFQ0ozNVRxTlVH?=
 =?utf-8?B?bytJb1d5SGlva0ZScXVydHhCQ1UvRU9YMUs4MDh3Z2JTS0MvZGNxT0E3L1BG?=
 =?utf-8?B?ZmlLa0F4YlBaL2V4VjY0b0ltWVhKM0VlSnRrMGtueC9WUm9yY005TDFFelpk?=
 =?utf-8?B?cU0rRjVTMWczdEY3YXhnN3ZYTUFDOU5pZHdSelNqS3krYU90Q3p5VjdGNzNn?=
 =?utf-8?B?K29JQUw2NkpEY3ZrcmN4bWZnaS9HT29SUVBMUXZpZFZqRnNORUNQUFFuMlow?=
 =?utf-8?B?amVMMnJEYm1sTnpWdUdob2FiWUN2cWNscWtZMlVwZ1pnbHNpdFArK2VmM00w?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c873aaf7-befb-4cf3-3682-08dc7ef9bf2d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 09:37:10.0000 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zAue9pa4YMSK90Un8xz1/JbKcH0BFD5gMljaxXSdKWRbyIxrKiXIIqNJJJFgEepWbCPQRoCwu8mnrmFXpXGo6AlxmumAWXoy9tH7QQ7xO7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6777
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


On 5/24/2024 3:54 PM, Mitul Golani wrote:
> Add support of pack and unpack for target_rr_divider.
>
> --v2:
> - Set Target Refresh Rate Divider bit when related
> AS SDP bit is set (Ankit).
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c0a3b6d50681..15aab14c4206 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4230,6 +4230,9 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>   	sdp->db[3] = as_sdp->target_rr & 0xFF;
>   	sdp->db[4] = (as_sdp->target_rr >> 8) & 0x3;
>   
> +	if (as_sdp->target_rr_divider)
> +		sdp->db[4] |= 0x20;
> +
>   	return length;
>   }
>   
> @@ -4410,6 +4413,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
>   	as_sdp->mode = sdp->db[0] & DP_ADAPTIVE_SYNC_SDP_OPERATION_MODE;
>   	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
>   	as_sdp->target_rr = (u64)sdp->db[3] | ((u64)sdp->db[4] & 0x3);
> +	as_sdp->target_rr_divider = sdp->db[4] & 0x20;

Missed to point this last time: target_rr_divider is a bool so perhaps:

as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false

Regards,

Ankit

>   
>   	return 0;
>   }
