Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 589693FF53D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 23:01:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8181C6E083;
	Thu,  2 Sep 2021 21:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CA376E083
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 21:01:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="216105776"
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="216105776"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 14:01:11 -0700
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="429363054"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 14:01:10 -0700
Date: Thu, 2 Sep 2021 14:01:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
Message-ID: <20210902210109.GQ461228@mdroper-desk1.amr.corp.intel.com>
References: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
 <20210902185635.290538-6-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210902185635.290538-6-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V4 5/6] drm/i915/gt: Initialize L3CC table
 in mocs init
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

On Fri, Sep 03, 2021 at 12:26:34AM +0530, Ayaz A Siddiqui wrote:
> From: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
> 
> Initialize the L3CC table as part of mocs initialization to program
> LNCFCMOCSx registers so that the mocs settings are available for
> selection for subsequent memory transactions in the driver load path.
> 
> Apart from the above requirement, this patch is also needed for platforms
> which does not have any renderer engine.
> We have verified that value programmed LNCFCMOCSx is retained for
> XEHP-SDV, while we lose those values for DG1/TGL.

Just FYI, I believe the difference here isn't the platform itself, but
rather GuC vs execlists.  With GuC submission (currently enabled by
default on XeHP and beyond), the LNCFMOCS registers are added to the
GuC's save/restore list (in guc_mmio_regset_init()) so that they're
always saved/restored across resets without any special action by i915.
But when we're using execlists, as is the default on TGL and (for now)
DG1, the driver needs to explicitly re-write the registers after a
reset, which is what the call inside intel_mocs_init_engine() takes care
of.

You might want to clarify that slightly in the commit message, but
otherwise

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Signed-off-by: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 0fdadefdabc29..df8aa761d2d7f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -481,10 +481,9 @@ static u32 l3cc_combine(u16 low, u16 high)
>  	     0; \
>  	     i++)
>  
> -static void init_l3cc_table(struct intel_engine_cs *engine,
> +static void init_l3cc_table(struct intel_uncore *uncore,
>  			    const struct drm_i915_mocs_table *table)
>  {
> -	struct intel_uncore *uncore = engine->uncore;
>  	unsigned int i;
>  	u32 l3cc;
>  
> @@ -509,7 +508,7 @@ void intel_mocs_init_engine(struct intel_engine_cs *engine)
>  		init_mocs_table(engine, &table);
>  
>  	if (flags & HAS_RENDER_L3CC && engine->class == RENDER_CLASS)
> -		init_l3cc_table(engine, &table);
> +		init_l3cc_table(engine->uncore, &table);
>  }
>  
>  static u32 global_mocs_offset(void)
> @@ -536,6 +535,14 @@ void intel_mocs_init(struct intel_gt *gt)
>  	flags = get_mocs_settings(gt->i915, &table);
>  	if (flags & HAS_GLOBAL_MOCS)
>  		__init_mocs_table(gt->uncore, &table, global_mocs_offset());
> +
> +	/*
> +	 * Initialize the L3CC table as part of mocs initalization to make
> +	 * sure the LNCFCMOCSx registers are programmed for the subsequent
> +	 * memory transactions including guc transactions
> +	 */
> +	if (flags & HAS_RENDER_L3CC)
> +		init_l3cc_table(gt->uncore, &table);
>  }
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
