Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD3FA23757
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 23:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062A210E951;
	Thu, 30 Jan 2025 22:43:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MmaVYdxT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75D2289023;
 Thu, 30 Jan 2025 22:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738276980; x=1769812980;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yyV+MGtqbx884FDJd6V7XzTul0sUD3PLN4GledRwwyQ=;
 b=MmaVYdxTphEELsz06EFuBMjxAFvGLduWc5vFEY+IAfSPS1l196YGtGzO
 jC+xuozBkObEzechrndwcsWJeCXhN6E7HnKmV8P9o0me54DTOygcB4EbI
 IzBbSvXawN7eN0Rv0XFQMLOB/DdZNL9uS3n96+0TK/lPdafo5aT9nj6XW
 ibNTRfDdmNk3uezWj6NQWbI8I65oxp298kMDjiY46WcPpNgd8yFfH/TlW
 xNUss0oXm36Kb5Sres1alp80pdBWD9KcMBdzpfPJUjcBX+1mto6DngeCz
 pwjXRK/VzgYhy7reP/7RQsn6UHrKRqb8ESJrC8vMhk2CbBh+3eZpk8q3S g==;
X-CSE-ConnectionGUID: 4DAkUq0YS8yRrBPDHvvTNA==
X-CSE-MsgGUID: cX5U1w6RRlaxnc8bno1scg==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38550014"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="38550014"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 14:43:00 -0800
X-CSE-ConnectionGUID: jnn4TPvSSKms71dFJsHaUA==
X-CSE-MsgGUID: 2fDR1dmdRFqKyj3iby8+VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110348585"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 14:43:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 14:42:59 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 14:42:59 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 14:42:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QRV8RG1hNE7/FAmILDZmb4efDE8LSr36ntz2mqe4UnFiqkbR/Ptgxjllk9Qe8q3ETvlFP0ez1MclwiAbCtjjEt6FRgzI3IHsY4+8uI8rWVT4iXNlMUkK+ANKByNEH2hFCWe+I4kKL+r5JqyqMi5AXHzCVbB8aBwh+TS+wT3SwSULWNoOZjcudWRWeceZ8svcKfc5pl9dR5TdEOC1RvaOw6a7L/9yxe5YmJChR5U0mIA+sQOyVSbUZt8jzABsB5WDBsvJnc/APX5VRcC8Zgc+svcIUT+hmkYCIyOdfkvZqpaT2pW+4rWlmos2O1wSKYWci2nqDtD+6cIQeA2eYVsOrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MH/7c4fqTzu8EkOTalCL+2OCScZ72GtfbdOik+6ONHA=;
 b=jgB8bOjwdPhbyLCYFGDI0ho4hdwTNSbxUKK7LsWW8UidtVoHSrzTJEl5bV/378jqso4eNZfG8BsYPuNYPl/QFVT6UhSdLix4IDkBEEDZkAgihwnCiBYx9C3MWJlnZLNa8mWttvqtRKHQlbYjUF8w5YfXEWIqUY39s9CDMO5G+ojGrpX4loWUTn0QMXGMmmgdANApEZKUZWHIen6ckppJz3t5L1bInmKcdGKALfkrRpzus7ohoFdC336p4fYtgc3SA7pfoAC4Au48uL2GxCnwAjqCr0QUpi6gffy3HewLi/YJ7TGHla/DVZF8uecOMRDaiqkInvf4MHELzX8lIHDX9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.20; Thu, 30 Jan
 2025 22:42:57 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%4]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 22:42:57 +0000
Message-ID: <102ee623-a8e2-4dc6-9cab-4fe40f2d4f7b@intel.com>
Date: Thu, 30 Jan 2025 14:42:56 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v7 3/3] tests/xe/pmu: Add pmu tests for gt-c6
To: <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Riana Tauro
 <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250130213028.3852086-1-vinay.belgaumkar@intel.com>
 <20250130213028.3852086-4-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20250130213028.3852086-4-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR13CA0011.namprd13.prod.outlook.com
 (2603:10b6:a03:180::24) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|CH3PR11MB8093:EE_
