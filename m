Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6822F9F73E9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 06:28:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0300810E477;
	Thu, 19 Dec 2024 05:28:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nH1MWNmb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A49F10E477
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 05:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734586126; x=1766122126;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PNcH9zMCARJv/6zS5s0+MxDkaa6aLfUJBPczT1ZR8VA=;
 b=nH1MWNmbSHZSEr0BUl6sHu9XaVoUGW/lOB0KGmejtcwE103Li5Tau+l/
 WbtCLomzTc+jumTvdo4NJNOqQ5EksOwU96PxbwV98lGyvqlT1tc1SCUlY
 rPX4y3hkAGwTM8iFGJfFnkkK0DNT+5bHIjJninX6VdqEXNfw0Mfv2Q/FD
 yZdzOUOE01ZV12QdKCcNT7foGC4feIyuf3FAJfUiJZ8OJEq1dS7U/WTIn
 8hgvQH5tCyp/ucIDSkJH8zpwz+EXV5G/kiMQVS9jkwFkzj2EtmMxxsgrE
 icHeLMh4XVD45UyQt0NycFrUTfFcwrjuC1iVoterTj8nbBj2HadsT4FBN Q==;
X-CSE-ConnectionGUID: M57Rb3rHQVOOdsREycjzlQ==
X-CSE-MsgGUID: txLoWqDCRE+rko8Z2Z9F7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="35113323"
X-IronPort-AV: E=Sophos;i="6.12,246,1728975600"; d="scan'208";a="35113323"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 21:28:46 -0800
X-CSE-ConnectionGUID: 3pSGSsU6RH6HKlGHO896qg==
X-CSE-MsgGUID: xrXz3hujS5CJgQgPV6dQKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,246,1728975600"; d="scan'208";a="97923041"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 21:28:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 21:28:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 21:28:45 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 21:28:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DMaNnP3ySHOgXNX4EpekDnVdpf6WeLteiBK1V+bu9qPjH/EsrgkhYG77kET3lo7Bg/YV7Q68aRD+p6pLN6wGIT5SOX3Dy7Rp+5dCk69WaWEB2JzUMtbf/uCyQJyd7PBj9++L3EDVS3evE1fluGRyhGGMYKPlZhzmLLaBxuhaYSkNKh1p0APdgOQCxN4Xgay52tn7xkgFF8zk0g7ii8MSQR0x424C0YEWeD2s5clfKanRmelg5Z+s3fbT03hCQoKw5U51ElLU31SwOB2lYceBPYQevTcPyph4MgJosBNrEZZ2WrQSbDymiuoWKPh4xanRkoPRh6aSuB5Z542bNmiOKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ZEweP33Kl9R2uhjK1+1nj4eMChZ6Gihyja09vrEoYU=;
 b=ZQDG3ij4xAb7JtW4b/j+REMkl/aTfqRt+8sskZT276fdRz+8GpN8KbmShVc0Kypv76WCQDHkpJIBz44aKKLuiQdSjvcoOU+KvEwdQbMVwGgy+kcATT1vCgQvdPq/15c70uOK06OzYBrW7aill7wi4CdtbRbXz2htjrvk0xI7uaTIlJKpKk6N1OKVCIOBYDzWpFnJYW1pghUkjT26OOnZXr2bAgbu7hJA5wjc4Nq/2J2XY4wocdDWgYr25ks1N9aiQCEJF4fyj32kH23R2AA6iw9cxna9GGZyPwQf8vJl+FSNs2Lp1kOS3NGlf8CD3zn8gnMM01iu1wkSzVFEbf3Fsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by LV3PR11MB8578.namprd11.prod.outlook.com (2603:10b6:408:1b3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 05:28:36 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%5]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 05:28:36 +0000
Message-ID: <39db92ed-b902-464d-bf04-b5c8aca2599e@intel.com>
Date: Thu, 19 Dec 2024 10:58:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7] drm/i915/selftests: Implement frequency logging for
 energy reading validation
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <sai.teja.pottumuttu@intel.com>,
 <riana.tauro@intel.com>, <karthik.poosa@intel.com>
