Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 021CBB2D739
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 10:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A3D510E6B1;
	Wed, 20 Aug 2025 08:55:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hZjw7nxr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12EBA10E362;
 Wed, 20 Aug 2025 08:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755680157; x=1787216157;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1ZL6wimCr36slHEJOu5Cf3y6G5cUuFvBo4d/qiLeiec=;
 b=hZjw7nxrL94Dnu65rSnLKBOIzRAJVsy5GjiJsTlQJlczONscN1J7N9Mf
 FJB95+SzTdkDibuhTq4oDyMe67bHUCcYLRF31eJHJb8JX8jd9dpnDIa84
 9yKFs3UnIqv7liuNxAjWnFIpDAwSq0TjKjwb3hLi/i5PRFezunRXFWhXT
 t4AoBop7bRlnT103W5tM+7RjEQyjsr7c+bQYdxXcOURtLio+P0EpTetbz
 8Dlh0bLwdf2xgH61z4Ba/kv9KtOYTeBInHAeCao2BZ+vwhcgIstIPBQ8c
 CMxjIu9d9y5M8nom+MOOwh5cnzVt4FsZub8x/f0FZnC4kKPMO5syRQo4s A==;
X-CSE-ConnectionGUID: 3XL6ArhJR8GiSV9aAnkiPA==
X-CSE-MsgGUID: obN2qQcBSvOv6bRF8w7NpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="58039148"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="58039148"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 01:55:51 -0700
X-CSE-ConnectionGUID: 5Zpr7Z69R8KywIwms5YDeQ==
X-CSE-MsgGUID: aZgiv7zKRH+l6KR1xIPB/g==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 01:55:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 01:55:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 01:55:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.85) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 01:55:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DCBSaV6WGNqvfMW4IhYipKQ3jAicDeN87rhNFDTRLD2QxedTwXdijQ7+rOU+NrfHA0sdBFoyjLnwHa2mcstwLPa2n2XWGFfceV0mxJSBfnq6721KujJVwJuV4/HQwoNsWMc09OZTOBCsc70rFl7f2rpq3NJ5f0zcZPbe1pACrRN2KVK4j3BhvMGbgQ6JB8UUfiRltpaxz0J4YGkO7+CU63Ex/4isgF7OnaDrXyoQ4/zWxhE8Vw1qtILEG2UmjDL73cD7X6KnFiUvGGFExr5mluSAZBPwhA2x+n6ZXd3VjJTgcn3r+RPngii4xDFzBeQXgykYVe7pJOzyBRzEi+Fjfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LwnKp26GniwC6BOpIbU/wDgH3selcZcs5I+vzsXrUVY=;
 b=RQ84CmsJEY92qQ+JxOjzrzgRxMssCpwXQk6L0Xj3t7XAKOZ4lYwiCX6I0yh0WAmYYOVsSn96mm1omLdkUWSjqR0ox2SoSUp9EY32AVV/eD7naTdVio9KMh38V/Vu8xogc6g/XX3DTmjHTRgXz86wIAZrqqfKCCuKbSnhmnNmWPDyXQbrP9elNugsfDEUAa86hEQwe8WRNtI1LP0RffYNdESiuVBQFwQDtOGsUMMR2Bx32aDaN4f4NL4Mq/j8B3ONqHkhR2fePYipuHGc1Xc0aUi03C0J93l+/Ff7ZiLwRpcsASVjA2Ab0ZdH8949gRW+XUy5F9XVE7RyBqWTKegIHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB6931.namprd11.prod.outlook.com (2603:10b6:510:206::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Wed, 20 Aug
 2025 08:55:42 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.9031.023; Wed, 20 Aug 2025
 08:55:42 +0000
Message-ID: <1b54eaa0-1a0d-456e-9bc1-92999a1afcc2@intel.com>
Date: Wed, 20 Aug 2025 14:25:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20250814)
To: Yu Kuai <yukuai1@huaweicloud.com>, <sunjunchao2870@gmail.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, <linux-block@vger.kernel.org>, "yukuai (C)"
 <yukuai3@huawei.com>
References: <ed8f89a3-be5c-4bf4-97a5-886e8e3f969b@intel.com>
 <2b0138fc-2f2a-e897-65fc-8fad844678e2@huaweicloud.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <2b0138fc-2f2a-e897-65fc-8fad844678e2@huaweicloud.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::15) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|PH7PR11MB6931:EE_
