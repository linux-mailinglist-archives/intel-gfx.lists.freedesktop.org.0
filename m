Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5649E605B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 23:11:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 789F810EFAD;
	Thu,  5 Dec 2024 22:11:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Py1Iafb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 589D610EFAD
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 22:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733436669; x=1764972669;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QwZ9fd5ehxhMw+6yCUHjj90BOCFdVPCpjr3b+UNU9M4=;
 b=Py1Iafb3QA9wXgrsTTh9aaEac35+asoDELMYRn/5NIzSWXu+63YrgXlw
 fHgVm6EzdZgOyTn4JX64hYwCfdSQcXM/ZESzio/fys4uk8OlIEKd9ReV4
 eb4bWAkvdedNoO/878zunQtj3Q/X9enWNYMW12qNAPXNnDrOUACuOm7mB
 UrwrypnagretUoQPga3n0z3ZacLQbR+nCW7xHan/S27WYlN6mhfqLKCfA
 QdbM8X896XjR+87lbrFKhaZDh4opp2h4i/gJg2W7Z3sMNTWyGAqdrzkVZ
 e4ABhXR+u6LV2bEA1eucSmkKqeCHPlcdzyS37NKxkCkxdCdCkJpIonYoz A==;
X-CSE-ConnectionGUID: UgXZYy2eTC6/FkYsAkKLCQ==
X-CSE-MsgGUID: skV8/y3DT9iYc+bvtJbC0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="33832273"
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="33832273"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 14:11:09 -0800
X-CSE-ConnectionGUID: axpqa++OQP+8zhj1AecjFw==
X-CSE-MsgGUID: qFr7a43bT7u4tzihshuASQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="117474863"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2024 14:11:09 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Dec 2024 14:11:08 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Dec 2024 14:11:08 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Dec 2024 14:11:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FBDG+a2ycaE6k60YFLmY1xGLJ6hCxP1jdoIZ8iwERx3q7WrhMgWLEtTrRuRbpjYGI+LS7WvWViVFKQI/QnfZTQUdBAss+LVZybrM801xfbBG5NW+T/i7r9uHukD4faViLZcp8EuwYqiedQfSrV+WKfP3CpYMbKKQ9MQTTJWHnIhZlK5yIh461yW83bVL2wRF8bCEdGpil/QlSoXy4dsMCdgzqgT8VYkmjWDM/8gpW7Mvh+882DcpCczfMBK/GqAnRmiqbN6IRjhL+wBXFrV54KhB2aNH3d67b7h9UP9toWA+qZ0Va1fL6li2LHNf2T7KDkrChIUTJbBFuKYa62H5zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=23CgzB+0sVYPnQfwCIORsBBpm5HgI9PHP5iSve0biiA=;
 b=YmJUITS3tkVKJmsYWnOO49TqQ/msetDWlhno+sH7QTKTueNcP6mmcmJaelicFp3oOR/49qheIIINMB//NO08mJ05eJgOKdwiYG19sFiNX9OYWFeBKZBr6xGKKrN4V3de4A51/yaca9VotKYwIZNTP+vA/Q8eO+JjRN+UZSsQf9+eJ8YdvI5Mp/+Fj8DyMYITY21iWp+HvCHdFMJw8w1QFwANCJcDO9eHHP7qS8GnaRvvRLh4DJjgz22aoAg3JoRb1NqR8gnhQnGl4WlZYpn3tHOBEBN5fRHoT0YMPjzSHPwdl4PiV4sgbPQaAYs6fj02FPZcO4POVlVIhRtzyNse3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Thu, 5 Dec
 2024 22:11:06 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%4]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 22:11:06 +0000
Message-ID: <e4b3529e-42ab-40cf-9b38-1a75f5ea7da2@intel.com>
Date: Thu, 5 Dec 2024 14:11:02 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] i915/guc: Accumulate active runtime on gt reset
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241127174006.190128-1-umesh.nerlige.ramappa@intel.com>
 <20241127174006.190128-4-umesh.nerlige.ramappa@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20241127174006.190128-4-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0010.namprd16.prod.outlook.com (2603:10b6:907::23)
 To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|DS7PR11MB6245:EE_
