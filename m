Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8111EAADA5A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 10:42:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 275B410E76D;
	Wed,  7 May 2025 08:42:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bEK1yPYh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDE3E10E76D;
 Wed,  7 May 2025 08:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746607367; x=1778143367;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=50UeaLDk2Ch1kD3YRS7a0I2RMOJn2bmVCqxHuuoDWGQ=;
 b=bEK1yPYhipM+WCST0Izyh8SYNT8iCcGoAxOpm2pKV4rs11I73Kj4OeQU
 sOmC0IaKSHzVOPpDGi8BZrsl7ZWftA80XkVn1iyGI4aVXC+9hNkWiJW5f
 JKv1DOrGjQj6ycIZUPTSHbprnpG/DCY9YGRlgJL2ph6JZ/4WoLTVst1BW
 LYg9ThdjRtLkHdG6WTwL7+ac+x7veydAAE0QF7ast6wPDvsIa3sBZSBCy
 hQa5E/6N+Gnfijqg6RLAZ6uYYvZwu0VWtzP960huwDl7kiJw2OjlsnYHo
 k1uzdZXwkxVjZ60/bZoX7RhZ3lo8vbmUkzOPYYECEurLOCjjuDzeBejb/ w==;
X-CSE-ConnectionGUID: OvNI7aMNQX+PSMV/OP3Qgg==
X-CSE-MsgGUID: +Vbs6HciT4OAR/g5NNsY6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="65854349"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="65854349"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:42:45 -0700
X-CSE-ConnectionGUID: IgaZ6JkrQPWEX06/Nt/9BA==
X-CSE-MsgGUID: 7FBbCTLbTjGolsLFl2mR/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="136826666"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:42:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 01:42:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 01:42:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 01:42:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=afrFpkDjKrEM3IV4/+rTUFSLhwbfsWvdZh9zbeogULsFdzspqKHb8d0LbvsaCWb9G59v8prfq8B8K/kzmWFOwspxTxuAiiIqwm2e3DxdIe9XDU6ZzdA0ib6IFy4+X1grXcNDlokSWhY7q4tC+FdB2xCzb181b6GmiwyacFXkOV457yqnf8AJ6stYueaWC1jdWqO9aRuqvkdiya/iyRjMuggZ9pcYiTJTQgiZYJ235KS2RgzRTLAAagcYzGyoYYg3hkuGE5HGvIqnzFI+zgxsaxtMoO6L1s2Auhd/MsWLkTEpzG99XomxJvcP5cDgdZLn50Ek4x8t8/DaCL0yOKPQ8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sRePVRvDlip5TUZcv7DsvHvJz1e7nt5XOejNyMo3cJM=;
 b=EVB3KDZcHyd0zJf3ZuMCn+oO9erR76dOrfo6SXQvfA8KCnh2nqA7Y0v/VPZ84f9o8CVALt6qVK3tBLU5105w21tbPhyocqn6/jYMWSsWdaXuO5Swr16QyMPh64dpOJJcso7ERXoQdzJFywozN7KvbFoTIAHL0qdeJfMVIcon2IAf+l27vJr1GOzX0cNGbxkN5T41hORIU/W/+Wq3zVihE/7E7svaTGPhYPq3dqnVWbPjZvMt8y04B+xwxEwposqhucHrcjt7rK3VYziQbobe0oD5Rd0a0xmTtuga2UwvAnA6P6iGxtd5FTOljs9xZlsD22vphIYP2tOo+jVrg0JeTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8403.namprd11.prod.outlook.com (2603:10b6:a03:53c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 08:41:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 08:41:59 +0000
Message-ID: <14a4ddbd-317c-45e8-af8c-6dd0526fe593@intel.com>
Date: Wed, 7 May 2025 14:11:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 02/17] drm/i915/vrr: Refactor vmin/vmax stuff
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250506145517.4129419-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250506145517.4129419-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8403:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e73e6f5-33d3-4256-7150-08dd8d4307c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZEpRa2xrRTk2bzFGN2NaV1V2Y0pTbEpNZnJTb2JSOTB5MEhPanJmVXdSdk54?=
 =?utf-8?B?YkUwUXFIekg2aC94U2kxZWV6dEZjS3A2NlVQNHJRN1RaVDBHSEVGeUFjZ3Jw?=
 =?utf-8?B?NTZTVURPQmkxWDJ4S3lCZ0xLS3pzYmxrWDFvNHJjbG5hZmYrd1QyTnBDM0dW?=
 =?utf-8?B?K0FpV1M2bDdkY0V1TnFPVElUVm10MExqUjdJclB5ZlhPQlpib0VLMjhld3lm?=
 =?utf-8?B?TzBqbE5NUnN4dThKVGRZdkVyWTN1V1QrbWZQcVJnN2k2Qjh0YVBqQ0lMWmh1?=
 =?utf-8?B?Q3JQcWpwbWtOdkE1RkJzeFJyRXpSbWU1SG9YeExUNDhQK1hHblVQRWQvMnRz?=
 =?utf-8?B?TmJOdXgyK1hJcnJiaEpudjhmY2Mva0g0ek1lTWg0VTZEbGk4L3psRXdNUFlw?=
 =?utf-8?B?czdxVDNwQkNkcXQ2M01CS0VxZk5QdzhIV052ODRVbyszNWJLSFBEdlN0bjA0?=
 =?utf-8?B?QXZDR29ydnVMTVpFbmIybmRFRUpSOVorZHVEMWY4UEY1aWhPbzdXazhNd2VV?=
 =?utf-8?B?TUdLa3NkeEJSTUU1bFlqL01TaWEweWwvRDkzcGQrV2NVZ21GVjJtc2ZhNllx?=
 =?utf-8?B?ZGZHRXBlMUI5dWdrSm14KzlMY0dWZGt5L3loc3cxa3lsL3hveWdIUU0wMTVV?=
 =?utf-8?B?ZThWZnFZME9ZL2k1VzJzUVdJV0RjbHY0c1NzckRnZXplKzJqUklZT2lyY00r?=
 =?utf-8?B?b2N5L3NubExBWW5BZkFRNTlWck10dTc4LzZxc3RNZ2txNWtiRmRtaFF2YmVT?=
 =?utf-8?B?T0hvcGFOUS9IWUNHZE55bVRoc3JacWR6U08xeUNocTFNTlhwMW9kUGFXbG5w?=
 =?utf-8?B?OE1naDNzUEVCZFdoODdvbWtNQXAvdFlFOERsbnlGWkZoZTR1NzBrNGUzSzdw?=
 =?utf-8?B?Zjc4UC81eXNrMlV0SEJqU0dNUDhPdklpaGY2S2kzV1c1VzlvN0ppWktVSjFx?=
 =?utf-8?B?Y1VJT2ZQd2F5eXZ2U2grVjZYamdBdjZMd3R4Z2pMYWxneHkzZW9xTy9XVkRH?=
 =?utf-8?B?RHNOMkwvdHhlbDBIQmM5dDFzV1JpUnZaUWdFRUF6WUpDYWJUMVBXWjU0cjFm?=
 =?utf-8?B?QjhrNlhDU3lWaW5BcXk1dXhBVEJFYkRydStpVXBaNExrdFRuTlZnMVA1cTRz?=
 =?utf-8?B?QnRjbGVZV0REV2NRYncrSzVwRmdTMVliOHpraTRhSXNkT2tabW5wTS8vOTJQ?=
 =?utf-8?B?VUFheFdWTjdvUkxoZW0yRTBmNHlWU2NON2JnNlpkYnFDOWpyMWY0NzJGZ0g2?=
 =?utf-8?B?emtVeEdvdVhzMWpJamc1MTRUaDBhMzROMWhMZUdzNk1yd2M2NDBYRTBOaGZ1?=
 =?utf-8?B?Q0dBRGR1QjhjdWJRT3VEZ2hUQlFyUkg1QnVaMlZ4TXdzdXgxSFJIMEZ4RmRP?=
 =?utf-8?B?a0p6OU5sSXRiSTQ1VC9BRlc1Vm9FNWZQUW80OGFoMllxWko0VFEzTi9WRFpH?=
 =?utf-8?B?SHBPWmxQQlpxTXJoSkZxbXZ3bUt5SnJCY1ZROWFNalFGUVdqWkVhYUczNC81?=
 =?utf-8?B?ZzJDalFpK3FBb1JCcm5wVnNaRkthSGhyRWRsRXd4Q2VmVktCdXkzNGh0Rit1?=
 =?utf-8?B?Z25ERG9Ucnh2OUt2OUNBWUZxMzJqK2J1SW1LZmhFLzBtZkpKMDRza0taVWFq?=
 =?utf-8?B?Yk5XbjdyQ29UUzRnZzNOMSt4QVFDMXgvdzRxYTRjbmRobGkxbGxvSGhMb1lq?=
 =?utf-8?B?V0o1OXE5dW85ZThzLzZ1MGtWNFhhckJiTnc1amtMYlNYcXZmVk5mOXorZmtH?=
 =?utf-8?B?cWFnbVFlRDNhQ3BtY1NLNEpwMWhqUjVucjdOYUNtRmI3V2hoL3c4OXNyL0Fs?=
 =?utf-8?B?M3ZJMFNsZlhob2lPZFY0UWVzbHd5MHRlbndtZGw3YitVaUs2ZlhEQjNLUDM5?=
 =?utf-8?B?L2Y0TG0xN0NDSWc5UWJhbGIxcVhNSUgvbklzMEg2QWZKV0g5OUlqUmdpM3hL?=
 =?utf-8?Q?O4mYGSr5TGo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THNUdDV5QnhxMnBzdU5GcXZ3M2tsUUNBd0REZEt5WVkyMittMURYWGZISjhk?=
 =?utf-8?B?TWRTbGVWVlBON2lod0w2RlhQaWllOU52WjUxZnBjSitQWUVocnVIdkVuUGpM?=
 =?utf-8?B?UFcxdG5kUFpoZmJNUjMwRVJnMjVHM09lTVhxdjJxRmJLUSs1R1ZvUUxjWDds?=
 =?utf-8?B?TExhc1JkblVPSUZvR2w4SCs5NEV6RkhTQ0ZEdEUxV0FGMkZYMjQyeHpRWDRI?=
 =?utf-8?B?RTJoc09qVERnLzQ5bXRJMis2c3A3c1lKRzVhNHdhbEh2TE4xL2xlV0RQOHVa?=
 =?utf-8?B?MDdBMnJIcEMvSE9jcGtsM0NrWHllM3FyNUJwRklOakt2ZXprNTBzMk8zQ3BT?=
 =?utf-8?B?ZjV2Y1grUTJ3OGkzQ0dvKzgxRGY2MnRDSk5VQml5T1hxOWk4Wm5hK0xlSjJm?=
 =?utf-8?B?YkcxVWJOQkRLWC91SlhDcCtQVjAyOHVndVlQL0E0enI5S0FsRGVjWEdZVFhh?=
 =?utf-8?B?RDZteHJjUkgvbTdqcFJJaFEydklnc0Y5eVlpSzJDYmNLOGFxbGxuSC9Ba2dq?=
 =?utf-8?B?Sm5rMnJ5U0wvbm1HL1dvMUEvSWUxY0s0QVl4Z3cvdmY2ZE1tSml2Qmo4aysr?=
 =?utf-8?B?N2pMdW55anNRb0VmdDJhY1F4NC9IcW9LSU1BWGp6dWtoQ1JNZFFyd212Rzl3?=
 =?utf-8?B?YklYZ29rbTNPcERLQkpWS2hNU21acnJ1RUczMFM2RllsSE9KeVg5SzUwYzQ0?=
 =?utf-8?B?N0RaN0pxdThOdENiQWFhMjRwbi9jOTFqUUIxMmFXRktiVkowUWg5d3gwSU43?=
 =?utf-8?B?YUVxN2RpN2w2UTdZcE9jTjZaam90YTFYU0FlNVFGZHlRdEdyVXdxZUlPNndM?=
 =?utf-8?B?TWViQm5iMHFnb3RDSzRGejBVcUozZ1dyenJFdFFOQW45ZzVFdWM3bGVvcVJE?=
 =?utf-8?B?emNqQythUklSL2hMdE1KMVVUZnM4SWZKWUxvOVdkSjBXT3NqRHhkSURiNkZO?=
 =?utf-8?B?amNaUzJtVEIxS2lVVWJBNE80d0dhTFltbEVJeGxMMHZ6QVZaNVYzREEvenFO?=
 =?utf-8?B?L0ZNZXY3cjNnWVBDSDRBNkp4NEwyVHlJbXZESXpSWDlLcDdUVFo2SldTOU9V?=
 =?utf-8?B?VXBaOEhWVEJHNUtxSlVTelRBTHVwTHZxNjVNWjNSN3Z5dnNjNkpzdW5oOG1U?=
 =?utf-8?B?cytTR29iSStoakJ2TWdxUzcxWXowQ0ozUHEyODRtKzZ5UkdFUjVMRWhDeWwx?=
 =?utf-8?B?ekk0QmtYUm43cUxVTEswbUZSME51TXhqQlQ0dGhEWURlbWJWU1FsWEZPYi84?=
 =?utf-8?B?Ry9WRUwzY1RHRituNk9aREZwT2U4R2g4S3hqYkc3N3gwNk5JRU1QS05kQi9q?=
 =?utf-8?B?Z3F3Z1p4RkwyTDVOL1FGcVBTdWo4M3JFQkFwampzQW56eDk0NElTWWNUa1M1?=
 =?utf-8?B?V0Z6cHE2THRzdjAvZ1Q0ZDJPa1RPWmJONmJKWTQ3ajRlSmp6bzVoRzVpNmx4?=
 =?utf-8?B?MDA3aUN5eWdqWHhmQWtEWFl0U0Y1NHppOHRaMSt3alFtMHhFcWFibHREaklR?=
 =?utf-8?B?MHZOcW1VdmdYVVZQeHNHRy9yTUpvMmd6NUsxZEJkTGlVb1BmRWVGbXhQOW45?=
 =?utf-8?B?NjAyY2FTNk80M1dzY1RDZGROT2VsejNRQkQ4a0lMd2NnVW5zRjN5c0lGZno1?=
 =?utf-8?B?VXFoMlNZaE1pRVV2Rld5ckZ4WC90clA1aXFNQUdBdVowNElkR0t6b3JCd0RD?=
 =?utf-8?B?bURoRVY5alltWlEvZ0dyZGMrMUVmMERjTTR2TGJkOHAwZVREZm5nY05tNW5L?=
 =?utf-8?B?dkx6NUJiQ3NNaDV5aDl1LzdLYlVnMEl1UnNNOEdLQlJEd2d2eUpWTFY2WFBh?=
 =?utf-8?B?UThyYVU5QzdxeW14V20wbklFWkwrNi9wUmlUc3haTjhUMGVUa1h5U0U5dzBi?=
 =?utf-8?B?eW80d0NqeHBUWjZrTmVIWkVydEQvdFJqK1JUNXcvUXlCWTdvczZOWjhQb1Vk?=
 =?utf-8?B?VC8rZWRHc3hSMUNhSC8waFNaeWMzelpxT3RpSFRDc203L21ENmJDeGlCYi9X?=
 =?utf-8?B?OGFLYzBTTXhET2FRUUZVL20wUHEwSG5ST1JKS3hEd0dCOWx1NHBGTVdCdmVN?=
 =?utf-8?B?am9yY1NrYU9Hc3p1R1JsRUxjUXFHMWdaOVJ4UDcxazhVeUlrZGo5MmZyTUN4?=
 =?utf-8?B?SlRKaC8xdVVIVExnWmF3cnlqYzZock9pMm5vTFBEbjBGWWZybmRVVlhJSkRG?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e73e6f5-33d3-4256-7150-08dd8d4307c2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 08:41:59.2395 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rKKcE/iRHo2Bw2Zbp2b1B3LChLvBC1fnwqvzSyuGtjpnD/tpfgvq3wwPrZpd6HAFgHIqdsYrso89LRaqH+cI6LCXfJ676SOXGYtWFro/5oM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8403
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


