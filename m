Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 213B26B05AE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 12:18:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BC5010E5B9;
	Wed,  8 Mar 2023 11:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 419DA10E07E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678274302; x=1709810302;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/XOy2woP0Ee7e7V2fFzqEubVXey+DtnoRYQJlLezHe0=;
 b=NuZ7eZBWH21aTZvMas7C+t/Y/D6mJQR4sV/2K8CKe1dkvn1js6CAuJNf
 cin7FSWLk+02qMW5R7VA5V5MKlLDuuJlWVgyP4WKwNQjp7jn5a70CkNuA
 qDvUaYNhHrYZlByBYv60O1Doc14HKflY+URr0nXFr8XGIkevZmG2xv5ZM
 aZJ7raDRekBa9LYH/fUPg8GY52HJ5ctirDBtovpUEEwrJqp9dYGyKBZa4
 DzA88NyurXCyI2wZ/Ik5I82AjigKVcVbXCsAMDPNy1C4EJrVwKoPN9q8Z
 01+GFulgYBiYLjnmBHj1ayUpcAtfO12ig/erAqQKoQYXPdTPphJFtRp+O Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="319959231"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="319959231"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 03:18:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="670299031"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="670299031"
Received: from eharan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.177])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 03:18:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230308102109.2386712-2-badal.nilawar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230308102109.2386712-1-badal.nilawar@intel.com>
 <20230308102109.2386712-2-badal.nilawar@intel.com>
Date: Wed, 08 Mar 2023 13:18:15 +0200
Message-ID: <871qlzcwzs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/mtl: Add
 Wa_14017073508 for SAMedia"
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
Cc: gregory.f.germano@intel.com, hima.b.chilmakuru@intel.com,
 srikanth.nandamuri@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Mar 2023, Badal Nilawar <badal.nilawar@intel.com> wrote:
> This reverts commit 8f70f1ec587da0b0d52d768fd8c3defbc5e5b55c.

Reverts need a commit message too. The why. The cover letter is not
recorded in git history.

BR,
Jani.

> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 27 -----------------------
>  drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c | 13 +----------
>  drivers/gpu/drm/i915/i915_reg.h           |  9 --------
>  3 files changed, 1 insertion(+), 48 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index 85ae7dc079f2..e02cb90723ae 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -20,31 +20,10 @@
>  #include "intel_rc6.h"
>  #include "intel_rps.h"
>  #include "intel_wakeref.h"
> -#include "intel_pcode.h"
>  #include "pxp/intel_pxp_pm.h"
>  
>  #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
>  
> -static void mtl_media_busy(struct intel_gt *gt)
> -{
> -	/* Wa_14017073508: mtl */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> -	    gt->type == GT_MEDIA)
> -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> -				  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
> -				  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> -}
> -
> -static void mtl_media_idle(struct intel_gt *gt)
> -{
> -	/* Wa_14017073508: mtl */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> -	    gt->type == GT_MEDIA)
> -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> -				  PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
> -				  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> -}
> -
>  static void user_forcewake(struct intel_gt *gt, bool suspend)
>  {
>  	int count = atomic_read(&gt->user_wakeref);
> @@ -92,9 +71,6 @@ static int __gt_unpark(struct intel_wakeref *wf)
>  
>  	GT_TRACE(gt, "\n");
>  
> -	/* Wa_14017073508: mtl */
> -	mtl_media_busy(gt);
> -
>  	/*
>  	 * It seems that the DMC likes to transition between the DC states a lot
>  	 * when there are no connected displays (no active power domains) during
> @@ -144,9 +120,6 @@ static int __gt_park(struct intel_wakeref *wf)
>  	GEM_BUG_ON(!wakeref);
>  	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
>  
> -	/* Wa_14017073508: mtl */
> -	mtl_media_idle(gt);
> -
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> index fcf51614f9a4..1adec6de223c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> @@ -12,20 +12,9 @@
>  
>  static bool __guc_rc_supported(struct intel_guc *guc)
>  {
> -	struct intel_gt *gt = guc_to_gt(guc);
> -
> -	/*
> -	 * Wa_14017073508: mtl
> -	 * Do not enable gucrc to avoid additional interrupts which
> -	 * may disrupt pcode wa.
> -	 */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> -	    gt->type == GT_MEDIA)
> -		return false;
> -
>  	/* GuC RC is unavailable for pre-Gen12 */
>  	return guc->submission_supported &&
> -		GRAPHICS_VER(gt->i915) >= 12;
> +		GRAPHICS_VER(guc_to_gt(guc)->i915) >= 12;
>  }
>  
>  static bool __guc_rc_selected(struct intel_guc *guc)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index f2ce4bde6a68..b177cdeee1ec 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6469,15 +6469,6 @@
>  /*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
>  #define     PCODE_MBOX_DOMAIN_NONE		0x0
>  #define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
> -
> -/* Wa_14017210380: mtl */
> -#define   PCODE_MBOX_GT_STATE			0x50
> -/* sub-commands (param1) */
> -#define     PCODE_MBOX_GT_STATE_MEDIA_BUSY	0x1
> -#define     PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY	0x2
> -/* param2 */
> -#define     PCODE_MBOX_GT_STATE_DOMAIN_MEDIA	0x1
> -
>  #define GEN6_PCODE_DATA				_MMIO(0x138128)
>  #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
>  #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16

-- 
Jani Nikula, Intel Open Source Graphics Center
