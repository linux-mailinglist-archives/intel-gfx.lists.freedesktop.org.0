Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5793AFDDD9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 05:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E98E610E70C;
	Wed,  9 Jul 2025 03:07:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VnZ8fWmV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 306D010E709;
 Wed,  9 Jul 2025 03:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752030478; x=1783566478;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sRkJZ30DdCvjMTq30ACgfNYgoehzx+KvofT6oLAv3dM=;
 b=VnZ8fWmVbBxpwvrSj4lw5Epyi/lnXjbpz3/eJwNjO+XcJW+xpILNc2Xo
 NRU1z1rWf349oVBhf2avXi5zkD9LkSZ1yQV+2J6iwfCD3TvwOO7u2iXuP
 +Of5lfPAsIgKiyxDz6mtdgQfcNo/eWZhSiqMB3mk0hzhlFmyPgDiZTfmL
 +A6RRsRxMXJ0xvqkd1x6TihJ/mcTKRthXjuUuJ2+8itbi4dJeBGH+98oH
 T+sPXWK+r0uuD92UvDYG1hb1KckF7UzsDDUGy/AzEfk7pH5bPKdbeqyrd
 FmokkAHlOd9i/sZdY0rKZOT3P6zYfshsGEFGADuLTXj1eFwbGzgHwrc6j g==;
