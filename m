Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 618C9C9E6AA
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 10:11:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFCA110E465;
	Wed,  3 Dec 2025 09:11:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YZlk9oiv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B24A10E465;
 Wed,  3 Dec 2025 09:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764753065; x=1796289065;
 h=message-id:date:from:subject:to:cc:
 content-transfer-encoding:mime-version;
 bh=6HmI/pjBmSSx8RxcOlrexEgmKXUx+cuwJy+TvCFTL70=;
 b=YZlk9oivTc5zIS4N7nTTGQeRMmpMPni/UQHwAwfwrCKTAsBzX/8WBKop
 N0X5xxIw9jvmlMOOc02296+xL9lOkbt4QyMVRHMdNtVNIYW8OGgt93QIx
 OAofvmnI62wX9Xlxky7/EZx3a8JiBbyqcsxJ6Owvp5Aqb3I8SdlYzCPfp
 Bij1ZIOGCdonOHJ69lnQn5Jvk07XDV1O64KXxoSAo5YwJmsvDlzHnm5ZM
 Jl5FTsVV2FXZ9STMu/IVAsACGlyeV0vFg8h8PqzJBTFINnJp/2tLL8qDt
 ck2tzBQOlaVEMBe9f/XlpwCuWafWVsPH5NjDMPlWI2UhdHRNNr32XxIC9 Q==;
X-CSE-ConnectionGUID: OJyio83pReCGWJuuMGowjA==
X-CSE-MsgGUID: fU/HCp7ISdCFDF5+6r0wLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66631718"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="66631718"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 01:11:05 -0800
X-CSE-ConnectionGUID: HihOWu08QBqthS7qp7E+xA==
X-CSE-MsgGUID: zIcMi2wtTYiIoM2qqXbHJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="193709625"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 01:11:04 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 01:11:04 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 01:11:04 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 01:11:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PHMFHuCbWWPao6ftox4S2YLzQ2SQVmpj08oFTRf7JoXs78YpjN4pXzKrITBQy2MKGKucriW8tTJgYrhUjZmqwlc5u10yULqLroS+cjbnFKNjKzuThLZuwVZ5/zN+aGckJ/MIY0Qmh64IM+Qr/n/eMYReZjx1QyD2s7nlovc3QfBIHHndStoyvih1QCkCzj0Jz0Z+lUCONrxOS0P+ZxSNkmFaJJt2N4XdbOjpHJcD+vE3KOAEbddaLiRpr5Qk410ZmLON2hK0JdvKn4FPNiDBP9Z4LD2WOvCHNy86PsxHCcBPnKyn71z6HKkw0rUK6MJBWyqpTOnQDlsqO1vcM4QcUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MvBXKfjyCFAf5qUj9QOKR/7ZiPgGMoM/KjnEfndDK3I=;
 b=Hl+DuMNhtNFsFaTlaYqAf47if+l6VjF1dsNBIhE6lIgl8ATLmp+RZTNmBbhvkC1Ufhhcv2QEUfwop/cmsAYroljPt2OUZcH9D/wcZ3KWhFki0L6caZiaVFgd03rEhYEURvZiwRszaasg24lPvNyFsCnDySt3jl1vkGI/b3kptTpGbazztNwGXj0dAcJIQOPMHfLk1XXSoxIEr0GhfN6qHkVSNbDVe/ktDw3Lxg5feS5U4B4dbkVf/u2j7YBYJZAtvqTZP6rPjTPKnwYo01aP1JIa1RHKXCMWiAL/G4Qzln3EImDh6ZvEVP8ZvWf9o5f20l4RlHcwCFCrpp2pW2B4Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CO1PR11MB5204.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Wed, 3 Dec
 2025 09:11:01 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.9388.003; Wed, 3 Dec 2025
 09:11:01 +0000
