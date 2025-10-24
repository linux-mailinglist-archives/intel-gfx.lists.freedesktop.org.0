Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A755C06606
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 14:59:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A06CA10E1F0;
	Fri, 24 Oct 2025 12:59:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AC8X5coG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DDE110E1F0;
 Fri, 24 Oct 2025 12:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761310739; x=1792846739;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=PaYspPNIktkvFsQDhOuaoj85Q1B8Cz56m21ZMNnFuac=;
 b=AC8X5coG9OrcYfPWQvdnil9KGnVHs1dlMqIqnTxzgO6v5KudRAzKlZ+S
 SJ1wJPTWtT/fV2aFUI+RYbCi0M/d6kriVN5GdnYCnLjvoqaE5irJYpWya
 /3ABNyuZ9a8RACkTIMijc06jNwX9aY13GDp7LH9osvW1PD+4AmS/s23et
 DI47Fqe9SN+EuNf27QfaUE8y+8Dpf9DPOSKh881aMp6IG7mh2fS9k9b/i
 yAJfHZ0j2NuqvF2QZYywkRnQOJcgcgFN4Ifq9VYgC3xwUxURrsg0AOwc7
 k81Rn13mcZ59uTYmXXJpW3yJZlyds1zFRGeNpEZUQbsX/JoUANVdOTucq g==;
