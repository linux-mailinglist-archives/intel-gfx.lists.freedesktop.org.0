Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D29AB556DBB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 23:10:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CA9D10E286;
	Wed, 22 Jun 2022 21:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4AC610E286
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 21:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655932238; x=1687468238;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=32+CMNucY7L6ZyCYW3crbIi5O4Qs3yO5Qb3DbaAGLF8=;
 b=oGlulnrxZX6zgOmQRqz0N9UW1+fpMMjmGK/+6d4LBdrOjM9VnDrJa6xm
 WGSr07eikIaaT08X169fzvw0m7rxv7z1DO1MEDuR5J0Cdvb5QWuiVPClD
 uEtkGCfWzSHsGE+ONizQ5XPDdzFhZfzGLAZRGJ4OItIi+AddkRVgfos2Q
 LNBNX6cuZKcuLT2tqOlP2dIcyUsWOdqmlRWf9fFjIl16kKcVWyhpqh37j
 xOXve66Umz4TLnM3/ihkGzODiHWLtV4XDfBoBDYl+WGwiaFDRSwzia7Ag
 3NP2GdD+WRxGFtWix6gXc8U27QM7krrkCDLFWe05we1YICHBuxxouYxak w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="260365606"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="260365606"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 14:10:37 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="690699917"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 14:10:36 -0700
Date: Wed, 22 Jun 2022 14:10:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <YrOFS6sfYNBViJbL@mdroper-desk1.amr.corp.intel.com>
References: <20220622183836.13825-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220622183836.13825-1-lionel.g.landwerlin@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add performance workaround
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 22, 2022 at 09:38:36PM +0300, Lionel Landwerlin wrote:
> This is the recommended value for optimal performance.
> 
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 07ef111947b8c..a50b5790e434e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1112,6 +1112,9 @@
>  #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
>  
>  #define RT_CTRL					_MMIO(0xe530)
> +#define   NUMBER_OF_STACKIDS_512		(2 << 5)
> +#define   NUMBER_OF_STACKIDS_1024		(1 << 5)
> +#define   NUMBER_OF_STACKIDS_2048		(0 << 5)

Preferred notation these days would be to use REG_* macros.  I.e.,

   #define   NUMBER_OF_STACKIDS        REG_GENMASK(6, 5)
   #define   NUMBER_OF_STACKIDS_512    REG_FIELD_PREP(NUMBER_OF_STACKIDS, 0x2)

It's also probably not worth defining the other values that we're not
using.  If we wind up needing one of them on a future platform, we'll
want to double check at that point anyway to make sure the meaning
hasn't changed.

>  #define   DIS_NULL_QUERY			REG_BIT(10)
>  
>  #define EU_PERF_CNTL1				_MMIO(0xe558)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3213c593a55f4..a8a389d36986c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2106,6 +2106,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		 * performance guide section.
>  		 */
>  		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
> +
> +                /* Wa_18019455067:dg2 / BSpec 68331/54402 */

Generally we just stick the bspec page numbers in the commit message
above the Signed-off-by line and don't put them in the code itself.

> +                wa_write_or(wal, RT_CTRL, NUMBER_OF_STACKIDS_512);

This will bit-wise OR the STACKIDS_512 into register's existing value.
Since the hardware default for the field is 0 that would probably work
out okay in this case, but in general when we need to change the value
of a multi-bit field we want to define the workaround in a way that will
clear all bits of the field before OR'ing in the new value so that you
don't wind up with any leftover garbage.  You can do that with

        wa_write_clr_set(wal, RT_CTRL, NUMBER_OF_STACKIDS,
                         NUMBER_OF_STACKIDS_512);

Looks like there might be some whitespace issues here too (spaces
where we should have tabs according to the kernel coding style).


Matt

>  	}
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
> -- 
> 2.32.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
