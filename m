Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45568AADA58
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 10:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB9610E76F;
	Wed,  7 May 2025 08:41:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MvL77fak";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3054F10E76E;
 Wed,  7 May 2025 08:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746607263; x=1778143263;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b8UkMQWAq5wLu7oJZOrTdwYJKfdPFBjnmBYpw6XY+jg=;
 b=MvL77fakDLMz+J8WGoB51bZYWtrLCxGWXG+VvZpl4H/3oNVXLFODG8MP
 SBJ/2z48DZNhaFbURkVWWzR8UQg5pki7Tmlv3y3AI1a2DRz080vOiB3E6
 9Z0BKA0wWB4Q1r1WAFH4Rwyb9ygGFiCQsycVbLg06cSMRo1JMc0FtAo7P
 nufc//9TLqkcz0k1TEZXcUsYxo/HybsLUJMfdNcZz6xmdOYoFKl+5MEWS
 co5b9t3SD65a6jHO5vkQFUozruK83P/zvg8fBHg+cIxj8LOn+aFY0Dgym
 3qeDfvazkxhgzo1EAI3aOKGdjpjhNKPamJz6T1B/AK+fa9m9Ui7wWp/R4 w==;
X-CSE-ConnectionGUID: +3+J6B0TRb63iQjdWb+ZQA==
X-CSE-MsgGUID: wmxlxFaHRgGIbyW165mzTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48473138"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="48473138"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:41:02 -0700
X-CSE-ConnectionGUID: n/hLoo/qRMCbXhyJ8SScsQ==
X-CSE-MsgGUID: Hi7GT2w0Smaj/0gSiOzC/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="135759102"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:41:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 01:41:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 01:41:01 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 01:41:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xa9iP8YJKciSCYPO+zIf8HFPuevzfMfupfucdrPLgNGTI3eExTmmwDYhrBeWNsqVzR5qZtLQ88RCjIKC2anzXnsj3ZNrCAhPsR89DsQw23phG9tnYMWwxYosYe6UI1kiA/T8PG9EDdZ3SxLkD8At0CXEtLrzYfdwCIrw6K/N6Phyz9zvkWAiQrcIaygkPeB+MxdzAHb2f0Uc1+i+68Y/nBbv51A1G+Pz5hi2NBfU4MBshKsx+XNjys9a2SAxcgttbPEtRIe1fpPkcR6GyGCQwEGiZ7KYLxaj2jvDXht9L65hwBbOagqRLvxL1TIJ4LGRGSGlBIon5LDWDo7rfDPcgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1dFDaB6KGx1bI6nk1Fzs6s4ydfa1qjmxjhybbFjEdB8=;
 b=myblYZqSI++4TdMvOla1ZjpU2Kg9uJhY+b5If30wmq9+fy0oD+SRGiPeykDfVDcFdXFOwZqeL1MASbpG7GPQpTTj0kTu3P24+t/H9LxEvrH67Hoh8374MBC/ALF5qufFAACh5gOkdJHER2Sais8matdLNNatBs9xjoAryDb7Xa6aBfR6v+Eh35lhvqnIHgBNzwZNvJJBIcThwR9Wzvh89ihUhAfj4+mkqdhZd0PJ1QcrcsWzOxvjs3hP+0gyLugiiULI1JfX/ti0VK+yqFe12Otk9SZsPO81WyJDNMNcHsQY/bYbucDOgvDH9HJ6DwPnBrIei610ajZrdXmRHCOxig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4809.namprd11.prod.outlook.com (2603:10b6:806:112::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Wed, 7 May
 2025 08:40:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 08:40:58 +0000
Message-ID: <c13c9422-de72-4288-82c1-5dfd492faaf5@intel.com>
Date: Wed, 7 May 2025 14:10:52 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 16/17] drm/i915/vrr: Add function to check if DC
 Balance Possible
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250506145517.4129419-17-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250506145517.4129419-17-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0122.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4809:EE_
X-MS-Office365-Filtering-Correlation-Id: e389eef0-7891-456c-c7fa-08dd8d42e3b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ajNkMndmLzVDNmpQSytuT3BGVm5Wb3NnZ095SVhSQzRpTHFDK1ZCTkxuUnNy?=
 =?utf-8?B?anNzeHZvYUsrcVBVTEhlSGdXd2o4TzhKM25vQTYwVHhWN3J5dHlHY3pBQnRS?=
 =?utf-8?B?dnJNcUJhWVFKNWlBSFJ6Rmo4WnVJVWVsdFJaQTU3Y213bmRzb3RFNHh6QmtK?=
 =?utf-8?B?Mm0vOGxPM1FlSHZINlhkK0dsdEZuclZxYi8yMTNrS3d1M2IwUy8wajJWOWMz?=
 =?utf-8?B?RTluZ1kyNlc3ZnhoYnVuSlRNM1U1cFcyZDVleGNncTlQYlZNMGpBMTh3S3BV?=
 =?utf-8?B?bVp0MjF5SUp3dG9veGRNSk04OUV5Q2VKQ0VsTDRFWnV2L1dmYkd0TWpoc0tZ?=
 =?utf-8?B?VTFqK3JFV3htNFFGZHFndStvRFZ2QzJEdklXZXdOVWZoM3I4THBHQkpiS0Mw?=
 =?utf-8?B?UkgvK0pyRmtwRi9POTNyd0c0aHBpNTZGY3I2d0lzYnREbHZMbGdwamdZNW05?=
 =?utf-8?B?V3Vwd2dXZVM2QUhtV1AyMGN1a3dFZXZHNi9uQXpSNklLQ3l2ZlhuM1IzRmJs?=
 =?utf-8?B?Q3ZOazRZKzRoR0pqc24rTURNMnZyM25UemRyMFJES25jMEZNQkNRWno0QktQ?=
 =?utf-8?B?MHJDNHFwQ2JUbFVvVms4UmdmM0NHeHlpMkRlTC9hU0t1Y005eVRlRFprbFh5?=
 =?utf-8?B?ck1RdG84ZkN3SWtabXpyM09SMVRTTFdpY0F1ck9kRTZwRjdaUm90U1lYeGlL?=
 =?utf-8?B?VEhqZDJEaDlvWVgwSE55YnZkV3NoRW92N01zUnRQbFdyV0gybmJLTXZ6elQr?=
 =?utf-8?B?M1ZkSG52ejFMZkZ3UUsvbVZZdHNNcE5qZVVpRCt6dzR0U0ZtWStvYkkxK0tI?=
 =?utf-8?B?Z3phdGRFSFFWV1J4R3MyRFVOWFJmanorODlFS3NFWFNCNXpUUUhrN1JnODI2?=
 =?utf-8?B?U0hJaVZyTzdrS2w2c3VwMWtNQ2J0a201SHBJYzVITUt2RERYRWJoSGd5WE5k?=
 =?utf-8?B?Q01LeFdQK0w4RVE1NFlXN2o0WUNJNXZId2VqeDNPb3ZrL1FDL1VyYjVHaFhn?=
 =?utf-8?B?Z0xQNTE0MmpoRjJtWGRQVUh3eHpsTXgrOG82KzJ3WmNucGljeVM1T0VLcVFY?=
 =?utf-8?B?cUR6VzJFdEltL1U2MkdOUGRUa0pzYU5XWXVyUGg5RVlwcFBjMk5wc3NYNHB4?=
 =?utf-8?B?eFQ5SWZPNFliSWhNd0RMc0NISnFzaHUyNVUxdEgzMlJnTlRpOXovZGJBQm1Q?=
 =?utf-8?B?b0lOMzlJblFzb2xSRC9CUmYwZHoxS2gxZk1kSzdJT2VDanlJNWtaWEorRU1C?=
 =?utf-8?B?djlTYXdNWmpNUk5JNzdVUDJqQjJEYUNEMFhReW9HWGJUSnhsYUhmSjBnUDIz?=
 =?utf-8?B?K2RabHI0RkNiemJZSHRmQkUvOWpMSDFYNHRaWUVZN25qZHpxamhpbkIwN1dh?=
 =?utf-8?B?SUtCMXI5NWp4cEZZTjVWRFVhRForTFJRMFcwZEhwNGJCdUROSTBhM2ZPZTlN?=
 =?utf-8?B?d0VCT2lOKzhNV3dMb3p3MGdLc0JBejlydTVubkdXNGxoWlRqNjUvSkNxaFRm?=
 =?utf-8?B?RmZUcDFwL0ZQdUNnZGVEN0Z1ck5VK2RlNVFhOGVFaGJlMk82WlgreHZZcG5G?=
 =?utf-8?B?M3ZhNytodlEvTXFEZHZ6ZE9vek9tM2dnbGthWms3bUd5amFQaGhUVEtsaEVp?=
 =?utf-8?B?TytyQW9HYnNDS1FFN2ZhQ2ZMOW9tcm5RTTBDRWEzL09KN3U0OWVRcnhLNEFa?=
 =?utf-8?B?NXYyeG1ZdjFDNTJxcHN4VE96Q0dlNXlKbFF2NDAwT0JJNEJRVEJnRWFlOXli?=
 =?utf-8?B?aW1sVGI5Z25YUzU2cUZWNDBuQWwvU3V1MjJneHc5UTJiVFJZV0FuT0FPZjRz?=
 =?utf-8?B?YVl2alhWTnIxblJyWGRZeFpjTmpRNXV0LzFVSGVuZVhEVUdyYWRDZFZYL2hz?=
 =?utf-8?B?Y0h3NTRtMytuczF2RWVJbWFxUzVZQWFMQXAySmduUHlBUXc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q29UNmJtSk0yWm5pdXBQS2lPWitCQnNhcUk2MVNib1dJK0o5NTFXZFVuQ0RS?=
 =?utf-8?B?eWgzckNhRDNzNFlBZTJxeHd5VlU2WE43ZExOV254VjR2eXRFVnBxcnVzaTBi?=
 =?utf-8?B?VlpJc3MwTlRNMFJpc3RuSmJ3WE5pc2c5bTkwUjlOUWU1OGtqcW1ZRFhVeGNa?=
 =?utf-8?B?NXdPZVozaFJjSmdqaHpTbnQzZVkzMGRnZjJlZWI3VTlabHQwQjlFRElMZUlP?=
 =?utf-8?B?YmJYQy96MEVMVUtNRUFTQm1oUmtvNEU4ai90TUs4S0xnSlpPL0VoRGJPRzdP?=
 =?utf-8?B?RllvQnlXM0JtMmRBVlpBNkE0aWh1aGZrYUUvMTB0UFU3bzFVN3A0Q2JFU3lV?=
 =?utf-8?B?T01RbVhGayttSG9MMDJFVmVGNnZDbTVKQ1dBUlRnQ3NKVTgxWmVIOHA1R2dW?=
 =?utf-8?B?cTRUWGtpS3R2N085ZGg1MHBzdUJNV0JOdXZDNzRmejQ1eFNPalhZblEzY1N4?=
 =?utf-8?B?UWU4R3plckF3VTIwMXZ5YVB2RVZSSUpST1ZJekRaZjF4V1BPMmlBWTNYOEtQ?=
 =?utf-8?B?VEwzbEpHZnpBdkNEckt0VElVRFlnSStvSUpEdTRETU1MV290aGN0MC8xZGF4?=
 =?utf-8?B?N3RsVC9ZeldhaHZ4M3g0aC93VHM2Yy9kcmZxemVhZ3ovNmNQeEx3anBhZzdm?=
 =?utf-8?B?RWgxOWY4bkZsclV0WG5MUXVzUkhYR2plSkIxeEg1Nzk2UXBuNFVaUmxkNGgw?=
 =?utf-8?B?ZzdpYkpIa2xabEtXaDZHdUNsdEZ6V2tvL1NsMXVmZVNtUnRpU0pNTUxhdVFU?=
 =?utf-8?B?bG80MEhtTlFibWNGWVZsL3l4Qi9JLzFud1BsRFN0WE5FQ1UvYVdOSU9pNHBL?=
 =?utf-8?B?bVRPbVIzRG1NVmUwQ0hIN1FOTGxuSVJvZzFLMmZEWDRoNHRHTlNHRDhPSE9n?=
 =?utf-8?B?bHI5OUNpTjViWGIzd29PNTExdWo0MnYveFE0dzJtbnA1TmxZc2U4Uk5zaWNX?=
 =?utf-8?B?UlovQ3BuVzluWVEwSlN0QTJHbVlmajJ0bzZhZ3ZqMjBHVDFuSzRiSFlkdHY0?=
 =?utf-8?B?Q3MvNlFpdTZnY3g4aXRrR0h3MXVLTlBRTm9TQUh0andva3gzTFcxQURIY2pB?=
 =?utf-8?B?elR2dklncmlVZHRSWFZ6cWw5Rll3dFczZk1LZ1BTdFF5L1ZHVkdpc0taMjVt?=
 =?utf-8?B?N2xJbkhjN2YrQzBLbEMyNXltRkxka1B0UGl5WGJXblErN3lNQWZrL3VSMG5a?=
 =?utf-8?B?eERHbW5Wd3FMMGxpUTFyZzRyT2VQK01IaEt2b2tnTEFXdTgwdkdteDEvTlZn?=
 =?utf-8?B?dDRaZVBMdEZ3dll4UHRuTkVWSHhSVHhaK3g3bzIwaWwzOTdzYk1oZ3I4R0hv?=
 =?utf-8?B?YzEyWEMzNjkxRU8vcExpNFg4djM1SzU2dThHZjNwWjUyNjFwNTR2TmNZeVJZ?=
 =?utf-8?B?QW9majFvYWhPa1V1R0V5ZzR6eEk0WjNXcWFiZ0l1VGNnZ1Vmd2NGaSt6dU9x?=
 =?utf-8?B?bEUxRk1iY1R6Snp5VVFRdWV0cG04d1FiWk5aMHFBSmtKUU9vOTV0eVhNcWZP?=
 =?utf-8?B?R3lxUzg5Zlg5RHNWdG9FSVQrQ1ZOeG5QVENkdTV4UWRaY3lnME5QZkl4ZkZP?=
 =?utf-8?B?M25lcHJ4K0NCYkJLaDQrVk13TGF3SCt6YXgxRzBKamQyQmtqZURXbXRGMW4r?=
 =?utf-8?B?YU8vbFd3Y1FHc0EzRUdVZHpvcFVHU0ljdjQ3SE1TQyt1THlOUzZ1bkVuM1h1?=
 =?utf-8?B?MHp0byt1ZDFMMmNGbEdsbjA1Y3FITkdjOHFkc2FDTWQ3NW5LOW83Y0VFaTYz?=
 =?utf-8?B?NWU1T2VTdDZuRkphdE4rZm0reGlWMWs4aWNnOUl6blZDaytCUEN2L3V0Uncv?=
 =?utf-8?B?N3N6azBwYTJmWWQ3Z2NmUmd2TFpTUTFSZ1RRREFjcE5tVXZUL2hQWGMrL21I?=
 =?utf-8?B?UXVHRW9MM0hDOUdDT3psaTZwTlY3RnZNOEFrV0d4TmV6RnZwaEZoNU1JRGsy?=
 =?utf-8?B?em02WkkrN0Y4cEl4YWxNVHEzMHIwRWttMDVsZ2JZS2tVNHoraFl3OGIxdkZQ?=
 =?utf-8?B?MU04Qk5CM24zR2dGM0hTMlNDSnpWUE4rT1JQdVQxbWZwb0hRT1A0VnBiSDdy?=
 =?utf-8?B?NDVHV0lnalVnMGlUN1d5TUlERjQ1QXd2d2gvcGkwN0hFTDBZU2hjaVQzL1FP?=
 =?utf-8?B?RDkzNnBoaisrZitmVVQ5NUlYa0xDOEQxWWFNZmVWem1FcUFPSUNuM2JkT1Zm?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e389eef0-7891-456c-c7fa-08dd8d42e3b3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 08:40:58.7524 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EyY2CZaqTRXlwOiRvBOwZ79dUudgnVF1etFlRBognZ0mb88ywMFdBSvuJFssZJVP6ADNcNdCmDSk3yAX1eHkbddupI5DxFE9LIYTHVS6h0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4809
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


