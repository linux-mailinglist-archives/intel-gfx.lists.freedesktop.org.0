Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD9CB98617
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 08:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8FB10E220;
	Wed, 24 Sep 2025 06:28:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D6ITeZWg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7EA10E220
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Sep 2025 06:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758695294; x=1790231294;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SLNxOj8WTRxQY99mvnEnVVWlRUEJjzoWPBk6Eyy1CMs=;
 b=D6ITeZWg7bExgcAFHYiQzV0zm3I5xrFpXFUyT5BCHVXqfcGZ1IXcspi6
 +y39uWbXBmJtGfHI8NdpLRIdHPHsNTEB27xchFz3GHUj5GrbBy2BsOUWw
 qPCfeQx7omhfTvN04AF1QtUW/9yetRzsR85VgRnG+P12FVMMIjU/HpwJJ
 hw2IVWnbB2G+6lbCHxeAr6COFcLYmwuWsjnXANyC6YVjAeAI272ULvemS
 qzhhJNgWddeLurtF3qJHGAzpqonILmHrVt/oQFhws/KibEgsdc8EhQctM
 mAPdatCe+o/6P0dhA/aj5ksxhdx0p1HsLU+7gVOO9FLNprTPE1nFjFtm/ w==;
X-CSE-ConnectionGUID: uByJ0od3RYCKn9THfpL5Ng==
X-CSE-MsgGUID: rM8XNq9FQPqiv0gB0Zn1fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="72409405"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="72409405"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 23:28:14 -0700
X-CSE-ConnectionGUID: PZy/PcHHQWGqdm4ZE35x7Q==
X-CSE-MsgGUID: Li80BsMtSIGcBgNx0ZNGMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="181344059"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 23:28:13 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 23 Sep 2025 23:28:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 23 Sep 2025 23:28:13 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 23:28:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lXrD5Dl6BJ9b+CSbf1TdHFVTRDJtSOyOgvL0kewPLoOv+wa8T7Eu+zmyA06UJvM4/IBYtBdZ4aVcgR1WJti04Xqm3R3Nrr01+Ls579ihd/bKEWhJcSXfJTS6MYV0BkxabpSDPnpHby2NbTMNPZLd457Z8UH4Ht/K7MCIB9hYrfZzjdYqlOS3NpOFFQy3TXOZ11ne4OQ8mv8M1pted+9vYyhigSE7ZbsreKDYnjqYi8nRns/Hkcpn24Kws3ZoZULlVpyJgBM8ywH6Rh5HGFP4YcHMHdcckff7XrH6GlFFJXejpBQb6EzB6R7aizT3TJNpLSw/a1+hYiRjUGdGIuFeNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nnW/uI+mukOYlfNDV9ZN0JAQkzbY2pzalzyiZtoJjzk=;
 b=UE7s8t+CiRVbHTY8rOmA81bNv1u/T50a3sc9EgfmnDfDbqTirwpIKBtWbCWzj9USAPOkdmyrWVo8v/YTZJvMMNT3wVkxwR2MBsvlVHTePW7RUbyYSJJRw1uOwz7/35jVDcqysFzB/xEoJ+r71KZuVB0Y9Mi2C/yD0E9nYpLTb2Njrk681ZvSyKIfDRMw+MmGA1voZV8sHQZyCfIGIcpumd/SSnyt5oGnqM92xTYi669aJr4F3MjABzKbYvqZmmRmLxqFLeVY7bzriTQgsh+VPATfV/YdtRWYtAIhtaoTKUWMDmWMsLjcEc4Af3+8rXLbxct8+uLp2lBIN80ZybW/Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA0PR11MB4591.namprd11.prod.outlook.com (2603:10b6:806:9c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 06:28:11 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 06:28:11 +0000
Date: Wed, 24 Sep 2025 06:28:00 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <saurabhg.gupta@intel.com>,
 <alex.zuo@intel.com>, <andi.shyti@linux.intel.com>, <zhenyuw.linux@gmail.com>
Subject: Re: [PATCH v3] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error
 handling
Message-ID: <fggu6gus2o25ooqhih4zrdevayi44azbhu7npx636rml4uex7e@tqs7vstca2zj>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250923212332.112137-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250923212332.112137-2-jonathan.cavitt@intel.com>
X-ClientProxiedBy: LO4P265CA0201.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:318::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA0PR11MB4591:EE_
X-MS-Office365-Filtering-Correlation-Id: 5671eda5-52ab-4019-a15e-08ddfb33886a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L2FKNUQ0WnNiTnlGQXZOYjQ4dVF2RktkTDdJWmdUZituYnRvMmczc3RRWnQy?=
 =?utf-8?B?TjhTTjJpeHNkMEk2YVdtWWV4R2FaUEM3MDhOS2d5bmRFZXE5dFY5eXlzbVNm?=
 =?utf-8?B?S3plQlBocnZybFl1c0RDUkFYb21FSUJKV1JKY2RxUTFWbTBaYUJhVHhidHUy?=
 =?utf-8?B?M3F2V3dFWGYwdDY3YzlzdnM3SGNTSVFmb0dubVdrb2FSMVo5N2lVV1Z3aGt1?=
 =?utf-8?B?VzlBOXhHRHZVYndVZThpTnk5L2FWYU9QWVdmeHAyMC9oNjFYc0U1ZFJrcGNu?=
 =?utf-8?B?OXNpUE1nb0tXYWhmUEVodzIyeFdEamQwWXZjdG5zWFRQT001dUNlWXBiRitk?=
 =?utf-8?B?RldZT3BvZUN0dGo1SnNnNnVzSnlkU25zZWZRL1NsRVJDczJVZW4yNk5tV3l2?=
 =?utf-8?B?T3g5S21nOG9EeTNPU1BTT2tJeG8rU1IvTjdxRWhqbnVJQ2xWYjZ5SmkybjRo?=
 =?utf-8?B?Y29DN3hzTTlmL2JROFJrYStFYkx0QmwwQkx2YlBuVnJYSUhFU003bndlOHRl?=
 =?utf-8?B?cURPU0ZLZHFaTitQN1Nmck1iTnB3QzRtbkhIanUzUkVOL2ZuU0tyOENsMXNv?=
 =?utf-8?B?emRuMmhCcDRZdHIzejUwSFRvdVRXbFVwVVE4VGF2SHVLMEtSakNudDhXUU44?=
 =?utf-8?B?bGRJUW53UGxsME0zaFFLQS91ZXVqa0JicUkxLzhYc3hnL255K1o4bkk5amE5?=
 =?utf-8?B?NGd0ckdQVlNwck8vM0JCZE15clJ3SFFGby8zMExlczUvWXA4NlZEUVNHN1Yz?=
 =?utf-8?B?SnBwWFNLM0xmaFY0M0ZERDlDZFUrSDRYdmFkY3M4UnE5ZUN5bjRud0dpSXFk?=
 =?utf-8?B?djFIOUJVd216N1ZGMGRoYStRZm9JZllSM2p4VzFVeHdqUy91M01KZ05jTExK?=
 =?utf-8?B?NC82dzB3a3ZEVDFjNHFiWWFHUmM5aDcvSHFQK0c3ZTA1bVpXZkkvcFdSVi9G?=
 =?utf-8?B?VGVqQmNzV3RsSHNTc1pIVDBhMFBvbnE2eGNpeUZKbGptUGxGKzFldElWdHJi?=
 =?utf-8?B?bVVHbjNzSjlXbVJKQXp5Uzl5eTArNWkrWGpwT1k0NnBmUWpTTWxuVCtwaW5O?=
 =?utf-8?B?UHZBakNWU0xSWERtZ0tJTHBIQWpZYURoYVlaMm5pUkh5NzQxbVBwRWFLRW1z?=
 =?utf-8?B?RFBXZmF2WVNoNCt4NDJlcWFGNmRTMDBJTk5uazlpakdvVllSYjI1QkRKUlRE?=
 =?utf-8?B?UFlvR25CWjFFdjhBUWFQZG55d25NTXVQWXltTy9oTWlzNXhYMnFGMU9HV24z?=
 =?utf-8?B?UnZyRUtkeFRibCtxRXJLZ1k1R0tZTHhqdDFpTzlsb3FzQnlRKyszdi9SRElo?=
 =?utf-8?B?YU93ZVNyeURVaERVYkNob1d5b0RJT1BjVE5ZTHlnZmh0VjhhVzNFV0NhcHI1?=
 =?utf-8?B?OG5nem1yMENpcUlWMksxbno5WEJJa2x6Y3pNb3ZSbjhlL2xhdFE4azdFakdK?=
 =?utf-8?B?b3R2Uk5mNFlHdUlnNkVyazZxTVpRd1FsUUdhbndpUStTRjdFdDFBUnpZSy9s?=
 =?utf-8?B?Y1JpbnR0Y3FBY05uNzNUVEJyK25JQWdhV1o5TlJqK002SExlem1CRFE2blhI?=
 =?utf-8?B?aCt0RE9tVG0xSFQ5UmhONDRjRkxyT2F0blg1dXlxeU94Rm11NUtTSGl6K3lB?=
 =?utf-8?B?b2RNZTcwdHZvbGQ4a0l1ZEpzL3lHYXBYOHBQdU1TU01rc3JtU2Uwa1NiVzZV?=
 =?utf-8?B?TTgzY05HZ2k4dXd6Q2R2Z2ZqQVA0dFRzcFNtWWZoRldRWG1JRWx5bTR4Y3BM?=
 =?utf-8?B?V1VFeTlrZk5EZVRDSkpFcDBCNzZyTWJ2OGRoeEhvL2xBTVdTRVBQUlhlQUlT?=
 =?utf-8?B?c28vU3R6Zk9mM0UyZ05KL1VXa28zVlNKSDZON1cxYzVITU1tcGZUOU8rTEt3?=
 =?utf-8?B?bUhHR2U1RjV2MyszQ2FCc2REOGxtOHViTXdQM0kwaFF2RjNWUDAxR0h6NEZw?=
 =?utf-8?Q?ItJ4wdLzTA8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzFSREFaNWZ1Qk8yVDlWVkF3Q2RpcVZoa25EelFmOXlJVXhKYVg5Y3lwb1dL?=
 =?utf-8?B?L3E5UGNVbXhoRHVUckk5dHllUldtMGsvTmZQQTJhbFdJRS91cWJhMWRLWGxF?=
 =?utf-8?B?UXgrYklMdHN5L21QWGQyT3hqMVR4c0plVjZUZDZ3ejBZVTJpV09Ickx3OEx1?=
 =?utf-8?B?T3FTbjhQYlFLUmZrV0hGcjhMNXRiYm1vdVV3akF2UTZ0Tjdxc0xrQU90a2w3?=
 =?utf-8?B?bFptWUxIT2pzSkZJQXhtdCtYUXBDQ2E1NHhyRnFUZ2oxNE8zYTdSSnR2cXho?=
 =?utf-8?B?TjFOY3R1VCtEbjBUcEp3WUVJSlhlN3FwMm5XbWF1Q3YyVThDL0JTaWdPdHRH?=
 =?utf-8?B?VHBvTXlPZmxubTZtM09SMU1IYXA4NVpSLzRXTVNueTVOZXRQUlc4UkJQM2ZS?=
 =?utf-8?B?cklEOU5TZ0FpN0t6cnBtcWsyWVRPMDN6c0JFZU1zZzVaUUs0cmEwRHVjL3Vv?=
 =?utf-8?B?ZTNYa3JZM1pJSzlvdG5zM2FYZkZHbDBWL2J1RU44MWsyM2VuN3hqRUVLNnB3?=
 =?utf-8?B?OVRhM3hlMUVuWS96M09qT284b3BxakNIcXNMKzVTNlRVcE5DNzRsWERMZ09N?=
 =?utf-8?B?YlphcmpqcGJTSlRrdGRQS2NLTDJ2RmRRNlBTbzIzdmxqYUdjN0NWV0o1WXN2?=
 =?utf-8?B?RVVKWlBLZnp4U2xjOTlOQXRpL3gxUGlEWk5tS0FvVCt4L0lad1BXSlpLQVhX?=
 =?utf-8?B?TU8xdFhXR3RnSHdxRlpkdGJYNkpDem5lTlNIV1pBaklwVjBHNy9DalR4eGw2?=
 =?utf-8?B?KytSaHFmL3RCMHVwUTlzdWhWSktKRDhJRm5TYUF0Wk90MEJBTFRBdFRBYVlY?=
 =?utf-8?B?ZmkxV2cveFoxTXJoV1lMUkpjWEExc2hCRjVDNnZnbUpOYThaUjRuWndHUnRN?=
 =?utf-8?B?WGxXeWN5cjdKUGRyRFRVRHFHNHFkaUJOU0dYWEZ4QkNLVUFZWVBMWmJsRG5n?=
 =?utf-8?B?V3FDTjFSekRMRjdldUg5clFwNnpaelgrdE0wcFJsdmpIbDVhOVNmYVU3OVlt?=
 =?utf-8?B?Q1JrbEpQaDFQL1l3bmRPK3J5SWliVzdhRGtlWVhVV3o0YmhlbkFsN3QzQitN?=
 =?utf-8?B?NWlzZFh6dVVId0o5UUpIakRxU05ieSticFlHUUZWdktnVE5aUFZYUWVueWx4?=
 =?utf-8?B?UUkvZGJtdTQ2Y0xBbmZJTmZTTkVtemN4K3JaaE1aNzFPc3JrN1lmUVFTTHVj?=
 =?utf-8?B?eWc4L0NubGRJYWpVREFYS0ZpTHdMRG1sc1FnSmVueENMOWNOSXNsWTlUMXpv?=
 =?utf-8?B?TFNqWndGR2h6ZzNINElEYzlIUTVENTIveDQyQ2NNRkhtdWUvdC8vaWRvTTBH?=
 =?utf-8?B?UURFNHJNOWZsdW5JdEhKNTFjVEZyeXFBRnRZUmlvR24wRXVSdGluWGJzQ245?=
 =?utf-8?B?a2RaK3NKT0p3WkRDek5WNlUxQUplWkRyMXhIRHdKU21jYTdJZ1Z2K0FoNkZU?=
 =?utf-8?B?clUxeTRVdUtQRnpUZzlpajl0azZ2R3Z5d2FhbEtPRXF3WWs0UWpwbXQydWZ5?=
 =?utf-8?B?VlBIcWdaSStjU1Y3bkxuSDhqRm5Ed2lhTEVKekZyZmtKZ2phcWlYUSt6SjF4?=
 =?utf-8?B?TDFIQ3JtaHlpVkQ1MVFxdnk3dWxMTlRQNzVuUUd0U2V3WEN4ckxMMlU4QXRH?=
 =?utf-8?B?V3I4TU1DemJPUVFGYWZSZU8rQTRkR1RXYTVrMFRWVXBRcGZ4dSt3ZFlqZDZl?=
 =?utf-8?B?K21yYTBiVWhxcG8vUE5BS3YvTVh1ZklDMERHc1orb0xvR2h1dkpVRUdFQ21G?=
 =?utf-8?B?NEJHK2tlZVdsUm8yOFFld1JoeXlHOEx0OC9BcHFBeVBQYnRRRmtJYThQR29H?=
 =?utf-8?B?RWRGWS9VWC93Z3E1SWkvMEdRamgwM1lsTndjY0E5bno2NSt3S1VhS0VDaVdN?=
 =?utf-8?B?N2xzakRKQnQ1ejJJaUEyQjUrSG1wMVpqSXlFWmdTYWxRc1pQNEFyZUhIZGcv?=
 =?utf-8?B?cWV5cktmNmZPUlFLYVhBNjBicXlhL0R5NHg4ZkNaeG1QRWpSWWlhbTRINjlQ?=
 =?utf-8?B?Z2dtTFhKWUtPTEEyLzIxeG1zWHJvdUUrRFlDNXloSnA1cG4zY3FZVzd0cWta?=
 =?utf-8?B?ekxuQWZoL3ZRcTBieUV4NFlrTyswNkF1RzFIOGtOQmd3TktKY3Y3TXpHejBH?=
 =?utf-8?B?Uiszd3ZYQ3BwdkV5QnphQXVQTnV5WHJEZ0R3L0xYQVM5QkJMUGIxZFlOVW1p?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5671eda5-52ab-4019-a15e-08ddfb33886a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 06:28:11.1235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yg84FgVsxZdVeNyY9AjoDLKCtY2eAiqY7j9lQtqgHrmspz1DKrBdh+GGAmGHpGPAUAFqP2GLQ3xWZYNsaq9OdIg2Gn/NbV1g6m4CIVqAyH0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4591
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

Hi Jonathan,

> Add error handling for the following VFIO_DEVICE_SET_IRQS cases with
> respect to the hdr struct:
> 
> - More than one VFIO_IRQ_DATA_TYPE_MASK flag is set in hdr.flags
> - More than one VFIO_IRQ_ACTION_TYPE_MASK flag is set in hdr.flags
> - hdr.count is not specified
> 
> Note that since hdr.count != 0, data_size != 0 is guaranteed unless
> vfio_set_irqs_validate_and_prepare fails and returns an error.  So, we
> no longer need to check data_size before running memdup_user because
> checking the return value of the function is sufficient.

The code looks good and I don't think the BAT failure is related
to your change:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
-- 
Best Regards,
Krzysztof
