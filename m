Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2FBA30696
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 10:04:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1050810E470;
	Tue, 11 Feb 2025 09:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N6LQYAPM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E50810E45A;
 Tue, 11 Feb 2025 09:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739264652; x=1770800652;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1YCA56CQhD8nbuxZ+uleeHq98zkxn9P049chFzW2itA=;
 b=N6LQYAPMRk3PJp1YA11GRSiLI/T8oPUBtIigCI0jjB6fmqeb7Hlq76Da
 ysna9kWgccNe5nD6sHlWcc2rrP1/bdqPY4wxA8ikzFyxOSBOb+Wr7vXV4
 yQSe2wLQYJune8EuX05UWOr5ITTrEoDXtsQk7HsNtCLx5cHGzgon5tPN3
 8SyeJUmafcKna85Q2RLO9LRpllmCcbpnsQ9UaDii0225fV/Du4NNGEAME
 y6eIkUgf+AQzO6o1lm3e4KqTltrjhTBnchOoLbVQSE1fzJjPOYNmHXk78
 wh6acuQG6ZyRqShOdolxjSWOCrVVzlt9c8Ix70hnYlmrOQ8ClKxl0rJYW Q==;
X-CSE-ConnectionGUID: sx0AsIMRStOdjHSfpum+eg==
X-CSE-MsgGUID: 3n5qfedFRHWOtnNuzaRO8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="42711407"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="42711407"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 01:04:11 -0800
X-CSE-ConnectionGUID: x6zAIunbTK22nWAFLQn2ww==
X-CSE-MsgGUID: Us6oamA/R0G1digwq9D4DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112306146"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 01:04:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 01:04:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 01:04:10 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 01:04:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VZFJdZh0897rfdGqLYcYxtgK/jYNlycknDylVWrmc9TKVmGjtXoVLfQGuUfSMWMvop7kIO92Mjk1IeeTvoseLPJae50XfPp9+alOYmFzM3V79yuDcZA1BGMD9GZPY9+AQN10asaZaWAOqav99o6gsu95VI1PC4fVLgmJA0ZF06p145URmFtBLDIjDjsYNNhF48uCwvgzhW1MX3vM0y9vrFxZbrAIsfvWovV0tiQAxmjV+rR4ZsetJVdVwIwliPGJkydtfXh1f6LVpSh4ntZpcpdFkxbCTClL6paGYn8rlRiKbKlJNlYDiqNmN2iZtIq4bREJyB6WCddMe2fqQ/86FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AGQT5QHsXyBS+cf+W4BGBDf7vonhST3SFmdtzOlZSqQ=;
 b=OnDmv+wendHgwZYKM8GJndeIcfLFmcPzwEDJvoIhyhe6kDaaIs0huKLhFAl73Ju9H01+wIHaU475rb4epEzgc19HkLnlRBBCuc/pnM5IlFF2Keq7K+DJWk9pVy1PA+Oj/OXBENUbhxF9+4LtV4t5tNFkMKtgf8aqAe8kx/ScaZWaB4L62sfLuLzAM54ozoOijuJyUTHZpJS6roDlvZ++FyaBAcAa3xYD3WfL/W0yC2GszJs6ftDoous2l+nGBtsNXP8auy7hE4CfqIQSywsQhm6y+KmRasj/da4fjNXYzH1rlHNueaIMbf4zt0Ky5w8zTzidlSgq9f5NptklUxAwXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB8787.namprd11.prod.outlook.com (2603:10b6:208:598::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.16; Tue, 11 Feb
 2025 09:03:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 09:03:39 +0000
Message-ID: <ff9f56b9-7b8d-4cc7-ac49-86636e77d51a@intel.com>
Date: Tue, 11 Feb 2025 14:33:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] drm/i915/vrr: Account for TRANS_PUSH delay
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
 <20250207223159.14132-4-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250207223159.14132-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0145.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB8787:EE_
