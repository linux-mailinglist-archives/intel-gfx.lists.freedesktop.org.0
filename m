Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD43B56703
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Sep 2025 08:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0034610E28F;
	Sun, 14 Sep 2025 06:03:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NkYzVdcC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B361A10E228;
 Sun, 14 Sep 2025 06:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757829825; x=1789365825;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6VyrTqvtqWB2wApOYYSsyf0PDaDVX24FdMZHorgMRHc=;
 b=NkYzVdcC300yhMMz9IWmIwe9R3aBc2n1BGGBeCQ2lZ1o/mlOW6tA/oTH
 TzLyFZ0vfz9GqPMNnJ/ssLiSxPW8sdmg1FNhBBdZVl/9YNKMGBVIYskDU
 1uLzYWemPTAmaJyxYsyEuMv+7i+MaqKlwMsfJk+M//PYcI36jtmgqy5ND
 Pr5ER+2Mnqq4u9uTomTb48FGN6wbjBZMyf6nipviUmHdya9CwxaCsFR/h
 tI66VuU6N4RC2d5hq+s6tfi385XdOsOpuJtMdGT+wALpH+lNGz5R0MXJy
 82MpIgbxH1dY56kfcWPGGw1OESO8iakWA8C/q6Bya2XQj7X9EVHhHDM5l g==;
X-CSE-ConnectionGUID: RoMBbIG8RDipLHMvTY6cXg==
X-CSE-MsgGUID: FpyU73LNRgWwwrtKWo2+qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11552"; a="47685774"
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="47685774"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:03:44 -0700
X-CSE-ConnectionGUID: gzZ0id/+QrmUmyiOlbNDtw==
X-CSE-MsgGUID: sIvOEqYqQXW5VsxJ8RBMvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="174720404"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:03:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:03:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 13 Sep 2025 23:03:43 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.53)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:03:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N5TtE0suKlup+5JRRw5C9YQnZAeezAAp4p3+sWrgs4/7xVeNtUQcC0yTfeWOJHrq8c/Iu9Lk1mByoNGrb3jOVCMFz+MZM04I0nOykHHQwv2N7iviH1H9aLz1BnH8nj1aGpiZ909di/wzvpCLx4V22wVCS0d9pA2gfR3mUJZYPGCENK59SGCdrLVItUHizItmqycU9F8fZy2ZfMmzTeGEwD9IxZy/WFiDNU9I4LarO6Mj+J81UwRKNyl5TiroumJgcE7kw/UeHgJDHD2TRWIYlZdV1SQU2CUugbHN1gwOTYYCE2/hINQuFpA9jws9cl+YgzGXUWHzI3fU/Ak0VJqMCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rQhb71amCFKGumn5xe3JFj6WcL93z2z2ihVfCCEYOXk=;
 b=LRznF2BTu39StVOro02uReEcOwatLKZb1eA28CqBaJHjMIgIRUSr66PQUbE8X9VRUSqt/3s4kk/7xoGxjcl+MRJDmJ46toVN90nvrIuPetiTauENUoZfPwPBJlK1TYkjAqL/rW+SbtlomvWLEtgDVVW7bjwz6mwvVqahup7yQyUOiNBEd6/3g5ANLqx17fdPMwgUGwmwS2A31yYYWsKsrN7SKGQvRdXoXjqMyGsbEwV73+Fy0GAhJSK+FB7KRhcS+0oJ9np56YxS+eEGslorPwAKBJCZPEYImz0o9ER5uur9WLWnsm1B4WOvIKWoad1x3gTPnH7ZuiJPytDM/yKN3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Sun, 14 Sep
 2025 06:03:40 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13%3]) with mapi id 15.20.9115.018; Sun, 14 Sep 2025
 06:03:40 +0000
Message-ID: <a19c3d33-bc31-4c14-b2d5-6917b8e0b06e@intel.com>
Date: Sun, 14 Sep 2025 11:33:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/15] drm/i915/dp: Add SDP latency computation helper
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-7-ankit.k.nautiyal@intel.com>
 <aMLZTPfiC3__iUbY@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMLZTPfiC3__iUbY@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0001.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::6) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|SA2PR11MB4876:EE_