Message-ID: <a22915de-fa1b-40bb-9950-8a8552466225@intel.com>
Date: Wed, 3 Dec 2025 14:40:54 +0530
User-Agent: Mozilla Thunderbird
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: REGRESSION on linux-next (next-20251201)
Content-Language: en-GB
To: <dev@aaront.org>
CC: "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0241.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::6) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CO1PR11MB5204:EE_
X-MS-Office365-Filtering-Correlation-Id: 61908140-d1db-4436-bff7-08de324be0cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vlh2VGxUdkZDbzRWTUtRcE9WZGhPU2FyRW10QkxwckVvSTBPQ1Jzdm0rTGpw?=
 =?utf-8?B?ZXNpMnY3MFFnb1pjN1ZIdWp5eWcvTVNkL0duUzdsd3hIU1VGN1lFZ0NUVnpI?=
 =?utf-8?B?d1Vlc3dqRDRtN0pOd2FOUllVQjRORHdSSFVEQjlLcDhrZEROYU5DZlZoZ25v?=
 =?utf-8?B?WkNFc2RqajBzOXM3cW5QaUVqcnRHODczcHVPTjRDV1pxM1J4b25wdForZCsv?=
 =?utf-8?B?cTdBM1B6RW9Vd3RhNlBiNTNTL3VRKzUzcUhoNHJhOUtmdXhsOTNSUGFCUTFt?=
 =?utf-8?B?MmhRdHNNVEgvT0swMUE2MXFJeDVXTlR0ekdZc0d1MjJ6N1J1Q2dnOWRRMll3?=
 =?utf-8?B?REd0cStvYmZNZEFqbFZLMEMxeFJMRFQyYU9zdkdFdWgySFBCMkxJaENoYzhJ?=
 =?utf-8?B?ek5aTmR6K0hEam9Uc1orYTBaOTd1NHF5L2RYNnZLL1lkaEoraXE2MkUrS1V5?=
 =?utf-8?B?QndtQWUyeTNMcmZBTkRLK1RwbUhIOThTbHozbldhT1dJSTNTVVkxV3h4VE43?=
 =?utf-8?B?MUU1cXRBajBoMmxGQWNoMUhBSk0waWoyc3NrRkpUbVUvSzIvcEtrVTZ5SWJX?=
 =?utf-8?B?bHc5ZGd3dXg4SkNVcFVJTDN4OVMxQ0hHR2QxV3hZU29HR28vb3N0ZTh5dWY1?=
 =?utf-8?B?eEZJeWh6aUozeVVxd3pvSHZpcEFDMUthTTZpVzFkZFl1Q29SWUJtcForTVYy?=
 =?utf-8?B?bE52ajltNExoUHc3NTc4UHp0TElDcHY4SWR4QzJpUTFVN3JSeFZsZk1rMVFT?=
 =?utf-8?B?VUUyb1grc3MvVGlVSHlHZHJVeHRVQVYzclRYMzA2bXovQzZUM1R0R3hIRFY5?=
 =?utf-8?B?c3B0UHlLQlJUdFBPSjlPZk1yNXpMajJ2eVU3Ykc0MDU2eUxESjVxeEh2KzZC?=
 =?utf-8?B?S3JsRGVWZ0M2UWxFdmhXbVNDYXN2RXdZbmt3eFFNQkhwT1UrQ21PNFZCTzFt?=
 =?utf-8?B?dzA1SWQyUzVHWnpSdmJ3VXlCYitlUnJLWGxnUWJxWEdDNHhocTJlNldXdjhN?=
 =?utf-8?B?cU8vaGRSTGV1cFZvc2ZJRE9sL2dZbFhrbjZMa28xT3RNYnhQWFYrWis5UTBz?=
 =?utf-8?B?azBnL2ZsMGZLV21ZTElWdDE3ZUtPNGtjUFQySVFMRjFUQ0pibkZRMi9DWENr?=
 =?utf-8?B?NkI1eXFMNCtaM1MzQ1BBWVk4TW8waGlBelcxVTFMRVNwaE1sczBScU5pTUwv?=
 =?utf-8?B?bkQxcHQwbTFXUnhuNjJCd2VwRGZ0RFFnNEVtcWJJNjBQWHc5NmIvWU9yM0xL?=
 =?utf-8?B?QlFIN3Z0OGZUQi95QjJVN1VxNzQySEtjSHJsM0g3cUxobS84U0RHZldnTFFX?=
 =?utf-8?B?VCt0WnFsdHYvd2lsZ1EyV1lwZC9xN0dJTDB2QThJNEVwdkZzaUhXRXpBQnVM?=
 =?utf-8?B?NzQ2YzhWc1BLdnNHL1Z4NUJoU2lMWk5HTS8wSExxWHFaWDNSa3VUd0VyWmMr?=
 =?utf-8?B?RWxGVW02bWVGdmdFNWtpMGRCcDlyeTVlVnZCZFRLc01WSTUzVTZ1NTRpb1Qz?=
 =?utf-8?B?aFhmU0tIWlVvNlkyVkhWSjlIbWsydjFRa1pjaE5wSWMzZzRMdGZTOExvWDRX?=
 =?utf-8?B?YnBpRUVFSXkzY0dOdkZ6bmQ1RVkxd2p6MjI3eEFnOTJsemlsaVNGM2Z4S2Zm?=
 =?utf-8?B?U2syM0ZocTFCZVFlL3Q5Vk9aYTBPd2FCTlRDc0RTei81ZnR1OFZuYWNuWHBJ?=
 =?utf-8?B?a0o4dkRvRktQN0VXY2c4dmt6M3ZuYzhLVVovS1cxRjRGV09MaXQ1T1A2RlNE?=
 =?utf-8?B?aWtHR1E3SzZhWFNTd1A5Qmo2dU5NYkJOVW9WYkxPWGNCdXlmQUduRUd0RXgz?=
 =?utf-8?B?VXZPcG9xOThDdUs1TXBZMDVtYTl4ZWQzTTNBTHhjcHJ5aVVRNlhGcEhLOXlW?=
 =?utf-8?B?U01td0VKWHZ6WEpiT1RCc0NkS0lzZWFYNjNuTVBwMWFVSmx3Zm9sSWRpZGIx?=
 =?utf-8?B?dDBBRXg2RUJrQ20ySlM0ZG5HRndNVEtCeHZKTW1jNmdDZWQzZVZyOFBvNDdo?=
 =?utf-8?B?OEtNa2xKZENBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzNiZERlSS9uSzkzRzNEY1QvTFprYlV2OE4yU3M4ZUsyOHlXdU5kdUN3SzQr?=
 =?utf-8?B?MURYTlQrM3Q3MGxEekRQRk9zZVhkY25oMHBkN29BOFpQT3NkTzA2K1FNbFJP?=
 =?utf-8?B?MU1UeThBMS9NNVY4VExnUEtvbm5DdmJEejVjN0FOYTFXejhidEpzekUrQW9o?=
 =?utf-8?B?V0VVcjZYNUZVbjR0QzlIL0RJMEFXaG01a1U2Mk1ieER0WUhQd3lzOVdONUtQ?=
 =?utf-8?B?WkVJTkZ0cmo1K3d0Y3VDc2VRUGNRSmplc1pKckJyRVBNeUZUQTNJcXJBc0R0?=
 =?utf-8?B?QlVXVStVZjQ5ZW82QVY2UFI3UzdpQVphUXYwQmk5N3g5RkVkQ0NhMHFEQldx?=
 =?utf-8?B?RFVBS1Mvd2lFczlEOXFTZWwrTkthVFUySzJITmJTbnVHYmROYkRTY0VoUTE5?=
 =?utf-8?B?TXlyUGU3Y1Y0ckpOQUwwcFlnM2VvcDBmcngySXFBTERxdzZManJxV2dCUENs?=
 =?utf-8?B?eitLWFdhb2wyd0x6ZUhBNHpBd0FXOEtUMDBaWXZud2dBUTRtUzYxR09Pd1R3?=
 =?utf-8?B?dlU2YzhXenFLMkhIcDUzRFVQL1RpU0JqWmxMUEg4MENDbEdrWlRYSmFnWjVT?=
 =?utf-8?B?V0JYRXpacXRlck1OS0N0UVEvNVA5M3FpaWtSMzd2K3ZVaWFzalJmc2cySWxT?=
 =?utf-8?B?ZUFYVytxT1FnOE9laTBHT3hsTnZpSjFVSE1ncXBLS1VrYWlhOW41bVdGUWFz?=
 =?utf-8?B?Z1NjanhZUEF2VDRTRkh3eGtnbFNYS21XdSt5c2RRcEl6c20reDg1cW1RcVhS?=
 =?utf-8?B?T1BleXJGeDV5M2FDZWQ4YUdEQjlkdDhselZ2QnZrdk9FYXVGNTJMYVJZajhm?=
 =?utf-8?B?NHFlc1BDRndSNFBhbkdUVE1aaUR5cXduU1V3YWN6TEcyMUc5T2JSMUQ4UHVn?=
 =?utf-8?B?bWZWUUJMSjVNaHNraUFlZ3VjWE9oOHEyMGh5TjdQWHByZko4U2pCdFhKOGFT?=
 =?utf-8?B?M3loM1R0NmQrVzVURGhQL2J5ZFlzV2NxQUNpOXBkQkFSTjlMSTlYNkJoNWdr?=
 =?utf-8?B?U2gvUFNrNEFWWHZWVGhNZUh0ajV4QUVJRmFnN3VNNHgzd1dGWnVaQ1JkMWto?=
 =?utf-8?B?TmZGODlNZlVTL21MR3lhUmNnV2ZiWEh5Uk12aGtnalVwV1MzYVJrdHhFdk91?=
 =?utf-8?B?dGYzVWpTT1BocGc5Vm9wbHN2Yk1NSHI1YXhGcnkxWnp0d2VOajM4aG1CaFdP?=
 =?utf-8?B?MmlSMTExcEttOWtMenZGNGcyalB6dlhWMDlKOXA2NzdoV1NiZFAzemlBcGdm?=
 =?utf-8?B?cHhuZk9LSTh1Zy85SUc5ajE1MXRoK2pCMnFodmRDbVMvZXhveHEzeHU2Vno1?=
 =?utf-8?B?YllSSzV5U2ZnS2MzdjMySUkwaGcrc0pvU2JscXpLcDlqMFpreFI4aE5PWmF5?=
 =?utf-8?B?SGJZZE43dEY2ZVk4N3ZIbmRjc1pEQ0U4aXZjRlA3amp2ODYwYUVMMTZUOEpQ?=
 =?utf-8?B?OUY2MExhZXlQdkwyYWtZdEdGcXpYRzR1Mlg3azhGRkRHRmZzSXFPSkxHMWI0?=
 =?utf-8?B?UGFDcDZ5N2ZqYlFDa2VIOEhKL2lKbGd3SlY2SEtNNEc5Qm9LZ1dMRzZPSkQz?=
 =?utf-8?B?MTRpdlZkclpXT0tBTW4rai9wYWFRS0U2TktXM2J4WmZIdTJleGJ1U01lWUpy?=
 =?utf-8?B?dTQxdWJ2RzFDbmRyeVFjZFFydlZNSmFEMy9WeUNFVC82V1EveEI0TFVwNEdW?=
 =?utf-8?B?WnJ2ZmRFWUNOTjBBOXBLR212emRxM2t2V3dDTVhRaUJwakpYeHdLTDVPSEFP?=
 =?utf-8?B?K3d2Y2M2aUpEczJpS0I2b0FzZk14Q3hxVnd6ZVR1Q0FMaGJzSmdBVmNKRmZh?=
 =?utf-8?B?bjZPaVBldDJQM3JpT1RwVW9qNFFTS091QkwzMitWd081MFlGU0RJekhydzdq?=
 =?utf-8?B?TkoxaEd0QjdOR1kzc1BNMEQxcFMwMXlmd1RranFwd2pJRExuUUhPN25rZUZJ?=
 =?utf-8?B?aUJ6ZEZrdTNxZzB2bVVsOHZSS1Z2a0FaYkkxSUNkUUZvaHJXeFdCSlJvaURt?=
 =?utf-8?B?dUlNSDA5Y0lyRXUzMlFPS3diSXBtQmVzcitGWnNLcEpWQTFCK2Y2MjlPSkVO?=
 =?utf-8?B?VnkzZjFnTEtmLzZTMlVvL09qUWFtVFV0MWtvb3FLdnRHQWZXM3NmMFRoQXdv?=
 =?utf-8?B?ZDhPNTRLWURkQlNyWUF1dFZUQlRLNmpiQlhzakFUUDFidVp2a2Zrcit5ZTJt?=
 =?utf-8?Q?S8hdyxJuu7ArBE70hQHIPP4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61908140-d1db-4436-bff7-08de324be0cf
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 09:11:01.2191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9iRzdNz1bHls9/5+CB7ssTqdP2YhbQFuCXUH2z+4NgfowPsZeR15u9Aag0+rfkjURx+PvmGXBo/J+VD5fc6VxnUIRlO3UsQ2mrUP29qZ5xI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5204
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

