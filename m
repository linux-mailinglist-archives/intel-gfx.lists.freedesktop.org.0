Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64662644BED
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 19:39:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5646810E342;
	Tue,  6 Dec 2022 18:39:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B162510E345
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 18:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670351972; x=1701887972;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Jdy+rem4VbPsN2yPKcfbfpPU/9d2IlQs3Tmw+wm+ZQ8=;
 b=J5aOfYhb+JpAyKzWujo9Ps+cX2i+hBLYdy1lp9hmaV8RR/YB/FqCnbOU
 tbHZRKiGdl/OOdMPY/xLp1Oqp4ery+VanSyg++SGtyIfRyZ8jsukkR2dt
 IrFgMR6lwJ0RcSmEEUFlewDfhUqQou57IG2dfXMcZVVvycTAquiE+RgKG
 cEmUvsmnZp1P5HEq/KHwNovYPTEIqOjgJsW6sOUF4xqpfOAUzdioLt7/+
 g8wPt6lE2VUINSHZXPKhGVYeuUZLAkx6pvB5ddZeotA8a5j8wKotll7Vh
 KOp1O3HjVrUAMXRtB1XpvmazcnRx93Bg1KLcat4VITF2UI6P77PNHglEY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="318555206"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="318555206"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 10:39:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="735104805"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="735104805"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Dec 2022 10:39:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 10:39:29 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 10:39:29 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 10:39:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PLEPlcx7WspJiuZwCdDt5L6jqEQfAflFwSg7HPVpciNJg7/tAgF1grir7tqwKicmolC4dLvZZWhYZwP7VLJ3uBZILge92qks8i+rUUZiWu2Z1+URO620rmh6fFviMRc+LUORiBmQQGDBt4H5secMD6rAEzMZf1Slcf+yeT9mxHLF4TzDGCA2aL39f07zYtkf6PwSk4EgWp1qczfgD0Jm7AkOB9+nDkDKWiNlgbvdn0BPQFrpT3XSRJeh0vqOMm9PSfDxihuutN9taVbbm/rSIDXwbj0fpl9Dk/M7YkdVcQVrU8VsnRqtUwG/uRIwN96ox+DkZfstlybAt8VpUIUdlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Wc9OFFXdc1WtBVAuO055Jpq3WlxxV6XjcWNuPMdAHk=;
 b=jLGXw2+/m69Bu2w6EJL37d4/u/wLR+5N/OPr9XrbGQD1zMpwZWA1UZDvRERtAfnspZEqTgEyIz4jRz3cmSO+n9EcKeIFaI8rNQbuZlujaZBRqM2PuwEvbAOXef7FCNIfnXySZXRqqvcHJi44MEkAcamcIwb/CHZ8sKMKUC7VXPjFiQY9mf3/npfiNyxF93ZjxZ5OYELLuqtGWRXyil9bchQ3vF+L9NwxhE2YqMOObZrpVngqDB9gMTSwX1tFsVh1PjoR8wFPj+HkPNSrShTzz0iQybj9EXw+HXtuz4W2iqsaBuce4qU1f9cY1l33hazYFtMRnTti1xCPOkpqMFBGBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB5879.namprd11.prod.outlook.com (2603:10b6:510:142::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Tue, 6 Dec
 2022 18:39:28 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5880.013; Tue, 6 Dec 2022
 18:39:27 +0000
Date: Tue, 6 Dec 2022 10:39:25 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
Message-ID: <20221206183925.72d6f7a2tqpe73nx@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <9f5e6b3a-5e03-a1fc-c9f7-16545b61658d@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <9f5e6b3a-5e03-a1fc-c9f7-16545b61658d@intel.com>
X-ClientProxiedBy: SJ0PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB5879:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bb65be9-01a2-49ab-3fb6-08dad7b93497
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XhJa9JGbj8OPLZsH+PNTBromDypNAjOsr4lDJ7TUMDzWXIK0tRELc/kxW8+kuobD+oAG94MM1jnTOYzL1VLCPgleeWtyR619qbQmz5KLEujCg1+YCW40GFqKQAzIurg+cc+hCWTbuSmn8TXcy4IjvxLAs3Ch6lR1KfGQpQyIcthHOjtFkMPa65SFp19qhD5Mk0gvAkacepPxGnStIRsX60AORgiFZYxXBK9B1F3ZGCYycy5CUTPNWRlNsYldU6dt9K9DAzfM8bZm8vqXomR+r5YmCOdz9d2DPig7NPB2IwPAO2lby2PrM7cQ8MiFts5crHLBh1XMVWhsxHjjz73L+Gc6O0EjLE+aXogZsDNrxi00sUTxE+M/M53DJuy5M2pxRTMoyR4GzdNXjAoq+xxTzEmmO4awl0+x+YGn6YLRNzqCU7QAsMmgYtEnrOD5PEWARLnybOMu+G/y5hSkmmbkeI9klCiCh1zY0FRY2Mfd39+Ls8M9a3Kw0B3Tc1EKf2v3kUlgMun5ItMlR6VvYIwsL/HJKfp7drNJxG4qXkX6JbB2sFVAo/EF08lBK0dUN4COVfNLHuW6Evb/WKURpUpPyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(376002)(396003)(39860400002)(346002)(451199015)(26005)(186003)(6506007)(83380400001)(1076003)(6636002)(82960400001)(41300700001)(38100700002)(6486002)(8676002)(66556008)(4326008)(86362001)(66476007)(8936002)(6862004)(966005)(316002)(478600001)(5660300002)(9686003)(66946007)(6512007)(36756003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k0zi6XSOQwLhNPy7lymnYevMeKOjvlp2zsfs5R5wqUlsGtFlFqDzKyxBcKDA?=
 =?us-ascii?Q?43V6Oq4f8ZrOhqyPSb/+wFkXH498wPOfQ1Mp7GWf0qzApIyXMlZfhKEFXu0s?=
 =?us-ascii?Q?mikOVhVtT2tZioH4GwW5NoaM+bkRMRVuYJXsLAvvDIh0DLzppuCB2L6FawJl?=
 =?us-ascii?Q?BLxrbL4/NblfysgRcc2yBbPqfRwcEFNWkLAL9LphKP3fu2wBAhpS2I1ob0jE?=
 =?us-ascii?Q?+g5PuAQoFj045IOGwfUFUHJjjsRJqWB+4LarMdtIgJQpzKIGvk/QVapRXLkt?=
 =?us-ascii?Q?dyV5VBlR7/J+cUEzPUJQSAlnJHDLVm/fiWidQrLk2R5uRudBnx5cVKeASjy+?=
 =?us-ascii?Q?yxNxyZb7jb65w3LdMCDe37x21D7enLABbeJy9LYaFwfxkgFxhJkrFLyXGo8m?=
 =?us-ascii?Q?Vk6lGnL/WHMJqwerIFaO24O0XxUbGraLmOOe4XsUaJWLgqud5WFHNPZSmYFM?=
 =?us-ascii?Q?DxqNbRlZUH6rO/sgfkfVl910+KDgp0knP+a+vJjJnLQ8Y/P9DucDbbIgYutH?=
 =?us-ascii?Q?fQz3tvifbHhrWnzyBJhfkiSTlNNKhoJYJrdg8dYXcLYhZHbXOV04oorG61Wo?=
 =?us-ascii?Q?kvXjNZ7UGsQFEaE2/Ilqx1hv3cINw5yRh4lUx1qHDvgAddyc137T71Halvic?=
 =?us-ascii?Q?hFNpFmfY+hxoWJwddddMeXDQlWuiiwCiSF+dUdXbXw8GQBxmhgulq0XPXSx0?=
 =?us-ascii?Q?1PCiGGFtm69iN+dv+bEucIk9kS6Rx/CUY6enlnGX0zja7zlwGL4K06nOyCzK?=
 =?us-ascii?Q?OqBno76vfCHal8X2aE6pZVUWv/JRq7LKmVLwlRaVFlQXAe/r/2lNfo9VmU2c?=
 =?us-ascii?Q?THG8qqv5mflyixyUMaaZ3M9zDxh64Pxmrjue2pEc7bsuT4uNdZ5/c75E84kQ?=
 =?us-ascii?Q?jcyF3qZkJ0m+E8kXeW2aEoW80/dssY0D5o5HRfhRUfZSAXo3+vaJ7w+RNCLU?=
 =?us-ascii?Q?DA5Ups+hVDdfH5YGYjvdCb0C0WF/ArBWwIxwNaUIi+dKTCl1IK+7V0D7dUxv?=
 =?us-ascii?Q?KFS9t4fEEY1159voyaZ8YNHWm7xnhMjWffuAOYuyw4e34CkSKtzepfDM1UgY?=
 =?us-ascii?Q?VfXkykAxskeDcGVLFPXC9kBiM+7ouQEdScThSdSje3G+tVhk+snU/L8o/UlI?=
 =?us-ascii?Q?Zqsmqan7KUGFgmRIZbJw9DX1XtzxX1tR05IPgoLvpNU2eG+6x4GDHqNWUeC7?=
 =?us-ascii?Q?Q1U5H06k/uxy8pNMJk0RjBXPRPNoLUXLOP7tuT4k6MPPhMI5knpD0p253BPH?=
 =?us-ascii?Q?cSAGjAKQGgL/ymPcW6Go3jlyZRo0Nn7ChoHG2qKiA4SAuM5YQJ7aEcEkgpYT?=
 =?us-ascii?Q?oMJit3/tl33UQJ4oVFn70JcdIl3U405bcvmSyftmemvJTDPvWSRdJeK7nxBz?=
 =?us-ascii?Q?l7UHIjsc1wAHifKjNSZBBqWCqHG8W4yD0s/c7p2RdSY1MN/JMKr7Z8f50BQt?=
 =?us-ascii?Q?ZVJ8hBMOnPW+feYX7pTAhifx0i71reeZkITanl/p03i/p7U4xu6pvpkfIDN6?=
 =?us-ascii?Q?MCSWw2dVPp/wvQCm0NcC/gCoT9azRN5Y2qBbddu35b1yT5NaUMGdBT1mcMbe?=
 =?us-ascii?Q?0A3Ju5yApk/tXhazBi0svrGZOUcXqRHLL8cN+gU7NvQ5ocsjJuaSV15VvDkS?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bb65be9-01a2-49ab-3fb6-08dad7b93497
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 18:39:27.9313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VW6C4dbeG8jRZyDXttQmGwfoZq/Lm9KMWTP7xTCaKAIiIVoC6TAmr1P+izeqUALrL9p+Sse7WdO3KoVWM0oQs2L29jl9hYDEamUstIemtxE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5879
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Define MOCS and PAT
 tables for MTL
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 06, 2022 at 01:38:53PM +0530, Iddamsetty, Aravind wrote:
>please ignore this series will be sending a new one. some how patchwork
>didn't pick up this neatly.

Patchwork makes a mess if you do --in-reply-to like you are doing.
As it is now, it's pretty hard to follow the version of each patch
and patchwork thinks this is on rev8 (it ups a rev for each patch
received and tries to apply each one individually)
https://patchwork.freedesktop.org/series/111390/#rev8

if a patch arrives out of order, which is certainly possible, it won't
be able to reconstruct the entire series.

Corollary:

Just make sure you have a cover letter in your series - it's anyway a
good practice to give an overview of what you're doing in the series as
a whole. And don't use --in-reply-to: patchwork will group as new revs
of the same series by subject.

Lucas De Marchi

>
>Thanks,
>Aravind.
>
>On 06-12-2022 13:07, Aravind Iddamsetty wrote:
>> From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
>>
>> On MTL due to the introduction of L4 cache, coherency and cacheability
>> selections are different and also GT can no longer allocate on LLC. The
>> MOCS/PAT tables needs an update.
>>
>> BSpec: 44509, 45101, 44235
>>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_gtt.c     | 23 +++++++-
>>  drivers/gpu/drm/i915/gt/intel_gtt.h     |  9 +++
>>  drivers/gpu/drm/i915/gt/intel_mocs.c    | 76 +++++++++++++++++++++++--
>>  drivers/gpu/drm/i915/gt/selftest_mocs.c |  2 +-
>>  drivers/gpu/drm/i915/i915_pci.c         |  1 +
>>  5 files changed, 105 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
>> index e37164a60d37..428849248c34 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
>> @@ -467,6 +467,25 @@ void gtt_write_workarounds(struct intel_gt *gt)
>>  	}
>>  }
>>
>> +static void mtl_setup_private_ppat(struct intel_uncore *uncore)
>> +{
>> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(0),
>> +			   MTL_PPAT_L4_0_WB);
>> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(1),
>> +			   MTL_PPAT_L4_1_WT | MTL_2_COH_1W);
>> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(2),
>> +			   MTL_PPAT_L4_3_UC | MTL_2_COH_1W);
>> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(3),
>> +			   MTL_PPAT_L4_0_WB | MTL_2_COH_1W);
>> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(4),
>> +			   MTL_PPAT_L4_0_WB | MTL_3_COH_2W);
>> +
>> +	/*
>> +	 * Remaining PAT entries are left at the hardware-default
>> +	 * fully-cached setting
>> +	 */
>> +}
>> +
>>  static void tgl_setup_private_ppat(struct intel_uncore *uncore)
>>  {
>>  	/* TGL doesn't support LLC or AGE settings */
>> @@ -602,7 +621,9 @@ void setup_private_pat(struct intel_gt *gt)
>>
>>  	GEM_BUG_ON(GRAPHICS_VER(i915) < 8);
>>
>> -	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>> +	if (IS_METEORLAKE(i915))
>> +		mtl_setup_private_ppat(uncore);
>> +	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>>  		xehp_setup_private_ppat(gt);
>>  	else if (GRAPHICS_VER(i915) >= 12)
>>  		tgl_setup_private_ppat(uncore);
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> index d1900fec6cd1..8a3e0a6793dd 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -147,6 +147,15 @@ typedef u64 gen8_pte_t;
>>  #define GEN8_PDE_IPS_64K BIT(11)
>>  #define GEN8_PDE_PS_2M   BIT(7)
>>
>> +#define MTL_PPAT_L4_CACHE_POLICY_MASK	REG_GENMASK(3, 2)
>> +#define MTL_PAT_INDEX_COH_MODE_MASK	REG_GENMASK(1, 0)
>> +#define MTL_PPAT_L4_3_UC	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 3)
>> +#define MTL_PPAT_L4_1_WT	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 1)
>> +#define MTL_PPAT_L4_0_WB	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 0)
>> +#define MTL_3_COH_2W	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 3)
>> +#define MTL_2_COH_1W	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 2)
>> +#define MTL_0_COH_NON	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 0)
>> +
>>  enum i915_cache_level;
>>
>>  struct drm_i915_gem_object;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
>> index 69b489e8dfed..89570f137b2c 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>> @@ -40,6 +40,10 @@ struct drm_i915_mocs_table {
>>  #define LE_COS(value)		((value) << 15)
>>  #define LE_SSE(value)		((value) << 17)
>>
>> +/* Defines for the tables (GLOB_MOCS_0 - GLOB_MOCS_16) */
>> +#define _L4_CACHEABILITY(value)	((value) << 2)
>> +#define IG_PAT(value)		((value) << 8)
>> +
>>  /* Defines for the tables (LNCFMOCS0 - LNCFMOCS31) - two entries per word */
>>  #define L3_ESC(value)		((value) << 0)
>>  #define L3_SCC(value)		((value) << 1)
>> @@ -50,6 +54,7 @@ struct drm_i915_mocs_table {
>>  /* Helper defines */
>>  #define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
>>  #define PVC_NUM_MOCS_ENTRIES	3
>> +#define MTL_NUM_MOCS_ENTRIES	16
>>
>>  /* (e)LLC caching options */
>>  /*
>> @@ -73,6 +78,12 @@ struct drm_i915_mocs_table {
>>  #define L3_2_RESERVED		_L3_CACHEABILITY(2)
>>  #define L3_3_WB			_L3_CACHEABILITY(3)
>>
>> +/* L4 caching options */
>> +#define L4_0_WB			_L4_CACHEABILITY(0)
>> +#define L4_1_WT			_L4_CACHEABILITY(1)
>> +#define L4_2_RESERVED		_L4_CACHEABILITY(2)
>> +#define L4_3_UC			_L4_CACHEABILITY(3)
>> +
>>  #define MOCS_ENTRY(__idx, __control_value, __l3cc_value) \
>>  	[__idx] = { \
>>  		.control_value = __control_value, \
>> @@ -416,6 +427,57 @@ static const struct drm_i915_mocs_entry pvc_mocs_table[] = {
>>  	MOCS_ENTRY(2, 0, L3_3_WB),
>>  };
>>
>> +static const struct drm_i915_mocs_entry mtl_mocs_table[] = {
>> +	/* Error - Reserved for Non-Use */
>> +	MOCS_ENTRY(0,
>> +		   IG_PAT(0),
>> +		   L3_LKUP(1) | L3_3_WB),
>> +	/* Cached - L3 + L4 */
>> +	MOCS_ENTRY(1,
>> +		   IG_PAT(1),
>> +		   L3_LKUP(1) | L3_3_WB),
>> +	/* L4 - GO:L3 */
>> +	MOCS_ENTRY(2,
>> +		   IG_PAT(1),
>> +		   L3_LKUP(1) | L3_1_UC),
>> +	/* Uncached - GO:L3 */
>> +	MOCS_ENTRY(3,
>> +		   IG_PAT(1) | L4_3_UC,
>> +		   L3_LKUP(1) | L3_1_UC),
>> +	/* L4 - GO:Mem */
>> +	MOCS_ENTRY(4,
>> +		   IG_PAT(1),
>> +		   L3_LKUP(1) | L3_GLBGO(1) | L3_1_UC),
>> +	/* Uncached - GO:Mem */
>> +	MOCS_ENTRY(5,
>> +		   IG_PAT(1) | L4_3_UC,
>> +		   L3_LKUP(1) | L3_GLBGO(1) | L3_1_UC),
>> +	/* L4 - L3:NoLKUP; GO:L3 */
>> +	MOCS_ENTRY(6,
>> +		   IG_PAT(1),
>> +		   L3_1_UC),
>> +	/* Uncached - L3:NoLKUP; GO:L3 */
>> +	MOCS_ENTRY(7,
>> +		   IG_PAT(1) | L4_3_UC,
>> +		   L3_1_UC),
>> +	/* L4 - L3:NoLKUP; GO:Mem */
>> +	MOCS_ENTRY(8,
>> +		   IG_PAT(1),
>> +		   L3_GLBGO(1) | L3_1_UC),
>> +	/* Uncached - L3:NoLKUP; GO:Mem */
>> +	MOCS_ENTRY(9,
>> +		   IG_PAT(1) | L4_3_UC,
>> +		   L3_GLBGO(1) | L3_1_UC),
>> +	/* Display - L3; L4:WT */
>> +	MOCS_ENTRY(14,
>> +		   IG_PAT(1) | L4_1_WT,
>> +		   L3_LKUP(1) | L3_3_WB),
>> +	/* CCS - Non-Displayable */
>> +	MOCS_ENTRY(15,
>> +		   IG_PAT(1),
>> +		   L3_GLBGO(1) | L3_1_UC),
>> +};
>> +
>>  enum {
>>  	HAS_GLOBAL_MOCS = BIT(0),
>>  	HAS_ENGINE_MOCS = BIT(1),
>> @@ -445,7 +507,13 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>>  	memset(table, 0, sizeof(struct drm_i915_mocs_table));
>>
>>  	table->unused_entries_index = I915_MOCS_PTE;
>> -	if (IS_PONTEVECCHIO(i915)) {
>> +	if (IS_METEORLAKE(i915)) {
>> +		table->size = ARRAY_SIZE(mtl_mocs_table);
>> +		table->table = mtl_mocs_table;
>> +		table->n_entries = MTL_NUM_MOCS_ENTRIES;
>> +		table->uc_index = 9;
>> +		table->unused_entries_index = 1;
>> +	} else if (IS_PONTEVECCHIO(i915)) {
>>  		table->size = ARRAY_SIZE(pvc_mocs_table);
>>  		table->table = pvc_mocs_table;
>>  		table->n_entries = PVC_NUM_MOCS_ENTRIES;
>> @@ -646,9 +714,9 @@ void intel_mocs_init_engine(struct intel_engine_cs *engine)
>>  		init_l3cc_table(engine->gt, &table);
>>  }
>>
>> -static u32 global_mocs_offset(void)
>> +static u32 global_mocs_offset(struct intel_gt *gt)
>>  {
>> -	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
>> +	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0)) + gt->uncore->gsi_offset;
>>  }
>>
>>  void intel_set_mocs_index(struct intel_gt *gt)
>> @@ -671,7 +739,7 @@ void intel_mocs_init(struct intel_gt *gt)
>>  	 */
>>  	flags = get_mocs_settings(gt->i915, &table);
>>  	if (flags & HAS_GLOBAL_MOCS)
>> -		__init_mocs_table(gt->uncore, &table, global_mocs_offset());
>> +		__init_mocs_table(gt->uncore, &table, global_mocs_offset(gt));
>>
>>  	/*
>>  	 * Initialize the L3CC table as part of mocs initalization to make
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
>> index f27cc28608d4..66b3c6fcf1f1 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
>> @@ -137,7 +137,7 @@ static int read_mocs_table(struct i915_request *rq,
>>  		return 0;
>>
>>  	if (HAS_GLOBAL_MOCS_REGISTERS(rq->engine->i915))
>> -		addr = global_mocs_offset();
>> +		addr = global_mocs_offset(rq->engine->gt);
>>  	else
>>  		addr = mocs_offset(rq->engine);
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>> index 414b4bfd514b..8e872cb89169 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -1147,6 +1147,7 @@ static const struct intel_device_info mtl_info = {
>>  	.has_flat_ccs = 0,
>>  	.has_gmd_id = 1,
>>  	.has_guc_deprivilege = 1,
>> +	.has_llc = 0,
>>  	.has_mslice_steering = 0,
>>  	.has_snoop = 1,
>>  	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
