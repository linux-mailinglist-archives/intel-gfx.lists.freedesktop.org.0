Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4411299D7C1
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 21:51:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA7B310E040;
	Mon, 14 Oct 2024 19:51:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dH9mM9v1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F3D810E244
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 19:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728935495; x=1760471495;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=yznOVNImejYQJaWY04dpXczjWsGN9xzkuUVUoKLUvPw=;
 b=dH9mM9v1W1igvrCctM2czbkFhYV5TYXEQB5AzDuuM5trj1992T7ZlfwF
 AXH2L8dpJwjfy86/wJF6/0K+XSI4v1lXX6jTz/mvIm/DxRGQ++/PsDR8t
 5O46zXaNNwYAG3YlCHyfOiHaYtBQe+7eGCmbfBnbI91pvU4KC3mz7LoX/
 8cbNJRTfn+rJ3TgK3iX+stvbaiZc3YDA/FwtFUPZwg7Smhkzx2iyP4xox
 LzAzV/60e4Ngyy4jPqFbvtKNAGoSZfORhjxIpgb1PJlo7S2WK+nb/ASP0
 /mp20n+lAehi1uvSkfA1GHuv5W6rKgBG5tsEc7+aWsm4zfersTVgDHaU+ A==;
X-CSE-ConnectionGUID: 1IAuiO4QTKqkseNnGBT67w==
X-CSE-MsgGUID: 3duKwOJeSBuD5PY10X33DQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="31184206"
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208,217";a="31184206"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 12:51:35 -0700
X-CSE-ConnectionGUID: L2ohCYo1SduvqYHTTByzTg==
X-CSE-MsgGUID: dCSowcbKRduAcBSkVLvmyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208,217";a="82234270"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 12:51:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 12:51:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 12:51:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 12:51:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HognobVsJQllMzWyVHYifAc7HMurzTx/2yE+yR9pLJBPw1eZoa+1mPQPMOL0F48myZpmM7gVntn1ntcfEpKaAZkumvkKMrmDnk4GE4tM8OuIPqJJHmp2mPlyr3/SwOj2YewdCbCOFueQvNY2iXzNPcBVn2AsIEslCPscRn1g/X86QICIKavw/PO75hJd80wV65Z4FdonvKqDEpVhIY4hNUd9HZJSgAOWN2gqJKzhwTVjfGx8DB7psEEEvIohuR+U4CYFUBVvF7LDRbg+/ZD73K4XzvLCLcHb0TRSeLuy0SevR1NjcgTif8yh4pu+R8tLSRDaVNaEiPlKIdsp+Af7ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0iToPhCdxmRy+Fcq7PyNmuuWQL8hYWYYl5+j+Ap7BRA=;
 b=Z2GZnY4vr/vTl0/cNEe/AJefOGNywoSzJo4EbTrWEF8XwFjKInB9GNR3/5/FV/KKWBfP1aUrndlfq/rknO4gaDMbrET3rT6R9AKiAaYlVaXPp/odXefO7koDyJToOfykUdwlDVGs9hpYEN5UyPbqcbPvOOtwsVgLcqqo1CIwQILvSN9wF+PEiJaLTTsNG9R0Tz8in3OQcKtDdwCPUS/7eFBwbC/pr90qzAJNx6qqEOjQ3cR1ej2gW2QZPV650HebWiLULcWKFchBysz0+grWQhTVs6jyzVc2YJDhPc72ccjIRuVucxlAst/BQ4u1I+0iFapvYATmYvvMugi2FHQ5EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by DS0PR11MB7442.namprd11.prod.outlook.com (2603:10b6:8:14d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Mon, 14 Oct
 2024 19:51:31 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%3]) with mapi id 15.20.8048.017; Mon, 14 Oct 2024
 19:51:31 +0000
Content-Type: multipart/alternative;
 boundary="------------A2YXW4K42BZAeraZ0KBATQeh"
Message-ID: <f13cabc8-9e58-41c3-a0c3-cfa0c05adb08@intel.com>
Date: Mon, 14 Oct 2024 12:51:26 -0700
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/guc?=
 =?UTF-8?Q?=3A_Enable_PXP_GuC_autoteardown_flow_=28rev2=29?=
To: <intel-gfx@lists.freedesktop.org>
References: <20240906174038.1468026-1-John.C.Harrison@Intel.com>
 <172668795869.1027924.12201887499669493852@2413ebb6fbb6>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <172668795869.1027924.12201887499669493852@2413ebb6fbb6>
X-ClientProxiedBy: MW4PR03CA0107.namprd03.prod.outlook.com
 (2603:10b6:303:b7::22) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|DS0PR11MB7442:EE_
