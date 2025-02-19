Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B992A3BEF8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 13:56:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC19710E7E1;
	Wed, 19 Feb 2025 12:56:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qracxvv8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86BF310E7E1;
 Wed, 19 Feb 2025 12:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739969810; x=1771505810;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xNjapn1q/MySiX0WpiyPG9JLEVsJ/XrLAB7S0vDwWHc=;
 b=Qracxvv8u5Qv00j+ViqjHneNDlEH9rTp7Moo5qPESsZtvOKpwT7i2L1c
 zTHzeQE0UmTzz/UbURVjhI5YJBWAqv5UX8FnAMev6glcv+EShl5852o5u
 Sh/OYOA9nHZ1unSsaxaiLbrPj61UtaSRtigI94i8qvUZNnKHZFl2eZAk4
 agaHt4eTvjI8PIISM9ix7aWmBK6BUj+OSeNOyWexT/VbF3UZ69bwpGf6Q
 I282bvZCw7YcnBBXUpfTwTzhKzeZ2MB/WTVjOTOjKBU7DXh/aPXDJSJ2b
 ivZDFb9k29hjXNSouf5ByIR9xarzlx/aAVa/4tSWvAgVtvAiNd/gNC3oK g==;
X-CSE-ConnectionGUID: PoVFSDz6TwSHmBCpN40F+A==
X-CSE-MsgGUID: fHmW3luLQ+S6ZGYtCVW6Hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="51323013"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="51323013"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 04:56:49 -0800
X-CSE-ConnectionGUID: LkPqHFuWQz6PIiInSZzL0w==
X-CSE-MsgGUID: Iy1Qd7yLTlWYteS1VRQ5Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="151910613"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 04:56:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Feb 2025 04:56:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 04:56:48 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 04:56:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ozziVQ9wkrM7vrJc/M6gsG2KZtUYTqKOaQHVTwfhxnv/8StaOFjRfF1Rdd0A6hIc5Ky6/LadqThxr+XxX6urhAWwxmgFDNFrzQziUK93MXAO5eQ4PTr/020AyiqfvA3HXR0aOU1aAlg9m3aaAQ3iFxB5kVrrOjjgcahu4/h5GMfkQIsgXHw1ms2DOqTSxST2jhCtLbdxGf0kmROzUij0c7oOWq0+Ep2lPIPChtAqZzDcw21aCEts9j8Ul5L0ecbLAphxBXaGteK3QpYm3yhCA4Z8sHX1JT4F6I8UWEnEaWXfyxjwQZKmOP0rxVWKolCzr4dL1meV7XlzIVRf23gWcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Qkl7LRM06WH4XnUVZ1YZ/JlRm9ytwMYoPowY4b+NZs=;
 b=ozuInU5msktNN+DoIgvsf+Ssj7p1MgD6dsVwHj0cKGtaj57ey9MwgDVU9rIBujcfC2mCOotJ/rCv9V1awI5uyGxB52gfrRtj+g3DE0CMVhVU9vgxPBuUA3ROxwd80y0rBUT44EMQcQhpedUo42BRSAQO5L7keWLoac7iCZYbLZ1tTGUA9xEcVixho5PLvX3f8N7KuQG3CYK+WFAY7MjXvmwgEcBGYcT2Q5PjcXbpPSRC716qArDcQhOfZ7XG8FuFH0LeaI8U6diPuSMdMzfM2IYgd92Oj5c9AmmqyzHTFnxm8SwRGcThJnz+sQE+8W8xbfD4ZpzTcoTfl9ujMUJEZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7074.namprd11.prod.outlook.com (2603:10b6:510:20d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Wed, 19 Feb
 2025 12:56:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8466.013; Wed, 19 Feb 2025
 12:56:31 +0000
Message-ID: <a226475a-544a-44ce-b495-97e6fef8f4a0@intel.com>
Date: Wed, 19 Feb 2025 18:26:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/19] drm/i915/vrr: Handle joiner with vrr
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-14-ankit.k.nautiyal@intel.com>
 <Z7N9RHhQDltsygA_@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z7N9RHhQDltsygA_@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7074:EE_
