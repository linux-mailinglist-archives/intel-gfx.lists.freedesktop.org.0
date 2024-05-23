Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1398CD126
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 13:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF19C10E093;
	Thu, 23 May 2024 11:21:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WIPnhJRV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F196110E093
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 11:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716463309; x=1747999309;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NnoMs5JBxCo4VSl8xttZphlvmhW1zV2RGyfofTyrEO0=;
 b=WIPnhJRVIlA4RnUDmam1taeEDSqkj5h/gb2pbDTcuI1rlbF8DvCqel0b
 niObR2hFc+qIVH+D0xKd6FLzzdvpKbnpcBQLOUmDWh3PChBUec/tS2nhT
 g5fc2bf8B+Q5J8y2BM5R+ZOeA+dArEzDtbmSKjjLnluoyJihPz5KmKE4g
 /KE2ijAIRY6VN7f757LIC8Qd/dvdxykHa7nAcvVySyrZ1s7TuCvv+9KpD
 lhvxJjnpUx5SybIWf1kw8hWe8MdG4cOlF0b2Mc5vrZMuqTmFJj+2oewJG
 jqJ44Ji98K4rpqLfkpvA+JwosS8jOWCftvGWAPj5Z3iVXkP+RaAmvpP2O Q==;
X-CSE-ConnectionGUID: tkP8+ioBRpmu+g4FpRkk+A==
X-CSE-MsgGUID: 3C+mXcouRnuE7iQowGN/0Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="13002954"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="13002954"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 04:21:47 -0700
X-CSE-ConnectionGUID: qciCfPe4Q2KQ6oQH48HvZw==
X-CSE-MsgGUID: np6oW7fnSbSQqe3MUW0Hjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33614640"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 04:21:47 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 04:21:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 04:21:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 04:21:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nschGhXqYE0mhARj+36otvAxGBEYc9ImvyF6V+N6kbTSuMkc5j1d6XJLdCvkUmpsoB9NEiBlbpxzLrVyJqbaQJDFVfTNZCgTTwgFGVAUzByk0N7NsT4tCS7Xutdc6uboRsWMOlxTytHb/C2uV1iDHSgtvWCDd4znH/zINPsRx0GQGfNaR7R/jhrQ8wL1f/+DvXVJoFsMlBvY04fZxvKjBipoCa0jmpVfqt1Pw4OXWQK85G5himRwCqG5WtsOC5PzupYfmoL/wG2ol85Dx/GxE97pU3KXUE+fCDbPdWnked0GcTQ6G0CyZUnQ0rvxjVoZCDCkOdUvg/c/ahug6lYa8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X6r9uvw/Vopp2Cqf0El53k/61ztydLratDIrkNVDM/I=;
 b=WsMHAQNFqx+qDSROeTDOn82WCVjy9c7eT7/b12n08DWgyXCXoifPUfzi+uS7Dz5PNnj8vcYs8iWnI2wPapHKzkMK3EqiZlacJ7Q9Q/KeCES/T4/fYkndlMBMkEgyLJ9VhcU1DhIbdz9Ug98jphih0FPgfkA/uMC+Q0th/vIjWycpsJLTXf8qR9sSh6L+gS3Z9ocJZKnF5eM3jiXachEZZM0ZKozYtJTbPZ6rNbkyeQxP/0EyQK75fRH2COOxj4e6jOry0PKf8EBf6AwhWLollynB0EkOwTq7Xrls0dxqLy2y5bQMb/FDcUDQt9OM5ZhrqxEUlS4kJs3dojartLTVXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4878.namprd11.prod.outlook.com (2603:10b6:a03:2d8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Thu, 23 May
 2024 11:21:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 11:21:44 +0000
Message-ID: <dc8fbc6b-2ddd-404d-bf38-eff073f7b624@intel.com>
Date: Thu, 23 May 2024 16:51:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/7] drm/i915: Compute CMRR and calculate vtotal
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <jani.nikula@intel.com>
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240509075833.1858363-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240509075833.1858363-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0172.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4878:EE_
X-MS-Office365-Filtering-Correlation-Id: b4652dac-d67b-443b-fd9b-08dc7b1a86d3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ekwrbk1Sb0s3Ly9jaEJrTy9oR1gySVhNdDRCNVFISjJ1c3lpTU1oVXRBMkhR?=
 =?utf-8?B?RVU0ODByM01uRjNvSFlsUXAvTSsxVkVQSEdFZ005b2tzTSttMmtHZjNqWWdH?=
 =?utf-8?B?OVBqTWxkZElsQ3I1NzB2V2s3RzJ2TDN0cCtqQ0s5NXFqQ1h2SzdmMytTbXV0?=
 =?utf-8?B?cGhkdHg4VlA5N0VnUUV0UjN1NzRuTjVjRVNpTlBFUTNQWjI1cE90Sk1VY0po?=
 =?utf-8?B?Q0dQYTJ3cWFVRHNLSEdsVWhhNHg3MHpCUzlHQXRhMm51SlQyUmxjelRsdldH?=
 =?utf-8?B?bTZnTkJ1cHZjdHZ5bkxZckdwa3B3QmowN0xqeVRXU0xQTFA1dW81Ylh2Z1o2?=
 =?utf-8?B?UFlZY0cyY3hVUkhWcU1QMHFYV0VXS296SXFVMnBEb1ZUbVlMOGJJckJ5Wldh?=
 =?utf-8?B?dGhoVTFsWWt3MG9kWXVZdE5UemlUVU02MXNtbFBkN3Jya3lUQUw4WHljeGE3?=
 =?utf-8?B?MXBVSW4xcUtOVm5UcjJ0TW9iRENaUXoyY0VlbjRwODFVNXYxS1Z5UlJQMFEx?=
 =?utf-8?B?VG82MkFPbml5K0tVaXRaeDR3elR0QUpqNGtvTi9nL2ozVFBvYXF0Rlg0dzFJ?=
 =?utf-8?B?ZG11U0R1YWtvSVk3Um5mTjhReWJQMVZUYmRvazVFSnVKalFkK2x5d0NrbUZG?=
 =?utf-8?B?RGVHeFBFWC9SUjd0SFJOUjErVFJwY0hNYjFRQnlwY202QjhjV093bUx5bWVi?=
 =?utf-8?B?ZnljVHo4U3lnRkhuQVBBWXZKUlByNFpQOG1RcGJmcTdwZS9ZSDZVZU4vVHdH?=
 =?utf-8?B?VmJHVjdPYTFaVTdjcEZDcWY2a01sb1VNaHovYnZGTHBUbUs1ZmlSSVp4cW1Y?=
 =?utf-8?B?c2NxQ1Y5cFV5QkRJWXJZU21SOUZUVU43UW1TN3BJZzlMcUM0TXFUV21CaTNB?=
 =?utf-8?B?UjUyV1BMcTd6MHV1QndBUGxSRFVwc2w2RExYWnJaTjd4dXd0R1pyQ1JUVnMx?=
 =?utf-8?B?ZUh0L3BDc3dOVFNVUll2bStteS84L3F1OEpYRnJrTnBMK3NRSUxENkM2YUFR?=
 =?utf-8?B?N25VWjlVVmRLdEVuZisxajZjZzBoVVhEcUU3TlNLeXY5S3BTUlZZbUxCYVNH?=
 =?utf-8?B?a0UvTmRtYWs2L3g4YjJBTWlKK1R2Zm10d0RlOWlnQ3N6enNYQlRva0c0RkV5?=
 =?utf-8?B?bFA5enZxdU5VNDd5Y21JaFpxbWhYc1JmV3hVZy9pTTMxQnZpNmU2SXQzTDFi?=
 =?utf-8?B?aWMwRVJKT1hpTHp4UFRhdDc5Ly8yR3p1N3phUFNiL1FqbUMzbzFUV0hBVzg2?=
 =?utf-8?B?c0puNG4vQzhlUjFQQldOTjJhTDZLYTAwczFWSHpnVGRBQUFaS1FPWWR6Rlox?=
 =?utf-8?B?YVVlS3ViOGw3OUI0em8zdkx3S0d1LzF2OXRhT08wQlRiTXluVldWY3dLT21O?=
 =?utf-8?B?YUdCanQzSXI0QmE3ZkthUmk0ZmtKZGZObEZMK2p6bXdLb0w2VytWTk1mKzgr?=
 =?utf-8?B?TlBRcDRDUEZWU00raHYzblJzaHUwbDdnNkVFV3FDTGx6bWxVaHRvVFJxV0Fa?=
 =?utf-8?B?RDdmS3FRYzZCYWV0YnNJRjJrREY3Sm1aY3JzVlNaUm54ZXJLM3dTR1NGZlN1?=
 =?utf-8?B?TDZMeHUwRnR3b2xvMUVVd0gxUmc5WGpLZnZITEpta1BFRllLdVhJKzFHcjhF?=
 =?utf-8?B?N2s4aXNWblNDdlhCTnNHM21hMThLOGpFaUwyd0o4QmE5bzQ2SkhaTllRTHhY?=
 =?utf-8?B?QVpyVXQrMVVBOUZsYjIzYUFTTW9rSmg1TmtFdUtvZFhTd2hpU1lSQjVnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0xqNUkyaDdJTnM2MGJTUzFkT1owUFRURnNhSjgwbG9id2FFKzYzbWRwYXN4?=
 =?utf-8?B?VEt2b1pSWVFvbFppb2NhVy9XT2VDMnlTRXRmRFlsbGd0SXBFOU9nL1JLZ082?=
 =?utf-8?B?Q0FYRHdNdDJhVTJVT3dWcVMzdzZhWDNqNW94bGVUejZwWDVyYXFvLzR1UDhI?=
 =?utf-8?B?aERncDhRcXIwN1Z2NHdjbVZ0WW80MHRqbUx2NkxKY3dtVDMzNjN3bzI3MTZz?=
 =?utf-8?B?TEpPdysrT2Q1TE5VVWZ2V2k1c2p6aTdUZW9SN0NnQ0Jiai9sQ3dBTE9nY3dn?=
 =?utf-8?B?Y1Nxc1I3WGovTWVhdThmSElYUVBzSlNKM1o2QVI3ay8yZzZENlVSQ1J4Z0hw?=
 =?utf-8?B?TkxLSC9CMGtUa3VEOEJjQzZmS09JbkIxTEs1eVlxMURLUkR5aGNxZU1QSGhT?=
 =?utf-8?B?OGw3WG5YSGc5bmhqN3RtZmdzMUlkb3lPdUZYOVZRMjlrRExxKzdpcnVUWlky?=
 =?utf-8?B?NloyMHlKZ3FmNjlKeW51QXZJRTJvOUpIdGpmdkhqQmdjRkRnM21yM3QrTjBL?=
 =?utf-8?B?bHEyT0tqL3FTN2xlQW4vSmhoTU80TTFuKytkNGZHZWRiMzZwTXNUSXN5ODVh?=
 =?utf-8?B?QXp0YlNDTG5kTW5FMkkvQnNSbTFhbkhaZk0yNEZOMENIRmVoYStxUHRCTGtO?=
 =?utf-8?B?Z2J5UC96eGJZdGxWVDM1aDFUaHE2Y1RSSjd6SE5JL1VoOHhRU0NsRFdXaDFZ?=
 =?utf-8?B?ekgrcFdiMkVacmtWWHVoRERNVjF0QWZ3c0lFUjFvNXRCeWRvMkx0aGJ5c3I3?=
 =?utf-8?B?TFRQOWxGbXkxTENXVHNXY3I3OU9UNHRqb3g5T01IR2JFSWphc3N4UUtZZW9P?=
 =?utf-8?B?T3V0Mk1SQlkvVk5CU011NEUyVlVid0NZOVZSRHVDcFMyVUJJYjFYQkpNNDdm?=
 =?utf-8?B?N0g0VHNKcGRjVld1TVJzYURoTy9yS0lXWG1ySHRJWmp4RmpubnNqb2dEb1Iv?=
 =?utf-8?B?bjRqRG1lbEc5RkZISjh1bDMrRlFsQWU5cFJSMVVlcE5FSEtjdnlEbFBIOUds?=
 =?utf-8?B?SmZkOWtZNG5YaFlMdW5hUjF5RE05TlY3VUMzUDNqT2lBNUJoRzdQdWx5S2Q0?=
 =?utf-8?B?SUh4LzJ6R1BLWTRUWm5VU0lnS0NPQnFPSlBVK1BjbnBXdWVmMCt4cHVzNUNm?=
 =?utf-8?B?cWxXeEpSSGFYRTN3QkQxOW9uaDFFT3JscW9zSEhDSlc0bEU5NVQ1OFB3eFB2?=
 =?utf-8?B?QURraTV0N1k0QlVuSVhEOWZVS3VDZmtjUE9ibTJLbGkxbFZVTjhvdGFnb3kz?=
 =?utf-8?B?a3dGZzYwdzBWL1VDRXpySmVOWU9RZUV6eFNkaVlJSitUTGwxcWp0eGZQejlT?=
 =?utf-8?B?ZEN3RUpYc29iRkJXNzh4eitKVGpmakEvZ1pQaHlFK1MwZTkydm5KNExIYWtK?=
 =?utf-8?B?TU9ET3JMclJwSTNEQlgzNGhBQWNGVWFHS1UrTjFtamRaaGJQN3J2VnRYYWVq?=
 =?utf-8?B?dXl3cjVjVHRaY0VwRnhLcWV4R2ZyNE9xY2xxZ3ZlV2l4S3RxaGc1R3dxUXpJ?=
 =?utf-8?B?STRoZDl2RmV6b0RwOENVWEQrZlZ5L1dsWGFkTVN6YmE4ZU52U2pqOUxFWlVV?=
 =?utf-8?B?UXhFK1k0MUNLSFA4bFF3RjJKYkVJUUFMU3FSbVhXUXFGVCs5QmQvRW5kdS9p?=
 =?utf-8?B?TGw1L1ppTW5tb3F3MlkvbnJ6R3B0TUJqWkRHM1drTGpLa1pncjFpUXNUeGtX?=
 =?utf-8?B?VjVKbmxlaFZmckVXeS9OdWdPeHJBK3dPaFA4UC9hVHUySFJDZmZWNTJnWXdn?=
 =?utf-8?B?dDRQc0I4djVNd044MFRBL3pTb081VFR5RUx5RlMwSFJJRWFJYzVWUU1pZC80?=
 =?utf-8?B?dnpCTEdCbXQ3bUMyUjJXOWpmVDFTanBOTDVPSDFzNlJaU3pmODNkTmMrdEI2?=
 =?utf-8?B?VGlHbE9PSlVDTldlOTQxMHRvcnQ5MkErS3FITEJta3lmWUswK2VOTlFVeEc4?=
 =?utf-8?B?K0Iza1FZNEhYSFRDcU9XL21YZEFLdmtITnV0RVlId1NTL1ZyRTFMbG9OZkt5?=
 =?utf-8?B?anJXMk9JUlN0eTRLMWpQUUJSUURuQ2lWVGhQN05vWTA1ZWpNNVZSOEpHSDZB?=
 =?utf-8?B?YjRnMXppQkhmK044WUdqdFpILzhEc2hDbmZpaDB5VndSL2l5V3Uzb25DVWsv?=
 =?utf-8?B?citvend4bzRSUGY1VGRjb2tVYmZBY0ZrdDM5V3F4WHY4Zk5oc2F3V2lpSkhT?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4652dac-d67b-443b-fd9b-08dc7b1a86d3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 11:21:44.2363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QUQUMipXZgOLzLIpak1xSL6sOnEflx9uKkYcRJo78QhSaTdLj79Ul5cg9y0OgHSM71GZqhvgrwJmWq/Myr0HGopl2BgRhiivGIPiSeZLP/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4878
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


