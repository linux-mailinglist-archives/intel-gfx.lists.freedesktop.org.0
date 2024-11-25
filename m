Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C762D9D8950
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 16:27:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC01A10E011;
	Mon, 25 Nov 2024 15:27:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iuPXt1RV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C8B10E682
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2024 15:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732548442; x=1764084442;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=PmoiDz4b7ZIUSCtn8LfR3rdhZJPjpFpBvTH0vN+6Or0=;
 b=iuPXt1RVukOmJFQfyVwSix5xKIJnxnkeCY6ZvpPK9w9mtCsWVf7F5yz3
 C5Bwc5LPmWKlVntsETSwSDpfxIsrf5IYi3aF3w99lSPSSuxD0rt5kC2Jf
 nsqIPAVVnApNvnTxa4tQez15VRYuGJgtFhxTgzck5p5EuGV/DuTNIq3iq
 T+o/TMCG71TDBX6WKcc8dyuTsZAlrq5XRoOL5rCFVLB3zQYZv8JzAKq/l
 0T4k+ItHQzn5Xl9Yod2rhllXUcT1fIdw9L46c7uKnip1y57HVJlV9Ua2a
 ZKnfqHBkDGySZ4feiZtPfV/pVF2nu+JcOpYciYMHKyZl2yz/L41mrFeQC g==;
X-CSE-ConnectionGUID: D/RJpYqLSouyWJCQ2LFtmA==
X-CSE-MsgGUID: W6/OsrLJSRmYwF5udf+kGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="44042725"
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="44042725"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 07:27:21 -0800
X-CSE-ConnectionGUID: 5k9dl+cZS32m33ltbF7TKg==
X-CSE-MsgGUID: w/fFFCUkT2SPHoKr+6azUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="91636983"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Nov 2024 07:27:20 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 25 Nov 2024 07:27:20 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 25 Nov 2024 07:27:20 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 25 Nov 2024 07:27:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rwc14/pmz5EzN1PkPNcbiU4Ce0FOM2UgVsixNVmrhiXtXlXx9ey6/PlgyxnxE8NOd1wWBzPuABkWBM/+uzSk9fkVB+3TymZjjCWbw1t0OyhItBoCV7MxrKk4GGuEUA2ex0Ami4nGvA3fQY47X6tLn7wKvW+1/WI6mqtEjmPkcKc+BYY5oeulB9IkG3qcs3N7cE6AKWtjWUSV7TQQYbvaCAozwzikMj4chJYDAxIc+4dkClAdxoKatz406Fqjas3w00YRuu/FwXf4ubkB4lif0m0Movp0wa1pSGwhI3zPZBqDxTBsZTC97vCfaFq8Sl/aEpMnMJRyqAXtpuWTvTmWlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e3TRzhBFNbclh/lJNYDVAGV7F5iNz98selIs4H8XoVU=;
 b=UgD+M0phSFOf7o3Oxj4ByQBPfDLA1mY1NrWI/kON8mCSdLjCmaEPVfBnM424SKIRuz0ubG2681Ycvmugx+uhEovkfStj2y0DQ0lyBHY9/rSVc+b3RyEX12sJoG80Y9KvXXlzNI/phAGTR6dSxmJOczYpbK1smO2aSPYf7Mxi6aqxpmwNPBAh4gLMyL8GiYrBtbtwnLHxvRQWDQHyCdmmTcRTWnwFR03y2jbPu7S1z/6vBWE5eUVfZv0QBLLuuA/kPl7S0dFFkM0JZqTedvuvQ2z04hnrFfrXAyT+nqPl0gpp6B5JrF/GFZ5GRNEkF9z7YiEcbdb9AL+5ty1jBLrXjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Mon, 25 Nov
 2024 15:27:15 +0000
Received: from SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa]) by SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa%4]) with mapi id 15.20.8182.018; Mon, 25 Nov 2024
 15:27:15 +0000
