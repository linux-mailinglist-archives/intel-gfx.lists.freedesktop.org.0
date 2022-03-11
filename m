Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EDA4D5C4D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 08:28:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD5110E25B;
	Fri, 11 Mar 2022 07:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F0110E25B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 07:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646983734; x=1678519734;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BPiCzxYScd38VDMA59bMDXEP8f+/EeawBwezULGWU9E=;
 b=d/4u+5L9k3xFFdUQHoBnhpsGczJe0t7ZQmrqDhkmbSLvHOjcoO+O50b2
 F6ddaMjafIXNCjjKDMAgRMeerTp7pbrnhJKqJ4/TM4XrWotmNqmIsIOTH
 SSvW4VwCH9GP64DOO+mCzhWm+NEJHlT1hJLDCwGruPfxphW8/yfrxwOy+
 /UK1Zi9KFBvwwA9cOHK23IQqw/aCB88MhyJNj0esUpBzrkokXSmNzoTE/
 QV5620MXQsevN6QpYbOSSNJrvYj3WA5ydfuWTTNWsPuMGt7LCeZgk6a/m
 XP/lB/CoVZ0ZJ8F8GWwuDwXMU7ndqIQyjPArPyuu6xPp5/HIpBJbmbDTH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="341947429"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="341947429"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 23:28:50 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="555193439"
Received: from cchitora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.187])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 23:28:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311062835.163744-1-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311062835.163744-1-matthew.d.roper@intel.com>
Date: Fri, 11 Mar 2022 09:28:46 +0200
Message-ID: <87wnh1vtg1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove GEN12_SFC_DONE_MAX from
 register defs header
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

On Thu, 10 Mar 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> We shouldn't really be keeping track of how many SFC_DONE registers
> our platforms can have, but rather how many SFC hardware units there can
> be (each SFC unit will have one corresponding SFC_DONE register).  So
> drop the stray GEN12_SFC_DONE_MAX definition we had in the register
> definition file and replace it with an I915_MAX_SFC that follows the
> pattern we use for other hardware units.  Note that our hardware has a
> 2:1:1 ratio of VD:VE:SFC, and as far as we know that pattern should
> carry forward to future platforms, so we'll define it as #VCS/2.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/gt/intel_engine_types.h | 1 +
>  drivers/gpu/drm/i915/i915_gpu_error.c        | 4 ++--
>  drivers/gpu/drm/i915/i915_gpu_error.h        | 2 +-
>  drivers/gpu/drm/i915/i915_reg_defs.h         | 2 --
>  4 files changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index f9e246004bc0..eac20112709c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -96,6 +96,7 @@ struct i915_ctx_workarounds {
>  
>  #define I915_MAX_VCS	8
>  #define I915_MAX_VECS	4
> +#define I915_MAX_SFC	(I915_MAX_VCS / 2)
>  #define I915_MAX_CCS	4
>  #define I915_MAX_RCS	1
>  
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 44ff2b899893..a8acc6fbb299 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -754,7 +754,7 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
>  	if (GRAPHICS_VER(m->i915) >= 12) {
>  		int i;
>  
> -		for (i = 0; i < GEN12_SFC_DONE_MAX; i++) {
> +		for (i = 0; i < I915_MAX_SFC; i++) {
>  			/*
>  			 * SFC_DONE resides in the VD forcewake domain, so it
>  			 * only exists if the corresponding VCS engine is
> @@ -1691,7 +1691,7 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
>  		gt->aux_err = intel_uncore_read(uncore, GEN12_AUX_ERR_DBG);
>  
>  	if (GRAPHICS_VER(i915) >= 12) {
> -		for (i = 0; i < GEN12_SFC_DONE_MAX; i++) {
> +		for (i = 0; i < I915_MAX_SFC; i++) {
>  			/*
>  			 * SFC_DONE resides in the VD forcewake domain, so it
>  			 * only exists if the corresponding VCS engine is
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 903d838e2e63..c3ccc8266865 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -137,7 +137,7 @@ struct intel_gt_coredump {
>  	u32 gfx_mode;
>  	u32 gtt_cache;
>  	u32 aux_err; /* gen12 */
> -	u32 sfc_done[GEN12_SFC_DONE_MAX]; /* gen12 */
> +	u32 sfc_done[I915_MAX_SFC]; /* gen12 */
>  	u32 gam_done; /* gen12 */
>  
>  	u32 nfence;
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
> index d78d78fce431..8f486f77609f 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -123,6 +123,4 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  
>  #define VLV_DISPLAY_BASE		0x180000
>  
> -#define GEN12_SFC_DONE_MAX		4
> -
>  #endif /* __I915_REG_DEFS__ */

-- 
Jani Nikula, Intel Open Source Graphics Center
