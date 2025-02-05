Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3387A2861A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 10:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04BD710E395;
	Wed,  5 Feb 2025 09:05:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TgbtObcc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F2010E395;
 Wed,  5 Feb 2025 09:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738746321; x=1770282321;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=J75zFWOGsn8TbxJBYBmht+Q0zIRXBXlh4un1cbvNRq4=;
 b=TgbtObccysXok+Tp/X4Y4vufni43xt/gF/qInPNyN7SmsTXcf9/S/Pri
 vddeHifaSP+B7zewkyP4bdOAJXuqOGs3jSBZHnMDk3zJLB3dMsd71t9L+
 HHKlB/97oYdCLMEHzzqrQFypIU+m26/TLNE/f2h12zDgITDbfksbR7jP+
 dNcurLxzKmVK7p9HeJAQAyUNMOhHZSUgDGrvLH4BI6qmEGPYd75/JrdCj
 PBD66Pk92P/QbCK5jA/pqPQMbg4Xa9MvMcRctFlBuueQrKZz9p3IdNVjf
 h7ZDDoOyvD+Hzo+oECIx9eeBYTSrvEIwlUY3GRuR1FJDoI9NdcMZXbNkY Q==;
X-CSE-ConnectionGUID: YbxbUCpIQJ+BN7KMwlQ9Ng==
X-CSE-MsgGUID: E5r+WYCcRGG2Gf2YqiM59Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43054340"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="43054340"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:05:21 -0800
X-CSE-ConnectionGUID: f6YFlLXvSYKG4E/5SKapAQ==
X-CSE-MsgGUID: Efo1uw7XSq+0hMiXfE6iGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="115894088"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 01:05:20 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 01:05:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 01:05:19 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 01:05:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wnY3kDkFh+P8PGkUkV+6tqWiMsSLMBTGIWDKx7NUsDn0kghhfZPEL4/b9InxR21clyOxViPevONhT0FTiTDSw3LxZZR/AkQFrsXas6PL5ywgOOmecieu9cujlSjUkoicV/bfj7oh3HuYrZnMvCUR9FGTNXwnDV819VUYg4Nnq1lm5k9eulTr7B6QEpGs9sU/d9i1gfbpI8l0icu/qJDFX1hPkLkDP37EVTUu3Br844aTiqz50ivE5JSLV6abmh6+VbnlwR8OMdD73bqeVo9oL49k7kBCI0eHdMQPPBQA9jqxU1nQIf/quPBRcgCYfo2gfijoRDf3TU1GRhRqwAoQGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x42RXfVnZDd++oCwr1snxQrx6WBKaMGuVvHHYViBEew=;
 b=PbguhytTOWaBjQufGYE63mwgvQhPOAd2SBP5F6BIhhAMAI/xCmPj32WFimFmFgehuYLaaGGpsYUGw066Mq0PLYSINo9NiQDwQesT5iZljayA3V/Qhazv0STqITjggEmKCmi96jA5W/+QHMebqib/2oSHTn39uerdG2CN874nClS5Gq5GZH5MVtpGOmDIXpUZOXWQ6I27tudF5+u2fuJ6wlOwiVF53IOse8Y+rVA+pAdV21XvODUy1igzaL6AZnEH7GHcShme19NW8SCwaTCAcefsEt3Yq3RdZj/PepdgCcrwNAJoYe3OuO2CPQBnDaU4NecBfHJSNPFUze4fNLUtTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5769.namprd11.prod.outlook.com (2603:10b6:a03:420::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Wed, 5 Feb
 2025 09:05:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 09:05:03 +0000
Message-ID: <b97b65c4-6ede-4b2b-9021-c0686a78afa1@intel.com>
Date: Wed, 5 Feb 2025 14:34:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/6] drm/i915/display: Add registers and compute the
 strength
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250113104936.1338290-1-nemesa.garg@intel.com>
 <20250113104936.1338290-6-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250113104936.1338290-6-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0008.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5769:EE_
