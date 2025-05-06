Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3ACAAC061
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 11:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F85710E640;
	Tue,  6 May 2025 09:51:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ct9mFr2g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B385610E63D;
 Tue,  6 May 2025 09:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746525118; x=1778061118;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k0MHpnnnPiONMiGag+uGFqNaoZgsH7io+wB8dUJ8eMk=;
 b=ct9mFr2gSDxP/cuhPeLWmpHwFtZ+5Oewlw/1KZougvqwyEzaNe045tX5
 UULoE39Jqmoa+84d2qowqdbKPYN9MxnO99xPFgJPCiQnRNSCOr7cdUwUc
 yiqm9msaGZnaM2mL9OooqpQrv2wIPD8fPZYy+suhp4I54+gu3bj1NKEso
 bl2mRWDig7T6fGefCYLm1YQVfc9ypbl+etlXM91w+kgMygCBPCVzlWzXT
 v6RplN35TbY67cFEKhwK9fqFStV1r1sVeHTduh3Z45lDijFbJqsx2Ei2K
 vqY+YFeyb0qlycROGOlsgx4vsFTHHYGVmJty+FqMuwbHEIHDEqsSN1vEF g==;
X-CSE-ConnectionGUID: jLxIK1nISvqMhJ53AGHAtg==
X-CSE-MsgGUID: ahPIQRmtTsCy2L8DT876RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="59537233"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59537233"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 02:51:57 -0700
X-CSE-ConnectionGUID: WTgM1R3gQs6aU7Mxp7edxQ==
X-CSE-MsgGUID: +/fiGmb4TU+UNtjA7/uakg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="166489695"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 02:51:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 02:51:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 02:51:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 02:51:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lJl0r6QNayvbxiO2bqIqFGE1eLYR7PHyMgT/XYF5bYvRxEGXWlX2+jYQct8Gep7euxzI0C3xwxK9jUEL8LKJrsqLa8sBPrOeFXDJIpo2lniNFmOe3/ArLhWKtxAhbTPHEaPETYQ4r9wxBLO/OBRESzSzeifVRxXeb16qyoiLdfM0DW/k0d+tyW009INzNDW/mAPhcy7cDDTtYnRA6EIoK5D035OGGD4YUFPlq31xJPa3SAwYY89HUVwx467c6OlzCg5s7RcOEZluyDmdA1dOSWwBM3exT853lION84LP+bDpH3NQXkxDO73S7TL0hT6EpVoZQV4JNIXfvQqpjlhSdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JBy4Z6HIXCdrwhDwi88Sl/iwXoVjVBjcPIGTMOK5TAw=;
 b=UEAZLYzs/xN0OS85uzqKD5zR22QTbjb6B9+tsGlhyFUO9TFUopTuNaMtFeGyurQBlXW8Hvf4M+RazWPHs6fWNM8uhas41OcHXxrYAYCEnyuDZyNLsxBWM8HMt3Ayi+CMvaZA05mqD8w7m0zsnxa0pYhSavn6yA6MyVO8zMS4toQBNYVxxaoXanw+oAikgxKGu21OsrulMHh5W9zUj2yQRTj1gH0OedtOIDWB7dWtLMV0D/aoE3yqgOyi6Uh3tNHS2KW+uLG2+o9mScpKHxYbOn0MwLkMjaGVXCxc7qnO57YO8/gdmgezoDqMQ2Ot6rsHiE6dUktHdIaYDzlNGehA3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5256.namprd11.prod.outlook.com (2603:10b6:208:30a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 09:51:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 09:51:21 +0000
Message-ID: <b15cc451-812a-49e9-812d-7bab2807f776@intel.com>
Date: Tue, 6 May 2025 15:21:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/12] drm/i915/dp_mst: Simplify handling the
 single-bpp case during state computation
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-3-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-3-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0013.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::26) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5256:EE_
X-MS-Office365-Filtering-Correlation-Id: ae3f593b-71ee-460f-f0d9-08dd8c838e75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDRXTkNpTWJ2RTN0T2lsQUl5c0JEdTFleVFLVWdUTk9oeGpMSjJhRFc2MVEw?=
 =?utf-8?B?cUEvMlc4M3JWNVloRDIweC9VeTBTYURzZzdIeG5abjhWQ2kwY3lqY25adUxm?=
 =?utf-8?B?Uk1oVXZYMHRwbHMxMjJlNEFvcXNsNC9qSTRtekxKdGdlNVFJOXVYNyt6WUZl?=
 =?utf-8?B?SFJKU0tzRDcyTkRBczB1YllwNzkxNEtOcnF1YzhJdmpXZkdvWHhqdXRGTGt0?=
 =?utf-8?B?bWtxZFpVUS9wMEppa2lsRE01cWttV013YUFUUmNkdVJ1QllXWkpaQTNhSjJQ?=
 =?utf-8?B?R29rS2dSTTRkSU56UzBBTHZOVkVXUC94cUFBV2J3WnNPRmxZU1l1c1ZMbzdJ?=
 =?utf-8?B?THgvYmdnak1ZTDVjK0pSemI5TWhJUC8vbi9XWmNKN3JmUHJKQTNCR2tDeTBm?=
 =?utf-8?B?M25McnFWRGE3MFNpLzIzbFJXNWNMZlZhdkRTby92enlpSHRQZ1RGL1Q3eTdv?=
 =?utf-8?B?Z3FsbUJhenN0eEJ1UHFVL2FidWFFZWhJWm5JY2QvRi8wOXo1Uk9iUTN5NEpr?=
 =?utf-8?B?bm5uWk5EZkN0aFR1K2U0bUtkeHE5Q2w0L2FBbjZBblErNGM2bHg1TGRWS1pK?=
 =?utf-8?B?bElJTkFXcGErYlZjL0VDL25MMThhaldGbWUycWVzeERQNk9sOW1vcndHVUt1?=
 =?utf-8?B?ZnU0b2RWT2wvRUhhS3VZQ0JvRmtUaUI3cFQ0dk85K3ZidnlaUmVZbEZsbEFF?=
 =?utf-8?B?VjczMFJSUlI4amxFeGxOWVJsNi9JNEJvUTFDOXN3Y3JXenR3VkUrQ0tYRWNB?=
 =?utf-8?B?aDd4aVNYd0lCYzNyQzhPZHZxZURFaEVZckpMajYreWFxVE9DaHpNVDJleTE0?=
 =?utf-8?B?dmpDZzJFWGovYytseDBnVVpyVmRqZERTUTVVRUJkdGhZUVNHK3QvK3dyZ0RY?=
 =?utf-8?B?Q0IyQ09mSTVoZnM1S0NiNWwzNkxVb0I1YmcrbHlSWXViT0VmNFlyZDhVVUhW?=
 =?utf-8?B?RFdQT3Vjd1oya1JSbzdFN2tOa3BlVFZybnlEaElaNXJxRjZLRWJoVU01Ulo4?=
 =?utf-8?B?Y3N5UkdLVmFwL1NuUldTNXBhOUxzTS9aOEJCNkZLWmVKelM0NGkxMTlmaUN2?=
 =?utf-8?B?cC84RENNdWduUVlWckxLUkFxVHM5bSs3ajBENWsva05WUmtvQzRsR0RuRmVR?=
 =?utf-8?B?Q0g3dkhYdDM2U2ovS2lQdVcwWW1SWlZMazZqMEo1UnR4cU40ekhWMHNuZit4?=
 =?utf-8?B?R1dJSm1ubW1BUFpFQWF5T2V2dDU2clhFckVPMHRyVXdUaUV0a1VZMzdqSEhE?=
 =?utf-8?B?SzN0Z3pXUXVhY28vajJwUFZ0K0l6NjU5NDFOSlpYaVFwVmFQSWxyaGxoUmRF?=
 =?utf-8?B?STQ4ZForYlVWanBXdFNPSlNuV3lWTVpFVGpiNlR3TlFRa3RFam5kY211VUxI?=
 =?utf-8?B?TWlNd24xQXlKeWY5eU03TlREc2lQS2M4YlRMcEZpNWVRWFFBWUpaM3dQQnRZ?=
 =?utf-8?B?RzUyZCtQZitsUHM3ZXlUSGRQVlhtSEx3OTdzUzBrL213OXZqL0g4WUtzdi85?=
 =?utf-8?B?eFM0cGZ4Zmx1aGZZK2FnYW9VSHN3cHUzUWtFVnNXVEdGa3VDOHB1akxFQkZZ?=
 =?utf-8?B?bktYZkpSOVVVL2VyTXM5MitQR1RGOFFhZG1BRk9ZMnNKejBCSCt6dnJTTzBy?=
 =?utf-8?B?VGIwdzVMVkNqOVJxb2VhNHJYdWo2RWdmOXZQQXVrRGdDWExZclppdU9vTURQ?=
 =?utf-8?B?WnZJM1E1OG1QalI1VWs0Vkw3dGdPN3NnNUJrTlE0T3hVcVFXbDJyNS9sVE9o?=
 =?utf-8?B?QVhhNktTVnl3WGdhb2V4blZlcE85SEhiYURSSDdzTFdYTWl4WVJZcmVFdDd6?=
 =?utf-8?B?Y2g4R1NzSXZmQWovN3c3emZBUGN5OFAxOUxtazA5T2RITDhlaXh6aEhGZXVU?=
 =?utf-8?B?WkpIRXB2UjVpbXIrTUVkakl6c3lJUkJLcjhnL0QwOTVsRWRaTTZHaGlFOGVu?=
 =?utf-8?Q?2zekwuSvhzA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amR6QzEwcDNhdEJnSzhiOFpxdTVOU2xjUUJNclFrTUZjNU0zOEdKWDlGR1Z3?=
 =?utf-8?B?cCt0SmRBVkZKbExJbHR4VVlCRlhxV0VwZ215Tm9FNmF1d3RQc3ErVXpEYXJO?=
 =?utf-8?B?bjV5TkVMRkUzU203TXo1UkQ4NWt2VHkwanhkNVRhQ2EwKy9henhoZ1VPb3dX?=
 =?utf-8?B?Q1dreC9YcHJkQnpEeVJ0TTFUMjJLVVRpNXlFUUpDb1laVC94clczS2RXK25O?=
 =?utf-8?B?MUI1Q2JMcEt6Nis3TmdhNVk2TXpKZG42QU00eWdzODBDOWlzTzZqQVViSG1S?=
 =?utf-8?B?VWtwRzdmcVQ2OVc2THpmOGZMRk90cnFCZGVNOXc4c08xVUZyMTI0enl4WC8x?=
 =?utf-8?B?WERwWlRuZWZsSzNDaHVUcmc0dE9vOFJ3Vlo5QUJPY3Ivb2RyS05RY0FQU3Qw?=
 =?utf-8?B?a3FqaU55bTlVS0VBQUJQRVRWbGxtK1hmWGRBK1oxMjllZlFGVEh4ZVNuQW5K?=
 =?utf-8?B?aHVhR0FwaVo2ZEpYWGJGeGxlbHRxMThjKzNtckE1VDI4ZSs3Q1lpc003SDVJ?=
 =?utf-8?B?M0grVTBzN2M3aldSZytKOFVaR3FtMStvQ1BCbjlSZGlXMW5rWWYxMWkxNXVx?=
 =?utf-8?B?Yk1LVG0yOW5OVDNrdDBka0p2cWJpQS9PakxoNXhHUlRieVdRU01jbmwvcEVE?=
 =?utf-8?B?VDFreThnUGt4NWpZNmNUZ3ZNa0xoWmh3U1RxcXZib0tOQTdtRGpPTnlwV24v?=
 =?utf-8?B?TzZaUVNwSFhibEpLblc5eG5kYUJSMXowTG05Szd4SFg0bzRBUTJlL29TVERq?=
 =?utf-8?B?MDF0L29wQU5xekpPQTZZNFNBRk1haFd2aWxRSDRoYktoRUR5a3ZXQWw1NCtM?=
 =?utf-8?B?NkppWmZYVTFTNFIzMzNpVGhvZmRrMG9MODFZMHIrUlgwK1J4dGVuQUVEV091?=
 =?utf-8?B?MkZnbzdTSUREUXE4eWR2a0pXdW9yclBOY0hJUUVwaFN1Mm4wR2NLdTJVb2NL?=
 =?utf-8?B?RktXRUdsYmEwTzV2NTMya2kwV3RTNWtpa2huT0l3K1NKWVFQcUlEVGYxcHlt?=
 =?utf-8?B?c1NtTnJQcjM3OG9RZmc5SUJ6eVZ5eWVENVlWKzI3eGczUzE0cnVlVmVncGpR?=
 =?utf-8?B?RUxqenFuRHhWQThUb2tCNGRyY0gxUWp1b24xcG42TXA3K20wZzdOUy9ocjBO?=
 =?utf-8?B?dXZwYUE5NExEa21nWVRMRU1obE5LQ0c0MTVLeXFjNnlEWWhaVjBHVWlBdExt?=
 =?utf-8?B?T2FjQlZqZzBzWHF3NXdGUE4xV3oxbDh1S0Z1Z0tFNEVjSWN0cWRsNXRRbW9W?=
 =?utf-8?B?SWRabURqOFp6NUJPVTRtc2dqS3RBTXRRU3NCZDdzMkU4cloxZkN3N1lPUXd1?=
 =?utf-8?B?Z3ZqRThRVGVzaFhDREdWb2poN2lxWmdPNDRhQmFUN0JpQ3JpUWd4UEw3Qyt0?=
 =?utf-8?B?Y3pxZnlQTkJEbVN3YTgrbzlxVW1tTUFRN1N4cGNVS1lQcmpCNUViRktSN2Qz?=
 =?utf-8?B?T2dWRU16ZllNRHZhb2pEK2RwR0VFWGZkc2JRUEhKM01PeHVleWpkQ05SQmpl?=
 =?utf-8?B?Sm84UmQ3V2MwSjVPaC9XRVdjV1hkbVQxdktpcHdOWDFYV1FTbTJnc1ZveVV2?=
 =?utf-8?B?amJ0NUMyS254REtUellmWTJSbXVEaWMxOG9NWGJEMFFXamZubFF4WFcrVTdW?=
 =?utf-8?B?MWoyQks4T1VrOHg5dkl0QXJVaDNVcFNuNHlvOU1xdVdaVFJCS2JodGU1UWV2?=
 =?utf-8?B?TWtieXk0aFlSV0NmVDdoQWxGN2tpR1VSMFFmZWdVOHBRQTk3Nlg1M2ZHTkxp?=
 =?utf-8?B?MnplRGxlQ3JVaVpJMmtSdnhqb3l2QWtDMXhCM00yTTdUa2ppUkVCc09udDFq?=
 =?utf-8?B?Q1gwc1FlYStLNkFsTW45eVlEdmh6Qkx4Qy9ha0Z2dENKYmdkcXRhMlBTSmw2?=
 =?utf-8?B?SCszTUh0TDlndmFjekorempKbmM0cHFxT2pUSjJaV21qcTJiM29JbzlxL3RC?=
 =?utf-8?B?bXFEUHRHMG01dVV1NngwRENqZU8xRm9xQ0NHZnZBQW45RGM1NGhDa050RWtt?=
 =?utf-8?B?SzVHN1FOZFVuWUNYUFdLcWt2dTcxYTNRSXY0NlpUR1pjTnM4cEVlTDAvcXJ2?=
 =?utf-8?B?RExVTHo4cUhPRFVpbXpOZjV0THoyTVUwTG1GNGtYSG52R3dqSXJFVzdkRk5C?=
 =?utf-8?B?WFVzZTlyalhVU3ZhdnRlUzBjVVBJZTVnT2tCWWNaN1MyZVpOT2FraGl4RCtM?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae3f593b-71ee-460f-f0d9-08dd8c838e75
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 09:51:21.6379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jhuegc8vDpnFpcOs8YnvGsCWTeuXwY510kTbduyGYYOi9XtkbYjl5zE2yhhtkyhTl5mzwl6kvy/y3RqoIb/gRfbwr8ZHb74f/Pj+MtX2wS4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5256
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> A follow-up change wants to skip invalid bpps in the bpp select loop of
> a stream state computation. To allow for that, using the usual
> 'continue' statement in the loop, change the way the sinlge-bpp range is