X-MS-Office365-Filtering-Correlation-Id: ce46a5d2-c844-423c-b93d-08ddf3547231
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MmZRS2ZTMVZaZmdPak03OU9tb2ZsclhYdW9La01FalhiWEt3K3lxOVc1TkVZ?=
 =?utf-8?B?bERIa3Y0ZnlKa1p0N255WE5KM1R1UmpKclYzbWFQaldvOVJiajg5YUhwdVRF?=
 =?utf-8?B?cjdKRFk1cXpERzVGRm5jWTBpTy9JRUM4NER4aUY1TnJ3ZzB4NEtZQ2piTjg0?=
 =?utf-8?B?UmVJVVpTY3NQdkVUUTdwdVU0T05rRXdSQngzcnNEbXBXUzgxSGVPUFFmejZE?=
 =?utf-8?B?NDZ4ajl2U1l3NjRLT05RdEx5UGdld3Axc29uVkZEU3AzcFVZbkRvL2ZEcUJG?=
 =?utf-8?B?bU4yVndGd0prdytmRXd1ZUxJUHkzMWZIMUJSZGtMNTkzQmQyS3FOb0NEUXg4?=
 =?utf-8?B?dEpxR2VWNHlmTlNISm94U3lac0FOWlVrUGM2YjBHK1o0ZzhGNEVSVmFaOUJS?=
 =?utf-8?B?NkUzcU9TUXd1N2t5WG4yeWFybzByQlpEaVEzVDlPVk43cXV0TmRRVTlyTEJt?=
 =?utf-8?B?d3M1bXRMRTFJeGkvRkFPTjBMd3VrelZGenc5WTNhY1JWbnNKaEpVSEhTUzNL?=
 =?utf-8?B?MC9rZm4yWExWamVzWmZDbFFyNWFlNmg1MjhLSVZZWlhud1Z0bzBxQVlMeEtE?=
 =?utf-8?B?TjE0UlI3MmlmL1k4RWFRQTNSSlFkMm9FRWtTT09zRUVONjlicDArZHNjS1hh?=
 =?utf-8?B?Q0lBMkl1eGJXVllxR3hhMDAyUGpQK1I4VHZBYWFVa2IxWUpoMzNVcmVnNE11?=
 =?utf-8?B?TmNabmViblE3ek1TWHFkMWRkSVhuaDNtelZ4SlZ0SE5XaWp5ek1hM2lQNnQ2?=
 =?utf-8?B?anIySFB4TnNDTmpORVo1MnoydFdjWFh0WEYxRGtkTm4rUnVHTHNpVFdxaXh1?=
 =?utf-8?B?Q0NWbGlxRVdZUnFYWnY5c1grajFzVGJNVTJjbW8xTUNjdDlZSXNpUHNHMmxB?=
 =?utf-8?B?NkNSYXpjOG02a0VOMmhMUFFkK3o5c3UrQVZzT0ZEeUdlNHduSXdMYW9yM3h0?=
 =?utf-8?B?emVtZWgyY3lrL1RHbkRScFlBc1lqblFzRHlYN1kzTEp4cHpXcWFLK3FqR1p1?=
 =?utf-8?B?a0wvQWdEaVhlczFTRTBQS2p3OGw2RXRQWFppNVdGOVM5OTUzSW1VNitGaitQ?=
 =?utf-8?B?MVpvM0lVNEJQaXZsTG1PNUNPdS9oSXJmOFBHUXpocER2OVdSaERrSXB4ODFO?=
 =?utf-8?B?S0ZKVlZhbkY1OWpVcWcxMCtuSjJIYVlYTmFaQXZCZHJ6R1VCekdjWGE1eGNB?=
 =?utf-8?B?eWt2cndyaHZLaUdtM1hQdk9yL0M1QVNnblJjenZOcGNsV2ZqL3dPblg0YkdM?=
 =?utf-8?B?UVZrUXA5OXF2UnVObCtoMkRGVEQyZUtwVzdUREQ1eUNCK0hPcGFhMFNRNzBa?=
 =?utf-8?B?TWs5aE1vWFNaeTlYaDI3ZTYzMjhFbFdoNm9GNFJ1dUwyRnN1cVR2NUg2RUFG?=
 =?utf-8?B?NEdlZUl6N1RMRHQrN1pqcmhYUVdJSHNGbUVTUGdXL1VKb2dRaVk4L3ZHMlpr?=
 =?utf-8?B?Ynh3ZXAzUlV5bGRMaHBETWpLQ3p4UWtESWUwMHF2cHFsWmJVREVRaG5sc2Nq?=
 =?utf-8?B?b3JxNXpIeWhMVVpWRTNzb2VLdVFCU25TTWovRHpXTGFZQlQ2d29YNFhTdGVM?=
 =?utf-8?B?RDhodmNiSEdYOS84bmp3WUZtd3dYUmtJMDE1UG8zWmhXNVJ0bkRLbndiaXdt?=
 =?utf-8?B?ZWJieDl2ems2WEhyQUVPcDN3cXZrUmVKSkpDNjBUcDBuSzUxVFo2MUE5cnlr?=
 =?utf-8?B?NUFtdG1paXAxTlFuZzVmOWV2YWcrZkVON2J2dDFOZEkrSDlzQVJ1cHV4Mjky?=
 =?utf-8?B?a1QvWEhNakFTd2NvZnNrS3BhdWk1L1h2VllPUHRVRXFXS0NZRnRUSXRmRVVa?=
 =?utf-8?B?QTdrcFpvYStoNDRGZnJhRHRRMGRMeU1leUM2VEsraGhLMFl4RmtiZ0ZpcDZh?=
 =?utf-8?B?Qjd5YmNrM1pDTkJRb2FpSUxwV1F4T0V1emJ1YVRPOEphSkVudm5sOW5hNFlx?=
 =?utf-8?Q?JPAdHXsuDfM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjkwRXVKZStSSGwrQm9HNVRMNWdjL2tiZkJVSFY1VUpFNXpIV2dLblFvUzVa?=
 =?utf-8?B?K0tzNUVodVdUNG9HNHVicUcvU3JXaWJaZmt4MzV0N0kzUTlkcVc5aHJlclho?=
 =?utf-8?B?S3FEcHEyR292bG8wWXNlUnBUR1NOWkdiaXpOVnp6SFQrTEs2eElpZllTWTFz?=
 =?utf-8?B?SUM4QkdXZ25CRnVkaVdsWjk5S1p1U0tvT1k0RGF1aVVmalFTeTFHQmxJcWNW?=
 =?utf-8?B?SnU2T0JBb0RlZFBFWEtidEhFMXBTcms3dSt0bEh1c1ZuZ1ExSThCaThNTkpF?=
 =?utf-8?B?OFlXQWxtOW9vNUxoZ2FwaCtLNzhJQXJRRTZSRm1wdFZHU2Uza3RWZysvbE1G?=
 =?utf-8?B?dk1nK1A2VjNrTzEwRnRSQVhKeXVKYSt1ZkxRemQ3MmttZVdZdDc1L0VjNHVC?=
 =?utf-8?B?K3Y2bHp3Vmg1RnZWMDNvZ0JweXJ5djM5S0RvS2FiUi9WWjZ2Q0VQREpVWEVK?=
 =?utf-8?B?RmZXWDNCK29sYmJQMlBNNGZ2YkhOYm9RY2tORzNvVytDNmNqcDZSN0NFT1JN?=
 =?utf-8?B?UXVnWW1ERGNwSCtpOFIxV29wRllqVEkvMkpycVpvbTk2M0NLaVhzOENpUGxv?=
 =?utf-8?B?dVh4UnRqTXpwL2o4d0YweGc2WnBvMkcrWVlNODZscnZ4bUt4OVdrUDdoSng1?=
 =?utf-8?B?T21Rd3NKejhZaHBLcTF0czRaRnJ4Z2lrdXowU3BnaWlleU8xR3pFOTNrWWFK?=
 =?utf-8?B?bFdIMnM0MjJmek80bitldUdpeWttdXQwTkpYMGtkU3ZPSFk0Z25OTy8yWjNl?=
 =?utf-8?B?WFIwVE04ZUVmeHJYbUo2QnBqUHFlZ2FReXhoVXZ1YmQrTVh3MGpIQk1hOWlU?=
 =?utf-8?B?aC9XelViNkorZEhpM1NmWlQ5dE9jcUtBeFRxR3c0VmJBRDVjQlFRYnhtbGFN?=
 =?utf-8?B?blptMjdEUUxiaGw4MTVFL2svaTh5T2Z5eTFmS1ExZTdaNWJ2R3pZbTNadjZz?=
 =?utf-8?B?RS9JSTlXUUNQM1JvL2dBbnlrYk1ReHRjL3R3VmduMjlVRzhQdUZmc3hmWnd0?=
 =?utf-8?B?NGVvaVZLb3VWY2lCZ21zaWh5QklvUnBnWnh1UEkxclJXR2xvWk1nalo0WTFk?=
 =?utf-8?B?K1QvSUNJbVB4VnNQb3ZJMUR6eTdzK2dvRFR0QTJXd0cvWXpjclYrZjVzQW16?=
 =?utf-8?B?U2lpbjdIRGQycWJOa052V3pCQk1DN05YMVFvbHpjanFWaXAwcXNZbUNJR29k?=
 =?utf-8?B?RlRlWXgrNytTdDB1dERuVU5VTGtCeTdwdjVpaGdMN1hPR2d3UzQreVBPMTZR?=
 =?utf-8?B?V1Z4aG44N3o0UFBLalN5QmczdlBRckgwV1Mvb2hsQlZvQzlmOHlNcy84ZHFV?=
 =?utf-8?B?VGZIVmV0OHBJQzI2WXRsK0x0TlV6Sm5Qb2MyeUpNQTR2ZUZqSHFSR084Q3pM?=
 =?utf-8?B?MVJyY1JIR2g1WWtyRlpDcVdRUVBxYmk4TG04bnB4N2t0cldXbGZpRThvRFRL?=
 =?utf-8?B?eDdNbHBoM0dDVlhFYWRYMllkNFdnZUVVOW5MM1RIWS8zR1UwZS9oNG93UnNM?=
 =?utf-8?B?U3FzR0dIU2Zwc0xIOEN3WGlxdFVaeVZkMWczOXBOQmEwdHJzaEJ0MHQ4NGRv?=
 =?utf-8?B?VE1Zc05yMk9YRmxRdnRVK2FxNnlCbEF4alVXSFVBWC8zWVNjWjhCTnlPQmQ4?=
 =?utf-8?B?ZzZ3cFJlWEtCMEh0enYvQk5zdmk4dzNSQmU2Z0YwWFlCRDkxQ3VDY0hsdkY5?=
 =?utf-8?B?ekJxSDRZdXNDaUJSNmg1TGw5ZmtMQkEzM01BOXpYanhZZVM0S0tob2RCKytt?=
 =?utf-8?B?YTZ5Rjd3T05SYnQvMGh1WHFOYnV2ZDJ4R0tCK2pqTjZxRVBRbFBxZWRWK1U1?=
 =?utf-8?B?N3VIN1NhQ1RlNDBuYXl6cmJTemZLcThnZUhpcVFxMkxIVDVmQkxTVUVZWG56?=
 =?utf-8?B?N293U1RaMmppVytXYmx5K1ZmZk10T1Z4YlUrc2JHcTZSVnd2YzQxRFdKZjEw?=
 =?utf-8?B?ZUFVeVNHNWR2YTB4elUya3dVcENGa2ZZT0ZyTWJkL0FmL3gybGxGMlpOWWha?=
 =?utf-8?B?UDZRV25FblhwSmNRSkpMWXN4MWtsWTVSekZaci8yU1JpQ3prZSs5S25kK0Y0?=
 =?utf-8?B?Y1hrVEl6d243bkRDUFJlZVZmSnBYZkE2aVRtOW5sOVh5TU1TR3VGdldOTjF1?=
 =?utf-8?B?U1MrV1ZHamp6RnhLMEk2emZPYmxwM0FQbVhlMkRxZUZsVGlXSExQdWNSN3ZE?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce46a5d2-c844-423c-b93d-08ddf3547231
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2025 06:03:39.9218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z25RtQHC8IQImgwDYlJ0Zw6ugOLGBl3uIPEUM0Q1hnvkNnmVHH+4JrR5teuiU+O/KWEyjVEOs/xKWj9Vn2zT9gcNEAh3OKvxGncbHb8rEno=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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