X-MS-Office365-Filtering-Correlation-Id: bb09af4a-fbd4-4283-434b-08dd45c42cdf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Tk5lT3g0eUx1QmxqNXhubGk5em91ZFZUNUpjdmdUcUVwTCtWOXJ0Mmh6VlBD?=
 =?utf-8?B?WHJkeFdydTdRQmJiN25JK1R6N2FrL0ZRNlBqdTh1a2JCRVduNEZPRzZuNGtB?=
 =?utf-8?B?UW9KVEw4Y1JIbC9lcm9kVWNmRnE0akw0L2JMQ0xUMHhpQk15Z2FJTUhpNExQ?=
 =?utf-8?B?dlhSaVhtazNNWmo3b0Q1b1ZaUU1EZTZrV1dNNnIzZHNMNTVhZjF1azFoM24z?=
 =?utf-8?B?NHBrUEpORkt4RjNaSGVETjhYZlpWbkYvaElpNlh5cUpYcUdYVFUvTitNTjFJ?=
 =?utf-8?B?Y0hqTTBrTmdtTWNkK0pKT2Z5R2NaM3ZWSGpNMFd1YUxHSWxRSU1KR3k1cDNR?=
 =?utf-8?B?aXBydUF2VE5OQzFOWndzUTgvZjlKNnVXcmR1dHBqRmFTVjljTmVwL1I0VFpy?=
 =?utf-8?B?S0t5S0hLeE8wMXh3M0gwbTFQeCsrd3FJenBKTjhuaVdpQzN0V2ZwUFFZWk5u?=
 =?utf-8?B?RXJxVGxiOXFVRGxqYlBuRlh5LzB2QjZhT2VYdEtBWFBWS1NnNWZMTGMrbzR1?=
 =?utf-8?B?dkhadnJlSVF2TlhvWkVqS3hQWlNiVU5PT1owdElhQWJnZFRzNmEvME5GZkFm?=
 =?utf-8?B?dGJUMUZPSUxXNVdDS1JrWTlqalNCMlB5bDNrK0d2SStMMm1zTTBGNnpNaXJP?=
 =?utf-8?B?SW5aZEtnTE1lKzZrbnQ3Zkp3alpGRmkwWUt4ZVduTVowWmZNV0NCdHpUdkM0?=
 =?utf-8?B?Rm84RnlwVXBjdkFaVnhXcmdwQ0NyVzUySFFhZEdoUE5wcG9NYldFSk9ZNVRF?=
 =?utf-8?B?RUNNQXhybVFVakNMZlZ6QWtSbVVhTmorby9hM05TOHJPQjBpVTlpRi9MWUwy?=
 =?utf-8?B?LzZPSjA2bVF2OTd5RVRBdEVXNzBjTEJvazVsSXBvS2NIQWVOZE9ZUGpiYmxR?=
 =?utf-8?B?dGRpVEhnZ0Y0bTE2VmNUOXhtQWdDc1o1azc5cXF6eWViQVQyRS9Bb1JGcEU1?=
 =?utf-8?B?YS9CYXNTN3phSENBK0xSM044Y3R3RE1xNE9kcllIZGlyWjIwY3c2bWtqNUt1?=
 =?utf-8?B?RmFCNXdLN05yZnJmSit2QUx5M1lBSmc2bGU2dzBtb2FPOXNFeXFVZzF2N3hC?=
 =?utf-8?B?N2VyWTFDR1BTcks4cW15aUd6bXJFd0NORncvRUJoM0hrdzFaL3QrWEIvVVRn?=
 =?utf-8?B?dFhaRS9ha3h3R245K1k4bkpCUStiZm43ekJKMkkzQjlHRmI2R3M4UlpNNWo0?=
 =?utf-8?B?b3ZyT0pvNFNVZG14dFFQcFllMEQzMXcwcmlOQnlLWE1QUWxVUm9ueE12ZTN6?=
 =?utf-8?B?bXVnTVNtWjJJS2FISjIrQTRzVVVtemVpMzBOVkx5REorQW5HWlFTR0ZIRE5M?=
 =?utf-8?B?VTl0TUtINENUeHRUVGo4dWZkczFHZW9RNnpxdWdoR0kxTGVDbnRlOG9sV3l2?=
 =?utf-8?B?eG9HZWJ3MUgyZ0Rhb0ZxRzNRZ094dUY1ZENHeDk4NXdOdkpndlFxUUFrNzVk?=
 =?utf-8?B?OWlTRE9DeHFLTUU1cHdSckUwdkVNVXVFRXRQdEtjZThRdWR5SnZydGJoMUw0?=
 =?utf-8?B?Z0M5K2MxZkZYMVU2OWJpYnhmY0ZDbEFaNFRLeHlXN0FuaVB4UUFFL1A0Z0Ez?=
 =?utf-8?B?dmZJRWtHckxLZkxkM1pmOTVFM3A0K1l4bVNTR3dzTXYrWmYyaS9FbEQxZ2g2?=
 =?utf-8?B?RGdxMzNHVXpySFhlQVpEbTlNTEc1b3lqMFZyK2RzekJIVnBIdFlMVWNKUmhj?=
 =?utf-8?B?V0tGU01nR1ZtZ01BaWgxaDI4K3NybTNKZUsrTDMva3YySmpTSjdCZ2QxZmJK?=
 =?utf-8?B?RXA2d3RJOGdSa0J5ZXNaZWVLQUFTL0I1cjlVMzl6Q2V0NXZXazVjV2ZZWU1v?=
 =?utf-8?B?RlJpeHpFMzdrL1B4d3IyVE9FL1ZVNy9mTXFWczFQV0plek5kZmVNTkFsL0tR?=
 =?utf-8?Q?Wuf3pZIhYOHJG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWtIL2IzM0c4aFdVakpqQ21BUGZsNDRTNEpLZEJYMjVoVDhUemQreS9ab2lM?=
 =?utf-8?B?YkJkWGpVU3F0VVNaUkVDYUgrT0JxamsxbGQ0eDdOM2pyWWpSL2trRjdpY1Vt?=
 =?utf-8?B?UGo3SVFXOTMvMkJ5T0pwZmF3MG5sSUJURTh0bEVIVXdSdGU3QlZ2b1N5R3kv?=
 =?utf-8?B?bUMvNFBSWGsyMVRwbk1hUnJ3TXdCZ0RtWWdjejR4YjR6WW9Qd0ltWTF4SVBX?=
 =?utf-8?B?UGV5bWxhd0pLYkl2QXV4UVNGaC9iMWRaaWlZYi96RGFnTml5b0NEUThRbW5l?=
 =?utf-8?B?WG5XRTlxMlpzZ3RvM0dnajZXZFNFcE16NTNZQmxzUnE2RElqOHlTT2JISWZY?=
 =?utf-8?B?WmZnRERzdjFKWFFzZXFHSnZqMjIxbHRLTEdVeHR1dUEzSjMwbUczbHNRUzB3?=
 =?utf-8?B?OUh1blZrM2JscThlWmNTVURtSkZrTW81L0t2YVA3OHlBa3UrUnUxZ3V4MzhF?=
 =?utf-8?B?ak9oelBFRUp3UGlETjZDcTNXcCtqYXhTRzBNK1VIdy9MUW9IeWZXdW9ibG1J?=
 =?utf-8?B?WFJvTDM4SlVoZElnbXJLSUV4dXBmUG9EMDJobko2azFYeERBNitHa1I5Z0Zx?=
 =?utf-8?B?L2FSNm1GY0xLVDlTS1JpZzB4bjdrU0ZGaUVITnE4V2lqZ3oxK1ZQRHZaT2tx?=
 =?utf-8?B?b3RvMXg0OUkzekY0THByc3ZGOXFFMXRJdzR5clphNWlFcU9nQjVPeTRqODFC?=
 =?utf-8?B?WTJLenpXbEMvcUc1cmw3SkhFbmpzeTVDK05malJqQnpRWDNCL0dQeG1LUGRD?=
 =?utf-8?B?MWFNd1pxWEJibG0vV2tjRDNyOGdQTTNrb0dlTmVPK0I4bXZZRHl2RGtxaWpq?=
 =?utf-8?B?ais0VWlxT2pJeTdXWmh6dFlXUktHZFV6b1dHZEF1Z3BBL0IySGxVazhiRjc2?=
 =?utf-8?B?NVpSeGNMS3NNWmMzVm4yR3B1VWlvVWdDNVc4VkZXQjRqMjQ3NzRZTzhnVE05?=
 =?utf-8?B?Y0ZJdGRpZEF6dWZvanB5T3ViamhPMmxkcURiU1RwMDQyYmpVWG5nUEhYamMy?=
 =?utf-8?B?RlFNbDJaN0ZWT3craFo4aDZIV3VvWUV3TUlBeVJ4bGgxcE9ENUxiSmpMWS91?=
 =?utf-8?B?cThFU3NNK3cxc0MreXhZdkhxbmcyZGIrWC83eDZWbXU4Tkg3bVM3c3VJeVlK?=
 =?utf-8?B?Ni9nTUIwSWJ0MWhDSFZuWTlZSnBuWUFDUUY2RFBNd0lwUTNSRTdkeG1NaDYz?=
 =?utf-8?B?cmgyNGZTNVg2b3pSblI1aHNiY3NaSlNYd2VkVXBTZzY0eklxVkNWUWtmcGRl?=
 =?utf-8?B?V0tCeXA4U0RMZXlVRkFGM0JYZWVITWo0SzVoZ3NSQUc2RHU1TDNpV0FBTFVn?=
 =?utf-8?B?b1VLamFwRUFqRm1sbmVoV0crczBLZzNMR2g1RENHV1Q4N05HcnJPK0FmZ2VU?=
 =?utf-8?B?NDJtVkpRR0Q2MGRpalE5RWlsWEh1SXFFV2FQVWFaZm5zYi9KUXZLWGlEWnpl?=
 =?utf-8?B?bVExcmQ2czZGN05nRlM2UVVIS1pQbTNoTGRoMjkrQ0NzNGFYRHBEYTdzS3o3?=
 =?utf-8?B?SW42aitMZ2lod3pBaDdKOTJhcmJqa3h3U2hUQjkrV2RDUHp3YVVVOVphb2Jj?=
 =?utf-8?B?NE9kQ05LaTlyZEJXYWhCdzQ2YjljZzdjTFBsc2NoV1NOemtNd1E4Q1JYQno3?=
 =?utf-8?B?R1R1dis0VEFsVHVKbFRBN0YxQk9KZGhnSWJTWUgvdXlweXUrWVF2QUVweVJR?=
 =?utf-8?B?ZUpmUk1iOE9lSlB1QzBQdVZsRlZ6dkQ3T3BOdFBwMnZHR2xld3o3Q1h0dFla?=
 =?utf-8?B?d1NOV0tkSm9ERjV3RWxzRE5xQ2N1SnJwTmhicmIwV0cwQlAyWkp4N1c5UFdx?=
 =?utf-8?B?c1Awc2YxNmlOMHU5USt5dmlkWjV3MlgwbFBLQnRJU1Z3NnEzTDYwL2hpNFFp?=
 =?utf-8?B?VnVMVUdMUzZ1RTJpT3BFM3lEdUh6OWQ2ZTJlMDgydmx6MEhHYTFob0Rzb1hx?=
 =?utf-8?B?TGROWUJQbjBRUEZERE9naDlIVUFjd1JXUUdldmJibnVicFJkczBhY0xuYUFj?=
 =?utf-8?B?QXZyNzBvUVAvdnBIWjg3MjNFbzAwa3U4eGZTYmtTdVBZMTFiR0l2Nmx2Umh5?=
 =?utf-8?B?cDZYc2hncTBML0FYYm5uN1VxN0JIMDg0SnpqNFFHQ3ZYZmFDaTFJRCtCUVdC?=
 =?utf-8?B?NjBoVWczVXZkME9wMmM0RndRdTdsZDBTZ3hNSk1TRkFEcU9WM3A3cWlKUG45?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb09af4a-fbd4-4283-434b-08dd45c42cdf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 09:05:02.8943 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zgW+USFNhFQ+0YtpvMeFHNB8PU0IZvth74LXBCjvL20Zbure66qgqY8q1rStA11nZMCEqW1olhhcE/ePw243QY57sFMuyr2H/ODHSigfR0o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5769
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


