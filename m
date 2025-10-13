Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A54BD13AC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 04:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEF6B10E366;
	Mon, 13 Oct 2025 02:32:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="goTPiO4m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D9AB10E366;
 Mon, 13 Oct 2025 02:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760322722; x=1791858722;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4t9jCSY+BEgAC5ysCmEsCOnXGmuuUeDQ9rbpOPTXSjk=;
 b=goTPiO4mQEAY8Evxl/EKrsJOCopVBw1wEmMks5hDtxP96/6B+pZDA1og
 Csd9Txxcrvtz3XsFu+gugLMn95PrMVvnQS1bW5uh1gl0o2tPXyvGKGmHN
 yUu3//y019yiFmkEL9qzTaAuFsIuztGQ+k5RdvedB8QWE6U6VI+CTHseL
 jbgrGGC67DUXaWHlb2MT1G7XvJlo0xFmtcGDHCwJynFyGhCib7zHAyztI
 b1bjP99tJY+Y7imcIr3FDQs1dKoEE4wr+3c2c+uCyNEKBT+G9h+G3uIMD
 8rmp0OWE6vJxWSEmFYrBMq8Dt6+smLtX2WfhcVxNlga0HfJY0grZgp9gi g==;
X-CSE-ConnectionGUID: CN03fhUNSK6i9Y3fCF8qQA==
X-CSE-MsgGUID: G44r4FYIQdOKcJDaIqSQhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="73555988"
X-IronPort-AV: E=Sophos;i="6.19,224,1754982000"; d="scan'208";a="73555988"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2025 19:32:01 -0700
X-CSE-ConnectionGUID: ABgMwWYeR5iisIev3zEeSw==
X-CSE-MsgGUID: S0GM+RgZTSaHVMe0K5T2iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,224,1754982000"; d="scan'208";a="181297046"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2025 19:32:00 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 12 Oct 2025 19:31:59 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 12 Oct 2025 19:31:59 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 12 Oct 2025 19:31:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KwqMZUDEyKGleLrjJBFLuGBMM8IxsGO4YWeFw9XrkHAzWGUAU1/7EINgsgnK0IEimfMtoT1dOHfOhzBwrXkmXKNFrVe8Vp+/HJ4fkC14ptoVYB9sv+wiFA6QC1OKenwE+H5TUiNuQXDwkW5TzFID44ucVDWYCgqyIgtdWiGbRUIh89/Xe5KL4XRebjUb3bXIDCpcZ84oDxcjnoLA9JtANshLt4Do3NXmQAb79KxVMMEjS+KWevkL145BiiASOLjnKEMOtM3L4ZmHFLUQvINznLLeUcStGYF1y7U2mrVUDBGkqjziv3MvTsN3PIkYAz92P7lba0z44xdJh+OFkz6VQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6rgbruL6qGezixisvZXE86S85YqWf6zWd6vcKr3RIYg=;
 b=ogGwm1Jg4e6yWxeQ3xESOSVqpgfoQjceZC0UUR2l+c13bUg8jQeV35Yts4FjzDQya3b/VgD5paWiXROvciMcoplOT6VI4Et8PwV1E3FwRcwojUGDvMgJud0tfL9FkEB8f2UHVw/zpE1RkSq/xooLmklHjZB7vRxntFOlpFZ4l6SNJTJBzpHuDlwbZi6XsOFaHsJyV2grII29aL2KVBEfGfcK/MBOyJRBJucaGuG/1vt7s4wrtl0QAlhnmW3JsaSvvskVvjNaArwR9IxUCyBKlD50861wuwyBo1pRHKXeyeAODzEQFlqdOzzCzdGLzjTOEkpdAWb3Z1xIBKR3yt5+IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6505.namprd11.prod.outlook.com (2603:10b6:208:38c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Mon, 13 Oct
 2025 02:31:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 02:31:52 +0000
Message-ID: <f6f004e6-99dc-4a97-b04d-610a2c345a31@intel.com>
Date: Mon, 13 Oct 2025 08:01:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] drm/i915/vrr:
 s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
 <20251009090102.850344-3-ankit.k.nautiyal@intel.com>
 <aOkd3YQC6ESQ-RAE@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aOkd3YQC6ESQ-RAE@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0078.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6505:EE_
