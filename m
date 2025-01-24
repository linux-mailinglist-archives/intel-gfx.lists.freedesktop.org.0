Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA75A1BC35
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 19:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A15B10EA0C;
	Fri, 24 Jan 2025 18:36:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ds4VEF/3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70EA210EA0C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2025 18:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737743759; x=1769279759;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0cEk2lYAcv9jdCrjBr0orxh36ZA1LiRRJx57AkTUmNU=;
 b=Ds4VEF/3ODfbldC2l0KxYkiVEWEZqZ0CqqYnaQEFQ/LQicTmaZSl1qn7
 qpsbxflDWntVkCDdhcIJplJB6ygHBnxWCEaT2eECZEWhomcMn8lVHrzvb
 9zV4POyhGUQPwwfIyil2G4V6oh2G3egwiGPc7tkYXmGPGWpjkCRFu2o9x
 qFNlnKt7iFJCLwccIP41J6B9FmsFxuq4L/B05hDz7TqdOHqqQja8OXH/j
 cMDiBZ3jnv1hH73WPgX/p92QNrcmoCiK/TXxeLIMkNNNer2n4mO1yl8/g
 MmSPPdqUAJU3zxYLAdoNNCXsAlLIFcm013IIVNyZRWb2MFInRMqKTQxab w==;
X-CSE-ConnectionGUID: 7YLOuuvTSm+1mPQx0Il6XQ==
X-CSE-MsgGUID: uFMZapWETXOq6uHGaIi5dA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="41125410"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="41125410"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 10:35:59 -0800
X-CSE-ConnectionGUID: daE/AEceRtq/XLmJs6jNDA==
X-CSE-MsgGUID: IWMZorpVTsaGroTwnwSBug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107822970"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 10:35:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 10:35:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 10:35:58 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 10:35:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tstzfW1joQxdhvR9biSCz7LhIqvsT5bdjE/5ghJsqVL8W/IzYvEhISFRqrKRTRk8go9/tBr6wH6avEXb/Zol02S4VE4ORYUIB9haeuTrGQFBYsC8LXn6Y9YhgZ+AVGpmxn/CAqB9nH9d4Wm3ctzFM3BcsWFCYDMJO4E17RnDoj0u/cNn9QI0zezPbcrJqSW+soJU+9cbSJ1s7L0gn3o8MCQqPVEMSYcmmussdkDKtYAUWtm1CQBwKq6h71rIoz4cQnJXCZSo8wQQEZqcgnCOtBH03u/p57MRsgjmRVdLx3xGf2zd3gGb1rgBlS6u8xzbWiCmUU9IoboIr43kQh3+aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mb9YImluX8uxKPEbU8dBIra5+I7nJpvZUfKgfVVwYkU=;
 b=QUkslkbYLmQz+EgHgEYmvbonf82/AY7pux4Fgv4691XwUkCzujbYAR3muwMFqeO/zf6AZ+T9XG3J1dEr4ayGHMoep1F1Z7NuRNGrNEuVSOxRRdtciNCJ2Fyajgl3tdmsfeZF/RRLtcq2I2giU2qg6BTpKW1Ck2l01lVAir+o5rbFyti2Kdgs7UViwdxvpay4YZINkibKJVoaqk4HUL+lVMvzR5rO+qf9EvLKWmAPCCHLlx2nKMFLqJ63pNHub4A5fPBtNSBVUIiUsXSA6H3IWfBIzqjeCT1hhYXaaV3lL3rzUneaBwnZfmhUcCFyDziudkktL+61XIlKp5d3UuSSeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by LV3PR11MB8742.namprd11.prod.outlook.com (2603:10b6:408:212::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Fri, 24 Jan
 2025 18:35:53 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%3]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 18:35:53 +0000
Date: Fri, 24 Jan 2025 10:35:47 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <John.C.Harrison@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Fix zero delta busyness issue
Message-ID: <Z5PdgyFVMEJ36F6V@orsosgc001>
References: <20250123193839.2394694-1-umesh.nerlige.ramappa@intel.com>
 <Z5PWkFMgt7u0gjKw@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <Z5PWkFMgt7u0gjKw@intel.com>
