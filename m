Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 255FBA47A74
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:39:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 928E010E321;
	Thu, 27 Feb 2025 10:39:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZoWCIEoQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7054010E2D8;
 Thu, 27 Feb 2025 10:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740652795; x=1772188795;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YQfyzu6E8r+91UUIIrQ6tf8Ug3aTbxvhVrGek/Tv8Pw=;
 b=ZoWCIEoQS0bMfANbP8Hcn3DGpnvfO5oXqTWAmy5KHx2DiyU5jqB7qgIg
 gjjAj1TKGzTqAWrXrSAOm52kMywP8dzGdmmn3cSIrDVbfWIXZfBGJajvZ
 zxwdlm4hVuQfpuEV0diG9i8hEiuvuCuOLpwuch8BLiZ//Io7ovYJD/fI6
 6usBdSe/iGevehJLBY1hLbx8pZpRyHwkUj6TmGZZKS28XJE54XVtqrSQs
 UCI8ezouEC0lP9K5+yAa7ZEIZrWSTc24daVcoK4TvNmaoppsUoDO0Qavw
 oURcBS59eyCuEvGucdr61dy/SZBfuvmXAUvKyK8XNo5vZ7BapcmkcstDD A==;
X-CSE-ConnectionGUID: QjS0IQw7SUKxXpqh1bBYdA==
X-CSE-MsgGUID: EuPl0MfcSNiJ394GIqW0bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52522919"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="52522919"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:39:52 -0800
X-CSE-ConnectionGUID: USZsL8ZsTiGWHDZST7twNw==
X-CSE-MsgGUID: AYEpgCmdRKyMMyxVLkk3dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121109942"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 02:39:52 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 02:39:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 27 Feb 2025 02:39:51 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:39:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kcjgypa2fCppF6RphA6OgQ/eTSriP+vsU9B2vzzPdvmR/p5/KMnaH6kAB/WHy8YdiblECAq11JIfZriYuBGS7J0MJ6+LeCaSb6m5rY/HYaiId18T7KHHJ8lUOj4vdYPZE9a9olvketAZhtujRgrV/SUzMjiVVrrpHSdkc907NGRGP7kdpPgAGt4mwZo3DQ/4eswjbh5YFISIw6GG3nM+46TpJkX6RetHIj4F1yrNstfKIs5K2p/SkS/C2hF/zc6AgbfKkVQhqe9V7+NiXvLns8oymz9IdNac3P8WWFXlimKVrt9YBhPavaHLnXoBBGe3YDyCIzzlpmTtXqScI7wmBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nNTjj3QRL9z9PWEx4KgSaecpwuaNaUnLPYfnc++zFBc=;
 b=TNWZMbCytAfCgaHF7sChwo2SOGpYzss9cikUNLQiOYYGLoZ+VMa9wZcJ+wijE40yumCTeZDS/70Kr19sz+Z7niBAP72G1JMILscODFDMWPEQqJXc1v1PsfHqSQLvww7NqNwpcFSXnnnfVLYJ2R27ah2a/ZdXlKqObCbIlZr+E00uKKSExZwHrREnYOeCy6SEKSYnJfeK5cJEJnmaZfUaqLw3atPONpQS5TxI/R3Ow868nJTFkZAUf3F1XDze2LSLAiC1pF4N+qcKK/MFQFIjClQGVqNEZsYxg3EiD7BHORJHH5rO1Ty8ygnn0Au85uH4SosCG9Krw2cdvh+Rt2xipw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB6004.namprd11.prod.outlook.com (2603:10b6:208:390::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.14; Thu, 27 Feb
 2025 10:39:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:39:35 +0000
Message-ID: <a9c507cc-8585-43d5-8544-6a4b81c27389@intel.com>
Date: Thu, 27 Feb 2025 16:09:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/20] drm/i915/vrr: Refactor condition for computing vmax
 and LRR
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-15-ankit.k.nautiyal@intel.com>
 <Z78et1xp-bBxPUye@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78et1xp-bBxPUye@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0163.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB6004:EE_
