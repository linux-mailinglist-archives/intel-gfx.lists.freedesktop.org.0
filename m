Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4C6A9804E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 09:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D18F10E643;
	Wed, 23 Apr 2025 07:16:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GzVlDAaL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 408BA10E42A;
 Wed, 23 Apr 2025 07:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745392601; x=1776928601;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sLATn4PFLjfX7liWjD46uXwuBe/VYiCOkHssxikiaKk=;
 b=GzVlDAaLPuETQ4E1MvJ2speXT9H7MJK8Cfu7an/GTfQzuVt09zjuaI/A
 NWnPUPHsx5E5WGrPCRTGhvC31Mg8aXBOcr3EzCSTjqnouMpyMwxeQNUKM
 LmJm9GW0g75lcCJSBLd3jkP/79wus/t+ptxLvgDzi+6PWYEV9Kst0/MpZ
 +7UA81ljNbJx84rf/SAdEM1Sd9IveH/r+rdO3p/DlZLffIIOLSRFO6Vh9
 7Jm02dZ0yewqrF3QcJOJGkBlpzm5mCFaZxXAz2W16tm67pPWaSWXf2pRi
 u5o+pbO53kq0/VvBM/xQHkeUTfJmPH8FaBOBERRMBZI1OOzk1oJEbISEg Q==;