X-MS-Office365-Filtering-Correlation-Id: fc42b7a1-72ad-4e0b-9cad-08de0a00ab03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?clQrYjhWb0FtK0ViNVJjU2VHS0hjZzRGdUMyOVRROWpKQzB2cUV3WU1KZUhm?=
 =?utf-8?B?K0pBVGEvbDArdTJEQ0svTGpyaVlFN29oZDdicU40U3U0cUJpSHNuL0I3T0dP?=
 =?utf-8?B?QnpqN0g0c1pla2cwNDNYRHhnaEFybm1tVitzcm1TZjF1SDcrQVNxelBuc2N3?=
 =?utf-8?B?M2lNdHNFTno3bTVhYmVPUWFvekFHSEJYMGJ3WXdSZEtPdGwwbCtZeFY0Vzcv?=
 =?utf-8?B?OEV5ZnlCZmxnNUliNDljeEp3K01oa2xCQzhzdUJyVmd5dEFzaHBXUFZYUHcv?=
 =?utf-8?B?M1ppSGl4VmIwWlRneldhTTdWMmdTbUNRV3VqUG1hbnhkWDVGM3lvbzU0MmVK?=
 =?utf-8?B?Tm5YZWppU1JYelRaNEZRQUNLL0tzMkl1V0tmVnRNbUdLSVBkclg4SVhMcmtB?=
 =?utf-8?B?b0R4ajNYL3htNUNVc0VNWEw5dC9pSmxOR3Z1dVplWEhWVjR5cFA1UXNsUXVo?=
 =?utf-8?B?cDVmL3hsTGNpbGVzd0s2cmI2T3pPUkd0MlFNL1Z6S1c2OUZiOURaNEcvNDRk?=
 =?utf-8?B?cjBnV1FsbFk1K0kyVnR6Y0FuNVgxbjNwZTJaMzRnU2ZVTGhpOWd6azdWSmcr?=
 =?utf-8?B?Yk56ekIxY1ZiL25xU3VpazlmUkhJeGZRU1l0bGRmd3BSbElaMCtnRmwwQklk?=
 =?utf-8?B?Wm4rUExmdjErbjVpa2drQnErL1BzWXlTamZtOHBzazJGNEhIYi9HTmZtT01q?=
 =?utf-8?B?NXJWSlltTTdxN3Q0dW40VWp0VjVqUDQ2ZkxzVWY4R0xzYjNqUzF0YzNoSnNW?=
 =?utf-8?B?eUQ5RnpjQkJOb3paOTNwVWxzT2tnNVBkdWN6OFltaG1kS1NOVFZvY0tzT2R5?=
 =?utf-8?B?SzhhczhrZzJITVRZNmFyTUNDa2hDcld3bXpJUU16Zjl2Rlo4YUJoSnpxVEJt?=
 =?utf-8?B?SkZ5V0w5N0hobUhQcllJVWkzN2t0Q0VkaXp2YWhyNFh0Wjc2bHl0V3JhaW0y?=
 =?utf-8?B?QWVDa0YyZldabEtCVmhtaU9GckJFMUdhbnhzSlAxRXZuNmVjR0N5c2gyb2Qv?=
 =?utf-8?B?MXkweW1nOXVBQXJEbkEzMHpPNjJ0WHlEMzFBK21xYkUweHVzb0FSQ0J0SUNV?=
 =?utf-8?B?TmlsckJRQXlEMGpMaEJFZ3FYS2NUcUVJTklETGZMUVd2NDh1VHloblFPd01L?=
 =?utf-8?B?M1VlUDdJaFdIcDZ1TlM0OElUa1hoeWJSLzdrOW0vSFpHK2E1TzN6MHk1Rzhk?=
 =?utf-8?B?Qm00SzI2VURYL0JVb280MFlOMnpLWml4b3J2WnlaUkJ0RFd3QUo0Y0dYU2NX?=
 =?utf-8?B?Vnd1TFRXa2cxcHAyQnRUVVU1MnVBT0daZ1U5RkZjOVcwUG5YRktkOVB4SktF?=
 =?utf-8?B?WGZkVzN4VW5IMGFtSGpJVzhBcmUyTTZ4ZFRyaHJLOWZNd0EwZ2VLMlM4VDIv?=
 =?utf-8?B?L0dlU0NJYSsvYnlyVk50S1RmSTl0T1g2UW9KdlZaOUhMQThqN29JV05HbG5T?=
 =?utf-8?B?a0ZTR0tFYmQ1Znd4a3JqbTdNZnA3ampEbFIySms1YXMxdDBya2xBN05tdHdu?=
 =?utf-8?B?aFdiblBOTWZhbUZwLy93WDEyVjdTbWFXeTVUbVkxaFZBSVU1SFdySTdubDg5?=
 =?utf-8?B?cHhxalpROVlTa0JJUFpwK29kcUtVN0twMVh6bjZNeGpGNGhUKzdMOWhWVlJ6?=
 =?utf-8?B?d1FpUmpLdG9YYVlMbDh5blhwV0J6SlF5NVRlejVia1J2bXpwZ2EyMXpZeFUx?=
 =?utf-8?B?RVlHTUwyZzZyaUVodnRXUWZjcFZVcE4wVU5zQlM5QXFmU3dwbnQrcGtyYkwv?=
 =?utf-8?B?OWg3clkrQ3hWN2FxclBVSUYyMTQ1THgzR2RDbUhRNHh3Zm1vdFRoUHdsWkor?=
 =?utf-8?B?N21tUFM2aXB3dGx5b0VlMHhxZWhKZVR5VUZoVTM3Yyt1MUZ6MUVYNTQzaUh2?=
 =?utf-8?B?TDcvcS9ZK2dtTWFmenpOYmxZKytpV0h6WWt3MTlmWmplUTIrdWFaYytaUmRh?=
 =?utf-8?Q?QfzefKqVacdr6itop51qFlBHxSibWU6r?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0hJNlRMTkZyNng4NzMwZm04QnRHZXd6S2o3TzZrZnB5V2ZlRlRsVU9xWTAz?=
 =?utf-8?B?QUJjd1V5UjY2QWtVeWpCZ2pQS1huZ05NaUViaURxbHA1WXdtbnNwNnIwbWhY?=
 =?utf-8?B?RUFJK1grcVd1eHRBem5UVWNZSStoZEs4dGFEZThuM3k0NlhCS01TVDZ5SWwz?=
 =?utf-8?B?NTZVRVRjVjBuTnVUZFBNN1I4K2orbzAwR0tyM3hwR0ZzcjR4MmtQUWFScUJC?=
 =?utf-8?B?U1k0aFNwQkpXVEN0TzQ2NzZaTGdja2NmUHVpekdBNWhvODZPN3pTVFNacDVW?=
 =?utf-8?B?dm1aZ3JEaXI1WklTeUkzdTNsa3pqK3NURUZrMEt1TFdsNzR5MzNEQnVtNkU1?=
 =?utf-8?B?Skg1b1lZcWF4ZkpFaS8zWFU1V0swRW4wTVFaUW5BRnRmcWZOckg4T01KUUR5?=
 =?utf-8?B?RzFpYlRIVzd1eVZQS0JOZlhSMkFON1lOdm94WWdMYkF4V25MVVNIbEdTNk94?=
 =?utf-8?B?NXdLenVOZWNsN0t3NUQ4QTRId3RJY3ZlUHFYeWRwYnJqTUVsWWVDNmdvMktK?=
 =?utf-8?B?MzRTYk1jZnI3cmdYcUFnekZhL2wvRXRwMnM3eTBFS29MK05TRy96dDZQc2M4?=
 =?utf-8?B?SkVmQWlWWUlrTkJ6ZGY0dlhTckY5dWptRytJZ1k4TEFNQUpuelEwb3N2dTc0?=
 =?utf-8?B?QVhhcHpqNnJ2aSs4S1E5L3JqWTlTRkxXSEZrM3pqY2ZXa1pZYzF2M05IL3dq?=
 =?utf-8?B?TlFTRTlWd1h3UHBUY3FISjBiNWNWbitPWjYvTm5RUE4rZnovMkFCeG9ac2xn?=
 =?utf-8?B?NHBCMW1RK0YxZ3NmbThyYitXQ2xQM3U0YkFHY2ZGRGZMbWd1MGR2MjNrSGFF?=
 =?utf-8?B?R1NicVAyRitCeENoZlNYaVU4ZDVPZDA5SDVLb1lPQWowQ2hwVk5tcGV1WTJl?=
 =?utf-8?B?UDViWWJRN25VcHEwVUIyUSs5MXNWMGNGZHpXYi96YTZsZWFpVERvUWFKeExW?=
 =?utf-8?B?TndjeVpvYlI1Q3NMSXdGSVVCR0NadGhjbmg3amlyUkJBYkFkeVVueDJXOXVE?=
 =?utf-8?B?cTE4S1RXbVd1TzNCZTMrMGUwd3RsNUo1T09MaFlENnduTzdkamppU2dMbkdU?=
 =?utf-8?B?QXhjU0xJRDdCMWo4ODE1YThJSWpxSG9XdlA2L1JlaHpaTVZnWnZsN1RYUjZT?=
 =?utf-8?B?ZS8xcHZsb09SaHZVWXpUMm1wbkZPVUdBQXRaY1A1QmhERFo5dUtDRlgxdnl6?=
 =?utf-8?B?TTFKSFFMc0x5MkRVNUpDUmtVUk9udENveitHUGpuankyOXdHTGttaWEvdmxU?=
 =?utf-8?B?YVp3T1VVMWg0T2x2MFFaelJOT01raFA4NE12RWFvRHV4eEVnaGVEd2pnTkdm?=
 =?utf-8?B?MTdyczRkNlMrMS9acjM5L2ZuaXNtR2t2WUxLYjY5NXNtVzhsNC9hRW1nQ2RK?=
 =?utf-8?B?YnFQSjhqTnUyVy9UaFVkR0pDSGgzOWpJZDlxUWFXWUZEQzRiclhuWnY5THlX?=
 =?utf-8?B?WlpPRDFzSUtsMUF4TCs2WnBuREJxQ29IUGx3dmRJcHdXT09pYmdKQW9GOVc2?=
 =?utf-8?B?czNOTGFsOUlabDloRnBaVG9vNUVCRXgzS2V4SWdHaXd5ZGYydzltZTA2Szgr?=
 =?utf-8?B?NVE5N2xMTkFwcEVGL1hyR3BRWElPQStDSVVwZGN3SDZTb1B5WEtmcjFFSWtH?=
 =?utf-8?B?MjU5OXUrb3FRWnQ4Z1FLdURxdW9ZT2p0SGRqUjRwUkZyQUUyemtWNXFqbmNS?=
 =?utf-8?B?S3pPelFIS3hqaXpIYjNlNWtWSXJYTHRSSjZmSFJNNW81NVhtSjEyclY4T3hu?=
 =?utf-8?B?SDY1NWdLWTlTUnRDZ2RKRWlqQklOVlhKRjJZb0lCbGlZc3V4Q292RmRwTThr?=
 =?utf-8?B?SHJQT21BRHhzbkdHV0FSNWM0cFQxWXkvMkRFSzBoaWcrUTF3dkUzZjZyRC8w?=
 =?utf-8?B?dzExVGR5QzRxUEF3Y0ZjNE9YNzFXOEZGeWQ5VTNYc0RBMjVPUnJlN1RwZHhx?=
 =?utf-8?B?YXpld0VIa0lXQnA3eE1JTXdWcndOMzM0WmU4OXc5d3hUbGpkK1h4V042SXdV?=
 =?utf-8?B?Vk56cEZLMDJDaGh2Z0xianlwWWFLejZQN2dtRzNHWFM0SW5FRXdBMURCejFu?=
 =?utf-8?B?akRscVcwVXJhenVvQy8rRTFWVXRxWFpuSkFaL0t3bVgxVTJnVllnRHkrZ1Yv?=
 =?utf-8?B?T0xxVUJvdnk5b3NWTzRjMk9DRng5cTB2a0M0ZkFJaHl0d2RLRVgzM1NjQlV2?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc42b7a1-72ad-4e0b-9cad-08de0a00ab03
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2025 02:31:52.2607 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 51VnqCHIOCgOQ3gc6dNG2NSh4ZW+1MCL5avV3/6iSQrIALL8CvC00HC6hISmvWM39C8U8G1QLUWNb9oSknoHhYXvyvjzeK9p+ygBAQUb2XQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6505
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


