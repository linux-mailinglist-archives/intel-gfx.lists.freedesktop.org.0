Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4BDA1BB67
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 18:27:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02A110E9B8;
	Fri, 24 Jan 2025 17:27:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MUp0ivqE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99CBD10E9B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2025 17:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737739653; x=1769275653;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=PK9MGNenT+08aHGh1jinAhgbsjYTIGYB8xURvqLfM/M=;
 b=MUp0ivqEURp8Z+sdCC6Q+mGPDjCCAERSg5zJswfelW1it/r0M4MRG0To
 BSJIRT58wkWBzaL/LPwB1Cwv3zZU7IuqbhlByT/fXOMeUQ6zv9JfjKgzB
 Ph1T8cEUX5CLo4zYqYkAXTmc2xGSpuwVDIZx9kNQ5RotJqT+mI/AyQcgq
 tVQXsonoBVOdbSMHVaEbvHGbZSIQENcy34UOFetFrUNfW+wlEDyAA4TWl
 uATSMH+TwETU0MhH2DkLoy4tq8Cwl9BQZtwdNxiblVAFAKiV1wuGUgW7M
 PMzKW8BPa6FAkn2tVHxsG5KdDjm9HSzlfzvsSAiSBfvCkb25nOZaPkPWx A==;
X-CSE-ConnectionGUID: blZYRazzSmej2OXrSVU3Qw==
X-CSE-MsgGUID: j3Hjpip2QBijmvMpIlRrMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="49678494"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="49678494"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 09:27:33 -0800
X-CSE-ConnectionGUID: TmDguZrQTsGCWV2q+QFJiQ==
X-CSE-MsgGUID: kv5hYuBmRxyhr5qPEaC8tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112452012"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 09:27:32 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 09:27:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 09:27:31 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 09:27:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SH+ijTNhZlhs4U2knap8pepBDsRV3Uq1VXlImyVeXYW7JfeoyNWInVi0EyfXMyTMfA6v1LUkogtrNVGXV4fgHfhZyh/iU4rIunyUCDO8uxMDpJsaweI8pmxGrp5A6PZJbm01wQdEY4zAwmmWp9Y5ps8wBmep74yx4oSMndiD6vJzxVxC/R1ZwKe97DpveI5KSEksRMBeR3rZUs7LecCHMDvoFrHwKCSutvWHqHjAtOw00X0GHqeroB0uxJTYiZbtts9/kzAR22B1i+N7soqYSngiXGUliGTGRMQmlc24Pki7CpoXxhY/LQmzx1eETjPaV36hgUrNSUW7ILRKgxwqBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EPaSVLIEFvAWgS+Mofn4vpa5E1nNB5SKJjB3Yn+Wdic=;
 b=CCaCBxnH3uFuaYYy2yRFd0sRUDfmyEU/x+ZBUMo4cCmzB6BpUuIdV/Wk17HjozU0I4dRVsarOA53ppvSD7SbjAXIN87YEsHsbKiRFxzgBqNYu0DDIaQjzz5x3ldRy+afR2Tux/yjDboSNsX7NxWVr/Nf0Aq8kl5qg2L8TfxFEo059Dga1YnF4ZSmJnqx/NjhyVGSVMk7oYu08kf3Z660jvEegwPL4oAEXlqhRWQd770b7+Z/MgZTzH7jyn9CaN5l7XxKMXPOJEkP2EQmHlEOEec776arkeroU2lR2KIEibHqTpu83epqZO4t/6n8rjU+9CfDj6kYByHETZp3r3GnSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by PH7PR11MB6451.namprd11.prod.outlook.com (2603:10b6:510:1f4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Fri, 24 Jan
 2025 17:26:58 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%3]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 17:26:58 +0000
Date: Fri, 24 Jan 2025 09:26:56 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= failure for
 drm/i915/pmu: Fix zero delta busyness issue
Message-ID: <Z5PNYIi6ibwZ0maD@orsosgc001>
References: <20250123193839.2394694-1-umesh.nerlige.ramappa@intel.com>
 <173772274086.4019113.17655047510512762644@b555e5b46a47>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <173772274086.4019113.17655047510512762644@b555e5b46a47>