X-MS-Office365-Filtering-Correlation-Id: 54b788c4-c7df-41b5-e75d-08dd4a7af9c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WFRNMnJHbnZtUWdBNEZZSWF1ZHJSWlV1cGdCOHQ1b0pzVnpsRnZnYk5rOGND?=
 =?utf-8?B?MUF4VkpWZnF3ekkrTDV4dFM1dDRwTmY4aGs2YktxbnlYc1hFM1dGSVh6UFlo?=
 =?utf-8?B?cDllM0FHUkpCWHpMSjZOOXVDc3QvQzROV05nc3RtbzIxdjFRNzdaT3R5NSs5?=
 =?utf-8?B?YzM1U0V6ek5leEVpSzFhKzM3TFo1MXJwQThPeSsrYUtVZHFCYnFSYkpjL2la?=
 =?utf-8?B?TXFRTUZjZXZlUmhuNElpQVpmSmRWMEk2SEYzeGNtWnJqY3hHUndxOGRkU1VI?=
 =?utf-8?B?V3hrM0o0UUxuZkY1S0JDV2taMXFPUHRJUHFLOGtraU02dTQvNUNGZ1JtaWw2?=
 =?utf-8?B?VVZXcEkxdDAzVmFnS05jSVRBK0RiVmRqdFFZR2hPS3NQOFZzR2gwb3NDc3Vq?=
 =?utf-8?B?cXY4YUZTL1lCcDJubEhuZGx2SzZtRnAyTHlZS3BQc0JnY2htamhaUUlibndQ?=
 =?utf-8?B?QUljd3R3N2JyK0FvcGttL1dNd2wwb1hlamZwNGhNSEJRdm5LNktuYW9UandZ?=
 =?utf-8?B?Sm4zczFjL1JsTnR3NEJ4K0s3Qm0weXdHSzJkK1NMdVpUMlZXblJ5K2s2UzA0?=
 =?utf-8?B?VFdKK1NwUndkWDJTc0E1TWkwMm4rMUNqU0JzeEJMNUVDQnBnYmtyRjVvVVpZ?=
 =?utf-8?B?Y3pqK2o1NTBlYXlER2ozdUM2Q0ZoSjFqU01BNmtVVXI5a3l5SGhWMU5QVUtJ?=
 =?utf-8?B?ZWNEa3lraHMrTzdPeHZKUVV2R0xpelVwdno3YUpNOUw1QkNFbUlEYTM5S1Rn?=
 =?utf-8?B?bzc2a1FobTUrNkk4SU9DQzRXb0dUc2xnMGFtTmVzTFV2enR5RlFKWkhwdlRn?=
 =?utf-8?B?SXlHSkZ3d3AvREN6N3JpcUR1OCtkaDJkdVRuSm4rK0djQkVlYTgra0FzMXBF?=
 =?utf-8?B?WXRTTThMc1Vnck9pOU9vd3k3NkpSc3Jadjdla0NCUlBkcXB1VXVvOWVJaXhX?=
 =?utf-8?B?UEd3cVowUzd3cW9iNGxuc29zY0NRSDlRZTBXL1A2RjNBT2hpT1NaaDBkbEIz?=
 =?utf-8?B?QXdob2VoeHhpU2tkOUt5dkxyZUVwWk52Q1hxaGcrbXlpZCsxYWNDL0lzc2NR?=
 =?utf-8?B?di9iMEs5ekxBdFpBVDE0am0zUlZWYWk0TjVNOFREUUlhK1JGOWtmSWY5VGVE?=
 =?utf-8?B?c0EyZ3A4R3UwQTBsdGMvUE1md3RncEN6dDVkamJoU04vVWJiMEwwZGNIQitP?=
 =?utf-8?B?L3ZxcG1VT09zL0Vzam5IbXlqcERQUHI2Rit3bTduemNhSWo2KytNVzV1WjBC?=
 =?utf-8?B?eEI2WG1uOU9kTU8rS3F6N0xpY2JrZU1YMllBbE1CTXpieHdOZVkvUW5oWjJJ?=
 =?utf-8?B?bXlXQnNUM2haeVdQVGUxQW5nSElXOEltcFhES0tqbmRKL2cwOVI2cVVZMmpZ?=
 =?utf-8?B?ZE11dC9nQndVSkpocXJmUmY1SDdjVTdoU2JucFFLSDdsbGhqV3pTTDRaMkhP?=
 =?utf-8?B?bFlDTDZySjdvV1IxeUFNTThCNnAvTmR1QkI4eVRGdVFJUzFUbk8zYk1qeGwv?=
 =?utf-8?B?ZUpENE1PYVdRT2gvK2JJWThlNlBrYUJSa1V5N3lObjBzbWNsb1d4UzRHMEVO?=
 =?utf-8?B?Qm83ZElPT3pGZkl1cktBZzdHbHZsTlFMOFp2YnJhMXVsdHR2RUxuZndYSXlo?=
 =?utf-8?B?dTBMRjVBYnJxbTVmdE9QWTBQRGc4QW1lWWJ6TEpiMllkQXJLcEs0QzVrK3hN?=
 =?utf-8?B?SGg0V2ZLdjRXZitwcWszQ25oczByWSs0dWZnN0piWUk1cUVRVzdjT1M3TWZ1?=
 =?utf-8?B?M2lSZUIyZTVkYndSUVlvVThWMks3VDR4NVVUeG5tRFBscDYwdjBaYStyKy9T?=
 =?utf-8?B?ZzVZbnppQmJ1QW5nSXNvVVV4V3VLWEM3dUVBNThvNzNKNzRjcnVRcFBJUnBx?=
 =?utf-8?Q?23cHqRtgmmEyE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGxmdnBLcDVKOEhGd09Xd1FRUnNVa2tMbEJLWlFuRGN2d1QrYnFVdkVCaW85?=
 =?utf-8?B?Umd2SEJTZGtUTFpjdVcrNHVVSWtubndidFlIblA4SThmL3dSV1lvUG1qeGlz?=
 =?utf-8?B?U3NDOGZjRXduZEk2Ly9jVUxUNU84SHRjdTRQbVQvaE5NZVErQ0V4b0VRR0tY?=
 =?utf-8?B?WThtd2JLcUw1YnNIUE1iRzBzSDBNQ1M0YWlHRzY0b1FCdHgzSEpOV0NpeHVC?=
 =?utf-8?B?bkhzdElOUXNRaDI4U3NtaWRhNEh4NGQzTFg4MVZZbndBRFNWRGcxZHRaTjFN?=
 =?utf-8?B?VDkrK3ZKa0l4NXFRbFVROTlLVVhLVEQ5SlBlc2NxaWN3TzBNSDJySDVrY2pI?=
 =?utf-8?B?T2NXSFMzcjlpUXdmK2ErWHJnZlhYcm9vZ1Exem9PYy96QXBFQ2NOSENXWGJC?=
 =?utf-8?B?TnJWQUhLUTF2dTU1VEpnRG9JTk9BT09LQWorT2czZHN0WFBsbUg5U0ZTL283?=
 =?utf-8?B?NE92THI1OTBrVzZ2VVhVYis3SExXR1Bnd1l5ZEJxRFUxMWVEeUllcmFmNkZI?=
 =?utf-8?B?V1V4Z3JaNzdEMFpadGlRU2JwQ0J2eEwySnN3cGRtQ0s4ME5WS3ZQMVNiK1hh?=
 =?utf-8?B?V1BHQTNpTUg5V2daWGI3bmZFN3habTRWZW9UUldFd0FXbk93WjdFZVdnSUw5?=
 =?utf-8?B?L3hPQ29nd1JvbXl5Q2x5KzV5TzN0cVFMOTlUblZXQmtGN0RIbEtUQ2RiNUkz?=
 =?utf-8?B?bERPYnJ3RlIxVHNPUjFkVzRRK1E3N1AxVHYrRm95cjAyQmNhZTdQRmc5SGxx?=
 =?utf-8?B?ZU40d3hsVFdnM2hXTElEN3ZqaTUzSUN1ZUN3dy9rR3E5N1VyODYwWUFobHA0?=
 =?utf-8?B?OGdNK3J6cWxGYTgxL2pKTTE2R2NvNE9OVU1KellqakwyMFVLSUJqL3ZjanBL?=
 =?utf-8?B?T2NNMDJ1OWJHZndiMjFkOTRlUGU5RFhrcGMvME5DUlJEZmY2SWxrVjhtc0J3?=
 =?utf-8?B?MUx1OFJlaStZVy90Q1R0bkpnR1ZqTm1ENEExamJaNTlKZVo1NWdBcUoxbHNn?=
 =?utf-8?B?aFc2dnpQeGdFK1FhN0tadHdwOHBMaStPUmdobS92RytCNnBYclQrYTZZblUx?=
 =?utf-8?B?cHNNRUdRZjlGVXllekpsZkZFanFWVEtCSVh5SzF1TjVGa0tWZ0tIMVY3Z2pF?=
 =?utf-8?B?OVdsYmxtRXYxdEU5aDJrVW9VNEtTZUVqYzdadWZQRGN0WCswbk1aQmlJS0Zr?=
 =?utf-8?B?czJYVXl5QWVQUHBURldXZytoUE5vbUVYaVQweEJhUlJ3aFE2NSsyRzU0K1V5?=
 =?utf-8?B?Vm56ZzhFTUVNbFRCckhPbFpVdFhVSUpJdmgwcXI2WmpNREdtem5KMEw5dzFa?=
 =?utf-8?B?Vng0c2dVdUVDbkVjOTE2NTJzYllTWVhyYlZJZ1RpVDB4b0s3ZElHY1RRUTA0?=
 =?utf-8?B?MjJ5L3duWS82UnlVUGhIc2htVU4rUkR1bmVyYWNQOVVzakVsdk1acmZBMllJ?=
 =?utf-8?B?UGNrVkpYd0Y2SGtWdElNb0laTkpuY0ZXd2t5TWxydmQxUDVYcXlTSzRhNTZD?=
 =?utf-8?B?VHFlUFY1L1F6RXdVaHRjN25nSnMyZEh0VktnU0N6ZkJRZUFiR2l6VDRId2VV?=
 =?utf-8?B?T2kzazkzOVZGY0Fvdmo3RTdTbTVTdXdHTzJhUkZNT0ZSK2JZcldCeEswMU1T?=
 =?utf-8?B?aHF2d2pnV1BFcVlkSnEvajVWQldRRDNDRVNmMnhRUW83YzNlRk1wanF1QU0w?=
 =?utf-8?B?cmlFcW1qM1g4Y0xNclFYUHp2RWR6a0VBNjBrY1R4UFFGL1V1UWtEeUhpZzI5?=
 =?utf-8?B?bXk0QnExTHI3NUQ2SStkKzFQOU1TM2pzeFlFNHpaNGtXQlh5OWJLUGs1a2V0?=
 =?utf-8?B?M3M0Q1lwYmh2aEM2dE1jN2hYWlFLSkN0bjJRMXp1TTd6eVAwNGJ5MjIyQWZo?=
 =?utf-8?B?cktpYTRoZjRoY20yblRLOUZ6dDdWZEF2VlVNQkt1Sm5VdkRadytpMzJhMEZW?=
 =?utf-8?B?dkhIU2Rkd0grdUxVNC9pbE5CbmdpQTFPaUo0SlVtYlFBdy9kZ0d3MDl1Q1dX?=
 =?utf-8?B?akQ3amxocXhqcHFEMUhVRERQS0pWOHp5NVoxT0tjL3VPeGd2aFdWRmNqdENz?=
 =?utf-8?B?NVFvYzJJUGJCVGx4NWxqMWZ6RDZtUlQ1aUs5QjJ2ZW5ZWnJsTjFvQ1duV2FP?=
 =?utf-8?B?WEhibXBtVVByUTF6TFVzdzBPVFdGUjhUS1pjQUdnMHlBblpWL0pUQVZkQ3kx?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 54b788c4-c7df-41b5-e75d-08dd4a7af9c5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 09:03:39.6711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Uw8WMPbstVnD3cFTbelWF3fYCCqG6k537BObQVdyvnyHMmM+ij7QIKv8HADVVNZgiQpMBu/DBbL+YdSRGpT05dmlEreNWUd2hupXq3q5yM4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8787
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


On 2/8/2025 4:01 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> When we send a push during vblank the TRANS_PUSH write happens
> at some point during a scanline, and the hardware picks it up
> on the next scanline. Thus there is up to one extra scanline
> of delay between the TRANS_PUSH write and the delayed vblank
> triggering. Account for that during intel_dsb_wait_vblank_delay()
> so that we are guaranteed to be past the delayed vblank before
> we trigger the completion interrupt for the commit.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index f8bd6fad0c87..01e3bd385cac 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -116,7 +116,13 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
>   		intel_pre_commit_crtc_state(state, crtc);
>   
>   	if (pre_commit_is_vrr_active(state, crtc))
> -		return intel_vrr_vblank_delay(crtc_state);
> +		/*
> +		 * When the push is sent during vblank it will trigger
> +		 * on the next scanline, hence we have up to one extra
> +		 * scanline until the delayed vblank occurs after
> +		 * TRANS_PUSH has been written.
> +		 */
> +		return intel_vrr_vblank_delay(crtc_state) + 1;
>   	else
>   		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
>   }
