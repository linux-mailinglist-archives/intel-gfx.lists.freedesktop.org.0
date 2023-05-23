Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D94870DA07
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 12:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3429D10E422;
	Tue, 23 May 2023 10:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E4810E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 10:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684836640; x=1716372640;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=1hIX0XhIC82gHSNzFRFmV3AjlUSmIiFazNaio01wFWg=;
 b=CxtUeRCM326gFVq+Cxq06FGOD6I/rtc4h3aLaCcRxM7ychKmQqGsB+s4
 /nWT882K9/IOZokAr2TMwON9zoM7I/5HOY7cgQivrPeJZCxVZYkn9CSM+
 kBh6q5y7YQJu+tZt9GvFMiC/9//9TcgK35Ag9r2jtKsVc3A76ZChDudB1
 d2lWWmUM4BEbzZa2MExPKk6PxOvDx9lyM5eZEZh6kN7GFibDOASPXc6WM
 2BvgOI2El6R9VQ5cHGzQ9R6qri24MTJ5S+65PyUp+ffjSD4EkyPhJpelv
 qaxIULbhHThjZChB3pBd2wEGLohfMGGHmAIqjgML9DRJ6WLlXdaUhRJHY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="350703294"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="350703294"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:10:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="734696123"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="734696123"
Received: from chauvina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.70])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:10:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230518094916.1142812-2-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230518094916.1142812-1-arun.r.murthy@intel.com>
 <20230518094916.1142812-2-arun.r.murthy@intel.com>
Date: Tue, 23 May 2023 13:10:36 +0300
Message-ID: <871qj7mk83.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display: global histogram irq
 handler
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

On Thu, 18 May 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> With the enablement of global histogram, upon generation of histogram,
> an interrupt is triggered. This patch handles the irq.
>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

This needs a rebase I think.

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 6 +++++-
>  drivers/gpu/drm/i915/i915_reg.h | 5 +++--
>  2 files changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index e28bfb5f7347..d72fb6d9282d 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -43,6 +43,7 @@
>  #include "display/intel_hotplug.h"
>  #include "display/intel_lpe_audio.h"
>  #include "display/intel_psr.h"
> +#include "display/intel_global_hist.h"
>  
>  #include "gt/intel_breadcrumbs.h"
>  #include "gt/intel_gt.h"
> @@ -2765,6 +2766,9 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  		ret = IRQ_HANDLED;
>  		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe), iir);
>  
> +		if (iir & GEN9_PIPE_GLOBAL_HIST_EVENT)
> +			intel_global_hist_irq_handler(dev_priv, pipe);
> +
>  		if (iir & GEN8_PIPE_VBLANK)
>  			intel_handle_vblank(dev_priv, pipe);
>  
> @@ -5043,7 +5047,7 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
>  	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
> -		GEN8_PIPE_CDCLK_CRC_DONE;
> +		GEN8_PIPE_CDCLK_CRC_DONE | GEN9_PIPE_GLOBAL_HIST_EVENT;
>  	u32 de_pipe_enables;
>  	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
>  	u32 de_port_enables;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 94d0c8d14d43..546207ac4859 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3887,7 +3887,7 @@
>  #define   PIPE_HOTPLUG_INTERRUPT_ENABLE		(1UL << 26)
>  #define   PIPE_VSYNC_INTERRUPT_ENABLE		(1UL << 25)
>  #define   PIPE_DISPLAY_LINE_COMPARE_ENABLE	(1UL << 24)
> -#define   PIPE_DPST_EVENT_ENABLE		(1UL << 23)
> +#define   PIPE_GLOBAL_HIST_EVENT_ENABLE		(1UL << 23)
>  #define   SPRITE0_FLIP_DONE_INT_EN_VLV		(1UL << 22)
>  #define   PIPE_LEGACY_BLC_EVENT_ENABLE		(1UL << 22)
>  #define   PIPE_ODD_FIELD_INTERRUPT_ENABLE	(1UL << 21)
> @@ -3910,7 +3910,7 @@
>  #define   PIPE_HOTPLUG_INTERRUPT_STATUS		(1UL << 10)
>  #define   PIPE_VSYNC_INTERRUPT_STATUS		(1UL << 9)
>  #define   PIPE_DISPLAY_LINE_COMPARE_STATUS	(1UL << 8)
> -#define   PIPE_DPST_EVENT_STATUS		(1UL << 7)
> +#define   PIPE_GLOBAL_HIST_EVENT_STATUS		(1UL << 7)
>  #define   PIPE_A_PSR_STATUS_VLV			(1UL << 6)
>  #define   PIPE_LEGACY_BLC_EVENT_STATUS		(1UL << 6)
>  #define   PIPE_ODD_FIELD_INTERRUPT_STATUS	(1UL << 5)
> @@ -5815,6 +5815,7 @@
>  #define  GEN8_PIPE_VSYNC		(1 << 1)
>  #define  GEN8_PIPE_VBLANK		(1 << 0)
>  #define  GEN9_PIPE_CURSOR_FAULT		(1 << 11)
> +#define  GEN9_PIPE_GLOBAL_HIST_EVENT	(1 << 12)
>  #define  GEN11_PIPE_PLANE7_FAULT	(1 << 22)
>  #define  GEN11_PIPE_PLANE6_FAULT	(1 << 21)
>  #define  GEN11_PIPE_PLANE5_FAULT	(1 << 20)

-- 
Jani Nikula, Intel Open Source Graphics Center
