Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B14B2B877
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 06:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCFAA10E111;
	Tue, 19 Aug 2025 04:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ur7lfwF3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C98C10E111;
 Tue, 19 Aug 2025 04:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755579334; x=1787115334;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PJ7JfYXlRwgEo9sxsSw1XU/36AhnTAee8UHiWpwbxdc=;
 b=Ur7lfwF3nOmgPazhidGiMpS/7J6xrJGScPCPBLfgn5isRU03tsZSKnF/
 v2T5RRkEKpm+NJdQkzSrK0VCnoOeeo7Qf407qlVLcJEU1YDTUl1GUDKuT
 nntwEmZMx0Fs1ELkimTPajOnKrx/0Aaaa2AGC4iOED4Aj5Z/PHL6OuLYO
 puetDnicsN7L1yT0Q9phPqrUlZN/gsrcSqFLYJOAuqsNDsfCJmCsqfsHh
 zwnoEZDwRv3OqixLfTg8DSFZ4ul5fp5U9wFZ9t0FwC745Oc76dn405SYP
 ECR0REw7Dq5FM68UBkOUocByxnLD96J+YVf0bPgbwRIdBt/eO4dEpYNAY g==;
X-CSE-ConnectionGUID: OXgGtDgIRiGMN4VCU6PYMQ==
X-CSE-MsgGUID: F8pBUtrgRXKhLekJZ8P5wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="68416704"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="68416704"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 21:55:34 -0700
X-CSE-ConnectionGUID: xvw0wYSORPmmfxH8jhDM1g==
X-CSE-MsgGUID: /IwwEb91SGm/M4MlD/j+6g==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 21:55:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 21:55:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 21:55:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.59) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 21:55:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J/MSkYkEVtSZR3IBsTOFwadAISM2p28ybrFOf94MU8s9ByAtwwH7C6hBxypaHg5IEnkpnPCFni9Ahe9dg3MtVLwB6vayrp/Tdlo0fZ/nJrxiD86QREKjLj1LxU3Za4puO69LdII9qzCvRQTM8C9LIfc5Mn2l2xvzayZo6x5q75FZ8uRByohN+n8grjP9xFKyhrlPNCr8GMeSY/qfIKHgtsRtB2Lu7ik2mPF/Hcx8Bkhm+tEuoo3WeRkwp0ataM9B5rRbsLMprd2N0+0fkJIGCNyEcgHUtTFLIUZ+mjQ+7YHT4qIwBcB78Qgm3HzMeiQGxn33bxTOLgHYBqTXAsSZZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nYJxS/EYrLPv1vnXPYPOBHgnm6DodtWXLtfQP/HIhg4=;
 b=owpaQqkUb5by+Bhoa3sIvzh4nYO7+ENn0CLLc+pgOhIFYx9s6SXQjSxzamXKWOPRV1p7TyUvj/lXbfH1ba4SWNvE4ZSrsgR23NkE+jn6iCdYacJiOXepYhWLjbj1MIFip8UfEDT84+VVNsllwr75nKjGP38BfE7vuDdnaEd57BA0gHwZq2beDb5pKH6948mOSf3y27BoRcslt1nFcZGBKIfPb+JAPBbRudxXSPxCWYnbmzidJmILf4GBMG5uXswLJTsAXFabh4dznsIsYNAdBXxH+07ISW+wf+5ipfZIghNS9o7TkPMvt5FoPhvCXQqS68RQM5RnRM10cKHfSGeWqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8702.namprd11.prod.outlook.com (2603:10b6:610:1cb::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Tue, 19 Aug
 2025 04:55:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Tue, 19 Aug 2025
 04:55:30 +0000
Message-ID: <972b6cf2-fd9e-45dd-b319-efbf11b81ed8@intel.com>
Date: Tue, 19 Aug 2025 10:25:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] drm/i915/edp: eDP Data Overrride
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
References: <20250731051646.3009255-4-suraj.kandpal@intel.com>
 <20250731095049.3026988-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250731095049.3026988-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0010.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8702:EE_
