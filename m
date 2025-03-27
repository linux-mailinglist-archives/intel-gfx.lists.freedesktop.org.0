Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 248FAA72981
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 05:36:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FBBC10E84A;
	Thu, 27 Mar 2025 04:35:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T94WPJW4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 429A010E29C;
 Thu, 27 Mar 2025 04:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743050156; x=1774586156;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d3afLNYIFcPmfv8YB7UTbSB0hrjJtjG8qHAx108ie+4=;
 b=T94WPJW4HWIqsRxzBGVTJli2TfSQygK9NehR3MORbpKUM2BNHHjqWACQ
 clKp0zayZHKeKiDs0Mmjpse+Vf1ZPsjVq+1HcthiDwRl0WJZ3HmSzADj3
 HmOXSeopuf8VKUM1O6uWO1AUZuYEH4SzvJhIjCVaexYtLuDC8WgO+tP1r
 B0t3Ubfn566U5ucWfks5zkQe81dc+NaCp+6plFXCMSEdDf6HtD8HHnG28
 HAOMGTn9MCV7RNEBlz1/laQ4MyHI82wP4bsXbwF2TzdBQiFaHiQWklgd/
 5eFcHn2rQeUnMFkWccScIjBqD880lObv835JZ7XaeGna8nvMZs0z9kzI6 Q==;
