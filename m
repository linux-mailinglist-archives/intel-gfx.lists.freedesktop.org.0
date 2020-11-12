Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B66082B0EF1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 21:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 006736E426;
	Thu, 12 Nov 2020 20:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D366E426
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 20:18:34 +0000 (UTC)
IronPort-SDR: zYEzcNQ7u28zQlKSDwrEdke3u0E8FIs1JMnv2/UfOngiKodHZKsFfPeFruHANT/A43PRG8kOll
 52iLPCyyAfmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="255085059"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="255085059"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 12:18:32 -0800
IronPort-SDR: H1AeKJGhiV5DlFb1oEZkZf8nVDK7cgl1BrZwl4YHA9r9/lgMT8vWTZkAYxbdAKOXMubfjBYgWq
 Kp5IPLJOVi7A==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="366715196"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 12:18:32 -0800
Date: Thu, 12 Nov 2020 15:19:46 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201112201946.GC1198919@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
 <207faf5383f0ec1c37199d827b32e426111a95e2.1605181350.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <207faf5383f0ec1c37199d827b32e426111a95e2.1605181350.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: remove last traces of
 I915_READ_FW() and I915_WRITE_FW()
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

On Thu, Nov 12, 2020 at 01:44:35PM +0200, Jani Nikula wrote:
> Good riddance! Remove the macros and their remaining references in
> comments.
> 
> intel_uncore_read_fw() and intel_uncore_write_fw() should be used
> instead.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h     | 29 -----------------------------
>  drivers/gpu/drm/i915/intel_uncore.c |  2 +-
>  drivers/gpu/drm/i915/intel_uncore.h |  2 +-
>  3 files changed, 2 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 15be8debae54..fecb5899cbac 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1978,35 +1978,6 @@ int i915_reg_read_ioctl(struct drm_device *dev, void *data,
>  
>  #define POSTING_READ(reg__)	__I915_REG_OP(posting_read, dev_priv, (reg__))
>  
> -/* These are untraced mmio-accessors that are only valid to be used inside
> - * critical sections, such as inside IRQ handlers, where forcewake is explicitly
> - * controlled.
> - *
> - * Think twice, and think again, before using these.
> - *
> - * As an example, these accessors can possibly be used between:
> - *
> - * spin_lock_irq(&dev_priv->uncore.lock);
> - * intel_uncore_forcewake_get__locked();
> - *
> - * and
> - *
> - * intel_uncore_forcewake_put__locked();
> - * spin_unlock_irq(&dev_priv->uncore.lock);
> - *
> - *
> - * Note: some registers may not need forcewake held, so
> - * intel_uncore_forcewake_{get,put} can be omitted, see
> - * intel_uncore_forcewake_for_reg().
> - *
> - * Certain architectures will die if the same cacheline is concurrently accessed
> - * by different clients (e.g. on Ivybridge). Access to registers should
> - * therefore generally be serialised, by either the dev_priv->uncore.lock or
> - * a more localised lock guarding all access to that bank of registers.
> - */
> -#define I915_READ_FW(reg__) __I915_REG_OP(read_fw, dev_priv, (reg__))
> -#define I915_WRITE_FW(reg__, val__) __I915_REG_OP(write_fw, dev_priv, (reg__), (val__))
> -
>  /* i915_mm.c */
>  int remap_io_mapping(struct vm_area_struct *vma,
>  		     unsigned long addr, unsigned long pfn, unsigned long size,
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 1c14a07eba7d..ef40edfff412 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -2070,7 +2070,7 @@ int i915_reg_read_ioctl(struct drm_device *dev,
>   * This routine waits until the target register @reg contains the expected
>   * @value after applying the @mask, i.e. it waits until ::
>   *
> - *     (I915_READ_FW(reg) & mask) == value
> + *     (intel_uncore_read_fw(uncore, reg) & mask) == value
>   *
>   * Otherwise, the wait will timeout after @slow_timeout_ms milliseconds.
>   * For atomic context @slow_timeout_ms must be zero and @fast_timeout_us
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index bd2467284295..5dcb7f4183b2 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -216,7 +216,7 @@ void intel_uncore_forcewake_flush(struct intel_uncore *uncore,
>  
>  /*
>   * Like above but the caller must manage the uncore.lock itself.
> - * Must be used with I915_READ_FW and friends.
> + * Must be used with intel_uncore_read_fw() and friends.
>   */
>  void intel_uncore_forcewake_get__locked(struct intel_uncore *uncore,
>  					enum forcewake_domains domains);
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
