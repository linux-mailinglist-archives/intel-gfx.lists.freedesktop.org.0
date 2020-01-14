Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6607613A0F6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 07:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61F56E264;
	Tue, 14 Jan 2020 06:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC226E264
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 06:30:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 22:30:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,431,1571727600"; d="scan'208";a="423050959"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jan 2020 22:30:56 -0800
Date: Tue, 14 Jan 2020 11:52:12 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200114062212.GB23601@intel.com>
References: <20200114041128.11211-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114041128.11211-1-matthew.s.atwood@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: add Wa_14010594013: icl,ehl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-01-13 at 23:11:28 -0500, Matt Atwood wrote:
> The bspec tells us we need to set this bit to avoid potential underruns.
> 
> v2: use new register write convention (Anshuman) add bspec 7386 ref.
> 
> Bspec: 7386
> Bspec: 33450
> Bspec: 33451
> 
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 1 +
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index cf770793be54..b9dc5e2ea606 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7785,6 +7785,7 @@ enum {
>  
>  #define GEN8_CHICKEN_DCPR_1		_MMIO(0x46430)
>  #define   SKL_SELECT_ALTERNATE_DC_EXIT	(1 << 30)
> +#define   CNL_DELAY_PMRSP		(1 << 22)
>  #define   MASK_WAKEMEM			(1 << 13)
>  #define   CNL_DDI_CLOCK_REG_ACCESS_ON	(1 << 7)
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 148ac455dfa7..de585e670496 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6610,6 +6610,10 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
>  	/* Wa_1407352427:icl,ehl */
>  	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
>  			 0, PSDUNIT_CLKGATE_DIS);
> +
> +	/*Wa_14010594013:icl, ehl */
> +	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
> +			 0, CNL_DELAY_PMRSP);
>  }
>  
>  static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
> -- 
> 2.21.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