On 9/11/2025 7:44 PM, Ville Syrjälä wrote:
> On Thu, Sep 11, 2025 at 08:15:45AM +0530, Ankit Nautiyal wrote:
>> Add a helper to compute vblank time needed for transmitting specific
>> DisplayPort SDPs like PPS, GAMUT_METADATA, and VSC_EXT. Latency is
>> based on line count per packet type and current line time.
>>
>> Used to ensure adequate vblank when features like DSC/HDR are enabled.
>>
>> Bspec: 70151
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h |  2 ++
>>   2 files changed, 49 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 2eab591a8ef5..83c46e4680b3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -6857,3 +6857,50 @@ void intel_dp_mst_resume(struct intel_display *display)
>>   		}
>>   	}
>>   }
>> +
>> +static
>> +int intel_dp_get_sdp_latency(u32 type, int linetime_us)
> The "get" in the name is redundant.

Hmm ok, we can simply have intel_dp_sdp_latency().


>
>> +{
>> +	int lines;
>> +
>> +	switch (type) {
>> +	case DP_SDP_VSC_EXT_VESA:
>> +	case DP_SDP_VSC_EXT_CEA:
>> +		lines = 10;
>> +		break;
>> +	case HDMI_PACKET_TYPE_GAMUT_METADATA:
>> +		lines = 8;
>> +		break;
>> +	case DP_SDP_PPS:
>> +		lines = 6;
>> +		break;
>> +	default:
>> +		lines = 0;
>> +		break;
>> +	}
> We should probably calculate these properly instead of
> just hardcoding annoying magic numbers. But I suppose
> these are supposed to be some kind of semi worst case
> numbers so perhaps OK for now.

Yeah these are the numbers for worst case as mentioned in Bspec.

Regards,

Ankit


>
>> +
>> +	return lines * linetime_us;
>> +}
>> +
>> +int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state,
>> +				 bool assume_all_enabled)
>> +{
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	int sdp_latency = 0;
>> +	int linetime_us;
>> +
>> +	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
>> +				   adjusted_mode->crtc_clock);
>> +	if (assume_all_enabled ||
>> +	    crtc_state->infoframes.enable &
>> +	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
>> +		sdp_latency = max(sdp_latency,
>> +				  intel_dp_get_sdp_latency(HDMI_PACKET_TYPE_GAMUT_METADATA,
>> +							   linetime_us));
>> +
>> +	if (assume_all_enabled || crtc_state->dsc.compression_enable)
>> +		sdp_latency = max(sdp_latency,
>> +				  intel_dp_get_sdp_latency(DP_SDP_PPS, linetime_us));
>> +
>> +	return sdp_latency;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index f90cfd1dbbd0..d222749b191c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -215,5 +215,7 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>>   int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
>>   void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
>>   bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
>> +int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state,
>> +				 bool assume_all_enabled);
>>   
>>   #endif /* __INTEL_DP_H__ */
>> -- 
>> 2.45.2
