Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEA87A0AFE
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 18:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB7C10E14F;
	Thu, 14 Sep 2023 16:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D05C10E14F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 16:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694710173; x=1726246173;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B4/yGYncv/5sdtrQ1ucGY/ZmtjNyGdnxGCpSHpeOlCo=;
 b=WzIc6gzG2NgMML+NKRv4KWOMTbYQXQbd/ASSpWegyhBG80ot4MH59yMp
 FsOei2bPGgDRCWQxo+MKE0l77/gP+ALAtQq+G2Y8jYvOVJq0+czWFk90A
 wNR9gOMAUzR4Cs4pChgkFf1sf6uD8wl4MX8rcPA0/P/O4bGOtUv7XMDyC
 gxUi65kPQbKD3nMjFXPPvaykSQkH93Tabx/akzco6ARGP3O6lJTwi6I42
 W+CmJZMPl32go4nWkRZ4zg7LKg/GO78aUBh6+QtwuAE5byF1j+ixwqJo2
 zXkhq4yHK+311qXLomqHTYcu0PZndm0ZE6LaTHCeTU2olmqKTJH9Xqqqc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="445450381"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="445450381"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 09:49:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779726634"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779726634"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 09:49:32 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 09:49:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 09:49:32 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 09:49:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k/J/0sVHCiJ2DdWsYIPGXdRYrIG6cS2zUKNVQ1GqoCoCELdzfcNEKd/Mle6QfeTlzgtjh+cZNixd7clWLRiyG8ZCsoCXNyhEZRegPc9roogX+f+F9JpRQk9gdtVaUxNEnQ0FcdPeYrDO0pEtM++s7rlc+CNTN/lv4zK9vWlH2yEaYtFvOEB6jGYwu0mUxgV3Je8JNFOllkh8jQ0b8xdfadfDAZA2jljhyPVe0mEVvWt7jOE9Z19RAOlXKa53zOKFfnSHZJNp8gn+neRbbdg3XgBLHnBKHk9oouN+L3eIp0t6mIJU6kryuNmDNevnH8vBq8+V4RyrQAsPhD2tv782ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SZMXANAzNSSpPx5YyKEJ+SyGLXhqb4g19FNVnUoNBTM=;
 b=cN9ttBEIAo+ka84LYappOv2u4C34QQO7AEuqOGzj0kLYQBnsgVv3XgVrN8wxyhfDEphSIXgllfCSpUyG3a5DOCHCtmmVCsDPN3Z/ZsXGqzBPqwPGv5UmyLjonnX/Ogyc40gfKyVdcMrRMPXiD96qC6ZGnBAOEVg+UZJ6zyDbruf5w4AIvLrJJfmI/l/pO7e0omhF30mw1OsZe6SPabs5qKRA/8EYYe4ZT26cyWrH9NHAusLVKEv6ZUd6P2d/dNRlX9+7zqkbYUjk1xEgDkbBzE6mbN1PHws3Lc1de/JhMWuEk9Puxs2FU1KLzR6m8DY6HOVpCRcYJ3L3qM0lIx4+7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA1PR11MB6566.namprd11.prod.outlook.com (2603:10b6:806:251::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.31; Thu, 14 Sep 2023 16:49:29 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Thu, 14 Sep 2023
 16:49:29 +0000
Date: Thu, 14 Sep 2023 09:49:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20230914164926.GT2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230914134724.657957-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230914134724.657957-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: BYAPR02CA0029.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::42) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA1PR11MB6566:EE_
X-MS-Office365-Filtering-Correlation-Id: e2322397-4375-4c16-7951-08dbb5429030
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xw0ljZW3u0zE43yT0p8JpVrRNMkjXH+y2NtP5uGgu5y+SMaCZNt/H5rYUc08gNQmxJX8CizMZ2Li2StAUVmsLQD3BLbv58XZMw59ozTE+N1i86/IICHhBIq83NZAUhV/sBxPE2a8NCQo4u0V73P+Xbk14UGmqtFKXsJaMqODmcB7ZjSpAyoib8xGG9VGSpGu6k49qqAY0lVY3NE7fAv8VD3EYdQFF79N8jll7D2aHhsD2tlOKDx1dLrmJgtmwKgNnnfZFBef6KB4YadC21Hr1qEmnJg+Sfvc4m9mWn6z49lIy0dgdbxtT9uR9SGMpHqHoCnoxhWH9g0IUgjTGmH7wZvIudBhFzStTnuOpSZ1bfdMqw5janO3ItqLLmjYM49vWpsr9GAMTB/mZlkc/u4YWv08Ho+xzmSjDFYlEEa3YQPw4Agmbeu91Oo8GAw9lVlnMF8sCe7oH7pYTn6WFXASnGTpX8l1jq2DU9p1cpCfQH6dldtdDYy2QYPTWrTN8LI8aPXrFBCKuO7pD3ovxSwBbebhuR3Lar4cL/F/ihxH0oaeE5Z1UQv8meq9hqsM2YKd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(346002)(366004)(136003)(186009)(451199024)(1800799009)(316002)(83380400001)(6506007)(6486002)(6666004)(38100700002)(33656002)(86362001)(82960400001)(8676002)(26005)(478600001)(2906002)(1076003)(6512007)(107886003)(4326008)(41300700001)(8936002)(6862004)(66946007)(6636002)(5660300002)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BDtttXcnqWNM+OsT54E/brosBxA5JRk9EN6f82m/MUlBqn9VgbJoelsDn3wV?=
 =?us-ascii?Q?HzETyjNVPKVi7a347Fe43HnvYU0quI01DkjDqd74puulraieSJZWq3bLalxN?=
 =?us-ascii?Q?0Vjy2FkCgiKgC8cDeqUbEkafb6KEKVJy0HAfjo1uMND79eCthGgz01YlO/ir?=
 =?us-ascii?Q?Qi6gRnSlzOitDLG30gRRXb4u0kFsiP7MXBN1tQglVbW9puUjOabMHL94K4lt?=
 =?us-ascii?Q?RfLDbGvD8xmliGCbd5c1BC6VhPl4RB/6BQ3mdjfOM9x73fUHQWuExjIJdqzy?=
 =?us-ascii?Q?bcwnyTC+5DnlFSuYkGmYETOrLwc2SiTI7XvsuIsWQJVTTkxsFGPzl4/7ZhU/?=
 =?us-ascii?Q?xbE9fVURkcnAzUzOzGY6e3Qy/vagZnCMnRbZTR+MDLlufYygs7V9EJpJ+4iV?=
 =?us-ascii?Q?Ad0yJaCP5++WwZZNghXRIO8n/9FxNRPVpIUdLavcwtG+emnQvWx931kySwrk?=
 =?us-ascii?Q?ZrBNhjepYzJT7YI6CuQhInkOD5JKU6xV9GAS0oFMotGxDmBfKK6GpnTyXZId?=
 =?us-ascii?Q?VXRHxWlXmvq1bX173rvjJXxl+845pLQqiTTXyVpmEMu6Ah1CwZAkoT3VhZt/?=
 =?us-ascii?Q?EHC2BgLoq2/uwcz/KyuzLvot6KZWfErz40tLInhnLITPv8RPcR3K+zY0z/qP?=
 =?us-ascii?Q?i3TTvjB+ynWRQxG5HtfSF+oa4zIxuFiH4guCIcwr6QydXcafX5DD2QFG6DDv?=
 =?us-ascii?Q?9is9S+f0+u0mQtBCNyyIyUfY7MkL+/Bg4M87yDiXFbGSkRwhp1EGhhk8wfSE?=
 =?us-ascii?Q?rHbFelbdnrw80qp59FRYH5o7Mg/vWDep/I5e8UYUlhWPzCyy+WoXTnjgUW2X?=
 =?us-ascii?Q?XzPt2+sEJVOiZ+rDtH0oTgCum7hMpo97s0M35Xu3wg9MLSWCyrkz3Ai3H8Wg?=
 =?us-ascii?Q?3Ir2Ad35BKiiQi/EYTNv+Z+WtllXowmlOwRD8C22T9k8OggiRcj2CFPESO4k?=
 =?us-ascii?Q?IAhBjgABr0pwB6M+q6WrZ23J+Ah15rSM+9pcq/niPVfw1E6X/xlWLadcqGMT?=
 =?us-ascii?Q?TJf6+J1N/ktZzLijjxySYvnWYPVIDFJNlPl/aOeWO/Lr9uRbh4ylJoVwS37b?=
 =?us-ascii?Q?2iyttygqKMxkqkWIRwwvZj4aL8U7pDwJNsNz6kJGd1K/6PLR6PCRh9fPlmDk?=
 =?us-ascii?Q?Gl5QJ8FB2kVryFQ7vMvB6IPJaNLhaEpqlAfVMlJ282Ti53o1PAxXWrlQOdSH?=
 =?us-ascii?Q?xgvx2TcIeVWtkHTMcePsH8n0hY6zFQdWQvyhe8nsjvhtD644ZUDku0Ev/sqH?=
 =?us-ascii?Q?zZhUxaMWhmJrCpVLuZtQbhhbDvSrxCqMzv9RFSdhi2TBqSNEyGfsvu85nzGR?=
 =?us-ascii?Q?wp2EyQxqjmAANBzYOaPKBz/Pr6oWGODnIdEOZDXJKa72roCwQn7TcUZJo3Zd?=
 =?us-ascii?Q?D21Vtdktt+1Tu5V1jgsDCdbPBn3Az+Po1I+EDwE9kFqj6DIHFWtGRtIF5HFC?=
 =?us-ascii?Q?YImrCg58iBR8DWD8IIzy0Aqk82YTeRU3SY3q5WeqEIHsGZPmLMn8YV5KlxyX?=
 =?us-ascii?Q?K8DxkoB4BcoPw66Bx6ekJQcoWWULXZE2w7yPROrCWh7VA/kafrykWNbLAqc6?=
 =?us-ascii?Q?xJDTqyCCmQbC5XTlUbcQXHyL8FfJ6upLWoKHOZFmG+G1FX9jmRMXtIWIn5j3?=
 =?us-ascii?Q?HA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e2322397-4375-4c16-7951-08dbb5429030
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 16:49:29.5645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RO5k3FyGf6hRYk1UyAV4WEtcJ7XTkJ+MixahcplSUUk2QPq/PviKApfA1iuGSVM5zRWoczTmG4lkM1I0QJy+U8/PB/iFQWdYs/S0Oycquk4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6566
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Added Wa_18022495364
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 14, 2023 at 07:17:24PM +0530, Dnyaneshwar Bhadane wrote:
> Set the instruction and state cache invalidate bit using INDIRECT_CTX on
> every gpu context switch. 
> The goal of this workaround is to actually perform an explicit
> invalidation of that cache (by re-writing the register) during every GPU
> context switch, which is accomplished via a "workaround batchbuffer"
> that's attached to the context via INDIRECT_CTX. (Matt)
> BSpec: 11354
> 
> v2:
> - Removed extra parentheses from the condition (Lucas)
> - Fixed spacing and new line (Lucas)
> 
> v3:
> - Fixed commit message.
> 
> v4:
> - Only GEN12 changes are kept  (Matt Ropper)
> - Fixed the commit message for r-b (Matt Ropper)
> - Renamed the register bit in define
> 
> v5:
> - Moved out the  from golden context init (Matt Roper)
> - Use INDIRECT_CTX to set bit on each GPU context switch (Matt Roper)
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> 
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h |  2 ++
>  drivers/gpu/drm/i915/gt/intel_lrc.c     | 15 +++++++++++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0e4c638fcbbf..38f02ef8ed01 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -164,6 +164,8 @@
>  #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
>  #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
>  #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
> +#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
> +#define   INSTRUCTION_STATE_CACHE_INVALIDATE	REG_BIT(6)
>  
>  #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
>  #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 967fe4d77a87..fe98039499c5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1332,6 +1332,15 @@ dg2_emit_draw_watermark_setting(u32 *cs)
>  	return cs;
>  }
>  
> +static u32 *
> +gen12_set_instruction_state_cache_invalid(u32 *cs)

