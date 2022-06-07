Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 056CE540294
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 17:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E75B310E41B;
	Tue,  7 Jun 2022 15:35:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B79E10E41B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 15:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654616110; x=1686152110;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=A0gBStym3npcZLLaIx9VSvCu+fRoszSMdatmEVSPUic=;
 b=fbn/xGps1MANetVYVTcH39DdXIRoZZg/MMjLUQ/Ho3ddNtpgGajUtthD
 LRqqK3UcAd07NulqLQ+fel2Yj2wDQD5hROWGL2jg+wXmMa2UbnhfLP1yB
 JRBHF6aBiumrj5XWcPqlPkFbab6RbFFhKc+tKUnP0XsSvP7LFw/1HPrUu
 CY/H3GyVPRpUDtUm50k+VOcy4oE+ufv5axsyliGncYR19OHz9Yie5rHfG
 IZAB8GSaD7MtnIkTMYDRxqfFg5jdbCiQe2/uzXUiUb/0CJmY7HiFxuzJS
 jsd1hbq0YUvzYtjDGVov8Q4s7TDHXIlazjB/qVnE86y38CLPO5kW57ihc g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="302088429"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="302088429"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 08:35:10 -0700
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="826409545"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 08:35:10 -0700
Date: Tue, 7 Jun 2022 08:35:08 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <Yp9wLIgyLNkHFzM0@mdroper-desk1.amr.corp.intel.com>
References: <=20220606060324.1618-1-anshuman.gupta@intel.com>
 <20220607104542.8559-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220607104542.8559-1-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add Wa_14015795083
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

On Tue, Jun 07, 2022 at 04:15:42PM +0530, Anshuman Gupta wrote:
> i915 must disable Render DOP clock gating globally.
> 
> v2:
> - Addressed cosmetic review comments.
> 
> Bspec: 52621
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 6aa1ceaa8d27..c8129a351731 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -631,6 +631,7 @@
>  
>  #define GEN7_MISCCPCTL				_MMIO(0x9424)
>  #define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
> +#define   GEN12_DOP_CLOCK_GATE_RENDER_ENABLE	REG_BIT(1)
>  #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
>  #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
>  #define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 6e875d4f5f65..1e7ca3863f20 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1486,6 +1486,9 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	 * performance guide section.
>  	 */
>  	wa_write_or(wal, GEN12_SQCM, EN_32B_ACCESS);
> +
> +	/* Wa_14015795083 */
> +	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>  }
>  
>  static void
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
