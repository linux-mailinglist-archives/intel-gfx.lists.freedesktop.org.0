Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80469D3ABB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF2F10E73B;
	Wed, 20 Nov 2024 12:37:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HJMIAgj8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA0910E734;
 Wed, 20 Nov 2024 12:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732106249; x=1763642249;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3BmMJ5rsloHZLdBtj+QQPCaxKvQ6oEVoW0WNtw5G8Sw=;
 b=HJMIAgj8srIoXb6BygVHTP7VDv+maxZJ9aNqlGOu7wpBN4rd0qA5rEzg
 ubYl3TARCz3i+4itgRFGgvWxD6ehf0/VEtANK5P53DtmbdjSBbw92nby+
 rusCGb7hGjbtCfWnyu+yS/lp+8E5DtY4dORoU8YlwnUbW94JzVh9PMY71
 bKhaZMcYQdym1fEcmTA065SK8dBz9XxxO4cr890aQY1ReWFnFq3rKZvbx
 IKp905eX5+7XouPW18mydJH2DojrNFh2P4pOP+2Bt46hCwkcxXh4DrHZ5
 upTGww34bqRthq/P2qglWWi2VVYN+tW7vj+7dqYge9OhtoR3/yTo3K/qS Q==;
X-CSE-ConnectionGUID: E2IzaTAmQsiwCEOkXC+3ZQ==
X-CSE-MsgGUID: uGwgX6SaTXq/iFxFIDXYfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="42782379"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="42782379"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:37:28 -0800
X-CSE-ConnectionGUID: ce84b1NgTPuUmBxgN2GClw==
X-CSE-MsgGUID: jTb03AT8Sf6ARuW8pSm8Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90307497"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 04:37:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 04:37:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 04:37:26 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 04:37:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wFoujPQwEmXWBA1M3zgykAn8spvMBB3umO19wdBOD8W6Ff1kfDTHGR8tGJu9gnc69v0iYCIr8t4h+IkufC8vYFBcZW0N0f3eLR9ojajJMawCGC+crrU6PfiS0uPMlvh3JPvcf8KCqEMGpje64ynGapeBxSrFFPXXQPKjM5R4SGIyV0fVbpk2tBovBOSFxIU+o+mkMPjVAPx75hJ//5Jk3VoIb4bMbo3YCkGTHY9V1J5SfHk+k7jjqH7b8Fndbs1tcJCqgP9qUr3VZ6zqhr62sM/6GT8kn5/XbDmX/Zum0kGQloLXxZJLGrm3mTMXolB6+wiiiTmyEjLB8B01K6tqaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v4Rtzi++p6BHcgKaagjllY8VZ5dLHutrNhr52mX4Ve8=;
 b=RFIJXyHcjKAgvZwQUgXwUJrjXRvG6UiE3rN/sqbbdR5AY4gbnOs+OGa6GWplj6ocwPbr7D+OQufZEPqX6h6VJheVsZo+yh/8UsalMiL/M6cOCMtK3RI+oPtf/7qklkzyH/Zj6c9nuQL08fKy3Ex7w+MgLv8Qo2ehk2G3Gc7EzwO2OMYLeFnMRzNr6OH4jCFwD8oCswFvDbiahFTw4nXNNhK1Q0UR2pURbx9UT92BsZCCu6BySxufvKhf5Sewfoo39B2jT0llVYcneIm51kjaiEjhyVckFOUiMSO5edQ9DqazpMITz1cNy34vttf1dNz65JP2m1PQDEMAgJBUHFrSHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB8081.namprd11.prod.outlook.com (2603:10b6:8:15c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Wed, 20 Nov
 2024 12:37:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 12:37:24 +0000
Message-ID: <cfaf69de-4fa3-479d-bdba-252137cc98a7@intel.com>
Date: Wed, 20 Nov 2024 18:07:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/12] drm/i915/dp: Separate out helper for compute
 fec_enable
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <imre.deak@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-4-ankit.k.nautiyal@intel.com>
 <871pz62kcn.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <871pz62kcn.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PEPF000001AD.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: d29db32d-5783-46fb-ce7f-08dd09601572
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UFRVdjVTbkhMMFNjemxnYWtJMTAzWWlHQXYwcFYyMlhmc08vUy92cTdUdkM5?=
 =?utf-8?B?WkVkT25kSitFenl2dmNnaGZPdG83ay9kbWxmWURDN3k4b1B4NGFrK2ExTSt0?=
 =?utf-8?B?a0xPT3ZrYkl0dTF1dUdoV25LWGJiQTgxdDFXZDRDUHpPTEZkSU8yU1d1UE9S?=
 =?utf-8?B?MDdheUkwd2RGL0tIdlc1M0pqRndqMk4vY3JVbGZGUk5NVWtJZnJWMFpRMFpt?=
 =?utf-8?B?N0hxdGZGQnA4ZlQ0ZDR5aENReFJYR1VSUW9KcGlaOEgrV1dUQ204eENQSnhR?=
 =?utf-8?B?Z1JvMnQ5c28vTGlaK2l2d1k1d1VMVVdRR2dtUHVSVHVYZzJQbjdmNk9kM3hk?=
 =?utf-8?B?Nk1LTFAwbmN5dG5MMzFXUkhmN2w0QmVXZ3NSY3JCMk1TeUNNVVNpdkY0U24v?=
 =?utf-8?B?M2dDNzVaSXlCdERKZ1lSbnZRb0krWmY3Tm96RkhqY000R3hzVmY3ckRySHJD?=
 =?utf-8?B?UVBCUFpBSE1WU09DL1NJRUFJK0lLSElBL0RVYS93UTBDaitNYkdGNGdYZ1Iz?=
 =?utf-8?B?Z1pZSjBzWWFLTmU5L1BzdFQzT3I1ZGJQTkh1RXhibUsrdzROYVdHN3VxcHZs?=
 =?utf-8?B?OHhFMHdEdno4bTFwRE1rMzZ6VTkreGhPckd3bE5ROHl4dFZyei9ubmZYclBF?=
 =?utf-8?B?K1d6QVNQcFFzTFBUVnpUMlJGV1ZrL2JYK3pkYVhNZ1BrSER0S25Ncy81TDMr?=
 =?utf-8?B?eW42bjh3REt3K0VWL21XeWJFWCt5TmgvSGJTNms5VHllbXBwYkI1bFBLZkkw?=
 =?utf-8?B?Z3ZDNHg0VDFpVUc5TnU4ekxDUDZUL1NSWmF3Si92aDV5TWNqZXh0Qk1CZHdD?=
 =?utf-8?B?TU5ZaEtRSUl4dnc5VXBtMUcwSno3SVpNT2pmcVkvNElRblRoZy90OHdnNUtD?=
 =?utf-8?B?RlRvZktJak95QWZXSU4xK24rSjlCbDBrM2VrL3VZWi9YSkt3RmF5Q1FITEVB?=
 =?utf-8?B?eE9uNmdjQTlaT3lWRmFhc0NPcGIvWm5JSTZkLytGdGZ3cnNHZTVmVk9IK2pv?=
 =?utf-8?B?dXdEZG5NUzZ1U1RYa1pkem16S0hQSHBpQkpJUW9hWStaa3pWUXRzOTVndTBS?=
 =?utf-8?B?WjNyNTVHcTUzdTJKcHgxdDhMWU5uRkc2a2R5QTdBTkFWRnJPMXlHM0JMVi9T?=
 =?utf-8?B?emtUMksxNGQrRzNISytaZTR0QVNDNWZPRXZ2Zk0rTXhmV2RsekZnRWg3YjN4?=
 =?utf-8?B?SHRuQW1Ha2xKbXRFQjVIV1FwcmlnYnF5S0dyRnU3Sk9QYjNJdW5YQ0ptWEVV?=
 =?utf-8?B?SnFkS0xnWlFBTWxoRS82QVJDdjhaR1FzbUVrNEVwNVNKQnhScTRCbTdGSWZt?=
 =?utf-8?B?ak5yRVNzdS8vMEZiNmUrMDR6OE1vM2EwRDlnZ3I0bXBscDE5T1dQNjhWVEdw?=
 =?utf-8?B?NTVVMStib291UTFRa0hpbTVIcG90RkF5aWp4UWZ6dGJ4L3Z2QlNRS0dYK3hS?=
 =?utf-8?B?NzBjSkNMVW02TEVNRlk5SHNHSXpwRlhFN3owcWo3NzBrZFFKZFJyTVlFZUxE?=
 =?utf-8?B?czE5YkJ3Ujd2VmZNbXF6emFZT3BZMXNXZzlvK0FsMG4xNVZ2QTdXWEJ2MlVv?=
 =?utf-8?B?UDg4cmZqSm1zYkRpaHYvc2U4Sll3dWxiUTUvRUVzZUtOUUFaWWdvOTIvRXFk?=
 =?utf-8?B?VFVPdU1VRno0RDdtcHIreW1lWmJDRlVlRnRYZFRLSnZvWE9jS1A5cHdYMU1v?=
 =?utf-8?B?QUtqRklDV0dpVkhjT1JWWU9Sbi8zcFJVU1Z1TWV1YXVLS3VFTnpyMmR6bFVC?=
 =?utf-8?Q?5sLc7tvJEN8h8GSo5I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUpvWlVya0NaZ2RmQXpTQjRwQURqeWhJbzNaTkpjSWFVN3VRakpJVzVwd2p2?=
 =?utf-8?B?UWpuZlJJUkFWaXlCcTRjUmtBMkRxVmxVd3ZCcEpKWW1peXVBbDJEQlduSG5n?=
 =?utf-8?B?TUczWWdPUWxjcEFtNUxjN1c1WnUrdldsTmhYZFV6MDAvdllJMzR1U3gwQ1hS?=
 =?utf-8?B?SEVYcEFja2l5NzA0VWZRVXZZRHJORFlsb1VzVVQvd0NhTWZDd3hJdDgwWExR?=
 =?utf-8?B?T0lCT2dXdzQ5dHVPR01jMS82NDBvcktEbWR3cU5GcjN2NkhONHoxZzMvc0dD?=
 =?utf-8?B?Nk1iQ1gycnJwZjIvdFFJeEFCQ0crMlBsTGk3SS95YzAyRll0NGV2U0hEbE9o?=
 =?utf-8?B?R1hCTG93UkJ5RnRpbkpXT3BNWHBXempiazFjb252N0lpNnNneURrRXA1TWJO?=
 =?utf-8?B?M2Z5UmROWGNYQS9NOGtZUmtxUEFhcEkzVWFSYTBPYUVJZTZBSnJWa2lHYUVI?=
 =?utf-8?B?TzFEdzFEbTlHL0tZeGxGeWFkWUdTNzFJc1pNeDh6M1ZyeHh0aS9LdVRlL2dn?=
 =?utf-8?B?dVpNNnFZSkhzeGRNdWVUQTNuWm44aFlpZTNHcFM4dHBLMVJORVVReWxFbGNZ?=
 =?utf-8?B?TTVOTXM5Z1pzRS8rWXBjTUdFblBFdlhVZGIyNTNTNVFzNU5NNkZHZHMwM2FD?=
 =?utf-8?B?N01aNVhOUmlSeFdvOUNOR0RPbnpDTlI5bGtNb0hpQytETTNhNUw0b2RVdXVS?=
 =?utf-8?B?WDVzZS93ZnVWVko5K3VlVWQ4cnlQLzJkZm51ZVJjZDBsdXd0YURWck1uMVgv?=
 =?utf-8?B?T0RwaVVuVExzQkhzOFlYMU1pbGNnNHZJV3dZYjE3M2JLc1RLR0k0MXRKaWJ2?=
 =?utf-8?B?Ty96SWdKc1FtQ0N0MEpqWitYUWhtV1ZQd0NjZWg3UTZYM3J0Tm9iWHFKSXJC?=
 =?utf-8?B?bjkvYVMvbi9HVGZzK0Y1clcva29jeC84UHdJYm02NWJNc2dCZDJEYjh2VEFC?=
 =?utf-8?B?VlNYSHBuYWlhUUdiVnVxRllCUzFRUGZOTzF5c3RFcFNYbi9VSFpEUVRKeXJP?=
 =?utf-8?B?ZDVIVWNKOEpLd1NiVFdIcHRzY2J1YVpWR3ZXNG5zVWYwK2l4dWxhc0IxeE9n?=
 =?utf-8?B?T2hnakt6eEVwNlkyenhXY3lxWXk1K21OUFJHZkxyN2ZvTGYyK09CWXA5TFlQ?=
 =?utf-8?B?SFlITjduZ0pFdEp1cTZWUXhPZk1NTVFjTlFTVlA3TVIySmpzbVh6N0JwMm85?=
 =?utf-8?B?eSthSmZXaWNia3d3RkNtOTVRTmVOSDFWVSs5Rkd5dC9XYUdkdXNTV0JBN3d3?=
 =?utf-8?B?ZUVpZW04SjVUTXc1QWJFZlV1RzVSaXlsNEI0Z3RVWXZSYkdBdnRWUE8rSXEw?=
 =?utf-8?B?dVJrc3NWTk9tTzU4WU90WTNNR1F2V0FEZzJFK2NHWW5iOHNLTE9GbHhFbWVj?=
 =?utf-8?B?LzROZmNZK1RqYyt6NW02V2J5bnVZb3VFRWZOU0RaZXhEK2NITFY5bk84clNv?=
 =?utf-8?B?eGV3MEY2V2xlYmVPYWFFTjlGL3B4d2s5VVJ2UmVTMXJ3Y0ljbmR0UDFMYnc1?=
 =?utf-8?B?OWkwZFM2WUlUU0dISU5ISkFZdmtlb25tY0gyeTRyZFNFNWhZa0ZYb2wwL24w?=
 =?utf-8?B?NmFxWmRTdnhQczJ0ajBwNnpQSFpIQ29qTEdlOTFqbXRjL0lsNm1CL2pJQVNS?=
 =?utf-8?B?eFN3b3VrTy9nZCtyQ2lLVWFEYlpQMjEwL25lc3g2RFFZSG5pWXUraGZtcXlr?=
 =?utf-8?B?c2dhTkFyTG5sYlUrdkxvZ05UV3djeEtXY3BLckhJaXFpbVViVnlTeWtjUWJy?=
 =?utf-8?B?MldXbzlQWXg5S0NZN0JGamw1S1JtRHV4L2J6eTFBZ1BtelFpUnNtWERMeG9Z?=
 =?utf-8?B?Y0VoZVh4NnJHM21KK3pkOElDU2NhTm9YbHJnVUE4OUIxZlhKS0thN1lBU1R3?=
 =?utf-8?B?cGhMV0xURUFabGxuZ21GaGN0d0VjcmQ5N21WakZWYk02ZUZ2S3NYSUFiclFp?=
 =?utf-8?B?YkpzYnlUbFgwUDgvT0d5R2pkbVgrNUJ0dWhGQlJLelpBMDhmaWt0ZXJkSVhS?=
 =?utf-8?B?UDJuT2w5WVhJd3FxWHBTU3NsaHFMNlhjRW0zcXJ5UHlVVDJzZXc5QktKUis4?=
 =?utf-8?B?ZEVpeUVjUlR2eElhVjhIOFhpQnhYZ1l1ekxZYTdOU0htaTNnSnZNU3IwanpJ?=
 =?utf-8?B?WXg2RlNhbC9YSllkWXNaRHBTSUxvUDNCZ21BQ01hM2NHZklFWmcvc2I3WFJX?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d29db32d-5783-46fb-ce7f-08dd09601572
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 12:37:24.1501 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NuWuxQjnCdNLEhGVil7OIfnRFjgEHNj1EwxBlGo9JUgSrgWbszZVnldEgxR+VXwRR9Cru05PNqcWInIicXE3VGG9EOhwKZuBaP6AFDpcG4o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8081
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