On 10/10/2025 8:23 PM, Ville Syrjälä wrote:
> On Thu, Oct 09, 2025 at 02:30:56PM +0530, Ankit Nautiyal wrote:
>> The helper intel_vrr_compute_config_late() practically just computes the
>> guardband. Rename intel_vrr_compute_config_late() to
>> intel_vrr_compute_guardband().
>>
>> Since we are going to compute the guardband and then move the
>> vblank_start for optmizing guardband move it to
>> intel_crtc_compute_config() which handles such changes.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 2 +-
>>   drivers/gpu/drm/i915/display/intel_vrr.h     | 2 +-
>>   3 files changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index b57efd870774..cd499e58bed3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2414,6 +2414,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>>   	if (ret)
>>   		return ret;
>>   
>> +	intel_vrr_compute_guardband(crtc_state);
>> +
>>   	ret = intel_dpll_crtc_compute_clock(state, crtc);
> Hmm. The intel_dpll_crtc_compute_clock() probably needs to move to the
> very start of the function, so that we'll have an accurate clock for the
> eventual guardband calculations. In fact my plan has been to move it
> into .compute_config() entirely, but I haven't had time to revisit
> this topic in a while :/
>
> For easier bisectability I'd do that move first as a separate patch.

Ohh I missed that, will move intel_dpll_crtc_compute_clock() in the 
beginning of the function.


