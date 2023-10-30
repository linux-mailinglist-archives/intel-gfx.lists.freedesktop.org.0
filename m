Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 788F67DBB3B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 15:00:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0710610E2A7;
	Mon, 30 Oct 2023 14:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6EC510E2A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698674433; x=1730210433;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=aOuhhHo4twEN5oJqIPEY+a/tV7/8HKLLouIvY8y7NSo=;
 b=O5KFD3lplBOc1H9fBWPT/BCA5xK8SAPk+WgDozIJuko6GfRlZkKenv1o
 OYle9Ej6eVhHqainv6TkuE1JElrQD0E2iRD5SJ7lwuDDopsAqZ3Xb6Mz6
 ebjmucrVi6s9A2l+0FP6yAEuGxrazO+EJYFeuFm1jchkU8Z8a8jh5JlHO
 uOtsCE72maOBz/gK6WNM7K11Y7NnqgWahYLn9v0ZZjnDUddc7aUAy6gmD
 s3WYtIzYOrg33PMWhr6pupp3E9hC0hlVfPpxBMgOIlDAnKRUMcYSwA9Pd
 KRVNDAoaZQSLBFhbQe6GmB7pB9IeD5ag4JCXy0iSwH5PE+swF/ZYoqlus g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="367419781"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="367419781"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 07:00:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="7950687"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 07:00:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 07:00:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 07:00:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 07:00:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 07:00:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K/V6hLPU5X65uNTk4H93lOYomIgsEIFRmeh34LbadmplZ3JbXoR3F5wsPaynHbsRr2k2HnfmZVQG0xD44yHdnCM3R1lRvG+9TSXZ0WAEzeOlXXBl0oh1k1QxlDQxtslGsFJdrtUHBMJEcCsEFZaXdbTr1cFI6YSlxvsIY2cRClRuJ/fQflD9y7sa0c4eLD2so9LBjbfgrsqndf4is4AgBWgQrOgbipGt3hkTGhGK9fFUhTSVkD3hEAQXeF+/cl7V4bHWk0z0nLkYJRLs9S+/kWOuPqtnC56VDihoj300ZJx3LRsjXzJiIfZvqvxz2vrSNCyRqJRtEznuGa4TGnSQqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZUKaZAyFAJhMZdGselzFQSJ3VcGJfL/EMrKmFcbaX8Y=;
 b=BaxY3pdD/CuIHVDoHJF+rp2/ytF8apBNtnDVrQyZimFEW3N5eyzF+ZyHh1X29zCvObWthe6AdBlo7Ztd6v3rfdB2bNWHfyJG+nbQjbaC/0u6lQM0Zco4syUIMsvFYkSuAcuuQHLlBTHU2XbEf6rNC8yyotZioiiEP10ZPUVuUdQ+UEvmrPEVEm8JSkoFO7T1uMLux/fNNH6IYr/qqMFq5TY6PFe4syrYSQwCqFOt0JrJRuF52iyfyDnffuuqHk+kRfG6LxmI2rZbcIuMEWxwvBfa0sKUCExMLgmQ8HlQgiVYctEIaVo1nMm52Z3TmHWG6uzT6vBp9GsK61MLRp/1lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by PH7PR11MB8010.namprd11.prod.outlook.com (2603:10b6:510:249::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.29; Mon, 30 Oct
 2023 14:00:29 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::ad02:4c1b:1e4a:8551]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::ad02:4c1b:1e4a:8551%5]) with mapi id 15.20.6933.026; Mon, 30 Oct 2023
 14:00:29 +0000
