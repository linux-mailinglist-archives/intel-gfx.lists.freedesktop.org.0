Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46F4A236E4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 22:42:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F0910E9DD;
	Thu, 30 Jan 2025 21:42:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A39Q1v37";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BBDF10E9D9;
 Thu, 30 Jan 2025 21:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738273371; x=1769809371;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2CBFPGH7eOKjss8pkEEuuyIfZz28DmovcJ5JcfRlUy4=;
 b=A39Q1v3756t5tz/XK8bwA0iFo8xMeUjhH9GOkbwueFaXEfMzcVCJVOOk
 Nke7Q4YKNJ6LaZd+CumcxPeXszTTMobHQ+bY9XqngD9mWXW64ODV1+MAU
 Jcle4mWUUyfYSgs3a0/FzBcG9a9FCU1K37tz5G4jxEvDr0E23nqRklwHs
 KxFK7yIFycrzy2OxC1SinxP9HLGo4gWzn5hOlrQIeIdNqLOaU6/l43G2B
 2ghIWsu1rUWrfywGLwAOPZYsPOymA7NQAxDYctwMTKTFILYEHSdJXpUWQ
 gMUIx57CzvsxPwPQXWG4XAJrdYxoouwS+ngTfv+6G1QmnwmtnyQueTljN g==;
X-CSE-ConnectionGUID: sP2VOPSxS6KgUFwy5Bd4Tw==
X-CSE-MsgGUID: x1SFCVq7R/iWlzeeHiFRmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="41677990"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="41677990"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:42:49 -0800
X-CSE-ConnectionGUID: I+oKF1/+Tf6IsSE/i/jQ+g==
X-CSE-MsgGUID: DEB56g8UQeG6EsXm9ZiRsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="109597842"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 13:42:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 13:42:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 13:42:49 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 13:42:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kSvmdbrBaca0KEgYl1kWbOouneLP+2llR+NaQoI2vTd/1i569m1cn+AWl+xL8udtdnFaO3jKr5OC+COyxs4wwne12/Q2cwNlC6Hip7DEVgmYfqK1Dd7Ko5w4vxmORhk+/V/N4Pj4EucUNnFOLPoDzEraxF/rrJkxRWT8EYdtxKN/INGv9XsTYwva4z/ba2l9Uw8mTRl/99RpV6EEhQAK3RlkZfurTkFbeW+UOIAKyw8YLvBhBZspPtNJyzqdQZ+nosSgQGLO71nCDqdVq8ry8Mf5qLpOsv/pokzDzlZFS3HmQmy8opGODdPfyl2YGz0Wevy09OPs4cNrnFbOTowOtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HGH/CB8QYbwggMElv8l9jMvC2yCv3EJvu5s0M0czsPI=;
 b=nocj5wC5IQeFiAcR0WoEO/RCrafp//dLq7M6fESqaK0m3TiCi0Xvk+I5UevJaeinn2mPJ/DFuw+J8N5gNy/kkkTVwxDfme+M+Eh7ANK1iOMs8Ls25w60F+YsOVi5v4aJfH5tsaG/qHj+IszMBq3pjdrhvNAmhRyWxKIVpbcLsduxqS5T9xbh1PJIXS9FMM4U63EsxVC2VoIhL/ahRiMAWs+T5RF0ywoT3s2/x2hMs8GbdcAFvmGO46d28Cox+Ag2W5nsOn1HGOkcdZqsyEVSNxdTpcvyKLbUE3BkCVpebHlE5yZr7zHemh/6LkuqgHqrgZXCXn6T5JaJDAn3KAM2wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 21:42:13 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%4]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 21:42:13 +0000
Message-ID: <c447d173-1114-4ebc-89cc-3c9f15b819d8@intel.com>
Date: Thu, 30 Jan 2025 13:42:11 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v6 2/2] tests/xe/pmu: Add pmu tests
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>, "Riana
 Tauro" <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250127223301.2819108-1-vinay.belgaumkar@intel.com>
 <20250127223301.2819108-3-vinay.belgaumkar@intel.com>
 <md6vuvm5lsafcode7uhy2tq4udsavxlqqtm3gtdddqm3fu3oem@vhyu2ysimdzx>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <md6vuvm5lsafcode7uhy2tq4udsavxlqqtm3gtdddqm3fu3oem@vhyu2ysimdzx>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0095.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::10) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|MW3PR11MB4556:EE_
