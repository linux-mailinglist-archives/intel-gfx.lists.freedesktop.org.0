Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7EE9425A0
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 07:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE03F10E28B;
	Wed, 31 Jul 2024 05:07:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n3h38WyX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0262310E263;
 Wed, 31 Jul 2024 05:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722402452; x=1753938452;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ybv2F4wrDe9A8FNezg/LNWn23BuF2yO6C30WyJkvQug=;
 b=n3h38WyX0+KZ9FFGWqqLfzNGVB0yuy5xGa0VQGSpJMk+WAHw8fqUXLwp
 H6cFwW4s0/FizP9Rq9dtyycSJKMvzQFPxqnqR3VlIHenZQMYVaUGe33oC
 VRtVE6xT1VfT3/pEDKuj3tc3bv2tY/qCTkObFfvctQt6rqMrs2PPt2gCk
 w8liUy0iPsMFP/vBgM79WKrnvIJARRnpr5J3MgKi31RuVs8Hi6rRnoTUY
 NeqVPdFcTbHHxv+AH6z7MfnH6JaD2daDTzl5jN8F+qDhCWgoFpBxCen8R
 M1d49rA3xNLt6d/AO+7hwpka7XYN/XyS6reLe93wgV6Ol1KVk1rFzqCev w==;
X-CSE-ConnectionGUID: GYw0YQwrTcuEDE7bn4nbUA==
X-CSE-MsgGUID: QFEHEkIxRmWbzb+kAoPwWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20143091"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="20143091"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 22:07:32 -0700
X-CSE-ConnectionGUID: aG3YNSwfS1mFtg+SD9W4Xw==
X-CSE-MsgGUID: ARWaFxoNSJqJ1JdDDk/RAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="59364318"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 22:07:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 22:07:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 22:07:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 22:07:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 22:07:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j0NEMiHWsiax55wSx8Gi7/eePOfQjkE5PXSPPal6Y/vDUmQcRlBMCTflc8/76KFQ62fNQE2FtFZJGaUTfdLrLd+WeK+yZr7kZwgv1iaz47F+AxyoajnDmYKk5jdVLDxTqL5Fso/nL/R23RgEZmy2CXdjBJXAE5M4JFsSMoDqRE/bjD/8lYuPUZ6O0bcYQNtcNwQqvuo9SmRVITch7iorpPt8He1zGS6h13oMlWsEm51zazIpILPn2zNAtoMl3R7LJxDaeS6r9fIY3fE7YOfeijZ8HUqdc17aXO/HrBgm2kvqi+6ocE3qy2iSTSfNQta3vVHqJz+l/Rng4b7exwlM5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=08sL0rTfT09PEfA5Xp1X4wqcZfOzNWnocOMZIzv9T2Y=;
 b=UTWztxegwC0DhqLpmSIvyCz8C4ItamLEYCJqadbpjFx1mgNEx8aYB7NNWwnyDbMouY1rI3pGvHVdhiQWy4AMaQF1lkkKnOvLcsk/W36DQdXiqfmIu7Nl8uZ1DxDJM3F5Rmi4/FurWCwJ9d41QympZjt28GmUpBrlNdDwLoIZx2XX5GIrpzWQ3C/ILbW9TzldsXO8WuGSM+/EvQVB2M/Fx0Y+IWXNrxPfW0O9a5vEJWtUjt5GOKsYiQQYbfGzle3G828BGxO9trvvju1PZ5H3F7xsa6K2cmVxnrBNwRHm04hYQAE6Nww0Kh6pKY3aqx1lelIsQn5TLIWIZPHvBiBZjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 MW4PR11MB7080.namprd11.prod.outlook.com (2603:10b6:303:21a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Wed, 31 Jul
 2024 05:07:22 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%5]) with mapi id 15.20.7828.016; Wed, 31 Jul 2024
 05:07:22 +0000