On 5/9/2024 1:28 PM, Mitul Golani wrote:
> Compute Fixed Average Vtotal/CMRR with resepect to
> userspace VRR enablement. Also calculate required
> parameters in case of CMRR is  enabled. During
> intel_vrr_compute_config, CMRR is getting enabled
> based on userspace has enabled Adaptive Sync Vtotal
> mode (Legacy VRR) or not. Make CMRR as small subset of

As I understand what you mean is Variable refresh mode with VRR timing 
generator or)VRR framework)

Lets not use legacy VRR term. This will create confusion with legacy 
timing generator.


> FAVT mode, when Panle is running on Fixed refresh rate
typo : panel
> and on VRR framework then only enable CMRR to match with
> actual refresh rate.
>
> --v2:
> - Update is_cmrr_frac_required function return as bool, not int. [Jani]
> - Use signed int math instead of unsigned in cmrr_get_vtotal2. [Jani]
> - Fix typo and usage of camel case in cmrr_get_vtotal. [Jani]
> - Use do_div in cmrr_get_vtotalwhile calculating cmrr_m. [ Jani]
> - Simplify cmrr and vrr compute config in intel_vrr_compute_config. [Jani]
> - Correct valiable name usage in is_cmrr_frac_required. [Ville]
>
> --v3:
> - Removing RFC tag.
>
> --v4:
> - Added edp check to address edp usecase for now. (ville)
> - Updated is_cmrr_fraction_required to more simplified calculation.
> - on longterm goal to be worked upon uapi as suggestion from ville.
>
> --v5:
> - Correct vtotal paramas accuracy and add 2 digit precision.
> - Avoid using DIV_ROUND_UP and improve scanline precision.
>
> --v6:
> - Make CMRR a small subset of FAVT mode.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>   .../drm/i915/display/intel_display_device.h   |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 99 ++++++++++++++++---
>   3 files changed, 89 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4a5318ab017d..8a76db59c85f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5458,6 +5458,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_I(vrr.vsync_end);
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
> +		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>   	}
>   
>   #undef PIPE_CONF_CHECK_X
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 17ddf82f0b6e..b372b1acc19b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -71,6 +71,7 @@ struct drm_printer;
>   					  BIT(trans)) != 0)
>   #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
>   #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
> +#define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
>   #define INTEL_NUM_PIPES(i915)		(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
>   #define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)->has_hotplug)
>   #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 83ae56d22b5f..f5ba87fa00fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -11,6 +11,9 @@
>   #include "intel_vrr.h"
>   #include "intel_dp.h"
>   
> +#define FIXED_POINT_PRECISION		100
> +#define CMRR_PRECISION_TOLERANCE	10
> +
>   bool intel_vrr_is_capable(struct intel_connector *connector)
>   {
>   	const struct drm_display_info *info = &connector->base.display_info;
> @@ -106,6 +109,59 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>   	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
>   }
>   
> +static bool
> +is_cmrr_frac_required(struct intel_crtc_state *crtc_state, bool is_edp)
> +{
> +	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
> +	if (!(HAS_CMRR(i915) && is_edp))
> +		return false;
> +
> +	actual_refresh_k =
> +		drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
> +	pixel_clock_per_line =
> +		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
> +	calculated_refresh_k =
> +		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
> +
> +	if ((actual_refresh_k - calculated_refresh_k) < CMRR_PRECISION_TOLERANCE)
> +		return false;
> +
> +	return true;
> +}
> +
> +static unsigned int
> +cmrr_get_vtotal(struct intel_crtc_state *crtc_state)
> +{
> +	int multiplier_m = 1, multiplier_n = 1, vtotal;
> +	int actual_refresh_rate, desired_refresh_rate;
> +	long long actual_pixel_rate, adjusted_pixel_rate, pixel_clock_per_line;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	pixel_clock_per_line =
> +		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
> +	actual_refresh_rate =
> +		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
> +	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> +	actual_pixel_rate = actual_refresh_rate * adjusted_mode->crtc_vtotal;
> +	actual_pixel_rate =
> +		(actual_pixel_rate * adjusted_mode->crtc_htotal) / FIXED_POINT_PRECISION;
> +
> +	multiplier_m = 1001;
> +	multiplier_n = 1000;
> +
> +	crtc_state->cmrr.cmrr_n =
> +		((desired_refresh_rate * adjusted_mode->crtc_htotal * multiplier_n) / multiplier_m);
> +	crtc_state->cmrr.cmrr_n *= multiplier_n;
> +	vtotal = (actual_pixel_rate * multiplier_n) / crtc_state->cmrr.cmrr_n;
> +	adjusted_pixel_rate = actual_pixel_rate * multiplier_m;
> +	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> +
> +	return vtotal;
> +}
> +
>   void
>   intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			 struct drm_connector_state *conn_state)
> @@ -115,6 +171,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	struct intel_connector *connector =
>   		to_intel_connector(conn_state->connector);
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	bool is_edp = intel_dp_is_edp(intel_dp);
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>   	const struct drm_display_info *info = &connector->base.display_info;
>   	int vmin, vmax;
> @@ -159,18 +216,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
>   
>   	/*
> -	 * For XE_LPD+, we use guardband and pipeline override
> -	 * is deprecated.
> +	 * When panel is VRR capable and userspace has
> +	 * not enabled adaptive sync mode then Fixed Average
> +	 * Vtotal mode should be enabled.
>   	 */
> -	if (DISPLAY_VER(i915) >= 13) {
> -		crtc_state->vrr.guardband =
> -			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> -	} else {
> -		crtc_state->vrr.pipeline_full =
> -			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> -			    crtc_state->framestart_delay - 1);
> -	}
> -
>   	if (crtc_state->uapi.vrr_enabled) {
>   		crtc_state->vrr.enable = true;
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> @@ -182,6 +231,25 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   				(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   					crtc_state->hw.adjusted_mode.vsync_end);
>   		}
> +	} else if (is_cmrr_frac_required(crtc_state, is_edp)) {
> +		crtc_state->cmrr.enable = true;

Can we have vrr.enable = true, to mean that VRR timing generator is 
enabled and (false meaning legacy timing generator is enabled)

In that case, cmrr.enable flag can be a special case where VRR timing 
generator is used for Fixed average vtotal mode.

This will help later when we will gradually move from legacy timing 
generator to VRR timing generator.

So with cmrr.enable set vrr.enable will still be set. IMHO this will 
also reduce the change to vrr_enabling/disabling in Patch#2.

Regards,

Ankit

> +		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
> +		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> +		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> +		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +	}
> +
> +	/*
> +	 * For XE_LPD+, we use guardband and pipeline override
> +	 * is deprecated.
> +	 */
> +	if (DISPLAY_VER(i915) >= 13) {
> +		crtc_state->vrr.guardband =
> +			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> +	} else {
> +		crtc_state->vrr.pipeline_full =
> +			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> +			    crtc_state->framestart_delay - 1);
>   	}
>   }
>   
> @@ -317,7 +385,14 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   
>   	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
>   
> -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +	if (HAS_CMRR(dev_priv)) {
> +		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) &&
> +					  (trans_vrr_ctl & VRR_CTL_VRR_ENABLE);
> +		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
> +					 !(trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
> +	} else {
> +		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +	}
>   
>   	if (crtc_state->cmrr.enable) {
>   		crtc_state->cmrr.cmrr_n =