X-MS-Office365-Filtering-Correlation-Id: f771b076-5dfd-4ddb-537d-08dd4176f52e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VXBKZFpUQXoxWHJ2V2R3K1hEU1hlZHY4dFVwRUU2VWpwTkk2Sy8vZnUrOUtI?=
 =?utf-8?B?dnZ2ZHIyNHB5aENnOXdXZjdjN0JZNE9YNGlXTy9PWllmSUFqZnFUdmlqWnJN?=
 =?utf-8?B?dHUzUytBbHBUZzhFdk94Ny9zR0dtaGphQm1jbWlyZlQzU2l6WUUzbFlWMFlR?=
 =?utf-8?B?MVFKRVVjRFhicWVmelRySTZZWGhxa21wVHRDVUdEUHZKdjRZbm1MYUozZE53?=
 =?utf-8?B?dnQ5NUhnd1FPZnFqeW5UOVlvbytSUm9iYjFOK1BlZGdVbThLSHFLcm01RjVH?=
 =?utf-8?B?cWxlcGc3SWFzaGNGU0JNR1B6WjcyZzFzeG81K2M5ME51KzcxQ2tlOXRYTU95?=
 =?utf-8?B?aitWeVdOZzVBV1c5K3piYVRTN2RScXlGcHBZbTM3S00zUmVMczduMVU0cVp2?=
 =?utf-8?B?OTh5aDlpZE03bThtVFp5ZExnYTFRVnZibHBYaThteEFzTzJtcHdSWWl3andC?=
 =?utf-8?B?Y1ZBdXlQbmcySGZDVzBXYzFFSVBXUUkyVG5DeEdUQTIxMVROdnltbTNyY04x?=
 =?utf-8?B?ZnhHTTlRcHd1Y3UxS2lnRjV2aEd3QWxWck5VU3k3M0dUZnRxNzJmanFWZ05K?=
 =?utf-8?B?dEFuSGpEVFpZS1VDd2NTWnJ6VkV6TzlmY2I0ZS95cjJLRUsvRHdhT3hXQ2dx?=
 =?utf-8?B?ZGhqMURPeFV6b2FnakwyNkRwZUd2b2dSVFR0MXBOZ1pSOTRSMEdZYWlENmpu?=
 =?utf-8?B?bU1GQmwyN3pscy9Vd3Rray82dkFodEJjMFIzNFJDUmcxcUp1aUVCb0IyWjBi?=
 =?utf-8?B?SkNRRG9rZGZ1L2tiUWJWeVJya3M1L01CVGVDWDBEUWd4TC9Rb2dlVzdoR1R3?=
 =?utf-8?B?bjBTYWRtUjB3N0NPd29lTjNjWU5va1ZTVU5DcHV3dmhOMlhocTR3d3l0WFN4?=
 =?utf-8?B?Z3dMYzdpdXYyMkVvMUJjanE0WE9qcHlTdTFxb2FLZ1VTTitaNFhGU1FpZytx?=
 =?utf-8?B?QkUxZGd2SEdHRFFHV0FjZG16MG0yVHJpaDlrT3dXYUhVMkhDTTNUT05LZVFF?=
 =?utf-8?B?OHdQVDVKck92QXczRWhzMC9xakhlSi9kanVvSzk4RFFLd1ZqeUJTWm9JYkVW?=
 =?utf-8?B?M0dDRmpIVzV0YlRmellwSWhHRnVWRGNBdTl4R1FiRHV3ZVhmNjlRMzQ0WWdM?=
 =?utf-8?B?QW9HZElabXNwRmxDbnpJemliaDU4UFpyYVZKVDJLUHo4bWEvTnpjRTNLWDRo?=
 =?utf-8?B?dWppeFNtTDhZK3VHSDFJZzJOeGlRY2tYeXlHYzdjb2tvN3pZNkwvTHllMEt5?=
 =?utf-8?B?M3ZvbFo0c0RvMEFCT3ZYTGttZ1NEQXZYU3NqMUptRjdiYU9rTVpmNklJQjFa?=
 =?utf-8?B?TkRzQWhPTkJaMlNjTFdHdVdGdXhjV0NIYytBVVVUK2Jybm1reTc5RURibGUw?=
 =?utf-8?B?Nyt3MzkvU3NGSTlxTXdVb2hPUHpEczVlOGs5ZFVrUldVL0FGbERHR3FlU2NC?=
 =?utf-8?B?eHRjdHdNeVJtVnEzaG84Si8vMDgrbnpuaTVKbHlZZGNEQXdWSzdZMGRrT2ZY?=
 =?utf-8?B?YWNCUDJCRWc0YmZEODY0M0NHUzBiTmtjcEEzS1RLM1lCYUFJcXl4YU9PZUZa?=
 =?utf-8?B?cktVTmJGcVdkYk9PbXFmOTdqNWsrSXZIWmczNGRWU1BtUEJ5bzVpVFFwZE9N?=
 =?utf-8?B?Z202TThmak1YRVhGK3dQUWlxVGRTdnRrOU9uWEFrTk9BMC9FM0ZHZGgrUHh3?=
 =?utf-8?B?M2R0djllRW92bHA3VXZDWmZTTVI4WDBuaHhlektKVU9NUTdDdDRwN1pJY1NT?=
 =?utf-8?B?V05Yd3ptQ3I2cjNVOVRHWlQxdHkrY1dpTTBVUGRNU1h0QUcxaXpKWTdrVzVW?=
 =?utf-8?B?WVJ1MXpVU0c0SkhwOU43ejJCT2NJam1MNUY4c2xoU0tsTHI3QlBFQ3M4czlj?=
 =?utf-8?Q?ys+kcqKiXuCD+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEovcVhsSC9iZEZOdTQzQ2lBSTZweDU4QzZ4TzNsSS90VmM5MDVUYmFOc3RX?=
 =?utf-8?B?WTN6OUN1VG1oTVdNa0trV29FbFNSaDBuNnFWOEhMN1RNR1k5dE03VldwTUt5?=
 =?utf-8?B?WElkeGZiMld1TlBFWERjSitYZDBtNjRibVRSTkpBa3pPRHRjU3VMb2xvUzAr?=
 =?utf-8?B?NURjNHNSLzliY0tCbk1lUDVmWm1hSjJQZ0FBRmVlN0N2QmJEcmExZE95TXRy?=
 =?utf-8?B?TXo5SDN2YmRoL3FrTG9Ja2JGT0RJcjRrTHZnMDBHV0pUMjdHUzQ2NlpGMTI1?=
 =?utf-8?B?ODZ1cVBEZU5GQUdDRjNzUGVJejFydGlQSUZwbk5mZXhkRW1ONVRzNllLcDRI?=
 =?utf-8?B?RUo1Nmc0ZW1TMTZ4eTR1RUtIRHNWamx4cXdCSTdqYVhrT0V6Tk8xZHlnUTVW?=
 =?utf-8?B?VVI2SW1zQTFLc3pLV1g3eHdEV0NSM1R5T0J5ZlEyYW00dWgrZ3g1WVRoZ1BX?=
 =?utf-8?B?USsvdXhnKzRLTUp3djlYMURmUFdnM3ZhY3V5dTY4Rnh4czJZZ1ZRQ2Vpb2hp?=
 =?utf-8?B?QVVUVGFxSFBHcW5weFFNekVuUFpqSTVUcG9hdkVPbnNWanBvODQ1WDVVV0pC?=
 =?utf-8?B?V09Yd05qczFwQStUUHM4ZzZKUzdIU1hHM1k3WmhISzYwZVdlS0hXR1pQeDVT?=
 =?utf-8?B?a1NtaEFONy81WUExNlYzTHZ3Y2pubHNOUlEzTVF0NEZSdWEyelF2NHRjR3VN?=
 =?utf-8?B?dVQrQ3BobnJ6bE1aNk5JU1cwRnd6d1VXdFUrcUFFU2Y0T3JFdjRtM1lPME1F?=
 =?utf-8?B?MEViOVRWMHJPOXhSK3BSdDgwVTJiWnUwYzJSVFl6aE1zZEtqODhaUDk4d05K?=
 =?utf-8?B?UVBZaHdWTDlqSndmTkZ0bGFuV1F3WHRsdnYzVWMyTW5rQ3hyZkwrRk5WL1BN?=
 =?utf-8?B?MnpRRE1WZExxK2hBay8zQXhKVjRVSUJGZGQwMUtuYXFpb0ZjdkRuODAyc0Rh?=
 =?utf-8?B?b1FBU05TcTBxOExsU1VieXBUKyt1cFE4UzRsRGVBTXlOZjVmdDBhcU00bm15?=
 =?utf-8?B?NlVJb0VUSjNnS1hLNGVWaEZrV1N5ZWZqc0g4MHpCNVNMUWhJcjdHbi91S1dQ?=
 =?utf-8?B?TGtYQXJsMlNYaVprRTFTQmpmZDJUNVJsZDVZWGZLdiszSmdQOGJUVWZGd1hT?=
 =?utf-8?B?aWw0L0xMa0cxRFlaYjVtc1JkS1lJM0JGTUIwcG5sNEpuUTkzVDhCNGdUUUNO?=
 =?utf-8?B?aFBvM3RQMlNZTjdHZ29hYS9BWnY1aEdXTjhJc0RPcnFpbUJKc2JvZ3NFK3Zz?=
 =?utf-8?B?UitSYi82VTJrZnlLelY5Nkl3Q0xZeTVTT3c2NkZmRk1RMG9ZdkhPZU50S1RV?=
 =?utf-8?B?VS9tcmxSNmw1c3pacWR4N3psSURWSDNDNlFJNDRoZzkxUks1R2ttNlZ4WVlq?=
 =?utf-8?B?OW9mcTMwS0tzb3hGQUhLYVlqSkVHbDlCN3czSGhhbjBaT0xBRU5UcEZMNGhs?=
 =?utf-8?B?VGY4Rm1GTEhuU3VXd1BzUVI5cWdtWXhaSlZtaWZtUG02L05Xb1V2RU4yMXRv?=
 =?utf-8?B?ZXg4ckpFZEM2K2c4VlhGdEV1NE1LMzBhRWZORU9WQnFyR3YxbzRwcCtZMm8x?=
 =?utf-8?B?Qkx4VnNtaVorcGNIOE1hZU9jTjBlM3RYRnZwRm4wS0ZCTnA4MEM5THZHeWc3?=
 =?utf-8?B?ODlqVGwxRVhQN05mWHlOb2xraFk4aU03MEx1eGZpUG1lUTMxZFBPTVpST1JD?=
 =?utf-8?B?T3Y1WjRkRWRIazFxRW05V0dYV08wY0JFeTVIaFJFbVRwbHNwVVZJcmp1Nlo5?=
 =?utf-8?B?MmI1K2RMallndXA4YmFPTytmbkd2cGowRTFNRUhhbTMrMVJQL1F6bG5LZ0Fp?=
 =?utf-8?B?V3hjVW8yaTRsZENITEdoNE9VcWRia3dUSS9LK1V2NkNyK2I1QmxSYWFIWDla?=
 =?utf-8?B?UXJlL2FqVUl2QzAwajViM2lpWCtKRHJSWFN4OTd3RGo2UE5YVjdtTlNta2RL?=
 =?utf-8?B?V1Ewb2VGL2JnQm11dU9Gb2RDMzc1eEswYjQ3TmhvSnN5cXUvWlJZUW5vU3dN?=
 =?utf-8?B?UEFEaVNkWVBwcVJuek1uK0d2VEZLek91SzEvcjFYLzZZYnUxK1pDcWt6RFhh?=
 =?utf-8?B?bk5LT1p2UHp3SDJQMFB1dEtQOWlKcmFDU0pDSTBmY1RMV2o4Ny8rL0U1aHZM?=
 =?utf-8?B?aXE4NjRHOEIvVlNra0lBdHVsMlBQc2k2Q21BckVjbjBnODkyTVJORDNWYWFo?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f771b076-5dfd-4ddb-537d-08dd4176f52e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 21:42:13.3538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XINUn9Q5CoLVjr3c2gk+bL0vLvJiUjfOGWFJb8IdD2ilrWQAOhF7MlntEl6NjwgaLkXMZY+xjb7Kq9sNTFFGv+jTyyVsZS37gHnQ+rr5/xY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
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