X-MS-Office365-Filtering-Correlation-Id: 1413e011-3bbf-47d3-2974-08dd50e4d4ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d09Ka05KTU5ZOGZXWklVaVU0M0NybkpmNXF3MjBkbkxFK1BSTU8vNnpiRUV3?=
 =?utf-8?B?ZkExRTl6bEdCWE9ocmZNU2o1V0RtOWJFU3VKSHVBMTJ3bkJncXVDbmpidk1O?=
 =?utf-8?B?VHZ3bWhuMFFEbUpLSmc1RDgxSmo4SWQvTS9QSVlYc3lGVUVVVHFlUHE2S3hs?=
 =?utf-8?B?aHhpMGFuZm5ucDh4clorWUFoOThpNGpWNWdTTTQwajBQVmsvWWN0eC9MczJS?=
 =?utf-8?B?VDNZTEE2N1Vna1dLNm1FQUt1R043QUFVZTMybkpLQ1N2WjJWdU13YldpZGRL?=
 =?utf-8?B?WUpQaXlpdG9xSmRaTXp5d0JoSTJoNGNUZDYySnJ2K25qeDUxVGJPRjVBYnIv?=
 =?utf-8?B?QlJBV2FkQWNQWlRpSURJT2NVdXlPOW1iSUI5S3ZubEVwWUt4VUl3bERkZ0lx?=
 =?utf-8?B?QkUrM1oydHRyN3hKN2hhUWhQV2h1QUF0cTFGRmhINUx0VVdKbWhkTjltdFpC?=
 =?utf-8?B?T2VZZnpSYmg5Q29aNTgvalFNeTA0K3BaUWYyYnBxcnFvNUt6MDRIZnp0eFNp?=
 =?utf-8?B?U0lXQm8yZWx3TThlRmMzSzhsRzFiem5vNCtKZUdHRHBKc3hBbFdQWVpoRHkr?=
 =?utf-8?B?dVI0YVVKYjlZM2Rpb0FWNzBXNjF5Y2wyMlQwUHVzVUg1eG4yNFNydTFkSTF0?=
 =?utf-8?B?U01EbzEwdkUyczhmejBiZUoxaGRnVlhpSTZ0VE90NFFTMFBkcHlYOW1JVlBw?=
 =?utf-8?B?Q1RNQjdESnZsWWVFSFVlY2R0NFNzWGxGVkRYTm16NEdkRVpURGltZm51bTZa?=
 =?utf-8?B?VVcvVzcrZkIwRDVtNVlRM2Vqc2tiMGRaSmwzbURHdE9ML1BpcFgrQTd1WDJp?=
 =?utf-8?B?ZkxoS1VJMlF0c2FkckRjMlpOd0hKN2NDdkZUQnE1Z3ZPUkNhSzVOVzJURkpG?=
 =?utf-8?B?b3VVSnBkVDJMM1RpcEw3bXlJSkRWNmQ1UHVES0pnZDNiajVlUHVoelRLKzlt?=
 =?utf-8?B?V3pZQ3hBYk83NVc0SkxnQUphWnhITlA2MC9KMnRkNkVXa0U2dWpqaGszSDls?=
 =?utf-8?B?TktsT1VlTDd0NUFiS3c1SjUvL1cwSHNMODNUS2FzY2RLOWRWblprZ1JIS2Ux?=
 =?utf-8?B?eUpOV3lXdEViRDY3OUNhMEJVYkJ1NkRIWEJXdmJmRnRXSjBVY1MrQjN4S2Vm?=
 =?utf-8?B?MDJ4ZS8rb3E1dUZaR1ZrY2ZiYUxBSVhWNlp0dzVlUlRVWEdEMERtQVd0S2dN?=
 =?utf-8?B?Tys3T2k4Zng5SDFod095L29NNWhZNGQxZEE0OGdrL3V0TzFaZE9wb3ZRNXpo?=
 =?utf-8?B?YVcrN0RCTGFyeGlYUGJUTkNJSnJOOHpkTWhpais2WDZLR1B3Q0phN2hqTjF0?=
 =?utf-8?B?b0Vla25iSFYxL050NWorZGdMMkM5azdFQy8zdjFlbmRPbWNPTVNvVWRaL3VU?=
 =?utf-8?B?RWhTblNCT0JTNVZxM0xmWE9LMlc4bCsvdmRIbzI4T2VmbUVGT29HaE9QSG9m?=
 =?utf-8?B?ZkdUVW9JOTE1Z3IrYlBaNlR6MEczZi9LUERKVzZxSDZkRkIzMXllc3NSWVly?=
 =?utf-8?B?Nno2MTU1Um9iRHRPbmNkTW9XYjBFdE55TXZ3SVVnOUxqR1hlTWdRTlFQRVpG?=
 =?utf-8?B?TFdBK0dyMngyOHA1VE93ZmpYd3lLZ0kvVXYrZXlUSmRDWUw2cmNoalk4UTJZ?=
 =?utf-8?B?RWdGcUVqak1scWY2QmlJTGZqZ1J6RlpId2h6Ym1FSjZINy9lRDczTlA1QVdi?=
 =?utf-8?B?QmlFRDlJQTh0UmptRml1MHkzc25mM21NYUp2bEJUdmZtQmRGQXpNVEgxdmsv?=
 =?utf-8?B?b3AzWldrUmdNTGFKWTRjUnFZVDRKazY3L1BObDdLQUxjbzhuY3lVNlpSdzF6?=
 =?utf-8?B?aE9MeVZHd3JST0tqWEJadC9jTGpXa0syS29xVUNuQ1dUa0lUN0xzQ3FRL2hm?=
 =?utf-8?Q?8XLjtfTuyACja?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzF2M25PbkZyeTBGOEpBcWJlVHRYa3NkaThZSmF6a2NSZE0ySy9XTkk4RTZ0?=
 =?utf-8?B?SkJyNEZTQzFCQ1lPVU9yMXRxWDROeGdUU2xHSmFpcmozKzJ5Y1I0U1Z0YmRC?=
 =?utf-8?B?c1EvOS96OEcvYUZUcXJRc1d5K2JqaHkzWDdudnBXV3Rob2VQYyt2dnpJdHo0?=
 =?utf-8?B?RDJnWTQ5MFBSK1BwTHZScmFRa1c2TGQ3THBNNnRJOXpGZTRoL0t0YndwRVdC?=
 =?utf-8?B?YkErVXpRdUVlYlVuWmV0VFlqWGZrWVp1aWNySXFNcFFxRE9PVDlhdnJ0c2gy?=
 =?utf-8?B?QmRKdFFZaC96R0NZdDROV2hlOVJ5SGJMR0ZkSk05TVlRdlVuSnFEbFY5c2h1?=
 =?utf-8?B?ZkVaT2d0NjROc0thTlhGT3pUWERnUW5nU3lOWW8vVEppeEZRRFhFTStkdmk5?=
 =?utf-8?B?eWlidnNEQVRkemI1MFluWjZPemtZMjhjaXRlc213VUp4cHIzTFdyVkpHeXR5?=
 =?utf-8?B?bFloK3VJelBoL1BDbFIyRHJNeFBWNGhEWXpkdTJnQkErSWR4NWVCaXA4N2dE?=
 =?utf-8?B?eE9hZnQ5RE9SYmtGbm9vTVFPWUVRTjRKdXhibnRqY0V0cTR0aDRLM0tIV25v?=
 =?utf-8?B?dGhtVk92K3FOZkJBR21KVDlZOFdlUGNtaUlRMlh5NDdibHNEOWFHOE5ycUdy?=
 =?utf-8?B?ZFM0TkFWM3ZNZmxpK1Q4eDd3dU5EK3dtQTFkRXoxSkNmTkY5OGNMd25FS3Yz?=
 =?utf-8?B?cHVKSjhLN2JYeFQ2WXYrNjhZUXhhWWkreDhZdlJqQnZ1RnFqWjhia3hGS2dL?=
 =?utf-8?B?dHY4Q3IrL0h0MitqQzU5N0Y1V2dkd0hNcFZLeDFNQ0F4a3kvUWVTQnpoaFV4?=
 =?utf-8?B?bHZneWdnbW9UZmF1UlVkN2p2VGdmVHlLYkVROE1SLzd2WG5yNDlVNi9LZ2Q0?=
 =?utf-8?B?bS9YUVdrcWVvVTNNRG12aS95MTZSK0tjcXdFQlExbFRzS00wUjRKcTB1WFg4?=
 =?utf-8?B?QnNGZEEwcWx2VCt3YnlCQlpKUzBoU1NINGRiZDgzU1lOME94UWZITzFhYWZz?=
 =?utf-8?B?OUg5U3ZjK2RCa25IUGwyUTNLcmo3SXBHS0g1dDZmNzlVREFKbHRWa1ZPRlNa?=
 =?utf-8?B?SFVEU0t6VWhKWDBVeHhKUEhiUm04L1p1TVFLK3V5QWRFSStwUjRVZTU5clFU?=
 =?utf-8?B?TEJCbzFuclVnVUJGQ0VhbGdnYmlxZEIrSFRXazdSdHhHdHJYVCtlNVZEcTIw?=
 =?utf-8?B?SjY5bGg5aWNPZDRQaUo1WUk1SzVQd085UkFxVCt5eE9PNllrZDVIZDVUeC82?=
 =?utf-8?B?RXZQeUgwc1hUeFNTcVBGK1AvU0JkK1VmcDRYVXRhSlY3MlJZa0RJZEswVHVV?=
 =?utf-8?B?TEZKYk96SzZRTFRNTTFxRUlLcG1OcVAwd0VrQjVXM2dSTlIxQW92amZGSzB1?=
 =?utf-8?B?N3NoaEVEOUd3dUdnMGM4TXluNGlRdHdPUGdMY1ZGbkZ5bVNBTWFLejNjUGxq?=
 =?utf-8?B?TU9JMjMzVUh6SWgyY1hHWW4ra0orNk1QeThFRElYemJUVCtmemc5VlgvbjV1?=
 =?utf-8?B?anZKRm1JU0JZVDV1S2ZabDNMUkk5VGcrNU1KbzFrQ1l4SnNFb25FdDRoQlhB?=
 =?utf-8?B?ZStNWG92c3FUY2VQWmxrWGxOMEtnMDVUYis4ZG9zdmkwZ1MzejVTVGE4aW8x?=
 =?utf-8?B?dVBBSUNaUWlwN2MveDdvYmFYL3prUDQzMHVibzB2VERiTzlIcHlsYjRoVkho?=
 =?utf-8?B?dGxMVzFCT0NuOFFSbEZXeC81cVVhUlZVQTUxN00vdGlEVUI0a29MWm51Mmwz?=
 =?utf-8?B?VithMXlOM0YzdFRZQjVjdTlYT2lrWUdCRXJzRGVLcjIrc2NPNEI3b1RVMGd5?=
 =?utf-8?B?a2o4VnhUV01UZ2NlWkcyZlpUcGNsclluK3VWRFpJVDJmaFhVTUdNNlZpN2NB?=
 =?utf-8?B?Uzd4elhXaHc4RVdKNm8xaXB2WnZhVGl6dTMvRHF0b1pCZlcyZ0FrWVpIS0Qx?=
 =?utf-8?B?QTgzYnNLVnhhcUwyR2ZoZGQ5VGRHM2gzV04yekE1YzM5VklkQTIwVE9OU1pE?=
 =?utf-8?B?cm4reFRTMFZOTm90OFFSRFZhaENiTm9hSGU4MDY1ZEwrU0FVWmVwUEorVUwr?=
 =?utf-8?B?NHdwelNiMVQzN0trV29jV0s4N0RGa1oxOU11WGhUQTJ0Ykh1aUNhdzVZMktv?=
 =?utf-8?B?bEt2dHd5b000QzJ6U05CU2xVVi9YYm00SHZHZmlMaFU0NkM1dmZvZXlrKzlB?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1413e011-3bbf-47d3-2974-08dd50e4d4ed
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 12:56:31.5727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7PJTe6H6NL+jiXIKnDhOTMwoDAC20LCrzMjiryIRlrdkVOGhalWZQVGxO9Sw30rl/u+IyKyQVwmiOjWnm59KCAReGKdRwPNCCOD73xmKiGI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7074
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