On 5/6/2025 8:25 PM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Refactor vmin/vmax functions for better computation.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 41 +++++++++++-------------
>   1 file changed, 19 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 45445198129f..adfd231eb578 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -146,37 +146,41 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>   		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
>   }
>   
> -int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
> +static int intel_vrr_vtotal(const struct intel_crtc_state *crtc_state, int vmin_vmax)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
> -	/* Min vblank actually determined by flipline */
>   	if (DISPLAY_VER(display) >= 13)
> -		return intel_vrr_vmin_flipline(crtc_state);
> +		return vmin_vmax;
>   	else
> -		return intel_vrr_vmin_flipline(crtc_state) +
> -			intel_vrr_real_vblank_delay(crtc_state);
> +		return vmin_vmax + intel_vrr_real_vblank_delay(crtc_state);
>   }
>   
> -int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
> +static int intel_vrr_vblank_start(const struct intel_crtc_state *crtc_state,
> +				  int vmin_vmax)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> +	return intel_vrr_vtotal(crtc_state, vmin_vmax) -
> +			intel_vrr_vblank_exit_length(crtc_state);
> +}
>   
> -	if (DISPLAY_VER(display) >= 13)
> -		return crtc_state->vrr.vmax;
> -	else
> -		return crtc_state->vrr.vmax +
> -			intel_vrr_real_vblank_delay(crtc_state);
> +int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_vtotal(crtc_state, intel_vrr_vmin_flipline(crtc_state));
> +}
> +
> +int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_vtotal(crtc_state, crtc_state->vrr.vmax);
>   }
>   
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_vmin_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
> +	return intel_vrr_vblank_start(crtc_state, intel_vrr_vmin_flipline(crtc_state));
>   }
>   
>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_vmax_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
> +	return intel_vrr_vblank_start(crtc_state, crtc_state->vrr.vmax);
>   }
>   
>   static bool
> @@ -257,14 +261,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>   static
>   int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> -	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
> -
> -	if (DISPLAY_VER(display) >= 13)
> -		return crtc_vtotal;
> -	else
> -		return crtc_vtotal +
> -			intel_vrr_real_vblank_delay(crtc_state);
> +	return intel_vrr_vtotal(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);
>   }
>   
>   static