On 1/13/2025 4:19 PM, Nemesa Garg wrote:
> Add new registers and related bits. Compute the strength
> value and tap value based on display mode.
>
> v2: Replace i915/dev_priv with display[Jani]
> v3: Create separate file for defining register[Jani]
>      Add display->drm in debug prints[Jani]
> v4: Rebase
> v5: Fix build issue
> v6: Remove erraneous condition[Ankit]
> v7: Change the place of compute function
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_casf.c     | 108 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_casf.h     |   7 ++
>   .../gpu/drm/i915/display/intel_casf_regs.h    |  20 ++++
>   drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
>   4 files changed, 139 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index aff7aa6d3eb3..e918d6cb9911 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -17,6 +17,9 @@
>   #define FILTER_COEFF_0_0 0
>   #define SET_POSITIVE_SIGN(x) ((x) & (~SIGN))
>   
> +#define MAX_PIXELS_FOR_3_TAP_FILTER (1920 * 1080)
> +#define MAX_PIXELS_FOR_5_TAP_FILTER (3840 * 2160)
> +
>   /**
>    * DOC: Content Adaptive Sharpness Filter (CASF)
>    *
> @@ -64,6 +67,84 @@ static u16 casf_coef(struct intel_crtc_state *crtc_state, int t)
>   	return coeff;
>   }
>   
> +/* Default LUT values to be loaded one time. */
> +static const u16 lut_data[] = {
> +	4095, 2047, 1364, 1022, 816, 678, 579,
> +	504, 444, 397, 357, 323, 293, 268, 244, 224,
> +	204, 187, 170, 154, 139, 125, 111, 98, 85,
> +	73, 60, 48, 36, 24, 12, 0
> +};
> +
> +void intel_filter_lut_load(struct intel_crtc *crtc,
> +			   const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	int i;
> +
> +	intel_de_write(display, SHRPLUT_INDEX(crtc->pipe),
> +		       INDEX_AUTO_INCR | INDEX_VALUE(0));
> +
> +	for (i = 0; i < ARRAY_SIZE(lut_data); i++)
> +		intel_de_write(display, SHRPLUT_DATA(crtc->pipe),
> +			       lut_data[i]);
> +}
> +
> +static void intel_casf_size_compute(struct intel_crtc_state *crtc_state)
> +{
> +	const struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
> +	u16 total_pixels = mode->hdisplay * mode->vdisplay;
> +
> +	if (total_pixels <= MAX_PIXELS_FOR_3_TAP_FILTER)
> +		crtc_state->hw.casf_params.win_size = 0;
> +	else if (total_pixels <= MAX_PIXELS_FOR_5_TAP_FILTER)
> +		crtc_state->hw.casf_params.win_size = 1;
> +	else
> +		crtc_state->hw.casf_params.win_size = 2;
> +}
> +
> +bool intel_casf_strength_changed(struct intel_crtc_state *new_crtc_state,
> +				 const struct intel_crtc_state *old_crtc_state)
> +{
> +	if (new_crtc_state->uapi.sharpness_strength !=
> +			old_crtc_state->uapi.sharpness_strength)
> +		return true;
> +
> +	return false;
> +}
> +
> +static void intel_casf_write_reg(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	u32 sharpness_ctl;
> +	u8 val;
> +
> +	if (crtc_state->uapi.sharpness_strength == 0 ||
> +	    crtc_state->pch_pfit.enabled) {
> +		intel_casf_disable(crtc_state);
> +
> +		return;
> +	}
> +
> +	/*
> +	 * HW takes a value in form (1.0 + strength) in 4.4 fixed format.
> +	 * Strength is from 0.0-14.9375 ie from 0-239.
> +	 * User can give value from 0-255 but is clamped to 239.
> +	 * Ex. User gives 85 which is 5.3125 and adding 1.0 gives 6.3125.
> +	 * 6.3125 in 4.4 format is 01100101 which is equal to 101.

This should be b01100101 to avoid confusion with 101 which is in decimal.


> +	 * Also 85 + 16 = 101.
> +	 */
> +	val = min(crtc_state->uapi.sharpness_strength, 0xEF) + 0x10;
> +
> +	drm_dbg(display->drm, "Filter strength value: %d\n", val);
> +
> +	sharpness_ctl = FILTER_EN | FILTER_STRENGTH(val) |
> +		FILTER_SIZE(crtc_state->hw.casf_params.win_size);
> +
> +	intel_de_write(display, SHARPNESS_CTL(crtc->pipe),
> +		       sharpness_ctl);
> +}
> +
>   static void intel_casf_write_coeff(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> @@ -96,6 +177,8 @@ static void intel_casf_write_coeff(struct intel_crtc_state *crtc_state)
>   
>   void intel_casf_enable(struct intel_crtc_state *crtc_state)
>   {
> +	intel_casf_write_reg(crtc_state);
> +
>   	intel_casf_write_coeff(crtc_state);
>   
>   	skl_scaler_setup_casf(crtc_state);
> @@ -103,8 +186,24 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state)
>   
>   int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
>   {
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (crtc_state->uapi.sharpness_strength == 0) {
> +		crtc_state->hw.casf_params.need_scaler = false;
> +		return 0;
> +	}
> +
> +	if (crtc_state->pch_pfit.enabled)
> +		return -EINVAL;

Perhaps a comment that casf cannot be enabled if panel fitter is already 
enable, will be better here.


> +
>   	crtc_state->hw.casf_params.need_scaler = true;
>   
> +	intel_casf_size_compute(crtc_state);
> +	drm_dbg(display->drm, "Tap Size: %d\n",
> +		crtc_state->hw.casf_params.win_size);

Instead of printing here, sharpness enable, strength, win size should be 
part of intel_crtc_state_dump().


> +
> +	intel_casf_scaler_compute_config(crtc_state);
> +
>   	return 0;
>   }
>   
> @@ -149,3 +248,12 @@ void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
>   					      filter_coeff[i]);
>   	}
>   }
> +
> +void intel_casf_disable(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), 0);
> +	drm_dbg(display->drm, "Filter strength value: %d\n", 0);
> +}

