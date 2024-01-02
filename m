Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8EA8220CD
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jan 2024 19:12:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BBED10E0E7;
	Tue,  2 Jan 2024 18:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5461110E0E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jan 2024 18:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704219168; x=1735755168;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jidtGbQmr585cJgPNwEXdxkAJKBxqvuFla1KycyxcWc=;
 b=TidqUIzUnw/37Sqbd0yHb41cXC3Me0Ys1W0D1LvIrGa5PAb4XkL4jq2T
 FBrnovM3t5n2/PAG9j4ZNCUIimkFAf59fr77S0XCO9hADrVBzqJX1swme
 0lUdlhcZT33YIwj1i12Yk66K0nD0ELkz4gmn17AG+R48fz1dDEZFPKoMg
 zqJOeCkOaDBblv3UT1sWZE17Zpr9HFK+QH43wKrqKgWINY/agrnFrtTEk
 XYyGYVH8pkguhfQvupBMZT3mbwzS4ASZjxPXD+O9KMrl9/DHb4btXmecB
 KqAMdgWUPVTH6TEir6y+74ZunLz0Ay2uAZCHDQGs3EUPTQfLHrlQjssOC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="3980943"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; 
   d="scan'208";a="3980943"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 10:12:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="21855478"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jan 2024 10:12:43 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Jan 2024 10:12:42 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Jan 2024 10:12:42 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Jan 2024 10:12:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A2EyE5gu3fLnXYCQAqJhx67Vtgr2KYIeUyra4SDKU9AoBnMKg8l7FgoQjvPlCPWWHcLxttcRneLV2Yio5zxnDmoCvJITv0ddbFfJGtxa+kgjBeIvsxkMb5Y4dvznX7NkMg91Fj9yC5obfTegMFHyIN2DmvsJHohbVU4a5Ekm/YM4UjA2ni7kxUPJ3ZOKXy8kkj4aQVs2piL9jGqv/iwKK12ay00xMjDP4SLohGQ/klDBt4/wtgchscqKULzNr9ZvxrZOMN+/P7MVicpPGjdY6U0ecRqAMO4w+KVAGzIfRGBc9dt2XpDk0yP8Kn/3X/TLolmLL78VGMzuObXJ3d8uKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RCZToiUvj7cfvvp5WfL47fqkC6J0b9gHGNQ6BVDOfr8=;
 b=C0VUQ1iBauO5gBhr/vpA0fIcGa3x5d7yjJQ02Lur+tOxr4S6jK4cKIJf8E/VZUKLN/vE/eTXU6Gb1JjVNhKsF9DoiWNEwAGlg1HvNPJfFy9fyc68tSfBcyVq6hr/zH0jpqk3vTiUVDtdOQ0JdwGEAjbGJpykVMM795yRMm4z1kvQ5n0yV9vjo6EybmsAuEw9Ai/30ZN2VOIMEznahnBH0fEOZqvqMymK6KQGhYYO9dPoIq2NbZxrdLLK8+gv8V9xWXMhzKFjIdevxhO/Uu/3sGkhDzH8EzrFOdwWjoHrySqifAYR2h/FrX55EdQf0hrPycyw8dRzXjyONSbMS3WD4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB7697.namprd11.prod.outlook.com (2603:10b6:806:33a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Tue, 2 Jan
 2024 18:12:40 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7135.023; Tue, 2 Jan 2024
 18:12:40 +0000
Date: Tue, 2 Jan 2024 10:12:38 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Shuicheng Lin <shuicheng.lin@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Change wa and EU_PERF_CNTL registers to
 MCR type
Message-ID: <20240102181238.GR1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231220234559.GD2808452@mdroper-desk1.amr.corp.intel.com>
 <20240102010231.843778-1-shuicheng.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240102010231.843778-1-shuicheng.lin@intel.com>
X-ClientProxiedBy: SJ0PR05CA0152.namprd05.prod.outlook.com
 (2603:10b6:a03:339::7) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB7697:EE_
X-MS-Office365-Filtering-Correlation-Id: e0bf200c-0396-46ec-4a74-08dc0bbe688c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XI8984z8lQCGWC7DXIQ8RvAFGyYrMMfUQ0V6WFO5CG8dWzWMxv+UzFLxJQ1fxRp1/qdxgIrbZ0XljKrTiz3hJCSpz4eeSB7+iBWRKaFe/GSHrVYcg1NzFNgNx6TVI003ymfVX1og85ljWfCDBf3AsW7OT1lR5ji0TWqoomFQMM6lh9CM930QEX9CU7Ubw76c5RaLTofZZVHThMvWfQuCSm5EuuA3hCAGfsWoxyKVn2+6mK/NTrsfY4niJScBiJ5Fq1n832zvhcTulYl2cX8TbwYvxVeCmbM2FD5aMFLtocmYEaldvI8BHwdOaWosiEG7jgcjG/czCta9HOr+qP3iGK2I/Yb43AzroLYQasKnHRIOrAn4sgkYtEEX6a9wOvC9y4be2YD2hkW7LEhE/LBL/VPgMH2lt9IMuTG6rs0GKUe+0JMMTmYCOJBWRD40TwZIvQ3BFyyhJ1139yjfbnCHroFZxBG2lGbkl5Rdhur8e+v8Q8pfOzEjbuLRPcdzW6XwhBQQl272hvtQOI8nDOABKJz0qP2ow+Bs2aUYsm4feugF7ZQOprQcReFNywzj+o6o
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(366004)(346002)(396003)(39860400002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(26005)(83380400001)(41300700001)(107886003)(1076003)(38100700002)(82960400001)(8936002)(316002)(8676002)(6636002)(6862004)(4326008)(2906002)(5660300002)(478600001)(6512007)(66946007)(66476007)(6486002)(6506007)(66556008)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qogZ1q0OzUDdy+03DrIEx0+Zfe2wHnUmMfa3lXBitTWniJaZdRXzN2U8sfmD?=
 =?us-ascii?Q?Rh+m/bLjwb8B6c01PBehpJWbbTM5pI26vvhtSpjc7iutULbGTtqwhNDn3KtC?=
 =?us-ascii?Q?G3Jr0Tds5YBLnO6a0O4Ug8rEVWaIbv0wRTKEBzCU3aEjShYZvda0cvnqmgXA?=
 =?us-ascii?Q?O7ZFAQ4/rjfW5Xf4bQa4ShoBZMAHFLTqNNBu47mPjpmxVvNgfY0k8h17wJ7t?=
 =?us-ascii?Q?Gy8PSFTTrOf4rTgrwePqq/ng5QGe+axiyetZ1RthZ1e+VGkdZ2LbN8T9IEm+?=
 =?us-ascii?Q?alr2y29PKRD9bpDRyOksw+tXL0Y6qleHIDdAQYIylMsxvbmKuTfGg5nobCae?=
 =?us-ascii?Q?gCg/tGl9PT45GaQiup6y4Ghm0ZJjWgaDVT3VojKkN57/G+iV58D3fjLexuFd?=
 =?us-ascii?Q?zeuOtsQ6vgMvbRJJvygGpwRCY6GCp+cP2lVAOmqAy9Ya7Coqx0oAVZeCVvcB?=
 =?us-ascii?Q?ljmTHyXte1jGjTpEZvNvzSkaQDbYSl2JfwBd+FiGQc1T8MTEZm++tTg2hJ5K?=
 =?us-ascii?Q?RTi4e7h9VM+0ZyNWtKl1ewa54X3K9eiAcsWynjddHCJCYvbx2FRNreg2dGKX?=
 =?us-ascii?Q?qwX16i9s3RG8MNBq6wGzFZwM2m0QKJbdKl4IAlm+MwNDiMzZbQUPuGKY0s0Y?=
 =?us-ascii?Q?zafK2ba44STpQBTiuClBFP2Sb2Rcqq0FgIFgsifUiM0CFbp1xd4xY+X4bZTJ?=
 =?us-ascii?Q?+Ot6dpRHI0X8a9/hjKUxU3abn4/jYgl+RTJ/ZUEZyvuGaqbkkE+ZOTg9SmTj?=
 =?us-ascii?Q?kFyBye4G2F1BQQVVn3z/VPULPKh93JzXIG4eNC8MOOWR97tfUHb3lrISArGD?=
 =?us-ascii?Q?prIVrOGQZcw+41nWgE0eg1ynjGA6QmGtWvNrNZ46cm8HSj+LwqIWgSEXEs5I?=
 =?us-ascii?Q?Pil4Kwhoa8OOHYAQIi4/UtpK8Kr2MphIDlmPmCAhRTyyBiivNME0vS7m7SA9?=
 =?us-ascii?Q?qwy7s1TKA5QXq6mBCzO59CmBocue4glsVie3GBtvZrR8o5rh6tZh+gU84SQu?=
 =?us-ascii?Q?8b8j70z1T5cHIbPdJDJr1sbdmzv0dJ6jqt81bEsT/qC+afafvN/Ooz19GB6E?=
 =?us-ascii?Q?H1/6Oy8yxMJtdcHh1xg8t+EPfV+nQbTNZVR9KXWSbrA+CKjh5KEHZVfW80BL?=
 =?us-ascii?Q?cbpP+Lo1R2ZKMFuy5dAxTbNjWdXoLRFAzk/Vmn+tH8+AOpm/l/sjkIMRv22/?=
 =?us-ascii?Q?jw+vHrAs08T6GGZ2pojXXsSOD96D2+M1iU7pYH3bBysNQZU4Orx98xlQHAyb?=
 =?us-ascii?Q?t6s7JcExxeTvWXte4ka64YBeh3xJf0EZpoEG2E7ms2XGmTAmh7QnRtTWepJj?=
 =?us-ascii?Q?lsGMBjSADOGlzazkfM9kMKiUfngpAhxz6VHhCY/GOHR0ABScy7vDDALbQvuP?=
 =?us-ascii?Q?Fvs2MNC0qrCpMb8dfY7ko418ZPMM/F+9ims9AnnswdQ04tTY4Z90rxrE7qCo?=
 =?us-ascii?Q?eSuWMWWlCPQSDM+BVO4DcujESRTDQDYzcsY+9/xBjsUEIbD0QPaCsLHvvub7?=
 =?us-ascii?Q?+F8iopME4yinlDGW+xK+aKE+jZto6Gj6i09Q9b2lCezF3X6In1PTjTA/K6bu?=
 =?us-ascii?Q?aZnB/wRz30qZMUQxMWDcNBTHOMxAOt0pg5SbA/WU1VhUOAfXHzpwWCHCXb18?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0bf200c-0396-46ec-4a74-08dc0bbe688c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2024 18:12:40.6850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +5h66joECiT4zvwscsXJrq58zoxtiP3l7Mn9Yi86x4vqC9+GIJS3z1LEe1jvMIK2l5wnvi9NHQDxQNTvbL6u7L9P82OXIUVWZoCsY0dJseM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7697
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 02, 2024 at 01:02:31AM +0000, Shuicheng Lin wrote:
> Some of the wa registers are MCR register, and EU_PERF_CNTL registers
> are MCR register.
> MCR register needs extra process for read/write.
> As normal MMIO register also could work with the MCR register process,
> change all wa registers to MCR type for code simplicity.
> 
> Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Tweaked the comment to conform to Linux kernel coding standards, and
applied to drm-intel-gt-next.  Thanks for the patch.

At some point we'll need to rework the OA/perf code to use proper
register types for a bunch of their registers (so that we don't need
ugly casts like this), but we can take care of that separately.


Matt

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 63724e17829a..5cbcbe9a4e93 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -377,8 +377,12 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
>  	    CCS_MASK(engine->gt))
>  		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE, true);
>  
> +	/* some of the WA registers are MCR registers. As it is safe to
> +	 * use MCR form for non-MCR registers, for code simplicity, all
> +	 * WA registers are added with MCR form.
> +	 */
>  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, wa->mcr_reg, wa->masked_reg);
>  
>  	/* Be extra paranoid and include all whitelist registers. */
>  	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
> @@ -394,13 +398,13 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
>  			ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
>  
>  	if (GRAPHICS_VER(engine->i915) >= 12) {
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL0, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL1, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL2, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL3, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL4, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL5, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL6, false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL0)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL1)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL2)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL3)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL4)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL5)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL6)), false);
>  	}
>  
>  	return ret ? -1 : 0;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