Date: Mon, 25 Nov 2024 15:27:11 +0000
From: Eugene Kobyak <eugene.kobyak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <John.C.Harrison@intel.com>, <andi.shyti@linux.intel.com>
Subject: [PATCH v3] drm/i915: Fixed NULL pointer dereference in capture_engine
Message-ID: <etwgucaj4hu7buvrvzgxkhxjtl526qd6fdyfmxzsdacphrg667@nrd35hese3t5>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: MI0P293CA0004.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::15) To SN6PR11MB2640.namprd11.prod.outlook.com
 (2603:10b6:805:56::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2640:EE_|CO1PR11MB5059:EE_
X-MS-Office365-Filtering-Correlation-Id: e53d8096-c535-4cfe-71f5-08dd0d65a3df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N1hNM2JQYzd3akN2blg2clJSY0RZd0tWQUswQWROeTd4KzE4V0xrM2FZVnAr?=
 =?utf-8?B?TDBnN012UzRzQWhqbWp1ZW5CLzFKNGFnalF0dUFlRjhVSzY0Z2c4VWhORTZR?=
 =?utf-8?B?bE5YaWdOVVE3K0h1VVEzT2lYdkxPRVhiQnlvZGZ3THNFQ2p2RXpiWFBNOTE2?=
 =?utf-8?B?WjNLOTV2RmJNZlFySWE0YW1pOWl6M2d2QTkzaFRZeitINXcra1RWZVVtYk9Y?=
 =?utf-8?B?WWkydGhXWjkxOXd6YzR2bVdhV2Y4bmZDQzhrb3ZTV2lJdy81blJXeEJtZElu?=
 =?utf-8?B?OHVjbDFMODZZQVJ1ek5GaDBJUEFkbFJTbE42Zm1ObG5EZXFkUGlSenQzQ2da?=
 =?utf-8?B?SHhtYWlGUWNMUkNmK1NETE5KMkNvblJ2NDZlSGdjMHNwcENtUXh6WERKWGNT?=
 =?utf-8?B?c0YwdjA5RkRodkUwWE9qdnRPSlVMYStKUldDMThQbEE4OUJ0OWh2dXZlOHUr?=
 =?utf-8?B?aDZtNEVUWnNwK2lSa0xDZUpHYXpiZ3F4RUV3cEhPZzdYeS81ZEI0SkpJank3?=
 =?utf-8?B?VzRZVnZESzV6UCtPdmF4aTcyTjlmazQwNlhrMEUxVkxTR3ZuTnZJS1J5cyt3?=
 =?utf-8?B?b2JoSEpRelVXUTdxTzhENFpVNFJhbzN3b2ZwZEFCRGRCMWZrWURGTDRYUEND?=
 =?utf-8?B?SVU5RGFuZ1VjWWljeTZTVlkvZ2pnUndJRGQzWEE0RWo2N2hxdUZjU2xVU24r?=
 =?utf-8?B?UkhLclFNY2Z2UzBVNlV5N2xTS2V1bG5MK1NBcTB4WDA3aVNRQTNXbjdyNk9q?=
 =?utf-8?B?YmlUQmFqU0M1NURvK2tQbXQ2bnNSMDhydXMvOHhEY2Q5bjF4SXZ5aEQ3Tm5V?=
 =?utf-8?B?MnFyZUFrdlZwU1Y1WWlMNm8xU1cySFBISDNWYWplcU13VGxUWm5jRHIxVnZ6?=
 =?utf-8?B?MXIxaGlabGpTZFRxUEJrbWtEb2Q2SzA2andpTHhJcEYvaCtqTHpKYjZ4bXRu?=
 =?utf-8?B?V2IveU5zUFhacGZjczd4cllVbTl2dm5pRkJlYXZhM3h4a0lOUVZsc1BBNHVL?=
 =?utf-8?B?SjhPRTZFZURucjg0clFBamIwMUhvVDdIWE5PU2tRbnIvTXhpSnJQWDNYVmRP?=
 =?utf-8?B?d1NQVktoQVM0NUlmVUVpd0NwemhsTXIxR00zK2Q0dkFMeWZSa3g1TnBRYSsy?=
 =?utf-8?B?L29TY3JpeU1IL0haWTUzRnVOQWNNeE9iamFPTDRnOWdkZ1Z6eFNxa2p0L281?=
 =?utf-8?B?M3dvUkhRcCsxZ3Q5NC90NlEwUERDZS84Ly9VbktoRHRCSTFaL0FzOFBxaXFO?=
 =?utf-8?B?Z2s1anpsSURzTHlmdDlCQno4LzY3aTNDeC9IbjlMaXFDaUxoQ1A0ZktSZHJa?=
 =?utf-8?B?a2JTRzVhMmlPRzVYODEySkZjd3gzSEM5RFFaSUdnbldJSVFGZzREVTI3cG1X?=
 =?utf-8?B?cWNoc3d5RUZldi9wSUF0aTJEMTJQZ0FHZTlONSs4eXUrQmdwRmgvTnNoYUd5?=
 =?utf-8?B?L2FPRmlrS0N6SnlYK3l2NUZNcThRdGc4OTExOWFiaDhvQzJxUURwYThPMWNN?=
 =?utf-8?B?RWlQeFp1UDVIbDJERkMybStyMFVyUGluSXUrc2RJb0ZIcTBvd0FDYVBsTzhK?=
 =?utf-8?B?SjhZck9xaGljcW1JM3d5clZHWFlPbTdRNEQ4MkZLRHhBRVVyVHE2ZlBHRXhi?=
 =?utf-8?B?RmNBeUxnVHUrelBWN2xGbXBTZEozOS9OOGlvVWlRdFpQQm9PNFhqQy81MzFT?=
 =?utf-8?B?NWZsR1dHQmRpYUh0NHVFMG5WSDZ0Mi9lYzhUOTEyb3AxVy93ZVZXN0g2b3lR?=
 =?utf-8?Q?A9cIt9BxJH+A74WczE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2640.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEV6K1RjcW50M1hRQUN2OUhBRlo0Y21iS2Zaa3lTU2xZS3V1dWRIWHBhQVF6?=
 =?utf-8?B?SnJpNGZ0MUpOQVd4bGRiWG9XMWwxZ3QxeTMxVzVGRTFDanZnbWo3WDVZcVEv?=
 =?utf-8?B?WFdPd2Q1eGtYaFRUcVhIZzdDdkxLaHpyb01EZ1NpTXM0cldIUWhIRzRQVHd4?=
 =?utf-8?B?VWZmNStLUU9LOFpDV1hISjhNOWFqcXk2K3U1T2ordzFJZ2JtOUJYeDZ0M29n?=
 =?utf-8?B?RVM0dkd0TnhiN1A3NFpEZ0RmY2N2N2xQNVl2Q25jNFBBcWpkaE1WSlhDNWN0?=
 =?utf-8?B?bHZVMzE0amE3QUJ0aTQvby9pazU4Y1RCT1RScHdLamxwK2svYk1EaE9yMWUr?=
 =?utf-8?B?bVhYSjM4Z1J2K0NiNVM0dVpkTHhCcm1INXlLT1JSOTZUQlJxQjNmVWJ5bThS?=
 =?utf-8?B?bDh3WDVhVEx6SFltMDFUS1hhVWQ5dldxdzU5aHNNMFZ2YllRdFdkSWNqTnV6?=
 =?utf-8?B?ZEIxb2xDWHFOZExNblA2OVdab3FTMzZtNjMxZkkxNUx6VFdXOHZwWWpuTWJS?=
 =?utf-8?B?cmprY2VUQzg3VU55eVZRQmIvVzVPOFMxTEYwV2tXdjM3eHNUTERLall5UytX?=
 =?utf-8?B?VXE5ZEtaNmY4QTNkK2Rsb2dhTXZPQVUyRFY1QTJUQ0xCUWlDVGlNNStIZmRo?=
 =?utf-8?B?akJCaXhpRHhiYjVNUC9GVzdtRGV6b1k0d0Jod0pDcm9WbmxLaWgvbVBnRnVR?=
 =?utf-8?B?TzVYSlYrU3BhOWVlTm40V3dFazJkVk5jckZ0Rm9IbktqQjVLZy9mTzRiMHpI?=
 =?utf-8?B?SXNHVng3U3hqSHd2R1hUV2E0K0xDZnF2S1RyUGU0RWdzWENvbXhpQjRRcnlq?=
 =?utf-8?B?b1NOZlE2Uk9OYVEvNkRwcTBSYlhVT0c1bEl3Q2puY29zaTFXblpFQ3h2Q3NC?=
 =?utf-8?B?V0NHdTY0SnM0b2wzL0o4bUZXN3VTa1p2RDFKRHdheTZxTzJKNXhPdTVKQ0Vx?=
 =?utf-8?B?Q1hGaFl1N1lIYk9ONmN6NDloZzBiZmVVS3JLMFlQb09WcXJJMk1yTzVFcXY4?=
 =?utf-8?B?Nm9pUHFSTm1sbGhjWlNWWXRsbTBYNlo3SnpNeUl3TUlJQ2VwQ25wSDZrRWlx?=
 =?utf-8?B?NUR4VlpsdytTb2VpbzdrbEJRQUpLVnE2TFluQjlLYldSZUlwL2QrMVJMUG1G?=
 =?utf-8?B?WGIxOFdYeTdLWkRBdERpRXl3b1hsVVdGdm9qN2FDQVV0QVBqNm1FRnA1dCth?=
 =?utf-8?B?S1JTS05pV0dudEF1b2JzcE9xQVlrMk1Db3dtRGhLdEdnaVZIWWtvQ2FEWTc5?=
 =?utf-8?B?aVhvdlFuUndqNllnMUV3M1NPaVg3Uk1MZTlKeG05RVVRUTFkd2V5R2dLdlJm?=
 =?utf-8?B?NGNoYWc3VGJuT0RGZE1UU3plcVM3cXk2c2xjSFRYc1ZaYXNaQ1pjUno5VTBm?=
 =?utf-8?B?L1I2cGl4WVB5dmlLdkhZRzB1blN3MjNRTXB2ZXlmTzR0Z1E4SHdwVHRWL2lZ?=
 =?utf-8?B?NWhXT2hYMVdGWXQrOUpTZjRDeFlYbjdVM2NvWDdzMVV1NUY2bXBvOENXM2gv?=
 =?utf-8?B?Q0ZKc1VqYUtpSVRnUXkyNzB5WEVnWXlnakxqOFRaTlR5K2hjR2hUUXMrNWMy?=
 =?utf-8?B?bGtqMi8yODRYb3RCeXNPazlsZ1ZlVTQ3N1ZxZ2VGSnY5dGJkeTczSSs3VENu?=
 =?utf-8?B?M2F4dWlibjcrWENJb2NmRkgxVEtIMXVwTngzaURmalc4bGpBc081VEZEU0Fh?=
 =?utf-8?B?czVNYld6TUZ3UEh4ZkcvQmRvWGkyb0t6TGMzRHF0ZDU5MTkrbjNQWENRQUNK?=
 =?utf-8?B?b2hyQXl2WjJPUGtBcjFCN2VINk1hbHJ5Sk5VUVRyT3RTSGVYTFFEcDlyeWR4?=
 =?utf-8?B?cFZPbDZTL2xGc2YrU1NlTW81QTN5SzZ1elhnSGhxbmQ2MVVwUXBMdWIreFdQ?=
 =?utf-8?B?MHdVUzJPM1BNSmdsSXI4b2h5cDhsbTF5MkNkeXRnWlNLMGszR3d4N0t6d3gz?=
 =?utf-8?B?YTBnd3dVZThCZGJQb2sxdUN1WEpUci9MUkhXYWQ4cUI4TGs2M0VBK05FWmVN?=
 =?utf-8?B?UmdsS25NdVJLSitobTQxK24zOCtPUitQTHBXTVYrc0pteDlmTGlIYW4yL0xM?=
 =?utf-8?B?Nzl6S2FwdVNGd0xMREZIVHQybHIrOFIwYU1vWU1GNzhtVno0Y0dsWmNwMFRi?=
 =?utf-8?B?TGV1SmJQdy9nQ01jNXRjeUVRNEhCZDhEd0xuYm8xRXIwdWNVbjc3MEo1ZWFx?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e53d8096-c535-4cfe-71f5-08dd0d65a3df
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2640.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2024 15:27:14.9624 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WaPqWyYPCiHCF4VrnnSKaKGGKldAW47Uu8EfipzjfR7UqSk3im4Zllg5NTHIvC3yVhVdAQ8iMRiCCxoL1oCzEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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

When the intel_context structure contains NULL,
it raises a NULL pointer dereference error in drm_info().

Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309

Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 135ded17334e..1c614c74c2cf 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1643,9 +1643,16 @@ capture_engine(struct intel_engine_cs *engine,
 		return NULL;
 
 	intel_engine_get_hung_entity(engine, &ce, &rq);
-	if (rq && !i915_request_started(rq))
-		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
-			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
+	if (rq && !i915_request_started(rq)) {
+		char guc_id[9];
+		if (ce)
+			scnprintf(guc_id, sizeof(guc_id), "[0x%04X]", ce->guc_id.id);
+		else
+			scnprintf(guc_id, sizeof(guc_id), " ");
+
+		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld%s not yet started\n",
+			 engine->name, rq->fence.context, rq->fence.seqno, guc_id);
+	}
 
 	if (rq) {
 		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
-- 
2.34.1