s/sinlge/single


> handled.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 49b836cd8816c..d8033e55dc093 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -283,6 +283,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>   					   fxp_q4_to_frac(max_bpp_x16) ||
>   					   fxp_q4_to_frac(bpp_step_x16)));
>   
> +	if (!bpp_step_x16) {
> +		/* Allow using zero step only to indicate single try for a given bpp. */
> +		drm_WARN_ON(display->drm, min_bpp_x16 != max_bpp_x16);
> +		bpp_step_x16 = 1;
> +	}

I can see this function is called for non-dsc uhbr case with 
bpp_step_x16 =0 and dsc false.


So we just want to get the loop run once and get the slots with 
min_bpp_x16 == max_bpp_x16 == fxp_q4_from_int(pipe_bpp) right?


Similarly for dsc uhbr case check with a given compressed bpp 
dsc_bpp_x16 if its valid.


bpp_step_x16 = 1 will mean 1/16th fraction. The value itself won't have 
any effect for the case where min_bpp_x16 == max_bpp_x16.


Is my understanding correct here?


Regards,

Ankit





> +
>   	if (is_mst) {
>   		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst.mgr);
>   		if (IS_ERR(mst_state))
> @@ -408,10 +414,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>   
>   			break;
>   		}
> -
> -		/* Allow using zero step to indicate one try */
> -		if (!bpp_step_x16)
> -			break;
>   	}
>   
>   	if (slots < 0) {