Hello Aaron,

Hope you are doing well. I am Chaitanya from the linux graphics team in 
Intel.

This mail is regarding a regression we are seeing in our CI runs[1] on
linux-next repository.

Since the version next-20251201 [2], we are seeing the following regression

`````````````````````````````````````````````````````````````````````````````````
Starting subtest: load
(i915_module_load:1280) igt_debugfs-CRITICAL: Test assertion failure 
function igt_debugfs_path, file ../lib/igt_debugfs.c:121:
(i915_module_load:1280) igt_debugfs-CRITICAL: Failed assertion: debugfs_root
(i915_module_load:1280) igt_debugfs-CRITICAL: Last errno: 2, No such 
file or directory
Subtest load failed.
`````````````````````````````````````````````````````````````````````````````````

I see some other drivers also failing to create their debugfs entries.

`````````````````````````````````````````````````````````````````````````````````
[    0.134437] pinctrl core: failed to create debugfs directory
[    3.488263] intel-lpss 0000:00:15.0: Failed to create debugfs entries
[    3.563494] intel-lpss 0000:00:15.1: Failed to create debugfs entries
[    3.631076] intel-lpss 0000:00:15.2: Failed to create debugfs entries
[    3.697366] intel-lpss 0000:00:15.3: Failed to create debugfs entries
[    3.764351] intel-lpss 0000:00:19.0: Failed to create debugfs entries
[    3.841824] intel-lpss 0000:00:19.1: Failed to create debugfs entries
[    3.909492] nvme0: failed to create debugfs directory
[    3.937845] nvme0n1: failed to create debugfs directory
[    5.636042] pinctrl core: failed to create debugfs directory for 
INTC105E:00
[  177.973628] cec: Failed to create debugfs cec dir
`````````````````````````````````````````````````````````````````````````````````
Detailed log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first 
"bad" commit

`````````````````````````````````````````````````````````````````````````````````````````````````````````
commit f278809475f6835b56de78b28dc2cc0c7e2c20a4
Author: Aaron Thompson dev@aaront.org
Date:   Thu Nov 20 10:26:33 2025 +0000

     debugfs: Remove broken no-mount mode
`````````````````````````````````````````````````````````````````````````````````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide 
a fix if necessary?

Thank you.

Regards

Chaitanya

[1]
https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20251201
[3]
https://intel-gfx-ci.01.org/tree/linux-next/next-20251201/bat-arlh-2/igt@i915_module_load@load.html
[4] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20251201&id=f278809475f6835b56de78b28dc2cc0c7e2c20a4