References: <20241129154716.2764974-1-sk.anirban@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20241129154716.2764974-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2P287CA0010.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::16) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|LV3PR11MB8578:EE_
X-MS-Office365-Filtering-Correlation-Id: 435527f9-358b-4d4c-8921-08dd1fedfc8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ek9HWHphR2ZMV0lVbFhaSTBHOTVBeHBTdHJaS2dhcDNkQ2xHd25ITkFtbEEz?=
 =?utf-8?B?cEtnOHkrQmw5SFM5RU5xZGhiUU9LbC8zRUpLeWJ3em1XR3ZhdVhrUmZkNWd3?=
 =?utf-8?B?dUZZKy93OUZ6d1lab1I5VVZnVUZFYnFIMFFtUGpYT0M5c2lNMHBPYmJRWFh3?=
 =?utf-8?B?SHp2UzVzYUI4Wks4WWQ5N0NFTCt3RkJ4MzFReEpuckJBRTRpNlF2S29WY0tG?=
 =?utf-8?B?REFiQ1hBZ2xqdGdJeFdiT3UzNzVIK1FiQnduYklzNVZMV1phbkVTS2s5bGNi?=
 =?utf-8?B?MFdRTFNTTFY0eHJwS3JHWHFnYzdldzlQR1BiWElMSitDQzhwNnpzSlc1UEV0?=
 =?utf-8?B?Q1VYOVRWTFVESFhwV1d6Rk90dFladDRVV1M5QkV1ei9wb2hrbFJYa1JLeE1F?=
 =?utf-8?B?N200dG9hOGlsOFgzNnluZEtnZ1Fya3ZIcWJXRVNGaTZFeUc1aExzUTF4T3VN?=
 =?utf-8?B?Smt6d1hZQS8xWFRnUUQwSmY2L2pkTTh2ZXRCZVA1Ly9WeGN6RTBiN1RaLzNG?=
 =?utf-8?B?cm1nQy93UnFBVUhzVzlmS3ZlTEpKU2JSU1Y0bU9LK05hQjUrMWJpYkJYTm9l?=
 =?utf-8?B?U01PVGI1WXlLUzF6d2hpSk8rVWhQT2t6TUhUTmlqN2lTRmJRNGNlbjV1ZzRC?=
 =?utf-8?B?ODBKbmFhc2E4d1JrRXIwNGpTK2xWM1VqN3VWQ1B1ZE9CMEhtWTZZai91Z0Z5?=
 =?utf-8?B?WXhTZDh5Um05UkN6T215cnZWTFNKa1ZXRWt4Y284Q0phWW1qSnBwWEZuQTNj?=
 =?utf-8?B?YVdvRE95NlNtNXpHbWVqRTFYWFRXVjBoem5qU2RJdHRMWVFicEQ1MXRXNHlB?=
 =?utf-8?B?WEg2MzA1cnhZNDBZUWZ0NUJpQXMyRjFXd1ZUa2FBTTdSWjk2SmRJeUVJcU5S?=
 =?utf-8?B?WWIvR0hLSTZTeDZxQlBnTlBUQnR2Q1NhR013N0pJVGMwLzQvdHZ5YWpndHdv?=
 =?utf-8?B?UDIzc1JXVUJXNnMzWE1FbFVYMUdQMWFibW9EcFBKa3Izc1lkSmFIOCt1M3RR?=
 =?utf-8?B?V3VWb3FMNUJvTDM0ZmRzQW1RMlRuUnlMRWJhWVFrM0t5RmozNzJGZ1hUZE5Y?=
 =?utf-8?B?bXFkZEQyb3BscVNjdnVrR0xNZUwvdFJuNTFXTkhWdDZSZVI3WEtwOU51T0dk?=
 =?utf-8?B?RTVCSFNNaGdJVkpBUFdISjhLNDJUNzdhYWVZekh2RXFiYXFWZDVOTzBoQU9J?=
 =?utf-8?B?UzJFN0ZYL2RNZHBLNXdwUnhpeFNzZnBBdTlWZjU5UmozdGsrNzV4T3pYUjN2?=
 =?utf-8?B?VVgxanlHNmVrMmVUMVRTVnQrQzFKNUpPV0hlbXo1UUFrcENiV1ZVampFVUJu?=
 =?utf-8?B?RXg2MjUvMUQ3NUhMWVZQdE5DYmVudHFQQXBUUkEwM292UG5lek54YU5TVHBu?=
 =?utf-8?B?U0VoYVBwUUF1eStUTk9HTjZDSStHY2w4RDRYandHSTVvcWJNLzNKR29saUVy?=
 =?utf-8?B?K1YzMjFBcmVQekRCZVhrMlZHTk8yTFVpb05EWHJGTTdFOStYNksvV0s1ZjBH?=
 =?utf-8?B?NmtXUytVRk9oUUZzRE41SjluL1o0YXM5eWZzUUF5VVZZN2JlUFNtcWUzYUZB?=
 =?utf-8?B?MkwwM0N5OXBpbmIvenhWYUVrYXBYTGZSK2RtRm1qc2NaaExRY1dVUi9tV1la?=
 =?utf-8?B?bU5wMUNTZHg0RTYvYk9qamlVd2lvRjFTaXhELzkzL0ZLUkRyeUh0TTBISmo1?=
 =?utf-8?B?TW5MV2F3QVVQeVU4RG5lRExDeU9oRGN2dlNLMWdUMmtxemo5WGlHME0rT1Zr?=
 =?utf-8?B?VE1ucTR6S21jZHJzalBtNStZbnZ3bjJDSjF5T080QkdJQnJUTUFIU2hBN0R4?=
 =?utf-8?B?SU45SDdsaDRYRUhhZ0wzQ1k0ZFRxWEp3RUJTQjc4WEpOQVhZaS9LRi9oaFNx?=
 =?utf-8?Q?maai2NboVCqQc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SmhDYnl3N0o0S2ZaK2ZNNWVycDRlSDJGNkVLS3BhUENpekNHcVVKaFJjMlR0?=
 =?utf-8?B?KzFnalYvTVBmaGJPUkhuQXNzS0liMGNJMjZjdXgyNGJlYU01UjdRSEdqOGlE?=
 =?utf-8?B?Y0ZPK0FpcVBmVTRxODhiWFV3WUxyTEtSN3N6S0FHb2VObTIyM09IQXdvTk1w?=
 =?utf-8?B?N0dlZ01qNVdCUXQ3Q0huNnc3aE1HZjlDU2FycXpBU2M0WEZwRlRLWWdOL1dl?=
 =?utf-8?B?NGVoaW13M2JnUEtreWF6Mk82THNqYVUyeG43clVaSEV0REk3bkpHNWVFdS9D?=
 =?utf-8?B?NnBSYnVvRENmNTdaVFpydDVNNVZRc3M0S2tLZUxjNkliVXhKL2NtQUNCVjRC?=
 =?utf-8?B?OURvMWZvRnJaUzl4L0VIWWN4MUdkVkQ5UW4yNGYxRllMZUJFNk41THdxdGJo?=
 =?utf-8?B?MlVidTNjY2R5QmZEWHJVQUlVSnhaemNhaDVWcUdkT052YVFrNm1pK29wd3Rp?=
 =?utf-8?B?OVlUQmtNYy9DVlRQN1QvRXFHSzdpOXIza01pY1h3VG9uNXlndHVkei9PY2JQ?=
 =?utf-8?B?dUh5cHpyS2VHSTI4MXhlOHNqd2ppcU55N1RvcWNENTV3Uzl6b01qZFFQK0JI?=
 =?utf-8?B?WW9LOVFRS3RDN0FSekZRZzV6YVhyMGFmbkVsb244dDBrWFdkMTVWcFp5OHVS?=
 =?utf-8?B?Nk1iSC9BdmlwbkxqRFZDV0xnenY3dndMdmdlUGxNZS9XN3grT0t2TTAzUWxa?=
 =?utf-8?B?eVErcDRpeEk1dnE2NE5VdkgvMDFpQko5TCtlUm8vZFloc1lpS2g1Zzh5ak9a?=
 =?utf-8?B?TjBkeEtwcFJ6cTBpV29GLzRLUTcwNTRZZTRSUDhEYkdIcjFZTEFwV2EzVFVQ?=
 =?utf-8?B?akJMTWcrT1MvVXkrV25UMFk2dU5VSkp3ZTNraWxMajZNby9tV3crMGlzNEk2?=
 =?utf-8?B?UzZQTzREV1VLM3VlalA2bzFMaEl2ODZDQ3djQUZMTGVjczNZY0J1SHpEVzNj?=
 =?utf-8?B?S3RRVlRMZjBNb0lxL3BCZmRNMEFLdkF0NVZCUVg0bXJ2amdCRTkvS0Y0RS9y?=
 =?utf-8?B?TkJreFkvVDVpdXZCZWRZOWFtU0F5NzBuUmJRamt6Zm9CdFU2R3pFRUE3NVNt?=
 =?utf-8?B?UDgvOHFwM1BTbGlBUXNNTW9SMWNQUnpHd0VxOHRVekNqS3lCSXZsOGNzSEo4?=
 =?utf-8?B?SWZtMUJVUTRUMDQ2QVdLVFo3SlhwYVBtN2pKbUZLUkVXcGRPa0Y4ZG5KamVk?=
 =?utf-8?B?akZSQ1RWb2RyemNnTkhNcjdPS1ZMZ1lRVU1FVUlBeVhGaEw2RFFkY1NYUHBm?=
 =?utf-8?B?NE1MOE5kNVRyWjRTY0tyb3U0cUd2YXdlR2NnY042cE8wRUVNeU1sdjI3V1lK?=
 =?utf-8?B?dHY5dG9NdVAwNDBZMEVUd2RSSlZ0ZFY1VzA3OUdneEZQRmMxSytsRFhDazZz?=
 =?utf-8?B?bUZ0OFNpbDdRQU9xYTdyeHFCMm5MY0Q0Vkl0elo5RVFPNDJzc1ZKTUdFQ21x?=
 =?utf-8?B?YW9iMDdxcE0waEh5Vk0zU0o3M05ybGdPNVpuQWpZczF1ZmVSc1RLMXZiYWs2?=
 =?utf-8?B?c2xxdkVZWWthQ0NPbnAxVUVTZTBNcWFwTzJKL3FCSFA4YjhSUFdTZXN4Rk1O?=
 =?utf-8?B?aEhyN1pub3lmck5vM1o2Uk1CNjBjNUxpeUJ2L3hRQU1kQ2laUnhFZ0ZzUHBi?=
 =?utf-8?B?bTk1SHprWVRvVCtIN2J4a0hPbkNYRTJtcWkrMCsrWGlFMDFYdzNKYVcwQlM5?=
 =?utf-8?B?UTVFWWVPRWZlby84ZzZRL0VNWDROVUg2R0dCbzZ3elRpcU5ybWE2ak9wcldL?=
 =?utf-8?B?UjM1T2RvMUM3Z1Z2UGJyVHdmQ1FKMG9rdjNkNmlKLzdLZlJmNXZ4ZlN5Q1d1?=
 =?utf-8?B?TjJiaENKTGgzamlDUU1NWVMyb2R2LzM5dlFLUFdqeFRLNitJeTA0bHdsQzBx?=
 =?utf-8?B?NWFDdmRqSnBEV2JsaTNFWStNUG1mOG42bWVjYjBXUFZnRjhSenV1RFZMQzRY?=
 =?utf-8?B?STNmeCtOYUpIZWl3YWlLTDRtSFRCcTArdGxyZnA0K0VGSlNlVnBrQjE4cDls?=
 =?utf-8?B?ZitGY0tBN3hycERrT0JxaEdEUUZDNy9kQXBBK1FpN0JwbnU3ODNtall1L1p4?=
 =?utf-8?B?Sno2UXdWaHVHWDlvdGZ0aktvb2NNeVVvWlY2bXVuYU9JNnVtaW4wR0tsQWhn?=
 =?utf-8?B?eXU5L2M4WXZVRjVoUVhxMmVVN29rTzFaOG1YUXNUZGZhMVR4SnltZEd1ODRT?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 435527f9-358b-4d4c-8921-08dd1fedfc8f
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2024 05:28:36.6235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9PfKBuB3C3s7EahzNQOeXNr1d3HvDF5j+9uxn6uCSkutb6eYEMZ6HE3KPgXxJSvD3pCEXHHpOd9wtjMIf0qG2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8578
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