On 2/17/2025 11:47 PM, Ville Syrjälä wrote:
> On Fri, Feb 14, 2025 at 05:41:23PM +0530, Ankit Nautiyal wrote:
>> Do not program transcoder registers for VRR for the secondary pipe of
>> the joiner. Remove check to skip VRR for joiner case.
> Premature. We need to figure out how to correctly sequence
> transcoder level stuff vs. pipe level stuff in the commit.

Yeah. I think for now I will drop this patch and get the other bits in 
place first.


Regards,

Ankit

>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 19 ++++++++++++-------
>>   1 file changed, 12 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index a4ed102a2119..61b4ec3756e8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -332,13 +332,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>   	int vmin, vmax;
>>   
>> -	/*
>> -	 * FIXME all joined pipes share the same transcoder.
>> -	 * Need to account for that during VRR toggle/push/etc.
>> -	 */
>> -	if (crtc_state->joiner_pipes)
>> -		return;
>> -
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>>   		return;
>>   
>> @@ -430,6 +423,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
>> +
>>   	/*
>>   	 * This bit seems to have two meanings depending on the platform:
>>   	 * TGL: generate VRR "safe window" for DSB vblank waits
>> @@ -481,6 +477,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>>   	if (!crtc_state->vrr.enable)
>>   		return;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
>> +
>>   	if (dsb)
>>   		intel_dsb_nonpost_start(dsb);
>>   
>> @@ -545,6 +544,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   	if (!crtc_state->vrr.enable)
>>   		return;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
>> +
>>   	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>   		       crtc_state->vrr.vmin - 1);
>>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> @@ -587,6 +589,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	if (!old_crtc_state->vrr.enable)
>>   		return;
>>   
>> +	if (intel_crtc_is_joiner_secondary(old_crtc_state))
>> +		return;
>> +
>>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>   		       trans_vrr_ctl(old_crtc_state));
>>   	intel_de_wait_for_clear(display,
>> -- 
>> 2.45.2