X-MS-Office365-Filtering-Correlation-Id: 51c50bfb-6823-4c2d-0154-08dcec899992
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?empsSjBzbmVtVnRUR2Mzb0hkb0h2ZEpXNEJQeEdkSHE4N1VKcVhpcG1IU0ps?=
 =?utf-8?B?U1VXNVhGdHI3VDZ3VGdlc1JRUVFLdVZ4akRwYUJGNEhUOENCZFhQa2p5UlJ2?=
 =?utf-8?B?eDBBS2JtSzBUaXVuUkdCelZJbUVhVE9oRE52SzN0M0VOR0FCVWIxSG4wWWNL?=
 =?utf-8?B?cTlkeVh5UGhTSjhVQnQ4N0grSTJmclFnMW5nNXc5L0hiREtheTZ1endjajZT?=
 =?utf-8?B?TjMxdWRxUUFMR3FMZ0xHcUdJOEt6TDhNeFNiRFU3d25XQkpZV0ZGNFJvL3dZ?=
 =?utf-8?B?NkF2RVBPMzdNS2t5Y05IN24xUjNrZFM2dlRhQXhqNTEyYkpsT0ZEV0M0aHVY?=
 =?utf-8?B?UVlrcEpQeWpPckJ0M0d6cWc4b3VaeG9jdkRvaFdlbXplT2tQdFdDRGZqQlB5?=
 =?utf-8?B?VEZHQUtFWTFtZGNlVXNYMnlCNkY3UEZWVHcvV1BwZ3VRVkN6Tk1WemJDa0Ez?=
 =?utf-8?B?UWR0RVNMbEFnZ0k3cjVlYXVlVDl0Qmt1YTY3U1JJUkszaGYwY01OZGF3a1dn?=
 =?utf-8?B?ZytvVHpoWVh4NmtJSVpReXpDejA0QVJxQTlLTjJTaGkyNVRBR04wSGlJSGtK?=
 =?utf-8?B?dndGWGYybEtxeUdSRE9nMHFLckl4L0dFMHR3cXBvdnBFd2xOV3lScUhXNXM2?=
 =?utf-8?B?bTZGbVNMSkVLcUtTcE9JZ1g5dE1NRm1BS2RBRENjUEprbnQrV2Z4ektJK2VI?=
 =?utf-8?B?endJQzRFRFNjSXpDVmRnK3loSzJZaDQ3bUxiOTAzVHFodjZvWkFVbWRXbHB2?=
 =?utf-8?B?bTFKbk5iMUxiSjhHSGZ5UmtIQWNUdHZiSzFrY2pvR1ByRVRNYWZnMEM2STd0?=
 =?utf-8?B?eTlEN2RaRDZ0MkYrL0M0VTZWU2FKa3kzQWJ4TnV6V1NObU5wTldybUh2d0Vr?=
 =?utf-8?B?QlNpWVRiZTZIeVp0RXF4VFFVKzZzVVFpNUd1dTVuOWNDdkprRjNPSDFaY2Q5?=
 =?utf-8?B?SVA5K2NaUkI0alJSMlZFV2dwVC8xZHZBejllZnBiMTA5OFA0T3AwLzJ0T2NB?=
 =?utf-8?B?c3BEWDJsbnQxb2haNnN2UHRzNlpqd3E3VmVpc2t0bDRUVGo2MEg3UnhpQWxy?=
 =?utf-8?B?YkNzRzlHZ25Ka0V6M0RPQldicU1DVXRHUTduaE9rSTAzZWduemtZVTlRT2Vo?=
 =?utf-8?B?LzI3aEozeXE0emp3b2ZPSG0vSURYK2Q3OU16NFNzblBEK0V2QTFTL29Oam9H?=
 =?utf-8?B?cDJNNTdqSFRIMVl0SXAvVThTM0IyYUlpNDBqT1RCcGVqRUlNRWl4cHJHNVN2?=
 =?utf-8?B?K0w3QThCZXl0RG9SemJSQmREQVpzTU1qL3kwTXllV2IxNHZPbkZJeCtSd29Z?=
 =?utf-8?B?VmVrc2g0aFVMWm9uY2E1K0J1TFQ4blk2ZTZZZzJINUcxOWQ0aDNaR2NLbk96?=
 =?utf-8?B?eWdoUW9RamV4WFRaeHB0OUQvSFJGTEs4VjFIalM2dE83bjB6eDBtS2pXdi9V?=
 =?utf-8?B?VzFTMW9rRHBQNjNkQ2swbjNMZ3F6Z1BpanEwRDJqUmVLbVZseXF0QXNFcDl0?=
 =?utf-8?B?OXpsWHdEN3JjSENXcDF2TnJ1ZURXbVBHczA2ZXFocjJBTTVRczcwcFY0dzY0?=
 =?utf-8?B?ZzROS2ZCTHJ4akFEQ3p4bmFkRi8wa0xMMzdHakNwcTJUTDczN2JnYkk3ZWps?=
 =?utf-8?Q?+ImT5fw3sL/xAnZExocJr+2snf6e+ynxjzOh6fC/EC/0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2RXRWdsVDJBSjg2K0E3ZVN2SkRLaUkxblljNy9CalRpT0xNSGVsNVFvelNn?=
 =?utf-8?B?QS9paGphalpTUHBOMlVDdjR1VWsvWmVKMWNBQmNYTml1eXNpc2JqSmgxK2lO?=
 =?utf-8?B?SnZ4VTVveGNlNituZEUya1VPMWlVbE0zMHlKRGtMcmRRNzlMbUoyY1Fzd0Yz?=
 =?utf-8?B?SWpQRHlIZ0FHOFhHaTUzRGZvZDFRNkRnYUZvUi9FcDUwcG1FMWFoVjJxdHQ3?=
 =?utf-8?B?c0laNFRjdFJEWkVCSlZjaG1abXV6TGYwNlo0RWtyWFl3K2VhVG9yMTU1VXpt?=
 =?utf-8?B?cEppZ0FkUUkyQS9KRFNSUFVqWkEySUJiTDJlZFZ1alNjbW9hR05mbXFPSEFO?=
 =?utf-8?B?K1JXUUdnY01YQ0huUTdkSyszZU0rbFFjajhWNkVodUZITWV1cDlPa0dFeFRH?=
 =?utf-8?B?WC9YU0JvSWROUmY5QmNhTTdBR1l5VjFTMjVveVVLdWpxMmg4aVY1cFdDR0Rk?=
 =?utf-8?B?bEdmTi9MaHJ4Q1dpSXZLRGNhWFFNTy9RUTFtS1dFTGpOS3JLcEdieFhLVVNJ?=
 =?utf-8?B?NXN0Q1QyMk9BdUtsVk42amkrVXdyNWp6ZVZqRVJuUHNUa1Z2di9adFArRng1?=
 =?utf-8?B?M2JuR1VuanlLWEUyWEZIQWV0K1NwMnNGcjFydzVycHhpWUg4cXE2ZFA1T0lT?=
 =?utf-8?B?T1BicHQraEdFSHdBcXBLV3BPNjZ6MnhsNlhGUlpoMmtEbVBDaDNsYzZnOG9J?=
 =?utf-8?B?K0drNEowTkZmMkwxeVhIQTN2cjdZR2FJZUxORmh4dEt4aUprRlhVVVhHY2FG?=
 =?utf-8?B?TDFRbWhNQmVHUGtUZUo5Wll6UTlvSlFnemtTeDBKMG03VFNEYysyUTBRQU9M?=
 =?utf-8?B?OVVuNGZ6cDR5Y1RLTUc2RllpTWF4WTQ3Q2hjSjdxZnNaUmtZbUpaYVZVUENu?=
 =?utf-8?B?WmFTUG56bkpjODRhdjBEcVBMb2RKNkI3Q0hSeHkzcnpyM3ViUTdRSlJ4QUZs?=
 =?utf-8?B?ZHlxLzlwcS9SSTJkclVHcitzLzNpaHdPN0xySGxkSElKQlV2WURTR25GZ1p6?=
 =?utf-8?B?YVNBUGkrUDFibEJGUk5Pc2NhNVFYY0FUQThNaTJmRlNtTDZXUTJSRGJJZ0U0?=
 =?utf-8?B?bzhRSG1kVERxbXZ0WXRNNStBY0RDd3duZW9FYVE5U0NldmhhYlVacEprUkp0?=
 =?utf-8?B?bE8ra0FGQ2xCQThqK0ErM3pXelRxaXdoL2wyYzRWYWJoOVVBaWY5M2tuaGFR?=
 =?utf-8?B?b3ZmNVBxNjVKdXRRQ2VOdmlTQ1FBc3VlaEJxSFphbEtFbzZqbTV2VEg1bWxJ?=
 =?utf-8?B?b25rVHJuYmJGRHBCMFJDYW1CVElrN2FKNXdrSXpRTEZsbElXVmlYYmtQNlpV?=
 =?utf-8?B?d0NQS3ZjM3k3UG1rQlJUalVqR3pHTmlDelk4cUVzUEQvSDVTYnpReGNvTmRp?=
 =?utf-8?B?RkNjOUpRNk5KKy9OR29MTTlWcWwzNWt5NzBuZmZndm1td1JRQTUyZytuTFdy?=
 =?utf-8?B?aWxMbnhtZHcvYnVkOFkxeHR1Mi9OUWlpWXRIYXc1ZkZaL25HeWxrdVpONG1I?=
 =?utf-8?B?NVNQQWhVcU4yQTdFRDRjREVKMmNPUkVRNFdNQUs5V012a2dMMGZXaGliUC9z?=
 =?utf-8?B?d0NjRExrRkxJaEE5WUdlTWNqQU9YQWxaNjVTMTJQT2VoNGI2aWlnanN5RHRm?=
 =?utf-8?B?dXAwY0ljV2VNdm9YTWlOUk1CY0Q1Tk9nOHhJSFlCdHZRdXQ3cFFuRnlQajJD?=
 =?utf-8?B?eXUzZndIWDhRZnJ4MHczcHFUZGdTODVlNFRKaU9HYzB5ZnhRaWFkb2FPWHFj?=
 =?utf-8?B?b3oxWTAxTnhSZzJzOVpkYzNqYTRqSGllUEpGNkRvSjZGK0p6RmVYVnhSbHVP?=
 =?utf-8?B?bVdsci9ySS90NHF6eUlQRndlc21GTlpLWTV4cDYzTURxRWV5WGEzOGpWa0Q1?=
 =?utf-8?B?SUFHblY4ZTFvUFJqVUdUZFNwS0xEbHp3MG5LRW5jeHhsNmUybC91QXQ4SmN3?=
 =?utf-8?B?bC9ueis0WlJpTjFHV2hQV3U1NlYzcUtURTgyT2JVbjRDMlpmZVorRXpLYzA5?=
 =?utf-8?B?MjBWRUxZQ24vQ1ZuTlJhNGtxRXpRZVk1WU56RHNGd1V4UGRhdHBrVTRGanhQ?=
 =?utf-8?B?dHp0NkQ5dUJxY2t5ZVpMQlVSY3lTVmlVVFJ4SUVNMVM5dThTYTA0cEhER2hO?=
 =?utf-8?B?d1N0YXBCVzRhRTluTUhSMGZpWmZRendnRExYWUlpWUx4RklMd1E5WUV2dkFN?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51c50bfb-6823-4c2d-0154-08dcec899992
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 19:51:31.2275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Aq9mJxZ1UmrDfzmB81tL6oAcIDCBC0i6wK7/m6vOIiPrC7gX2gwu4RI7GH0BppXLc20ORQ0qHygTTUSxuvTwBKRmftt4hk5jHpOSX491ccs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7442
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