X-ClientProxiedBy: MW4PR04CA0223.namprd04.prod.outlook.com
 (2603:10b6:303:87::18) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|LV3PR11MB8742:EE_
X-MS-Office365-Filtering-Correlation-Id: d07646c4-8286-475d-fa84-08dd3ca5eea7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXQwMlB3TldhS0E1VFVkWmUrWk9Gd2gvbHRVZ25PaVFRQjdJbkswQW5FSm8v?=
 =?utf-8?B?S09SRS9XZVBhVDVjU3ZLTHc2aStqRFpOZmVDRjIvQ2pidTZHNFppTDJna2dr?=
 =?utf-8?B?V1dmUEtmV3U4QWtHZC9tcDMxbzRqTUl0Qk9LbnpNRmU4dCtuREZ4bGUzVC9Z?=
 =?utf-8?B?SE8wZmFnQm9OYUlsU3JlNHV4MDVRZU80THBDNmN6QWtCYjNOc2tKS2w3RlRP?=
 =?utf-8?B?a2VIVmt6UW1KWG9GUVcwZFpkMXZiTldPSHBPVjhjOUFHRmREdUZkSGxGbytU?=
 =?utf-8?B?V2J6d3p5WmlBYXduSXJqSHk1bmJKRHlaTVMxWEp5ZTBkdGwvK0tQNmpENzVD?=
 =?utf-8?B?RFVBTlZSQUlsWUVYVkh2Mzl5MmhCaGQzSkRtd3RmeGEwaHppT3FvajVHN2ly?=
 =?utf-8?B?bjhLQ003RzlKNG0wUlRPdmpocEU1UjN6NDZDbndQMDdrdS90YWtQaU52L3Y0?=
 =?utf-8?B?K0pUYmtDem90VGdHREVrcSs4VlJ3azloSWdqM2tabGd3SDlXNnRQRXREL3VK?=
 =?utf-8?B?NU51N1BYZU9RMmNROGNtbjgrNWd5OFV0SDR2UEhaT0JFWHRtQlM3blpxN1hT?=
 =?utf-8?B?Q0ZhakxCTG4wRm1sb1ZYSzBpYUtjZEFRZ3M4RUVVblBUNnRnV1JkWVFHQk1N?=
 =?utf-8?B?WS9xcEp6Sm8rai9EVmZMZ1FaSG81MVppL0ZMSjVYQUIvOXZ2cnEzeGo4UWZ5?=
 =?utf-8?B?bVliZmRvTmJjQ1NqbWhnVTIxVlZ2Mk5ObU1MM1VkVlFrSWVzSFpreWZoYnRL?=
 =?utf-8?B?cGdmSjcrNGJ4dVRnaitqNGVMc0dFY0ZFamlUQ281Y2lJaGVXSTZ1b3JnRlc2?=
 =?utf-8?B?MXk0dlJ1Q0FLY1NMOGptaXdKVEVCd2taMm42UDZwM1VybzlvN2NzbVozTlZ5?=
 =?utf-8?B?MFpNQjhaVjN3dUE3RzF6STJhR1ZCcFlOcFhibW4vZFZyL2o5TXhpTVN6djdG?=
 =?utf-8?B?VGcrWVcvcDJMNXVadGJUUzlhdnVsZ09CcER0YzZheHRiWFUvQkRDQS9mR2pV?=
 =?utf-8?B?eHNsa3FKZC9FT1F0NDJEcWdsY1dXaXJSOW1aYVRUOW8yTldiQ1grYnh4aWtZ?=
 =?utf-8?B?elJuOW0rUEY0b3pubHZtRXlpZy9helNCbUtRSTlNb0luanlWcDZ2LzF0VmUx?=
 =?utf-8?B?UHRCem5QRkovV0FxSDFtZTNySGNxRmlzUVZ2aFo5dG9ZU2tyL3VCRzJ3cUJ6?=
 =?utf-8?B?Qy93aUk0YlJEMENUazlVZzJCTGZlaDBUTHdSTXNwTkNWWEhVcW1rUklhdDdq?=
 =?utf-8?B?bWNOL2JkeWoyN1dCWVdBVTN2K24yQjB0eFpZa2U0Y2tsRmwyQUIrb1ZvWUlM?=
 =?utf-8?B?alVBekUxQldOWWtONHBJMERuZzNIbEN6MkZEa0Vrblc3bXNkdU84TG5OZlM3?=
 =?utf-8?B?TDhkRlZDZGtzb1R3cERRZDZPVnhzQUxpKzcyS1FOWnR4cnR6UHdrL1VPbFRH?=
 =?utf-8?B?c2ZQZ3ZjaDBqOXNzR2ZDWEk4L1FYZkJ4VFJVYVQ2VU4yY0MzY2FOK1VZa3du?=
 =?utf-8?B?enFZR2xtTklWSlA3MzBDcW5mVytQaWhvSWdDZis2SGx1TFNhWlZJQkswcTMx?=
 =?utf-8?B?WXpJTlhIZnNhVDR1TnFNQWR1S0xHc2ZCTmdlSStpaTFTKy9mRUxwa2tTK3Nj?=
 =?utf-8?B?Sk5iTWFuMjAvVU5kTnQ0RDFsOFFmZlhpdXVmdGJ4cWlrYzRMTEpHdEpsQjlL?=
 =?utf-8?B?NGJHZUlsZGl5VmlvTjJHWWxaY1Z1THIvRER4VXRQUjlPMjJITUw5SWJPVS9x?=
 =?utf-8?B?YXdzY0pmQWNNaXMxNFRVSnM5MzRNYVV2UXFNWVlnYmowODBJQTdpNkZQN1ps?=
 =?utf-8?B?UXRjU1VaWXNnMFVTZEJ0dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWJvT3hiWk4rWk50emVOb2R2d2VZN1ZqMGxmV0pVSlYxQ1RzTnZubkI1YXhF?=
 =?utf-8?B?T3dBaXR2c1BmMEptRHJpUFZRTGk4S3k2aTJvN2xsQk5EeFhMQXJYTjdleGxE?=
 =?utf-8?B?UzB4UkN0alFuMUhNTEJ6WVN5bUhKTGZuY0VnVU90YTkzaVZKOTZxc1hXUzl5?=
 =?utf-8?B?ZWlzSjJYMTY0VFBBeEo1Uk8wTExPOGRPOWI0RHJFRFZxL3dVeTMwYkRzbmxQ?=
 =?utf-8?B?dTlOZ1o4TDJhQXdqaVZmc3JhM3lEL2lUV1VGQlVTNVQvYkZ4OE5pcnhNem1v?=
 =?utf-8?B?Vm0wV3NUcnFiQzlua3FxMkQ4amtyRGtqRFUvZ0JnMFRLMDNSNGRGT0VjVVpP?=
 =?utf-8?B?aWpxZU5jaVdURS9peC9rRFZIeWlpM0pYR2VRaUxROTdzTWg2NmljUHRtOHZE?=
 =?utf-8?B?a3dNR0ZtQnJQUzZTaFozbDdvTlNXdUx4VEJvTHpBQjdEK2p5T0x3dGZVVDB0?=
 =?utf-8?B?WEpNTE9IbDRTSFI2Y0dDTjc4WGFqQ1hIU0UzWUhydVQ5THIzUStwaW5TR04y?=
 =?utf-8?B?d2ovZzdsYXNGTE5kNlBzTkhDcnBGZGZvY3dWb3Y5TnJIS2s3S3d3ZkZBbzdI?=
 =?utf-8?B?eHNKS0VQNXN6ZkZpUFFEbDIrTjRXZ3JiTVh4ZGZvQ2hEUnpVZkkyeWxpdDN6?=
 =?utf-8?B?OUY4aFhXbnV6TXVIWHJhQ01XeHBoclQ2SE1NZmk0eW9JcW1QTE8rK3ZhQU5E?=
 =?utf-8?B?VkFvSDlXVzl5ODN2SldJREhYNkdTaVZ5Z1VzWGNmS3phSEJZTklZMG9rMzF3?=
 =?utf-8?B?S21iL1MzRkxXRXFlUDZISGtzSVVMdE9HdWtWTlBFUGdTNk5uNkorZWxRUE9z?=
 =?utf-8?B?Njloc1BnYTBFU0FFWFh0L3Rtd3ZyMjZ6ODZVcE1jS1pOUis1VFEyYy9KbzNM?=
 =?utf-8?B?YzA2UWpzcE9hQUx1UnB4MjMyOHpMTm9iYU11MUdlc0FNTFR6czFsOEdFRmJa?=
 =?utf-8?B?NTl6SlZPK0JLY2NTR3duZmQreDBaN1lUdzdabWhTaEJ1bjhJNCtxZ2hCdlR5?=
 =?utf-8?B?SUQ0clQ5TzMrUmR5ZDdnUjZmTkJWQThLaVZWR2lhMlN6b1MvZHJWQ21HbTd3?=
 =?utf-8?B?WjZ6QlNEK0h0d2Vmbk8vd0MwUkp2RFh2U1dRbnhxeTkyNkY4T0prcmcvMU00?=
 =?utf-8?B?UG5KUVp0SFJzLzhUQkl5cWZ1SURjbWFPTzVnMVI4WU83ZDBpQ2grZ2YvNGgx?=
 =?utf-8?B?WWluUmdYWmwzcU1qS0s1Y0xxUkQ2TDlvSHpPODhVZjNRNTZlQWNhTm1nblJS?=
 =?utf-8?B?TDdIRW5lNTdDam44OEhsVEMraDVXMXdhTlBpUktZMkJYRURScFpleEV0Y2lW?=
 =?utf-8?B?d216WklWaFFLQ05GeUpoYWRHbklFREVoQnZJNlJMYWZCNWlyMkFsMlAzMWVU?=
 =?utf-8?B?VHBiSVpUemVNTjh5ZncyL3hkMEpVTGhTQ3FzUUw3bmZEajdwNVdQOFlZTW5F?=
 =?utf-8?B?TGs4SVQ2cjFyZFlQNWZOeTc4aHZTQmlQczlaNVhQZHBIVnVsek0wY1V0SHRv?=
 =?utf-8?B?akJUOWc5bzdKOXUvaEtocUxqYS93SUtoRnIvWDhxZXlXSEFZY2NJdytTOVh5?=
 =?utf-8?B?R29IOGZtTEp0cDgrcUhwZFhmUVlYeU1ScDV3cFlaWEUrNEdXMlBQaDZCdmJ1?=
 =?utf-8?B?VjlIUHJRbE44VFVndzlyak50cFlyZlROVkdLMDdmbFZQN2srZU1UMlpEV1gx?=
 =?utf-8?B?YXpuTU4xMW5IRHlTNW5jVmphczlsOVdDOGtROW1CVVVCM2NBdUc2cG1lalFQ?=
 =?utf-8?B?R1lGUUoyK0V3SDM3YUdoVm9GcE9HRTgzSTNoNVh1UDk2aVVHRVFIUmU5WEZO?=
 =?utf-8?B?UTVwZms0UEY1eFQwRktpZS9jTk1vWDNWN1FtaGtKTzNObVZJb096V2srWndP?=
 =?utf-8?B?WUV6VDNZbm5tWENySjc5ZkYyVkZKZkNhTVJNVWNIMlQvTm9IcUlDRlhBSVh5?=
 =?utf-8?B?RG5yQVd0RitEelFaMkFpTTh5cE1aOFg5SlBpQ3NNMkVaMkxwSVNpS2dQVTFB?=
 =?utf-8?B?VVJZWTFYNk1XcW5zcDNyV016N0ZpTmVJOEZtTjcyMVR1Uy8va0VRRGo0UXRp?=
 =?utf-8?B?dVBkNWp2VW1JcERWekpnZkRicFlNODk3aEpJOTVzZ2tpYnN5TEx3Lys0dmFv?=
 =?utf-8?B?S3R1U3ZVZWFxWlM3NEJONERwT3drZ3V4dWRnRlZrVWlnNUlqTlFSdTlOelYv?=
 =?utf-8?Q?kVneQzQuumn5TbZZilPj7mY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d07646c4-8286-475d-fa84-08dd3ca5eea7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 18:35:52.9483 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lz4cV+Cv+/emh0R09sWtJeb2uYho7Up3A6yee7/HJMtGeb8BA4/IAYKSwbftiUTzvXda0LLHXaB1uyxny2OpYdwh386ygK3TtwbjdUqIkiQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8742
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