X-MS-Office365-Filtering-Correlation-Id: b9dccddc-2bb9-4bf5-720b-08dd571b06d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXlKZ0hRMHdYTDZWK25yT0ltamI3UFV0OHpLUEllR0FubWRoQmFVN294bWxj?=
 =?utf-8?B?WFBrTjd0VjRFV0pNY0YySEtHdlU2Rm5TVnJ4VUdyUDdFeDNabWd4b1EzdGxj?=
 =?utf-8?B?Tys4OTIwbCt5bkhMNmR0NzdjdG4xT3hyUk1DUnEzcU5qKzZGS0pia2lnT2lr?=
 =?utf-8?B?ZFdVOGNuNE14bHVITVlLRURYRGNKV0FIWU1zbXdsM2JiQ1RZOGZiaTkvMHdP?=
 =?utf-8?B?SGZka3BVY1lrVm5HdVRLMzJ4RUhqZktPU01CS3haUmpQRzV4eXNOdUIxZjhX?=
 =?utf-8?B?TGhucXZmTHM5RFVvVStwTWZmS0l0MTYvKzhKeE5wVzZxMHBZaTk4eE1zSW1o?=
 =?utf-8?B?OFJLdEplckpPRUdLVkk4aE9yUTNiOXlGUjh1Z25NRHlRMmU4MVM1ZkpvNS9p?=
 =?utf-8?B?R3FMbXpWbFE0MzMwWnNKc3p5NzE5MjVlaEk5ZlFzWVU0SUFzSDRiVi9nbG1j?=
 =?utf-8?B?R1k0TlZCTDVRSStoaDk5OWxkZ1RSMkpyNi9pNTFSelc0YnZNYkFsc0RTNCti?=
 =?utf-8?B?S25BY1JSNkw4MDBpVkQwWDdFejlBVTBFSlNZYlRlKy9CaGsvSHhQMUk4NlJD?=
 =?utf-8?B?UHdPRUVQZnZBclgxdGRkMmZ1QitTMDVEQ1EvYm9QVUxQTzI5d25PQ2dlSXFV?=
 =?utf-8?B?TXZiYkpUWFN1QlNqLzg5VUZJbmZiTDcwY3RzRzFGZGdpSENpaUFxYnVpZktp?=
 =?utf-8?B?alo3V2REdGNOTVBFTTJSanI5TnhqZTdsTUNJYmlYZzY0aHJXRjF0VmprdjVh?=
 =?utf-8?B?V0xlOFpJdDFKdldpRytYYWF3OFk3YXE1Nm85ejRQeGMrd0JNTDFYMnYyWTJ1?=
 =?utf-8?B?cFpjZU9DRzk5b2lucmFZSUVweGh5OU1QWEFBRDFiczlRY1VodEgxazh0NHJL?=
 =?utf-8?B?RDBndVlVMTNyRVNkbkR2MnBMc1JwREZYL3BrUnpTL2dVei9sRmRuSjVJU3hH?=
 =?utf-8?B?UDB1akxzYjExR2Z3b2VnNFcyQUFWVUI4VVpha0lTUVNBWEVmY1JYM1JKamwz?=
 =?utf-8?B?Rm8rdnVGakNQWWtkYzV6ams3RHViYUxvMEsyVCt2NTZoS1hTMCtzZnB6YStG?=
 =?utf-8?B?bmorL0tHSk0xYXVlbXhQUkhzNjIvQzUvenhQNTJjbXY5Q2MvcW9KYzd0TDRq?=
 =?utf-8?B?YStIYU0zalFlRjZZbmFRWGJVVUNydVJhZzFrVDFnT1M2VGdMRzVMd0RhWHZh?=
 =?utf-8?B?bG43VzNlL3pEcUV3ZC80L0xScFNMT2ROM2pNSW1sQ1BkTGtFRUVTR0h1MXJr?=
 =?utf-8?B?cG03MUl3UjI2eC9hdStYQ243MUhsYU1ScitldTNpMkxIOUxrMExEbVdwK01z?=
 =?utf-8?B?bmNhOEpnemt3V3owRkJTc1BMZi9UQ2szeGhaUTkzZXBYUE13aFV2TmN5dUpO?=
 =?utf-8?B?ajhDSWRNWXFWWG8rbzBoL0x2cUJrN1FvYithZkUxM29vSEUveVNVUU9KeFBm?=
 =?utf-8?B?S2czcGdqaHFwYVd5amJQV2w4d2NyVEU4RDA4RzVKNlh4RjMreGt5UEYxbTdu?=
 =?utf-8?B?a3hnTVJ2bUVtakc4cDcyaWJYL3h5NzJXVU5Ud2ZtNVQyMzR5c3Ard1FUaFpn?=
 =?utf-8?B?TFNTdUlOZE5MbTdHVWg0cS82NW9yUVVQRXZUbUNmUDY1TldEaE5EMld3OGw2?=
 =?utf-8?B?NkswUmc0cGl3WXpFa3d3VXpKY3E4ZC94Q2hCVUtuRytidnpZaUI1RkhwRlVo?=
 =?utf-8?B?OWlrdW9UZE5jQ1QyVzkxYXZoWElQL0VSN3p1TmpXNlYwMmlSQjVHcGd1ell0?=
 =?utf-8?B?T1JSREh1THZPMEJYVUVEdi90dWpFMkJ2N1Q4c3lEdExLVVBOK2pOczJsUGFZ?=
 =?utf-8?B?S25UNkk4NGxRUEZ5bUpmT29Rb3psaWgxT1BSbEZvYXE1aVJQN3ROTUNsL2JR?=
 =?utf-8?Q?hFs7tPEl1SCCg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmdUZTR2cHAxaTl5NWNJRU1nYVdENTV2T3dSYWFzeEtUODB3V1UwcUlTZkRt?=
 =?utf-8?B?dTRZUnF3Tm5JUjFIazR2bUEyQkI3VGI1T08xNU1YRkVYQ1dkUXVkSUhhTnFh?=
 =?utf-8?B?L2dIdjJSRjR0RFZ3eWo1d3BpYWRiWnZ4eFZKMlh4QlVoSWhyUEp1MmZqYW92?=
 =?utf-8?B?MmFPbTMyb01jVE9JampQSE1XZ1RpY0lzb2xZUFd2eW11ZVp1OXM3TkppcHdM?=
 =?utf-8?B?cjVHVDVWcW5aQnNXWEgrODVTN1Q4ZW9ZaUZqdjRhZU16NjlDTVNnQlo4cW9T?=
 =?utf-8?B?aGZ2NVRrMjN6OTkzUzdraEd2TVZhbUlWSzF3WC9iSHg0dVFhOFZYdVZ0bGd0?=
 =?utf-8?B?dm11SHlxL2hGMGl5TnR3dUJ1NHNKbllKQnl4S1c2L1lZN01VbGJtZG1lYzRi?=
 =?utf-8?B?ZHVxYWdkY0xzb0tIdVFUUXMrdElnNEMyNGEwNnRsS2ZiZk1MUUMydDZUcWdN?=
 =?utf-8?B?ZFdMTTBBNjVsV3NFcGhIb21zQTMzR2xPTDNDVTU3bGlGbjdhU2lMeklXcGNu?=
 =?utf-8?B?VXhIU0I4YUF4NytibVZWWVVuYXoxUmRJQ25iL0VpVzdMS1J3MkdMQ3YxSGUv?=
 =?utf-8?B?M1FGWmtjY3pmcGhYZ2ZmOG93ZElvNUhFUXR0TEJqSWF2eFhrZU0xdWJLNXh3?=
 =?utf-8?B?Qm43QmtPV0ZiTlRTK3hzaWc0K2x5dGRNTjZWbjVoOVliemk1YVNQTEkzVkJU?=
 =?utf-8?B?STQ5YnUzMmVCYzUxMmR3Rkc5NnpPQm9rTWtUNjJIYlE0T0NRZVZNRmtxQzFI?=
 =?utf-8?B?Z3hzSkhtYTFzNU5Ob012dVdSc2gvTnRTazJYR0pLWlc5U1U1Y0JtTzk0M1M0?=
 =?utf-8?B?WnRuYUZqMG1ZcHhDVmUrbWFMczdOVFVCUStwM2oxb2hVUFoyQzZ4TWlacWlK?=
 =?utf-8?B?dTdpbHg4bFBSZEpRaUc3c2QvaVM5VWVBZjJHYnlFeVpMZ0ovODFnM2VTdC9B?=
 =?utf-8?B?S3dkR20zMVoxRDhFQzhlM2FJRTI5NE9XSGxibDhoNVY5NkVhamFPOHRvRS9V?=
 =?utf-8?B?WHp1czU4QitKSFVYWnNBbnVwUlNoTUxuV2hmVGg0eTh4ZEZYNlJXTnNNaUlx?=
 =?utf-8?B?NXUzU0RwUjE5U1QyQzZhVy9WYUdXcVo0c1cvYWZkRC9QVTNRUXM1UFlSWnVO?=
 =?utf-8?B?SzRpWWhVMWZlMnora20vU1d2b1VyU2NjSXNpOU5aTG1zak1vbHRBTXpUUGR1?=
 =?utf-8?B?c013V2N6Uk91U21QQ2RPdGFLcDh3M3draWVaNGpzR0JUcHBDSkxHUzlTNVAr?=
 =?utf-8?B?VTBsbEV1Q0ZYc3dhc2JWZzFjZVFyWjFoaDdSa0ExWXAybWNNZmVwY0ZCYWtV?=
 =?utf-8?B?S1BCNEVkdUlHY2UxNVRvdUZBY2l2U3hWSlFxcjQ5VWwvYWdTYXNFaENQbjdM?=
 =?utf-8?B?SnN4MXdLNHQyUUlkcTlGODB3K1dQU3VCSkdhMWQ3STI2NlE5SFgvYUIrYmFN?=
 =?utf-8?B?QzVQYmh6ZkE4TnBvMkpCYk90cUtuT2MzNXJMSG4ydUlCa1dNOUZpMU9UVFFi?=
 =?utf-8?B?aFdYYTJQMTc0WEJkWXBuc1lNL1pJZ1d0VHJ2eEVYaDg3VFFpa0ZRLzFTR01n?=
 =?utf-8?B?RXZxNEkycHdCNjZ4OEZtQkVrSnp6S2w2M1d3NS9BN3F2SjFINDZ6ODB4QnZ4?=
 =?utf-8?B?QmJJbDN5UTZnd1RoWGFMQWxVa21WS3pxaTM1d1VEWFE2TEdzdHNaWUZ5THR0?=
 =?utf-8?B?aHhodTZTU2Qycm1kY29uc3d0NktzV2lXVDRoOWRPdnpLd2FObDNvK3l4UVdQ?=
 =?utf-8?B?UnJPU3FKSElYbVptZUptVXZBbEpuSlJZd0Z1dUJoekFZY3NuWTQ0VXIrQnFZ?=
 =?utf-8?B?QUVWalVVNk5LMjBjbWNUak1sYkhkTncvMCttNFpZb3RuSU8xMXkxaWVDREd3?=
 =?utf-8?B?YmMzaW0zMUJFV05FVTRkU0lZRWZ3dldRM2djVUxHN0pIOVpJUE9zanNUYmlK?=
 =?utf-8?B?Z0NwU0h3VklFUXdoVElxcTZLNGJlVHRtcE1QalVkMm12TjRTOVVmV1NVOFhD?=
 =?utf-8?B?MjRiUm5jN3VKc3hFNmdHRmhWZ2JmdFIrQnBPTmdSQnVUUlpPWUJHZnAveDZW?=
 =?utf-8?B?TjArb2NtVGUxbEZlUCt2VXM4NkFUQm93dGJYeFAvaUk5bUR6WkttV251WDVC?=
 =?utf-8?B?WkRZQndLNVhQWXJvZUh0cndYRS80VVF5aGRTRmtCeEs5d3dJWTUrWWdpL1BV?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9dccddc-2bb9-4bf5-720b-08dd571b06d2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:39:35.0541 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zzJ3P9l8QS2t4oPx3NQ7npp7E88yx91m1Mtfm11NqKUTdFZY/yR+P60Ahiz2pK3v9rMuvxf0b9mUtz+aYxurETZC9Wq6qacmjwFVNFwGHkY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6004
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


