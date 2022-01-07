Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA43F487B57
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 18:25:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2212210EA5A;
	Fri,  7 Jan 2022 17:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C70AF10EA5A
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 17:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641576305; x=1673112305;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jFKSIERt2w/tfK6myq/pvQGfL46eJ2geBwy1+CW7T4c=;
 b=K6G1IzRVU6FLrhSnyDAdm/WvSsdS/Fm1/rwGr8qb+IMD5jsuZE6Z39vw
 0w5pK6r25mcCSWIhIqBYbxNBy8DIQKtvIed97VmyL7JeAU1nGCYiDK439
 duN+dN7H0THvQTIJhbdOtzMhYbVaufv6T1qosjtE6mb0WCmc+BGHtCLRv
 xWDlQDW3cJ/MmlvDEONU521QqmogTkb1Q5S9DWQ44y6sRprO2f5urCxT8
 fvSV5Z3j9ItEU9oBcz5MBsUhXmM1zQ5kKgXHaEBjNAjAoTc0gq9SZbHuT
 7dj6pE0CisCtNlCQLNRoGxUpIxaZud8nPFUxlVhko4IqJDQa9iU8CcwPc g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="243101515"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="243101515"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 09:24:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="618754501"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 09:24:56 -0800
Date: Fri, 7 Jan 2022 09:24:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Ydh3ZwPYc9h4vtuX@mdroper-desk1.amr.corp.intel.com>
References: <20220107094951.96181-1-jani.nikula@intel.com>
 <20220107094951.96181-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220107094951.96181-2-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: move VGA registers to
 intel_vga.c
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

On Fri, Jan 07, 2022 at 11:49:50AM +0200, Jani Nikula wrote:
> The only users of the VGA register macros are in intel_vga.c. Hide the
> macros there.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

It looks like only 5 of the ~30 registers here are actually used.  And
I think those could just be pulled from generic definitions in
include/video/vga.h rather than having something in i915?

E.g.,
 * VGA_MSR_WRITE -> VGA_MIS_W
 * VGA_MSR_READ -> VGA_MIS_R
 * VGA_SR_INDEX -> VGA_SEQ_I
 * SR01 -> 1
 * VGA_SR_DATA -> VGA_SEQ_D


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 41 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h          | 41 ------------------------
>  2 files changed, 41 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
> index fa779f7ea415..5801cd41eb72 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -12,6 +12,47 @@
>  #include "intel_de.h"
>  #include "intel_vga.h"
>  
> +/* VGA registers */
> +#define VGA_ST01_MDA				0x3ba
> +#define VGA_ST01_CGA				0x3da
> +
> +#define VGA_MSR_WRITE				0x3c2
> +#define VGA_MSR_READ				0x3cc
> +#define   VGA_MSR_MEM_EN			(1 << 1)
> +#define   VGA_MSR_CGA_MODE			(1 << 0)
> +
> +#define VGA_SR_INDEX				0x3c4
> +#define   SR01					1
> +#define VGA_SR_DATA				0x3c5
> +
> +#define VGA_AR_INDEX				0x3c0
> +#define   VGA_AR_VID_EN (1 << 5)
> +#define VGA_AR_DATA_WRITE			0x3c0
> +#define VGA_AR_DATA_READ			0x3c1
> +
> +#define VGA_GR_INDEX				0x3ce
> +#define VGA_GR_DATA				0x3cf
> +/* GR05 */
> +#define   VGA_GR_MEM_READ_MODE_SHIFT		3
> +#define   VGA_GR_MEM_READ_MODE_PLANE		1
> +/* GR06 */
> +#define   VGA_GR_MEM_MODE_MASK			0xc
> +#define   VGA_GR_MEM_MODE_SHIFT			2
> +#define   VGA_GR_MEM_A0000_AFFFF		0
> +#define   VGA_GR_MEM_A0000_BFFFF		1
> +#define   VGA_GR_MEM_B0000_B7FFF		2
> +#define   VGA_GR_MEM_B0000_BFFFF		3
> +
> +#define VGA_DACMASK				0x3c6
> +#define VGA_DACRX				0x3c7
> +#define VGA_DACWX				0x3c8
> +#define VGA_DACDATA				0x3c9
> +
> +#define VGA_CR_INDEX_MDA			0x3b4
> +#define VGA_CR_DATA_MDA				0x3b5
> +#define VGA_CR_INDEX_CGA			0x3d4
> +#define VGA_CR_DATA_CGA				0x3d5
> +
>  static i915_reg_t intel_vga_cntrl_reg(struct drm_i915_private *i915)
>  {
>  	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index baa0b9e6acb2..7517a2688896 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -460,48 +460,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define GEN6_STOLEN_RESERVED_ENABLE	(1 << 0)
>  #define GEN11_STOLEN_RESERVED_ADDR_MASK	(0xFFFFFFFFFFFULL << 20)
>  
> -/* VGA stuff */
> -
> -#define VGA_ST01_MDA 0x3ba
> -#define VGA_ST01_CGA 0x3da
> -
>  #define _VGA_MSR_WRITE _MMIO(0x3c2)
> -#define VGA_MSR_WRITE 0x3c2
> -#define VGA_MSR_READ 0x3cc
> -#define   VGA_MSR_MEM_EN (1 << 1)
> -#define   VGA_MSR_CGA_MODE (1 << 0)
> -
> -#define VGA_SR_INDEX 0x3c4
> -#define SR01			1
> -#define VGA_SR_DATA 0x3c5
> -
> -#define VGA_AR_INDEX 0x3c0
> -#define   VGA_AR_VID_EN (1 << 5)
> -#define VGA_AR_DATA_WRITE 0x3c0
> -#define VGA_AR_DATA_READ 0x3c1
> -
> -#define VGA_GR_INDEX 0x3ce
> -#define VGA_GR_DATA 0x3cf
> -/* GR05 */
> -#define   VGA_GR_MEM_READ_MODE_SHIFT 3
> -#define     VGA_GR_MEM_READ_MODE_PLANE 1
> -/* GR06 */
> -#define   VGA_GR_MEM_MODE_MASK 0xc
> -#define   VGA_GR_MEM_MODE_SHIFT 2
> -#define   VGA_GR_MEM_A0000_AFFFF 0
> -#define   VGA_GR_MEM_A0000_BFFFF 1
> -#define   VGA_GR_MEM_B0000_B7FFF 2
> -#define   VGA_GR_MEM_B0000_BFFFF 3
> -
> -#define VGA_DACMASK 0x3c6
> -#define VGA_DACRX 0x3c7
> -#define VGA_DACWX 0x3c8
> -#define VGA_DACDATA 0x3c9
> -
> -#define VGA_CR_INDEX_MDA 0x3b4
> -#define VGA_CR_DATA_MDA 0x3b5
> -#define VGA_CR_INDEX_CGA 0x3d4
> -#define VGA_CR_DATA_CGA 0x3d5
>  
>  #define MI_PREDICATE_SRC0	_MMIO(0x2400)
>  #define MI_PREDICATE_SRC0_UDW	_MMIO(0x2400 + 4)
> -- 
> 2.30.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