X-ClientProxiedBy: MW4PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:303:8f::21) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|PH7PR11MB6451:EE_
X-MS-Office365-Filtering-Correlation-Id: 807362d0-97e7-410b-e353-08dd3c9c4e49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUFCT24rUEZ5VVhQRFkyVmJkUlJ5RVB2b2M0ZmtlUW13RWVJOW9XMG5DRjRC?=
 =?utf-8?B?L2RJOFJPTkF2bDdlbWRnMmxIWDUxTlpVQjhXcjJZSFJyd1pKVTFEQjB3a0x1?=
 =?utf-8?B?UWpuT1QrdkxoM0dRTEZFQW5maTQzOU5PYThGdDlTbEhlWG5VWjBCOUNuNUhh?=
 =?utf-8?B?ZUo3RTVuVEs1TkkyMlhxZFFsSzlNY2N4YTJBbHoxMmxRY2ZDd2kwekY0SkZn?=
 =?utf-8?B?NEYxMDBJdUJ4V2c3Uldad2RzeTA2L1hHem14Q1dnNjlsS3BVWDczZzJKQ3Vo?=
 =?utf-8?B?bjBLcS9YZ3diYkRNdFF0QW1ZT0paWkJKRjM5dXpUdllDZGlJWnJLcHd6TmJz?=
 =?utf-8?B?d3JnMEpQc1pYYTJYcDVPVnhKcUlZWm9lOEc0eHpUTlhGNTFkSm1La2ltZDFS?=
 =?utf-8?B?bDZlOWxwRWg1VE1zTnFmYm1EQ250c3VHYlJyeW9jTGtoOHdobjl4cWRnd1Fu?=
 =?utf-8?B?eWFHM2xtcGROR1Zac002NFdOL0E5Q3dEVEtrSU05MVNtalVGdG1iVGlZTHd6?=
 =?utf-8?B?b2FvQjE1bEdMeDdjM2gxNDFINU4zeXRsdDdyeTRKSS84TktSN2cwVGpvZkt1?=
 =?utf-8?B?eUY1V05IRHZOSm1TdGdUbDhVRmV6blMvYTJ4L1h4RlNQem1xOW5RNWFsMVQv?=
 =?utf-8?B?Y0h6OHBPZjhXRkFiQ3k0a01Sc3hzNXNUSWwrbldQMEtqREI2UzA0MkJCRXQv?=
 =?utf-8?B?WXhUUDVwTVdNaEVFSmZXY01Cbm9OWlZldWtPTXJRd2FhTmw4OHdTTFFSZnNn?=
 =?utf-8?B?Q0JKbXdBaXRZYmNNM0tYbVZlMEdLTzh1N3FnaElnRzBEa2djWjJpUUl4T1Jx?=
 =?utf-8?B?OTFyZ2dYSXVsS2dKUHJMdTJ4ZExxdXlRVjdZcjM2dFN2L2VJRTZxVGVEZDIv?=
 =?utf-8?B?YjZ4UTRyWitBNTdvWG91aXpBWHEzV09SV1VHZ3dLZVV1bk44WFM1NDdEajRJ?=
 =?utf-8?B?OXJTL3FqcFFmR2ZsYnBJOTh3emdzbTc0K0lOZSs2WnBueUdTcWJMY0JhWmJv?=
 =?utf-8?B?clVzQ3ZsYno5WEtoWFYwazh1SkFrYllqb0s1UCticWxRc1hpZmt3QjJZWXJr?=
 =?utf-8?B?WUVpRTR2WFY2TWprejBOb3h5QXNsamRtbHVaWmF0d0ZVdXFqSmUzanlRSW5S?=
 =?utf-8?B?cGphM0RFWDYvUXo4Yzc5c0t5bGxrMUNGWlpLUTh1UWhRRTBFRTdGbFJuTHkz?=
 =?utf-8?B?OEt2TTdteEJxRFRERVI0alZPM2prMVVaYi9RaDc5SzZaR05aTVBHNC9BcU9N?=
 =?utf-8?B?cVIwNE15NWpSc0o4bVVDaC9ONzl5WVJnRXpYTE5aS1p3N0oxZkRNckVRelQ3?=
 =?utf-8?B?SUlwVmN0cWdrSlY5MFhEY1NiWXQ1bEx0VklKUCtGMDdiOGF3UTJkL3VDWkJQ?=
 =?utf-8?B?UUh6UjVSbGFoclJaSVNGUWo5MmlBbCtyVVg1T3QvdGZlV3phd3hyLzN4RDZs?=
 =?utf-8?B?U0FaNG1wUTh3Vk5DeWFZNDBoZlZRZFlGU2lZWGtqQ3p2Q3JqSFJJd3pNSHds?=
 =?utf-8?B?VXMrNE90aUR0a2x0SFYxQVB4bmIyRDlKN3RtcE9ZNkVFWkh2eEhJSytiWkZN?=
 =?utf-8?B?SkpSUEVCaENaQnd4dUI4RVR2elI4Zm9ZWmZlOVpWNnMyL0VQL1VsaHcwcURX?=
 =?utf-8?B?TUNSQytCZnU5YzV5VUlVSVQ3TmVsYzlzNHorZ2tOWGt1Uzllakdra1lTNDBz?=
 =?utf-8?B?dS9SNHFIcndzUktBQlVJT2lTY0VLZUpoTkVDeW9hZWNLR1BhME4wM3RpK1Zw?=
 =?utf-8?Q?Avd6QQk9jsb1A/VPvSHVhN1lFQR4D7UsQFzd3pt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VktnLzMzRFpvZ096WkJmOW5sZzFja1JYSlJWNTJVRlh2ckJ3TTF6YTNJRjg3?=
 =?utf-8?B?MWI2WlBLeGl0TExnQk9HRk1GSFA1R3B2ZmIyRGlqeVh0ZC9PaU9YVTRxczNR?=
 =?utf-8?B?b2htZ2JFbzNnMjFDenhkRk9ERTU4K2xKSEh4bHZKWWFXVFNzVll4cXpFSFhM?=
 =?utf-8?B?bGd2UkkzSm40MDQyKzNCY3VvNEJ1Z09pZTROMWVrOVVHS3hucjI5WEMxOHUz?=
 =?utf-8?B?TXR4TFBMdVRvTUZuU2V6NHZYUGhVZithSFBJQWJTYVBBd3Q2aXl0Mkpka0kw?=
 =?utf-8?B?NGJjOTdEZ1oxNlA0WmlJM0plS3lHUGFJWHJPdVpYZDc0enptYTNQVEE3T0ZB?=
 =?utf-8?B?aGVxd3o4RkJCNFptMHY5MEtPVXIwN2M4bDd0dzJYbmV2dmM0K3VQS0VzNW9C?=
 =?utf-8?B?djMzNk01Tnh6QnV0RHFwakxxSDJudVRmUjVWaTJURnV6WlUzMFFDUnhjOHlw?=
 =?utf-8?B?RnJ3WTZobTV3QWJIWVBGR0JxbmUwSENZN0lGRk1XWHE2aWEzbFVCTVBoQVNi?=
 =?utf-8?B?TVVYVStjRHM5Y0loeGVDWWpLSElNQXZaVFdmcUs3S01lR0hhSU9SaVcxc2dz?=
 =?utf-8?B?VjNmMU1VUkJ6NW11Tjh1bzFEbGxzaE9sdC9pQXQvbURIRkV3cmI4eEpjcFhy?=
 =?utf-8?B?THJENUlFcTdxRUVLMkczRFZYNXZaSnNZRGlGMWFmclVMYTEyR1JZNGNvOHVH?=
 =?utf-8?B?RXdIQURKYU55aGNQemRCMkp0T2hnRWQxTndvcklVRTBsVkkyT2JvbFJSYkNG?=
 =?utf-8?B?ZVVoSC8xaS9ObzZyRm96OGFYSmtZT1ZzQy9RaCtIUnd5aDVvZFVwa1AxWi92?=
 =?utf-8?B?UU1KRGVQenprVjdTRXEyS0ljS1VhZjNydXBNdklwN0tSaklpenJSczhQazcx?=
 =?utf-8?B?OE9nT1U2aWU1ZWFkQ29RT0h6NjlOMnJmYjVzYzRwbVc4T0gyM3MrYjNmM0lM?=
 =?utf-8?B?NmJDdCtaUmwzYXg0ZFliVkFvenBQb3hDVmpnRFdsMTJzU0d6eE11ZXNGd3Ro?=
 =?utf-8?B?dnRLUjZhekN0QjlWcTk1ay9TaUVBWlJpc3VnNEVrUm90Vksrc1RXUjc2cEYz?=
 =?utf-8?B?MVduaWxRenJyclVtVExDcjhKVFRGcm51VTBwb2I1dEFGL0xobGl2WE9KS1pF?=
 =?utf-8?B?TXVFaHZQdGNlbUEzd1Y1Y3dyZExsWjBiWTlTQ09SRXdlTzh5WXZIUWo1eFdy?=
 =?utf-8?B?WW8rRDVlU2ZqVFJnRE5mdGgvQkVhRW9WbnJ5Tnh3OExTOFhJRmJaWDBrVWox?=
 =?utf-8?B?WGJOelY4aUJHbm5GNHdXQkltSmlZcHRDT29IR0hpZ1c3SCtmWk5QeGExRDVL?=
 =?utf-8?B?bzZVblhvM1h1dlRCU1c1Sk5Cd2daZHJjNFhYb1pUTEwyZ2xReDhmQ0RmUlJa?=
 =?utf-8?B?Q3RxRlNiamRhbmthMXZYTUdIL2JMOTB5WGVxd0YrbFJSQTFqS3RITFdpVy9r?=
 =?utf-8?B?SzAxMDY3RmlnZWlwVmtRc3Y3K21pZmwzQ3BvNVhaeXpUVnpJaCtZckpGUDdV?=
 =?utf-8?B?SExaeTBZWnFyNndiWVpKdzkxeEpRdFF3bXhvU0JmejZTTC93aE5aazlxTWtW?=
 =?utf-8?B?cE0vcWY5cEtsZ2E1Y09uTi9vQ2pWcDdvR01XLzUvdlhQSXpvVFVzSkNXaGlj?=
 =?utf-8?B?dXkyRXdXb3BWUWRncWRrenIzRFh2OWRob1RLTm9YRjczaTlJY1g2ZmxGRHND?=
 =?utf-8?B?QThXMFVrSm1qSXozZFZaMFpDOXNyYzNUZHVXNmwzU2VmcFQ2Q1FsSUk2WkdZ?=
 =?utf-8?B?eXV2U0tqVEI4QnpDbCtXaUIwMlJTQTJncEJjbEwydzJRSzlwZlBzQWkxWFRF?=
 =?utf-8?B?NzNvVDhtK2JON2xyS3Jsb3pTT2dYbitkOHg3VVl2MnNpSnlYUm1uODAyUHVm?=
 =?utf-8?B?N0h1TDhZemJ3TnZKWXBINW1pZGFQOWU1WVhyUkhrK3lkSWZGYjJWM3BJby9h?=
 =?utf-8?B?T2s4ZXJJYVViU2NObVBTaG8yZFVEZGMwQ3lyTjVTd05YaTdBOWJkUE1YYXUx?=
 =?utf-8?B?S2pIWjZUZkZSWlBjZXhLR2h0U2pCTXVUSDAwL2VKRWRXbVc3MDVsL2Z4b0dw?=
 =?utf-8?B?U3ErbGlpT3luV2RxblpOVnR6aXZ1MmlMWmljYUdRTTRqVkZVTGU5eVI4RndN?=
 =?utf-8?B?YzlERzNsQlN1NUlicFpqUGtIcnlScTdKZXdEcmhwOWh4VHFtM0Z4VFNBZDEx?=
 =?utf-8?Q?Y3PW8RaKMXVzaQz6NaPKzzE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 807362d0-97e7-410b-e353-08dd3c9c4e49
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 17:26:58.4091 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yfDPY4Jqtfau8aogTZQG/WYemGVWA+z0R+3NZ2DXVo/s/vEYXwiq69goKkYRD27Zwt93ie57jyJ+xli5yWxjJ1flHamg0w04kJDyBB5PyRg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6451
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

On Fri, Jan 24, 2025 at 12:45:40PM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  drm/i915/pmu: Fix zero delta busyness issue
>URL:     [1]https://patchwork.freedesktop.org/series/143900/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143900v1/index.html
>
>     CI Bug Log - changes from CI_DRM_16011_full -> Patchwork_143900v1_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_143900v1_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_143900v1_full, please notify your bug team
>   (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>Participating hosts (11 -> 12)
>
>   Additional (1): pig-kbl-iris
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_143900v1_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@gem_eio@in-flight-internal-immediate:
>
>          * shard-mtlp: [3]PASS -> [4]ABORT
>
>     * igt@gem_workarounds@suspend-resume-context:
>
>          * shard-dg1: [5]PASS -> [6]ABORT
>

These don't appear to be related to this series.

Umesh