On 2/26/2025 7:31 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:47:11AM +0530, Ankit Nautiyal wrote:
>> LRR and Vmax can be computed only if VRR is supported and vrr.in_range
>> is set. Currently we proceed with vrr timings only for VRR supporting
>> panels and return otherwise. For using VRR TG with fix timings, need to
>> continue even for panels that do not support VRR.
>>
>> To achieve this, refactor the condition for computing vmax and
>> update_lrr so that we can continue for fixed timings for panels that do
>> not support VRR.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 30fcd1e66a12..024c3014670a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -343,21 +343,21 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>   	bool is_edp = intel_dp_is_edp(intel_dp);
>>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> -	int vmin, vmax;
>> +	int vmin = 0, vmax = 0;
>>   
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>>   		return;
>>   
>>   	crtc_state->vrr.in_range =
>>   		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
>> -	if (!crtc_state->vrr.in_range)
>> -		return;
>>   
>> -	if (HAS_LRR(display))
>> -		crtc_state->update_lrr = true;
>> +	if (crtc_state->vrr.in_range) {
>> +		if (HAS_LRR(display))
>> +			crtc_state->update_lrr = true;
>> +		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
> } else {
> 	vmax = vmin;
> }
>
> might be a bit more clear way do this?

Yes this seems more intuitive instead of letting vmax as unset.

Regards,

Ankit

>
>>   
>>   	vmin = intel_vrr_compute_vmin(crtc_state);
>> -	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
>>   
>>   	if (vmin >= vmax)
>>   		return;
>> -- 
>> 2.45.2
