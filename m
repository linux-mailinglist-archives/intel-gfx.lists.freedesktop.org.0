Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D1C9FACF4
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2024 11:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4803110E24B;
	Mon, 23 Dec 2024 10:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="laKA2co1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AAA610E24B;
 Mon, 23 Dec 2024 10:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734948336; x=1766484336;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NxR6UC4sC2093pO6V6d6gQUrkOXk/aucjKsS+MrGap4=;
 b=laKA2co1OCi9vrbBzrSFlJKkpm+/URwQYoPNoNWrmqMu1SAJ5DfnDdd2
 r85EDk3m50RpIfFkihCWSFpIeJ+XqUwUSGx8Uo6HJKvgaNbXGGP5a+xKv
 SZSVl9ouV+tkL9HKWPMxaZSlcqqxOUl1gpD0ebiDROFMPxM6xKaSyxzV6
 yFYdfJ4BRkHu5+NoX37ba/kZmtXOrPpJrFWqeSaoz/C/jgV722sJCyAIL
 UDIl3DS1sahuKvj8GcjD2B7bpuJkBRgIjbFZPsC8tMeab8uA4gl4IA0G/
 pNmvj71YYvo+znaYX3yGYD5N6u3n5PcENrnUaQtSSPyGAo7u9A5TKj0aq A==;