X-MS-Office365-Filtering-Correlation-Id: 416aefa3-e005-4dde-9469-08dd417f7150
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dWJOcDd4d3dFUjRjU1lUTFJPUHA0TWZBcFliQ1RiS2EyemthcWhlNXJrcGtZ?=
 =?utf-8?B?dnRmRS9vN00zSGRFeFpKeG9aNjk2aTIvUkpmSVRITmMzWVFmNkZTUEFmT040?=
 =?utf-8?B?MGN3cU1FQnV2cnBMOGlIQlBZL1NjTks1amQ1bE02RW9FNFFhbEQ5eG9XUUE1?=
 =?utf-8?B?WTMzTkhjME51REVBeDc3WXZad2xqSHNEM3Jid21PbktuYXRxUEluNzloNnhB?=
 =?utf-8?B?UlNpZVhJSTNSeHd1QzVkWFVnSWdiaWFrcmltakpwSUpIY2RhdVFQNGYyNklJ?=
 =?utf-8?B?TTdxTjhZOUlYUXdiblJBdHJWUGxmTENaYkYwOUtlUmI1MlVLY201RTRBbUFu?=
 =?utf-8?B?UkRnUHZkUERUeUFEckZaYklSSy9hZStmWFNHSkNpMFRmcGZzcDhHVGxYUFVK?=
 =?utf-8?B?MzI5RFZVRC82RmlQYkpKRVRVZGpIakc5U1JHSG8zZk52R2syUUloenBmSlUr?=
 =?utf-8?B?ZmZWdmQ3MEFxeDEvOXpTUEpabW1VTzdhK2lkNlg5R05uS1pPVzZja0RNSHEx?=
 =?utf-8?B?YUJBQmVuNlJUNnp2dzRwU0ZJNXBXNEFaMFdyWFVmWUNOcm5LWTdncmlLMUZv?=
 =?utf-8?B?UXRHN1ZnVnhZNVlURVRudTVJY254S1FIV0pXYjdqTWtMRDBEK214TUlSZVJC?=
 =?utf-8?B?VUpjdDIyODBWUmRtcGRaS0JOTUhXeFU0NDRweU00R0wzVEgxT0czbzVodWdw?=
 =?utf-8?B?bHFxZHRFMjUxSDJGL1E3cnovd1psSitqWnkyYnk0NThqREFTVElUeGpzUU9p?=
 =?utf-8?B?bkhsQWxBcUdwaHhyUEpma0VPTW5sdGZCQ3hGMk5kYlpMcVJuWVprUlg5MHBQ?=
 =?utf-8?B?VEd3NlhkeFBjMHpCT1c5RzMwSlhFc05qekh0OXg5dXcrNEY0cHlsQXkxOWli?=
 =?utf-8?B?UVpKOFc4eHpVN0xXM1E3dlNmUlZyVWcvZGl1Y0RCbGJTcHpVYXNpY04yYjNz?=
 =?utf-8?B?VTNoRCttUlFXTUZGMFlSSjczQUhHMlBTU1kzVkc2YW94aTg2Z3gyQ2tEMnRl?=
 =?utf-8?B?U1pTNWtvU25WQVZoQytDakhoM3F2cVpCQ3NQcVJvdjIxSzJ1cFp5ZWhzYXEw?=
 =?utf-8?B?cVNXd05zTFlvYkMxQ2ZCMDNpOW11RlMvM0lPdEg5R1pNLzVnMU93OEF2VVph?=
 =?utf-8?B?RHJoVXdOdUdlT2N0UFNjT0Y3OFN1bHJoK0V0L0RFQllNcGVMc3VnZmZLbGxV?=
 =?utf-8?B?Z21Mc09NOTlEakQ4NnVqOGZ3T2xWUWNWNUVSeFg4RDVTOVdMS01RTTNkeUU5?=
 =?utf-8?B?UkNmdkZTeStKVVp0aGZtbHg3R1MxUURnL0V4QkRFeUFBL1ZyQ2tIbXpRdWxx?=
 =?utf-8?B?M04zT0taSXRLSzNZdXBRbXRUL2RJOGhlMlExUXVWa1VxNUlUYlhKY3k2eXhL?=
 =?utf-8?B?YVVCWHAwZXlDSGpSczlxSG1IcHdYUXEwd1EzckFtaTFSRWxwRnFINHU0eTdy?=
 =?utf-8?B?TEZWZGQzLzYxRmkzUktPRWNhU29GR3VhbFhjY2xvTHhDWENSUURJV1U1VTBx?=
 =?utf-8?B?ZFBBbFJvUDZ4akM1Q3hLNnFCclU3ZUd6ZmJpTHNlYVYvMzlPUmpnRVIxanlY?=
 =?utf-8?B?UXhETWdvS3lzZ1YxcUQzQU9Jc0VTeVNhZXFwV0NXZWZVMnhEWGZVaDRtRFdC?=
 =?utf-8?B?ZDN1RU9YTk9NWTZZSWdBckx6TkZIN2trK3FBMi9RUXB6SHdTNmZ5aFNzNjZy?=
 =?utf-8?B?SzBxNFdvRnQzZ0VrVTk1blU1K2xtRndodW5xWWV6YnVaNzU1M0FaZ2lrR2lW?=
 =?utf-8?B?MmtiVTFvc3pnRzFJcUxPTnJEME5lc3E2U25GbkowcFR1T2JpemZJdjMrQmdM?=
 =?utf-8?B?ZWlVMkV3cFRPN1drbDZyS0FmMUUvQ0QyZ292eUpjTGl4RncwUUp1bmlCOHhW?=
 =?utf-8?Q?d83XXSwr5QTcn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWt5a04wMTUza3dWVVY3dUQzS0RhMDRnQTk2cHhPYzVjZThVanUvaHBOdk1N?=
 =?utf-8?B?RWpVaXhlUUpENUZiNDlEcFE0N1hyYk1TSE5YRjZJZDh0bkFPNzJUUU00QjJJ?=
 =?utf-8?B?TE8reXY5dVIwZWdRNXdnOGtndGQyTG5GazRJcDhmRU1JVmtkMGJ2Z0lhc0NG?=
 =?utf-8?B?azQxc292ZkxqelUrKytPdU5sSWY4S1gzRXJHckU1TWFySlVneGJlc3hhbE1K?=
 =?utf-8?B?cVR1UWlHVzRpTXE3RG1SdHh4Q012ajFOTS9JTUlzQjJnK1ZnTHdhNDljUks5?=
 =?utf-8?B?SCtrbk8zbS9oTWpja24zclNSOGhoNzJOcXM4UFdnbG5UTHI5NDlDOGxVN1Ew?=
 =?utf-8?B?Znk4ZnFNZmtsNUpiSkNBSHVKTk9VR1l3UkZjejNFaitWeGlraWFyWGJLbk8r?=
 =?utf-8?B?aEtsaXMxOE5ta0JqdHpjQXpOQStyZ0F0WlZla0VCeDkxTW1HOGVCK2d4NDZH?=
 =?utf-8?B?NkFDWGt4dWVta0cweEtkUkVRTXFLSHhsc2NDdDRnQnVxVkQ1a1V4bzRQeVh4?=
 =?utf-8?B?Y3NoNWFxNFhkbzV2T3o2MDB3MGo2bGRGUUhERXZ1UDQ2RkFnb2RXdTZFQk0z?=
 =?utf-8?B?VElvVXF5T1RqR2ZnN2s2OWg1UTkvQy9VVE1RM0RleFVZRlN4eHhLTzRsUFc5?=
 =?utf-8?B?TW5kNlJ0SDhMSVVaN28xMG1CTFgvVGtvSFM5a3FPT2xZSm9vRkJOTkhhZEhu?=
 =?utf-8?B?VU9ISXpkSnhuSEpyK2RZcWlRV1pOc1hQOG16cExNV2hKQVdGZ0g2d0lheGpL?=
 =?utf-8?B?QmF6S21EbVI1Y2dYZ25XNTFtMVBlV0xNbDZnSXdzNUVkZ09pQXd4VDM1TlV2?=
 =?utf-8?B?MVoyMldDelVPdWZFOFhVenNKNDlUUk9NdFB6WWVzUHJib0RBcXVyanZ3R2d2?=
 =?utf-8?B?TGhKVFlrY3FyTENBWWFxNDltQ1RNUXR3YkY0dGpLVjRtL3BRSTFYc0RubjlG?=
 =?utf-8?B?Z0c2TzR5MWp6Umt2N1dHR1pIL2xDZFV4OUwxUHRibkVMWVM2ZGNUQ1IySHVr?=
 =?utf-8?B?MmhBRllRY1VoblJkQXJBSXBCRFFVa0xVd1hVM2ZrSTZSaWg0Viszd2hleGNo?=
 =?utf-8?B?RDRuaWVsQitSdXc2c2VaellPaDhqTGgxQlBMMk0zcWk5VnFNUUVDS2xzNmZN?=
 =?utf-8?B?amdqb2NYQjNlWE1HcTlDckJDVCtJNDRpYk1Rb1pkWTJFaWVFdzVjRzduYUlp?=
 =?utf-8?B?TktESW4zbWJoQURONVV4SzNGWDhaQU5kQXBYWUFWWFoyNGVldGxYUDFYdys1?=
 =?utf-8?B?aFNGQmJWbkdpQm9UcTVlWjVmaUZ5N3p1SVNPcTBGcE1pdUhDMzJ4R20wSm5M?=
 =?utf-8?B?anFranFxWmRtUnhFMkZaM3RmU0hXeEZLUUpDc1YyNW1PVzhrdTFUZzMyWFNF?=
 =?utf-8?B?VU9WTnhLVGF1LzZrUngxYWhiME91RjlJZ21xK2xTSWlmak5wOXlZRkJieTJ6?=
 =?utf-8?B?UXdmOUMrRURFdmhIR3phaTdiU2VEWk9VNGpSYWFlaVN1QWE1VGhVZVUwZnZK?=
 =?utf-8?B?b0g1OGh2NTd4NW5BNzg3Zk1zdys1NG5TOXE1R0hmdHlmM0FCUFNvWTdTdHRZ?=
 =?utf-8?B?Wkt3My9ERS9oTXJUK0dGSEJyVHN1Mmh4TWtxOXRvQWxkendVNlFLa3JaRDNz?=
 =?utf-8?B?QUpKcnFsRGhXUTFEVnh1NXNlMTRJWU9wZXhUeUFlRFhMOENqYTB6YlJ4eFBX?=
 =?utf-8?B?ZlRQSEdPUFZ4SlF6ZlF2UEl1YWh3TDZMQXNxOFNwVVF5RUVnTS9ET1RaRW1M?=
 =?utf-8?B?YzFkOGN6WXB4bTZGY2tYaUEvT2pKU1FsUmhHY25rOFlTck8vckVsbXM5OG44?=
 =?utf-8?B?ZThLck42WHVaSU80RFRTNmxUaTc4dEw2VWJQRzIxM29MWGlQUTAzWjJQWFI5?=
 =?utf-8?B?T3FqMS96aUF0MEZMOFM5am5oUklnd2pVWnRXM1JkRmJHb2lza1p3MnJTMUtK?=
 =?utf-8?B?SVNNazJ5WUFFUkwrWmNCbHIzSDVYekZYbnFyaVZaZHdLOE01Q0Y1RVRyOHpI?=
 =?utf-8?B?L3BjTWx2NHFWandjUFErbEZvVER0UWRQQjlKNmpsTGFwQVhzMWJySWxjdG14?=
 =?utf-8?B?NVlZNnJUbDQrU3ZLS1hKMVV5a1l4Q3Y2cE9NV0Rrb0swN0paZnRJTDR0anJP?=
 =?utf-8?B?L0hjcExxVzVBaVVrbVV4U0tpNG5LR0t6dVNaMWFMUUF4MDAwNnZab0R6d2o1?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 416aefa3-e005-4dde-9469-08dd417f7150
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 22:42:57.7199 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vxl4xjumV6ti4fWqDXdtUpaRjEuviL8TQHuAhaApX/DxAn7oNwgbzl8Ja0Aop1yu6z4h6MxVfjlxm5GGsvWARvC6ER8F1oSEydIQgqf2qLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8093
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