I don’t think we need to print strength value here.


> diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
> index 568e0f8083eb..43660e48ecff 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.h
> +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> @@ -9,9 +9,16 @@
>   #include <linux/types.h>
>   
>   struct intel_crtc_state;
> +struct intel_atomic_state;
> +struct intel_crtc;
>   
>   void intel_casf_enable(struct intel_crtc_state *crtc_state);
>   void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
>   int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
> +void intel_filter_lut_load(struct intel_crtc *crtc,
> +			   const struct intel_crtc_state *crtc_state);
> +bool intel_casf_strength_changed(struct intel_crtc_state *new_crtc_state,
> +				 const struct intel_crtc_state *old_crtc_state);
> +void intel_casf_disable(struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_CASF_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_casf_regs.h b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> index 0b3fcdb22c0c..b4be252a9671 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> @@ -15,5 +15,25 @@
>   #define MANTISSA_MASK			REG_GENMASK(11, 3)
>   #define MANTISSA(x)			REG_FIELD_PREP(MANTISSA_MASK, (x))
>   
> +#define _SHARPNESS_CTL_A		0x682B0
> +#define _SHARPNESS_CTL_B		0x68AB0
> +#define SHARPNESS_CTL(pipe)		_MMIO_PIPE(pipe, _SHARPNESS_CTL_A, _SHARPNESS_CTL_B)
> +#define   FILTER_EN			REG_BIT(31)
> +#define   FILTER_STRENGTH_MASK		REG_GENMASK(15, 8)
> +#define   FILTER_STRENGTH(x)		REG_FIELD_PREP(FILTER_STRENGTH_MASK, (x))
> +#define   FILTER_SIZE_MASK		REG_GENMASK(1, 0)
> +#define   FILTER_SIZE(x)		REG_FIELD_PREP(FILTER_SIZE_MASK, (x))

Sharpness filter can be 3X3 5X5 and 7X7 should be defined as such.

SHARPNESS_FILTER_SIZE_3X3  0

and so on..


Regards,

Ankit

> +
> +#define _SHRPLUT_DATA_A			0x682B8
> +#define _SHRPLUT_DATA_B			0x68AB8
> +#define SHRPLUT_DATA(pipe)		_MMIO_PIPE(pipe, _SHRPLUT_DATA_A, _SHRPLUT_DATA_B)
> +
> +#define _SHRPLUT_INDEX_A		0x682B4
> +#define _SHRPLUT_INDEX_B		0x68AB4
> +#define SHRPLUT_INDEX(pipe)		_MMIO_PIPE(pipe, _SHRPLUT_INDEX_A, _SHRPLUT_INDEX_B)
> +#define   INDEX_AUTO_INCR		REG_BIT(10)
> +#define   INDEX_VALUE_MASK		REG_GENMASK(4, 0)
> +#define   INDEX_VALUE(x)		REG_FIELD_PREP(INDEX_VALUE_MASK, (x))
> +
>   #endif /* __INTEL_CASF_REGS__ */
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index beef3a76eba4..7ab885fad189 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4582,6 +4582,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>   		return ret;
>   	}
>   
> +	ret = intel_casf_compute_config(crtc_state);
> +	if (ret)
> +		return ret;
> +
>   	if (DISPLAY_VER(dev_priv) >= 9) {
>   		if (intel_crtc_needs_modeset(crtc_state) ||
>   		    intel_crtc_needs_fastset(crtc_state) ||
> @@ -6179,8 +6183,6 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
>   		if (ret)
>   			return ret;
>   
> -		intel_casf_scaler_compute_config(new_crtc_state);
> -
>   		/*
>   		 * On some platforms the number of active planes affects
>   		 * the planes' minimum cdclk calculation. Add such planes
