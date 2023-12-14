Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97157813CFC
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 22:58:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B8C410E882;
	Thu, 14 Dec 2023 21:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5643D10E882
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 21:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702591102; x=1734127102;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=E5OcyUiWfcdZt/5cT88t+TsnBZtj6cM4OykGYn+2Gjw=;
 b=FgVzOQWfqz7x38RMe1mOXu0cmhu7gjyg4KtV/15ABmmObKlKBfmOMZbC
 96SItMLJihjDAZtADaPquu54dnL3bYUSLX0JSXMdDxi+aTH38yqQII2I8
 jpl2OPxBCQIV23ZqtY3vgHqHKjI+4oi2xuG4EkkkGdolXkcda3Y+n1y2Q
 D/VRTgNkOL6UQKUA0p2UFbZK60uK570Z+GWzx5ff19GbZkyOfU2zNvjc+
 YEPdH7TS3PC/IA8bL+/TBsfSCXdKnJwg2TbC3/tOll/QaDVPNhUiEJHDU
 b/4UlcDgjl7Ds1X/Pcjv0RBJa3QEv5IwbROLPdKPIypOhRvQPH3w4aPYx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="399029736"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="399029736"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 13:58:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="750694632"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="750694632"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 13:58:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 13:58:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 13:58:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 13:58:21 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 13:58:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QFkKcqa0v2XqzAy2rWN4cRE1Y2MlsHaiGlgEH1nBuqkRIzptk71piQ0pB29p0m0dNqtfRqJ+cTa4neJdTY4bNChKCicKHKepqKXPnao1DIqZJ8hmnGa/ZLm3UPYjUB9DrOvMA0REEp2675JK/hO+0Bq2kdGjYJAeX/ka7/xUJpv/JF2D+pPFQNhMl7hSbUzmlcFiGbChJtkVy0/+J81+Qb54143RgNbf7BtVlOqsku/rhSV10vjY2/prLEiS5pJFdfBeotlvt8BzgFHH9m9Dh18pqcuUIXv9eiQsWNcQkZX7EKxCvBc0zHPJ9hXrrJDkC1vjNZtTSGwpgH5GFiFdeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=muOlTxlI+zHfNML5BNFcq5JbQoi8k+YmeCJpD5fBBRw=;
 b=MX94IQauo/FtefTt27ofFIgBzTFc+nTELeudJj0BR3IGHCRU6KsAQjKapSRsiaJLx6MBMAfj76w++y86kBsDjKTusj8ZRWHnRVZBm4Spg9qa2a2yKusEMKlaxsiJKBkVrUMoOQjGB1wGeLmI0uULWsemvkuVldWY39QES1Ct9Seflk5o3gt8/0C+2hoGhTyn2LjMvQDYOdfcTY1YRzj1ZvcvbncSGjd0sVUmIKVQUmw/05kiaSX5500exvoi3XWSHuVwvZZU54yyesbwg9xxYnAWszgqDQXgdY4SyN3qarq43ChqUhEUanArPvzs2TJrhgPojXmhRxQXEZqHXivBvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB7514.namprd11.prod.outlook.com (2603:10b6:510:276::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 21:58:18 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 21:58:18 +0000
Date: Thu, 14 Dec 2023 13:58:15 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>
Subject: Re: [PATCH] drm/i915: Add Wa_14019877138
Message-ID: <20231214215815.GU1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231213064612.480032-1-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231213064612.480032-1-haridhar.kalvala@intel.com>
X-ClientProxiedBy: BYAPR06CA0044.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB7514:EE_
X-MS-Office365-Filtering-Correlation-Id: 37f4de46-ac82-4639-43ab-08dbfcefc7c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: piCjt6aKKzqdlRwNrxzNpEjGM6e/+zwaJe1y0gr9Dm2ldbYQnLlY3L+kuCfztdpgs9VdIQhQCXtd/hlhayMn8bKdqJl4wa43HCCc0hUxzWfa1Tyl5nOC6R1jGjS64WPFe/IMyEqRj6UJB0GnGTigwcPnT2r8QMfYVcGKhmKYzMhqeYNkuQeybrgWHKwxNTs5XV9posDOU9z2ufTh1ZCPNM2IwaAfULv8uvqpoVjdqtSM1uxeu+3CurslNIN1YrXaKdO+gFBi1iRW4zzG7vcL1eDGSwB3IkTxbsY2yGsGZI/62I4q7zNgt82k3ehQpAykKYcVFt0WbPaDADiJhqokNwGQUtaHqGPSpfVRcuEhp9nW4Av4nWuG2nA0z5NeABO8+ZqfOBNo8W+69oyjtSr388lJzN5S4xMFWv+nFOquxh07yFVWmg96Tew2wX10aj36sy8a383C9eQmqZ4DZWIF5PoUnbJ7QmzPCI9namd7wJO9Y85mFpRV2OqmPnvQJEHUfz2WgMrVn8veLdBlgO0Jgg1AF5dVnDdmVyZvwMA5i1Q/H0TjTc04MLpM81RMojr+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(396003)(376002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(1076003)(26005)(6506007)(33656002)(82960400001)(86362001)(38100700002)(5660300002)(6862004)(4326008)(6512007)(6666004)(316002)(66946007)(6636002)(8676002)(6486002)(8936002)(66556008)(66476007)(41300700001)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jemm4ThIcEGCTuiOEBNEiMpoHQMEUNKbNwNHbBiElSY7SWqaABmo36Y8vUb/?=
 =?us-ascii?Q?SRhwDRQH9KIHtMfOMEJ9jLwNVrjH91GKlgNVrXDfAYEOVuq5wqzHel2xSm1C?=
 =?us-ascii?Q?iKnRptlD2idSqNbedGAzLofcpQUhtRAsVkWEsy6BxsB2xtwMCyQue5kliFgn?=
 =?us-ascii?Q?5DiGRLC+9RnWb8coZDvPSkA1ZNFtvzCni+ZLe7ErrlhOtAcMEy60eLlY8dcC?=
 =?us-ascii?Q?7X2oXm1t7EiLWxF8oRFzZ+NxatNPPRMVI4hScfPDfi322XYVohekGz6i5K46?=
 =?us-ascii?Q?sgz1Otaa5YaQfyk+8MAyT6veaHpuPXs+Y4DnHroed9zENVpxUFZHWH5RghXq?=
 =?us-ascii?Q?LFOMrWUeUdbnNeC2VzoVx41gmLJppVid2tMCVDD532R2yVQ/ZezVni4PWrXr?=
 =?us-ascii?Q?ykyydFvNmVDeIHmb6hr7SBQAxCJ7iXWBpvDtBv7DRojnn1WBXnDEeJ0Az2SP?=
 =?us-ascii?Q?1Q7f7vzfxrq9Cs959nJ6uyIjU56SKvqUMfP8tQsrUlVNe0duH9QmmbNdQQWW?=
 =?us-ascii?Q?BqxxYDU5mYSwjyLyksfkgDneVJo5jpDfF4LV1rab0yFrGqUgr/Dgl/dOVIxS?=
 =?us-ascii?Q?TyRj3Qvh9XbtcpZbbLQHP6SI3zzI/abTCo1MOPZP7Ap0RKvi3ZIYfwGl6W6C?=
 =?us-ascii?Q?leQYnTso2qegTu6XxsisLj+G8sdz9EurXAZc4/oTd9FPWEsiVJXG1QbpOjWd?=
 =?us-ascii?Q?yuHXSm/TIcptq5SyECXmNGLa6vkBPDMeyfXQCdS10LOJK7ZB7wsQdG1eocwC?=
 =?us-ascii?Q?0en3KBgP13ojhDV9u1x2GjwtUE3goHw5oYxsV7ZshjTRFCj3Q/yakuOgxoLg?=
 =?us-ascii?Q?NwhSYu80i3geh0WYf1A1XA13lzsg4nlNrEikVq/RyczUrJQNBVnZsSQXsNuy?=
 =?us-ascii?Q?eJUx8trry+UKEIk1510VHzBNsYRUrc6r3zREWXzJf+BY6Ke4/egEoh1sMqJb?=
 =?us-ascii?Q?EVE88x1pBNPj1hDrzpQrOBS2h9Y4tDxHSCW3xGSQBNhc9vyzH35ezZqigkaW?=
 =?us-ascii?Q?4XktHSE0F3zyCoefmZ3XP7tx1KsUGFEOnerxD+bWHY/h8cEgq/LTgRxbsynV?=
 =?us-ascii?Q?nu06j/O+JLMFFjhz4B6751x8qjemqeGmqD1xrDjVtUpsyJdHTNaciafTpuGn?=
 =?us-ascii?Q?41XmnWoiZ5eru7Yg4i9rbLqQb7QxLgGhu05YBuavLADIahi3Ob+R87WZ9+PB?=
 =?us-ascii?Q?uhUj5SRklz2t/6VhLpnbdD+CM1hBSpdBZuLuIfSjtVgCxCrH6CJ3a2f+YtMo?=
 =?us-ascii?Q?9autzN3nR4LNt5hGxWjQGdK/Q4DpyVWjO2SZFz+qIDQjDIHX8sfaBv6XqnKq?=
 =?us-ascii?Q?9dhIn8LRaPZDDooe6y7+r91isy6K3mziq7BSIHJ020QlbY2afG/Yrpn3CiOy?=
 =?us-ascii?Q?fo6L8+kKHDgG5gZcsCFINnuXs3tmI7veN5NRJTG38LXIgACYXXf/jKnsM2JN?=
 =?us-ascii?Q?SEz/i/FdOOq1uN01Gib2xEUKnXuyeVPy9GM3Yx89PZ2L1s+Yegvd/m+uVbW/?=
 =?us-ascii?Q?3mXsKvKx6ISy1dkii2MIDFs47tUH6ld6vxkbUWAt5HgvPKlC6yQA+Ix52ZVO?=
 =?us-ascii?Q?V9bItqUvLhhN6TZaPFSS4dgHn6QiOkbchj9IltPIFPLCUnXk47xyGwGLPvny?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37f4de46-ac82-4639-43ab-08dbfcefc7c4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 21:58:18.3304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bxbnpw2aGDLaNuqT1pcADrs7buUvVYcK31HnCvchv4wrADLYK5ZJl0DP+9+Xu+yiMNreqMZuCGJIPq80gYOjdhfEQcAmQCROml7xI0DQ9qE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7514
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

On Wed, Dec 13, 2023 at 12:16:12PM +0530, Haridhar Kalvala wrote:
> Enable Force Dispatch Ends Collection for DG2.
> 
> BSpec: 46001
> 
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 9de41703fae5..50962cfd1353 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -469,6 +469,9 @@
>  #define XEHP_PSS_MODE2				MCR_REG(0x703c)
>  #define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
>  
> +#define XEHP_PSS_CHICKEN			MCR_REG(0x7044)
> +#define   FD_END_COLLECT			REG_BIT(5)
> +
>  #define GEN7_SC_INSTDONE			_MMIO(0x7100)
>  #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
>  #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 4cbf9e512645..3eacbc50caf8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -777,6 +777,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_18019271663:dg2 */
>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> +
> +	/* Wa_14019877138:dg2 */
> +	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
>  }
>  
>  static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