X-CSE-ConnectionGUID: Cx/vFYZuR9KfAkPXhYLhxw==
X-CSE-MsgGUID: W22nYDBfT2ybVHlJLO/cHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11294"; a="35547583"
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="35547583"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 02:05:36 -0800
X-CSE-ConnectionGUID: GSaMcUToQiKgGIopA9BQOw==
X-CSE-MsgGUID: bMCeV3M/QXCyQf25iEnbIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100015797"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Dec 2024 02:05:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 23 Dec 2024 02:05:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 23 Dec 2024 02:05:34 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 23 Dec 2024 02:05:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UZtNHDZdli0wAYhK/jshAaGz75KjEHATaS8SllkbKJFj+h159lcNvQLw551rooD0qxDbVZjqvgjKWWDZaMOjNtqk9UFChyHHTVArQdclSVN+7h+MD4W/2RExT+r0Slnpn1/VcsFmW/b7/MKPRE5Za3IJvy7tfTBctkXJa2RNhyc4CdeSwrUT8sYoHnsddXpq2kNVoxd9njMWPpwbFqz0W/BciXHkyRknk65ZBWGT/Ma/9NwkNs8jnFVJ6XUjuOz2KfOspX6LLfng7V4VqrQYdcFMtgIE8XUkSJ/QfQgBRQXTVyMKyBYBcK/gpE4dp3EeOr3uG8TjxPIfoZWoQjr51A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m7YG2r5vQZllPhq71tFnHbxlFX6LAf8PG0cTJud6l0E=;
 b=S7Bf1vvUSp+mueWaCi/fvnMBr91ewyv5O+ms5+AZ64LjLMRjr4mzKzHq83SMjw+I1V5HHw+sEdaC2rp5QAYitNHf+dBpM11bjPgR9XgPmlM8cokUuDrsXrz849ISaVGHS+irsTTPNiShRwFOuU5RZwTP7CevMYZpGrUqjY3qgYtE2y0FqKuFdDY5kwhJJotnAHQbuV5d34awgC1dzxcyjSBo33zWHypB5ftAjvbylot/RCyb2BVr6OYqJjS+bZEtvuKFWg/wGppBtre4pmKvHiYl9raTLbMMuWGjxjGm+MOPdQmyGbR6sSQXkzK9bNDsrfl1bsjbHN1+v9CTa71v5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB7197.namprd11.prod.outlook.com (2603:10b6:208:41a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.19; Mon, 23 Dec
 2024 10:05:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8272.005; Mon, 23 Dec 2024
 10:05:28 +0000
Message-ID: <8ff6708a-ba90-4fbc-acbe-ce4a71fafdca@intel.com>
Date: Mon, 23 Dec 2024 15:35:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v2 6/6] drm/i915/dsc: Check if dsc prefill sufficient for
 vblank
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241217180710.1048355-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241217180710.1048355-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0049.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:49::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB7197:EE_
X-MS-Office365-Filtering-Correlation-Id: ea75489f-e96f-48bd-892c-08dd23395393
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzJKRjh3VkNZQ0ZjTnBuamlZU3liTkE1a0NVdW9oZTB1c3B6OUw3dnJGSGxy?=
 =?utf-8?B?bzRPRWZJaFd6N0ZyN2RuZDlhM1E4a0xub0doYnJhZmhHUW43QlJ5UlJVb281?=
 =?utf-8?B?eE4rakRzSVBDWTQzNEVKZjRUQ2c2N0xmYmhXR3I5QUxkNyszWjlRZHJQaUJa?=
 =?utf-8?B?TndOUzRJSEt3c1pLc2IxMFlHZ1hMaXhjMS9lM3ZUM3dZeHFIQXBBNzFjVGpr?=
 =?utf-8?B?a203dkRqcWRiNTVhaHd0UTZXSXZXMlhIUWM0NVJkd01QdGZiWnZIY2FEaXhi?=
 =?utf-8?B?UDlZNHdKUkhMaHdlTGtnTGdWZktaNS90SG5SbEFiQUJjUWx0eGZjUDZKcUxG?=
 =?utf-8?B?empobkFDWUxFZXBIeXpRNkgrTzRZaDFiaEVkZDBxZ0czbnphZEhzeEwwNGor?=
 =?utf-8?B?N25rYXozY0o1T3lzdDNDZHB1S0Z4dmlRNHovbU5rZTF3STFBZFNlMWFlc2d4?=
 =?utf-8?B?UHh2UEp1RmkrMVg2S0t4NHF3YXhrd2VDR0ZINUtxRml0dFJyZzhYL1BsNlZ1?=
 =?utf-8?B?U2hCWXdJcVFCaGRqcUV5WE1OME5zemFScm90YzI0UGxnSUdhM0dRWmNlSXJ2?=
 =?utf-8?B?U2xlZ2VsZ1pZRzFJSTZ3OWR4RHdXVStlQm9zZmp0TC85MkNpV2dnMTBuUE9S?=
 =?utf-8?B?a29MakFmMkhRYjdnWGhjRGQ4SS9CRUg3dUlSL1ZWUFh5RU5nUWFnejhiYXdn?=
 =?utf-8?B?c2ZEREJ5aUdpMjNBc1p0b1FmeEt4N050TUYrSk1rWTBOc2FKU0NBb3NPb0lD?=
 =?utf-8?B?THVEdXl0Y3poU0V1TmtxSTFHRFlpdDVpbVFhUklRT2xNa2x2aTBHQnZaNndn?=
 =?utf-8?B?aEtYNUI4K0lUa1k0UGdLWDdtOEtBYnVBb1YvUDl2c3JhT1ZuQk43Y1Uvc0NQ?=
 =?utf-8?B?SHVvamNPRElnSC9ySklWMXBkNnZmQzJTL2crcXRpdGE2U2dMcDdzbUdtNzdk?=
 =?utf-8?B?TkdyY3NLTk9IakFPYmIweVZDUnFkRUs5ZllPeUQ1anRtUGJOSVFoOHlzeFdy?=
 =?utf-8?B?WE1LUVFrZm4ySUg4UE8zb2x1cDBGOVhOSDk0azM0YlgwWGplR2lKZnNDczlw?=
 =?utf-8?B?eWJjcVZRTXlJbDc2NjZxc0ZzdUpFVjFwMHB4MXBTVFo0emUyZFJmN2V2TzBX?=
 =?utf-8?B?SU9kUlA4QXZEVXZnazdrakV5TGpiUmppSU01QW5ENTdneDNZTWlGT3Azd0cr?=
 =?utf-8?B?QUNLanJKMFFhSVVJTnJkUnJPUTJ4NWhaUVVSaTBralVKblA0aVZETUVWajZN?=
 =?utf-8?B?QXcyLzRZVXlucXBHL3lUSk56QjBqSXZNdkMzeE9TQ0JXNHYvWWVTd2ZqUzgy?=
 =?utf-8?B?cFZUQVdGRUhiZ0owVm5QMGVMQ3BkS04wL3J4SGJrTUdwOFFpVjZmaDFHTVBs?=
 =?utf-8?B?UTRXQytRd3U5SGRSNVV2QWpaS2FXSmZjdldZVmlZZEp3cWxIand6b09MUjVu?=
 =?utf-8?B?MUx3V29KY052M2pyeTU4V1BmYkYyMS9heVNIWFVxKytkWHRQTTNrcGNjRUNm?=
 =?utf-8?B?MndWbmRrWkVKeCtMWVVDdEY1S0tKR3lwaVlvQjVjeFZtTGY4dHNQR2RnaDdr?=
 =?utf-8?B?Yk56eTdtQjRsVkpEQWd4eWhOL2U0dElEdnlsS2RHbDh4dHo2bkRqNTAzcU1Z?=
 =?utf-8?B?TG1UQTc5YU9vZzVjMjN4eFhGVkdMSEZhNkhjcGQ1eUdiQ0ZCZ25PRFF6YUln?=
 =?utf-8?B?Nm5Wc01DUTZxU214b0g4T0I5MlZvVTc3UFdCUmgreC9xMUhuQUEweGl2YkVI?=
 =?utf-8?B?UlR2N1VBVFdxc3k0Yk1ydTRNbExFU09zTEtEd3h1Q0xzOUpSV3BCTWtLbTcw?=
 =?utf-8?B?SW1oMEJtMkU3dERVTXhHL25GK0FsRGgzVDM2RjBpejBRczE2TmtEZmVHNHdp?=
 =?utf-8?Q?2KgXGIFd5ppQb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WThBQjQ3TEs2MWszTmdLR1NiZ0hqRUFONFlEN3pLeDc5d3JGZjVQR2dWSlhX?=
 =?utf-8?B?VjBySUNOQmRKWmxHN1dEZml6THU5SndmNzBYK3BSdFZab1NreFZoY2ZKSTJL?=
 =?utf-8?B?dEQvQTZvdHg2TDFRZkJRcFYyRU1UcS9KWWp5T01mM0MrRDhyOFB1cGIyRFc0?=
 =?utf-8?B?RllWSGdEbHdIZVg1VmhEYlJNcDJGQnl1RHRFWVdzU0JZUWQvZUptYTZyNmZh?=
 =?utf-8?B?YktkQ3duVGNDL211Tndvb0JuOWJYdTJSdHIrL1VxUzJveEtsSVVEdkx3djlW?=
 =?utf-8?B?ZGR1OEU0WFM3M1VCSlk2YkZ4WmhmZFF5NVQ4YWtUSEZ1S2c3dVR2WUtxS0My?=
 =?utf-8?B?bUU1Vlc3QSt0SUlra1FEQUdWUUp1ZmRMYndDcWE2YmM5TFYzMTVnaFpOT1Bn?=
 =?utf-8?B?ZjFLVkpLOFZYWVhzVlRZS0YxemVNU21SajUzcDNyaGw4aU1UeUZCUkFqTGo1?=
 =?utf-8?B?UFJkK0FibHE0bG9TRGZWKzR3ZVNFNmtiZ0hGOHAwa0QzaHFqci9kVmhiellS?=
 =?utf-8?B?ckl0OGtJSi9WSDZMT1VjK2hMQnBYRVdvMVc5SzFqQjlUaFBSRlVJR3AvQVlD?=
 =?utf-8?B?cTdleFAyQmRPYjZiM0RlQU9IQXU0dDlJQ1h6aGxXMEJYV2grWHE3M3dESm5R?=
 =?utf-8?B?SzZ0RkxCRHVGL3QvU08zSVZYeHkrRkpvaHBObjJXMUZNY0x1MjBIK25HRW9B?=
 =?utf-8?B?RGZzeDZrS204VE5rM05ZYlRXTzVrMGJTei9UN0ZHZ2sreVpIbGFDZUoxWjY1?=
 =?utf-8?B?QlpPbGtBT21hWVVvRkkva3NUQU93b0Fhc0QrNDZ0WmhjRVpxWGs0K0k2WTdF?=
 =?utf-8?B?Q1hmcWxndFdBUVdhTVlER0M4RXFCdGVZYjJ2alBSWnhpbnVQTVJITVFMNXZk?=
 =?utf-8?B?RjFvVG9aUW9rMUJ3OVVpelV3MWRKTmh0MmZVb3dlcmZpVHJsNnFSR1JsTnd1?=
 =?utf-8?B?cmFMajBjaUVhN0RTcWp1U1k3NWgwYk9QUjVxWU15Z2RBNjhBQ1FCajFYb1d5?=
 =?utf-8?B?YkZ2N2wvZW53RXY0WTNxUDA4elZNQkthcWV1OGF3RS9jMDRWTDNPNzZoS2I4?=
 =?utf-8?B?b3VLTVljWWFTRmQ5TER6QlBDZlVicDNwVWd1K0lsTXh5K21UaEFGRWNQWGJa?=
 =?utf-8?B?VHV6YndUaG9ZS213VTRjS0tuQ201a3VZNVlVWE1xM3lNMGs4VTVYZzhZaElV?=
 =?utf-8?B?bkVrdW55ZFcwV0pWVVAyV0wwVmFNNGgwQk1EUmZuTHJzK3ZLL0xNc1ppM0pH?=
 =?utf-8?B?elBpZFpIdHN2TEZJMkVjYmw0eTZPZ1d1SFhBRVVMdU81aFBFQ2V6WG1VYnBh?=
 =?utf-8?B?bkdEZEtpdUVHMHBRVW9td0pDUWZncTlOUk9zU0k3NHBPVG4xaHBoZjNVTFlK?=
 =?utf-8?B?bkQ5dnoyTng3anR1c0YzQzc3MDNwbURTaXFmdHM1cEkwdXFhd3pCMVJYK09B?=
 =?utf-8?B?T0xsY2ljai9zVlFFd0Z1U2JESVNUNS9RRU5od2Z0Y3JVUG9XUkdrYTNaSjlk?=
 =?utf-8?B?Tm4vZnlrU1l1RDdXMGluc2V4MVc1TEhUTmhvdDZjWHQ2Y2xnQU5YamZKNHJ5?=
 =?utf-8?B?a3o0ZTF3a1puOTJIbEI0MVlvZUJYRVl6S2VsZThqRnY2L0FXLzVaSkVVbWlu?=
 =?utf-8?B?dkxYdU1ydzdsY1lONWMvNUlWNWsrR095SzlvQ0g0K1Z0YWZIS1hvd0tKTzhP?=
 =?utf-8?B?QXZJNjRuYlZMbHdrYmkweFR0SmNkeDJZUmVzaC9mcWVKdGtYUVJpUDU2SXI5?=
 =?utf-8?B?Vlg1YmUyUVptaWZkWE40T0szTmNLSkJlcGsrdjNaaUp5U3cxZ3FUYThITVpL?=
 =?utf-8?B?amNTVUtFcUt2Q3Y1L0ZQZ25Pc3NLUnlBeFJLVGJDV3FmT2ZiaVQySjdxOUYy?=
 =?utf-8?B?MVZmVmkxNk9oL0g1S0dqcTVzQlNyZzJzYzV1bFhRYytUSklUQ2VKWEh6cGdO?=
 =?utf-8?B?YjNhd00weXVqcUVSWXZBK201cTViRkpLYUR2ekY5dk5OTExNZHpWcmdoUTc3?=
 =?utf-8?B?cGJFSFhsNC9FM2hWQmxLaXRQRlVWRVZ5Q3huU0t5YW9hQm9hVFVtR1pSaGlp?=
 =?utf-8?B?Yk5CcWw2ckhkNk9ydGg4SzN4QTArdVVKaFdGYi9QNGdWYTJmaWIyU21JWFpB?=
 =?utf-8?B?eDVoWURCYmFmczMzNzNmVWRBazh5YXIxUUEyMzYySC9kTVIvWFMvdFJHaE1Y?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea75489f-e96f-48bd-892c-08dd23395393
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2024 10:05:28.2157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n8Bf4+AtWKgnhkd+piIcLTcrfvrtAJknZGm+1MBWuLDOfV4fszoBqTtVb8RhqP5FWB1+PUgPbw3h0SHVXwClsSsoo9AZjISXYC/5A51xeWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7197
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


On 12/17/2024 11:37 PM, Mitul Golani wrote:
> Check if dsc prefill latency is sufficient for vblank.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 20 ++++++++++++++++++++
>   1 file changed, 20 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index a538e2b82c12..0f1ee755fd8a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,25 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +skl_dsc_prefill_time(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int hscale = scaler_state->scalers[0].hscale;
> +	int vscale = scaler_state->scalers[0].vscale;
> +
> +	if (!crtc_state->dsc.compression_enable)
> +		return 0;
> +	/*
> +	 * FIXME: CDCLK Prefill adjustment to add
> +	 */
> +	if (scaler_state->scaler_users)
> +		return DIV_ROUND_UP(15 * crtc_state->linetime * hscale * vscale, 10);

As mentioned in previous patch, hscale and vscale are left shifted 
values, need to compute this precisely.

Also as per spec for pipe scaler is used for 444 to 420 conversion. 
Chroma subsampling is a 2x downscale. So need to account for it.

Regards,

Ankit

> +
> +	return 0;
> +}
> +
>   static int
>   scaler_prefill_time(const struct intel_crtc_state *crtc_state)
>   {
> @@ -2324,6 +2343,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
>   		scaler_prefill_time(crtc_state) +
> +		skl_dsc_prefill_time(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
