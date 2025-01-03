Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B07F9A008CE
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:42:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A71010E896;
	Fri,  3 Jan 2025 11:42:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eAhy1hr9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6334A10E880
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735904537; x=1767440537;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mdfL9a5cehx8ORVeW3SXNfCvrDABK417ntAQ2WZ2Y8s=;
 b=eAhy1hr9sgzhmYrz0PtvXn4YrIk4PQsCdEkR+5cBhuqlozjgXs390wbH
 CYhURTi/sRXmGn2U1+ocLCSDwPJ84sDRFcpaLZN0K9eJYs6IUVf/GYkrl
 uTpfnb6/hFAujFIAqm3IsRMywEoKnyNiYmWtbW8u7KxxBFvcK96UZJSlC
 0ZTA8jxaut5kY1OePiYhJjcI4Fab6ZppwqCGjVn9PrtVGK33s4ux85hLn
 Mu+01mM/yY7/lsF9c/q+PufIgIrH1WsMWffXSIAFoG/u6sQn0UHM/NLUS
 7O/Vmd8Wyl20naHw649tlexCHm+ivrRA6YrQud+pqeax0h2yqTyphDsRA A==;
X-CSE-ConnectionGUID: IqJ/ZOqoTvGPcAuArXXxGg==
X-CSE-MsgGUID: q8zbVmlfSbG5JSrBlWZpzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="46730846"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="46730846"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:42:17 -0800
X-CSE-ConnectionGUID: 1L7OzNcYRySEo7McABlZng==
X-CSE-MsgGUID: qv1oy3J1SF2WWxOb16cFKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="106629865"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:42:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:42:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:42:16 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:42:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p3m1RhYOC9h+riIiLeC7mzbqYk8rVZFmJCFTmiP62O/1v6AOPAhGQwtWwOkagNUNuQGpMopPfxmOUi9AJzzBV7Di2RxRHmvjgZvqtWfj1IWEN5+b1/raEMUjUCvSQc+QmnIa6i0MflOG0UfbIwoyrgjVdyVQs3dUFvPujgS6KCUo0lZr5tsPQGeihzwkJJYERibVfDLbN5/lHi0pRPXL6u41pa0oi2/iaafOCx00QbPu5OcdhKEUo9p/3qt2Buuk17E8Nco5vM+yB+RgYbpb1D1i1hEs20V526r89apJ3FxPKociDVCkCWVEDrf0z0X/V3el7/EIyt50XbNglW7ACA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QuRzzqiZ/F0VCeYUERic1zZvrUXMyDM3eu2CbOY1EB0=;
 b=e8oFB5jHiOQOFSlyRZ9KQR1d6Kd0SGQynslRlr+beCvj3FUmlWr0d6GparnxYYK73kPiBjJzwvcPPk37RAMqzkGiDbtpy4ux4+aE9Jc1EszI37llrAyuIbFpiJTjU/0eiFboINpISxvGCtCjL2H3DABtLAX3SciMvuZye72gnCNxNWG2pRqAY0+gIBDyz1N3TxehXQxV5kapnaR9qMJvNFYFtnMTCYoG0LUh5edsuQZdhzqeYbftQazoRFmdhvgvYlN5mvZriVpaTwgOqlfL08yJ75HQUs6D9mpUnNXlSircXdqkMzZe+zsE0xQQojZ8IVidaBpetxV3NLe+S5H37A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.12; Fri, 3 Jan 2025 11:42:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:42:11 +0000