X-CSE-ConnectionGUID: U4BBAWTZRtiTKILKn2Uvog==
X-CSE-MsgGUID: /hUnBXrkSdmS62aTchSrCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46985674"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46985674"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:16:38 -0700
X-CSE-ConnectionGUID: eMfIr42gRaWtg5T4QaMsLw==
X-CSE-MsgGUID: oLPwnrl7SFqkV0RMgGAQYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="155442519"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:16:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 00:16:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 00:16:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 00:16:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jkAwky5Mb9SD8iJ1JjEKT6OLcCebHCG9IbdT56onvpCzZZgwhQl7Rm0SA/GA1FSVsjUBIhETTYygxcKFo7AVdiUx9E32Epcp8y1T+RYR8ksZK6DzMXBuqXkA8U2cy7EQ0PMokxpX1CHUUCgdldYFQEjkMA6tVRdCMs8YTq1St1W+D6NQAm4CBrckVC9xMAqh1mcxAhGYeUnkm4EXBM05oNdItD2x7f2JtXuwOlTfKTzNXhWXqlcn3GiyGnUdxaYFsQkb7if+EpB+xsKIOYO7ReATCt0yQy5hVlmHerYT6219qHg61mgXoVBstZPe1A5AFba9R7LoBrh5o797bCQBWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nMrJXzVaiC7sb4O6n40wUw59ehl6+9ZUD8BOgvbgrIM=;
 b=lx4AcLBc2mnER/OzFbOAJ6Oaw5m1lM+WDGH+JBxWAiUh451vn3nY56UG6HdP6ZrVzxuirjXnIGb7EJtTq5ZH0ORFk+H/8bFv402OL7xSV+iEyJOGGTsgaBDewhuC4ze64ovVa52yVI91+ndI6JQo6Y+tA+Et+YcK8aJZ1K4L11KEs0RiR5SapRGpsmsmYF1oPwAtWB+WF0qmjdrBgmJvGKqU/zhmPTD+zPfL7341R+TnFeu8JqcoU9Se4Dy7EDr5Tz0Dd0FVXLIV5PcMNB1ju+LeG7mX2Jx1xqPjjEXVSjQTs6XuUvGIWv+3Z70SuK87kUrV98ianqeDnfiCc2IGgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7717.namprd11.prod.outlook.com (2603:10b6:510:2b8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Wed, 23 Apr
 2025 07:16:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 07:16:18 +0000
Message-ID: <222e30fd-74af-4eab-94ef-2248f136fc32@intel.com>
Date: Wed, 23 Apr 2025 12:46:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/13] drm/i915/dsb: Add pipedmc dc balance
 enable/disable
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0174.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7717:EE_
X-MS-Office365-Filtering-Correlation-Id: 9afb72e9-4afe-4973-4bd5-08dd8236bdc0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cjJYa1hHVXRoWlVqaTRrd1YxK2padE1ISWNTSmtRSDBYUkpmNlJJY2YxWWRL?=
 =?utf-8?B?S0l1T2szTCt6MzVnU0tHU2FPdVA4K0pzWGtTU2hUcTRMTTNOMFZuNE9IdVZY?=
 =?utf-8?B?T0lIZ21ldUhsY2NYc2tud3pFcUxXRE9wa3hBTjdHRUNveGhRSndtU21ybk5I?=
 =?utf-8?B?cmV5Q04xYUR0RjF1dzlsYkVpeUZaQTMrR2Ewck9Rbkl4Q0x3UWRGcy9xNHZm?=
 =?utf-8?B?UTFhY2lqVlRUNGJXcVJnV21XZVEyWHovUTlqNS9jUXJKWll0S1djTVZhL3ZW?=
 =?utf-8?B?YkhOeHJVVUVlL0xvalFOOTFWS3Q1SDhDWnIrcjlSbVJudmIrckx3dkZ0N1li?=
 =?utf-8?B?bHhFL3JYWkFBYUVQdlNoaTFUOGVmUytvSWxWQlJOc3BGdXExYlRDWE94Ukxq?=
 =?utf-8?B?U2NranBtWUNYaFFvYzdPNmwzSHU0RlphbVJ0RHZXcEdFWlZRN3JzRkJpU2tr?=
 =?utf-8?B?MkpDaGJQTVR1Z3B1MVZ0M0Uyc3VKMnRZeUhiWi91K2UzZHhmeEFoSHdua3B0?=
 =?utf-8?B?ZmpaSVVxeXdjQ3duT1JlSVFkRDNCMlRzL1MyT2JyR0ptOVhMWGNWdm1OcFpI?=
 =?utf-8?B?ZE5ycGsxSHNKbjRTb0UzdFR0U0txMC9rOUYwRWMzYXR4MHJXVkIvOVVWZkQ4?=
 =?utf-8?B?R1NIbUpFZ2t3aHUwVnVHeFFtV2FPZGdUeGlMQ0E0MzFFMDZRQ0V1Y2FQS0V5?=
 =?utf-8?B?QVg0bXk2S2tSRXJmS0YrWU9VZ3Z4VjN0SnhtU042cDFhOGtUZGhlVDlTRWlq?=
 =?utf-8?B?YUo5WDVRTEZvWStNa0VzTWkxamJMR3dMZUNWMWdSZWlJcUVxNUpkQ05iTk9N?=
 =?utf-8?B?OEZjUTl5MlZQN3ppVTdsUzlhR3NpOGJIcXVORllTRTdUVmxzZEpWRW5UZjYv?=
 =?utf-8?B?bVVPbHgyYW44QWNsdkkxQm5oeDBFOHIvZUVTeFJNOUJuMlI1bXExZmxnQmUy?=
 =?utf-8?B?WE92SEFneEpIUWN1eEFobGNodTF2WE12aVZSajdzbkszemJLcFJuR1Bic0Yw?=
 =?utf-8?B?M0hWVDZQbVdDZW9Jdzdsb0ZjSmorT09qMzVpeVV6NUx3VGpYbFVkNUVzWGt4?=
 =?utf-8?B?Z0p5c2xUYnVFYU5JWDNkOUdCSStsQ2daVnk0dWN2bkFlZXhFUmFIS241emhH?=
 =?utf-8?B?QzBycGFqUUxuVytuMlFvOE1KaFZKK3JUQjVjL080K3JkSWJtNzhLL2lDdVNv?=
 =?utf-8?B?dUtubk1jUFNrWVNjUnRXK1dPY1cyWWszWlpGeFNUNDA0bmsydkNiMXJwRE9W?=
 =?utf-8?B?TXV0MUpLc25MSVJrZitCTytmYXhwMGVOWmlwMlQ4QUNwR21MWEZoSmR4MFg3?=
 =?utf-8?B?M29tV24vU0dPc1AyYVp1VGMwdENZeEJpQk5yeWc5NUN2SExzaUUzQUlBRE9q?=
 =?utf-8?B?d0h3RTlPdGdOZTNERlErcjNOOHRvWlRydEpTVHVpY0VwdTR6anhnbTVZSTlq?=
 =?utf-8?B?Qyt6c3dHb2lSWnRLdXRQdlZYR1diWXUvMmhCL3BjQ3AyWmhYa2FZcHB2WFdh?=
 =?utf-8?B?bER0YWxKdTBQelY4Y2JGM0ZhTUlaZU42WDRycEFJQjlkQmJJSmw3MG9lRlRk?=
 =?utf-8?B?aWQ0SlhQYy9ENGtMeEl2RnNMbDZ0Z0NlYTNOYVFya0ttbHlhckJHMkxOSEtJ?=
 =?utf-8?B?NUlGdTczem9LRzZmMGk0NTA3Ryt4MTlsVy9UQW5zblRFTWlqZ2pWL0R5dVQ0?=
 =?utf-8?B?UDI4VUFOb2NEcUJ1ZVVvN0U2WFVGZ3g1RktnSHhLRDBrVnUwRXR5Z2FVVlk1?=
 =?utf-8?B?eml5VGpESEZBeHBmWW1MWlBPdGJWc3hwdFFRaFBVc05ZV3REVTRLbG9GL2Q5?=
 =?utf-8?B?S0hzQ2ZvakdmZVFWUmNaVFJ6R0NXT2QwdVIrdVBIV1VNVU9hKzlHbkk0UG05?=
 =?utf-8?B?OTVJaE0vV0NEQUtjV21vRHJudThWMTFZZmNWaytpYmp1SUplVkIwT2NsZ3hn?=
 =?utf-8?Q?ACYtyern1EU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUtlSlgxa0tIVi9BOG80VjNYOWN5MHlyTnpIK1gzdEF3TGpiYzBnc3AxRWVQ?=
 =?utf-8?B?dkt2QmZSN1VhQXV3TDFqZWR0RjFyblltSDhPQ3BrZCtPcXJjOXhRTXFmaFAr?=
 =?utf-8?B?Wmtzb2FVS2tJcEJHbS91RUJVTXpjZnBIVThoZWgwdDVPdjhsMncvTk5tcWF1?=
 =?utf-8?B?SHhjUmRXWjVzakErSkZLUi9SK0pmcUFGWitrZHlGbSsvYTdCdHdpbFRCbTBQ?=
 =?utf-8?B?ZXNaVDYxc3p1a0NHMExsZXZzcjEvRDRDcHlzSDZvbW9YZWdpckNDeCs2bjRv?=
 =?utf-8?B?cHp1REk4bkNsczFxRTFTZG41cFBQbUhqaVJoY0dUckhlTnUwMk1MQ3lBSWZs?=
 =?utf-8?B?L25oRUlKdjB5aEJuNWhNTDRNRTJ2VUV0Z3R5eFR0dnA3a0hNTVZtWGdaMEt5?=
 =?utf-8?B?T254RFF6VExtZUs0N3ArQm1WM0VJaHNRZitNc1lTZ3NkblJQc1FHOEYwRTFD?=
 =?utf-8?B?QjVwazVVeHcyUytXTnhiSmE1WkphSTZ0L3ZoWFVBMTY4TVBjZU1mTHV4Tmdu?=
 =?utf-8?B?Rk5Gcjk5TTIvc1Y1SHNuWnNaQTgxNEpXTWJBQ2crOXZmVkhRbC9GaFZ0dnly?=
 =?utf-8?B?Wnoxb05RSml2VjhBWDlaRm5wUEkrRlZmS09kQ0NuUjJUZC9HL1dsMDVnV0h2?=
 =?utf-8?B?Z2tOQzR5MmxUZENXa0pVRHlZeCs5ZlVud0pHVDgrdE4vcGdORVNCd3EwZHc3?=
 =?utf-8?B?OEpwc3paQ1hMM0VVaVUyNHc4cks4Z2pYRW1Nak5tQ2p5V1NNVWdWY2tzV25Y?=
 =?utf-8?B?bjBxYlpKc3hmeGorbGEzVXRyVXZUaVhmRllKcSt4YjhORzdlNmhpS05CNXg1?=
 =?utf-8?B?MFFUcDlMSmtKQWk0Ykh0TTRud2F3WWV1YmV0bHhCb3VLQzZHWGJ2dkt0UlQ1?=
 =?utf-8?B?aitid3FyWUhNcGN1bzgzZy9SOXFFVk0yc1lQbENYS1E0MVIvaE5NaVFQbU10?=
 =?utf-8?B?aFNWdHRGakU0NU50TUtMT0JkUE1TenQ3cldqamIrNGkvVXZteVUwR0YxajNC?=
 =?utf-8?B?V1hKSHh0S0NZYmtWREJSUWpwdzduS04wWE9DNTdBZlF5azR6RlMvd2NHSTN0?=
 =?utf-8?B?dWk4MkhueXQrS3FNRU1aRzlrdFN1U0RtRXFvL2tKN1VkRnZpZi9WcTdqbWVr?=
 =?utf-8?B?NlF5ZitYcXdUVkpBc3RkdWxtNnRaMktMVlJ3OUlTengxTUVqN3E1L2FvY2FU?=
 =?utf-8?B?NytSd1BvVThKcXpYa1lDYkhueEFrREEvQUliSWI2Ulh0c2NEYWZndUhnZktM?=
 =?utf-8?B?STZSTDVSWXFrNjF4L25jSTdlZHpCbDdrOThxalV6L3A5Y2dEZzJPaTVEUk44?=
 =?utf-8?B?V0w1bFZwQjZjV3RYM3hHQThlSzZYQ0JXYTBGd2twWFV4YTBoc3hGRXNROFpR?=
 =?utf-8?B?eXZYZExSTkdsZWJaRUNBWUsxd2tmUzBpTlFrRXFvNEVoWWdRVDFJY2ZjOC94?=
 =?utf-8?B?akVzOWN3enpxTDlScDFoWTVsVzdZNlFHZWtYNDF3M0JWRDAvWjVRcXk4SDBF?=
 =?utf-8?B?NUd0Uks0bVI3LzF3MGVtMGYvOUY4T1NYN1J5cWtzUVlDOThiMnJDN0lxQnow?=
 =?utf-8?B?eFFMNExsLzRaYlZmdTdLM1VRTVhLY2g0RlgxUmZKU0hrNnhwN203T3dvbzFM?=
 =?utf-8?B?SVVsUVVIUndmZGRnMm9peEhGWHlWcUVVTDdhRzB6NlZnR1NjZjdSZDNSQUZS?=
 =?utf-8?B?L0luVmJoWitJcFR5K2xscUh4MWJTMGJkQnJVS095WHkwWkVJWkxxTXU3UTN6?=
 =?utf-8?B?YXlNajVMd1djMmRlRHRKV09mNEtvY0lyRnd5UkV6MkdiMTlaQ2ZZTzlCaG05?=
 =?utf-8?B?SW1DdmkxeXlDNWtta24ybm1vVG9QODRFQStTWGo4QlpRRDlXaWlEUllDTno4?=
 =?utf-8?B?QmtIdnIydGpPL0szZ3Q3MGJwZFhMb3ZwSXFab1Q2RmNnTjFDcERaYVFrVUpz?=
 =?utf-8?B?aUtpNUpyOWtLUlJYUExMNFFBdkRLN2djUlcxVCtER3BncmhkV29WREZMZXNN?=
 =?utf-8?B?S1MvdEtjR0F1ZmQ5eVRndVYwYTRKRmtNazVpTVNvblk0RVd3OW5HSXJMbHMr?=
 =?utf-8?B?R3d6RGQ1VVE0QThOWXBpQlFRbG1XTzkydjNBQnJ4MUlhdGhXOVB1ZFlOT1FR?=
 =?utf-8?B?NmhQdGZIcjZ0aVhMZGNvdlNRTU41NzBNeWxBU2RaUzFIdVk5MDYwZHR6UHFm?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9afb72e9-4afe-4973-4bd5-08dd8236bdc0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 07:16:18.3341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1jZe1PCZJxT3m1CYd82cehY33jA53HxEx2pK8X3+m8bZhOeoYyif1Jb5fMc4AfQ2uj2vNvJkumykH21w8feEYX6pUUAE/SIX4wPPDEfea5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7717
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Add function to control DC balance enable/disable bit via DSB.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dmc.c      | 24 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_dmc.h      |  5 ++++
>   drivers/gpu/drm/i915/display/intel_dmc_regs.h |  9 +++++++
>   3 files changed, 38 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index ff2b97a752b1..e32599a4f68f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -30,6 +30,7 @@
>   #include "intel_de.h"
>   #include "intel_display_rpm.h"
>   #include "intel_display_power_well.h"
> +#include "intel_display_types.h"
>   #include "intel_dmc.h"
>   #include "intel_dmc_regs.h"
>   #include "intel_step.h"
> @@ -1355,3 +1356,26 @@ void intel_dmc_debugfs_register(struct intel_display *display)
>   	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
>   			    display, &intel_dmc_debugfs_status_fops);
>   }
> +
> +void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc);
> +	struct intel_crtc_state *crtc_state =
> +		to_intel_crtc_state(crtc->base.state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write_dsb(display, dsb,
> +			   PIPEDMC_DCB_CTL(display, cpu_transcoder),
> +			   PIPEDMC_ADAPTIVE_DCB_ENABLE);
> +}
> +
> +void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc);
> +	struct intel_crtc_state *crtc_state =
> +		to_intel_crtc_state(crtc->base.state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write_dsb(display, dsb,
> +			   PIPEDMC_DCB_CTL(display, cpu_transcoder), 0);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index c78426eb4cd5..74dcd142f5b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -10,8 +10,10 @@
>   
>   enum pipe;
>   struct drm_printer;
> +struct intel_crtc;
>   struct intel_display;
>   struct intel_dmc_snapshot;
> +struct intel_dsb;
>   
>   void intel_dmc_init(struct intel_display *display);
>   void intel_dmc_load_program(struct intel_display *display);
> @@ -30,4 +32,7 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool star
>   
>   void assert_dmc_loaded(struct intel_display *display);
>   
> +void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc);
> +void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc);
> +
>   #endif /* __INTEL_DMC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 39e4f70005ab..6788afb816ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -174,4 +174,13 @@
>   #define _PIPEDMC_DCB_VMAX_F			0x555A8
>   #define PIPEDMC_DCB_VMAX(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMAX_A)
>   
> +#define _PIPEDMC_DCB_CTL_A			0x5F1A0
> +#define _PIPEDMC_DCB_CTL_B			0x5F5A0
> +#define _PIPEDMC_DCB_CTL_C			0x5F9A0
> +#define _PIPEDMC_DCB_CTL_D			0x5FDA0
> +#define _PIPEDMC_DCB_CTL_E			0x551A0
> +#define _PIPEDMC_DCB_CTL_F			0x555A0
> +#define PIPEDMC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_CTL_A)
> +#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
> +
>   #endif /* __INTEL_DMC_REGS_H__ */