X-MS-Office365-Filtering-Correlation-Id: 9929697c-f7e6-4131-dbba-08dd1579b6c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WDZ1ZUltekpHRDQzZkRGM2JJQVlYQkF3c005TmhnRmwrZEE2YUloaDlUY2VK?=
 =?utf-8?B?YzBMRnptTElWa3JMRmhJY29jYXlFbDdnd2pXdVkyOUFuVmEzbUJLNnFkbEow?=
 =?utf-8?B?UVNNSEJKMFlsdjRXS093Y3kyL2IyQ0dOVUUyWWJXbnJPZnBnWnRKcmQ5U1hh?=
 =?utf-8?B?MENMVWE3OFpHL252YlcwR1hjVmdFZHVCSGN2ckxNVjlEUVNFSDM5UmIrV3pD?=
 =?utf-8?B?QjJMYmQ1MHRMRmVybS9IcEVBUGN0WWdDQkxqdE5aNEJPRm1ZOWc2M0IyZEJK?=
 =?utf-8?B?b2VkeHBsWHI0MTN3NzMrM05taS8xUmxrdUhDZ0hKQXZTUEFINXUyRmpHODFt?=
 =?utf-8?B?b2FxdTIvR29vVy9IaWhhYUljMXRjZjJvZXNVb0xwNzF2bTA2Tk45VERFeGw4?=
 =?utf-8?B?cDRyc0dKWW5IaVBIb1FSSUo4RDVoL0FtQkdGUU50Qk1wU3UvUjJaVjJ3VGNI?=
 =?utf-8?B?M3pjSmF3cVAva1NKOHRZYVBXc24velRLOEtYU1hsa2l1VGEyRXVhQ1kraGx0?=
 =?utf-8?B?Qkl5MEN6cmJUa1dlUlFCQ3RubGd4d056V2IzRU5aWnZPaGduV0pjWVJNcjhv?=
 =?utf-8?B?aCs0K3dWS2loSk9KNjFjM0p0ZHZKVE41TzUvNXVGcitPUUJDbm1RTTN3Mld5?=
 =?utf-8?B?V0l6QXNTRlg1emJ4dWtsTVFybDJudWNLUVhWRVorVWZCeVZFb3V5c29uQWVQ?=
 =?utf-8?B?aWdHc1liTEtIVEg3SDhWYkFObDNUYUY4Z0JybVdOWXMvVEhGK01IUk9McU9Y?=
 =?utf-8?B?NUFIT3JpZzROTkszUm5kWENjaUdZS2tVWVVaeFE4b1EwVGFzNFdRaS8rSlNl?=
 =?utf-8?B?SmdzMStlNzlVdjV1ak1KK1FpUjNFdTJubkQ1ZnN3NG5DQVVUYTBTZWVUdmVJ?=
 =?utf-8?B?T2tOWVBiT1FaUmxvWktQV1prUVF3WGdERWxlVmJyQXVZZ3N0KzNPVCtQc0xZ?=
 =?utf-8?B?UlowL2ZiT2tWNmxjVDN1eGcxTnhjdkdKOEtZeXFTdU9TemZkNUU4ZExSWnNW?=
 =?utf-8?B?VFZZZnVEaDJkWDVFZGttZHZzZXMvYzhTYXVuQjVCL1BWSVBiMDZITzRXWjlR?=
 =?utf-8?B?SzdXb3JkUVlnRFdGVkl1d3YwQVM0NjRHSjR1NVkweTAvcFN6K0ZwZXo5dExE?=
 =?utf-8?B?UWxOSTVmSUdZTjJ5U0Z2R3crdStQVVhVS0RoOVhGZmdaK1ZyT2lqU1B0UlEz?=
 =?utf-8?B?VTRRTDNzSCs3ditaYkJJUjVZMTdpN2ZiSmh0NHcxYVQrY01OejlPaFY0QkFs?=
 =?utf-8?B?ODdPcVNpYmpDUnA0STNTd1hCNUNFL2FzaGs3NlA5amtzZnV3VEFKVXNiSm1a?=
 =?utf-8?B?TVdSLzFrTWhDb1NXOTl4cDBnNEV5VjY4aU85TmZvQXBWakdHd21WWWErbDJu?=
 =?utf-8?B?dlJ5R2dsWERKb2x0YTlTZUh3Q2xvM01obS9GbStyOWZrUTFyOEJpRWpYajBG?=
 =?utf-8?B?QWV4SXBnY0tFM2dFdHFOYWRkTll5dmFNcGJ1aStHalp6R3drSVFGa29UVG5y?=
 =?utf-8?B?RG5IdWhSUGNocDFrazVYeGlQbFFiWHZZYWl3V0YvTGxlRmxZenBBemd5N3hq?=
 =?utf-8?B?QWkzUFFXblJQVkVhMVc0SVM1bWNhYUlTYTBBL1RGK3lobW9CRjhMc1haME9D?=
 =?utf-8?B?NWtGMHNadFFpQkMwQ0MzRTMyL3lBRGJzWUd6MkVsT2ZHWCtvc1hkbExuNzN2?=
 =?utf-8?B?ZkpWaU82WlA5QnAwN3RaZVFRM25PNTdEeVhZbHEreFhOeFdteUxnWm83QVJD?=
 =?utf-8?B?TFNIVWlhMW1jZjVsWnptckNYRG5mV2NUQWp4ZUVjTDZJVGpod24xa1JlNXFG?=
 =?utf-8?B?cXVZMmdKcXVVZURYNkxZQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWUrdkl4eHFML2hFdGJVYW9hSnBZc2dIR2JjS2ljWm5Ubm1EYUJGZnltY1Q0?=
 =?utf-8?B?RUdUbUtaNERMaXN0Wjk0SDR3TFZtN2pLUU5RVFVQYkZRTU92SXUvT0tyYmdW?=
 =?utf-8?B?ZDA3S2RpTVFqMmxvcjdrejhyNGttbEpXVmVwRzUxVXA2ZWMvenlqakFlQU9R?=
 =?utf-8?B?YkdUZmRlS3NabWtzN3hRV2M0ekpEdHdVQXFCeXBrNGEzd0pFa0pZQ2E2L1Fa?=
 =?utf-8?B?QXF2aWFiaVdZYmlWczhvM0hsaWhlTnByTG1ubGhkOGo4NlVmUWRGR3BtOFM0?=
 =?utf-8?B?L0lkYy9MdnYydlQ1T1hpU0hXbGNTeFlaNjdDbzFrTmVOR0s3eGJWWWxRQlJn?=
 =?utf-8?B?QjVCaE9xdG5vWmRXUHBxM0M1bWQ1c1JtZmdTclB0bWFHVU5lNStKMGF1Zm44?=
 =?utf-8?B?c2xnRXZqQ2FBUDlUVFN6YmxzZy9jSkZiUVN5d0Q1YlQ5Qks0VkJKV1FkUVJy?=
 =?utf-8?B?elEvRFpac25yRUxOUkd0RjlRLzRDb2tvY0R6aWh6ek9Cd2c3YkJ0ejdhaEsz?=
 =?utf-8?B?MEg3RGRPbXhLV3hPaVhuVWwrOENtN0RRNEZ1Tm44ZDdUOHkzQitqLzdBUWpC?=
 =?utf-8?B?QnB2M2tXa3RkMjl3eUJmSGkzY2taSVpKYngwOEtCQ2FXeTdaYUhnNmtORTNT?=
 =?utf-8?B?VS8xZTMremVjR09HdjdWRm5rN3oxbXVydjJMVUZpc2hERGR4LzRaNDQveTdN?=
 =?utf-8?B?bnpUVXIrWnBLWjYzVjRRc1doclQ0WG90VDhLeHhWbnk2YzliTnhoYm1kSWtV?=
 =?utf-8?B?d2VMZ1dJYXdncmE0TXFRald2Mng4Tk1MTis2MEJod0FMeHBMbXVTUWI5R3h5?=
 =?utf-8?B?a0d3S1dGOXZsYldJUTNjSng3d0V3MkFSRzZwclFta0RYSzdjTVhqZ00ydDVm?=
 =?utf-8?B?eW5ldHd5bWZPYk54dlpXcmRlSWFmNk5wR0pCZHo2czFjK2w4eEpDaVNFRHVv?=
 =?utf-8?B?a2NUT2Z2T3lVcCs4ZU9kSDJodndkaFhDOXkvbytmbFRTWUZ1REtFQ1F2MXBC?=
 =?utf-8?B?VjBvTEtpZDAySkgzYXduVnA1WFkydkxjYUxESi85UTBBeS9GTmVHK0l0MXdW?=
 =?utf-8?B?STNhSFdkRk4zZ1VTejlNaW5hTEJvdHdodEpwc2NCaGN6Vy92cDNEaSs4Rk1Q?=
 =?utf-8?B?OVJFS1E1VU1kSHNIcWJrMWl3bUNuRGpZOFNIVlJZMDRxelliL05nTi9TOVYy?=
 =?utf-8?B?OEI0UHlqTW10eXozeldUcnc1QXM5dEI4SVZjcE4zU0hqZUFYSTB3bUxLMXdX?=
 =?utf-8?B?WVlRdTRNaE9pTjRhRzRqdDVMSHpVSnZCOTZYN3AwRHgrSExhNGpUaEdZc2t1?=
 =?utf-8?B?YjFmQWl1bUxUaFdSSk85bWVPR0phbzltNU9GT21RUS9ZbzVuU1ozY2N4YmhU?=
 =?utf-8?B?REJLclM3YloxRnplc0cvdHVjTGxXTmJJSUp3SXZGb0ZvOGVsU1ZyZ0R0S05F?=
 =?utf-8?B?UEdaTElVWlRUUWExdU9rQUE0VzBkU2VDZ1J1cVBtMXN1M25OQTY4R3hRRkNF?=
 =?utf-8?B?SnJMeit5WHdFelFDOG9HbGpzY0lCV0QwU202WUR1SjFRMFlYZUhoNVJObXNV?=
 =?utf-8?B?N3RsQTNzYzhpYlA5ekFsbjR3Ryt4YmpibFE0RFRCLzBLbWRmcjN5Nk5UN0RU?=
 =?utf-8?B?RlA2bDUwbWRieEpKT1dCNy9wdWltTjc0UXNCOE15bVJzYTJ0K2ZSRDJacXBi?=
 =?utf-8?B?YW5TeUQwTXV4Myt6UEhTb2tjRjcvalVTZ0c5NE9HOEZqdmsweHNtQ002VTRO?=
 =?utf-8?B?ellaRGFkbzBMMVhhYmdMR1BCMVQvYlFlV051NlVnOFdxeEFvMUhJK0VFbk9r?=
 =?utf-8?B?S21jeTFBSUxhZnBUazZHYkpNUjR6Q2d6d0xWZXZiMnF6d0FGUXBZc00venNk?=
 =?utf-8?B?aVpDQWh1Q0hCOXhibGxDWkZEbnFJYXJkL2owcVZ0VmxCRXdvZ3YwblNITVNQ?=
 =?utf-8?B?NlNpaW1vWFVNbVIvS2g1Nk9qVjBsQ0x4djdnWmFmWXFNeFc5cytqQ0JMT0Jy?=
 =?utf-8?B?RUl6Um1WWmZMdFN5NDB1OEU3RnR3S0wwMkNTUy81Q2kzNGV2QldGTUQ0ZEpo?=
 =?utf-8?B?NUR0MXRIUFNPd0VlRlU5MUdBSUU2OXFxTVpYMWNyRmxCNTJVT3g3QzFiOHhD?=
 =?utf-8?B?MHVNSEpZNGlScm93QWV6VnFTTmZxWnhyVGhLZG9sbVJBV2JOQ1REQ2VYWmlt?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9929697c-f7e6-4131-dbba-08dd1579b6c7
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 22:11:06.0300 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o95PhlAFVjY6NMhlW6OWc6PTqxmlvTX/V9rX62Ffk0M7G+W54Cf6wuAeDDUIeiCZ03bq87uqGOiH3YaFp02XfU1FmB0SLrzq2an7CMneEZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
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

On 11/27/2024 09:40, Umesh Nerlige Ramappa wrote:
> On gt reset, if a context is running, then accumulate it's active time
> into the busyness counter since there will be no chance for the context
> to switch out and update it's run time.
>
> v2: Move comment right above the if (John)
>
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 15 ++++++++++++++-
>   1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 56be9f385270..2876024041a7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1449,8 +1449,21 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
>   
>   	guc_update_pm_timestamp(guc, &unused);
>   	for_each_engine(engine, gt, id) {
> +		struct intel_engine_guc_stats *stats = &engine->stats.guc;
> +
>   		guc_update_engine_gt_clks(engine);
> -		engine->stats.guc.prev_total = 0;
> +
> +		/*
> +		 * If resetting a running context, accumulate the active
> +		 * time as well since there will be no context switch.
> +		 */
> +		if (stats->running) {
> +			u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
> +
> +			stats->total_gt_clks += clk;
> +		}
> +		stats->prev_total = 0;
> +		stats->running = 0;
>   	}
>   
>   	spin_unlock_irqrestore(&guc->timestamp.lock, flags);