Message-ID: <f05287d4-f0c2-499c-a387-3d0c20567a49@intel.com>
Date: Fri, 3 Jan 2025 17:12:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/18] drm/i915: Extract intel_crtc_active_timings()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-12-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0111.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6544:EE_
X-MS-Office365-Filtering-Correlation-Id: 1693d522-baab-4f7b-58a5-08dd2beba8cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bTF6UTRhQ3A5U0FGMUZrQmRBNDYyMndZWFFsa2h2aFFvQ3Fidkw0VndrS2ds?=
 =?utf-8?B?aTlqWUhVRzhaaDZYSHJqOEVoLzJmK1kvTzVQaWlaNVVNRlRJQ1RyUmw5bTJI?=
 =?utf-8?B?UmJESlFCcGpETTR1MmhMSWVWRVQrMFdYVHk3OFBSSEQvMklzM3FvaFJHWThv?=
 =?utf-8?B?RUNEOERFUzNnYk01TTNXbXJKcUhuMGRpbnU4cTE5L2IvMldSNnAzVm9HbDls?=
 =?utf-8?B?Z0lZVTF3MzN1enFmbDJzUzBGeG85MER0cmNKSWV0RnFBSXU3OUVWM2ZxY2FI?=
 =?utf-8?B?Uk1mMWt5Wk1paWQ2dUx4aUhMTzdiVzJIUVh4dndDWGVqSEcyVmNudzVPVkVQ?=
 =?utf-8?B?cjZicmxieWxIT3pTTWFYUFpGVUNvak5teVNldnNYUWNQNkdoRkliNG5pM0lt?=
 =?utf-8?B?TFpnOXBRUU95NEpWeUVZR0FLTHQ3V1pTVDBkS3lDbWN5SmZMeHp4cmlaYmZ1?=
 =?utf-8?B?S0NvTXhIdi90dVVDbkVEem8wd3RWYkFSWS9hY0dHMzZwY0txSnBUSzBnQ0tW?=
 =?utf-8?B?Q0dVMXNValF1MFZLNVovUWRqV2tObFd0UE1wQ1hoUCtyV2F1eUx0SGQ3WVJn?=
 =?utf-8?B?TXhmTVpQMDdNd09GbXhnQ0o5YldycnlibzZqbFJYVnhBaG1nbjVtcTZKdEhz?=
 =?utf-8?B?eU9uQ3ZKcmlBekRSK21MV3JxNHdlQzRtUnZtcHF6ZTZ5dDNBb1Q0M3ZudkU0?=
 =?utf-8?B?N0RSSmxKeGhjVjBRWGE4c0V2aEd6bXFDZEpHdkt4TGgrejR6RUpMZDdlNDQz?=
 =?utf-8?B?VFY5QXB2QWRlbGZTL3owZkwxbTZpZHZkOTg5MDQ1SVM1UGd0ZjhxcXlLTkJC?=
 =?utf-8?B?QzJUWWF2TDRjSTI4VVY4dUcwN1lWcTFmaGxYTUZJOGZTTEFLQmErb3U3cXhi?=
 =?utf-8?B?R1RhOUYzSUoxVnlBMFptYTQzemV0WjkrMEZydXNkd2lpQjc0ZDY1K3owdmJU?=
 =?utf-8?B?VVhhS0RyL29CYmk3TmFWamozTzRNajgzK2R6RmVsZVlaNHdQeDhjekVtZnlw?=
 =?utf-8?B?c25lQVNEUjR5STdYMXlpRHZkYXpLWnd0Zk9Pb05lWEtpRmR6cXVPSmZDNnpp?=
 =?utf-8?B?MWxoSlhrK2dSMURkYWhySTNjYnBHaWU2R0FnVFlwVnNTOXB0aEh2S1FITi96?=
 =?utf-8?B?TFc4MzBmOVV0Y1I0MTVhWmY3WUFtclVZSFZtZVQ0Y0xGY0VMRWVZbnRHT0Vx?=
 =?utf-8?B?Y2NaRlFXdUJEZXBnWGlSOU0vMHUyUU54UW52Z3hTNTRHdTV2QjFWZjZUdkU0?=
 =?utf-8?B?YVBzZW9Sc2YrclF3Y3RCd282c2lnU0t1bWpXbjJJdEdIR1RHTTVsTFIvWXRQ?=
 =?utf-8?B?THlBRnRSUFVFeGhZY3FMTFRNWWNSam8razBGQm81SzdmRGYvTHdEMXVON0FQ?=
 =?utf-8?B?R1Q2aGhsRzJ4OFNtRExTZ2pWc1hpbUVaMGtIRHJYVDJ6bEF5ZU9ObGlqVlVK?=
 =?utf-8?B?NmVlcUNZdlR3Qld0WVRDWHphQktaNDVPNU9OdjZjaXJYTDIyVmFpbTltTzlq?=
 =?utf-8?B?YnV4dlVJQUpIVTVtWk84Z3psTnFQZFR5ZHRwSk5jSUJ2QVZmaHpiNGJDQXpa?=
 =?utf-8?B?aXBPd3FoaiszRktJemdtWm1lUGhySzhoWE1xOFplWmdoY0hBOFpwQWFUMkFS?=
 =?utf-8?B?eDZGNzkwSHZpbi9Bajc4YjlsY296SVVhOUsyL0cxYzVqK3V4S3ZVa0tBQkdQ?=
 =?utf-8?B?aWRCZGZQVzc4SGVQT3VvL0pGVU5ac3R6a051WEU2OE5YbEtHY3Q5T09FNEYz?=
 =?utf-8?B?RzNmaGxoUG1LUVBTL21qQytMbFJGbTgwOWhFblFuQk11MHIzNTIzc2dzRkhh?=
 =?utf-8?B?M3o0U0lZZjB0K3R2a2g3V0xsSUNLRkxvbnRzQlNNZ2d4aWoxOEYrSnJPdm83?=
 =?utf-8?Q?Z99T091U/3gxn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZU9NVmU0aHBhcitja0Y5S1N6QldzaW9pU0luVmNZWVlobzlRNy9ndmhOWXl5?=
 =?utf-8?B?WlRxNFdPREdLemd6VmJtRlJEMHEyd1drbXZZNmNpNC95amRxaVZMcGF1bFZl?=
 =?utf-8?B?K3FxT0tpbTZYcGpxdWU2T1B1WVdIOXFHYTdMU2VueVZLam1Zd3ZHR0FVMUFm?=
 =?utf-8?B?SS9EdWl3U01HMTlzL3ZPY2s0TGdjWDdSUC92cGwrVmxURStya3NVY0tHczUr?=
 =?utf-8?B?eHB5WnRMNTA1L1lZSWFxYkk1bHMzQlQwV3BpWUsvZXlTUVB6dXBCbEw0R3Vu?=
 =?utf-8?B?TG56RWIwTVJNZVBpVjFDQS8rZUtZcGFXUTJ4OTNvRlhHNWIrZlBKaUlVWHZa?=
 =?utf-8?B?ZGxNUkRFamswWjZoc21Pbkw1OGxqTG9tZFp1cnI1OVhNRStTUjV4d3g1cm1X?=
 =?utf-8?B?bnJYaE1qaXZKbk1iOEtNdEl0dElUZWczTy9nN2hScWxPVDVrTTM2czZrYytW?=
 =?utf-8?B?NGhTNnRNLy8yMHVzRktDTGd4cFZZR0hBS052L0Yrd0g5elNJQkJUNHIrblVM?=
 =?utf-8?B?eVdIb1NFcnVPNU12YXowSEVRWUNtSWRNd3FXUVpjRGVSWlBOekZKcG5XcEZp?=
 =?utf-8?B?M1l5L0ZXODQ4dnB0YkxSM2MwSVluQ0NqRjdwVTg4VDFYM2VrZ0JtRjY2akNw?=
 =?utf-8?B?cUdZdzMrYWtaN0wra1hrVk51UHZlYW5TVmRDTzlyVFpuOGVIdkNiSUpJR3BX?=
 =?utf-8?B?dHhmQ0xWZmNxQ1NrcEpnVkJuS3FUQ3IxWXZxK0lLQ2cvOEpqc29Zd0VzZDZ1?=
 =?utf-8?B?YW1wOUZDZDcwb1orb2VuQkRSQ0g4M1lYZ1Bzc3A1NUdwNjVTVGU3dVZmOEd5?=
 =?utf-8?B?Q0ZnTktuWmVsRzY2QlZKZ1RoYjNYS2grTWFINDl0UnJ1RXFGOFFnU3J6anpT?=
 =?utf-8?B?YmNybGlXVlUwNXZ5bWF2aVBraUdyVjNiY2tFSll3a3JtTFYzcFpCV2N0VmFq?=
 =?utf-8?B?Nkk4ejJ3UytDYm4rUWMwRTZMMGVqRGg0anl6UEFaOEJuRFlzMXpaK2Nsa0lo?=
 =?utf-8?B?WGpSRXdQeVVtc3doL0lCZWtEVlN6eWJrQWR3ckRCdERRSTZod1RrYzNNb29V?=
 =?utf-8?B?T2lhZGhCNzVER3VUMHJUYzF4K1l2cktxSWVDRm45dW0rZnRVcks3RkNmTnh2?=
 =?utf-8?B?VW8wNWpmL1FyNWlxc24weS9IUXFZbkNtUWhFWVhLUUptTGtrZGsxR2FGa3Jq?=
 =?utf-8?B?VXJoWUs5QllXRCs3aUlkdWNJUHRvVmJoeWZ0MmNzZTE1c0dmeVpGd0hGN0Nx?=
 =?utf-8?B?UTdMdnIvaTFWdyt5NUZVZ1prdmhkcVY5R2F4dkZ6ZkJTaWFXWlRrd2ZXQmJJ?=
 =?utf-8?B?QjBvVUQ2RE4yTHRidnd6V0dMNjdCUGJBWkp1eWk1VHRtYjkvYkdib3Z3QlJ3?=
 =?utf-8?B?M3dtbHN5MXhRRUJvZDVjekZoblRzOVIzZTM3dnZ6c2g3Y3FRNlJSYW0xaE1q?=
 =?utf-8?B?MjVOQTZPYXRKSytyQUE5YW04cXdyQi91WEM0QnJaWUsxRVdDQUhpZ3M3RmNM?=
 =?utf-8?B?Y2hFbFhIb0hsa3NWdTRKQTFrY0hVcDFySkcxZGtHbG8wM0Fsano1VWlBcXI3?=
 =?utf-8?B?Ty8wYmtmbWpWRmUzV3ptS2xkbi9yTWl3UWJoWEdzMDdrSDF2WE5aVUJmK212?=
 =?utf-8?B?TUh1UUhRY0RwNVVuT3h0VVhGRHd2T2J1KzRoeVZ2RFRveG9HdEhTWm8wR1pa?=
 =?utf-8?B?TFpsTE10NFQ1Qm1jNi9tSmhXaHZwaG9tN3BWeHdHeTZCVjZHems0ZDRoUFZK?=
 =?utf-8?B?c2lzSW0xbllYamRFempDeXViMVhIV1ZLWEhaNFBoUHFCRXNWWDQ0MFNwZGV5?=
 =?utf-8?B?TVhxZWxobTErRE9QSTJtQ21ORGtMbDFjK1hwMHc0T1Q0ZVpKNjFkRUtVdmEv?=
 =?utf-8?B?MkNTNHFuamdQZXBKZ2k0WUowODRKYTRtcTFxSjFRU08yZHVBbWk0d0RIektj?=
 =?utf-8?B?cm11bTBRNGJCL1hkbnVXUHdNZ1MwZlIzMzJRaXYwU0Y2UjZBdFp2Z0JTMFMx?=
 =?utf-8?B?UkpKM0g4YUNQYXZhSUhPczVtWnRYYnllMDNTVDZFTkxjeUhkZjQrS2U1VlMv?=
 =?utf-8?B?cXRrbHBVd3BYeUVzZ2FlSG1nc3U3bE5HZFJ6YjNVRTgxdHUrR2kyTjBZNmcw?=
 =?utf-8?B?Q1ZDaUtuZ001bEx3dWRFQ0J4NHdzVC95cVgyRzZUSmQxTC83SDNpTkU0U21I?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1693d522-baab-4f7b-58a5-08dd2beba8cc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:42:10.9348 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Ai437/FCp/AA87G/B6PHNHPKE4xRRP/kQDXI75Ba32OkK0rNVNqZUGkuU8FR+r7Sv8Le6ctt+1P8BTTqvpKVOv4SaeHsBOjcX2DPR6OXys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
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