On Fri, Jan 24, 2025 at 01:06:08PM -0500, Rodrigo Vivi wrote:
>On Thu, Jan 23, 2025 at 11:38:39AM -0800, Umesh Nerlige Ramappa wrote:
>> When running igt@gem_exec_balancer@individual for multiple iterations,
>> it is seen that the delta busyness returned by PMU is 0. The issue stems
>> from a combination of 2 implementation specific details:
>>
>> 1) gt_park is throttling __update_guc_busyness_stats() so that it does
>> not hog PCI bandwidth for some use cases. (Ref: 59bcdb564b3ba)
>>
>> 2) busyness implementation always returns monotonically increasing
>> counters. (Ref: cf907f6d29421)
>>
>> If an application queried an engine while it was active,
>> engine->stats.guc.running is set to true. Following that, if all PM
>> wakeref's are released, then gt is parked. At this time the throttling
>> of __update_guc_busyness_stats() may result in a missed update to the
>> running state of the engine (due to (1) above). This means subsequent
>> calls to guc_engine_busyness() will think that the engine is still
>> running and they will keep updating the cached counter (stats->total).
>> This results in an inflated cached counter.
>>
>> Later when the application runs a workload and queries for busyness, we
>> return the cached value since it is larger than the actual value (due to
>> (2) above)
>>
>> All subsequent queries will return the same large (inflated) value, so
>> the application sees a delta busyness of zero.
>>
>> Fix the issue by resetting the running state of engines each time
>> intel_guc_busyness_park() is called.
>>
>> v2: (Rodrigo)
>> - Use the correct tag in commit message
>> - Drop the redundant wakeref check in guc_engine_busyness() and update
>>   commit message
>
>Thank you
>
>>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13366
>> Fixes: cf907f6d2942 ("i915/guc: Ensure busyness counter increases motonically")
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 16 ++++++++++++++++
>>  1 file changed, 16 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 3b1333a24a89..a33b67b83dc1 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1469,6 +1469,19 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
>>  	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>  }
>>
>> +static void __update_guc_busyness_running_state(struct intel_guc *guc)
>
>I hate those '__', but I forgot to spot in the previous email and
>I know I know... there's a lot of those in this file already :/

