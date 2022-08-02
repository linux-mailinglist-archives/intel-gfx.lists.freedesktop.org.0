Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7583D587E9F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 17:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFECA2B8E7;
	Tue,  2 Aug 2022 15:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE6A110E0F4
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 15:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659452966; x=1690988966;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=26ESWuRKJN2vIj1+OqDgfMOkDL6EvS17zplgwPJcvyY=;
 b=eLOEn39A1JnvzVKABEP+4Cn3xWh8JYTDeMC5P3VVr/CD4CsLhIVgov/b
 hnxU9Fk4GvvVOBh4vp2SjtjImP7RGr9aa527PIr7d01945rUxWePOr3Un
 LLgbpzwgK/9pFWocOS8+vQ4fAgDqKNmT6HEWBqAToJzVWrvzYBNUVJLAj
 mHVMhhwsUwIUz/KN9oOktqvwdjzqVU7ULWXg4HM19OdCNRoBtD/5+Owdm
 KjUJtAZgZKqYxM8s6+1uVXw5+JwlFNkSQPiXykHuMb4aZTkEY+AoLYmZN
 HfsyTig2HF9sskiJwTURJh5IpT8lRyfKLlWZb7wLAO9rb9NJof5mNVMqd g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="375732197"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="375732197"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:09:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="705404569"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2022 08:09:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 08:09:21 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 08:09:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 08:09:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 08:09:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BNMgRY8c3hqEGPvvChBaKzWVOfRhxfOtX32tK+lJMxI0yqtcrclRPEot7JvUQciNf0THSoyHW/dNR2GhxRxE9NzMkd11HQo04EESu0iuNKGeoCXXLkD9SO8xPrrOkxG/qEnBljzXRnm6AslHwmorfIxz/jnB4GcUsn+os0+dftW7PnUlRJjTmhO43kxP+b0eqjge+PhqNCXI+nOMsTthkmp9qPQfy79B8vEjxAdTkBs4oDGj+c0ZZUx3CuGZ5d1QmzRPp+RRHeJF+UXOg6ZqkcOvDCzQrgrGuPfO6yPdwFJOUDCM2d2kl2EoRdghC/FSNtKR0g8DC6F3uXFCoOwAWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AWX3Ucc991FVI2uFWmWTiki7E7e43KGf6ujWDlKQdvY=;
 b=BaJ1qc21iW4oc2uUORxntosNVhWFvOiA14ThNVjjbgzFnDtsih+IwE1M/jan4HeIo0bfRHmwWb5ft5qYYb4NY0munBgbNKCMyZzgNIvebzbXYigu36FlD1U1lwR1QxbYeJ96M2d89tnqn3wcWzz9Ug7RIAKvj9p1eaWlCnssrswhSpAzrYT83W+HS1l0vFDL3YKRmePlcO6jcGNfS/3yxLm7WBD+UHI8KFc/rEEx0fc3b0jcbUXdaRaIOR5o0jV8FwlPy9YjQ9KRoAdYctfTeV++62IZFP3u5/pfjIZ9nLawitgBE8mLraD9mfm8+vfAm7euNc1zrT97OUtbvxlC3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MN2PR11MB4552.namprd11.prod.outlook.com (2603:10b6:208:263::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Tue, 2 Aug
 2022 15:09:19 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 15:09:19 +0000
Date: Tue, 2 Aug 2022 08:09:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Harish Chegondi <harish.chegondi@intel.com>
Message-ID: <Yuk+HDLHmTnsmoUD@mdroper-desk1.amr.corp.intel.com>
References: <20220801213839.8549-1-harish.chegondi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220801213839.8549-1-harish.chegondi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0341.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::16) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 147a513f-b636-493c-71a3-08da7498f90b
X-MS-TrafficTypeDiagnostic: MN2PR11MB4552:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4uJ4LGAu2UqsoPpe/0hnu8cCbW5GgFKqj2e/3J4AeW1hrh6QecUi3Ahc4Jh4egiFIHCWzHen6LwmSNW2Cn2SqEMB7EgzPQmIBixxer5pu2vY8RVuPGQoDht3SOIbgvaPB7uiCWiHNNWCb9iJUeaw5Be/RXswI3yV/YFI8kyoqbXx1u6TddX0esCHusQ629ryduLGOvlpoTQWCWOCqJ/muYlZMSp6nkjd1Cs5r6cGVrqS56g8rvnQWRSKRYKYh/zczYMarxoM3+IUxxC1fALrnjmQ8L/JKaAjemb+bVCNVVhtAEcdPtrwmOKGiBfN4HUiOqNCwZioL/g81fiEwberpGzQ/04Ft6Nvs5DeFt/VK8lgHqYmkkrlGQARXczLKrDtZOBA2WTXATJVtiam7PCZukU8NNocInilOBo0rfoTbChs50jnqTqlWQBj0nsgsb2FcOpkOA5h5LhkzjD1OkbsyWOpArYjZ5PgEC5sIYqh248x/tCmGWPy4MedRX5/8RGKW+zXenS6T0UYtoa4JaEm/CWJ6zKEvSlDLCrG/cjItRr6OwYRP/lWdh3cSFqohLADAGicD3Aip2czZkeOqkanRFgWrIJ7N2+Wjlzk5Vi7INHeb1PRZ1SJkXr0T1vnwI+WGJIq4NhQN+9TqPeTbiQ8nBxbfGpPGk62MrtNkIlpu81RK6S5xNzvl/18ATNVSWHlV1ndh2r77j09uQGRPG8fGJ/j/A2VwR+CkKrgpkASHfP+lDmfRNkxcuNqNm0SyUxRYvT3se2t15yBWLkKgNFHKFZkN2/6qrCaFieswflGs/E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(136003)(39860400002)(376002)(346002)(6666004)(6506007)(6636002)(2906002)(316002)(5660300002)(66946007)(66476007)(66556008)(86362001)(82960400001)(8676002)(4326008)(6862004)(8936002)(41300700001)(38100700002)(478600001)(6486002)(186003)(26005)(6512007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4FjQDrkXo5cJ9Vsya7y8sfrGMjVNq1R9Vj3rFVHVZCKO6fhxIESKr7JiObiB?=
 =?us-ascii?Q?iAxtHrs4eJ7dCUD7HJ9c7tSa7OK0dfEdgqKqVmjgop8bYZ4LKWQGfHgFHWTK?=
 =?us-ascii?Q?CSuM/CVUmiPafonP8Re5G9TebIi5etX23buzjClq4b2Db8aOWNAXnnwKl/9R?=
 =?us-ascii?Q?kBY33phmklDTqta90ZCMph5b8g2/B9qUIAA+9VIE2McjN/VCY9WWDW3kGiGu?=
 =?us-ascii?Q?FIhDyXN2NrdFzfhn0dfTawW0UIRrt66R0jlP3v1v8PY4COJTxDMH1n4Di23d?=
 =?us-ascii?Q?G1pljzvic9Tt+7XezcNb7y0Jb8F6lAKtBaz6UVVk6YLL/4sKmJRrIR4vVzYl?=
 =?us-ascii?Q?7Pn8WStYipftMJN17KT0LwfvT6KcIujTa9j2U4RP/jjA0vSiLBI2AuzQuVgS?=
 =?us-ascii?Q?61hga9HHnX/S+EsUilzFocm6TszbuI6sTqzXpZOS1SeQA1n0Qprs6rppH/nB?=
 =?us-ascii?Q?ymqVuJpb86HbwCFX3JvZqKynyMJC8Ek9rxAs0Q3q7wG31EUvD3ZekeNXN+d+?=
 =?us-ascii?Q?Kut77meRib9QCYqfHiu/3S82QCwhU282ouFKfCuZ/s8+r3BaaaQYsi+RXcqN?=
 =?us-ascii?Q?NaQR7qmb6GhC/QNw4kVkfbt0SZwFmjeQeJIivdwSRPxIKrqKo7I/t7Nk8Yti?=
 =?us-ascii?Q?rX9XvuHje/CXiGl/2djb8b3myZEOG6OYUG0YX+jq/NPpRIM0rT0s+6RaPALK?=
 =?us-ascii?Q?q8ohbpWTmlZ0jh8hWbwdG8LpwJjVYbdWQSMNVd9mdOtM5qADCT3xqsKUVSb2?=
 =?us-ascii?Q?AiewSw1iozwmFLiLMoov1Wg/ptkMW17MLBsmcVazgLkKesOUJJHofC13wG2h?=
 =?us-ascii?Q?ftGMN32lwMaHF76+MPKBfot7OUuTs1mWrtUzqllzNZwGeCFddx+EantYZx4v?=
 =?us-ascii?Q?PVkoc1rHCJeBzi84U5UQL9kX2IE98inQWyKsVIleTYaMFjTNymZrwnceJ9fg?=
 =?us-ascii?Q?RIzrwjV1rb+6Zt7AKoweeMJ3VCKrp9Q9SBd0EkRZ7fCLJSWjrbtIwBxtKKtL?=
 =?us-ascii?Q?cR9J58euahblszc9WbnWuC+4IgKzMsXXybb5IqBzFNvlXJvAuLQlvx4wGBqh?=
 =?us-ascii?Q?/f+3IlmCG6ko37rIdzrYzkVLkAcMv+ruQoX1QkoXqrMT1Dbu9zdA52GVmk1k?=
 =?us-ascii?Q?eaEkQXaAqRgWrjqihGryp1HzRIw1pIP+Lz95D6wdKF0FMCm0M9HSIZcxy+00?=
 =?us-ascii?Q?QZVDpBcxx5tAi1gOUIsvzRgcW1wHc8cT0MNlFYe8fXz2OthB4kgTB8/IO97C?=
 =?us-ascii?Q?CZaC3JfEZOAKy7q3Mn0lVI1cvZwgHCjmw1Eh+k9aBbyjZBeeYdyRUcWGOOSg?=
 =?us-ascii?Q?eA28x2udBsuReMMQsahs0CFMWKu2kNEHh10n+z07OG72huwo4ar/4PgNmmP6?=
 =?us-ascii?Q?89a3MpSyEv1iMxWZA+3aXHzooBLJdpQ3/GhnI+ZpnZVZOf97HK802AWfRbDz?=
 =?us-ascii?Q?xVnvtMMsvFj/IGNEVgUU5NrATyObNbw+WO/HSl4lI+DI/Mli13rUNqtjZSmZ?=
 =?us-ascii?Q?3rIHXxR33Zh4sckvALoyYUwFcmCoO2P2HrfzKXPq2veZSYtcurByn+BDivpe?=
 =?us-ascii?Q?ILIxJ+RgDXT/Zyf/IKwQ3dmpRIQxwoctRq6knm2giuQ29ZQs8DrxAN/eSTRl?=
 =?us-ascii?Q?Fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 147a513f-b636-493c-71a3-08da7498f90b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 15:09:19.0036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ViNc9usPtWGLQZBDx5K8D5jHbw7K7c5YzyKR26tD4ID5xTJV4D6MTrUy1ZZZ/r6ji0JwKx7+t7v4nLit6T2/xc98pL3L9UMYVnJfsYfKMiE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4552
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add Wa_1509727124
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

On Mon, Aug 01, 2022 at 02:38:39PM -0700, Harish Chegondi wrote:
> Bspec: 46052
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 60d6eb5f245b..b3b49f6d6d1c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1078,6 +1078,7 @@
>  
>  #define GEN10_SAMPLER_MODE			_MMIO(0xe18c)
>  #define   ENABLE_SMALLPL			REG_BIT(15)
> +#define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
>  
>  #define GEN9_HALF_SLICE_CHICKEN7		_MMIO(0xe194)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e8111fce56d0..59cf28baa472 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2119,6 +2119,13 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
>  	}
>  
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> +		/* Wa_1509727124:dg2 */
> +		wa_masked_en(wal, GEN10_SAMPLER_MODE,
> +			     SC_DISABLE_POWER_OPTIMIZATION_EBB);
> +	}
> +
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
>  	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
>  		/* Wa_14012419201:dg2 */
> -- 
> 2.37.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