On 12/11/2024 2:40 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Declutter intel_crtc_update_active_timings() a bit by
> moving the code that determines the timings into a separate
> function.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vblank.c | 33 ++++++++++++++-------
>   1 file changed, 22 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 3cf3cff0687a..2a99bde457db 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -507,6 +507,23 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
>   	wait_for_pipe_scanline_moving(crtc, true);
>   }
>   
> +static void intel_crtc_active_timings(struct drm_display_mode *mode,
> +				      int *vmax_vblank_start,
> +				      const struct intel_crtc_state *crtc_state,
> +				      bool vrr_enable)
> +{
> +	drm_mode_init(mode, &crtc_state->hw.adjusted_mode);
> +	*vmax_vblank_start = 0;
> +
> +	if (!vrr_enable)
> +		return;
> +
> +	mode->crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
> +	mode->crtc_vblank_end = intel_vrr_vmax_vtotal(crtc_state);
> +	mode->crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
> +	*vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
> +}
> +
>   void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>   				      bool vrr_enable)
>   {
> @@ -517,19 +534,13 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>   	int vmax_vblank_start = 0;
>   	unsigned long irqflags;
>   
> -	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
> +	intel_crtc_active_timings(&adjusted_mode, &vmax_vblank_start,
> +				  crtc_state, vrr_enable);
>   
> -	if (vrr_enable) {
> -		drm_WARN_ON(display->drm,
> -			    (mode_flags & I915_MODE_FLAG_VRR) == 0);
> -
> -		adjusted_mode.crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
> -		adjusted_mode.crtc_vblank_end = intel_vrr_vmax_vtotal(crtc_state);
> -		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
> -		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
> -	} else {
> +	if (vrr_enable)
> +		drm_WARN_ON(display->drm, (mode_flags & I915_MODE_FLAG_VRR) == 0);
> +	else
>   		mode_flags &= ~I915_MODE_FLAG_VRR;
> -	}
>   
>   	/*
>   	 * Belts and suspenders locking to guarantee everyone sees 100%