>
>>   	if (ret)
>>   		return ret;
> The other thing we have here is intel_crtc_compute_pipe_mode(). I have
> a feeling I didn't consider the joiner aspect at all with the prefill
> helpers. We might need the pipe_mode for the guardband calculations.
> I'll have to have a look at what I did there and think a bit more about
> how the joiner affects that stuff.

Hmm in that case I guess will move intel_vrr_compute_guardband() at the 
last or perhaps atleast after intel_crtc_compute_pipe_mode().


>
>
> And the other thing I haven't considered at all is MSO. Right now
> adjusted_mode will contain the per-segment timings with MSO which,
> now that I think about it again, migth be a bad idea (my idea IIRC).
> Eg. adjusted_mode based linetime calculations will be skewed by the
> overlap included in the segement timings.
>
> We may have to rethink the MSO apporoach to keep the full timings in
> adjusted_mode and either introduce yet another mode for the per-segment
> timings, or perhaps just do the full<->segment conversions as needed
> (set_transcoder_timings()+its readout, compute_m_n(), maybe some other
> places as well?).

I still look into the series for pre-fill, but yes now I can see how 
joiner and MSO need to be accounted for the prefill computation.

Regards,

Ankit


>
>> @@ -4722,8 +4724,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>>   	struct drm_connector *connector;
>>   	int i;
>>   
>> -	intel_vrr_compute_config_late(crtc_state);
>> -
>>   	for_each_new_connector_in_state(&state->base, connector,
>>   					conn_state, i) {
>>   		struct intel_encoder *encoder =
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 4bc14b5e685f..8d71d7dc9d12 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -433,7 +433,7 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
>>   		   intel_vrr_max_vblank_guardband(crtc_state));
>>   }
>>   
>> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>> +void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 7317f8730089..bc9044621635 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -21,7 +21,7 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_check_modeset(struct intel_atomic_state *state);
>>   void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   			      struct drm_connector_state *conn_state);
>> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
>> +void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state);
>>   void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_send_push(struct intel_dsb *dsb,
>> -- 
>> 2.45.2
