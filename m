Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB977F4EAA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 18:50:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 332F210E0BC;
	Wed, 22 Nov 2023 17:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA88B10E0BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 17:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700675420; x=1732211420;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LMv+7/oGSbH6fJGUmHuMisW4Y1XH6cajgIm5OBplryo=;
 b=W3NZlMtwrZUXY+e70h/L7gxYkj1nkf2ibRIOwdb6ScgSnJ+pdFpTY6eJ
 Wf+uo7/FtfgiyiCC9uBGX92/P7MBuklBLy3iAviBIi605/DmQLptT/NVh
 dlBDp7syOpZ0UF9tT6M02zv3tvH4bH5TV5pE9MiTsXh7LnmugEvuipfIW
 hBzcpy+GE1S1Wf7ud2OEBr9Xdk7kgJpe8YVpZ4BEdlyRwYQkcB6hlnSYU
 Fw6UDB1085pJSB0WnWdn06yeA+s0SJ3PhNHNjL9aLNOiTYBB9bApX79hs
 wO9kbAimJX7cBovF6uQQ8YBvsJ1mmggF27ziw7gCWSZtszTO0zyu+X2ei w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="389267086"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="389267086"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 09:50:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="837513851"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="837513851"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 09:50:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 09:50:20 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 09:50:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 09:50:19 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 09:50:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LmsMBKOjvcIlDDa2tVrnRztrTVcb7LLtYriN88EiF0VLi9XifudG0WLmMN1LXGGFlsDkkqb8BYY3U1A+oipr3DbWyBW37/24IVst+4DGkhM4pcNJn46xl3nJaolqjWMUxHuWlr0TkMBxedn3UdthJuUbey+0Z3DMZIz1ScK5PqGh7aCLSCeR0wCKCSFRiL45A0jbSAGsWLGCvt7VeH8xgHPcV+UzcC/JaGJOmdj1Qrc09eUOy9+cyWO9wCDDbz/GHoTUJGAmV3B/aBTm2YYLNFSZGS1BMypqKJyM1JXoziinxfbH7ih1p+TgV+KynRSbxC0gC4ITYIMRSma6/xnkiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0pTdD8EomVCWYF6lJ1Vk9q+6RI0JPWorqwPwUTGScAw=;
 b=F0NQhYTpOfgrgCkY++fuCwsgKDfW6/zbWBL5sDHWrIzUke6VUw7OhEzo+i3OrPHGAvzCd+AKcYcMQ2DnO8qHPbs/q80lbG1OGabfFxcFx8EA5yrPXLDfsohO12Pt7o/ecy7SylYobklc7wrEFDp3SaSyNqY05oMh0LQ/1r/tUDRthzyYANOxWGhIzO3jAuSTisUEIfoMi0e2Qr5yjYzZG37Tt0PStnwdpRZQ4R85QA8ieZGLYtlm3MplmKYa20Ar4kfU10AWfwYZTkKGesJiyucz/vV0g6lgZaMMRulkP5fVROw2z8zM4+UkCntP2eToOqTYhQn57KEkKCUV5XJxog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7512.namprd11.prod.outlook.com (2603:10b6:806:345::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.27; Wed, 22 Nov
 2023 17:50:17 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7025.017; Wed, 22 Nov 2023
 17:50:17 +0000
Date: Wed, 22 Nov 2023 09:50:14 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20231122175014.GD5757@mdroper-desk1.amr.corp.intel.com>
References: <20231122050206.3249424-1-shekhar.chauhan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231122050206.3249424-1-shekhar.chauhan@intel.com>
X-ClientProxiedBy: BYAPR02CA0014.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7512:EE_
X-MS-Office365-Filtering-Correlation-Id: 889b2e05-474d-4af6-8e18-08dbeb837cd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ImWIlnv7moWE5x3xAh+YawvmsUmZahMQmTJri0Jrkkg2W/gxqV/aaklRViSBtPsePohYayL+TWH9eHVEhPCmjNbXj9Et9Fl1ttfy3iv3ALqURZ/GiWQhOG6Mwy2SsQcUO3717SZp6vbz3X9tqvp6oe0otKjEwn9DF3slZWnhHAh7jYc832xR6PRWGiyJywYDm/MFPYmcDcOJ6/j9rMwygkgPMEosE6/w7RF9MlHitSRNzGEO9JtGFH8PHLB7BfBSly4d9JpPxeGi/SsGT64qLTYN+o1ue5kQn1uftcr6OZ2g1fBhlBb/Llj5LVZdtOC3HhZfx2c31iD2st/vxRMl7Je9+K+SY6xzNe3hgADj/1ZUOA83ZZleD9B+Ls5Os2qrrXeBTCekDJZv/Ei3V4qeNT5A/G9JSdJCf8XIDaB114dlABfJ2Vspoa2Dyl5nNYyW9Ez8F1lZsQF5wepFr7rZ+S4ffdnjWVS+yKLrJNWYKsb6lsqLYFbgemcerR1o6aLkMdigvXzVXnMSYoOFehHLwalGPXHVSR43+77Uv86M33RdZP5RzdYZi3bY/9vM1oRc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(346002)(396003)(39860400002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(83380400001)(478600001)(6506007)(6666004)(6486002)(82960400001)(6512007)(26005)(6636002)(316002)(66556008)(66476007)(66946007)(38100700002)(1076003)(8936002)(8676002)(6862004)(4326008)(5660300002)(41300700001)(2906002)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AMbRO6mCHYdk7YItCCgmJFEwcU69+2yNp9U/c/FQjfNcSglNqjG7ogS/O5R5?=
 =?us-ascii?Q?4wMoD/peLWA0feA8QHtnQQ90P0iciWJZtYrn6yHkxWuewZ5vYFV5b45HyBJO?=
 =?us-ascii?Q?1L/nRPRw80uHgD2ZDJ+ZYKaUsdq87qpuUeby+MUDgKafpLDtGejXl5HAMOjK?=
 =?us-ascii?Q?KqFMnq0Rnab5l4gsGPu/iPdKb3aVaemquK+gZ4cTUTcZh5DSd3sW3mfuMZv+?=
 =?us-ascii?Q?lvVyqy3gGftdPMmcrkSNxQ4y41n4aGkAjKwFXtNbhA4PYbzU3PwQFYYEsyJ6?=
 =?us-ascii?Q?1WQHlGp8OXsTA3Xw0qn5JuikuEuOZYTuwUy7xvTpzSZyywpu4HPhe37rLM+I?=
 =?us-ascii?Q?EKReGcDWYJPRPYJRWdbnYv5GxykIsJneYav3lnuXTcJHuPJ9id06MFj8os+D?=
 =?us-ascii?Q?0NK0u2p3OjVbx3llCSp2zNIQVrRQ+nP3/oGZkNl1LNlaoQW7O4/FBINc0yzM?=
 =?us-ascii?Q?4x6POI9q+PP1tclxOXQCOpfgYSAyzlx+q/Kg9fz10lFoD9iedEqyEWgD+XlB?=
 =?us-ascii?Q?asPYnRA+o/8qW7jpCG6pp/x8FXOxJYnu+i70eYvq+bhcdZE/XPi3R6//C5/v?=
 =?us-ascii?Q?gHR6VIP51UDSbDfpRjaBd3ZUS5IMk0M946TYy6F3OrgLL2JPp+bRyzY5F721?=
 =?us-ascii?Q?rbZ0BYaSlkQXsVq9BmMwVGadykJ1OEBkmdGqwiw46mENs0opsGkAKzmC+F65?=
 =?us-ascii?Q?WRG7pA6Y/XYt+nwNJQmFtXo4OeVztYJkpx0NbZv10kMZ5ugNlMPX2kqJi61L?=
 =?us-ascii?Q?zCHed8Qbe2viR0vdqw1Pe934y3x2Kb7AzbOt3XtbGs4wruoHkDVV/nvBRSnd?=
 =?us-ascii?Q?1awDss9Tqjrza9jVDwbXsA5HOL1ZyGcOrRVv0NHYQUulZKJl/3VWfOrY4wOd?=
 =?us-ascii?Q?540ZKB61yxqxXh2CBoc+D7AqEWaUpbhqUVPVM5/uE6NWSE9Oa2KCgKwKyANk?=
 =?us-ascii?Q?zzQMsQeGjxUf3inHLrgqDjhpAeRAit5sDctsgASo7G5Sk1LMTFL5fR4yzwLf?=
 =?us-ascii?Q?YR2/LA3Dx9tFx5wbTA3+6Nkg79UzCUYuczIpm0pqQyzJPvoCXqHXfbqP/PxF?=
 =?us-ascii?Q?iypfDa3wnOdUuGWhNUjjqz3xs98YPrAO8HmGAvuOm5Hc3dXWgVoKgp4uC5/X?=
 =?us-ascii?Q?uyL41YQazV1sNgAjO+kfvnMA6q13/3h7EfLd23PPKHR5KIJrcEq+kS3ssrzV?=
 =?us-ascii?Q?J1MWlNAGrbSoS9KuzDAGeE13NZQCXwTaQ+wywuojjE06B3oIZmbiyZhm5WkP?=
 =?us-ascii?Q?J7cP1z8Nd19qyoz5rLCxA02H64S6zuBhk4Y7z95DMbJcdBit9UPRZaGS0c96?=
 =?us-ascii?Q?vkm5SwDF49XSxDff77rl1jKoqZSthF/BRyIWY9vpUjdEGRD8wbTeePezX3d/?=
 =?us-ascii?Q?0szjTG1hV1iZJWJP4PP+2vORf4/vsQCL4bqAbdK2b7zdWx2BBtA1+N3RxV1H?=
 =?us-ascii?Q?M3nk6Yt0L0j2gU5mLuw+QD67RbUQYSepIqKAvoyQcoz3m1hd7k6GiQ5WKLUk?=
 =?us-ascii?Q?tA4RTr37226dCdaZ8zoMovh94w1/SP8917toeHKjX2n5fD709qu8y+cwLeK0?=
 =?us-ascii?Q?mZtEWbnVcrD0wn/Ssc12OqRIBu887N0fUFpxIoSYpsWH6Jn0RsDRlmvxV3Xp?=
 =?us-ascii?Q?FQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 889b2e05-474d-4af6-8e18-08dbeb837cd9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2023 17:50:17.2329 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vONN9GZf1BcC1ajYylmn8jtm2XADSFHqM14A/1jOjJQpz/C745aIWj04GFOoiSw1/nNjeSngeU5jqWUXsLNnZnL7X7M4XP17vXktJsPb7jE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7512
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix Wa_22016670082
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

On Wed, Nov 22, 2023 at 10:32:06AM +0530, Shekhar Chauhan wrote:
> Wa_22016670082 is applicable on GT and Media.
> For GT, an MCR register is required instead of MMIO.
> 
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 9de41703fae5..02d1d41fcfe1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -530,6 +530,7 @@
>  #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
>  
>  #define GEN12_SQCNT1				_MMIO(0x8718)
> +#define SQCNT1					MCR_REG(0x8718)
>  #define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
>  #define   GEN12_SQCNT1_OABPC			REG_BIT(29)
>  #define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9bc0654efdc0..34855e1ea1e6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1644,7 +1644,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>  
>  	/* Wa_22016670082 */
> -	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> +	wa_mcr_write_or(wal, SQCNT1, GEN12_STRICT_RAR_ENABLE);
>  
>  	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>  	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
