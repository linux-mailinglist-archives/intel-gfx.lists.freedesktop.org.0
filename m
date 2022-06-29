Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E0B560C2E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 00:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A183010E88D;
	Wed, 29 Jun 2022 22:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB3310E7FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 22:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656540971; x=1688076971;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qxvdHWnphOfhoxuhuwpyfuqhudkIiYaXkah1COCYVmo=;
 b=hQRR1+tsxrQh+BceaaYuNvwqmhuEsDFk9EM00vNvCwPWgCGJhpRka53J
 0n8NfzlGYzObJOKMItEbK+nMY80lkZmk9t5fi6XxLgpMfSx99rN3vjTKg
 7oqJBEZrZtcu+OCH4+w+CZwads1KnMvuIsdgcu0g2XoSM4r3d3LOv+EEc
 BGVlr14ZWMFNBOtMrxz9EMABcUUzl+TH0FiCQfaJL+OVZBfhDHws0/zfa
 scR4/EbO9ijNNO2ih+GYifSylNFVhf1JNuPFIusgJ0YBXGtY4bPDGIuOc
 L1+ZCw13hjd8wGCVPKRDu28w4CSUit0DWPjSYxrH2Zg+SzVJHRrwLkkq4 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="265210711"
X-IronPort-AV: E=Sophos;i="5.92,232,1650956400"; d="scan'208";a="265210711"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 15:16:10 -0700
X-IronPort-AV: E=Sophos;i="5.92,232,1650956400"; d="scan'208";a="623473963"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 15:16:10 -0700
Date: Wed, 29 Jun 2022 15:16:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <YrzPKae38BnFCDcU@mdroper-desk1.amr.corp.intel.com>
References: <20220627125928.177845-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220627125928.177845-1-lionel.g.landwerlin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add performance workaround
 18019455067
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

On Mon, Jun 27, 2022 at 03:59:28PM +0300, Lionel Landwerlin wrote:
> The recommended number of stackIDs for Ray Tracing subsystem is 512
> rather than 2048 (default HW programming).
> 
> v2: Move the programming to dg2_ctx_gt_tuning_init() (Lucas)

I'm not sure this is actually the correct move.  As far as I can see on
bspec 46261, RT_CTRL isn't part of the engine's context, so we need to
make sure it gets added to engine->wa_list instead of
engine->ctx_wa_list, otherwise it won't be properly re-applied after
engine resets and such.  Most of our other tuning values are part of the
context image, so this one is a bit unusual.

To get it onto the engine->wa_list, the workaround needs to either be
defined via rcs_engine_wa_init() or general_render_compute_wa_init().
The latter is the new, preferred location for registers that are part of
the render/compute reset domain, but that don't live in the RCS engine's
0x2xxx MMIO range (since all RCS and CCS engines get reset together, the
items in general_render_compute_wa_init() will make sure it's dealt with
as part of the handling for the first RCS/CCS engine, so that we won't
miss out on applying it if the platform doesn't have an RCS).

At the moment we don't have too many "tuning" values that we need to set
that aren't part of an engine's context, so we don't yet have a
dedicated "tuning" function for engine-style workarounds like we do with
ctx-style workarounds.


Matt

> 
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 07ef111947b8c..12fc87b957425 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1112,6 +1112,10 @@
>  #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
>  
>  #define RT_CTRL					_MMIO(0xe530)
> +#define   RT_CTRL_NUMBER_OF_STACKIDS_MASK	REG_GENMASK(6, 5)
> +#define   NUMBER_OF_STACKIDS_512		2
> +#define   NUMBER_OF_STACKIDS_1024		1
> +#define   NUMBER_OF_STACKIDS_2048		0
>  #define   DIS_NULL_QUERY			REG_BIT(10)
>  
>  #define EU_PERF_CNTL1				_MMIO(0xe558)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3213c593a55f4..4d80716b957d4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -575,6 +575,11 @@ static void dg2_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>  	       FF_MODE2_TDS_TIMER_MASK,
>  	       FF_MODE2_TDS_TIMER_128,
>  	       0, false);
> +	wa_write_clr_set(wal,
> +			 RT_CTRL,
> +			 RT_CTRL_NUMBER_OF_STACKIDS_MASK,
> +			 REG_FIELD_PREP(RT_CTRL_NUMBER_OF_STACKIDS_MASK,
> +					NUMBER_OF_STACKIDS_512));
>  }
>  
>  /*
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