On 11/20/2024 5:22 PM, Jani Nikula wrote:
> On Wed, 20 Nov 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Make a separate function for setting fec_enable in crtc_state.
>> Drop the check for FEC support as its already checked while checking for
>> DSC support.
> That's two changes that generally shouldn't be bundled together.
>
> Aim for separating non-functional refactoring and functional
> changes. (Well, arguably dropping the FEC check should also be
> non-functional, but you know what I mean.)

Moving to separate helper should indeed have non functional change and 
dropping the check can be another patch.

Initially I was going with a separate patch for dropping the FEC check, 
but couldn't make up my mind, and merged the two things. :)

Will do as suggested.


>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 30 +++++++++++++++++--------
>>   1 file changed, 21 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index dee15a05e7fd..d82e25d0dc5a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2352,6 +2352,26 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>>   	return 0;
>>   }
>>   
>> +static void intel_dp_compute_fec_config(struct intel_dp *intel_dp,
>> +					struct intel_crtc_state *pipe_config)
> I think all encoder->callback_name hooks should be named
> something_something_callback_name(), and the same goes for helpers
> specifically aimed at this.
>
> This would make the function intel_dp_fec_compute_config().
>
> Yes, in many ways "compute fec config" reads better, but there's value
> in being able to search for "_compute_config", and to know this is only
> for he ->compute_config path.

