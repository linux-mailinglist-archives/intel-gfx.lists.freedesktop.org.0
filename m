Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 037446FF16B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 14:20:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F7DB10E0A6;
	Thu, 11 May 2023 12:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D3510E0A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 12:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683807609; x=1715343609;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YRvicqCzow1xjI25mB/GYeXw+kzJGW/cmk54qeNv2hQ=;
 b=msbsGl5ETfJBCvMk2fLaUFmDgGXz/Nm3wQCW3Cl8B7bgj8hCXTu3Vvb9
 wQ6EnD3dlG9mEty8LVCypZ3btqFFCKScNc4+xPeXgisxREZq/9FHsWn3X
 Tupm2IJYC5J344C0sZR7uQCuV8CaevTKDXxkYOvjfToYRj7G42tDJZRd3
 UJbYYeuD/Mk/cLH1SgmJUGf0TTUbFJVjKcfkQLe/1+0d170KgFUU+oS88
 zJpOexSPm+vHEEykfiinwKcXANsCl8pyGiIld2Yi4eIGRkRAGYzIXnueW
 nYzn4BExyBylb7pukI5rOgzlP5I+5e68ehScLMrX3lM1S5r1tsC2BYpd/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="347953529"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="347953529"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 05:20:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="811570185"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="811570185"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 11 May 2023 05:20:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 May 2023 15:20:05 +0300
Date: Thu, 11 May 2023 15:20:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFzddTOx2QciRfXE@intel.com>
References: <20230511090427.809243-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230511090427.809243-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: drop dependency on
 VLV_DISPLAY_BASE
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

On Thu, May 11, 2023 at 12:04:27PM +0300, Jani Nikula wrote:
> CHV_FUSE_GT (0x182168) is purely about GT fuses, therefore belongs in
> intel_gt_regs.h, is in the gcfgmmio unit, but is technically in the VLV
> display base area.
> 
> Use the 0x182168 MMIO address directly to drop dependency on
> VLV_DISPLAY_BASE and thus display/intel_display_reg_defs.h in
> intel_gt_regs.h.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index b8a39c219b60..f38550dae6b8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -7,7 +7,6 @@
>  #define __INTEL_GT_REGS__
>  
>  #include "i915_reg_defs.h"
> -#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
>  
>  /*
>   * The perf control registers are technically multicast registers, but the
> @@ -1469,7 +1468,7 @@
>  #define GEN12_RCU_MODE				_MMIO(0x14800)
>  #define   GEN12_RCU_MODE_CCS_ENABLE		REG_BIT(0)
>  
> -#define CHV_FUSE_GT				_MMIO(VLV_DISPLAY_BASE + 0x2168)
> +#define CHV_FUSE_GT				_MMIO(0x182168)

Or mmaybe s/VLV_DISPLAY_BASE/VLV_GUNIT_BASE/ here? Although all the
other Gunit register defintions are still in i915_reg.h, and using
VLV_DISPLAY_BASE. Not sure what to do about all that...

>  #define   CHV_FGT_DISABLE_SS0			(1 << 10)
>  #define   CHV_FGT_DISABLE_SS1			(1 << 11)
>  #define   CHV_FGT_EU_DIS_SS0_R0_SHIFT		16
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