X-CSE-ConnectionGUID: gBabo+1uRv6SjLohtMvNtg==
X-CSE-MsgGUID: KdEylEXmQA21K6pabIZ7hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63528490"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63528490"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:58:59 -0700
X-CSE-ConnectionGUID: NVkIV7zMT66fsmfWn9iugg==
X-CSE-MsgGUID: 91YAV6s2Q1GzNPi13uEljw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="208069934"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:58:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 05:58:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 05:58:58 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.43) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 05:58:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FUDJk6f96E+pFxLFzD+k5PU2o54oGHjoOSG/CDSHgYr/7PUauzVENEehxxXBOT18weMlZh6rV35pJOoYrm/6+Pi94N3YcfxILODVSMkIDMOC22UWKkf60GSjwSOi9hXHl/owCJgw0PhCJUbLgcJutL9sdNHS89cMgMjEAZhZP4jQhljJtryInNX+VM+NDerKlF9rT7nMcOBi7IdaOj91SAbGs4iLpCt6PPa+mRaSkYxj8h+RNxYMsji5SxQk042MvRZN3syR6HdQ6zM85IKlhGMyUgJG017QWmCpTNpDetsGm/E273qLni0vkeEIbB7weyHGsBH22GPMh65co1t4rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u9cdmrEFGdoqwMKiXWUeeHpQYqUNAGlAUwYdogJF/Ss=;
 b=Vazn0s6JhfdmpXhqiyOXZC+Bezfl+2flQxHbhUChM4W1jK2S2kg7OPTtFzrQKigFOrYwSg0H74kci2FY1SQoTVS/32gEnX3kHnKz2sJvtaSPdYrXlM9oNz5e8ZRIHRawug0itJ6t/3o3vqc4z3SmcluO4ur2N31j3hQ6szODkIeFGesvxnd1C2MDIFcUz1OsiQWTIg4UL3v4TV53Eoiywb6ewz2z7XhtprxLrIugHAjqF/zRuHa3U9l15Oe+Px3S6V3mqxKkJOiMdQftj5v0uU6+oPk2rpRtcfe9aBZpFrjTAQ2L4eaSLsoBYYYqdbJUdiyQKpuRYV7wuhlqLNHcig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH0PR11MB5252.namprd11.prod.outlook.com (2603:10b6:610:e3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 12:58:56 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 12:58:56 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251023073525.842004-1-jani.nikula@intel.com>
References: <20251023073525.842004-1-jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/rom: convert intel_rom interfaces to struct
 drm_device
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 24 Oct 2025 09:58:52 -0300
Message-ID: <176131073206.1676.1576691913601473534@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY3PR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH0PR11MB5252:EE_
X-MS-Office365-Filtering-Correlation-Id: fb8c2fc5-eb09-47b9-ccce-08de12fd174c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a1BNRWN2T0xFK2NpOFhBTXdjNndpM2tkRXNTMzVWVUFUU1FYdk1sWmtWWFdK?=
 =?utf-8?B?Y3VNUW1xMnJSTE4zN2RXMFE0ZzN5MFhQM2p3SlU4MTBrTFdidjJxeUtlaDd1?=
 =?utf-8?B?ZWZndnZMMDBPSGdQZjJBSXhQMUFobHpvZnFHMER3N2pzblRaVmY3OXJpUlhW?=
 =?utf-8?B?VUhBK3krK0R6QzN3T0dJRGhhajRzUEtMUVNOVkZhNCtjY0R3MXFHSXJnZ2NJ?=
 =?utf-8?B?VEIwZXBieWx1bW1Fak4xTi8yRmNVSzdyS04vZGJsSGZLOTFobEdjQWROSkN4?=
 =?utf-8?B?SnowRjhHRU9Qa3RJSDNycDVCMUJOQTBkYlQvbG14TmxlZXdpcXBrMnBGVzJs?=
 =?utf-8?B?RFNOck5WK0F0ZERqT0lXV243aXNsVTM2K2tyeXhoR1N5T0ZYbmtYNTJaOTNy?=
 =?utf-8?B?NVB5SGFpa1hZMFdzMjRGSy81S2pGbCtFczdoa2JYaXpLc0FDdUE5OTQvU3hD?=
 =?utf-8?B?SWpGWXJ0OVhtcS9lcVlldG5UaWRnZTJlU0RuK1ZyTytoSzZoT2lEemx1UXlP?=
 =?utf-8?B?VWNCMTNNMTdmWXowbE8xQldkakROSjB2a0lWOXhwVkZRZlA2NldSajlrWFNr?=
 =?utf-8?B?Q1JlcGcwNEFEd3FiSndWUHBic0lPZk42ZkE2eWVldmM4Uk9iaWJ6d1JBRWph?=
 =?utf-8?B?WHNvVEtqUGt1VU5ZVjRDQ0x1ZURIZTluK1M0SlhkQlphclpnenQvajJXR0sy?=
 =?utf-8?B?WTNOalZ1RVU1YW5HR0RmNmU0QmVkQ2pOcE9OUkxBZVRmdHdTaWNCTXM3enVD?=
 =?utf-8?B?T1B4bllPRlEwOW80U2hrT0doTUFxOXozUVh1dUZVL0hMNDNrUWpvZFdnd21B?=
 =?utf-8?B?VW5Rd2NCZXhHZzdZUmtld2VsSThtS0h0MS8vUFF6UWVPOUk2QllsaVZQeXNE?=
 =?utf-8?B?Q2F2S0R6NVR1cWhPaDcwU3RtVUNYM0ZiM25KNW1BUXh4SS9mUzZ2ZTF2UGFv?=
 =?utf-8?B?UEpsNFRlMHlIQzRTanhmazJGVldrU3k2djFKUlNIcklhMmpQNFNzNkszQUw4?=
 =?utf-8?B?UnBJdXRzTzBzM1ZrdWoyQTJuelJwL0xTOGU4Z2YxaGZaTWRoa1B0OEtoUFNv?=
 =?utf-8?B?cTVxMUYrWEdKaGlrUFc3VW5pT1lGMmlIRnpqbHFHZHdKajh0SzBJUlZ0RVlM?=
 =?utf-8?B?dERqektSeXBtTmRxZEpHZm1JKy94bHhmQmw1Lzd5Mm1ncG5GNGNUZXBzRHFH?=
 =?utf-8?B?RURucWNUc0VtOWRRVGdEaEZHQTlNRWtVMFJ0YWErZlBqNnUxdVA3OUs5clla?=
 =?utf-8?B?QktKWXhPWHdqVmNGTllSUllBbXlOSWNzWTUydy9taVBEa1I5ZXMyUE5uK25Y?=
 =?utf-8?B?aStrK0I5RTBMb01SeEpLYWFpQ05qR2wrQmFYSXdhVEcrb1FhWklTYzJWUUR1?=
 =?utf-8?B?dktId29qNkNsRHQ1MGtNbmkrSVJtdU1OM2UyRHg4dnhHTC93VUE0RXkxQU4r?=
 =?utf-8?B?Q0NVV1dSUVBSS1lGWVg0V3JkWHdTUGtVcWk3OGVyT2F2dFJpd3VQazQrMXE3?=
 =?utf-8?B?aFpGMlNJZys1cUdZNG5EUXZnNFc0TTFrVVZwWUFpTktvM2NwaWVWZGVzSndF?=
 =?utf-8?B?TTVHK09ZMk5EemUxSUQ3bTdGZHBIK0xkOW93MzZFcURrT1psOUNPeDR0VDhT?=
 =?utf-8?B?MVRIeGpocUlCb0pURENpZUdzUzVDYmNKcy8rdUFVb3hsclhRbnVnSlV6Wk8w?=
 =?utf-8?B?a1JEcEl5N1JIWitZTjNEUTBLZmxsUEdPUUdpNThTYlY2MWhXTlBVczQ4SHlI?=
 =?utf-8?B?bzJQSFNSbFdPYnU4Wk9KZXFzNkQ0NkpYcG5XdTV5TFR4VFR4R2RKM3RvV1BP?=
 =?utf-8?B?bjhtd1A5V0w0RTdmZUZ2RldjcERFWDNCRzZyL1Y0d3BOYzhQZ3B0em5NZVdp?=
 =?utf-8?B?Tkxjb2xpQXdYVTJuMUtRcmxuMHQxZ2xOcVlrRVhya3V2VjdELzBPek1iWXFW?=
 =?utf-8?Q?9cQwOMFWIhZRnzwUe2r27YmlKqOKZk9K?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3J5ck91SVhNSEsrZWpod3dvNzcySy9mMndlRWFRUkFBODk4eUo1U09sTUdt?=
 =?utf-8?B?d0c4L25RdkVCdHBiOUxka2w1eHdXcmg3UmpPY0hsQS9ldTVGQ0gvUlRJdExX?=
 =?utf-8?B?dzJrMTYrSTNIem9nR3p3SEh6b2xGcDVQdlcvc1d5ZHFNNUV1OTBPZDJKOVR4?=
 =?utf-8?B?bURxbEt3MUEvQ1BrUTFLWDVOZEJVRHAvUlk5OHAzU1lCVVlNRm5IRU1xZG5L?=
 =?utf-8?B?VHpieEM5UFM1eUdUVXJlZVBrOGh4N09ycUJqSkJhVWlpT1VyZVdDUEg5a2ZP?=
 =?utf-8?B?bGJ5NURSdzRSeFd5czFQY3JEMjNJY2poNVVieC9nZWZMdTdiS3NublErUlp0?=
 =?utf-8?B?UUZyS2VkWmU1anYxUVorMTg1R2VFQlpuMmtrYjRhVHhZdS9BTjBmV1RZZkFJ?=
 =?utf-8?B?ZnBCcndFWGg4QkNOdUFnMW1kU0haQVhJM05uWXg2djR4V0RBTmN6alZOSERu?=
 =?utf-8?B?WEk0TmtaNU1xQXFTNUxqRlZMWTVuRytyekJSeWJaL1cwbGZKK2Jzck5GN0V4?=
 =?utf-8?B?VnFWUkNoQzV5ZHczVWtCYndwYkhlUEU2UEhCS2dhSEdJaDByVXk0Um1zbHkw?=
 =?utf-8?B?Q2JmT3ZsNDJWU0ZHbktjRCs3OWdrdDJXeE55Q21INDdyc0xmZWdRZEZUdWFC?=
 =?utf-8?B?NXJJNDRrR2R1TE13Zm5YVnpvaTFIckhXeUNwaW12eGllcmQvTGFKSGVsZ1Rs?=
 =?utf-8?B?dzg3QnVzV2NmZi8yUGxUQUhxNGphWXhHQXdLVWlKQTlGVFRpU3BDMTI5TlBo?=
 =?utf-8?B?eGRhT2FMRVpBc2hkR3ZycTByUHdRSTZEQXN3dWl0eGt3cHB3WU16RStxV05a?=
 =?utf-8?B?L0FZVHM4RXJKNjZyaTB5Q1Flb0VBMEduajVPODdBZjJtRER5aGJGSXd2V3Fz?=
 =?utf-8?B?OHdsRlg5elJacFEzNDIxeGttcWRlYURiVVhJQSt0TXovbElmVHhKRWNVSEtW?=
 =?utf-8?B?YkFFaUNONTYyWGNhS3JTTmt1eDhHZXpUR2lUcHduQVlzdWgzM3FIZnh6VHZO?=
 =?utf-8?B?ODNmcnFZWEdRWlovb1p3L3JpY2U1MU5ZV1NLNENhZExLMmd0MHorYklYRWJt?=
 =?utf-8?B?ZHR5MjQ0M3ZwRmR4eTJEUktNRDBOeHJKQ3phSTQwVFBIbEN1clpqR1RFbFdo?=
 =?utf-8?B?dFl0SDFNTGgwRm9FSWluaXJHcThsbldlaEwvOHpESXBqTEtpWEdReWg1L0Ft?=
 =?utf-8?B?WkI3UXg3ckVUc0RCQ0hxT2NuQlJtekduay9HL1hoWFEwWmlaZ3kyb01XOE0r?=
 =?utf-8?B?NURCdUdzaHc4QWpqNE9IME5ERytKU0dyMVpqUXU0cEpLUkYvbFRBdTdEcy9G?=
 =?utf-8?B?NWo5QzRyY0drNlVaRDNCeURUQmxxMURFbWQyOCtzMysvTEdUS3hxVjF0cE1X?=
 =?utf-8?B?L0VwT2ZaN1pUdWF4WFBkVkV1N0JhS2RnOFZhR2xSY2RiYytEcEFJbHNqOXBO?=
 =?utf-8?B?WDFXVXRSMUVLNXl5bTVhbzE1M21tYUlJRkwrcFNHSTFwdDZDMVhUZnZXM3V4?=
 =?utf-8?B?OHBmZ2pmaG52L25hL1dZQ0swd0xFR0RkVm03dUJzb3RtYzZaV3BGKzhuamhR?=
 =?utf-8?B?VzFBa200aU5NOEQ0Rzlxb3dnQTVmaGQxZHl2eTYwdFRpRzdJQVRhQXliKzI5?=
 =?utf-8?B?SlIrQlkxa2IwZWhiT1FWMnRVSlpNSGhJSjVFQ21lS2VpdUlpOEdwL1hWbHJq?=
 =?utf-8?B?ZlVoK1FoRUhPNFdpVlJXaXQ2akZybjV3QXUwOGJBVEt5Vzk2YjR4L1U2WThs?=
 =?utf-8?B?eDVhUW45Umdoa1RNZElXS3d0d0x3UUY5SS9wbFA2NGpoVjdIZGdaWEZvYVkz?=
 =?utf-8?B?Qlgxd3dsODdvcENxYXdvUjgzTEhrRmxDYlpTd0lFK0dCMkJabWFaZUV0MjZy?=
 =?utf-8?B?bmdOMXZkRjUvNzlTcGxzRGNaOXFwaCtVNTFCeDU0eU9mY041dGVLWnRidVlV?=
 =?utf-8?B?b0V2TzEwakY4TmxEb1FQN21wbE9CV2wyeHJkbHNtdHQyQ3JNbW5DbEJJWlFG?=
 =?utf-8?B?NndFU1hMV0lTSzcxL1JDT3JtcFdCVklBcGo1QXVMN0hIa3VPL0N4c1FkbnlX?=
 =?utf-8?B?WkFmQ2U4R2o3YUQ4aUJuSnpkU2sxdU15WDRkNGdHcjVEajBsQWRsY0JpM08z?=
 =?utf-8?B?Yk1oTllDSDZxQlJhNnFiNWdKWjdJZnUwWlNIYkRrSE9nd0lGOVpyQWtyUXFm?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb8c2fc5-eb09-47b9-ccce-08de12fd174c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 12:58:56.1567 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X4JKQZCvNeJQ8+7AgMm9tEAklKGXQV3TqdvYOgZYqq/KFbJfdsMB7Ut3SP1QGSgXTgQ6ZKcYVZXOwPCS71B7IA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5252
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

Quoting Jani Nikula (2025-10-23 04:35:25-03:00)
>Reduce the display dependency on struct drm_i915_private and i915_drv.h
>by converting the rom interface to struct drm_device.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_bios.c | 7 +++----
> drivers/gpu/drm/i915/soc/intel_rom.c      | 7 ++++---
> drivers/gpu/drm/i915/soc/intel_rom.h      | 6 +++---
> 3 files changed, 10 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 3596dce84c28..246c6fb0f09a 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -32,10 +32,10 @@
> #include <drm/display/drm_dsc_helper.h>
> #include <drm/drm_edid.h>
> #include <drm/drm_fixed.h>
>+#include <drm/drm_print.h>
>=20
> #include "soc/intel_rom.h"
>=20
>-#include "i915_drv.h"
> #include "i915_utils.h"
> #include "intel_display.h"
> #include "intel_display_core.h"
>@@ -3144,7 +3144,6 @@ static struct vbt_header *oprom_get_vbt(struct intel=
_display *display,
> static const struct vbt_header *intel_bios_get_vbt(struct intel_display *=
display,
>                                                    size_t *sizep)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         const struct vbt_header *vbt =3D NULL;
>=20
>         vbt =3D firmware_get_vbt(display, sizep);
>@@ -3158,11 +3157,11 @@ static const struct vbt_header *intel_bios_get_vbt=
(struct intel_display *display
>          */
>         if (!vbt && display->platform.dgfx)
>                 with_intel_display_rpm(display)
>-                        vbt =3D oprom_get_vbt(display, intel_rom_spi(i915=
), sizep, "SPI flash");
>+                        vbt =3D oprom_get_vbt(display, intel_rom_spi(disp=
lay->drm), sizep, "SPI flash");
>=20
>         if (!vbt)
>                 with_intel_display_rpm(display)
>-                        vbt =3D oprom_get_vbt(display, intel_rom_pci(i915=
), sizep, "PCI ROM");
>+                        vbt =3D oprom_get_vbt(display, intel_rom_pci(disp=
lay->drm), sizep, "PCI ROM");
>=20
>         return vbt;
> }
>diff --git a/drivers/gpu/drm/i915/soc/intel_rom.c b/drivers/gpu/drm/i915/s=
oc/intel_rom.c
>index 243d98cab8c3..2f17dc856e7f 100644
>--- a/drivers/gpu/drm/i915/soc/intel_rom.c
>+++ b/drivers/gpu/drm/i915/soc/intel_rom.c
>@@ -39,8 +39,9 @@ static u16 spi_read16(struct intel_rom *rom, loff_t offs=
et)
>         return spi_read32(rom, offset) & 0xffff;
> }
>=20
>-struct intel_rom *intel_rom_spi(struct drm_i915_private *i915)
>+struct intel_rom *intel_rom_spi(struct drm_device *drm)
> {
>+        struct drm_i915_private *i915 =3D to_i915(drm);
>         struct intel_rom *rom;
>         u32 static_region;
>=20
>@@ -85,7 +86,7 @@ static void pci_free(struct intel_rom *rom)
>         pci_unmap_rom(rom->pdev, rom->oprom);
> }
>=20
>-struct intel_rom *intel_rom_pci(struct drm_i915_private *i915)
>+struct intel_rom *intel_rom_pci(struct drm_device *drm)
> {
>         struct intel_rom *rom;
>=20
>@@ -93,7 +94,7 @@ struct intel_rom *intel_rom_pci(struct drm_i915_private =
*i915)
>         if (!rom)
>                 return NULL;
>=20
>-        rom->pdev =3D to_pci_dev(i915->drm.dev);
>+        rom->pdev =3D to_pci_dev(drm->dev);
>=20
>         rom->oprom =3D pci_map_rom(rom->pdev, &rom->size);
>         if (!rom->oprom) {
>diff --git a/drivers/gpu/drm/i915/soc/intel_rom.h b/drivers/gpu/drm/i915/s=
oc/intel_rom.h
>index fb2979c8ef7f..4e59a375787e 100644
>--- a/drivers/gpu/drm/i915/soc/intel_rom.h
>+++ b/drivers/gpu/drm/i915/soc/intel_rom.h
>@@ -8,11 +8,11 @@
>=20
> #include <linux/types.h>
>=20
>-struct drm_i915_private;
>+struct drm_device;
> struct intel_rom;
>=20
>-struct intel_rom *intel_rom_spi(struct drm_i915_private *i915);
>-struct intel_rom *intel_rom_pci(struct drm_i915_private *i915);
>+struct intel_rom *intel_rom_spi(struct drm_device *drm);
>+struct intel_rom *intel_rom_pci(struct drm_device *drm);
>=20
> u32 intel_rom_read32(struct intel_rom *rom, loff_t offset);
> u16 intel_rom_read16(struct intel_rom *rom, loff_t offset);
>--=20
>2.47.3
>