Makes sense to have _fec_compute_config. Will change this.

Thanks Jani, for the comments and suggestions.

Regards,

Ankit



>
> BR,
> Jani.
>
>
>> +{
>> +	if (pipe_config->fec_enable)
>> +		return;
>> +
>> +	/*
>> +	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
>> +	 * Since, FEC is a bandwidth overhead, continue to not enable it for
>> +	 * eDP. Until, there is a good reason to do so.
>> +	 */
>> +	if (intel_dp_is_edp(intel_dp))
>> +		return;
>> +
>> +	if (intel_dp_is_uhbr(pipe_config))
>> +		return;
>> +
>> +	pipe_config->fec_enable = true;
>> +}
>> +
>>   int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   				struct intel_crtc_state *pipe_config,
>>   				struct drm_connector_state *conn_state,
>> @@ -2368,15 +2388,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
>>   	int ret;
>>   
>> -	/*
>> -	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
>> -	 * Since, FEC is a bandwidth overhead, continue to not enable it for
>> -	 * eDP. Until, there is a good reason to do so.
>> -	 */
>> -	pipe_config->fec_enable = pipe_config->fec_enable ||
>> -		(!intel_dp_is_edp(intel_dp) &&
>> -		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
>> -		 !intel_dp_is_uhbr(pipe_config));
>> +	intel_dp_compute_fec_config(intel_dp, pipe_config);
>>   
>>   	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
>>   		return -EINVAL;