On 1/27/2025 3:56 PM, Lucas De Marchi wrote:
> On Mon, Jan 27, 2025 at 02:33:01PM -0800, Vinay Belgaumkar wrote:
>> Simple tests for validating the PMU implementation for GT C6
>> residencies.
>>
>> v2: Rename rc6-residency-* to gt-c6-residency and remove freq tests.
>> v3: Keep just gt-c6 tests, add frequency tests later.
>> v4: Review comments (Riana)
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Riana Tauro <riana.tauro@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>> tests/intel/xe_pmu.c | 176 +++++++++++++++++++++++++++++++++++++++++++
>> tests/meson.build    |   1 +
>> 2 files changed, 177 insertions(+)
>> create mode 100644 tests/intel/xe_pmu.c
>>
>> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
>> new file mode 100644
>> index 000000000..61a7a7e38
>> --- /dev/null
>> +++ b/tests/intel/xe_pmu.c
>> @@ -0,0 +1,176 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2025 Intel Corporation
>> + */
>> +
>> +/**
>> + * TEST: Test Xe PMU functionality
>> + * Category: Perf Monitoring Unit
>> + * Mega feature: Perf Monitoring Unit
>> + * Sub-category: Power Management
>
> this is not accurate... power management is 1 of the possible counters
> we can expose from kernel to userspace.
Ok, maybe Telemetry?
>
>> + * Functionality: Power/Perf
>> + * Test category: Functional tests
>> + */
>> +
>> +#include <fcntl.h>
>> +#include <limits.h>
>> +#include <time.h>
>> +#include <errno.h>
>> +#include <dirent.h>
>> +#include <string.h>
>> +#include <sys/time.h>
>> +
>> +#include "igt.h"
>> +#include "igt_device.h"
>> +#include "igt_power.h"
>> +#include "igt_sysfs.h"
>> +#include "igt_perf.h"
>> +
>> +#include "lib/igt_syncobj.h"
>> +#include "xe/xe_ioctl.h"
>> +#include "xe/xe_gt.h"
>> +#include "xe/xe_query.h"
>> +#include "xe/xe_spin.h"
>> +#include "xe/xe_util.h"
>> +
>> +#define SLEEP_DURATION 2 /* in seconds */
>> +const double tolerance = 0.1;
>> +const unsigned long batch_duration_ns = 500e6;
>
> unused
ok. Remnant from the freq tests.
>
>> +const char *no_debug_data = "\0";
>
> no idea what this is for
It is used in the assert macro below or an error message when assert 
happens.
>
>> +
>> +#define __assert_within_epsilon(x, ref, tol_up, tol_down, debug_data) \
>> +    igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
>> +             (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
>> +             "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance 
>> of %f)\n%s\n",\
>> +             #x, #ref, (double)(x), \
>> +             (tol_up) * 100.0, (tol_down) * 100.0, \
>> +             (double)(ref), debug_data)
>> +
>> +#define assert_within_epsilon(x, ref, tolerance) \
>> +    __assert_within_epsilon(x, ref, tolerance, tolerance, 
>> no_debug_data)
>
> git grep __assert_within_epsilon
>
> we already have too much of these copy and paste. Please, don't add
> more.
ok, will move to a lib.
>
>> +
>> +static int open_pmu(int xe, uint64_t config)
>> +{
>> +    int fd;
>> +
>> +    fd = perf_xe_open(xe, config);
>> +    igt_skip_on(fd < 0 && errno == ENODEV);
>> +    igt_assert(fd >= 0);
>> +
>> +    return fd;
>> +}
>> +
>> +static uint64_t __pmu_read_single(int fd, uint64_t *ts)
>> +{
>> +    uint64_t data[2];
>> +
>> +    igt_assert_eq(read(fd, data, sizeof(data)), sizeof(data));
>> +    if (ts)
>> +        *ts = data[1];
>> +
>> +    return data[0];
>> +}
>> +
>> +/**
>> + * SUBTEST: gt-c6
>> + * Description: Basic residency test to validate idle residency
>> + *        measured over a time interval is within the tolerance
>
> why is this comment on top of measured_usleep()?
will move.
>
>> + */
>> +static unsigned int measured_usleep(unsigned int usec)
>> +{
>> +    struct timespec ts = { };
>> +    unsigned int slept;
>> +
>> +    slept = igt_nsec_elapsed(&ts);
>
> this function is another copy and paste that is wrong everywhere.
ok.
>
>
>> +    igt_assert(slept == 0);
>> +    do {
>> +        usleep(usec - slept);
>
> slept is in nanosec, while usec is in usec.
we are dividing by 1000, so slept is usec as well (except the first 
time, but that is asserted to be 0 anyways).
>
>> +        slept = igt_nsec_elapsed(&ts) / 1000;
>> +    } while (slept < usec);
>> +
>> +    return igt_nsec_elapsed(&ts) / 1000;
>
> we have macros to convert usec/msec/nsec
Yup, I will add a separate patch for moving this to a lib.
>
>> +}
>> +
>> +static unsigned long read_idle_residency(int fd, int gt)
>> +{
>> +    unsigned long residency = 0;
>> +    int gt_fd;
>> +
>> +    gt_fd = xe_sysfs_gt_open(fd, gt);
>> +    igt_assert(gt_fd >= 0);
>> +    igt_assert(igt_sysfs_scanf(gt_fd, "gtidle/idle_residency_ms", 
>> "%lu", &residency) == 1);
>> +    close(gt_fd);
>> +
>> +    return residency;
>> +}
>> +
>> +static u64 get_event_config(int xe, unsigned int gt, char *event)
>> +{
>> +    int ret;
>> +    char xe_device[100];
>> +    u64 pmu_config;
>> +    u32 start, end;
>> +
>> +    xe_perf_device(xe, xe_device, sizeof(xe_device));
>> +    ret = perf_event_config(xe_device, event, &pmu_config);
>> +    igt_assert(ret >= 0);
>> +    ret = perf_event_format(xe_device, "gt", &start, &end);
>> +    igt_assert(ret >= 0);
>> +    pmu_config |= (u64) gt << start;
>> +
>> +    return pmu_config;
>> +}
>> +
>> +static void test_gt_c6(int xe, unsigned int gt)
>> +{
>> +    int pmu_fd;
>> +    u64 pmu_config;
>> +    char event[100];
>> +    uint64_t ts[2];
>> +    unsigned long slept, start, end;
>> +    uint64_t val;
>> +
>> +    /* Get the PMU config for the gt-c6 event */
>> +    sprintf(event, "gt-c6-residency");
>> +    pmu_config = get_event_config(xe, gt, event);
>> +
>> +    pmu_fd = open_pmu(xe, pmu_config);
>> +
>> +    igt_require_f(igt_wait(xe_gt_is_in_c6(xe, gt), 1000, 10), "GT %d 
>> should be in C6\n", gt);
>> +
>> +    /* While idle check full RC6. */
>> +    start = read_idle_residency(xe, gt);
>> +    val = __pmu_read_single(pmu_fd, &ts[0]);
>> +    slept = measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
>> +    end = read_idle_residency(xe, gt);
>> +    val = __pmu_read_single(pmu_fd, &ts[1]) - val;
>
> I actually expected 2 subtests:
>
> 1) gt_c6_idle
>
>     we should be in rc6 for the entire time when nothing is running
>
> 2) gt_c6_full_load
>
>     we should not be in rc6 when something is keeping the engine
>     busy
>
> For (2), we can start a work load with xe_cork
I can add a busy test later on, since I will be adding a workload 
related freq subtest after this.
>
>
>> +
>> +    igt_debug("gt%u: slept=%lu, perf=%"PRIu64"\n",
>> +          gt, slept,  val);
>> +
>> +    igt_debug("Start res: %lu, end_res: %lu", start, end);
>
> is this reading the value from sysfs to aid debugging?
yes.
>
>
> I tested this with the kernel implementation, before merging it, and it
> worked. I don't mind if this is merged and cleaned on top. I will leave
> it for you and Riana to decide.