On 5/6/2025 8:25 PM, Mitul Golani wrote:
> Add function to check if DC Balance possibile on
> requested PIPE and also validate along with DISPLAY_VER
> check.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 18 +++++++++++++++++-
>   1 file changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 1275be16e749..a88cc9258542 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -256,6 +256,22 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
>   
> +static
> +int intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	/*
> +	 * FIXME: Currently Firmware supports DC Balancing on PIPE A

I think its good to add documentation for this but FIXME tag is not 
required.

There is nothing driver can do to fix this. Later if support for other 
pipes is added, we can remove this.

With the above suggested change:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Regards,

Ankit

> +	 * and PIPE B. Account those limitation while computing DC
> +	 * Balance parameters.
> +	 */
> +	return (HAS_VRR_DC_BALANCE(display) &&
> +		((pipe == PIPE_A) || (pipe == PIPE_B)));
> +}
> +
>   static
>   void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>   {
> @@ -513,7 +529,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>   	}
>   
> -	if (HAS_VRR_DC_BALANCE(display) &&
> +	if (intel_vrr_dc_balance_possible(crtc_state) &&
>   	    (crtc_state->vrr.dc_balance.vmin || crtc_state->vrr.dc_balance.vmax)) {
>   		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
>   			       crtc_state->vrr.dc_balance.vmin - 1);