X-MS-Office365-Filtering-Correlation-Id: ed449aa5-b8ce-4c14-2d76-08dddedc9f20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UjhwNWxRSS8xdlB4TzB6MGpDbFJGSHR4anVLbkFETENtRm56VjdiUUY3TjdD?=
 =?utf-8?B?WHV5SXcwamlwNHhHcjU2b3RiQitYc2JaVjNyYnhGdkJFTCt5RWRzeDhiVTQr?=
 =?utf-8?B?dDAxc2RRYlc0KzJUeCs0V29MQU0rUHErTkVGTThWcWF0MnZWNlZzK1NyeUVL?=
 =?utf-8?B?aUR3bW03bnloT3NvWVl4c3BWcDNxR3RUSzY4NFJ6WEJ0eHBmMWhoTXVIYjll?=
 =?utf-8?B?UnhuZjl0ZTV2S3hpUU9yWlJITlk1V3ZmeWVENGNWblJiRysyRW5LbVRJb3Mw?=
 =?utf-8?B?aXRqODNLT2hCZzJPVW9oWEJJUDdveHVqVDJSb3pKRll5OFRRQndaU1lhYk1O?=
 =?utf-8?B?M3JkUWg0VUE2NmhuOXhNU0lzOENncURabzFVSERCaU5uVW5VV04rTUpxUFd2?=
 =?utf-8?B?Z2JhOUFkc3BkQzVDbS9OSHVDdy8zNzRKRHZpWVcxOUdMWkJ2MnpRSHdwZ3dt?=
 =?utf-8?B?YmU4NzROODFkb0JiTWN6ak9kMEJ4VndnWUIxMVVlRnF0RTRKd2dhNU9CWnov?=
 =?utf-8?B?eXNZRWRMSDZQNWk2bDE2QTFUMStQZVFKWUNVZCtCRENpZ0NVTHo2ZldWL2NW?=
 =?utf-8?B?RnpiV3I4VWdSdW5ZOEtvekh0cGdXa1hUQWE4K1p2K1BYQUFXZ3VSTCtvdHFj?=
 =?utf-8?B?aEJTdWx1dlNaeEx2Q3dnTi9SMllaU0FWci9EdGxCaHozVzRSZEZJengwbjU5?=
 =?utf-8?B?UUhjcWlDZzVOeVM2bGZOUm9iSlVVb25kMmNIT0RjYVk1d3Y3MWJwMjlnWTFV?=
 =?utf-8?B?cm1zUG4raVNyaktMSzJtNGpBUHUvYllPUThacWtuZEVINGN1T2kyRlY4SE5x?=
 =?utf-8?B?M3FIbjNjSTNmVXFXQzNQMDZxeTUxRk50R1dHYjBjM2Y0SW1kTHVSY0RHZHpp?=
 =?utf-8?B?Ni9HTkxQdi9PMFdUK0xZTWtwL0JlNmg1K3dLRGEyQytIQVZkR3I0d0ZQWDlq?=
 =?utf-8?B?Q0x2bWFlYkcxR0FHSmoxOEdaQUVSd3pHL2JudjJLT0xvd21udFlpTU5UKzJv?=
 =?utf-8?B?eUlHYk9rSlh6RkZRN1BxZm5hWEMwdmEyMFIxY0pvamVqaHo4djdIUUZpWmVu?=
 =?utf-8?B?R0FDRGZoaFpybUJNOUlqNTZZOUF2T291ek40R3NWRjVnMUVlRXE4RUJHWEdU?=
 =?utf-8?B?S2xJNWhOaWZsQ2pQdG1Ucml2Wjg1b1pkSC9YaXk2WFRCeWROQWg3cXUxQjlm?=
 =?utf-8?B?Um43Vy9TdUdwLzdwbFhkZnlNUU53U01DU0JLYWtTdVNVRmVmRCs1b21yYzM2?=
 =?utf-8?B?cFhFdlNHbUJlOVVFenY2bk5PcUJDUDFiNEZmaEtTSE9YMlloL0QxTDkxc1g4?=
 =?utf-8?B?ZWJtd2tENXo2UUlPaGZ1Szh6MCtFSEQ1TU9MQkgvSzB4Z3NrRzZuejVHdWhW?=
 =?utf-8?B?OSs4c3ZwWTZKL2NORjQ0TUdYVEZJR0JybmY2YWlhWFM3RWtKa05ncWhuN3Zh?=
 =?utf-8?B?MHBVSEhBbDdJbzdDdlBHOVhydnZJaGM4ZGx5dTlCUTcrc0t3MlNGWDdIdWV3?=
 =?utf-8?B?QStmZTZ5S2lBOThNWHcrNldTbjhIZGkyY3hwdnluKy9uSzNWQmovQlZ6MDNK?=
 =?utf-8?B?WUlmWDNvOUdJeUhYd1hianJ1bEpMWWZnTWlRcEJESHB6SCtPVitsV2dSTE5M?=
 =?utf-8?B?a05kTk1DdHQvejFVR3RNdGUrdU5YVGdmZGNZT0hxL0hGd3FWVTVyZEtXTEZz?=
 =?utf-8?B?NEovd1doQk1HS3dudy9ROHYzR0RwcVBoSm9VY1N1SnduRXQwbWpDT3NLcUFM?=
 =?utf-8?B?MmVxL3hXSTFLbWVXWEk4dm8xZjR3N3hyT2tlc0hXME11SVc0d1FXYlFydDZo?=
 =?utf-8?B?QUxWOS9SSFlKcmVHeTZ4N0QxUXVXUERScHdhS1krRDFGYmZ4bzNLaVVIanRl?=
 =?utf-8?B?MUdzSi9kUXFvOUNsZ3o5RFo4RHR0OENxRWpVSFl6OXdKRFE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGl1bWRMOFkzMXV0U2hSVDhIRVZjd2dpQ2RHU0Y5eE9PZkN4cUpTR2Y0WVl0?=
 =?utf-8?B?VnRaUURmNE90Y0FVTlhWVWgwL0tzSnhQZ2xETVE5L3JISjdLWXQwNThuWSt3?=
 =?utf-8?B?bUlReUc1NG1KSTU4RmtXRDY3QjZWS3kvMnZPTHFYT0YvOExlZGZvdmQzYldl?=
 =?utf-8?B?Q1J3V2lGYitTQUNxbmpJbE9wM2ZwMUtEZENUTU9uSFVlYjNDL201cjFBSWt5?=
 =?utf-8?B?OXVKd1hkRGs1ZVNyWCtUUHJOQS9NSU1oUklNZnJMRnhZSWpsb09qMmxXU09p?=
 =?utf-8?B?QU1CTnRHRlpEa1ZuNmpZUHNTQVlXQVgyUUIzOXhNZm52cmxVUUdmNnBSWFBK?=
 =?utf-8?B?djVxdUFjWFNIWkI1N3NOYVFVVFlKU0xpcVVCelBITElseW5sZmtZd3NJcFd3?=
 =?utf-8?B?ci9qb0F1ODNRNEZhMi9NdlI5OE5ibVM1ekYyM1F6NUZ5c05DMGRPdmdQYWFY?=
 =?utf-8?B?U0g3OExXWHhFYWYvWGw1eE56NEpUUUVlaTdpUGwxYzh0VlNPVGtwMjZVY1U2?=
 =?utf-8?B?cUcvbHlTMitmSUdtTXBSM3pxU1d1a2JUNjZoVEMvdEs4Z2d2VDZ2RjZ6dXB3?=
 =?utf-8?B?MzlHem0zYmdyU29iQjlkTEM3bk1IN1FpdzFqK2VmSkpLRTBqUDQ3Q3pNbXFO?=
 =?utf-8?B?VkJEeEIwSXB4R2RzM1VyVUpCbXVqVkJFdjdKSy9qbFRNYm1mbXRVeWVxd3hq?=
 =?utf-8?B?RmozWGFHSmVQekg3KzVqb1dYR2drWXdDdnhmM2hSdi9xdEM2UXROUk1jNWVk?=
 =?utf-8?B?Vk83VmtPNW9VQTRtek5NM2VFeWJ2Vmx1VE9CbzhXSzEvMUtoQlFiS0dhVXdS?=
 =?utf-8?B?T3BYMno1TU9CRGppL1A2eXArWGx3eGk5WGlZVFpQUzVCaUpRYkthUzR5Z3dI?=
 =?utf-8?B?TldMdkg0VTZkSDNqN2w3SGNzb0Z5UWdkWnVXTUpneEZScWx0MTRSV1NPRUN3?=
 =?utf-8?B?Smhqc1NXYktRb3cyekoxeDIxUm9lYTVWQWl3M29VTkp0RlZDbGF6NXlCcDZT?=
 =?utf-8?B?amhqVmpkOXluSzhyTHFMYmVuQ0dyUTZOaForNmN2L1pGVFQvZEgyZ3puTGJH?=
 =?utf-8?B?TkpKb21CY0hHQ2NpK29NY3hBazl3ZnZKeGtEd25ZcStxQXAxV0xvN2dpU1RN?=
 =?utf-8?B?aVovbVhmaC9FWkhFWVl2ekx3OTBObGJEYWRlSGhoZlVHa3pUQVo3ZHBEdGd6?=
 =?utf-8?B?TDJydTVGc0dVcmRId2JDa21YRm4yekZaMkM1cHFJWVd5cFFGNmNDc3BNNVZN?=
 =?utf-8?B?am5sMlhlL1ZaR1VCTUlyd1cvNTdMZzRNWkxUdUpMd3lpMUM3S2lvU1FRWmY5?=
 =?utf-8?B?V05lSFVnQTNJQnBaTDg0SjNETXJJZzNwdXhycTVXejYrN0h1YTE0U3BMemsz?=
 =?utf-8?B?cnVjSm92c1ZJeHlQTzAvL2hOVEZqMEdXZ2hSTHFxcXM4M1h1NzkyNTY1amxW?=
 =?utf-8?B?MW4yWlorYjk2VHlFblE1WDhJc3dleTdnMkZiVElDZzhGbmRUTjlGK0YzQUtF?=
 =?utf-8?B?YUNOZW0wS3ZJb2tDOGN1ZnU1azJPd0t0M0xJZkJ2dUkyQ0JjQzdYZlNxa0RM?=
 =?utf-8?B?bkNFTXZjQjBuc3NEZVAyek5DeTlTb2VMTGRxbG5INFVsMDlkS1dGdG1OdGI5?=
 =?utf-8?B?YzBuSTY2eVNSRXcrZjJOKzkzQ0x2QVZXSFpOd25EOUlwa2YwK1hNdHFhU081?=
 =?utf-8?B?c1hFUlBQK3kzbzNLY0FrZzRSeVV3WXdNUWVDQXFIaEZMM1FlM2hNc05EVThQ?=
 =?utf-8?B?bXBwSkU5QTh4cHpENG5sYjVmQmlFNmdyRXlwUk83MG01bG9aa09QMmhIaDZK?=
 =?utf-8?B?TDUycEVka1pUb3JhS0gyR3ZnZGZzTUkwTmRQU2YwNlBsaG5hTTRHaytyT1g5?=
 =?utf-8?B?akszSHJpV0wwc2pZd2VkV2gxVGRIRjlJelBsSThDRHlPZERtU2RVY0Z5dzd1?=
 =?utf-8?B?VmRHNDV1OFQ2ZnJoRlZuOWUrajN1NmwraTh5YUZwSGJLZ3JKT0x5eDEzUVBy?=
 =?utf-8?B?RHozSmF2blZFQ0pibUVISENQeGJxdFZPRldWdkFYT2R4bmZnaW15K01Vb2dM?=
 =?utf-8?B?K3ZudzhSMHRkalpjd3I2WFdYcERnR0Z3WnU3c3djVENSQysyRitnLzdkUzVr?=
 =?utf-8?B?cDFudHU4MHFGWCtkUEhubEd5SUVDeFdDcFdrMDJRK1BXRkQzSHJoVFhCMnp5?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed449aa5-b8ce-4c14-2d76-08dddedc9f20
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2025 04:55:30.3707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qChiG6g/RJI87ByUboPAvxdI0fgcFDfkIEFu+Ce4E/dvyJbBt4djEMR/Gtkh8TrGKO+LPSgaQXzVxLxf7yOl9HvKlnftsPWmcqIOG1niA1E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8702
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