X-CSE-ConnectionGUID: ZFIgwCq8TL2U4vRuS3DnWw==
X-CSE-MsgGUID: h4W5SjvcRbecAhFnJIk+ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="61892068"
X-IronPort-AV: E=Sophos;i="6.14,279,1736841600"; d="scan'208";a="61892068"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 21:35:56 -0700
X-CSE-ConnectionGUID: 28VVsIuTTyiynt51afes/Q==
X-CSE-MsgGUID: pdMbTyZlQte//bZmuPzJQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,279,1736841600"; d="scan'208";a="130134106"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2025 21:35:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Mar 2025 21:35:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Mar 2025 21:35:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Mar 2025 21:35:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MSF96EWLuiu0Cwh13nNZYMeBy3aNykmX/3d5dnROBJ7y8ByOWsMZIfW4LDSNHyF1nC+lIagMLW4Y3QpEf1etj7Yk0hF0IuK6b1xuJVQAFKssAieKzf3MUIRf+7okxfSs2Dp05A5kHwYOjLqwYp8KC4U28YEnAmPcnWZHdkCTNfN3xGMxFmqTJiRGkpLPbUJi3rbrihTK6qXSutjMSVYaKq1aLZOY6WXGHLeJ7biYwHewF0iV/bzFb9V6ii//kf7QopMgp1axLC8PcA7EZRm3OYdeEvfaTlVffdLiTyDId5xBVYtY+OcSz5kEL1YwR8XoigNTf8cbcWggJVYu3N0PcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ra3MbiAPiO8naanZNqsWEtH3VSH9yMRbvGQ3YXvVPYE=;
 b=bAUngz6NIOcKKGkWfZ2xydBGZ5dGnxk3B4urARHieLEKI3CnKjPmp3RyQfWUdcNER0L11TkHVEQ3F+9AJWdQAIHLMG9gCypvn900jqE69dC/JU48Gl4Uq005v3TUcaiGfaHh43X2Y4IbS28q0oTvdoG4tCUFNysuicK/DKhi8inKdgVypGoDY9LlLsct2kTXxT1dD1VBcxhUQapanzJF8pLdwbMWf2aQH14A+BuM6zDqUP2nQJcwUi9abp/vjwTe0CGJ7bFqztdFGZ9RQ2qGahO4imQKA8ms8xlec8Q9tfXwWqdblgEFuhMmTFwzcRc9klnDDg+DD1zKchxBTCfODw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5136.namprd11.prod.outlook.com (2603:10b6:a03:2d1::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 04:35:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 04:35:24 +0000
Message-ID: <9adc2f60-033a-4687-b45c-704f7ae0e246@intel.com>
Date: Thu, 27 Mar 2025 10:05:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/display: Avoid use of VTOTAL.Vtotal bits
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250326160321.550753-1-ankit.k.nautiyal@intel.com>
 <20250326160321.550753-3-ankit.k.nautiyal@intel.com>
 <Z-Q0vCeByHofHFdv@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z-Q0vCeByHofHFdv@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5136:EE_
X-MS-Office365-Filtering-Correlation-Id: 4215a68c-7fd0-4426-7db9-08dd6ce8ca9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eGNla1Z6clJzZzRXZ3VEWXphU2pwcy9KdXY3cDc3cktBRGFNZ095L1FuYWJz?=
 =?utf-8?B?VkRUbGs0bk5NdEY1T2RHQlBNZTluQW9jaXBTS1g5Vm1sOWdEZjcrSGIrMS9y?=
 =?utf-8?B?YXVKeHhZdWdST2N0NGJ1RjNsdmUrU1JxUitCVGUyZDNOUlpGZE9IcTVYRlNG?=
 =?utf-8?B?REJiS01QZXJQSVY2YUdVYVZGYkVIMnhENkZSK3I2Tk5sUkFRejY0eDAwdGhJ?=
 =?utf-8?B?ajFHZnR6b2VUN0FwOFhrVWJSV2o1YjBNL0ZxYitsY1hmSzJUR3laVXdvVVlh?=
 =?utf-8?B?VGhvSnFhSXhNYSthQXEyTG1EYlhOMXlPcytKaytlMnQwZmUrL2t4MmFUdkcz?=
 =?utf-8?B?N051YVRvM3Fsa3BpZHcxL2dJSFRTZXJVcW1IZ0o2STA3WUJIc1VwdjlHaURO?=
 =?utf-8?B?QkJvdlFDOUVPUTRETjJHWkppRis2cHFudVJjU01zUU43L2JCbjlrU2FNWDd0?=
 =?utf-8?B?ZTJWZkl2K250Mlphc1E1YTFWSHh0NmF1eUNLeStTMnhMeTE4aXQwTG5iYUhO?=
 =?utf-8?B?dVlvWXA4ZEs4WmE3bGRodUhjY2tTYmtFa1lsemJIdUFPaXZ3WHIwMk4zLzdz?=
 =?utf-8?B?L1NVZTBrYWpTUGoyWkxuNnFVQWdHMXpENkU4bjQ2bWlkS0V0UXowQmVMenV2?=
 =?utf-8?B?SFNLS1JqblBRQzVFU3ZWQlJmQk5jUmMyRmVLM0NFd0dyRFZJK2pSUm1TV0FW?=
 =?utf-8?B?eDF1bi9MMG4xV3JpdkoxaW9RRTJ4V2dFOWJNQ0JGNnRaOE9xU3puVnRwNGJh?=
 =?utf-8?B?UXFEVTVMWjNmUUZwaVRqYzVsRSt3bHFCY3NzdmxEb2ltNzRhbHJzTVZndHFW?=
 =?utf-8?B?VUpvbmZwOXpHVXlweWt5eWhPakx4dlo5bHBiY0N0UFYzY1ErUXhBdUdXZXBV?=
 =?utf-8?B?T2JNaFAzNlpWbW8vZzA1dGxkR2gxRmhRR3pIRCtWWHhOZTFtTm51Z3RmbDJK?=
 =?utf-8?B?aTZ6eHFDV01JWUlibExzMUNjQS9GUU5kMm82aDljNkIwc3ErZE8xdjEzY1Jx?=
 =?utf-8?B?bTQ5NURhalZpbE51dDNTaXFNamxKSHlHZXJETGE0S24rdmhYOTczT2ptYzY4?=
 =?utf-8?B?bElncFNyZFl4SG43WmxrOHpPYUNyK0t3Q3B2WnlDM2NJN2hIL0h5MnNSL3FW?=
 =?utf-8?B?Y3htLzRMV1dPKzR5STVLQ29HSTJZU1k2Ni9wK2R4eVN1cUNPenRPdU9FNFZV?=
 =?utf-8?B?a3BLM0FzNmZsTlFXWXFmVy9udFlwekJ1aktFSGc2TlljNkF2WmFKdUE4T01Y?=
 =?utf-8?B?c3ZBYXh1eExZWVo0RmRkdlJXN0pzMXdlZ3BPeVZvRE14ckQyNVdrVjRNYTQ4?=
 =?utf-8?B?TCtFYS9LYzZQRXJaV1R1MWMxV1kxcUJINmRCWFBRQTVHSVVQeDE2L2tJbkFQ?=
 =?utf-8?B?VmZYMGl5UzJ3QWZKaHJOR3g0Y3dObDgzM3hqbTRxWGN3RHdwRW9JOFhvL0kz?=
 =?utf-8?B?eTYxekxiVjM1UWo2NlJTdUpFWU55L3lSNWNLajU1OTBjUGZkMWg2b1hwWU9y?=
 =?utf-8?B?UnRyU1JibTdZbk1hRlZjalVWUGdQWVZYcDIzVjNHSEs4a3dKandMQVB2cWJn?=
 =?utf-8?B?ZWl3TUd3c2V5aDZGKzY5NjZhbnVqdkF1YnNsb2xSTFBIbFZoZFhLR0F0R0xT?=
 =?utf-8?B?T2dNWE52ZzgzaC82YnJNOEFzcEM0UlNSQTMxNVdVSFMzK3pCMGFYTmpzQzZ2?=
 =?utf-8?B?ektjYW5yOEVqZ1puZmk0TnBsWDFudVlNcjdsRWpUZlN1SlhRM0tnWVVrYVdq?=
 =?utf-8?B?MUdLSWc3TjVnK040L3VpbmJpZzJlM08wZm5kR3Z6SG5Mc09IMEFEeTEwVmhN?=
 =?utf-8?B?L0sxQmdXaGRFWWNVTU9ETUI2ODJ0ODZ0V3R5NjBlTDhjblIzQkxjVERXZkZ1?=
 =?utf-8?Q?0EMlCdQ3r0BAq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?em1DUERTMkprb2lNWnpwOElvaEoxWmE0Uzg5bjlIcG1mc281WW8xWEVhUjl6?=
 =?utf-8?B?ZEx0ajZEbnJSSUFWWDBlcnR6eFEvdllHVXpST09GNm1JWUxBZ2V4VDlXSlla?=
 =?utf-8?B?M1hlUW9KSFlCd3BUMWFocUZaaGlZVmt5QnUrYnpiZDNQQ01ENjlod3FUdjBI?=
 =?utf-8?B?MVJTeG5zK3VwSjB1ZXFCSlg4MTVJdkQ2NVp0aXFSQkNJaG1WdlA3Y0tYS25o?=
 =?utf-8?B?bk9qWGdRUlNta2pma281TlJCZXhkRnpjR0pOYkM5QWkxVG5wblJWejZMKzJC?=
 =?utf-8?B?MitJZEtDekloK0xtanVrbFlacU1LSlJZbUpVdEc4eFRoQS9qOW5Ob1hLV1Ew?=
 =?utf-8?B?cWxKcnVZUmdhS1RTS2hDUUdEdTJDSXFnNmY3d1BrczFabHBQSHhoNzJHU1dY?=
 =?utf-8?B?dzZzZkVrNHZraGlobFF0cTZKdDFqYWJPS21MeWdWbFhwaGVFSW5qYzBscUlH?=
 =?utf-8?B?QnJPMExTd2VsYkFHdTBHbnFkUi9MQ1F6V3VKVUFDUGp0ZE5KYktSZFh1dGcy?=
 =?utf-8?B?bHB2cXI2Q2ZyZ1ZrT3N3L3VmT0FFVldGanI1eER6TnZ4cGRIbzFmSUo0bDhZ?=
 =?utf-8?B?U2xTblhGSURqKzFZc09zWWVhNWxoV0QvZGhzRVgwT1NGdTArNXFLdERuZ25C?=
 =?utf-8?B?WUF6L1dJTXI2Z0pMZ05ZbTAxLys4TG15dWs2WktoaFRMV2tuT1JNNHdrUklM?=
 =?utf-8?B?VmpBR00rMzFXYW5pU0ZQbVdqalhXa01Oa3h1K2FmYnhac2pIZXJGM0dZMk1t?=
 =?utf-8?B?eCt4RWZIYUx5dW1DUFROWDZqSVc4SXhTMEw5VU5RNnRLRk9LZnYvRVlaY3oz?=
 =?utf-8?B?REpZUTM2ZTZuZ1NmcEozWXdxWW8zcHB5d0poanpHN05JUXVwb1NVNDdGQnhW?=
 =?utf-8?B?SUlmcDJrNzIrZXpsZ1NUVXBVMEFRUXVuNXRGYTJHSlJiNUFZb01uaEU0KzZl?=
 =?utf-8?B?Y2dhVjdoNjV0K2VTSklXdTc0UVdSTm1XNVVrTDlGZi9ydlpzMTUyTWhSRnNW?=
 =?utf-8?B?MFh4QUFXc1ZDejcyUllkOXZJamVoK0RXaVY1VFk3bXNiYkhqMXgrNENxVlMv?=
 =?utf-8?B?YkVmZllGdXc0eUcyWHkySWRFcDVhOXM5WE13bS8zRjJOTG1yRzMrbHRxWjgz?=
 =?utf-8?B?cUxuSkx3eGNUZUV1YjJvdDhGSUtRblNqRlNDLzY2SThvNEZnWER3cjU4RWdp?=
 =?utf-8?B?anEyaVdXYlNNRCtScDFIcFhvcUtpT1JlejNlK0hrMjRkUzZpSmYydFdHS2hE?=
 =?utf-8?B?clFWQ3J3Yi8yUmFBcURNQW5teXRUOGVpM21rcFZFU0JxRTdoMHhnQnNPaFo1?=
 =?utf-8?B?aU15VDZkbTRPTi9Zd0JwcEJYUjd6dUUxN3pROU1rZFY5N3FlMkNLdldwU3hI?=
 =?utf-8?B?V1hhWks1NllCY0MyWGdmRk51RGJSdWQwYTYvT1NHRDdBMWtvcWZCNXh0K2Fr?=
 =?utf-8?B?a2hja1ZhSTJDYjF1ak5uVWdsTEN2dTBFNnd0dVBnZ0o4VXJXcDZodUl2d0VO?=
 =?utf-8?B?RkQyM01RSVU4Wi83N2FTMzZrUTkwNHRCK3Iva3VES3V5T01qVWJwMmlDVnhs?=
 =?utf-8?B?ejd0WHlYOFJGU1BMSDRYMFhONWdVRi9NK0pDckVKRi9vcGZQbk11WU02NmI3?=
 =?utf-8?B?bXY0VDdqcExzWmlrenRhTTZDS2lEM01ONHNhWU5wZUVOT1dERlNvM1BUUnpk?=
 =?utf-8?B?dk5CbzQ5UkhzY2xIRFpNcllNUmd5RjZoRlA1V1Z3aWhhK3c4T0lXRlRUeUhv?=
 =?utf-8?B?UThBaWFpZUtTOStORUtPZUxYMnRDMlhTYjAwMnB1Z2RxMWUrNlBEQzZGQWZO?=
 =?utf-8?B?VHNJOU50czBOemxmNVVTbkpQK0ZJWjQ2VlV6S2E5dlAvanQ3OEE1bXV3YkJH?=
 =?utf-8?B?cEcvbFNnRmJYdmR3dUdmaGtMWThaVzBHaWRCKzZ5aUNGRHloSnhoSXhmRnda?=
 =?utf-8?B?ZVJzOWdiUlFtWTh1ZHVEbXpQYk1XclpxbTkwVjhtM2VjZ1lkc2QzTFpzdS9r?=
 =?utf-8?B?aHFzSEdLdjhZMmI4TmZsaHpCOEpFS0ZhYlR1dVdZZFdEcHJOcXd4M0ttbEsy?=
 =?utf-8?B?U1R6U3hTRjUyT2RpSVU0Um0xMis5eFE4RG1xQ0ZoZlV2Q0o0L1VMUjJYQk5v?=
 =?utf-8?B?cWgrT0Rub0V4T2hBNE9DWWhZdElLZnRtbytlV0JWU0V4RTRXUDVDL09idXBa?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4215a68c-7fd0-4426-7db9-08dd6ce8ca9f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2025 04:35:24.7520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wirWY/UxE+i6fCGXoGEheUJqcowv+kug+H+5g+4JTVWb5zwIiQH3frPeaIbOS0/JO5WM1TTZn8puB3NkZnJTsQPwGiV/8BKMH9RBUMgVoaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5136
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


On 3/26/2025 10:39 PM, Ville Syrjälä wrote:
> On Wed, Mar 26, 2025 at 09:33:21PM +0530, Ankit Nautiyal wrote:
>> For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>> bits are not required. Since the support for these bits is going to
>> be deprecated in upcoming platforms, avoid writing these bits for the
>> platforms that do not use legacy Timing Generator.
>>
>> Since for these platforms TRAN_VMIN is always filled with crtc_vtotal,
>> use TRAN_VRR_VMIN to get the vtotal for adjusted_mode.
>>
>> v2: Avoid having a helper for manipulating VTOTAL register, and instead
>> just make the change where required. (Ville)
>> v3: Set `crtc_vtotal` instead of working with the bits directly (Ville).
>> Use intel_vrr_vmin_vtotal() to set the vtotal during readout. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++++++++-
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 10 +++++++
>>   2 files changed, 40 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 0db1cd4fc963..6796dd0307a6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2698,9 +2698,19 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>>   		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>>   		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>>   
>> +	/*
>> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>> +	 * bits are not required. Since the support for these bits is going to
>> +	 * be deprecated in upcoming platforms, avoid writing these bits for the
>> +	 * platforms that do not use legacy Timing Generator.
>> +	 */
>> +	if (intel_vrr_always_use_vrr_tg(display))
>> +		crtc_vtotal = 1;
>> +
>>   	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>>   		       VACTIVE(crtc_vdisplay - 1) |
>>   		       VTOTAL(crtc_vtotal - 1));
>> +
> spurious whitespace change
>
>>   	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>>   		       VBLANK_START(crtc_vblank_start - 1) |
>>   		       VBLANK_END(crtc_vblank_end - 1));
>> @@ -2758,6 +2768,15 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>>   	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>>   		       VBLANK_START(crtc_vblank_start - 1) |
>>   		       VBLANK_END(crtc_vblank_end - 1));
>> +	/*
>> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>> +	 * bits are not required. Since the support for these bits is going to
>> +	 * be deprecated in upcoming platforms, avoid writing these bits for the
>> +	 * platforms that do not use legacy Timing Generator.
>> +	 */
>> +	if (intel_vrr_always_use_vrr_tg(display))
>> +		crtc_vtotal = 1;
>> +
>>   	/*
>>   	 * The double buffer latch point for TRANS_VTOTAL
>>   	 * is the transcoder's undelayed vblank.
>> @@ -2827,7 +2846,17 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>>   
>>   	tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
>>   	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
>> -	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
>> +
>> +	/*
>> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>> +	 * bits are not filled. The value for adjusted_mode->crtc_vtotal is read
>> +	 * from VRR_VMIN register in intel_vrr_get_config.
>> +	 * Just set this to 0 here.
>> +	 */
>> +	if (intel_vrr_always_use_vrr_tg(display))
> This one either needs the transcoder_has_vrr() check, or we could just
> keep on blindly reading this anyway, and let intel_vrr_get_config()
> overwrite it afterwards. That's kinda how we deal with
> TRANS_SET_CONTEXT_LATENCY as well.

Understood. I think will just let vtotal be filled here and for 
platforms that always use VRR TG it will get overwritten in 
intel_vrr_get_config.

Regards,

Ankit

>
>> +		adjusted_mode->crtc_vtotal = 0;
>> +	else
>> +		adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
>>   
>>   	/* FIXME TGL+ DSI transcoders have this! */
>>   	if (!transcoder_is_dsi(cpu_transcoder)) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 414f93851059..7359d66fc091 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -708,6 +708,16 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   		crtc_state->vrr.vmin = intel_de_read(display,
>>   						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>>   
>> +		/*
>> +		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>> +		 * bits are not filled. Since for these platforms TRAN_VMIN is always
>> +		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
>> +		 * adjusted_mode.
>> +		 */
>> +		if (intel_vrr_always_use_vrr_tg(display))
>> +			crtc_state->hw.adjusted_mode.crtc_vtotal =
>> +				intel_vrr_vmin_vtotal(crtc_state);
>> +
>>   		if (HAS_AS_SDP(display)) {
>>   			trans_vrr_vsync =
>>   				intel_de_read(display,
>> -- 
>> 2.45.2
