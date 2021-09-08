Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C81B14036AA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 11:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00FD6E160;
	Wed,  8 Sep 2021 09:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2626E167
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 09:13:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="207661725"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="207661725"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:13:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538466227"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:13:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908044528.2976010-3-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908044528.2976010-1-airlied@gmail.com>
 <20210908044528.2976010-3-airlied@gmail.com>
Date: Wed, 08 Sep 2021 12:13:29 +0300
Message-ID: <87y28777ly.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/uncore: constify the register
 vtables.
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

On Wed, 08 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>
>
> This reworks the uncore function vtable so that it's constant.

There's a bug in there, see comment inline, with that fixed,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 139 +++++++++++++++++-----------
>  drivers/gpu/drm/i915/intel_uncore.h |   8 +-
>  2 files changed, 89 insertions(+), 58 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index d0bbfc320604..0bc6e16fc4e3 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1756,32 +1756,24 @@ __vgpu_write(8)
>  __vgpu_write(16)
>  __vgpu_write(32)
>  
> -#define ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, x) \
> -do { \
> -	(uncore)->funcs.mmio_writeb = x##_write8; \
> -	(uncore)->funcs.mmio_writew = x##_write16; \
> -	(uncore)->funcs.mmio_writel = x##_write32; \
> -} while (0)
> -
> -#define ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, x) \
> -do { \
> -	(uncore)->funcs.mmio_readb = x##_read8; \
> -	(uncore)->funcs.mmio_readw = x##_read16; \
> -	(uncore)->funcs.mmio_readl = x##_read32; \
> -	(uncore)->funcs.mmio_readq = x##_read64; \
> -} while (0)
> -
> -#define ASSIGN_WRITE_MMIO_VFUNCS(uncore, x) \
> -do { \
> -	ASSIGN_RAW_WRITE_MMIO_VFUNCS((uncore), x); \
> -	(uncore)->funcs.write_fw_domains = x##_reg_write_fw_domains; \
> -} while (0)
> -
> -#define ASSIGN_READ_MMIO_VFUNCS(uncore, x) \
> -do { \
> -	ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, x); \
> -	(uncore)->funcs.read_fw_domains = x##_reg_read_fw_domains; \
> -} while (0)
> +#define MMIO_RAW_WRITE_VFUNCS(x)     \
> +	.mmio_writeb = x##_write8,   \
> +	.mmio_writew = x##_write16,  \
> +	.mmio_writel = x##_write32
> +
> +#define MMIO_RAW_READ_VFUNCS(x)	  \
> +	.mmio_readb = x##_read8,  \
> +	.mmio_readw = x##_read16, \
> +	.mmio_readl = x##_read32, \
> +	.mmio_readq = x##_read64
> +
> +#define MMIO_WRITE_FW_VFUNCS(x)				\
> +	MMIO_RAW_WRITE_VFUNCS(x),			\
> +	.write_fw_domains = x##_reg_write_fw_domains
> +
> +#define MMIO_READ_FW_VFUNCS(x)				\
> +	MMIO_RAW_READ_VFUNCS(x),			\
> +	.read_fw_domains = x##_reg_read_fw_domains
>  
>  static int __fw_domain_init(struct intel_uncore *uncore,
>  			    enum forcewake_domain_id domain_id,
> @@ -2086,22 +2078,70 @@ void intel_uncore_init_early(struct intel_uncore *uncore,
>  	uncore->debug = &i915->mmio_debug;
>  }
>  
> +static const struct intel_uncore_funcs vgpu_funcs = {
> +	MMIO_RAW_WRITE_VFUNCS(vgpu),
> +	MMIO_RAW_READ_VFUNCS(vgpu),
> +};
> +
> +static const struct intel_uncore_funcs gen5_funcs = {
> +	MMIO_RAW_WRITE_VFUNCS(gen5),
> +	MMIO_RAW_READ_VFUNCS(gen5),
> +};
> +
> +static const struct intel_uncore_funcs gen2_funcs = {
> +	MMIO_RAW_WRITE_VFUNCS(gen2),
> +	MMIO_RAW_READ_VFUNCS(gen2),
> +};
> +
> +
>  static void uncore_raw_init(struct intel_uncore *uncore)
>  {
>  	GEM_BUG_ON(intel_uncore_has_forcewake(uncore));
>  
>  	if (intel_vgpu_active(uncore->i915)) {
> -		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, vgpu);
> -		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, vgpu);
> +		uncore->funcs = &vgpu_funcs;
>  	} else if (GRAPHICS_VER(uncore->i915) == 5) {
> -		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, gen5);
> -		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, gen5);
> +		uncore->funcs = &gen5_funcs;
>  	} else {
> -		ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, gen2);
> -		ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, gen2);
> +		uncore->funcs = &gen2_funcs;
>  	}
>  }
>  
> +static const struct intel_uncore_funcs xehp_funcs = {
> +	MMIO_WRITE_FW_VFUNCS(xehp_fwtable),
> +	MMIO_READ_FW_VFUNCS(gen11_fwtable)
> +};
> +
> +static const struct intel_uncore_funcs gen12_funcs = {
> +	MMIO_WRITE_FW_VFUNCS(gen12_fwtable),
> +	MMIO_READ_FW_VFUNCS(gen12_fwtable)
> +};
> +
> +static const struct intel_uncore_funcs gen11_funcs = {
> +	MMIO_WRITE_FW_VFUNCS(gen11_fwtable),
> +	MMIO_READ_FW_VFUNCS(gen11_fwtable)
> +};
> +
> +static const struct intel_uncore_funcs gen9_funcs = {
> +	MMIO_WRITE_FW_VFUNCS(fwtable),
> +	MMIO_READ_FW_VFUNCS(fwtable)
> +};
> +
> +static const struct intel_uncore_funcs gen8_funcs = {
> +	MMIO_WRITE_FW_VFUNCS(gen8),
> +	MMIO_READ_FW_VFUNCS(gen6)
> +};
> +
> +static const struct intel_uncore_funcs vlv_funcs = {
> +	MMIO_WRITE_FW_VFUNCS(gen8),

Should be gen6.

> +	MMIO_READ_FW_VFUNCS(fwtable)
> +};
> +
> +static const struct intel_uncore_funcs gen6_funcs = {
> +	MMIO_WRITE_FW_VFUNCS(gen6),
> +	MMIO_READ_FW_VFUNCS(gen6)
> +};
> +
>  static int uncore_forcewake_init(struct intel_uncore *uncore)
>  {
>  	struct drm_i915_private *i915 = uncore->i915;
> @@ -2116,38 +2156,29 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
>  
>  	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __dg2_fw_ranges);
> -		ASSIGN_WRITE_MMIO_VFUNCS(uncore, xehp_fwtable);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
> +		uncore->funcs = &xehp_funcs;
>  	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __xehp_fw_ranges);
> -		ASSIGN_WRITE_MMIO_VFUNCS(uncore, xehp_fwtable);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
> +		uncore->funcs = &xehp_funcs;
>  	} else if (GRAPHICS_VER(i915) >= 12) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen12_fw_ranges);
> -		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, gen12_fwtable);
> +		uncore->funcs = &gen12_funcs;
>  	} else if (GRAPHICS_VER(i915) == 11) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen11_fw_ranges);
> -		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen11_fwtable);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
> +		uncore->funcs = &gen11_funcs;
>  	} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen9_fw_ranges);
> -		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
> +		uncore->funcs = &gen9_funcs;
>  	} else if (IS_CHERRYVIEW(i915)) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __chv_fw_ranges);
> -		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
> +		uncore->funcs = &gen9_funcs;