Message-ID: <3d8a5ff9-4d51-4eb9-9622-bd27b3a092de@intel.com>
Date: Wed, 31 Jul 2024 10:37:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Badal Nilawar <badal.nilawar@intel.com>
References: <20240730230123.2695162-1-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20240730230123.2695162-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0105.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::19) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|MW4PR11MB7080:EE_
X-MS-Office365-Filtering-Correlation-Id: e635ef0f-b03b-4ebe-8ef6-08dcb11ea8bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cU1NVmlrOTNiK011MzMyNXNtQ1F0Y05xckZNVVhkVUZEdGwza3g0VW9lUzEz?=
 =?utf-8?B?elB1Y2ZNblVtU0RXYzhoSUc3U1dKd0UvM3ZvSDNBSi9hR2pYWFg1SHo5ODZF?=
 =?utf-8?B?Mm9tU3YrZmR0WFBXOSswbXQzbjZ6N1lFUUJScmJDbXNhOEQ0VGVObkFFSkk0?=
 =?utf-8?B?UVpRM2MvRzlSdWp1MlF5YVFRK2ZjTVpibVlGY2VVT2wwc25aNHJmYk0wOVQ5?=
 =?utf-8?B?WFRLOWN5VGduU2xqQ2Y4SUpiVGFPcGZXbW94LzMwbTZ0T1ZoZkVjc0ZwaUFG?=
 =?utf-8?B?RFNrOEdHM1BuZmdIeDlOU3ZETnkydldjUitsK1V2V0tESE1VSkRlNElFYVp4?=
 =?utf-8?B?R21KRER0VUQwWnBOR2JuTHhxN2UxZXdHNGM0NWYrdWY3eERnTWE2QW5EYWc0?=
 =?utf-8?B?TmQyTWcyZ2lEcDd2Y2dNMWRXV1cvL3Z6aTF5SG9ubEtReEJCZFlydXZTRGI4?=
 =?utf-8?B?RXRkWmowcHpIeEtoQ3R2RGJtaUJSdjRvb1lNRTNLdkFIdk1EbjF1d3d5OTRP?=
 =?utf-8?B?VDlXc0pZZzB0MVJSSDJaNFpjOTZheXJLTVgzbXNaVmh3MEhQQ2JIdVJrVzBr?=
 =?utf-8?B?V1g1TklId1NURyt2TVozdnk0K2t0RVVKaUY4czJVRHZ6bm1VR2prK29SOVdk?=
 =?utf-8?B?TmoyVWxHMllUMUxJcEdkbWYxZU5Fak5Ja0d5RVhDL052SW5KMXFBZnhSdG1N?=
 =?utf-8?B?VXdsWDcxNFFQOXpybHdTczJ0T0pBVkE1enh4M3lmYWQyMldCUzByRUNyZkV5?=
 =?utf-8?B?OWZ1VjRRWmhqZGkrQ0l5SVVoeTJYY3N5RjVCaGhuUFdWQ2FWL1hxQVoxSk9C?=
 =?utf-8?B?SXU3ZjR5cm5hTERENnIrQ3A4OWVKaFFRdDUzRE0valQ3Q2M3b1Vtb3BHK2J6?=
 =?utf-8?B?NUtSNGJkVi9FNWdNZ2RtNHpSblJERm5uaHFQM1ZGMTVHcFIvYlpBc2tOSmIw?=
 =?utf-8?B?blVZT1BTcFZoZkpQYmVxQWVrbGQyVExGeEtUOFFzNGVGbFB3UFFwWkZxVE4x?=
 =?utf-8?B?VFRwb1NvUTVTbkkrckhQVUFtMGxIVnJFekJvQ3loVXZXc1NTcEY2MTNYeEgv?=
 =?utf-8?B?ZGRQdGRzbmh2WjJWV3RlY2hVREZSUWJKNXdRQU1mMG1MR1VIY0dGa1BwYmp0?=
 =?utf-8?B?V1BubEFWcDJJdk1NVitZemxTL3pyblFVNlNBb2lueWs0eEczRVh0cXB1eW9H?=
 =?utf-8?B?ZFA2SnppMkNOWTkyMUd3dmQzY0VENDc2WSs3QVRBR0s3bUtVejNBaXBCcnFJ?=
 =?utf-8?B?amswQms4MkdrTUFLQWUvSjRvQ0crOHBMR3ZDeWZLZ0ZsZjduQW1qN3VJWWx5?=
 =?utf-8?B?YWJSODJEakRKQ0Y1MklBR2tNSUFGTVZPTmhtZ1pTMEpOU0NSLzV4Y2l3NTFZ?=
 =?utf-8?B?NkF4eWg5blp4WUpKOU1WS0VDdTcxM1JTejMxeFBLZXJCbWh6dEppT1d2UVNQ?=
 =?utf-8?B?SEpKTEVhQjRlVGZBcGowUVBSYlFUOGVlaVVHb2V4WWM4Vm51cTVtemNpSWtW?=
 =?utf-8?B?QU1zNzluZzd0OGs2ZWpZSEo1c0o3MmhxVW1HS01sVjJGdjlHUG5idVNleS9W?=
 =?utf-8?B?cmdNNW94NWJwVjMzWm5zQUlraE54OERUcmpnL0NnTzFFTTEwS2VQQUdvS2x5?=
 =?utf-8?B?SldtZzZWMUJCMWozdHQrZk8vTUEwempRWEdXV2VTcnR5Z1dzRmhjS2NBK21R?=
 =?utf-8?B?K0hFekRNaDJONGp5cmVEcndCT1NmeDVXNGd2UGhnakZCZ29qZDBxSVBHRytB?=
 =?utf-8?Q?zh3sm+FAu3rZW1Vm5Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDAwTEthakFwQ3VZdmN3alpvMVdZZ0ZsSkdGVFovTlRzMFBPblBwQkhVY2pP?=
 =?utf-8?B?dFlkRmhXMm1RQkEwTUg5R1NxalcwYnYvVzlVK1lncnBvR2pnY0ZCK2JPaU9v?=
 =?utf-8?B?Qzd1Q3o4bS9xcmJEdkJrdjdZU2VJR0F1MDFxL1hIUUUvaHM5TEZPSis4ZWJr?=
 =?utf-8?B?L05leXNiNmVLWXNBUVFld0t3NVVtN3RZQ0JEM253c2JEY052SGgya01yOHlR?=
 =?utf-8?B?QmdMd0xsMHM3VVdYRm1lczMveWsvejhVWnpBR1VoeW1uaEpXSHZyQWRtcWI3?=
 =?utf-8?B?QWViTXVFcm9RSHdLTjc4bE9OUWQwOHgxY1NuYW44M0pXZUVWRXZxRmZEdENT?=
 =?utf-8?B?OERqRXVhc0pxaVBGMnBaM0c1eU1WZDFYVU5IUlRwWkIwNzhhYWtHeXJqSVYx?=
 =?utf-8?B?b1EybGdZdGRDRE9KUmJ5NDhXTUxxaElJcGhpbWVwdjJXWlpEMDJ3azVuL0JM?=
 =?utf-8?B?SW9ja3Z4VDR2LzI0ZW5EZ1FVWmp5UUdpSitnd3J4ZnVjbFUwdXY0MHB4dENU?=
 =?utf-8?B?ZWswQllFMVJsN1lUUWxpR0NzWjVRcEdMb05vaGF3MU8zNzJuaFpYVWhnclA3?=
 =?utf-8?B?NlZvKzkzSFhHbVBvMXpUZDJzQVdpYmxkN2F4QVdqY0ljb2xnLytRaTlLc05x?=
 =?utf-8?B?VjEzdkZkbGYxMjhCcHVwSWZFWS81RnhSOUtNcHl6TU4yM296V21DRHVqK3px?=
 =?utf-8?B?d1FWUlk0ZFdYYUJvYmJra3NTRlZXUUJzeXoyNVh4S2pUeklUdTdqUHRYOUtV?=
 =?utf-8?B?SWlyejArMUFjQ1FvSFEyWDVEMXZEVUxoWmN1REhxZjlaMEdwb2syZk52WmhI?=
 =?utf-8?B?WUZabDl6MlRVWUtVdGlQL1NodG5pcGdTN1I1NlRtNTRhTXBxbVk0YVFMVWR6?=
 =?utf-8?B?c1RxbnB2alFNZTdlQTl5OXFXdlExcG5JdmNxZTZHenV2Nm5SQUJFZUVoWml6?=
 =?utf-8?B?OFplNGl6eHltNmxSSm9USWVrYm85QmNzYkRFQmVCU1hINVdhc2NlOWlWNUNP?=
 =?utf-8?B?aXN5L29XRnNYQklxRkJyWlVET0RtSHkrK3pTclpscGYzSG1mSjFTWWxBYVhz?=
 =?utf-8?B?elo5NmRTMlVoZDZDTENlbHZzNjZiam54bFVwd3E4QVhmdndkMzBJZExja1gx?=
 =?utf-8?B?M3dmTUJGNE83OXRWMG1TMDhhNlRMaHVKTkJQY3lUNEcreGF1NEJaeGgrbXp4?=
 =?utf-8?B?ZnBGdlRobnNwdDhpRkdvYUsxVnRUV0xZc1FwejlNZG9vaW1oUUljTUJTckQ3?=
 =?utf-8?B?UVdNMVRRcDREakx2dmdxQzl5SE5hYkN2TFQ5QzRad2x1NmRXUkkyN2ZNTkxo?=
 =?utf-8?B?UGY1R0V2NFM2ZU5JZUpFWWpEaTBWN2hrYWJDTExOc1FNRG42SWFFRlJnM3cx?=
 =?utf-8?B?bDhjMnR4VENoaUZKd1liRmZCOVg4R21QQ0RIa3RjRldUUnZZYnF3QjdoYlNY?=
 =?utf-8?B?VUg2bUxsS2hzVkFsbUVGNUR4Qzdyb0dDbDM5ZDhOOGs2U3d1a3Y0Tms1SUlk?=
 =?utf-8?B?QmdVM2JwNEpGV2Zwa1JTZ3h4dUlaQVhXbFkzem9WazdWd3lXQmx1Z3cyTDh1?=
 =?utf-8?B?aTBQN24xY3hiTTd5bTh3TUZJYytTVnAzSEZRZXB2Q3hSNUh0TzMvdUJmRWZV?=
 =?utf-8?B?eWlIc2t6UmMxcWNmbFR0cER5SFdPVG5NSTFBeG5BeExoMmI1TnJMRzY4MFA4?=
 =?utf-8?B?dGtUdGJuQTkxWW9oeHIwRzJKTTEvaCszZ3lsY3pzVEFEakZnR0hNQm5zbXB4?=
 =?utf-8?B?RTdNUVJaZFNiT3dObHNFUGowYTg0MjBpd2ZjdnhBMzJ0dHNXaWY1MU9Zb1NJ?=
 =?utf-8?B?Mlhwb21CUWoxM0UxOGlDTEFxeEN6THZ4SFBTUG9BQUw3ZGNSaW1pWTRRSkJN?=
 =?utf-8?B?QjJxTTF0SGtjRURTU3FnK1crOUlUR1FhWStRNXJhRHdRTTFDZXZKblNWYzFz?=
 =?utf-8?B?TEFhRURiYS9paC9ZU1g1MGozNWhjMXNkbTlMUFEvQUJDQXI4RThES1NsY0pB?=
 =?utf-8?B?bm13bmxpTHhnUXlJTC9tSnMwWHF4aUlSVXpibm5GZ0doMHo1VDFNUFJCWHVQ?=
 =?utf-8?B?N1BQRFo4ZFRScmdpZ2N4bm16ZHhDd2VxT3EwVzhyb203MW9jM0VDemxjdFpw?=
 =?utf-8?Q?VJp91QHVSX87/Q45dULap0oyr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e635ef0f-b03b-4ebe-8ef6-08dcb11ea8bb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 05:07:22.1053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1HGVvR1e6Nn1N0DE2+z1Y0h5jb+UkPzwCxG6JkWHAe3xRtnKCxecW+Pmj69aaqSimel/46R8IB1lAb50yTCpew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7080
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