On 7/31/2025 3:20 PM, Suraj Kandpal wrote:
> We need override certain link rates in favour of the next available
> higher link rate. The Link rates that need to be overridden are
> indicated by a mask in VBT. To make sure these modes are skipped we
> don't add them in them in the sink rates array.
>
> --v2
> -Update the link rates after we have a final set of link rates [Ankit]
> -Break this patch up [Ankit]
> -Optimize the assingment during loop [Ankit]
>
> --v3
> -Add protection against broken VBTs [Jani]
>
> --v4
> -Fix build errors
> -Create a seprate function to check if edp data override is selected
> and using the correct vbt
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 17 +++++++++++++++--
>   drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
>   drivers/gpu/drm/i915/display/intel_dp.c   | 22 ++++++++++++++++++++++
>   3 files changed, 39 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 7adb7c4b0432..5d9126a0219e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2519,12 +2519,25 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
>   }
>   
>   bool
> -intel_bios_encoder_supports_edp_rate(const struct intel_bios_encoder_data *devdata,
> -				     int rate)
> +intel_bios_vbt_supports_edp_data_override(const struct intel_bios_encoder_data *devdata)
>   {
>   	if (!devdata || devdata->display->vbt.version < 263)
>   		return false;
>   
> +	/*
> +	 * This means the VBT ends up asking us to override every possible rate
> +	 * indicating the VBT is broken so skip this
> +	 */
> +	if (hweight32(devdata->child.edp_data_rate_override) >= 11)

This should be 12.

I think it would be better to define a macro for this 
BDB_263_EDP_NUM_LINK_RATES or something similar and use that.

This can be part of 1st patch.


Regards,

Ankit


> +		return false;
> +
> +	return true;
> +}
> +
> +bool
> +intel_bios_encoder_supports_edp_rate(const struct intel_bios_encoder_data *devdata,
> +				     int rate)
> +{
>   	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index a4abaa89a682..d244caef2275 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -276,5 +276,7 @@ void intel_bios_for_each_encoder(struct intel_display *display,
>   					      const struct intel_bios_encoder_data *devdata));
>   
>   void intel_bios_debugfs_register(struct intel_display *display);
> +bool
> +intel_bios_vbt_supports_edp_data_override(const struct intel_bios_encoder_data *devdata);
>   
>   #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54d88f24b689..7e905e912aef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4277,6 +4277,26 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>   	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;
>   }
>   
> +static void
> +intel_edp_set_data_override_rates(struct intel_dp *intel_dp)
> +{
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	int *sink_rates = intel_dp->sink_rates;
> +	int i, j = 0;
> +
> +	if (!intel_bios_vbt_supports_edp_data_override(encoder->devdata))
> +		return;
> +
> +	for (i = 0; i < intel_dp->num_sink_rates; i++) {
> +		if (intel_bios_encoder_supports_edp_rate(encoder->devdata,
> +							 intel_dp->sink_rates[i]))
> +			continue;
> +
> +		sink_rates[j++] = intel_dp->sink_rates[i];
> +	}
> +	intel_dp->num_sink_rates = j;
> +}
> +
>   static void
>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   {
> @@ -4327,6 +4347,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   		intel_dp->use_rate_select = true;
>   	else
>   		intel_dp_set_sink_rates(intel_dp);
> +
> +	intel_edp_set_data_override_rates(intel_dp);
>   }
>   
>   static bool