Minor nitpick:  I'd name this "gen12_invalidate_state_cache."  The
general terminology with caches is that we "invalidate" them rather than
"set invalid," and that also matches the terminology used by the
register bit itself.

> +{
> +	*cs++ = MI_LOAD_REGISTER_IMM(1);
> +	*cs++ = i915_mmio_reg_offset(GEN12_CS_DEBUG_MODE2);
> +	*cs++ = _MASKED_BIT_ENABLE(INSTRUCTION_STATE_CACHE_INVALIDATE);
> +	return cs;
> +}
> +
>  static u32 *
>  gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>  {
> @@ -1345,6 +1354,12 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>  
>  	cs = gen12_emit_aux_table_inv(ce->engine, cs);
>  
> +	/* Wa_18022495364 */
> +	if (IS_ALDERLAKE_P(ce->engine->i915) || IS_ALDERLAKE_P_N(ce->engine->i915) ||

ADL-N is defined as a subplatform of ADL-P in the driver, so ADL-N
platforms will automatically be matched by the IS_ALDERLAKE_P; you don't
need the IS_ALDERLAKE_P_N condition here (that's only for the rare
places where we want to match ADL-N specifically _without_ matching
other ADL-P platforms as well).

> +	    IS_ALDERLAKE_S(ce->engine->i915) || IS_TIGERLAKE(ce->engine->i915) ||
> +		IS_ROCKETLAKE(ce->engine->i915) || IS_DG1(ce->engine->i915))

Since this workaround winds up applying to every single gen12lp platform, it's
probably simpler to just write the condition as

    if (IS_GFX_GT_IP_RANGE(cs->engine->i915), IP_VER(12, 0), IP_VER(12, 10))


Matt

> +		cs = gen12_set_instruction_state_cache_invalid(cs);
> +
>  	/* Wa_16014892111 */
>  	if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>  	    IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
