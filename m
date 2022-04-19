Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D90C6507301
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 18:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F79389E7C;
	Tue, 19 Apr 2022 16:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1263589E5B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 16:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650386017; x=1681922017;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ftGObLJfsVJC7+TGsDkuoCL2iS7XQ28SlB8532ojwN8=;
 b=LR9HqmoUnQbRY2wlaVb1rZXllc8evT4X8Yj7uobI5gVDpao0Bdbdu+5H
 np709ps06UpFQYIOa2w5/zqqF2G8SkmLiGFm72hBTKnse5L5HMRjz8y0a
 JRYCmEHMO3uNY2KOazno/WwN1xu7zvaueX3VZyZuPFd/7Jg2I6yzhgSyH
 jG4EhnYVMw/4d+zZi4cWvxDBjNsZPsgnYig6QiyphstXnbzWEL5vhTWRE
 +i/QABjVqHSLgGh3E7Vc5+cUTaxue+qv5lAeDCdw6Qotg5P6Ppp2PpsFY
 1+3Oy3Vaw8+oheA8Y/M+xJF4RMQMxzwWTuQ1YJGTRnVahELMocCoEACpW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263983393"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="263983393"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 09:33:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="666522147"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 09:33:35 -0700
Date: Tue, 19 Apr 2022 09:33:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <Yl7kXnUhJRgUztQx@mdroper-desk1.amr.corp.intel.com>
References: <20220419144454.173973-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220419144454.173973-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dg2: Add workaround 18019627453
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

On Tue, Apr 19, 2022 at 07:44:53AM -0700, José Roberto de Souza wrote:
> A new DG2 workaround added to some corner cases hangs.
> 
> BSpec: 54077
> BSpec: 68173
> BSpec: 71488
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0a5c2648aaf07..10db058d9038c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -368,6 +368,7 @@
>  #define   GEN9_FACTOR_IN_CLR_VAL_HIZ		(1 << 9)
>  
>  #define VFLSKPD					_MMIO(0x62a8)
> +#define   VF_PREFETCH_TLB_DIS			REG_BIT(5)
>  #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
>  #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 29c8cd0a81b6f..a1ba775bcb705 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -688,6 +688,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
>  		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
>  		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
> +
> +	/* Wa_18019627453:dg2 */

I just took a closer look at this one...it looks like the DG2-specific
version of this workaround (e.g., per-platform ID #14015981138) lists
two potential workarounds:  the prefetch TLB bit you're setting here, or
a fixed function DOP clock gate bit.  The suggestion (on DG2
specifically) is to use the DOP gate bit.  So we might want to switch
this implementation, even if other platforms wind up going with the
other option.


Matt

> +	wa_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> -- 
> 2.35.3
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