--------------A2YXW4K42BZAeraZ0KBATQeh
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 9/18/2024 12:32, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/guc: Enable PXP GuC autoteardown flow (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/138337/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_15437 -> Patchwork_138337v2
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_138337v2 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_138337v2, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v2/index.html
>
>
>     Participating hosts (38 -> 36)
>
> Additional (2): fi-kbl-8809g bat-mtlp-6
> Missing (4): bat-mtlp-8 fi-elk-e7500 fi-snb-2520m fi-bsw-n3050
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_138337v2:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_selftest@live@memory_region:
>       o bat-arls-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15437/bat-arls-1/igt@i915_selftest@live@memory_region.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v2/bat-arls-1/igt@i915_selftest@live@memory_region.html>
>
Known issue:
https://gitlab.freedesktop.org/drm/intel/issues/10341

John.

--------------A2YXW4K42BZAeraZ0KBATQeh
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 9/18/2024 12:32, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:172668795869.1027924.12201887499669493852@2413ebb6fbb6">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/guc: Enable PXP GuC autoteardown flow (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/138337/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/138337/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v2/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_15437 -&gt;
        Patchwork_138337v2</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_138337v2
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_138337v2, please notify your bug team
        (<a class="moz-txt-link-abbreviated" href="mailto:I915-ci-infra@lists.freedesktop.org">I915-ci-infra@lists.freedesktop.org</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v2/index.html</a></p>
      <h2>Participating hosts (38 -&gt; 36)</h2>
      <p>Additional (2): fi-kbl-8809g bat-mtlp-6 <br>
        Missing (4): bat-mtlp-8 fi-elk-e7500 fi-snb-2520m fi-bsw-n3050 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_138337v2:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@i915_selftest@live@memory_region:
          <ul>
            <li>bat-arls-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15437/bat-arls-1/igt@i915_selftest@live@memory_region.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v2/bat-arls-1/igt@i915_selftest@live@memory_region.html" moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Known issue:<br>
    <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/issues/10341">https://gitlab.freedesktop.org/drm/intel/issues/10341</a><br>
    <br>
    John.<br>
    <br>
  </body>
</html>

--------------A2YXW4K42BZAeraZ0KBATQeh--