Date: Mon, 30 Oct 2023 19:30:21 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <ZT+29QYmHMfNd+Hy@bvivekan-mobl>
References: <20231025131709.3368517-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20231025131709.3368517-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: PN3PR01CA0167.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::11) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|PH7PR11MB8010:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bfdbac0-3106-47bb-0a4e-08dbd9509275
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dO3Sn8aEKoF9GvyHw1CqtSYu9PyWRXHifFhxi0nLod7hpTEJJmsx0JvjuLPZX26WhyRylGSMKRX2Jl/XHrzA3h3JQdmfGiO+NYFzYK0KcyL7ajfwmL7HlK1drPRzXhEig9xfe13VyRIKTdo4r/8SgX23RRsivJI6y17gEYbd1cJHKBMi0weNwKOedFlfDrRTKMLwALI/S9AD31bgBTK+i+qlFCAhdMuKq23yqyo/PSHakvpl24HJJ/fC+vvb8rmmBOO6AAxI3HiqIs8voPovctJhLLAM2mns+yZMGCcUO+s2I5DA9oqntVS4CDMUp/BSFxO1KLeHB7mgc8mH0u2wiZuQ7GC4JSjUrKMOgadMJ3+ttyPvnJotc9zhVr7vueqi71iCSbrvKddNIHT0QXacKENeBJNhTsv7Af8KfvfQ2x23t8H6JcqQAsA3qo3EdDnDj1NQ6DI2D3P2QWTto5DkWCPbrGGAebbVfQMrrGMWl5oLsMuVDzzRlmBNxDDjCtjUxMLywDlwBljACd8InkJg5bicTAMgFseWO96z3rnazUXmtmqbVMejMOVW36dpNPgG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(136003)(346002)(396003)(376002)(366004)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(26005)(66556008)(38100700002)(316002)(66476007)(66946007)(5660300002)(8676002)(8936002)(53546011)(44832011)(6666004)(6506007)(9686003)(6512007)(2906002)(6486002)(4744005)(478600001)(41300700001)(33716001)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dE5jdHpKeERSQjZCSzFSWHdMcTRYTWpvVFNBU1h5eTZUR0R5Wi83MTlvNUF0?=
 =?utf-8?B?Tzh6RjkwSW5oSXh2WFpFZ0ZPTlY1eGExTzhiL2w5WXhvVmo0c2l5N3I5Q3gx?=
 =?utf-8?B?WEZUNUUwUGF6Zk1EMEV1TndoVlNzWVUvYkQxUlA3djBKNTZJeVN4dCtVWFUy?=
 =?utf-8?B?d0ZObmV5dWZwOW5DVVI4bXcwRmtMbEozZGdzc1R2TE5GcGdac0FHK2JxRWxp?=
 =?utf-8?B?cDYyWDdLTVpYNDZTRVhLc3o3WEt3YUJLZ0JNZHF2U00wTkNFdlRUMU03akhq?=
 =?utf-8?B?NDExeGtVSXZwdnhlWHgwWUdzTGhvaGlQVVNxaGJKQ24wMUhId3p5Skw0RnVV?=
 =?utf-8?B?d0F5TmlwbEJvT3dsamdrVTFlY0pTOVNVZmFOUm4zMmhHNTRQZTM4dXNQeE9k?=
 =?utf-8?B?QTlzL0p6WDVtSWRGRGdKZEwvTDdjdS9tWW9TNWc4MU1RckZVOHR3MnZyMFBK?=
 =?utf-8?B?NkZmYjZrYnE1bmx1ODBMMk1xSWp1eHlEYlMzVmZlT2FTWHJOZm1RcXpJODhM?=
 =?utf-8?B?akxvSkZJSklPT1ErMXQzeWd1a3IvR09aOCtzZnBHUmFkVUhsSVF4bDJ0YWY2?=
 =?utf-8?B?V1ppbzYyKzZIbGZMNWhZYzV3aCtmejluVW56L1NNSm5USU05dzV5K0l2TWxJ?=
 =?utf-8?B?OXRmNjdTVTRJeTduMmRzWWJOTWtKVEU0VTVHeVFtRDM5Nys3bVJ0cDhTVGZL?=
 =?utf-8?B?a1ZYUzNwQWZFTU1LcnNndnl3aVJVOG1JNWVYanJ2UFBaNTZJR01icmNJdkxY?=
 =?utf-8?B?Y1FpeTNYV3N1cGRGcTFDUzZRUWdSTk85aFVJMk5KUFBqUkkwTi9saWs2cDZZ?=
 =?utf-8?B?M0FsUm5qZDRFSGpjM1lkQ2hCcEZzSStZWnB5STAxYndqWVdWOEF3SVJPbzUz?=
 =?utf-8?B?SndZc2NRNWpnT25PeTNxenk0Qnk3NHJVM2JwUWtXQ2JxdldWUlZOUWk1K1V0?=
 =?utf-8?B?dUs1d0RCR3ZDSXpBT0pqT1UwRzRHZ1BXNTJQeGRVS0pMTXJlRjNoNzNzcmVT?=
 =?utf-8?B?VXVNVFhkNkZNRFJFcjJyRzlDS2UwWmsrcitkYmtOUEVIRG9BNklURnhwNm8w?=
 =?utf-8?B?WjlLaGoraWFUZ1NtaGVrc1EzQ0NZdnpvb3ZsNjJNc3dac1h5UEtIbW9XU2p5?=
 =?utf-8?B?M3BiNkFFRXBSeGdaNkhhcjhla3dTaTJ3WHRCUVFIOHNKWkM0QitSbFl6NDRr?=
 =?utf-8?B?bjhhSmJFNlB6V1Z1M0pNbjV1UnVwbXFHd0FXSGdXSHdxYXVxZ3BVMDhVSUpV?=
 =?utf-8?B?WlIwVTNzUWkwQWdEN1NQMW4wMm5HUDl1TGFWeWJQVVZzN2VNckg2RXFpZk5T?=
 =?utf-8?B?M0FnRzBDSllESklXcTJ2ZVVMZ0VCVmp6dllyYnd6b3lkNGo0Z3QzdnBTbDds?=
 =?utf-8?B?Z2FmZHZXaGNmdW9UWlNZYXlpWUc3MmVZWkFpUlBSRGI0dFI3WFNuZlQvTTJp?=
 =?utf-8?B?YUw1K0pqeDB0QnZKK1lsai8xYWVUNzBqQm94QTh6VjJEUFloRWlmdHIwM0xW?=
 =?utf-8?B?T1NMcnF5SGR4RGpWM0hJZFNscGZoNWJiMHFFSjNsMDlKcTJFTWt5Nk4ySks2?=
 =?utf-8?B?ckp2aGdhTElEMFoxNjIwQ1ZXVktmbXdIUHlmeFdRTUNMK3lacXlmTFVqdmQ5?=
 =?utf-8?B?UUpjUzRKdXFTN1FkOElRSTYvVXVIM2dBK0tObU9mTVZCdUFxSFFxeHhwRDRt?=
 =?utf-8?B?QjJlMGtuNytNTmM0TlU4ejBHVVcvSXRSV09JOHJFWUp3cFhnQ3NVV3laZHZH?=
 =?utf-8?B?enVIdnpsYldvTnFkZHpqSW9ETjBpNG1XbVoxZlE5QXBvZytOZ0EyTEh2YXJC?=
 =?utf-8?B?dnJUREFldkNyaVcxMXBYNVkwTzB5WWdtYnlZV2lJeXA3NEFuRFVzQWNvS1Br?=
 =?utf-8?B?UkVWSlBsRytic2lyVGhzQVg4QjU4YSt5bHlBMnZiZFJWRFh5NDUrRTZ6OEQz?=
 =?utf-8?B?bGlnb1dxUldySWNPR0IxL3lqSmVHYXZDMko3d1hPL2FXUERJdk56NGNXTmYr?=
 =?utf-8?B?VENEQksvVlU4b01XUXZvWVhGNzRnS0lDbU9GdDFVbzUyWkpJbWl6R3JnS01D?=
 =?utf-8?B?R0lwREl5RWNmMC9hbmNqRzFQRklDWit6a2lHdmtaQ1I0TDVReno5NGFac1Yv?=
 =?utf-8?B?T09PdDFXS0VzT0YrZGhncTR1YXlHbnk4SFR4b3VHYlJPZTFVTkptV3U3S0Nh?=
 =?utf-8?Q?SGAvpGHc5kfyY1d7WcuP72E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bfdbac0-3106-47bb-0a4e-08dbd9509275
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2023 14:00:28.7642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c6EQSfijDWnnwcjabbj5sW9OA4cYJlWopPrk2Uuqkkx2XPRckSf+2PttHhAcXrZiu2+XppPA/VqlCnhksAWrBX461I0N7jsuREBGYNmdqfS5U3e8cw9Fmp4O8/nXSNkN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8010
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add Wa_22016670082
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

On 25.10.2023 18:47, Dnyaneshwar Bhadane wrote:
> Implemented workaround for XeLPM+
> BSpec: 51762
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Regards,
Bala

> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 192ac0e59afa..6ae7a4de83b0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1674,6 +1674,9 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	 */
>  	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
>  
> +	/* Wa_22016670082 */
> +	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> +
>  	debug_dump_steering(gt);
>  }
>  
> -- 
> 2.34.1
> 