X-MS-Office365-Filtering-Correlation-Id: c0d450d7-072d-4b50-e55d-08dddfc757a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZTF0TFZIU05nQW9nbFZLTVRZeGt1N0ZyWDh3WFVDNGxCdGxZV0Vtb01nN3RP?=
 =?utf-8?B?UGV4Q2preEMzUDhLekpjcS93bVQ5Q2ZhSkIzTk1sZ3d6ekEzMGN5Q0psOTRP?=
 =?utf-8?B?b2hIU1pwWW91SjFXUEZvb3JZQWhra1Nwb3VnTUFPRjhmeXNWRldQS3ZBaHRF?=
 =?utf-8?B?dlJiazlTYmxta1IwNThUVGFITmFKbUtDTmNJcy82eTdiVjBVeG9TV2xqZmNp?=
 =?utf-8?B?eEVJZ3pCaEpubFI2YldNTWx0M294T1NPYW5sc1hjaXRhTnMzRDNqZkdmWWJw?=
 =?utf-8?B?d1hIc2Zqc1U3TC9mWTNSOXh5cFVvb0N1REhwMXNpbVJIdGxlSzJ2M29qei95?=
 =?utf-8?B?REFLVjVsS3JPWkFMZ3Q2YnBBMVFOM0tsNXpDT2c3UldZWjN1MkU4b282d1RZ?=
 =?utf-8?B?eWpaMWdtTCtRVEs3ZmNlS2d3QisvRUgzaXpSK1FvbDF5NVQ5K09Qb083NGRY?=
 =?utf-8?B?QTZ3L3BCaVI4TFlGUWJRZ1lJR0Z1MGc1QkVSd09EaXpmc2h4a0pUcmI4b0Rr?=
 =?utf-8?B?eVpuQm9ISzlYZzZjb0JIOGxZbWh0OXk5SGE3WXNUN2hkZXdXWnVreHprbGox?=
 =?utf-8?B?c2lVUEJJQnRoMTZtMnl2cENoSHg4OWFJK2RaNXh1VkJUMFBPbno4TU9pU09r?=
 =?utf-8?B?SW84N2cyWlkzWUJCMUt2RTcrSXpLbXgrNThvb1lSeFJXN0dnU0FjOGZneVdJ?=
 =?utf-8?B?OW9DM2dWemFYdnpuYW96Ky9FV05NVFUvK2hzYTB3Z0VXeUlxOHhtc0ZDakFm?=
 =?utf-8?B?SytJQ01CMmhQZVhaTnpPTDVnMUl1bWFSck1sNm9qTnJRcno4VlRuUlV0eng0?=
 =?utf-8?B?Y1FEeXYrYmFaWERpKzdnTWRkUVVvUGJ5SnYxUjBmTitlYm1teThmaTVMbitL?=
 =?utf-8?B?cVdQQ2llY1RZb2lHVDIxcWxXYUlsK3ZQYlE4Q204SHZUWGtLajBPdmthelp0?=
 =?utf-8?B?TWxvYTZVM1lKM2M1ZFNRc1Q1YVhzVnBxWTQ4eThNYzVISWhkaGdYdnJlK09D?=
 =?utf-8?B?ekNSTEZrV2tSNnJHR0w1R3R5aGFjb0pEeGpuZllpOFcxZkcvZWczOFZWNnVy?=
 =?utf-8?B?YmZON0Q1N2VSZ09BOU4xVGdMVURxbzdRWmVjeC9wWGZSZzE1aitFbmhVdFJM?=
 =?utf-8?B?aks0M2JxYXJtQ2laTnFONlNFNFRwQUNpRGszaCt5S0VZWm5BWHRwNCttVE5D?=
 =?utf-8?B?a252TThKeGU3WVBtTkUxUFFHRlp0RFJLdjh4Y0wzRkl2b1NRYTM3ZjBBS29Q?=
 =?utf-8?B?eFI4OS9iTHRDbDNacklSTkhYckZuUmtrVjd5OXRVUkkyODBud1ZXU1ZCWmw2?=
 =?utf-8?B?UnNzTWlpUVRqaEg5dDQ2YjV3cEpGSWVrYW1ldkR1ZERVNkZPcjhWWXdadkNI?=
 =?utf-8?B?aHVjZVA0WEVTMysveGhrWmtOR2Jhak9CMUQxRDNzaUNVcW13bmEvdG96YVd2?=
 =?utf-8?B?U0FpTWp3OWsxY0hVM0Q0L3BHaDJRSjJtUlMzbnRrSzBsU3JqZEpEMVpSODNV?=
 =?utf-8?B?Ymh2aXV2b28vOFdlb2U4RU5qd244Y0U3ZUNLMWJjRW4veDRvMVNFRVpDNjcw?=
 =?utf-8?B?SE5wTTZ1dTAydDJYT0p5MlZGdU9sdWtCTnNGV2F2ZE5JeG1EOUY4TUk3SzFh?=
 =?utf-8?B?RnRKcGtCQm02ZERrdWJFNllpMXlaUW43N0pOSUFKNkhNVk5YYW1jOHlmV3Ur?=
 =?utf-8?B?dXoxUjdHai9kaG5iZXpzWmhSVXgzQ25EMGZXU3d1dXEzU043cE04cjdFQUkr?=
 =?utf-8?B?eVpyNW9Kc0o3RnpWazR6V1lwT3lieWE4cDBRMWJRaTJMa09qR29uazcrK09x?=
 =?utf-8?B?b0RhdE9LSHhrUHhVRjR0dGdQNWlENFhQVVJIa0ZtdHJRV2xVQnJVek50UVl2?=
 =?utf-8?B?RmdFYlBSaEtHTnpXT0hNZzE0aCs4WFVjWVVlRXJuKzNTNzRmckhNQ01IV0Ir?=
 =?utf-8?Q?UKHAP2LRgJE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3NrVS94QUVXcEdJTzU0Mkl0UmQvcjZVWE9kbERNTWVKQWpLKzFUS0RmNUNj?=
 =?utf-8?B?MXVFcDdmTy9TaGdsVHM2RGc5ai91V05lQnhsYkNvS3JCWXBFWURFYkNPWGdU?=
 =?utf-8?B?eEtOajdJZ3VBWVEyakt5SUIzd05YMFFhSlNjUFRUcmQ2eVFDZ0VpSWtBUGUw?=
 =?utf-8?B?c3ZJL2x6UlRveml1OUpwUUpheHZuUlZlbDY5a2tTQ2FYL3hsMzR5RC9mbVJH?=
 =?utf-8?B?a0g3OHg0L1l0QnJDdXRUc3dYYzkxa0tjd1BGcGxqc3luUXlXOWVJeDNITVE5?=
 =?utf-8?B?NVdqUXdOMm4ybnd2Vkh3WEQ0TjM2WTdRaTZQK0dzdTFibkM3NzJsWlZnQXRh?=
 =?utf-8?B?ejdEWWtZYUFaMjA4WWtOa0hNWHFUbGdMdjV5VlRELzNxS3o1WXhWSndrYTFj?=
 =?utf-8?B?MDNzOWR4Y01MMVZKeGlyaU5IYjY5MlRTL3B4bGdoZ09tRzNjUnh3cWlYTCtx?=
 =?utf-8?B?SEhtZng5QmRBWGwzc090dnk3TkFlaWU5S0o2ZFZJdVBUSk80NVA3aVZ3Ry9O?=
 =?utf-8?B?VjM0Qng5QXlQVUpqZkpabXZCM0JvVy8wNDVyNWVEbFAraXBSUjlzV0FNM2pa?=
 =?utf-8?B?dHB1K1V1UnlSMjlhVlNzaDF4OE5jS0hxdWdmTlRVZU5Jcno0Nmp6R09xNFJC?=
 =?utf-8?B?WlVWOHVPTmgvaHROZmIxcDlpb2N1SUdSSUpJTk1ZQjlJVnI2T3NTRmNSZHlV?=
 =?utf-8?B?L2o0UTdLRG10OGdqTGRuMjVYaE1Jb21TNVhESEw2cUFFMmNKUmpZT3h0Rmw4?=
 =?utf-8?B?eFYzL0FndGtscWJkVjNSeVlHTXFCcC9Kcy9ENEJPa3hmZ1QwZ3JYTE1EMy9q?=
 =?utf-8?B?ZDM4RWQ5OGlVRGtRa1lYNTErTmpCOUdwVkZjUXZFZ0sxUWhMeTFaa1orcEYv?=
 =?utf-8?B?U1hvUXBmd1pXaER6cjlmRDNyV0lRd0NGZXl4blRBQ2ZNTEJ2OFRJeDRpR0da?=
 =?utf-8?B?aWpPbG8weGpHYXE3cTJIeXBSNlpObXVIYkJISnYxdE9Ya0dCNEx6aGRLaFRN?=
 =?utf-8?B?c1BiSXk1dVdOdmdIQ1lEaUhTc2ltTlE3VHFsak5RRy9EbVVNOCtDNVVwQXY5?=
 =?utf-8?B?dVRUclV4ZkFiOWNSQUU0ZFlCYlRCNzFDMVVVeS9iY1dLc3VHRGRKT1R3dkt6?=
 =?utf-8?B?QWRyWCtxbTFUejJyMHFuejg0RHFmSTJvSGN5TEtxWkU1ZlFFM3VYeUpBbk9k?=
 =?utf-8?B?YzloTnpUUGw3ZWR5Yjg2NEZCTHhxRG9na2Q1NjdRZzJQaGhURzQ0cjJYVFVR?=
 =?utf-8?B?U0YwaHljdFNUYVNEZnYvWUFaRnZsNzMwc3FIZlBSOTNHcHlxaHVIbVZkaThJ?=
 =?utf-8?B?SUNiYk9aY3FkN0dwTm9zd2dRYW9XdDFnK0V3Yk1hcXJ4RHo5bUtpekV1aXIr?=
 =?utf-8?B?LzVQR1NRRXdwOWh4TkVUM3JDQ1dWWHlOazFiTGtBSGNSZjVpVnQvVHBOR2U2?=
 =?utf-8?B?WGhuRFYxbS9VNmpHWjdXK1R5clRmWjJsUlFhQWdSTTlLVWZySnVpNFdkTGFt?=
 =?utf-8?B?VDFwdjJzazhyZEN3S0pSRERDTms1T1FhWjZuV3p1bVplclQ2d0QrNk5FWnN4?=
 =?utf-8?B?bk80SFhnL1ZDdHVDRC9HQ3RXOXNoMU1YdVJKbE9iY2M1VHJPWEtVQjB4V1pI?=
 =?utf-8?B?QXVwZURkNjhIaVFDU0I4TTRkVEMxbTVhcTBYREJBLzhRMGdoQ1Bhd1lDeVJi?=
 =?utf-8?B?SGJZMm5pM3lpeEZvUDBmZzBnSGNlSDR4bFpuZGVtbURUaGVKdDRtenhrQVU4?=
 =?utf-8?B?bGtsWnQ1Wm9ZRUNiQXZjeVhKUVFNTjltUHZ0akI3YVM0Szh4NnpTNGwzL0Fy?=
 =?utf-8?B?dUgwbnFDdFNnWEV5aitQZWpvbVdnVFhGZ1RYQ2VVRHBVZzhqT2wyK1pXcmxP?=
 =?utf-8?B?YllLenZVejdDelhHK3RwR1haUXdNUmtXWGlLaENNL0t3TjM1V2VxSVlEQmZC?=
 =?utf-8?B?aUZ4WmtpZU5pcHdHdDNoanNRTjV1N01nVGpleldaV2wxbWFKd2xYYmxzY0Rj?=
 =?utf-8?B?SDlwVmU1ME1JWFFnQUl5ZkxBZG9OWk9Kc05OcmRyMUVDZnhucElsZVVNT25Z?=
 =?utf-8?B?V2ZRMm1NRkpwVlRnWmQxa25OSlU2aFozV3c2VFg1N2lDaHFSS2ZOUm9OTmZt?=
 =?utf-8?B?UVNoczdmWVJwam0weTJIZzFZTEVITUl4NlpTSFZOd3hWUk1JNG9WRUVwcEgr?=
 =?utf-8?Q?BBNbHseOBC3pRiS7jfTo1FM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0d450d7-072d-4b50-e55d-08dddfc757a1
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2025 08:55:42.2035 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i6WUDAJ9igs5DiCfy3KMgUiKCCKNiSiOj7Ku3TOYatQcF7JE90Sg85TM4SkTvmB67LIiSTXp1+VOOqiWh+3U9X4jeT/6ftICzvl6x+qoiKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6931
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


On 8/18/2025 2:46 PM, Yu Kuai wrote:
> 
> The bisecting is because this patch actually enable wbt now, while this
> patch is not the root cause.
> 
> Following is a fix by Nilay, you can have a test if your problem can be
> fixed.
> 
> https://lore.kernel.org/all/20250814082612.500845-1-nilay@linux.ibm.com/

Thank you, Kuai, for the reply. The patches works for us.
We will wait for them to get merged.

Regards

Chaitanya