Hi Vinay

On 7/31/2024 4:31 AM, Vinay Belgaumkar wrote:
> We are seeing several instances where the RPe, which can be altered by
> pcode dynamically, is causing subtests to fail randomly. Instead of relying
> on it, we can use a mid frequency value for these subtests and avoid these
> failures.
> 
> v2: Fix bug in the tolerance function. Remove rpe usage from freq_range*
> as well (Badal). Fix test documentation to reflect change (Riana).
> 
> v3: Actual frequency cannot be guaranteed to follow the requested value
> 
> v4: Handle cases where RPe can be greater than min/cur freq.
> 
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2200
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2196
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2203
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2412
Closes?
> 
> Cc: Riana Tauro <riana.tauro@intel.com>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/intel/xe_gt_freq.c | 57 ++++++++++++++++++++++++++++------------
>   1 file changed, 40 insertions(+), 17 deletions(-)
> 
> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
> index 93ebb5ed0..c9d59508b 100644
> --- a/tests/intel/xe_gt_freq.c
> +++ b/tests/intel/xe_gt_freq.c
> @@ -26,6 +26,9 @@
>   #include <sys/time.h>
>   
>   #define MAX_N_EXEC_QUEUES 16
> +#define GT_FREQUENCY_MULTIPLIER	50
> +#define GT_FREQUENCY_SCALER	3
> +#define FREQ_UNIT_MHZ	 DIV_ROUND_CLOSEST(GT_FREQUENCY_MULTIPLIER, GT_FREQUENCY_SCALER)
>   
>   /*
>    * Too many intermediate components and steps before freq is adjusted
> @@ -70,9 +73,14 @@ static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
>   	return freq;
>   }
>   
> -static uint32_t rpe(int fd, int gt_id)
> +static bool within_expected_range(uint32_t freq, uint32_t val)
>   {
> -	return get_freq(fd, gt_id, "rpe");
> +	/*
> +	 * GT Frequencies are requested at units of 16.66 Mhz, so allow
> +	 * that tolerance.
> +	 */
> +	return (freq <= val + FREQ_UNIT_MHZ) &&
> +		(freq >= val - FREQ_UNIT_MHZ);
>   }
>   
>   static uint32_t get_throttle(int fd, int gt_id, const char *throttle_file)
> @@ -128,6 +136,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
> +	uint32_t min_freq, max_freq;
>   
>   	/*
>   	 * Negative bound tests
> @@ -142,16 +152,19 @@ static void test_freq_basic_api(int fd, int gt_id)
>   	/* Assert min requests are respected from rp0 to rpn */
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rp0);
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> -	igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
> +	min_freq = get_freq(fd, gt_id, "min");
> +	/* SLPC can set min higher than rpmid - as it follows RPe */
> +	igt_assert(min_freq >= (rpmid - FREQ_UNIT_MHZ));
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rpn);
>   
>   	/* Assert max requests are respected from rpn to rp0 */
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rpn);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> -	igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
> +	max_freq = get_freq(fd, gt_id, "max");
> +	igt_assert(within_expected_range(max_freq, rpmid));
>   	igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rp0);
>   }
> @@ -168,13 +181,16 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
> +	uint32_t cur_freq, act_freq;
>   
>   	igt_debug("Starting testing fixed request\n");
>   
>   	/*
>   	 * For Fixed freq we need to set both min and max to the desired value
>   	 * Then we check if hardware is actually operating at the desired freq
> -	 * And let's do this for all the 3 known Render Performance (RP) values.
> +	 * And let's do this for all the 2 known Render Performance (RP) values
> +	 * RP0 and RPn and something in between.
>   	 */
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
> @@ -190,17 +206,20 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == rpn);
>   	}
>   
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
> +	cur_freq = get_freq(fd, gt_id, "cur");
> +	/* If rpmid is around RPe, we could see SLPC follow it */
> +	igt_assert(cur_freq >= (rpmid - FREQ_UNIT_MHZ));
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>   			     "GT %d should be in C6\n", gt_id);
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
> -		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
> +		act_freq = get_freq(fd, gt_id, "act");
> +		igt_assert(act_freq <= cur_freq + FREQ_UNIT_MHZ);
Can actual frequency be below the expected range of requested?

Thanks,
Riana
>   	}
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
> @@ -232,15 +251,17 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
>   	uint32_t cur, act;
>   
>   	igt_debug("Starting testing range request\n");
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
>   	cur = get_freq(fd, gt_id, "cur");
> -	igt_assert(rpn <= cur && cur <= rpe(fd, gt_id));
> +	igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
> @@ -248,7 +269,7 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
>   		act = get_freq(fd, gt_id, "act");
> -		igt_assert(rpn <= act && act <= rpe(fd, gt_id));
> +		igt_assert((rpn <= act) && (act <= cur + FREQ_UNIT_MHZ));
>   	}
>   
>   	igt_debug("Finished testing range request\n");
> @@ -262,17 +283,19 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   static void test_freq_low_max(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
>   
>   	/*
>   	 *  When max request < min request, max is ignored and min works like
>   	 * a fixed one. Let's assert this assumption
>   	 */
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
>   
> -	/* Refresh value of rpe, pcode could have adjusted it */
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
> +	/* Cur freq will follow RPe, which could be higher than min freq */
> +	igt_assert(get_freq(fd, gt_id, "cur") >= (rpmid - FREQ_UNIT_MHZ));
>   }
>   
>   /**