X-CSE-ConnectionGUID: BntN04yLQH2YJR1Vd0gN8w==
X-CSE-MsgGUID: 07NnetHKTpG4+fA2u+S6dA==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="56888018"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="56888018"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 20:07:53 -0700
X-CSE-ConnectionGUID: cHkuFc1+THayNBT67GbL5g==
X-CSE-MsgGUID: nGUXVjpMQQWE5PWzFmulYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="156385828"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 20:07:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 20:07:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 20:07:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 20:07:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WrtMrXnH5Dcr+a9sD39EZ6iz3LUxOHOQRx5dzQaSDeS8XgYDTjntE5Zf3COW6j6GjFo+wMeAZOHSVurWN1qFP/2xg5bElNMDQj/fal7XbwXlmpjBjE/YVsakmZwkJEMaBPn6cTbvAXvLVWJs3DkWKJv2yfrJ9TdrT4TXf381LjuLM8AM25Rb9GPB9VRa4U6oKPMcQJlqMBbN4FApbkZgeDkSnjRIBPGGZTrgmm8FUmRqE7I5oPxpq5i61AFDDqf29LVKQx/12b+tJj5rIcSSrIObPtAsmAQ2LUijVbp8MByo+2eGY4pT93Xw3jXpesG6a6Edchr9jT+8QJl7qDo6mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CBOEuIaKcAFlIkQVVsn34oZk0Nc7XTiS4IA+4USFv9o=;
 b=QI9iey/ARhz4iln56BUNDqo5eboDKw+aQKl9ts64b7Tzy/UtgP4ytCMqXj+u9QHbvfhxI+P1PvparbwVglqpd0wAMMsRJwdmZQmAomjvFMZD5dsnkKx2SYH0lSt5tMMiEI6A+kftWwd4ND5aCWqpOPhUcg3QFabHUMr3By5RR4fO2BLpGtK2d7R4U1F4GevPRcX7wIvJWRBYDADBXfh2FiCDbkCkLBMGCy+oda5nSVWm5y7bxQnTpEl0cF7tU8oDOFckyB5TaMQXiLIbIsRGZqd/oJLJJJ5w+sujPYaLPGijora5QUe1FCG8Mf0l6J7qfTjjY9nmsoKZ4VENObnvZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB7869.namprd11.prod.outlook.com (2603:10b6:208:3f6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Wed, 9 Jul
 2025 03:07:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8901.024; Wed, 9 Jul 2025
 03:07:15 +0000
Message-ID: <b8e11773-71b1-4834-9476-0db1b2bb9daf@intel.com>
Date: Wed, 9 Jul 2025 08:37:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/scaler: Use intel_display as argument to
 skl_scaler_max_src_size
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20250708043328.1086192-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250708043328.1086192-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0014.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB7869:EE_
X-MS-Office365-Filtering-Correlation-Id: 297cc3f9-d819-4f4a-0ced-08ddbe95b4bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NkpBd1FpTnpkbFNLRGJCa2VkUng0M244c0ZRazNUUjU4OUZKaWY5K0Y4anBt?=
 =?utf-8?B?aDl2UE1ZNGVWM3hWR0o4MjhoUTlLa3MwWHg4OTFpaHgwZi9JYUVtMll2L09q?=
 =?utf-8?B?MVB2ckpHUXdsRGV2NEU1dTFOeWgvVzhQSENWY3FsTEhwK056TGU0NTZrclBU?=
 =?utf-8?B?RkJWOXdlK0tMZ0NOTWlGWUVRcC9RTGVuZlNGQ2g4elYzTEU3bDljbDgxYzFG?=
 =?utf-8?B?bG1xWi9SRkxNNkN5Y3Q1eXN5ZW53aU93d1BWaDBtQ1hITUZLaDFZTnZ5QVpW?=
 =?utf-8?B?SDhUN29yRzhyc052ZTN1ajZOb1htY2tpaitibk84c3ZGNHdqRzVTaFdmcGdk?=
 =?utf-8?B?Sk1aQmNobXc3RlFjdlRncWhaSVM1c0wwTVY4WHMybzVSSWJGTmZwOEpCMUF0?=
 =?utf-8?B?TEgvNmh0RjZ4Y3R2RVZjalk1QVpJLzJ0eXJ6SXRKeThSTEZ2cWFheFRoQk9O?=
 =?utf-8?B?SFdlc2V6emRMaVdtcXpWS2piNzBPMXFud1NLOEFRVU5BdDh4T3hmbUN0YnM4?=
 =?utf-8?B?RTZTcFhPbEwxV3JackFKQ1RLdHhjbnRqOHdCNDZ5eXF6cG1zMWtvWmdwcWtt?=
 =?utf-8?B?OG1hbXBVTXNPK3JLdHBkcmJyL2xxc0VhVUJjdHNLaWczekU0dkdUczJCdTdO?=
 =?utf-8?B?dFE1REczOFJWYkNUTXhqeE04bFR3ci9YMnh5UjkwVjNTcThoZGpPbjdHa2xq?=
 =?utf-8?B?d0NWdDVPdWVPTmVibFVsTnBldE16Y2dPTjYreDVYb3VBRTNDVHhyMVVBY0Fr?=
 =?utf-8?B?ZkU3TU96a3VuVHRuS0l2eHh5SnJGMjc2MEJIUDRyRlBzWjJQTHB3OU95MTh6?=
 =?utf-8?B?eTRZVGVHL1ZuSnNnZmJjdFRGWHB4SVhZMVFiTWNFMnFWUkJNSXJ1bHVTbGZ1?=
 =?utf-8?B?RUxSNEd5WWo3NmxKT0NoQ3RpRHlUWXlsRHljR215WXBPeDJOS1luNTA3bkJX?=
 =?utf-8?B?WlVWQi9QTGFMdEhvOHZKV3VMYXhQM01MWXhKWTJYTVFzQzJGU29NYm4wRHBx?=
 =?utf-8?B?UFhDUEgvN1BzSFhjejduaFZlRk9zelVHNmxwUWxKZnVJdDJ5VDlwVVF5Tktv?=
 =?utf-8?B?enQwVW9FSFV6UGxPaWp4R0VxTEVPUU5hVjNJNW95OTNuZHF5dUNhOHQ2VGta?=
 =?utf-8?B?RDN3elhYRGcvWk1TNGk1VDFLMUJXWnhOMHJlcndVRlFqWUE2d21NOUpKV1Fl?=
 =?utf-8?B?MGhTckxWMjhGaTFlaHVYa2xNSG01L3ZUL0pYRlVCMzYyTGpOYUQ2OFJrdnlY?=
 =?utf-8?B?UGpiWklVTUhYRUpqNnFZMHFacjljc1VqRkF3UWVZQkxXdkFNV3AxbDNTYmww?=
 =?utf-8?B?VkpIcndqdnhvdzkxa21WMURYWWVrR1l1MEErZlhyYnEwRUh5WHFTd2pYZzNS?=
 =?utf-8?B?cm1NRHhEb1JoRVVSNFJNTzhwL1JtWFFWRFRST2NRVElqQ2VJaFdNZW9QdmJH?=
 =?utf-8?B?U1FUY0t5d2RpNDFHMDZ4TURBTUE3aEIyMHlJNUo2NThqR0YvREkyWmk4WmRC?=
 =?utf-8?B?YVJUK3J6S05mS2RQV3d4OVppZUZNVDB4MXBvVXFoVEpoUDF3bll2bVlyakxM?=
 =?utf-8?B?c3p1SktnRGhUOVdCYUhnbEhVVHhtRG1IZWN0bGxGMERJT2t0Zk1rWllwa0xQ?=
 =?utf-8?B?NVRNcTM5ZUk1cWRvTEdWL1JIRC82UWt3UGpuVDQrTWFYZ2taUjVuZ2JxSUp2?=
 =?utf-8?B?SGlubHduclF2RjZYVitPUWV4WWZjdWJkRTJXbGE2Z2FyMGpvenlITUJNdGJ0?=
 =?utf-8?B?WmlVanpuT3VGVTNnb2FtTzk5THVwWEd0OHFxUm9SOHBoRTVaK2VRNHRGdXI5?=
 =?utf-8?B?YzJHOFVjL2lDSjFCUkNWZmJBQkhmbExOcksxZmQ1dXRFazgxWWR2cWgrUTlh?=
 =?utf-8?B?WGJXekNBL2VjNXNNczJ4WnZySmd6N0NLZTJ0dHdmK3pTdW50YkJheGZodCtN?=
 =?utf-8?Q?fVo7bjcDvug=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eW5QbmU0eVBBdXVDLzNLNnhaWlNXUEVYd0trNHBRVnJJT0tyUUVoWlhkY2NT?=
 =?utf-8?B?cGhOdE9SUlMySzJVeGFoQ0FZR3dpaUxnOURjL3p3U1JrNU9YVHJ5dkc5aTcw?=
 =?utf-8?B?R3pMWndFWDJLSTNMUWxXcEhySDdMWUgrVXNVbTBnRnJraW5YQnplM3hZYlZq?=
 =?utf-8?B?S08xQStTQ0RCa1NMeENhT0l1NnVIR1doa0NIL2FNSW5kZ1RJeGhaam1VZE9G?=
 =?utf-8?B?MVVyK29MQnVvRHlPdXlFUXJjc25lWDgwSitYMlVXbEtoRWF2TzZPU3QrOUNr?=
 =?utf-8?B?WFFTQVlXYUM5MElhU0l6TllLRDdZUitTd1ZqRVdmM280VzVWTDhGd2RsajE5?=
 =?utf-8?B?cC9kVENLWGlQbVBPdTJUZVJXWjdLQ3F5SWJ6c093Ylc5ZVRvT0xodnpod0pM?=
 =?utf-8?B?KzR2OUZhU0pWVGhqaVFqSW5pZlJLbWRDTUpJMWMxMlF3RXVtNUErWWRpaTZw?=
 =?utf-8?B?K2VxUFZSSEhPRzRxQURGS0ROdjJOcDl0TWRSb2huaUJOQkFjOFMzS1F3Y1hr?=
 =?utf-8?B?U3IwVy93Z01VeUNZT0FkWStPTUNwbE5xbVNFd0psbGhpVmZReGZvSmJ2QW5x?=
 =?utf-8?B?cWtQZE9QajlzVU53MXV0MGlyUnh1UURYQmNrZmxsZE1JUEFFSU5YRUVjS2Vw?=
 =?utf-8?B?NjloNWxyOFB6WFQvZVY0TjlZcUxIZTBlZDJUUWZ4YlBHSTArSVpkUG93ZlVq?=
 =?utf-8?B?L081UWJCYTM3R0s5SmdQQmZqNm91dEduMks4YTcxZDdWa0Qwa0NJODdmS1cw?=
 =?utf-8?B?VW40SXdNRmRIQno0VjF4UDFJc0lBN2p1ci81SmgvNWRhdjF0RlpWci9GSzA0?=
 =?utf-8?B?eXZ0SC9mbDg4MFR6eXplbmdmNDhPMGJPMk5TVlJhejM5MzB6ODluRDdwL3BE?=
 =?utf-8?B?bmlmUTF5YldlWm1JeWw4UE5pVXZPRmVYQUNGS1RnOXF1R3B0NnprSk5BYy9Z?=
 =?utf-8?B?Szhkc2dpT1hJY0t4OGdhajN2Vm5nc3J3ZGQrQlNwNGdZQnIwb0dsaGFqdnJI?=
 =?utf-8?B?VlhOQ3dlRTdybitweExUMzlQZEJLY082MEtEbS9MYUR5ODRKOVkzUVdZM1Fj?=
 =?utf-8?B?SDhVUTNoaDkyZ2NiUVJmZkU0U1JESURHUTYyUisrcEkwQWJHRkR1WlF3eGhh?=
 =?utf-8?B?WXJBdlB0SWlyL1ZEbWFTR0wzSW9iRDJtS1NJV2lLRkI2MzN0T2w0a3BxMDlx?=
 =?utf-8?B?bjBUT05uU2FQemdLcnc0Q3RQMzlFNHJ2QlZkN2NFOGRWSWV2cENwQmFYblpR?=
 =?utf-8?B?QlpKb2NudVd2ZFpxcDhUbUh4bW9LdnRObWdJS3BtVmZLemppMENZT3l0Q09y?=
 =?utf-8?B?SUN2ZUpMU1B6cy9iVkJhcS92c3BISmdrejlZU1d1QjRCKzlqZjNhMXNpazBV?=
 =?utf-8?B?RUt4N2x4R3h3OEZ2TlZiS1padVBEckNnRktiaXhhZ1B4RnhLaHplTFhubkZl?=
 =?utf-8?B?V0lUZ2pkSlMvdTJRejQ4dVhLSk5RdTBXeUtWakI4NHpaRUVTZEFKYTIwaHFS?=
 =?utf-8?B?anVwSUZvYUpiRXQxdzFGWXBFQ3hIOHRGQXpHd21sQ2Z4Kyt5UjFTYUErTFJR?=
 =?utf-8?B?K2RqL3U2N3pOOGxjWXJ3ek5WSmdDVHgwTmxvQ2pZaVU4NmRiWUc3Mmt4QmRW?=
 =?utf-8?B?UnRqcklJRkpNN3B2RmU2ZE10Zm1yeHVWblM4UHF0RWZUMmtUVjZSMWxPTkFU?=
 =?utf-8?B?Q1lySEkyRDFDbTJxV2VwdHJEdWd5a0pycytPWE9qeTlUdmVSZ3pqeFlnajcr?=
 =?utf-8?B?SWk1MytISXpBaDJPL0cxckNXdkpTaUowcTB4b1B1NUlLSEhmdnZzNFR2cDJH?=
 =?utf-8?B?UXR0YlMxSzdRcTdHVE9VUEkzSndFSlJQT2gwRlduMGdQajAvSGNMSGQvTmxu?=
 =?utf-8?B?MGtPbjd1R014TmVEU000NE8wYmhScHU0ZVNkTkxHcVRBMHo4L3VRVHEveVZR?=
 =?utf-8?B?dytXWmo3NW9LQlZZeU50QlBzRC9ZczEzY2ZhR01yVzJySnJWS28wT3RWdWNQ?=
 =?utf-8?B?QlhLNFcyTjMzbTV0MEEzZnBWWW9BbkYvUTY5ZFVhUEIreXdVOTFRR1hQQ3Vt?=
 =?utf-8?B?Y25ZeUx3NmZGa2wxZDlBWXpNODd5b0tCd2g1MWFDYlBpUUJXb3BJVHBDQ01F?=
 =?utf-8?B?S2xxSUx4N1N1b3h4MEJNcldKR1lSNWg1Y05CZm9Ld1BVc2Q4K2JzVW9OSmVB?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 297cc3f9-d819-4f4a-0ced-08ddbe95b4bf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2025 03:07:15.1651 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bcA1yQW9YYg6yY/6NStB40kH+nkjl50NR3EKG+j/AJBcbwp138bVpdLlavhP/A6C+RPfqiwBvNPx8fwUe2R3cfSd8dEd5kzeJmhZpfwzk/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7869
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


On 7/8/2025 10:03 AM, Suraj Kandpal wrote:
> skl_scaler_max_src_size has really no use of intel_crtc other than
> deriving intel_display. Let's just pass intel_display to it directly.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index d77798499c57..a6ba9da03542 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -91,11 +91,9 @@ static void skl_scaler_min_src_size(const struct drm_format_info *format,
>   	}
>   }
>   
> -static void skl_scaler_max_src_size(struct intel_crtc *crtc,
> +static void skl_scaler_max_src_size(struct intel_display *display,
>   				    int *max_w, int *max_h)
>   {
> -	struct intel_display *display = to_intel_display(crtc);
> -
>   	if (DISPLAY_VER(display) >= 14) {
>   		*max_w = 4096;
>   		*max_h = 8192;
> @@ -201,7 +199,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>   	}
>   
>   	skl_scaler_min_src_size(format, modifier, &min_src_w, &min_src_h);
> -	skl_scaler_max_src_size(crtc, &max_src_w, &max_src_h);
> +	skl_scaler_max_src_size(display, &max_src_w, &max_src_h);
>   
>   	skl_scaler_min_dst_size(&min_dst_w, &min_dst_h);
>   	skl_scaler_max_dst_size(crtc, &max_dst_w, &max_dst_h);
