Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE5BA420A8
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C2A10E38C;
	Mon, 24 Feb 2025 13:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aeNk4KnM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FEAC10E2DD;
 Mon, 24 Feb 2025 13:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740403927; x=1771939927;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=0hLzQDNKLZk5noTsC53tdWGBAd3/fxuNUx5+Nz2qlqU=;
 b=aeNk4KnMA73krf0CDT2OpNizLayJ/Ax/3Y897rcrmF+NeeitATHe7eyz
 H1lLlPVwToYPlnFluPQgr0hneF2g2ZEZhaSB5HF2HukjtWADnGONPKG+4
 Gdfy6vRSZWuGHfCdjy9G3+bOyzCixfbspNrMaA1vpDnvS83STTC5gpiUe
 0jtl1QFlS+aeTLI/WI2XK2IsGj39AXB52b1J0sSXwl2lDbhRGGlgK/WUN
 upekkbRLGnjotBnAF2HqFQIuvLxi+xl5ELLqYsEPPpk1keOh0790K140n
 vBG+TFBjibCmr3T+yKDL03tjQHqj6d7sFwA1Z18EmJ5wbN5fKGPrK16Zr w==;
X-CSE-ConnectionGUID: /tquCUmRT3GiYwhTlzQhzA==
X-CSE-MsgGUID: PZDnIfSLSzetqKc5S/7eNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41172726"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41172726"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 05:32:07 -0800
X-CSE-ConnectionGUID: 9pFiK4rYSauQTPYOwgUuCw==
X-CSE-MsgGUID: VeU3F57aQLOxWhky7btumA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="146911104"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Feb 2025 05:32:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Feb 2025 05:32:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Feb 2025 05:32:06 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 05:32:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tsXSrodxqVh+Nch5SGLDXmmV+rEvHMR7grf718Z24FJeGo0TmM5gUO+nknIy00pyBJh/5QlJUAtVmeNKQjJ8+5ESkPKsKqIkhTPF6zuVVjQNmgy2/PGYspwan9io1dmn+RIgCCzgRLwd7K/OQhgCTr42ee/9et/KEifzgMjz/Ve6Yy1OVkkwsF/kpM3/X376WeJLHjeEQFK7HKnRFGYVu/rOe+S6cNaxNAMromhgf4gcRrae9Ju4kM7YrOrfleOu914P4zy0V+jkuDv/DehdwPge6sALrouBFZO6DMOM77wbf/bCvMj1VHXtw39h22PW9ZUTxoYsxAaEBbOA2qihdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+I0wwvPLqVecWwMFu646taCSWcL/0fBV6JCPYdiLyoc=;
 b=ng/hUCdnnd9+tx36XeLNpxZ+3d2NSCA9JC02BqM+kkS2OvTh9oshbnoHv0WbZYo67wwUSle/i1hGfQErD99Q+cMmt3GrJ/UgDWJUTlP/YrTtTrHPM0dCz8M39d3k0EQdbowbQn9598dbs1KOytl9fvo4Anj92FShR9knl+CFVc6+Ub/OQUTS1wKQoK+hZ34KrLKfOBhQYnvPuramuylsKH2Q8Q1ktgI0iOuzDkRALkyKzZO29GbMDU+a8mCcbkZofHZBZOphOLpTBJ+u7YMJL88rjrWSf5/jM50jaZe02+fWNr1Ssf9P6MPBkhUr7GIdIGM9/j7oS6xqLfxLX+H0tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by SA1PR11MB5802.namprd11.prod.outlook.com (2603:10b6:806:235::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Mon, 24 Feb
 2025 13:31:58 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%4]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 13:31:58 +0000
Date: Mon, 24 Feb 2025 19:01:50 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915/display: Make refclk fetching logic reusable
Message-ID: <Z7x0xsF-nLmTLgLd@bvivekan-mobl1>
References: <20250221003843.443559-6-matthew.d.roper@intel.com>
 <20250221003843.443559-7-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250221003843.443559-7-matthew.d.roper@intel.com>