Sent another version with most of the above comments addressed.

Thanks,

Vinay.

>
> thanks
> Lucas De Marchi
>
>> +
>> +    assert_within_epsilon(val,
>> +                  (ts[1] - ts[0])/USEC_PER_SEC,
>> +                  tolerance);
>> +    close(pmu_fd);
>> +}
>> +
>> +igt_main
>> +{
>> +    int fd, gt;
>> +
>> +    igt_fixture {
>> +        fd = drm_open_driver(DRIVER_XE);
>> +        igt_require(!IS_PONTEVECCHIO(xe_dev_id(fd)));
>> +    }
>> +
>> +    igt_describe("Validate PMU gt-c6 residency counters");
>> +    igt_subtest("gt-c6")
>> +        xe_for_each_gt(fd, gt)
>> +            test_gt_c6(fd, gt);
>> +
>> +    igt_fixture {
>> +        close(fd);
>> +    }
>> +}
>> diff --git a/tests/meson.build b/tests/meson.build
>> index 33dffad31..d20f50766 100644
>> --- a/tests/meson.build
>> +++ b/tests/meson.build
>> @@ -309,6 +309,7 @@ intel_xe_progs = [
>>     'xe_pat',
>>     'xe_peer2peer',
>>     'xe_pm',
>> +    'xe_pmu',
>>     'xe_pm_residency',
>>     'xe_prime_self_import',
>>     'xe_query',
>> -- 
>> 2.38.1
>>
