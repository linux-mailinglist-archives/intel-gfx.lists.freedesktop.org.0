Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 591616FF5E9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 17:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F03810E4F7;
	Thu, 11 May 2023 15:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F99210E4F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 15:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683818864; x=1715354864;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xSy2tU40fjnpt8ekjH3TyS7bTk7AX9UlPnVCqeXU6d0=;
 b=WfmLrqiApyzdkoTTt2oL61ojr95zCc9YBNCqvcPYnHwEDQ6j4d6dT/Fm
 Flz2G/Wx+MgA7GHJRaXsr8VgaKTVoPa+D0s/Z/whXDzYDxTxVcfUuTsHl
 zdh7wO5YNyFwBSUJRknvgwS7pugkbN52FrwsPlh444hU04hY0Wo3U2jnk
 J4Cg7V25l2Zm6T94+SDeg+F4VmesX1A9pvbKRVq7oQ+8G+s0i5GnkiIxN
 9dVZLka21th3BeE/xzOPvMScd60N0i9fIeLo6hAdnV515wJAwJSxtxCnO
 Y3Q8xgSfSf37jxMAkr77+jTMsOKmpjezwJEzHS5ghK6DmChb6/ZCmIr1y A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="436866609"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="436866609"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 08:25:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="811656608"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="811656608"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 11 May 2023 08:25:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 May 2023 18:25:46 +0300
Date: Thu, 11 May 2023 18:25:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZF0I-oYThXJqhhbT@intel.com>
References: <20230511152153.986676-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230511152153.986676-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: drop dependency on
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

On Thu, May 11, 2023 at 06:21:53PM +0300, Jani Nikula wrote:
> CHV_FUSE_GT (0x182168) is purely about GT fuses, therefore belongs in
> intel_gt_regs.h, is in the gcfgmmio unit, but is technically in the VLV
> display base area.
> 
> Add VLV_GUNIT_BASE to drop dependency on VLV_DISPLAY_BASE and thus
> display/intel_display_reg_defs.h in intel_gt_regs.h.
> 
> v2: Add VLV_GUNIT_BASE (Ville)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index b8a39c219b60..718cb2c80f79 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -7,7 +7,8 @@
>  #define __INTEL_GT_REGS__
>  
>  #include "i915_reg_defs.h"
> -#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
> +
> +#define VLV_GUNIT_BASE			0x180000
>  
>  /*
>   * The perf control registers are technically multicast registers, but the
> @@ -1469,7 +1470,7 @@
>  #define GEN12_RCU_MODE				_MMIO(0x14800)
>  #define   GEN12_RCU_MODE_CCS_ENABLE		REG_BIT(0)
>  
> -#define CHV_FUSE_GT				_MMIO(VLV_DISPLAY_BASE + 0x2168)
> +#define CHV_FUSE_GT				_MMIO(VLV_GUNIT_BASE + 0x2168)
>  #define   CHV_FGT_DISABLE_SS0			(1 << 10)
>  #define   CHV_FGT_DISABLE_SS1			(1 << 11)
>  #define   CHV_FGT_EU_DIS_SS0_R0_SHIFT		16
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