X-ClientProxiedBy: MA0PR01CA0046.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::16) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|SA1PR11MB5802:EE_
X-MS-Office365-Filtering-Correlation-Id: 5956db50-c9e4-4050-dca6-08dd54d79cd2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amtOWFNIS3JPM21aRjRKUEM2enNrbisyNFZKRjRIQ1hnbzJwM3ZyL2xOZTFp?=
 =?utf-8?B?Yk1TSTk2aVBlR3RRSjNoZlBpSGR2OXYvbVFtaDVKb1JrWGk1Q3d0VTJNWTk4?=
 =?utf-8?B?MkVXODA0enE5TENadGZOb25PYm4yYzV3VHVYeUM3cXlwQXoxNHI4WE5WUml5?=
 =?utf-8?B?OEFaQnBJREMxdTVYSFlVNklndllXdGc0MWJlOGZReUNkWkNkTTZnMXBPY2Jr?=
 =?utf-8?B?U1ZMU3JzV05KZzEvQ1hjeGQ3ZWh6YjQ4TGJaTWdvRm4zZDRhMnQ5akNzeU1T?=
 =?utf-8?B?eEZxRi9VeUxoRllnOXdnQTNGdHJuUXBRb21LMGtBMzJ0MDJNRUJLRXRYUGN2?=
 =?utf-8?B?VTBIcUI4azBFaWplZEtIbHZiU0JRSnN4bXlaaFdhQUxpOEpCZFh1NFA0SnZZ?=
 =?utf-8?B?V0J6RWtweHFVQlkwRGlhOERPZk9namJhUHc2dzAxQUZreTBWYXFVMy9Tc1p3?=
 =?utf-8?B?K0Jna1VGblZQWTdwUVpvQTBoRHA3QzUxQUkwSlR1SzNFeExiNE5JdmFrRVZC?=
 =?utf-8?B?dDBvR1huTlVubittaGFuMC9VR0JUbUt4bG55aFgzeTY3K2FTZFVRVGJhdVpR?=
 =?utf-8?B?NkhzeTRIYU4vY0xnRDM0QmxIc2RPOGZjZEVTVHpSd2l6a2ZQcnhYUnlNTldr?=
 =?utf-8?B?aWNML0V6L0tUSzdaS040RjVMa1lkWmkyYUUzeFF2Z3dZempsTDNyWXRMeXYy?=
 =?utf-8?B?TUw1ZjNjaUlsQmk5bFZRRkJTd0V5SFlHK0FJSjlhVVg0cTlOT1RONDRiQTJS?=
 =?utf-8?B?bUZoQkJudW82N2F0UFpYM3EyUndLQ0RaOG9VcnN0QUJ6cFRxR3BPSFZ0Q3BL?=
 =?utf-8?B?NmxQdmpualZ4VEp0bWo3Skg0QjZ1cWQyREd0VVp3Wjc2U2ozcXQwUWNtSXk4?=
 =?utf-8?B?bThPM1Q3ZEVjQjZCL3hWanhRN0pUWmxNaDRxREo3SkFCSzVZc1pDVFFwUVlO?=
 =?utf-8?B?OTJCNk5YazhTN0xFR2FCazkvckEvM1JhS1p1UTJBblRnVVFUcGMxL0huQ3NH?=
 =?utf-8?B?VkgzMFk2VDJVaDRBa2dIdWt6WklYUUI0bkNLNm56OGZpZWFqb2RTQ0JveGhq?=
 =?utf-8?B?MVFuckY5N3VSUmYyN280VnEvYzd5U0UvRjNPRERFaUp0cWNSUlNiQWk0SXE5?=
 =?utf-8?B?Y1VPSnd6NndCUmZ3RGp6MktMZXlhcmkrcTRJTCs2TUZnRk9rTW42dHJmWDht?=
 =?utf-8?B?eFUwdlBmT3BJTnRLQzhhcnBjdUsrOEZnQ0xKdUxHbU9XZzNjYi9MdmorL2tG?=
 =?utf-8?B?U2IwN2lYR0RpOE05OHJ6dTlQR1oyL2pORys5RlJvREdqQlFWdTg1Sk1GcnJ2?=
 =?utf-8?B?Wkl5ekcybVIwejIxRjl0Z25qc2F5UzlZNEZrMlV4K0VxQXFmOHpwTDBOcVlo?=
 =?utf-8?B?OWRKY09IMC9xZTV1N3ZLeCtIN0w4VlRBTSs1Wm1KZEhsbCtKcGZCaXljL2lM?=
 =?utf-8?B?bkxoYVk4RXVHM0hqVVk5ODZYZWdrYkt6WjdDZlB5eWtIRjJ6WFU2c3RCMnZL?=
 =?utf-8?B?Tll0M01iaDAzVWlJbDF2TVl4OHNVU2N6dCs4MklrWFl2R2t6RUtqdkVSN1Zm?=
 =?utf-8?B?dDZ4RmttMUIyMVZ4UTY1Q0dBaDN2NUU5cEdBK1M1aUFpNXNieU9PVkhXL3No?=
 =?utf-8?B?ZmFwMElHc3pYR1VtcTEwVUk2T0VSa0NOOEErQjZJWmNSNHp0NWlmaHR6WnlM?=
 =?utf-8?B?U1d5TVhBNWN5TXFYeEtYTGtQTFpYVGZua0RHdXY5MlM5T1VrakZxR1dsazJo?=
 =?utf-8?B?bGRyUTBvaW5tZGhJOWptRHpmSmtadWhuOGl2WWlFc284NDkwRGFnMFdVVmhy?=
 =?utf-8?B?V3dua2wvT3l3RjBXUktHTi9GNUlRbjFhNFhRQ08zVlRQV2puRWRWTE9sWnVi?=
 =?utf-8?Q?jew/EazIwiigV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d09vMDd2aVM0ZjhJZXJRMkN6WG5mR2VIZ3ovU2xsV0cyMlFHR2ZxOFJtVlNR?=
 =?utf-8?B?RUpUcHVJTm44dTJZcWJOWEIwWE5qZGxFM2tsOFhxNFBmTGVqdEZHQ3ZXU3ZT?=
 =?utf-8?B?aHpaWi9qdEs1TnpXelRlWGRqMmo3Um1zVzFtbXNva21jekxhcXJ1WUoxeVlL?=
 =?utf-8?B?UlJ2UDNEQ1RyeTdKOXJYcmx0QS9DWWtEbW1xOUlRSGkvTVlqMnVOMHBHU2lU?=
 =?utf-8?B?UlZLNmhIV0t2Y2RRSHN6akg1MHNVQlovWG1ucDhYU0cyY3R2bkJXNjNidk0z?=
 =?utf-8?B?RW5qV1JielZxQW1MRytzeSt0N0NDOUdPZ2RYdjRQVkUzMTJUZnU0MXF4cTN1?=
 =?utf-8?B?Mlc0RzZCY0xoMWw5bkRVd0duZGFldENna0Q0Z3dUUVZkQjJTV1lPaWhKNnBU?=
 =?utf-8?B?eTc3V05ZK2NjUzVqNUFRMVM3eldhaTZRMERJWEJHZWEwaEE0YVhoSjkwNTc1?=
 =?utf-8?B?cVd5ZUZPUWpyNzZZSWtNTm85bTdPdnE2TGt0M1ltYXFKU2REcXNTUWhybXU3?=
 =?utf-8?B?dTN2SzJYNTVZK3AyM2RBaUk0RWJkbDNmZXZLTUVDRXZGZ004aTQ2QjhlbzJC?=
 =?utf-8?B?T0pNZUlwMjgvUDJBL3FaUXdDRTcycGhaay9rMDZBY2dxS3RCVzROYThWNWZl?=
 =?utf-8?B?aThTam1ZUFRuKzZPOVp3WlNGK3NmSmlLcmN2TWZ2amttMHo1TGlNK2V3dm5r?=
 =?utf-8?B?WHUzclpBVW1BQjFKY0RMdFZRa2VoNGJ6OHJVOHVubStmd3VyeGE3aWhEak83?=
 =?utf-8?B?TDRlR3JYQVhxcVl1dVh0MzFZYkJnbTVhMTcxMTFhb21TR0tpNmtkUTFOWHBn?=
 =?utf-8?B?QUFRSUN4SVR6S2tZUTRVVkJOZDd6QW9hbi9xWUJ0TVBWbDcvd3lOcERYLzJI?=
 =?utf-8?B?S2wySmpVM1VaTzA2WUp5VFpkVmpzZW9IQzFiazNXTDRZeTU4ZXdXVklCRFdy?=
 =?utf-8?B?b05Hb3FhYlBCOXlnVHlZNkFmVG15NVg5bkRhQ1p4dUJUNkVCSUZIVFRUWS96?=
 =?utf-8?B?MVVHV2dIRmY2UzJlT2paSTJLODVxbmY3bUpQT3pFU2Q4OGIvL0JYeTFMd29K?=
 =?utf-8?B?ZTNScXc1elVwdW03cUFoTFhtd1duMWdpWGtFaElwdUJQTlNsTVNJWG15SWxp?=
 =?utf-8?B?UVhyRExMZ3UrSnFKT2RhN0hKSERGNWFJN256RjU4WTFoaTV1bGFocHJVMlN0?=
 =?utf-8?B?WWpOREZNd1hlekxPQ1Fyck9WaTZnaUF2QlZ4cTVZN1c3YWZ3Z1ZVb3o1Qnlp?=
 =?utf-8?B?R1pEd2dvVytMc2RuMkI0andQeENaczlZcmtwcko0bGw4OFpvSElJN3ZIdHFj?=
 =?utf-8?B?WTJndkF4di9nMEsvS2pyQXFxTHpndk01Vk5iblF2RUZob2tjSE9BcHpoU0pr?=
 =?utf-8?B?WXU3c05PbmRoQVJPZFUvU3NsVTRROTNQaWtFSUkreTc3SlNrR3ZkU3dUNzJq?=
 =?utf-8?B?MDZoNUdobXJhSFFTVXNITUZ1L2NUY2xDdzd0N1FRSmVIR291L0t4R2VscWQ3?=
 =?utf-8?B?ZUNST0s0bGxPaGpWaHdINGNtU2tIQnVMenMrdXFqNHBXTmgvcHlmMitSbXlr?=
 =?utf-8?B?VDlQVlUwR1BsNndBODFqZXpCZnRSN2dTRFV2U1NTZi9zOHVMRU1ZMWtNYWNV?=
 =?utf-8?B?aHgzR3VJa1JEU1VtZU9HaG1uSGNlOSs1L2tDa2NrR3FnL2Nic01MbHRWZWNH?=
 =?utf-8?B?dURNUStic1drR09MalBDZFE3TktXSUxIMjJ2N1N4L1hkZjNrVjIvNnRpd0Vj?=
 =?utf-8?B?ZTZnUlp4czRtVnZkeE5DRTA0L2p4b0xZWEYrV1ZmWG9FTlZDUzBqZFdmaWZu?=
 =?utf-8?B?V0RDQ3pWYzErNUhLQncvYXZyd0d1MnJobE9MTFkxOWR3anorRUVOWHpFRjl6?=
 =?utf-8?B?Y3dxdFU5Yk9MSzZYZFRWVE9vVjhaZjN0L3FBN1lKU05hL1ZLcGFXM1h0Z3pj?=
 =?utf-8?B?cThPaUxrcTRPdkM1L3Q0bFpHM2V2QlVPYVR5OGV6LzRZdFFhWTl0TVdKc3JJ?=
 =?utf-8?B?THdOWFYrSFBVOHdZNDVRMHFlUEVKMy9HSVdGU2M4NlVNMm9RUGFzdTNzYmE0?=
 =?utf-8?B?Y0lxWVc3UW1aUFdER2xoUituNEh2RmtFb28wclh6Qzh5dnNpU2xXa3BmcnFF?=
 =?utf-8?B?ZDlwNHdqMXBET0FhUHowUHVwaWpGU2w0ckpkMzRMVTlpeGthRXZWWldiUll6?=
 =?utf-8?Q?KtNfdulVIO3thh/qD43+1wc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5956db50-c9e4-4050-dca6-08dd54d79cd2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 13:31:58.3942 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y5+0eejjsUsqKS4dWQQOX7WybXn7uwfXfzdwoVDjFzi0lh8UEmLPZ2s2JoLmKdeXaffoc6FmPV54iNLAeHzqIxSs+bnM5IQYS6CP6LZCEdcbghsaYFo5fZ8up4QwGGPr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5802
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

