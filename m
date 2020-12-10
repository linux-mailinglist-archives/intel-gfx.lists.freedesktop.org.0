Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B052D5850
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 11:38:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22D286EA6A;
	Thu, 10 Dec 2020 10:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2376EA6A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 10:38:25 +0000 (UTC)
IronPort-SDR: zMb56AAjCVT+DzqYYItnanUF+KIKe1eknMvw6OtPuFhn0dEUuBe/TJJislaZQ3cZP5g5dJF0pj
 8b6TvWYT4uSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="153468079"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="153468079"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 02:38:24 -0800
IronPort-SDR: i+n+ms7v5tI5n/v/1d3sK+WFbpK0S93q6ffGItqj19ue8i0ayF8YM4C+gdVXMbn7p8/vxlV/BF
 a5x/Cd/wpowg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="364569272"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 10 Dec 2020 02:38:23 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 326305C201A; Thu, 10 Dec 2020 12:36:07 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201209134231.961-1-chris@chris-wilson.co.uk>
References: <20201209134231.961-1-chris@chris-wilson.co.uk>
Date: Thu, 10 Dec 2020 12:36:07 +0200
Message-ID: <87k0tqlzhk.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Rearrange snb workarounds
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Some rcs0 workarounds were being incorrectly applied to the GT, and so
> we failed to restore the expected register settings after a reset.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 67 ++++++++++-----------
>  1 file changed, 33 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b5339a36d256..50cfe82f18a9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -823,40 +823,6 @@ ilk_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  static void
>  snb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  {
> -	/* WaDisableHiZPlanesWhenMSAAEnabled:snb */
> -	wa_masked_en(wal,
> -		     _3D_CHICKEN,
> -		     _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB);
> -
> -	/* WaDisable_RenderCache_OperationalFlush:snb */
> -	wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
> -
> -	/*
> -	 * BSpec recommends 8x4 when MSAA is used,
> -	 * however in practice 16x4 seems fastest.
> -	 *
> -	 * Note that PS/WM thread counts depend on the WIZ hashing
> -	 * disable bit, which we don't touch here, but it's good
> -	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
> -	 */
> -	wa_add(wal,
> -	       GEN6_GT_MODE, 0,
> -	       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
> -	       GEN6_WIZ_HASHING_16x4);
> -
> -	wa_masked_dis(wal, CACHE_MODE_0, CM0_STC_EVICT_DISABLE_LRA_SNB);

Where did this go?
-Mika

> -
> -	wa_masked_en(wal,
> -		     _3D_CHICKEN3,
> -		     /* WaStripsFansDisableFastClipPerformanceFix:snb */
> -		     _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL |
> -		     /*
> -		      * Bspec says:
> -		      * "This bit must be set if 3DSTATE_CLIP clip mode is set
> -		      * to normal and 3DSTATE_SF number of SF output attributes
> -		      * is more than 16."
> -		      */
> -		   _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH);
>  }
>  
>  static void
> @@ -2008,6 +1974,39 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			     GFX_MODE,
>  			     GFX_TLB_INVALIDATE_EXPLICIT);
>  
> +		/* WaDisableHiZPlanesWhenMSAAEnabled:snb */
> +		wa_masked_en(wal,
> +			     _3D_CHICKEN,
> +			     _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB);
> +
> +		wa_masked_en(wal,
> +			     _3D_CHICKEN3,
> +			     /* WaStripsFansDisableFastClipPerformanceFix:snb */
> +			     _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL |
> +			     /*
> +			      * Bspec says:
> +			      * "This bit must be set if 3DSTATE_CLIP clip mode is set
> +			      * to normal and 3DSTATE_SF number of SF output attributes
> +			      * is more than 16."
> +			      */
> +			     _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH);
> +
> +		/*
> +		 * BSpec recommends 8x4 when MSAA is used,
> +		 * however in practice 16x4 seems fastest.
> +		 *
> +		 * Note that PS/WM thread counts depend on the WIZ hashing
> +		 * disable bit, which we don't touch here, but it's good
> +		 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
> +		 */
> +		wa_add(wal,
> +		       GEN6_GT_MODE, 0,
> +		       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
> +		       GEN6_WIZ_HASHING_16x4);
> +
> +		/* WaDisable_RenderCache_OperationalFlush:snb */
> +		wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
> +
>  		/*
>  		 * From the Sandybridge PRM, volume 1 part 3, page 24:
>  		 * "If this bit is set, STCunit will have LRA as replacement
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