Agree, I added it this time to keep the names consistent with existing 
mess (which was also created by me!). Otherwise, as per other reviewers' 
comments, I don't use them.

Some tips on when to use '__' would help.

>
>I was thinking of another name for this function as well since
>it is only stopping the running state, but I'm bad with naming...
>
>let's move on and close the real issue
>
>Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks,
Umesh
>
>> +{
>> +	struct intel_gt *gt = guc_to_gt(guc);
>> +	struct intel_engine_cs *engine;
>> +	enum intel_engine_id id;
>> +	unsigned long flags;
>> +
>> +	spin_lock_irqsave(&guc->timestamp.lock, flags);
>> +	for_each_engine(engine, gt, id)
>> +		engine->stats.guc.running = false;
>> +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>> +}
>> +
>>  static void __update_guc_busyness_stats(struct intel_guc *guc)
>>  {
>>  	struct intel_gt *gt = guc_to_gt(guc);
>> @@ -1619,6 +1632,9 @@ void intel_guc_busyness_park(struct intel_gt *gt)
>>  	if (!guc_submission_initialized(guc))
>>  		return;
>>
>> +	/* Assume no engines are running and set running state to false */
>> +	__update_guc_busyness_running_state(guc);
>> +
>>  	/*
>>  	 * There is a race with suspend flow where the worker runs after suspend
>>  	 * and causes an unclaimed register access warning. Cancel the worker
>> --
>> 2.38.1
>>