Seems funny to use gen9 functions for chv.

>  	} else if (GRAPHICS_VER(i915) == 8) {
> -		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen8);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
> +		uncore->funcs = &gen8_funcs;
>  	} else if (IS_VALLEYVIEW(i915)) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __vlv_fw_ranges);
> -		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen6);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
> +		uncore->funcs = &vlv_funcs;
>  	} else if (IS_GRAPHICS_VER(i915, 6, 7)) {
> -		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen6);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
> +		uncore->funcs = &gen6_funcs;
>  	}
>  
>  	uncore->pmic_bus_access_nb.notifier_call = i915_pmic_bus_access_notifier;
> @@ -2190,8 +2221,8 @@ int intel_uncore_init_mmio(struct intel_uncore *uncore)
>  
>  	/* make sure fw funcs are set if and only if we have fw*/
>  	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->fw_get_funcs);
> -	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->funcs.read_fw_domains);
> -	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->funcs.write_fw_domains);
> +	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->funcs->read_fw_domains);
> +	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->funcs->write_fw_domains);

Gah, I hate the proliferation of GEM_BUG_ON() outside of strictly gem
code. If there's value in it beyond gem, it should not be named
GEM. Otherwise, it should stay within GEM code.

>  
>  	if (HAS_FPGA_DBG_UNCLAIMED(i915))
>  		uncore->flags |= UNCORE_HAS_FPGA_DBG_UNCLAIMED;
> @@ -2530,10 +2561,10 @@ intel_uncore_forcewake_for_reg(struct intel_uncore *uncore,
>  		return 0;
>  
>  	if (op & FW_REG_READ)
> -		fw_domains = uncore->funcs.read_fw_domains(uncore, reg);
> +		fw_domains = uncore->funcs->read_fw_domains(uncore, reg);
>  
>  	if (op & FW_REG_WRITE)
> -		fw_domains |= uncore->funcs.write_fw_domains(uncore, reg);
> +		fw_domains |= uncore->funcs->write_fw_domains(uncore, reg);
>  
>  	drm_WARN_ON(&uncore->i915->drm, fw_domains & ~uncore->fw_domains);
>  
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index 1a7448f5f16f..52d4baf07656 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -138,7 +138,7 @@ struct intel_uncore {
>  
>  	struct notifier_block pmic_bus_access_nb;
>  	const struct intel_uncore_fw_get *fw_get_funcs;
> -	struct intel_uncore_funcs funcs;
> +	const struct intel_uncore_funcs *funcs;
>  
>  	unsigned int fifo_count;
>  
> @@ -312,14 +312,14 @@ __raw_write(64, q)
>  static inline u##x__ intel_uncore_##name__(struct intel_uncore *uncore, \
>  					   i915_reg_t reg) \
>  { \
> -	return uncore->funcs.mmio_read##s__(uncore, reg, (trace__)); \
> +	return uncore->funcs->mmio_read##s__(uncore, reg, (trace__)); \
>  }
>  
>  #define __uncore_write(name__, x__, s__, trace__) \
>  static inline void intel_uncore_##name__(struct intel_uncore *uncore, \
>  					 i915_reg_t reg, u##x__ val) \
>  { \
> -	uncore->funcs.mmio_write##s__(uncore, reg, val, (trace__)); \
> +	uncore->funcs->mmio_write##s__(uncore, reg, val, (trace__)); \
>  }
>  
>  __uncore_read(read8, 8, b, true)
> @@ -338,7 +338,7 @@ __uncore_write(write_notrace, 32, l, false)
>   * an arbitrary delay between them. This can cause the hardware to
>   * act upon the intermediate value, possibly leading to corruption and
>   * machine death. For this reason we do not support intel_uncore_write64,
> - * or uncore->funcs.mmio_writeq.
> + * or uncore->funcs->mmio_writeq.
>   *
>   * When reading a 64-bit value as two 32-bit values, the delay may cause
>   * the two reads to mismatch, e.g. a timestamp overflowing. Also note that

-- 
Jani Nikula, Intel Open Source Graphics Center