On 1/30/2025 1:30 PM, Vinay Belgaumkar wrote:
> Simple tests for validating the PMU implementation for GT C6
> residencies.
>
> v2: Rename rc6-residency-* to gt-c6-residency and remove freq tests.
> v3: Keep just gt-c6 tests, add frequency tests later.
> v4: Review comments (Riana)
> v5: Review comments (Lucas)
>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Riana Tauro <riana.tauro@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/intel/xe_pmu.c | 149 +++++++++++++++++++++++++++++++++++++++++++
>   tests/meson.build    |   1 +
>   2 files changed, 150 insertions(+)
>   create mode 100644 tests/intel/xe_pmu.c
>
> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
> new file mode 100644
> index 000000000..44589cb86
> --- /dev/null
> +++ b/tests/intel/xe_pmu.c
> @@ -0,0 +1,149 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +/**
> + * TEST: Test Xe PMU functionality
> + * Category: Perf Monitoring Unit
> + * Mega feature: Perf Monitoring Unit
> + * Sub-category: Telemetry
> + * Functionality: Power/Perf
> + * Test category: Functional tests
> + */
> +
> +#include <fcntl.h>
> +#include <limits.h>
> +#include <time.h>
> +#include <errno.h>
> +#include <dirent.h>
> +#include <string.h>
> +#include <sys/time.h>
> +
> +#include "igt.h"
> +#include "igt_device.h"
> +#include "igt_power.h"
> +#include "igt_sysfs.h"
> +#include "igt_perf.h"
> +
> +#include "lib/igt_syncobj.h"
> +#include "xe/xe_ioctl.h"
> +#include "xe/xe_gt.h"
> +#include "xe/xe_query.h"
> +#include "xe/xe_spin.h"
> +#include "xe/xe_util.h"
> +
> +#define SLEEP_DURATION 2 /* in seconds */
> +const double tolerance = 0.1;
> +const char *no_debug_data = "\0";