On 20.02.2025 16:38, Matt Roper wrote:
> There's cdclk-specific code to obtain the display reference clock,
> either by reading a strap register, or by using a platform-specific
> hardcoded value.  There's at least one other place in our drivers that
> potentially needs this clock frequency, so refactor the logic to make it
> more generally usable.
> 
> While we're at it, change the fallback frequency we assume if the strap
> readout gives us something unrecognizable to 38.4MHz for platforms with
> display version 14 and above.  38.4MHz seems to be the sole frequency
> that's actually been used in recent history (since MTL), so this is
> probably the safest guess to make going forward.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Looks good to me.

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Regards,
Bala
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 44 +++++++++++++---------
>  drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
>  2 files changed, 28 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index c6cfc57a0346..57b01f8a7be8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1636,38 +1636,48 @@ static u8 xe3lpd_calc_voltage_level(int cdclk)
>  	return 0;
>  }
>  
> -static void icl_readout_refclk(struct intel_display *display,
> -			       struct intel_cdclk_config *cdclk_config)
> +static u32 icl_readout_refclk(struct intel_display *display)
>  {
>  	u32 dssm = intel_de_read(display, SKL_DSSM) & ICL_DSSM_CDCLK_PLL_REFCLK_MASK;
>  
>  	switch (dssm) {
> -	default:
> -		MISSING_CASE(dssm);
> -		fallthrough;
>  	case ICL_DSSM_CDCLK_PLL_REFCLK_24MHz:
> -		cdclk_config->ref = 24000;
> -		break;
> +		return 24000;
>  	case ICL_DSSM_CDCLK_PLL_REFCLK_19_2MHz:
> -		cdclk_config->ref = 19200;
> -		break;
> +		return 19200;
>  	case ICL_DSSM_CDCLK_PLL_REFCLK_38_4MHz:
> -		cdclk_config->ref = 38400;
> -		break;
> +		return 38400;
> +	default:
> +		MISSING_CASE(dssm);
> +		return DISPLAY_VER(display) >= 14 ? 38400 : 24000;
>  	}
>  }
>  
> +/**
> + * intel_display_get_refclk - Returns the display reference clock
> + * @display: display instance
> + *
> + * Returns the display reference clock in KHz.  The display reference clock
> + * is defined by the SoC; on some platforms the proper value should be read
> + * from a hardware strap register, while on others there's only a single
> + * possible value.
> + */
> +u32 intel_display_get_refclk(struct intel_display *display)
> +{
> +	if (display->platform.dg2)
> +		return 38400;
> +	else if (DISPLAY_VER(display) >= 11)
> +		return icl_readout_refclk(display);
> +	else
> +		return 19200;
> +}
> +
>  static void bxt_de_pll_readout(struct intel_display *display,
>  			       struct intel_cdclk_config *cdclk_config)
>  {
>  	u32 val, ratio;
>  
> -	if (display->platform.dg2)
> -		cdclk_config->ref = 38400;
> -	else if (DISPLAY_VER(display) >= 11)
> -		icl_readout_refclk(display, cdclk_config);
> -	else
> -		cdclk_config->ref = 19200;
> +	cdclk_config->ref = intel_display_get_refclk(display);
>  
>  	val = intel_de_read(display, BXT_DE_PLL_ENABLE);
>  	if ((val & BXT_DE_PLL_PLL_ENABLE) == 0 ||
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 6b0e7a41eba3..3cfbe1f2b6b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -65,6 +65,7 @@ void intel_init_cdclk_hooks(struct intel_display *display);
>  void intel_update_max_cdclk(struct intel_display *display);
>  void intel_update_cdclk(struct intel_display *display);
>  u32 intel_read_rawclk(struct intel_display *display);
> +u32 intel_display_get_refclk(struct intel_display *display);
>  bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
>  			       const struct intel_cdclk_config *b);
>  int intel_mdclk_cdclk_ratio(struct intel_display *display,
> -- 
> 2.48.1
> 
