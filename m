Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3C387F099
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 20:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3537310FF0C;
	Mon, 18 Mar 2024 19:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kbVyx5pZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3FA610FF0C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 19:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710791623; x=1742327623;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UZZBeYnC021IT6CFNXr7K1+FBf2AYR4eMAVsFEQzmso=;
 b=kbVyx5pZWR8QcWnWBQjPfJUDBGisQ98CuH5OkQa2gCoGA8UT1Ov6526m
 AxeilxRo3PfZTRNiyuxe1eMe8QtHGviLtzSPqxuqjRzFYkMH9TM0dAXFJ
 Ma7Vng5yoMGogF6bNR/WoOnp9tlPLbkyDXVeJi2q5dG1/SODRAZ+WyEWj
 C7ucjThtuo4bFBTlgKF2p6H4BacHn4/6mhW9pqRKEo30/k123tHZFsxBU
 Ed4EYJGN5nsnIy+dYax4LOoZID/5VVJGEr4X0aU/3iwQtDmmoCrobDRgP
 7I+QwgaGpq1M/oiPFNuiqMlAEWr68NkctUDYCTLajbSSkjFklyd3xwm3e g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5507479"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; 
   d="scan'208";a="5507479"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 12:53:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="44633685"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Mar 2024 12:53:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Mar 2024 12:53:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Mar 2024 12:53:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Mar 2024 12:53:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Le4h3498Dwd5doFf0APbTrylx40K++d+DRu9MNH4j+BccOC9GmDdN5lTlnKLSgHtlPFajO/pa+wwNou/7Znv2hwreqtFPO71X9XOgniwr8HJyTXarww88s5vPfeDdIZhIOiUI3XxgZawi7SqvXbngPs+IsMiuL7KcFwZoKpze+/UWt8WdrsF7p90Ia0rFs+QbpXO8/AxuHWmpkd0CUTqzvh04L2iOHzRV0mXrXpjG044CnIFyPgXpoYx6rL/C1LxVcvxEJcKuc7pCD6Evfl9LmjV9Az6d3lhzDNg4km4uzYcjjIvYr1tIIyleueVxngkxlqfwroxAyscp9RbtypT9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H+X4llcYGGAeQfc/mGFrLRGknpREYtpHHTaYHYjc9mI=;
 b=DR3XOkPVFAhooK1xHG4PrsKdzXkRWY5MNPuTBBwt2KUTbZ67ADoxLhXURGwI5u3XvwOUmKdWB1myCjxE6AWqIMjAnWVj5WZT5VBYuvWgiJY1xegonhCjAANJsm1IGhsnPIwAfy83FV9cmTP5bQAGQ2smeWlg938Ger+qb7k1sz6BbuEOPN7pCcPqjVh9nYjx3JhXCMT5c5cbvV2fUsHNlPkiJFn0ra6PQeZk6wRwxtZ87ei13LqgbmniWL49VOR+gp1veX1Hht6DOIgpYfyQN6DTj1U15qhoUe/3vz5wTaXzjx7V5YFmxplE0wYTc5PYQQKw+mr/wpcWyZi80lD8uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6468.namprd11.prod.outlook.com (2603:10b6:208:3a4::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.12; Mon, 18 Mar
 2024 19:53:35 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7409.010; Mon, 18 Mar 2024
 19:53:35 +0000
Date: Mon, 18 Mar 2024 12:53:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/mtl: Add Wa_14020495402
Message-ID: <20240318195332.GJ2837363@mdroper-desk1.amr.corp.intel.com>
References: <20240318193558.387153-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240318193558.387153-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BY5PR17CA0005.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::18) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6468:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a94c50e-b9d8-4080-7fe4-08dc47851899
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RMf/6d4i2cvmDkMNLFpuaI5c5DqehTj1xiWPhXsmMUReETbOndyOOTY1uxttRJn0s3v8C14ZUct/px8VEEmZDBVgwb7GN2dUJpKKr+qpOTWpo82/ZSDoeU4nZpVc74guYfmRAbp7YgS9Oq2hG/y0Z2skhAuOwiY1vOnOYwX9LqCH5Q5FtpToCGPuIaPTZFp8Dz2rUokgZCUZay2pN9LiSdcfC283QpT2jt27Jty/MMtXMmEJINvThgW72Xa4qPvlYsvDdH3j8obwEdK/S+ldFAe/4yx34m+8ZaeyJpvMVMN4NekcidqAmXENrwqfHeRWzUFGjAg9/8IpDISnLqAEuIWhElm/T36V75iSpzMHZ58gDJTps00TLgZ79ekhoH605DC36h8c8+tQ8PPm2EnixNF0XrFYeHxaPnbQf3+fVriQnqD+gqZ/ZdQqTgm2WGk88GCGOL2mSdB4kx4Juio9uad35pUm2aAN7t7QM08g5Q6hzMhsKGSgdo3Cd0GsOVHzIwrfqK90UwVAvI29YjnY4CbToNF5rv2wNcfR+8I/73EjdPuJg29lJr+DJcEeAQotaT1Dj5OrACnPUyhdZQNmaOSBigXTNik8fLfveS6xcNw/DGF0Sc6MXneKn/JlHF3Y/CX1Q4NP/asLQJFuDxAoJrL9hispdvEtLEQldQFXDKE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jwrXIsse7uL60Xe+S7KmV+9Sf6Y6mAq6TflWt61sndxQ2dvOzz5dQ1zJbAV0?=
 =?us-ascii?Q?7m24kcnAM2jDVB84ghUXoWorDJ/TfxxY2y51A8qfx1HBByLayndudol9S7NK?=
 =?us-ascii?Q?oDH3iLYBut1fv+XqBoo5Am3efIUNqlW8OkgZBA6Me1MYXZtfH9JYrTwf5oX7?=
 =?us-ascii?Q?sxXVCXGPOUn6a9qSt11yjyHCspzSuQurCO8C0s3C4ns5zzbz7qHWOSIcmvPo?=
 =?us-ascii?Q?Or1kY0AFMZlcg7MQgR+cEXayBATslGtinjxDswAc9soPb/5SvibGmXUUKYIE?=
 =?us-ascii?Q?2oKnw2144jdlWyLEdOgNoosekOoyX73G0eEQx7FuDO10Qt3xzed32rbybjg6?=
 =?us-ascii?Q?xempMlPl8TuqXC1oGwOUpxG/G1JlYMvyzifdb1YBCkWk3rEJK/cIC48qVfP1?=
 =?us-ascii?Q?H/X19Dc2DOowMgSKaGksCFOPYbAVW9jb79beTV2kOIlOmDj4oFyvAgtPBVpk?=
 =?us-ascii?Q?/gr7ItdhNRjf9D2S+/6WVzTsBM3griEj7FVmzXVxXsL0uCUB1g0biYEj80nI?=
 =?us-ascii?Q?6b9qMrEy57YIa99GndGNt4IhDn2ohPVo9fYeKFisJGc3Fs1mN/JcepDr+Az2?=
 =?us-ascii?Q?IB8se+77MZZzRizKiYXjehLBHos5TYywjzf9UcjRlweSJlyYbSm9S18Innxr?=
 =?us-ascii?Q?Tq5C3TESsM86KV5zUci30Ht379syhdWaWoRrOkf2zgxKWwap1P9auPrHjb9e?=
 =?us-ascii?Q?2179EiV3/7YpqdtJKJLVnpB4a9xGLsi4FidIVEEk6+49727gE/eRkMAM1ZiF?=
 =?us-ascii?Q?wAesWviqCCOah9yEBCawMtzYRjdNXaL59vLbhYYi8oMLuIQPuD16yHN3FQtZ?=
 =?us-ascii?Q?lWKsZVAN1xlylG4uw20HXh4WrMxUkmleQLLiL0up0vrVLU2N9YdP3uoj0k6e?=
 =?us-ascii?Q?6eAOqUHBs+ZQTRfyen2Dp+Zwj4C56z3uJHttw3V/ifpzkAWzVSYLXuGmCfzU?=
 =?us-ascii?Q?Z8PS06DwQ/4frqwMH27XXbK7cSV4AejfqBKO9j3IKqPr6W8Iu+nWt/Aovw1S?=
 =?us-ascii?Q?H97tENnG8mE7PRYdSEpXBMS/aUbZJ3s6JQA0k/K6/2chxbgswJ+MQxTGT0Y2?=
 =?us-ascii?Q?iyJLIr6NvSHp98sUFKjYJO9OCX4jaMzBwJ1GKl47p5t7wpqEZe58XcMLXq10?=
 =?us-ascii?Q?qP5VUGnJfP6wEwHBqNhqU4zfZ0C2LkyGgc5Wsx5JQQWr8BzKIivOtg1xtlMC?=
 =?us-ascii?Q?5f64AN6jeRc+zWvnCprTpZAi9bYQeAWR1Xy4350Bs1fbLFxPnFtdXeRKIEBB?=
 =?us-ascii?Q?ILS8oqZ7eELbjxSrhFjxMf75q9v9KFsW4AMz7VXwGV/79O+iEp+nY0g6Upj8?=
 =?us-ascii?Q?Ar77/tM/xJb+pRGKKs6PvsWT6IdkuMNymajqFcktPE5d+F8yIZQ4leTyGoI6?=
 =?us-ascii?Q?BbrOC0jh30Eq8yJQboDzFZqBC41tSxvaRfq2HKXn50BxHH564T+Yn3Kf5Tv0?=
 =?us-ascii?Q?BMyZSnoAF2kxyp4Ke+Y2quh2CdRStBz4X/Y8Wh+YI1fcT8qhMA7ej+zwBONY?=
 =?us-ascii?Q?mNbKuLemuEmaU6n52WpHXn3P9qTsc9ex5eAIgb27WrNDthXfm/lxBoGKx+mu?=
 =?us-ascii?Q?asOYur1AlVgmE0BpD9TaJwyHYRxHYmig+3gLUE9CtfszZ3rZ03bgm2P7r9s7?=
 =?us-ascii?Q?Tg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a94c50e-b9d8-4080-7fe4-08dc47851899
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2024 19:53:35.0409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ILo547TgVQeMycJ00OkxCA8EKOM7mj3b2oMvLHiJzeCe3ANAXG1Tn/rVLEfwFd8dNfuu9LIR62ZH1k1GdfmtPHxWKdnIRQQCUakpiU+OQRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6468
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

On Mon, Mar 18, 2024 at 12:35:58PM -0700, Radhakrishna Sripada wrote:
> Disable clockgating for TDL SVHS fub.
> 
> Bspec: 46045
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 50962cfd1353..860765cd2ad2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1215,6 +1215,7 @@
>  #define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
>  #define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
>  #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
> +#define   MTL_DISABLE_TDL_SVHS_GATING		REG_BIT(1)
>  #define   GEN12_DISABLE_DOP_GATING              REG_BIT(0)
>  
>  #define RT_CTRL					MCR_REG(0xe530)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b079cbbc1897..8a82aa93a08d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -828,6 +828,9 @@ static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_14019877138 */
>  	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
> +
> +	/* Wa_14020495402 */
> +	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, MTL_DISABLE_TDL_SVHS_GATING);

I don't see this register in the LRC.  I think this might be in the
wrong function?

Also, this patch should use an xelpg prefix, not MTL, since this is a
workaround for the graphics IP (on any platform it shows up in), not for
MTL.


Matt

>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