This one got missed. Will remove in the next version after reviews are 
complete.

Thanks,

Vinay.

> +
> +static int open_pmu(int xe, uint64_t config)
> +{
> +	int fd;
> +
> +	fd = perf_xe_open(xe, config);
> +	igt_skip_on(fd < 0 && errno == ENODEV);
> +	igt_assert(fd >= 0);
> +
> +	return fd;
> +}
> +
> +static uint64_t __pmu_read_single(int fd, uint64_t *ts)
> +{
> +	uint64_t data[2];
> +
> +	igt_assert_eq(read(fd, data, sizeof(data)), sizeof(data));
> +	if (ts)
> +		*ts = data[1];
> +
> +	return data[0];
> +}
> +
> +static unsigned long read_idle_residency(int fd, int gt)
> +{
> +	unsigned long residency = 0;
> +	int gt_fd;
> +
> +	gt_fd = xe_sysfs_gt_open(fd, gt);
> +	igt_assert(gt_fd >= 0);
> +	igt_assert(igt_sysfs_scanf(gt_fd, "gtidle/idle_residency_ms", "%lu", &residency) == 1);
> +	close(gt_fd);
> +
> +	return residency;
> +}
> +
> +static u64 get_event_config(int xe, unsigned int gt, char *event)
> +{
> +	int ret;
> +	char xe_device[100];
> +	u64 pmu_config;
> +	u32 start, end;
> +
> +	xe_perf_device(xe, xe_device, sizeof(xe_device));
> +	ret = perf_event_config(xe_device, event, &pmu_config);
> +	igt_assert(ret >= 0);
> +	ret = perf_event_format(xe_device, "gt", &start, &end);
> +	igt_assert(ret >= 0);
> +	pmu_config |= (u64) gt << start;
> +
> +	return pmu_config;
> +}
> +
> +/**
> + * SUBTEST: gt-c6-idle
> + * Description: Basic residency test to validate idle residency
> + *		measured over a time interval is within the tolerance
> + */
> +static void test_gt_c6_idle(int xe, unsigned int gt)
> +{
> +	int pmu_fd;
> +	u64 pmu_config;
> +	char event[100];
> +	uint64_t ts[2];
> +	unsigned long slept, start, end;
> +	uint64_t val;
> +
> +	/* Get the PMU config for the gt-c6 event */
> +	sprintf(event, "gt-c6-residency");
> +	pmu_config = get_event_config(xe, gt, event);
> +
> +	pmu_fd = open_pmu(xe, pmu_config);
> +
> +	igt_require_f(igt_wait(xe_gt_is_in_c6(xe, gt), 1000, 10), "GT %d should be in C6\n", gt);
> +
> +	/* While idle check full RC6. */
> +	start = read_idle_residency(xe, gt);
> +	val = __pmu_read_single(pmu_fd, &ts[0]);
> +	slept = igt_measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
> +	end = read_idle_residency(xe, gt);
> +	val = __pmu_read_single(pmu_fd, &ts[1]) - val;
> +
> +	igt_debug("gt%u: slept=%lu, perf=%"PRIu64"\n",
> +		  gt, slept,  val);
> +
> +	igt_debug("Start res: %lu, end_res: %lu", start, end);
> +
> +	assert_within_epsilon(val,
> +			      (ts[1] - ts[0])/USEC_PER_SEC,
> +			      tolerance);
> +	close(pmu_fd);
> +}
> +
> +igt_main
> +{
> +	int fd, gt;
> +
> +	igt_fixture {
> +		fd = drm_open_driver(DRIVER_XE);
> +		igt_require(!IS_PONTEVECCHIO(xe_dev_id(fd)));
> +	}
> +
> +	igt_describe("Validate PMU gt-c6 residency counters when idle");
> +	igt_subtest("gt-c6-idle")
> +		xe_for_each_gt(fd, gt)
> +			test_gt_c6_idle(fd, gt);
> +
> +	igt_fixture {
> +		close(fd);
> +	}
> +}
> diff --git a/tests/meson.build b/tests/meson.build
> index 33dffad31..d20f50766 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -309,6 +309,7 @@ intel_xe_progs = [
>   	'xe_pat',
>   	'xe_peer2peer',
>   	'xe_pm',
> +	'xe_pmu',
>   	'xe_pm_residency',
>   	'xe_prime_self_import',
>   	'xe_query',
