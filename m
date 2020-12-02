Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2492CC12A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 16:45:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AA906EA51;
	Wed,  2 Dec 2020 15:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D37B06EA51
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 15:45:46 +0000 (UTC)
IronPort-SDR: I5wXz9lL1fES5Mf1t5A7ALXMB5p6WHY5WMNe+bclb+EGupsgF/Jz2Gk1REpGfz3EWisLYgxtDu
 FobzU9cnpBgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="169531355"
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; d="scan'208";a="169531355"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 07:45:46 -0800
IronPort-SDR: hqyNa8FPcXHFlfj0kEkVeFdGVhoAlNINZB9A8VIBVORpW/pgx0u2BMtvFZ5SoJN9GLWt5Eexey
 6/b+t6GiJl+g==
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; d="scan'208";a="550106118"
Received: from kropac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.43.63])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 07:45:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20201130111601.2817-10-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201130111601.2817-1-jani.nikula@intel.com>
 <20201130111601.2817-10-jani.nikula@intel.com>
Date: Wed, 02 Dec 2020 17:45:41 +0200
Message-ID: <87czzsciu2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 10/10] drm/i915: remove last traces of
 I915_READ(), I915_WRITE() and POSTING_READ()
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 30 Nov 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> Good riddance! Remove the macros and their remaining references in
> comments.
>
> The following functions should be used instead, depending on the use
> case:
>
> - intel_uncore_read(), intel_uncore_write(), intel_uncore_posting_read()
>
> - intel_de_read(), intel_de_write(), intel_de_posting_read()
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

And pushed this one as well! Thanks for the reviews!

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_dvo.c | 4 ----
>  drivers/gpu/drm/i915/i915_drv.h          | 8 --------
>  drivers/gpu/drm/i915/i915_reg.h          | 6 ++++--
>  drivers/gpu/drm/i915/intel_sideband.c    | 4 ++--
>  drivers/gpu/drm/i915/intel_uncore.c      | 2 +-
>  drivers/gpu/drm/i915/intel_uncore.h      | 4 ++--
>  6 files changed, 9 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 237dbb1ba0ee..090cd76266c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -301,12 +301,8 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
>  		dvo_val |= DVO_VSYNC_ACTIVE_HIGH;
>  
> -	/*I915_WRITE(DVOB_SRCDIM,
> -	  (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) |
> -	  (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));*/
>  	intel_de_write(dev_priv, dvo_srcdim_reg,
>  		       (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) | (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));
> -	/*I915_WRITE(DVOB, dvo_val);*/
>  	intel_de_write(dev_priv, dvo_reg, dvo_val);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index fecb5899cbac..42f60b112436 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1970,14 +1970,6 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
>  int i915_reg_read_ioctl(struct drm_device *dev, void *data,
>  			struct drm_file *file);
>  
> -#define __I915_REG_OP(op__, dev_priv__, ...) \
> -	intel_uncore_##op__(&(dev_priv__)->uncore, __VA_ARGS__)
> -
> -#define I915_READ(reg__)	 __I915_REG_OP(read, dev_priv, (reg__))
> -#define I915_WRITE(reg__, val__) __I915_REG_OP(write, dev_priv, (reg__), (val__))
> -
> -#define POSTING_READ(reg__)	__I915_REG_OP(posting_read, dev_priv, (reg__))
> -
>  /* i915_mm.c */
>  int remap_io_mapping(struct vm_area_struct *vma,
>  		     unsigned long addr, unsigned long pfn, unsigned long size,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5375b219cc3b..cdc67f583a9c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10851,8 +10851,10 @@ enum skl_power_gate {
>  #define  CNL_DRAM_RANK_3			(0x2 << 9)
>  #define  CNL_DRAM_RANK_4			(0x3 << 9)
>  
> -/* Please see hsw_read_dcomp() and hsw_write_dcomp() before using this register,
> - * since on HSW we can't write to it using I915_WRITE. */
> +/*
> + * Please see hsw_read_dcomp() and hsw_write_dcomp() before using this register,
> + * since on HSW we can't write to it using intel_uncore_write.
> + */
>  #define D_COMP_HSW			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5F0C)
>  #define D_COMP_BDW			_MMIO(0x138144)
>  #define  D_COMP_RCOMP_IN_PROGRESS	(1 << 9)
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sideband.c
> index 02ebf5a04a9b..0ec0cf191955 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.c
> +++ b/drivers/gpu/drm/i915/intel_sideband.c
> @@ -404,8 +404,8 @@ static int __sandybridge_pcode_rw(struct drm_i915_private *i915,
>  	lockdep_assert_held(&i915->sb_lock);
>  
>  	/*
> -	 * GEN6_PCODE_* are outside of the forcewake domain, we can
> -	 * use te fw I915_READ variants to reduce the amount of work
> +	 * GEN6_PCODE_* are outside of the forcewake domain, we can use
> +	 * intel_uncore_read/write_fw variants to reduce the amount of work
>  	 * required when reading/writing.
>  	 */
>  
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index ef40edfff412..9ac501bcfdad 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -2126,7 +2126,7 @@ int __intel_wait_for_register_fw(struct intel_uncore *uncore,
>   * This routine waits until the target register @reg contains the expected
>   * @value after applying the @mask, i.e. it waits until ::
>   *
> - *     (I915_READ(reg) & mask) == value
> + *     (intel_uncore_read(uncore, reg) & mask) == value
>   *
>   * Otherwise, the wait will timeout after @timeout_ms milliseconds.
>   *
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index 5dcb7f4183b2..59f0da8f1fbb 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -318,8 +318,8 @@ __uncore_write(write_notrace, 32, l, false)
>   * will be implemented using 2 32-bit writes in an arbitrary order with
>   * an arbitrary delay between them. This can cause the hardware to
>   * act upon the intermediate value, possibly leading to corruption and
> - * machine death. For this reason we do not support I915_WRITE64, or
> - * uncore->funcs.mmio_writeq.
> + * machine death. For this reason we do not support intel_uncore_write64,
> + * or uncore->funcs.mmio_writeq.
>   *
>   * When reading a 64-bit value as two 32-bit values, the delay may cause
>   * the two reads to mismatch, e.g. a timestamp overflowing. Also note that

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