On 29-11-2024 21:17, Sk Anirban wrote:
> Add RC6 & RC0 frequency printing to ensure accurate energy
> readings aimed at addressing GPU energy leaks and power
> measurement failures.
> Also update sleep time for RC6 mode to match RC0.
> 
> v2:
>    - Improved commit message.
> v3:
>    - Used pr_err log to display frequency (Anshuman)
>    - Sorted headers alphabetically (Sai Teja)
> v4:
>    - Improved commit message.
>    - Fix pr_err log (Sai Teja)
> v5:
>    - Add error & debug logging for RC0 power and frequency checks (Anshuman)
> v6:
>    - Modify debug logging for RC0 power and frequency checks (Sai Teja)
> v7:
>    - Use pr_debug if RC0 power isn't measured but frequency is (Anshuman)
>    - Improved commit message (Badal)
>    - Change API to read actual frequency without applying forcewake (Badal)
>    - Update sleep time for RC6 mode (Anshuman)
> 
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 17 ++++++++++++++---
>   1 file changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 1aa1446c8fb0..27b6d51ef145 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -8,6 +8,7 @@
>   #include "intel_gpu_commands.h"
>   #include "intel_gt_requests.h"
>   #include "intel_ring.h"
> +#include "intel_rps.h"
>   #include "selftest_rc6.h"
>   
>   #include "selftests/i915_random.h"
> @@ -38,6 +39,9 @@ int live_rc6_manual(void *arg)
>   	ktime_t dt;
>   	u64 res[2];
>   	int err = 0;
> +	u32 rc0_freq = 0;
> +	u32 rc6_freq = 0;
> +	struct intel_rps *rps = &gt->rps;
>   
>   	/*
>   	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
> @@ -66,6 +70,7 @@ int live_rc6_manual(void *arg)
>   	rc0_power = librapl_energy_uJ() - rc0_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
> +	rc0_freq = intel_rps_read_actual_frequency_fw(rps);
>   	if ((res[1] - res[0]) >> 10) {
>   		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
>   		       (res[1] - res[0]) >> 10);
> @@ -77,7 +82,11 @@ int live_rc6_manual(void *arg)
>   		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
>   				      ktime_to_ns(dt));
>   		if (!rc0_power) {
> -			pr_err("No power measured while in RC0\n");
> +			if (rc0_freq)
> +				pr_debug("No power measured while in RC0! GPU Freq: %u in RC0\n",
> +					 rc0_freq);
> +			else
> +				pr_err("No power and freq measured while in RC0\n");
>   			err = -EINVAL;
>   			goto out_unlock;
>   		}
> @@ -90,7 +99,8 @@ int live_rc6_manual(void *arg)
>   	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
>   	dt = ktime_get();
>   	rc6_power = librapl_energy_uJ();
> -	msleep(100);
> +	msleep(1000);
> +	rc6_freq = intel_rps_read_actual_frequency_fw(rps);
>   	rc6_power = librapl_energy_uJ() - rc6_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
> @@ -108,7 +118,8 @@ int live_rc6_manual(void *arg)
>   		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
>   			rc0_power, rc6_power);
>   		if (2 * rc6_power > rc0_power) {
> -			pr_err("GPU leaked energy while in RC6!\n");
> +			pr_err("GPU leaked energy while in RC6! GPU Freq: %u in RC6 and %u in RC0\n",
> +			       rc6_freq, rc0_freq);


LGTM
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>

Regards,
Badal

>   			err = -EINVAL;
>   			goto out_unlock;
>   		}

